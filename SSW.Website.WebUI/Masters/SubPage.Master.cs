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

	public partial class SubPage : System.Web.UI.MasterPage
	{


		protected void Page_Load(object sender, System.EventArgs e)
		{
			// Fix http://ssw.com.au
			SSW.SSWMT.GlobalFunctions.FixSiteURL();

			if (Request.RawUrl.ToLower().Contains("/ssw/default.aspx")) {
				lblHeading.Text = "Sydney's Leading .NET and SQL Consultants";
			} else if (Request.RawUrl.ToLower().Contains("/ssw/netug/sydney.aspx")) {
				lblHeading.Text = "SSW - Sydney's .NET User Group ";
			} else if (Request.RawUrl.ToLower().Contains("/ssw/netug/canberra.aspx")) {
				lblHeading.Text = "SSW - Canberra's .NET User Group ";
			} else {
				lblHeading.Text = Page.Title;
			}

			//check if the content page have a SiteMapPath, if yes, disable the one in master page
			if (CheckSiteMapControl(title.Controls) | CheckSiteMapControl(titleSales.Controls) | CheckSiteMapControl(titleCase.Controls) | CheckSiteMapControl(titleUX.Controls) | CheckSiteMapControl(maincontentFull.Controls) | CheckSiteMapControl(maincontent.Controls)) {
				SiteMapPathMaster.Visible = false;
			}

		}

		private bool CheckSiteMapControl(ControlCollection controls)
		{
			foreach (Control c in controls) {
				if (c is SiteMapPath) {
					return true;
				}
			}
			return false;
		}

		protected void newsletterSignUpButton_Click(object sender, EventArgs e)
		{
			Response.Redirect("/ssw/Shop/ClientDetail.aspx?Email=" + newsletterEmailTextBox.Text + "&Tag=FNEWS");
		}
		public SubPage()
		{
			Load += Page_Load;
		}
	}

}
