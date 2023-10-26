using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace SSW.WebUI.Events
{

    public class EventHtml
    {

        public static string GetHtmlForEvent(JObject sswEvent)
        {
            return GetHtmlForEvent(sswEvent, true);
        }
            public static string GetHtmlForEvent(JObject sswEvent, bool showFindOutMore)
        {
            if (sswEvent == null)
            {
                return string.Empty;
            }

            var html = "";

            Console.WriteLine(sswEvent.ToString());

            html += "<div itemscope itemtype=\"http://schema.org/Event\" class=\"event-item ";

            var technologyCategoryFilter = sswEvent["Category"].ToString();
            var eventTypeFilter = sswEvent["CalendarType"].ToString();
            var city = sswEvent["City"].ToString();

            html += " ongoing ";
            html += " tech_all ";
            if (technologyCategoryFilter.Length > 0)
                html += "tech_" + technologyCategoryFilter.ToLower().Replace(" ", "_").Replace(".", "_") + " ";
            html += "type_all ";
            if (eventTypeFilter.Length > 0)
                html += "type_" + eventTypeFilter.ToLower().Replace(" ", "_").Replace(".", "_") + " ";
            html += "isotope-item clearfix\">";

            html += "<div class=\"thumbnail\">";
            var eventUrl = sswEvent["Url"]["Url"].ToString();
            var virtualEventUrl = eventUrl == string.Empty ? "https://ssw.com.au/live" : eventUrl;
            var eventDescription = sswEvent["Url"]["Description"].ToString();
            var thumbnailUrl = sswEvent["Thumbnail"]["Url"].ToString();

            var dateFormat = "dd MMM yyyy";
            var timeFormat = "h:mm tt";

            var timezoneOffset = 10;
            var timezoneOffset_dst = 11;

            var startDateTime = System.DateTime.Parse(sswEvent["StartDateTime"].ToString());
            var endDateTime = System.DateTime.Parse(sswEvent["EndDateTime"].ToString());

            var startDateTimeIsDst = TimeZoneInfo.Local.IsDaylightSavingTime(startDateTime);
            var endDateTimeIsDst = TimeZoneInfo.Local.IsDaylightSavingTime(endDateTime);


            if (startDateTimeIsDst)
            {
                startDateTime = startDateTime.AddHours(timezoneOffset_dst);
            }
            else
            {
                startDateTime = startDateTime.AddHours(timezoneOffset);
            }

            if (endDateTimeIsDst)
            {
                endDateTime = endDateTime.AddHours(timezoneOffset_dst);
            }
            else
            {
                endDateTime = endDateTime.AddHours(timezoneOffset);
            }

            var isSameDay = (startDateTime.Date == endDateTime.Date);

            if (eventUrl.Length > 10)
            {
                html += "<a class=\"ignore\" href=\"" + eventUrl + "\">";
            }
            html += "<img src=\"" + thumbnailUrl + "\" alt=\"" + eventDescription + "\" itemprop=\"image\" />";
            if (eventUrl.Length > 10)
            {
                html += "</a>";
            }
            html += "</div>";


            html += "<div class=\"ourHolder-text\">";
            if (eventUrl.Length > 10)
            {
                html += "<a class=\"ignore\" href=\"" + eventUrl + "\">";
            }
            html += "<h3><span class=\"eventtitle\" itemprop=\"name\">" + sswEvent["Title"] + "</span></h3>";
            if (eventUrl.Length > 10)
            {
                html += "</a>";
            }

            html += string.Format("<span class=\"key_datetime\"><span itemprop=\"startDate\" content=\"{0}\">", startDateTime.ToString("o")) + startDateTime.ToString(dateFormat) + "</span>";
            if (!isSameDay)
            {
                html += " - " + string.Format("<span itemprop=\"endDate\" content=\"{0}\">", endDateTime.ToString("o")) + endDateTime.ToString(dateFormat) + "</span>";
            }
            else
            {
                html += " (" + string.Format("<span itemprop=\"startTime\" content=\"{0}\">", startDateTime.ToString("o")) + startDateTime.ToString(timeFormat) + "</span>";
                if (startDateTimeIsDst)
                {
                    html += " - " + string.Format("<span itemprop=\"endTime\" content=\"{0}\">", endDateTime.ToString("o")) + endDateTime.ToString(timeFormat) + " AEDT)</span>";
                }
                else
                {
                    html += " - " + string.Format("<span itemprop=\"endTime\" content=\"{0}\">", endDateTime.ToString("o")) + endDateTime.ToString(timeFormat) + " AEST)</span>";
                }
            }

            var daysToGo = EventHtml.DaysToGo(startDateTime);
            if (daysToGo == 0)
            {
                html += "<span class=\"daystogo\">Today</span>";
            }
            else if (daysToGo == 1)
            {
                html += "<span class=\"daystogo\">1 Day to go</span>";
            }
            else if (daysToGo == -1)
            {
                html += "<span class=\"daystogo\">1 Day ago</span>";
            }
            else if (daysToGo < -1)
            {
                html += "<span class=\"daystogo\">" + -daysToGo + " days ago</span>";
            }
            else
            {
                html += "<span class=\"daystogo\">" + daysToGo + " days to go</span>";
            }

            html += "</span>";
            if (city.Length > 0)
            {
                html += (city == "Online")
                   ? "<div><span itemprop=\"location\"  itemtype=\"http://schema.org/VirtualLocation\"><span itemprop=\"virtuallocation\" itemtype=\"http://schema.org/VirtualLocation\"><a itemprop=\"url\" content=\"" + virtualEventUrl + "\" href=\"" + virtualEventUrl + "\">Online</a></span></span></div>"
                  // ? "<div><span>Online</span></div>"
                    : GetHtmlForCity(city);
            }
            if (technologyCategoryFilter.Length > 0)
            {
                html += "<p class=\"key_technology\"><span class=\"key_technology_title\"> Technology:</span>" + technologyCategoryFilter + " </p>";
            }
            if (eventTypeFilter.Length > 0)
            {
                html += "<p class=\"key_type\"><span class=\"key_type_title\"> Type:</span>" + eventTypeFilter + " </p>";
            }
            var presenterName = sswEvent["Presenter"].ToString();
            var presenterUrl = "";
            if (sswEvent["PresenterProfileUrl"].ToString() != "")
                presenterUrl = sswEvent["PresenterProfileUrl"]["Url"].ToString();
            var presenterHtml = "";
            if (presenterUrl.Length > 10)
            {
                presenterHtml += "<a class=\"ignore\" href=\"" + presenterUrl + "\">";
            }
            presenterHtml += presenterName;
            if (presenterUrl.Length > 10)
            {
                presenterHtml += "</a>";
            }

            if (presenterHtml.Length > 0)
            {
                html += "<p class=\"key_presenter\"><span class=\"key_presenter_title\"> Presenter:</span>" + presenterHtml + " </p>";
            }


            html += "<div class=\"key-description\" itemprop=\"description\">" + sswEvent["EventShortDescription"] + " </div>";
            if (showFindOutMore && eventUrl.Length > 10)
            {
                html += "<a href=\"" + eventUrl + "\" class=\"key-more ignore\">Find out more...</a>";
            }
            html += "</div>";


            html += "</div>";

            return html;
        }

        private static string GetHtmlForCity(string city)
        {
            var streetAddress = "Level 1, 81-91 Military Road";
            var addressLocality = "Neutral Bay";
            var addressRegion = "NSW";
            var addressCountry = "AU";
            var htmlBuilder = new StringBuilder();

            if (city == "Brisbane")
            {
                streetAddress = "Level 1, 471 Adelaide St";
                addressLocality = "Brisbane";
                addressRegion = "QLD";

            }
            if (city == "Melbourne")
            {
                streetAddress = "Level 1, 370 Little Bourke Street";
                addressLocality = "Melbourne";
                addressRegion = "VIC";
            }

            var locationUrl = "https://sswchapel.com.au/" + city;

            htmlBuilder.Append("<div itemprop=\"location\" itemscope itemtype=\"http://schema.org/Place\">");
            htmlBuilder.Append("<a itemprop=\"url\" href=\"" + locationUrl + "\" >SSW Chapel " + city + "</a>");
            htmlBuilder.Append("<span itemprop=\"name\" value=\"SSW Chapel " + city + "\"></span>");

            htmlBuilder.Append("<div itemprop=\"address\" itemscope itemtype = \"http://schema.org/PostalAddress\">");
            htmlBuilder.Append("<span itemprop=\"streetAddress\" value=\"" + streetAddress + "\"></span>");
            htmlBuilder.Append("<span itemprop=\"addressLocality\" value=\"" + addressLocality + "\"></span>");
            htmlBuilder.Append("<span itemprop=\"addressRegion\" value=\"" + addressRegion + "\"></span>");
            htmlBuilder.Append("<span itemprop=\"addressCountry\" value=\"" + addressCountry + "\"></span>");
            htmlBuilder.Append("</div></div>");

            return htmlBuilder.ToString();
        }

        private static int DaysToGo(System.DateTime startDateTime)
        {
            var today = System.DateTime.Now;
            return (int)Math.Round((startDateTime - today).TotalDays, 0, MidpointRounding.AwayFromZero);
        }

    }
}