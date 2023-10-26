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

	public class FolderBrowserHandler : IHttpHandler
	{


		public bool IsReusable {
				// David Burela 2015. This wasn't returning anything. I had to force it to return something for the C# conversion.
			get { return false; }
		}

		public void ProcessRequest(System.Web.HttpContext context)
		{
			context.Server.Transfer(string.Format("~/FolderBrowser.aspx?Path={0}", context.Server.UrlEncode(context.Request.Url.AbsoluteUri)));

		}
	}

	public class ImageHelper
	{
		public string getIcon(string fileType)
		{
			string strIcon = string.Empty;


			return strIcon;
		}


	}
}
