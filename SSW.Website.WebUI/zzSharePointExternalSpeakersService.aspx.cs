using Microsoft.SharePoint.Client;
using Mindscape.Raygun4Net;
using Newtonsoft.Json.Linq;
using System;
using System.Configuration;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.Caching;
using System.Security;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;

public partial class SharePointExternalSpeakersService : Page
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

            var externalSpeakerContent =  GetCachedExternalSpeaker(odataFilter);

            Response.ContentType = "application/json;odata=verbose";
            Response.Write(externalSpeakerContent);
        }
        catch (Exception ex)
        {
            if (!ignoreError)
            {
                throw;
            }

            Response.Write("Error getting speaker data");
        }
    }


    private JArray GetCachedExternalSpeaker(string odataFilter)
    {
        var cache = MemoryCache.Default;
        var key = $"external_speaker_service_{odataFilter}";
        const int externalSpeakerCacheExpiryMinutes = 60;

        var externalSpeaker = cache.Get(key) as JArray;

        if (externalSpeaker != null)
        {
            return externalSpeaker;
        }

        externalSpeaker = GetExternalSpeaker(odataFilter);
        if (externalSpeaker != null)
        {
            cache.Add(key, externalSpeaker, DateTime.Now.AddMinutes(externalSpeakerCacheExpiryMinutes));
        }
    
        return externalSpeaker;
    }

    private JArray GetExternalSpeaker(string odataFilter)
    {

        ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
        var webUri = ConfigurationManager.AppSettings["SharePointEventsUrl"];

        using (var client = new WebClient())
        {
            client.Headers.Add("X-FORMS_BASED_AUTH_ACCEPTED", "f");
            var userName = ConfigurationManager.AppSettings["SharePointEventsAccount"];
            SecureString password = GenerateSecurePassword(ConfigurationManager.AppSettings["SharePointEventsPassword"]);

            var listTitle = "External Presenters";

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

            var externalSpeaker = (JArray)root["d"]["results"];

            if (externalSpeaker == null)
            {
                throw new Exception("SharePoint events list api response does not have value");
            }

            return externalSpeaker;
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
