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

namespace SSW.Website.WebUI.Shop
{

	public class ShopHelper
	{
		private ShopHelper()
		{
		}

		private const string My_Currency = "TempCurrency";
		private const string Is_Austrialian = "IsAustralianResident";
		public static string DefaultCurrency()
		{
			string strReturn = string.Empty;
			if (Environment.MachineName.ToUpper() == ConfigurationManager.AppSettings["AUServer"].ToString()) {
				strReturn = ConfigurationManager.AppSettings["AUDefaultCurrency"].ToString();
			} else {
				strReturn = ConfigurationManager.AppSettings["USDefaultCurrency"].ToString();
			}
			return strReturn;
		}

		public static string UserMyCurrency()
		{
			if (HttpContext.Current == null) {
				return null;
			}
			if (HttpContext.Current.Request.Cookies[My_Currency] == null) {
				return null;
			}
			return HttpContext.Current.Request.Cookies[My_Currency].Value;
		}

		public static string IsAustrialianUser()
		{
			if (HttpContext.Current == null) {
				return null;
			}
			if (HttpContext.Current.Request.Cookies[Is_Austrialian] == null) {
				return null;
			}
			return (HttpContext.Current.Request.Cookies[Is_Austrialian].Value.ToUpper() == "TRUE").ToString();
		}

		public static void SetUserMyCurrencyCookie(string currency)
		{
			if (HttpContext.Current == null) {
				return;
			}
			if (HttpContext.Current.Request.Cookies[My_Currency] == null) {
				HttpCookie TempCookie = new HttpCookie(My_Currency);
				TempCookie.Value = currency;
				TempCookie.Expires = System.DateTime.Now.AddYears(1);
				HttpContext.Current.Response.Cookies.Add(TempCookie);
			} else {
				HttpContext.Current.Response.Cookies[My_Currency].Value = currency;
				HttpContext.Current.Response.Cookies[My_Currency].Expires = System.DateTime.Now.AddYears(1);
			}
		}

		public static void SetIsAustrilianCookie(string isAustrilian)
		{
			if (HttpContext.Current == null) {
				return;
			}
			if (HttpContext.Current.Request.Cookies[Is_Austrialian] == null) {
				HttpCookie TempCookie = new HttpCookie(Is_Austrialian);
				TempCookie.Value = isAustrilian.ToUpper();
				TempCookie.Expires = System.DateTime.Now.AddYears(1);
				HttpContext.Current.Response.Cookies.Add(TempCookie);
			} else {
				HttpContext.Current.Response.Cookies[Is_Austrialian].Value = isAustrilian.ToUpper();
				HttpContext.Current.Response.Cookies[Is_Austrialian].Expires = System.DateTime.Now.AddYears(1);
			}
		}

		public static string GetUserClientInfo()
		{
			string info = string.Empty;

			//Get browser user agent information
			if (((HttpContext.Current.Request.UserAgent != null) && !HttpContext.Current.Request.UserAgent.StartsWith("/"))) {
				info = "/";
			}
			info += HttpContext.Current.Request.UserAgent;

			//Get IP address
			string ip = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
			if ((ip == null || ip.Length == 0)) {
				ip = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
			}
			info += "/" + ip;
			return info;
		}

	}

}
