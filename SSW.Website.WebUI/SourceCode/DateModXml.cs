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
using System.IO;
using System.Xml;

namespace SSW.SSWMT
{
	public class DateModXml
	{
		public static string XmlPath {
			get { return "/ssw/NETUG/DotNetDates.xml"; }
		}
		public static string XmlPathCanberra {
			get { return "/ssw/NETUG/CanberraDotNetDates.xml"; }
		}

		public static string GetUserGroupXml(HttpContext context)
		{
			//Dim s As String = CType(context.Cache.Get("sDotNetDatesXml"), String)
			string s = string.Empty;
			if ((s == string.Empty)) {
				StreamReader tr = new StreamReader(context.Server.MapPath(XmlPath));
				s = tr.ReadToEnd();
				tr.Close();
				if ((s == string.Empty)) {
					s = "null @ reader";
				}

				//context.Cache.Add("sDotNetDatesXml", s, Nothing, DateTime.Now.AddMinutes(20), TimeSpan.Zero, CacheItemPriority.High, Nothing)
			}

			return s;
		}

		public static string GetUserGroupCanberraXml(HttpContext context)
		{
			//Dim s As String = CType(context.Cache.Get("sDotNetDatesXml"), String)
			string s = string.Empty;
			if ((s == string.Empty)) {
				StreamReader tr = new StreamReader(context.Server.MapPath(XmlPathCanberra));
				s = tr.ReadToEnd();
				tr.Close();
				if ((s == string.Empty)) {
					s = "null @ reader";
				}

				//context.Cache.Add("sDotNetDatesXml", s, Nothing, DateTime.Now.AddMinutes(20), TimeSpan.Zero, CacheItemPriority.High, Nothing)
			}

			return s;
		}
	}
}
