using Microsoft.SharePoint.Client;
using Mindscape.Raygun4Net;
using Newtonsoft.Json.Linq;
using System;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.Caching;
using System.Security;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;

public partial class SharePointEventsService : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var odataFilter = string.Empty;
        var ignoreError = false;

        try
        {
            odataFilter = HttpUtility.UrlDecode(Request.QueryString["odataFilter"]);
            ignoreError = Convert.ToBoolean(Request.QueryString["ignoreError"]);
        }
        catch
        {
            // ignored
        }

        try
        {
            var allowCaching = string.IsNullOrWhiteSpace(odataFilter) 
                || !HasDateTimeWithTimePartition(odataFilter);

            var eventsContent = allowCaching
                ? GetCachedEvents(odataFilter)
                : GetEvents(odataFilter);

            Response.ContentType = "application/json;odata=verbose";
            Response.Write(eventsContent);
        }
        catch (Exception ex)
        {
            if (!ignoreError)
            {
                throw;
            }

            Response.Write("Error getting events data");
        }
    }

    // TODO get exact parts of the filter in separate query parameters and build cache key from them
    // This is so app does not create cache that cannot be used in the future
    private bool HasDateTimeWithTimePartition(string odataFilter)
    {
        var matches = new Regex(@"\d\d\d\d-\d\d-\d\dT([:\d]*)Z?")
            .Matches(odataFilter);
        
        foreach (Match match in matches)
        {
            if (match.Groups[1].Value != "00:00:00")
            {
                return true;
            }
        }

        return false;
    }

    private JArray GetCachedEvents(string odataFilter)
    {
        var cache = MemoryCache.Default;
        var key = $"events_service_{odataFilter}";
        const int eventCacheExpiryMinutes = 60;

        var events = cache.Get(key) as JArray;

        if (events != null)
        {
            return events;
        }

        events = GetEvents(odataFilter);
        if (events != null)
        {
            cache.Add(key, events, DateTime.Now.AddMinutes(eventCacheExpiryMinutes));
        }
    
        return events;
    }

    private JArray GetEvents(string odataFilter)
    {

        ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
        var webUri = ConfigurationManager.AppSettings["SharePointEventsUrl"];

        using (var client = new WebClient())
        {
            client.Headers.Add("X-FORMS_BASED_AUTH_ACCEPTED", "f");
            var userName = ConfigurationManager.AppSettings["SharePointEventsAccount"];
            SecureString password = GenerateSecurePassword(ConfigurationManager.AppSettings["SharePointEventsPassword"]);

            var listTitle = "Events";

            client.Credentials = new SharePointOnlineCredentials(userName, password);
            client.Headers.Add(HttpRequestHeader.ContentType, "application/json;odata=verbose");
            client.Headers.Add(HttpRequestHeader.Accept, "application/json;odata=verbose");

            var queryString = "?" + odataFilter;
            var endpointUri = new Uri(webUri + string.Format("/_api/web/lists/getbytitle('{0}')/items", listTitle) + queryString);

            var watch = System.Diagnostics.Stopwatch.StartNew();
            var result = client.DownloadString(endpointUri);
            watch.Stop();
            var elapsedMs = watch.ElapsedMilliseconds;
            if (elapsedMs > (1000 * 10)) // 10 seconds (if request takes greater than 30seconds, as specified above, it will timeout and throw exception
            {
                var ex = new TimeoutException("Warning: Call to SharePoint Events endpoint took between 10 and 30 seconds.");
                new RaygunClient().SendInBackground(ex);
            }
            var root = JToken.Parse(result);

            var events = (JArray)root["d"]["results"];

            if (events == null)
            {
                throw new Exception("SharePoint events list api response does not have value");
            }

            return events;
        }
        return null;
    }
    public static SecureString GenerateSecurePassword(string password)
    {
        if (password == null)
            return null;

        //Get the user's password as a SecureString
        SecureString securePassword = new SecureString();
        password.ToCharArray().ToList().ForEach(p => securePassword.AppendChar(p));
        return securePassword;
    }

}
