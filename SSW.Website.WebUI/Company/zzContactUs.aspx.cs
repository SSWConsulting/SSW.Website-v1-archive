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
using System.Data.SqlClient;
using System.Net.Mail;

using System.Collections.ObjectModel;
using SSW.Website.WebUI.Components;
using SSW.Framework.WebCRMProvider;

public partial class ContactUs : System.Web.UI.Page
{

	#region " Web Form Designer Generated Code "

	//This call is required by the Web Form Designer.
	[System.Diagnostics.DebuggerStepThrough()]

	private void InitializeComponent()
	{
	}
	//Protected WithEvents mailMessage As System.Web.UI.HtmlControls.HtmlTextArea

	//NOTE: The following placeholder declaration is required by the Web Form Designer.
	//Do not delete or move it.

	private System.Object designerPlaceholderDeclaration;
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
  //      if (!this.IsPostBack) {
		//	string strUserFirstName = string.Empty;

		//	CRMMembershipUser currentUser = (CRMMembershipUser)Membership.GetUser();

		//	if ((currentUser != null)) {
		//		if ((currentUser.FirstName != null)) {
		//			strUserFirstName = currentUser.FirstName;
		//		}
		//		contactName.Value = strUserFirstName;

		//		if ((currentUser.LastName != null)) {
		//			contactName.Value = contactName.Value + " " + currentUser.LastName;
		//		}

		//		contactEmail.Value = currentUser.Email;
		//	}

		//	//PopulateTimeZoneList();
		//}
	}

 

	protected void btnSend_Click(object sender, System.EventArgs e)
	{
		if (Page.IsValid) {
			string sFrom = string.Empty;
			if (contactEmail.Value == string.Empty) {
				sFrom = ConfigurationManager.AppSettings["SSWInfoEmailAddress"];
			} else {
				sFrom = contactEmail.Value;
			}

			string sTo = Strings.Trim(SSW.SSWMT.GlobalFunctions.GetWebConfigString("SMTP_SERVER_TO"));
			string sSubject = string.Format("[Contact Me] {0}", contactName.Value);
			StringBuilder sMailBody = new StringBuilder(MailMessageFreeTextBox.InnerText).Append("<br/>[Contact Phone:").Append(this.contactPhone.Value).Append("]").Append("<br/>[Time Zone:").Append(this.cboTimeZone.SelectedItem.Text).Append("]");
			string sSmtpHost = Strings.Trim(SSW.SSWMT.GlobalFunctions.GetWebConfigString("SMTPMailServer"));
			SSW.SSWMT.GlobalFunctions.SendEmail(sMailBody.ToString(), sSubject, sFrom, sTo, MailPriority.High, true, string.Empty);

			// Redirect to Email confirmation page
			Response.Redirect("ConfirmEmailSent.aspx?ActionResult=Success&ReturnTo=AboutUs.aspx");
		}
	}
	public ContactUs()
	{
		Load += Page_Load;
		Init += Page_Init;
	}

}
