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
namespace SSW.Website.WebUI
{
	public class RedirectWWWHandler : IHttpHandler
	{

		public bool IsReusable {
			get { return true; }
		}

		public void ProcessRequest(System.Web.HttpContext context)
		{
			if (context.Request.Url.ToString().ToLower().IndexOf("http://ssw.com.au") >= 0) {
				context.Response.Redirect("http://www.ssw.com.au" + context.Request.Url.PathAndQuery);
			} else {
				context.Response.Write(context.Response.OutputStream.ToString());
			}
		}
	}
}
