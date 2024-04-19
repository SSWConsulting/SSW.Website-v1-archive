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


	partial class LostPassword : System.Web.UI.Page
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

		#endregion

		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			//Put user code to initialize the page here
			PlaceHolderUserMessage.Visible = false;
			lblNote.Visible = false;

			if (!Page.IsPostBack) {
				//If called by Login.aspx (LostPassword.aspx?Email=xx)
				if (Request.QueryString["Email"] != null && Request.QueryString["Email"].ToString().Trim().Length > 0) {
					txtEmail.Text = Request.QueryString["Email"].ToString().Trim();
					lblNote.Visible = true;
				} else {
					lblNote.Visible = false;
					if ((Membership.GetUser() != null)) {
						//txtEmail.Text = Request.Cookies("UserEmail").Value
						txtEmail.Text = Membership.GetUser().Email;
					}
				}
			}
		}

		public void btnSubmit_Click(System.Object sender, System.EventArgs e)
		{
			SendPasswordReminder(txtEmail.Text);
		}

		private void SendPasswordReminder(string sEmail)
		{
			SSWMT.CoBool sCoBool = new SSWMT.CoBool();

			SSWMT.CustomersDB objCustomersDB = new SSWMT.CustomersDB();
			sCoBool = objCustomersDB.SendPasswordReminderEmail(sEmail);

			//Preparation for showing message
			PlaceHolderUserMessage.Visible = true;
			if (sCoBool.IsSuccessful) {
				if ((msgControl != null)) {
					PlaceHolderUserMessage.Controls.Remove(msgControl);
				}
				WebUtility.GetMessageBox(this, "Lost Password", string.Format("Password emailed to {0}", sEmail), WebMessageBox.ResultIcon.Info, 315, ref PlaceHolderUserMessage);
			} else {
				if ((msgControl != null)) {
					PlaceHolderUserMessage.Controls.Remove(msgControl);
				}
				WebUtility.GetMessageBox(this, "Lost Password", sCoBool.FailMessage, WebMessageBox.ResultIcon.Fail, 400, ref PlaceHolderUserMessage);
			}
		}
		public LostPassword()
		{
			Load += Page_Load;
			Init += Page_Init;
		}

	}



}
