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
namespace SSW.Website.WebUI.Company
{

	public partial class ConfirmEmailSent : System.Web.UI.Page
	{

		#region " Web Form Designer Generated Code "



		//This call is required by the Web Form Designer.
		[System.Diagnostics.DebuggerStepThrough()]

		private void InitializeComponent()
		{
		}

		//NOTE: The following placeholder declaration is required by the Web Form Designer.
		//Do not delete or move it.

		private System.Object designerPlaceholderDeclaration;
		private void Page_Init(System.Object sender, System.EventArgs e)
		{
			//CODEGEN: This method call is required by the Web Form Designer
			//Do not modify it using the code editor.
			InitializeComponent();
		}


		//    Protected WithEvents linkBack As System.Web.UI.HtmlControls.HtmlAnchor


		//    Protected WithEvents confirmMessage As System.Web.UI.webControls.Label

		#endregion



		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			//Put user code to initialize the page here

			if (!this.IsPostBack) {
				// The first time page is aceessed

				// Get data from query string
				string strActionResult = string.Empty;

				if ((Request["ActionResult"] != null)) {
					strActionResult = Request["ActionResult"];
				}

				switch (strActionResult) {
					case "Success":
						confirmMessage.Text = "<p>SSW has been successfully notified about your request.</p>";
						break;
					case "Failure":
						confirmMessage.Text = "<p>Sorry, there were problems in notifying SSW about your request.</p>";
						break;
					default:
						confirmMessage.Text = "<p>Sorry, we cannot determine whether email has been sent.</p>";
						break;
				}

				if ((Request["ReturnTo"] != null)) {
					linkBack.HRef = Request["ReturnTo"];
				}

			}

		}
		public ConfirmEmailSent()
		{
			Load += Page_Load;
			Init += Page_Init;
		}

	}

}
