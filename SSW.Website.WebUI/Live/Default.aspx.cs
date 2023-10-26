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

namespace SSW.WebUI.Live
{
    public class Default : System.Web.UI.Page
    {
        private const int EventCacheExpiryMinutes = 60;

        protected global::System.Web.UI.HtmlControls.HtmlGenericControl currentEvents;
        protected global::System.Web.UI.HtmlControls.HtmlGenericControl broadcastList;

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

            this.broadcastList.InnerHtml = "";
            try
            {
                var playList = GetYouTubeBroadcasts();
                string htmlItem = "";

                foreach(JObject item in playList)
                {
                    int i = (int)item["snippet"]["position"];
                    string classValue = "col-md-4";

                    if (i <= 1) //First two videos will be larger
                    {
                        classValue = "col-md-6";
                    }

                    htmlItem += "<div class=\"" + classValue + "\" style=\"padding-bottom:15px\">";
                    htmlItem += GetHtmlForYoutubeVideo((JObject)playList[i]);
                    htmlItem += "</div>";

                    if (i == 1 || (i > 1 && ((i + 2) % 3) == 0))
                    {
                        string html = "<div class=\"row\" >";
                        html += htmlItem;
                        html += "</div>";

                        this.broadcastList.InnerHtml += html;
                        htmlItem = "";
                    }
                }
            }
            catch (Exception ex)
            {
                this.broadcastList.InnerHtml = "<div>Error loading YouTube videos</div>";
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

        private JArray GetCurrentEvents(DateTime endDateBefore)
        {
            var dateFilter = endDateBefore.ToString("yyyy-MM-dd") + "T00:00:00Z";

            var oDataFilterOngoing = $"$filter=Enabled ne false and EndDateTime ge datetime'{dateFilter}' and CalendarType eq 'User Groups' and (City eq 'Online' or City eq 'Sydney')"
                //+ "&$select=StartDateTime,Category,CalendarType,Title,Url,Thumbnail,Presenter,EventShortDescription"
                + "&$orderby=StartDateTime asc"
                + "&$top=50";
            var oDataFilterPast = "$filter=Enabled ne false and EndDateTime lt datetime'" + dateFilter + "'&select=StartDateTime,Category,CalendarType,Title,Url,Thumbnail,Presenter,EventShortDescription,HasVideo&$orderby=StartDateTime desc&$top=50";

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

        private JArray GetYouTubeBroadcasts()
        {
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

            var youtubeApiKey = ConfigurationManager.AppSettings["YoutubeApiKey"];
            var youtubePlayListId = ConfigurationManager.AppSettings["YoutubePlayListId"];
            var eventsUrl = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&maxResults=50&playlistId=" + youtubePlayListId + "&key=" + youtubeApiKey;

            var request = (HttpWebRequest)WebRequest.Create(eventsUrl);
            request.Method = "GET";
            request.Timeout = 1000 * 30;
            request.Accept = "application/json";

            var watch = System.Diagnostics.Stopwatch.StartNew();
            var webResponse = (HttpWebResponse)request.GetResponse();
            watch.Stop();
            var elapsedMs = watch.ElapsedMilliseconds;
            if (elapsedMs > (1000 * 10)) // 10 seconds (if request takes greater than 30seconds, as specified above, it will timeout and throw exception
            {
                var ex = new TimeoutException("Warning: Call to YouTube PlayList endpoint took between 10 and 30 seconds.");
                new RaygunClient().SendInBackground(ex);
            }

            if (webResponse.StatusCode != HttpStatusCode.OK)
            {
                throw new Exception($"YouTube PlayList list api failed to return items with status: {webResponse.StatusCode}");
            };

            var content = webResponse.GetResponseStream();

            if (content == null)
            {
                throw new Exception("YouTube PlayList api did not return any content");
            };

            var contentReader = new StreamReader(content);

            using (JsonTextReader reader = new JsonTextReader(contentReader))
            {
                var root = (JObject)JToken.ReadFrom(reader);

                var videos = (JArray)root["items"];

                if (videos == null)
                {
                    throw new Exception("YouTube PlayList api response does not have value");
                }

                return videos;
            }
        }
        private static string GetHtmlForYoutubeVideo(JObject ytItem)
        {
            if (ytItem == null)
            {
                return string.Empty;
            }


            var snippet = ytItem["snippet"];

            var html = "<div style=\"width:100%;padding-top:56.25%;position:relative;\">";
            html += "<iframe src=\"https://www.youtube.com/embed/" + snippet["resourceId"]["videoId"] + "?rel=0\" allowfullscreen=\"true\" frameborder=\"0\" title=\"" + snippet["title"] + "\" style=\"position:absolute;top:0;left:0;width:100%;height:100%;margin:0\" ></iframe>";
            html += "</div>";
            html += "<a href=\"https://www.youtube.com/watch?v=" + snippet["resourceId"]["videoId"] + "\" target=\"_blank\" style=\"padding-left:0;text-align:justify;white-space:break-spaces;\" class=\"btn\">";
            html += "<span class=\"dotted-line\">" + snippet["title"] + "</span>";
            html += "</a>";
            //html += "<a role=\"button\" class=\"aboutVideo-showMore collapsed\" style=\"margin-top:0.5rem\" data-toggle=\"collapse\" href=\"#collapsable_" + snippet["resourceId"]["videoId"] + "\"></a>";
            //html += "<p style=\"white-space:pre-line\" id=\"collapsable_" + snippet["resourceId"]["videoId"] + "\" class=\"collapse\">";
            //html += snippet["description"];
            //html += "</p>";

            return html;
        }
        private SecureString GenerateSecurePassword(string password)
        {
            if (password == null)
                return null;

            //Get the user's password as a SecureString
            SecureString securePassword = new SecureString();
            password.ToCharArray().ToList().ForEach(p => securePassword.AppendChar(p));
            return securePassword;
        }
    }
}