using Microsoft.SharePoint.Client;
using Mindscape.Raygun4Net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using SSW.WebUI.Events;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.Caching;
using System.Security;
using System.Web;

namespace SSW.WebUI.NETUG
{
    public class Sydney : System.Web.UI.Page
    {
        private const int EventCacheExpiryMinutes = 60;

        protected global::System.Web.UI.HtmlControls.HtmlGenericControl currentEvents;

        protected void Page_Load(object sender, System.EventArgs e)
        {
            this.currentEvents.InnerHtml = "";

            try
            {
                var events = GetCachedEventsResponse(endDateBefore: DateTime.Now);

                foreach (JObject sswEvent in events)
                {
                    this.currentEvents.InnerHtml += EventHtml.GetHtmlForEvent(sswEvent, false);
                }
            }
            catch (Exception ex)
            {
                this.currentEvents.InnerHtml = "<div>Error loading events</div>";
                new RaygunClient().SendInBackground(ex);
            }

        }



        private JArray GetCachedEventsResponse(DateTime endDateBefore)
        {
            var cache = MemoryCache.Default;
            var key = $"sydney_usergroups_{endDateBefore:yyyy-MM-dd}";

            var events = cache.Get(key) as JArray;

            if (events != null)
            {
                return events;
            }

            events = GetCurrentEvents(endDateBefore);
            if (events != null)
            {
                cache.Add(key, events, DateTime.Now.AddMinutes(EventCacheExpiryMinutes));
            }

            return events;
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

        private JArray GetCurrentEvents(DateTime endDateBefore)
        {
            var dateFilter = endDateBefore.ToString("yyyy-MM-dd") + "T00:00:00Z";

            var oDataFilter = $"$filter=Enabled ne false and EndDateTime ge datetime'{dateFilter}' and CalendarType eq 'User Groups' and (City eq 'Online' or City eq 'Sydney')"
                //+ "&$select=StartDateTime,Category,CalendarType,Title,Url,Thumbnail,Presenter,EventShortDescription"
                + "&$orderby=StartDateTime asc"
                + "&$top=50";

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

                var queryString = "?" + oDataFilter;

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
    }
}