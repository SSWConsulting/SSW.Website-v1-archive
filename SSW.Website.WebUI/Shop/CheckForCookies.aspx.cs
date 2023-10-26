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

	partial class CheckForCookies : System.Web.UI.Page
	{

		#region " Web Form Designer Generated Code "

		//This call is required by the Web Form Designer.
		[System.Diagnostics.DebuggerStepThrough()]

		private void InitializeComponent()
		{
		}


		private void Page_Init(System.Object sender, System.EventArgs e)
		{
			//CODEGEN: This method call is required by the Web Form Designer
			//Do not modify it using the code editor.
			InitializeComponent();
		}

		#endregion


		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			//Put user code to initialize the page here

			//Checks if Cookies are enabled
			try {
				if ((Request.Cookies["CheckForCookies"].Value == null) == false) {
					//set Authentication other wise the user will not be allowed into ClientDetail.aspx
					System.Web.Security.FormsAuthentication.SetAuthCookie("00", false);

					//Redirects user to Details Page
					Response.Redirect("ClientDetail.aspx?Email=" + Request.Params["Email"] + "&ReturnUrl=" + Server.UrlEncode(Request.Params["ReturnUrl"]) + "&ReferredBy=" + Request.Params["ReferredBy"] + "&Tag=" + Request.Params["Tag"]);
				} else {
					panNoCookies.Visible = true;
				}
				//SSW Code Auditor - Ignore next line 
			} catch (Exception ex) {
				panNoCookies.Visible = true;
			}


		}
		public CheckForCookies()
		{
			Load += Page_Load;
			Init += Page_Init;
		}

	}

}
