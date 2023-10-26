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

	partial class DefaultMaster : System.Web.UI.MasterPage
	{


		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			// Fix http://ssw.com.au
			SSW.SSWMT.GlobalFunctions.FixSiteURL();

			//if it is browse.aspx or errorPage.aspx, ignore it -- browse.aspx has its own handler
			string requestURL = Request.Url.ToString();
			if (requestURL.ToLower().EndsWith("/browse.aspx") | requestURL.ToLower().Contains("/errorpage.aspx"))
			{
				SiteMapPathMaster.Visible = false;
				SiteMapPathStandards.Visible = false;
				SiteMapPathStandardsInternal.Visible = false;
				return;
			}

			//check if the content page have a SiteMapPath, if yes, disable the one in master page
			foreach (Control c in mainContentPlaceHolder.Controls)
			{
				if (c is SiteMapPath)
				{
					SiteMapPathMaster.Visible = false;
					SiteMapPathStandards.Visible = false;
					SiteMapPathStandardsInternal.Visible = false;
					return;
				}
			}

			//show different provider for standards, standardsInternal and others
			if (requestURL.ToLower().Contains("/ssw/standards/"))
			{
				SiteMapPathMaster.Visible = false;
				SiteMapPathStandards.Visible = true;
				SiteMapPathStandardsInternal.Visible = false;
			}
			else if (requestURL.ToLower().Contains("/ssw/standardsinternal/"))
			{
				SiteMapPathMaster.Visible = false;
				SiteMapPathStandards.Visible = false;
				SiteMapPathStandardsInternal.Visible = true;
			}
			else
			{
				SiteMapPathMaster.Visible = true;
				SiteMapPathStandards.Visible = false;
				SiteMapPathStandardsInternal.Visible = false;
			}




		}

	}

}
