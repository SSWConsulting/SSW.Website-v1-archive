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
using SSW.Framework.WebCRMProvider;

//---------------------------------------------- 
// Copyright 2001 Superior Software for Windows 
// www.ssw.com.au All Rights Reserved.

// VERSION AUTHOR  DATE COMMENT  
//1.0 DH 10/01/02 First released version.
//1.1 PA 30/07/02 Add a Label for error message
//---------------------------------------------- 
namespace SSW.Website.WebUI
{

	public partial class ErrorPage : System.Web.UI.Page
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

		protected void Page_Load(object sender, System.EventArgs e)
		{
			try {
				lblError.Text = string.Empty;
				if (Request.QueryString["ErrType"] == null) {
					lblError.Text += "An error has occurred.";
				} else {
					string strErrType = Request.QueryString["ErrType"].ToString();
					switch (strErrType) {
						case "System.Web.Services.Protocols.SoapException":
                            var errMsg = Request.QueryString["ErrMsg"].ToString();
                            lblError.Text += errMsg == "" ? "Could not contact the web service." : errMsg;                           
							break;
						case "System.Net.WebException":
							lblError.Text += "Could not contact the web service.";
							break;
						case "System.Web.HttpException":
							lblError.Text += "An error has occurred on the web page.";
							break;
						case "System.Data.SqlClient.SqlException":
							lblError.Text += "An error has occurred on connecting to SQL database.";
							break;
						case "System.IO.FileNotFoundException":
							lblError.Text += "The file is not found.";
							break;
						default:
							lblError.Text += "An error has occurred.";
							break;
					}
				}

				lblError.Text += "<br>";
				lblError.Text += "The site administrator has been informed. Please try again.";

				lblError.Text += "<br>";
				CRMMembershipUser currentUser = (CRMMembershipUser)Membership.GetUser();
				if ((currentUser != null)) {
					if (currentUser.Email != null && currentUser.Email != string.Empty) {
						lblError.Text += "<p>You (" + ((CRMMembershipUser)Membership.GetUser()).Email + ") will be informed when we have fixed it.</p>";
					}
				} else {
					lblError.Text += "<p>If you were logged in we would tell you when we fixed it.</p>";
				}
				//SSW Code Auditor - Ignore next line
			} catch (Exception ex) {
				lblError.Text = "Ouch - an unknown error occurred... Yep, that's as much as we know.";
			}
		}
		public ErrorPage()
		{
			Load += Page_Load;
			Init += Page_Init;
		}
	}

}
