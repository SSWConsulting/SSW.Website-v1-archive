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
//---------------------------------------------- 
namespace SSW.Website.WebUI.Shop
{


	partial class ClientPasswordChange : System.Web.UI.Page
	{

		private WebMessageBox msgControl;
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


		//

		protected System.Web.UI.HtmlControls.HtmlAnchor A1;
		#endregion


		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			PlaceHolderUserMessage.Visible = false;
			// Validate form (so all the little images come up)
			Page.Validate();

		}


		public void SaveBtn_Click(System.Object sender, System.EventArgs e)
		{
			//lblMessage.Text = String.Empty

			Page.Validate();
			if (Page.IsValid) {
				CRMMembershipUser currentUser = (CRMMembershipUser)Membership.GetUser();

				//Get the users ID
				int customerID = 0;
				if ((currentUser != null)) {
					//If Context.User.Identity.Name = "OFFLINE" Then
					//    Response.Redirect("/ssw/MessagePage.aspx?Message=You cannot view this page as a temporary offline user")
					//End If

					// Check to make sure user is not a SSWInternal User
					SSWMT.CustomersDB objCustomers = new SSWMT.CustomersDB();
					objCustomers.CheckSSWInternal(Context, Page);

					customerID = currentUser.SSWContactID;

				}

				if (customerID != 0) {
					//Dim accountSystem As New SSWMT.CustomersDB()

					if (currentUser.Password != txtPasswordOld.Text) {
						PlaceHolderUserMessage.Visible = true;
						if ((msgControl != null)) {
							PlaceHolderUserMessage.Controls.Remove(msgControl);
						}
						addMsgControl("Change my Password", "Current Password is Incorrect, Please Input the Correct One." + "<br>", WebMessageBox.ResultIcon.Fail, 400);
						return;
					}

					//Dim bolUpdateOK As Boolean = False
					try {
						//currentUser.ChangePassword(currentUser.GetPassword(), txtPassword2.Text)
						((WebCRMMembershipProvider)Membership.Provider).ChangePassword(currentUser.Email, currentUser.Password, txtPassword2.Text.Trim());
						Response.Redirect("ClientDetail.aspx");
						//SSW Code Auditor - Ignore next line 
					} 
                    catch (Exception ex) 
                    {
						PlaceHolderUserMessage.Visible = true;
						if ((msgControl != null)) {
							PlaceHolderUserMessage.Controls.Remove(msgControl);
						}
						addMsgControl("Change my Password", "There was an error saving your password." + "<br>", WebMessageBox.ResultIcon.Fail, 400);
                        throw;
					}
				}

			}
		}

		private void addMsgControl(string header, string text, WebMessageBox.ResultIcon resultType, int boxWidth)
		{
			msgControl = (WebMessageBox)LoadControl("~/Components/WebMessageBox.ascx");
			msgControl.HeaderText = header;
			msgControl.Text = text;
			msgControl.ImagePathResult = resultType;
			msgControl.Width = boxWidth;
			PlaceHolderUserMessage.Controls.Add(msgControl);
		}
		public ClientPasswordChange()
		{
			Load += Page_Load;
			Init += Page_Init;
		}

	}


}

