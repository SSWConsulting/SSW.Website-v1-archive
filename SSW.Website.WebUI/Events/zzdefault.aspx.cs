using Microsoft.SharePoint.Client;
using Mindscape.Raygun4Net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using OfficeDevPnP.Core;
using System.Net;
using System.Runtime.Caching;
using System.Security;
using System.Text;
using AuthenticationManager = OfficeDevPnP.Core.AuthenticationManager;
using System.Diagnostics;
using Microsoft.WindowsAzure.Storage.Table.Queryable;

namespace SSW.WebUI.Events
{
    public class Default : System.Web.UI.Page
    {
        private const int EventCacheExpiryMinutes = 60;

        protected global::System.Web.UI.HtmlControls.HtmlGenericControl currentEvents;
        protected global::System.Web.UI.WebControls.Literal filters_list_technologies;
        protected global::System.Web.UI.WebControls.Literal filters_list_types;

        private List<string> cities = new List<string>();
        private List<string> categories = new List<string>();
        private List<string> types = new List<string>();

        private bool isPast = false;

        protected void Page_Load(object sender, System.EventArgs e)
        {
                this.isPast = Request.Url.ToString().ToLower().Contains("past");

            this.currentEvents.InnerHtml = "";

            try
            {
                var events = GetCachedEventsResponse(endDateBefore: DateTime.Now);

                foreach (JObject sswEvent in events)
                {
                    var technologyCategoryFilter = sswEvent["Category"].ToString();
                    if (technologyCategoryFilter.Length > 0)
                    {
                        if (!categories.Contains(technologyCategoryFilter))
                            categories.Add(technologyCategoryFilter);
                    }
                    var eventTypeFilter = sswEvent["CalendarType"].ToString();
                    if (eventTypeFilter.Length > 0)
                    {
                        if (!types.Contains(eventTypeFilter))
                            types.Add(eventTypeFilter);
                    }
                    var city = sswEvent["City"].ToString();
                    if (city.Length > 0)
                    {
                        if (!cities.Contains(city))
                        {
                            cities.Add(city);
                        }
                    }
                    this.currentEvents.InnerHtml +=  EventHtml.GetHtmlForEvent(sswEvent);
                }

                filters_list_technologies.Text = "";
                categories = categories.OrderBy(c => c).ToList();
                foreach (string category in categories)
                {
                    filters_list_technologies.Text += "<li><a href=\"#\" data-filter=\"tech_" + category.ToLower().Replace(" ", "_").Replace(".", "_") + "\">" + category + "</a></li>";
                }
                filters_list_types.Text = "";
                types = types.OrderBy(t => t).ToList();
                foreach (string type in types)
                {
                    filters_list_types.Text += "<li><a href=\"#\" data-filter=\"type_" + type.ToLower().Replace(" ", "_").Replace(".", "_") + "\">" + type + "</a></li>";
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
            var key = $"events_{endDateBefore:yyyy-MM-dd}";

            if(isPast)
            {
                key = key + "_past";
            }
            else
            {
                key = key + "current";
            }
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

            var oDataFilterOngoing = $"$filter=Enabled ne false and EndDateTime ge datetime'{dateFilter}'"
                + "&$orderby=StartDateTime asc"
                + "&$top=100";
            var oDataFilterPast = $"$filter=Enabled ne false and EndDateTime lt datetime'{dateFilter}'"
                + "&$orderby=StartDateTime desc"
                + "&$top=100";

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

                var queryString = "?" + oDataFilterOngoing;

                if (isPast)
                {
                    queryString = "?" + oDataFilterPast;
                }


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



                //var webResponse = (HttpWebResponse)request.GetResponse();
            }





            //if (webResponse.StatusCode != HttpStatusCode.OK)
            //{
            //    throw new Exception($"SharePoint events list api failed to return events with status: {webResponse.StatusCode}");
            //};

            //var content = webResponse.GetResponseStream();

            //if (content == null)
            //{
            //    throw new Exception("SharePoint events list api did not return any content");
            //};

            //var contentReader = new StreamReader(content);

            //using (JsonTextReader reader = new JsonTextReader(contentReader))
            //{
            //    var root = (JObject)JToken.ReadFrom(reader);

            //    var events = (JArray)root["value"];

            //    if (events == null)
            //    {
            //        throw new Exception("SharePoint events list api response does not have value");
            //    }

            //    return events;
            //}
            return null;
        }


    }
}