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
using System.Net.Mail;
using SSW.Framework.WebCRMProvider;


namespace SSW.Website.WebUI.Products
{

	partial class LiveDemonstration : System.Web.UI.Page
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
			if (!Page.IsPostBack) {
				CRMMembershipUser currentUser = (SSW.Framework.WebCRMProvider.CRMMembershipUser)Membership.GetUser();

				//EL 29/06/2009 Check user first
				if ((currentUser != null)) {
					if ((currentUser.Email != null)) {
						ContactEmail.Text = currentUser.Email;
					}
					if ((currentUser.FirstName != null)) {
						ContactFirstName.Text = currentUser.FirstName;
					}
					if ((currentUser.LastName != null)) {
						ContactSurname.Text = currentUser.LastName;
					}
				}

				if ((Request.QueryString["Product"] != null)) {
					EnquiryProduct.Text = Request.QueryString["Product"];
				}
			}
		}

		private void Submit_Click(System.Object sender, System.EventArgs e)
		{
			Page.Validate();


			if (Page.IsValid) {
				string sFrom = Strings.Trim(ContactEmail.Text);
				string sAddressTo = ConfigurationManager.AppSettings["SSWInfoEmailAddress"];
				string sSubject = Strings.Trim(EnquiryProduct.Text);

				string messageBodyTemplate = "The user {0} {1} has requested a {2} of the product {3}." + Environment.NewLine + "Phone: {4}" + Environment.NewLine + "Company: {5}" + Environment.NewLine + "Country: {6}" + Environment.NewLine + Environment.NewLine + "{7}";

				//note: bigpond doesn't support big body text, it will fail 
				string sBody = string.Format(messageBodyTemplate, ContactFirstName.Text, ContactSurname.Text, (LocationSydney.Checked ? "live demonstration" : "phone walkthrough"), EnquiryProduct.Text, ContactPhoneNo.Text, ContactCompany.Text, ContactCountry.Text, EnquiryComments.Text);

				string sHost = Strings.Trim(SSW.SSWMT.GlobalFunctions.GetWebConfigString("SMTPMailServer"));

				try {
					SSW.SSWMT.GlobalFunctions.SendEmail(sBody, sSubject, sFrom, sAddressTo, MailPriority.Normal, false, string.Empty);
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					if (Strings.Trim(ex.Message) == "The transport lost its connection to the server.") {
						// ignore this one
					} else {
						throw;
					}
				}

			}
		}
		public LiveDemonstration()
		{
			Load += Page_Load;
			Init += Page_Init;
		}
	}

}
