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
//---------------------------------------------- 
// Copyright 2001 Superior Software for Windows 
// www.ssw.com.au All Rights Reserved.

// VERSION AUTHOR  DATE COMMENT  
//1.0 DH 10/01/02 First released version.
//---------------------------------------------- 



namespace SSW.Website.WebUI.Shop
{


	partial class ClientDetailNew : System.Web.UI.Page
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


		public void Page_Load(System.Object sender, System.EventArgs e)
		{
			SSWMT.CustomersDB shoppingCart = new SSWMT.CustomersDB();


			if ((Request.Params["Email"] != null)) {

				if (Request.Params["Email"].Length > 2) {
					// User entered an email address.

					if (shoppingCart.EmailAlreadyInDataBase(Request.Params["Email"])) {
						//Alreay exist in our database with that Email address.
						
						WebUtility.RedirectToMessagePage(Response, Server.UrlEncode("You already exist in our database. Please <a href=\"/ssw/Shop/ClientInterests.aspx\">login</a>, and then select your interests"));

					} else {
						logingIntoInternetDiary();
						//set Authentication other wise the user will not be allowed into ClientDetail.aspx
						FormsAuthentication.SetAuthCookie("00", false);

						//Redirect user to Sign in page with email
						Response.Redirect("ClientDetail.aspx?Email=" + Request.Params["Email"] + "&Tag=" + Request.Params["Tag"]);

					}

				} else {
					// no email address entered, go to login page
					Response.Redirect("Login.aspx?ReturnUrl=" + Server.UrlEncode("ClientInterests.aspx?Tag=" + Request.Params["Tag"]));
				}
			} else {
				// no email address entered, go to login page
				Response.Redirect("Login.aspx?ReturnUrl=" + Server.UrlEncode("ClientInterests.aspx?Tag=" + Request.Params["Tag"]));
			}

		}

		private void logingIntoInternetDiary()
		{
			try {
				//Save to InternetDiary for stats
				SSWWebServiceSubscribers.Subscribers oSubscribers = new SSWWebServiceSubscribers.Subscribers();
				//TODO: param name
				if (oSubscribers.SaveNewsletterEmail(Request.Params["Email"], Request.Params["Inctop:PageName"]) == string.Empty) {
					//No error
				} else {
					//error on saving to InternetDiary
				}
				
			} catch (Exception ex) {
				//SSW Code Auditor - Ignore empty catch
			}
		}
		public ClientDetailNew()
		{
			Load += Page_Load;
			Init += Page_Init;
		}

	}

}
