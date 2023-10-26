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
using SSW.Framework.WebCRMProvider;

namespace SSW.Website.WebUI.Shop
{

	partial class ClientRemove : System.Web.UI.Page
	{
			#region " Web Form Designer Generated Code "
		private WebMessageBox msgControl;


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

		protected System.Web.UI.WebControls.CustomValidator valDetails;
		#endregion


		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			//Put user code to initialize the page here
			PlaceHolderUserMessage.Visible = false;
		}


		public void btnRemove_Click(object sender, System.EventArgs e)
		{
			//lblMessage.Text = String.Empty

			Page.Validate();
			if (Page.IsValid) {
				CRMMembershipUser currentUser = (CRMMembershipUser)Membership.GetUser();
				//Get the users ID
				int customerID = 0;

				if ((currentUser != null)) {
					// Check to make sure user is not a SSWInternal User
					SSWMT.CustomersDB objCustomers = new SSWMT.CustomersDB();
					objCustomers.CheckSSWInternal(Context, Page);

					customerID = currentUser.SSWContactID;
				}

				if (customerID != 0) {
					SSWMT.CustomersDB accountSystem = new SSWMT.CustomersDB();
					bool bolUpdateOK = false;
					if (accountSystem.DeleteCustomerAccount(customerID, txtReasonForRemovial.Text)) {
						bolUpdateOK = true;
					}


					//Add web message box user control on the fly by PA on 31/01/07

					PlaceHolderUserMessage.Visible = true;
					if ((msgControl != null)) {
						PlaceHolderUserMessage.Controls.Remove(msgControl);
					}
					if (bolUpdateOK) {
						
						//lblMessage.Text = SSWMT.GlobalFunctions.MakeCustomMessage("Remove my Account", "Your account has been removed.<br><br><A href=String.Empty/ssw/String.Empty>Finish</A>") & "<br>"


						
						WebUtility.GetMessageBox(this, "Remove my Account", "Your account has been removed.<br><br><A href=\"/ssw/\">Finish</A>" + "<br>", WebMessageBox.ResultIcon.Info, 400, ref PlaceHolderUserMessage);

						pnlDetails.Visible = false;
						FormsAuthentication.SignOut();

					} else {
						//lblMessage.Text = SSWMT.GlobalFunctions.MakeCustomMessage("Remove my Account", "There was an error removing your account.") & "<br>"
						WebUtility.GetMessageBox(this, "Remove my Account", "There was an error removing your account." + "<br>", WebMessageBox.ResultIcon.Fail, 400, ref PlaceHolderUserMessage);
					}


				}

			}

		}


		public void btnCancel_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("/ssw/");

		}
		public ClientRemove()
		{
			Load += Page_Load;
			Init += Page_Init;
		}

	}


}
