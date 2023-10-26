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
//SSW Code Auditor - Ignore this file (VB.NET)
using SSW.Framework.Registration.SSWWebService;
using SSW.Website.WebUI;
using SSW.Framework.Registration;

using System.Net;
using System.Web.Services.Protocols;
using SSW.Framework.WebCRMProvider;

namespace SSW.Website.WebUI.Products
{

	public partial class GenerateRegistrationID : System.Web.UI.Page
	{

		#region " Web Form Designer Generated Code "

		//This call is required by the Web Form Designer.
		[System.Diagnostics.DebuggerStepThrough()]

		private void InitializeComponent()
		{
		}

		//NOTE: The following placeholder declaration is required by the Web Form Designer.
		//Do not delete or move it.

		private System.Object designerPlaceholderDeclaration1;
		private void Page_Init(System.Object sender, System.EventArgs e)
		{
			//CODEGEN: This method call is required by the Web Form Designer
			//Do not modify it using the code editor.
			InitializeComponent();
		}

		#endregion

		string mProductName = string.Empty;
		string mPcId = string.Empty;
		int mCustomerID = 0;

		string mClientName = string.Empty;

		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			if (Request.QueryString["pr"] == null | Request.QueryString["pc"] == null) {
				Response.Redirect("Tester.aspx");
			}
			CRMMembershipUser currentUser = (CRMMembershipUser)Membership.GetUser();
			mProductName = Request.QueryString["pr"].ToString();
			mPcId = Request.QueryString["pc"].ToString();
			mCustomerID = currentUser.SSWContactID;
			mClientName = currentUser.FirstName + " " + currentUser.LastName;

			lblProductname.Text = mProductName;
			lblClientname.Text = mClientName;
			lblClientID.Text = Convert.ToString(mCustomerID);

			pnlShowKey.Visible = false;
			pnlShowError.Visible = false;

			SSWMT.Registration objReg = new SSWMT.Registration();
			SSWWebServiceRegistration.clsRegistrationInfo regInfo = objReg.GetProdRegistrationInfo(mCustomerID, mProductName);

			if (!(regInfo.UpgradeExpiryDate == DateTime.MinValue)) {
				//logs that the product has been registered

				if (regInfo.HasRegisteredToManyTimesThisMonth) {
					objReg.Log("PRDFU", mCustomerID, mProductName, mPcId);

					pnlShowError.Visible = true;
					lblErrorMessage.Text = "You have registered too many times this month. We cannot give you a Registration ID.";
					HyperLink1.Visible = false;

				} else {
					objReg.Log("PRDREG", mCustomerID, mProductName, mPcId);
					lblUnlockID.Text = LockHelper.GetUnlockKey(mPcId, mProductName) + "-" + mClientName;

					pnlShowKey.Visible = true;
				}

			} else {
				pnlShowError.Visible = true;
			}
		}
		public GenerateRegistrationID()
		{
			Load += Page_Load;
			Load += Page_Load;
			Init += Page_Init;
		}

	}

}
