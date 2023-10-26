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
using System.Data.SqlClient;
namespace SSW.Website.WebUI.Components
{

	partial class Header : System.Web.UI.UserControl
	{

		public string HeaderTitle()
		{

			if (Request.RawUrl.ToLower() == "/ssw/default.aspx") {
				return "Sydney's Leading .NET and SQL Consultants";
			}

			return Page.Title;
		}

		public string LoginTime()
		{
			string strLoginTime = string.Empty;
			if (((HttpContext.Current.Session != null))) {
				if (((HttpContext.Current.Session["LoginTime"] != null))) {
					strLoginTime = "(Login " + Convert.ToDouble(HttpContext.Current.Session["LoginTime"]).ToString("0.00") + " seconds)";
					if (Request.Url.ToString().ToLower().IndexOf("login.aspx") < 0) {
						HttpContext.Current.Session.Remove("LoginTime");
					}
				}
			}
			return strLoginTime;
		}

	}

}
