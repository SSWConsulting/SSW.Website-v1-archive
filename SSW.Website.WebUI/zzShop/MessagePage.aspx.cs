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
//1.0 DH 10/01/02 First released version. Used for a generic message page.
//---------------------------------------------- 

namespace SSW.Website.WebUI
{

	partial class MessagePage : System.Web.UI.Page
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


		public string strExtraHtml = string.Empty;

		private void Page_Load(System.Object sender, System.EventArgs e)
		{

			if ((Request.Params["Message"] != null)) {
				int intMessageSize = 315;
				if ((Request.Params["MessageSize"] != null)) {
					//intMessageSize = Convert.ToInt32(Request.Params("MessageSize").ToString)
					if (!int.TryParse(Request.Params["MessageSize"].ToString(), out intMessageSize)) {
						intMessageSize = 315;
					}
				}
				string strTitle = string.Empty;
				if (Request.Params["title"] == null || Request.Params["title"] == string.Empty) {
					strTitle = "Information";
				} else {
					strTitle = Request.Params["title"];
				}

				lTitle.Text = strTitle;

				WebUtility.GetMessageBox(this, string.Empty, Request.Params["Message"].ToString(), WebMessageBox.ResultIcon.Info, 400, ref PlaceHolderUserMessage);


				if ((Request.Params["RedirectPage"] != null) & (Request.Params["RedirectTimeOut"] != null)) {
					// Re-direct from this page after x seconds
					
					strExtraHtml = "<META HTTP-EQUIV='REFRESH' CONTENT='" + Request.Params["RedirectTimeOut"].ToString() + "; URL=" + Request.Params["RedirectPage"].ToString() + "'>";
				}
			} else {
				Response.Redirect("/ssw/");
			}

		}

	}

}
