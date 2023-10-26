using Microsoft.VisualBasic;
using SSW;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Collections.Specialized;
using System.Configuration;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Caching;
using System.Web.SessionState;
using System.Web.Security;
using System.Web.Profile;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Linq;
using System.Web.Mvc;
using System.Web.Routing;

public static class RouteConfig
{
	/// <summary>
	/// Add your routes here as per http://msdn.microsoft.com/en-us/library/dd329551.ASPX?cs-save-lang=1&cs-lang=vb#code-snippet-5
	/// </summary>
	public static void RegisterRoutes(RouteCollection routes)
	{
		ControllerBuilder.Current.DefaultNamespaces.Add("SSW.Website.Web.MVC.Controllers");


		routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
		routes.IgnoreRoute("{resource}.aspx/{*pathInfo}");
		routes.IgnoreRoute("{*browseaspx}", new { browseaspx = ".*browse\\.aspx(/.*)?" });
		routes.IgnoreRoute("{*browsexmlaspx}", new { browsexmlaspx = ".*browsexml\\.aspx(/.*)?" });

		// Web Forms default
		routes.MapPageRoute("WebFormDefault", "", "~/default.aspx");

		routes.MapPageRoute("event-browser", "events/{event}/{location}/{date}", "~/events/event.aspx");
		routes.MapRoute("Sitemap", "sitemap.xml", new { controller = "SiteMap", action = "Index" });

		routes.MapRoute(name: "Default", url: "{controller}/{action}/{id}", defaults: new {
			controller = "Home",
			action = "Index",
			id = UrlParameter.Optional
		});

	}
}


