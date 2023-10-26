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
namespace SSW.Website.WebUI.Masters
{

	partial class RavenSubpage : System.Web.UI.MasterPage
	{

		protected override void OnPreRender(System.EventArgs e)
		{
			base.OnPreRender(e);

			char[] seperator = { '/' };
			string[] urlParts = Request.Url.AbsolutePath.Split(seperator, 3, StringSplitOptions.RemoveEmptyEntries);


			if ((urlParts.Length >= 2)) {
				string categoryName = urlParts[1];
				this.CategoryColor.Attributes.Add("class", categoryName.ToLower().Replace(" ", "-"));
			}

		}

	}

}
