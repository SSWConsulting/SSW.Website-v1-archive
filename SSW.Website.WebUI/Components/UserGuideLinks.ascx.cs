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
namespace SSW.Website.WebUI.Components
{

	partial class UserGuideLinks : System.Web.UI.UserControl
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
			//Put user code to initialize the page here
			//Dim queryStringCurrentPage As String = "?referer=" & Request.RawUrl.ToString
			//hypInstallUG.NavigateUrl = hypInstallUG.NavigateUrl + queryStringCurrentPage
			//hypPurchaseUG.NavigateUrl = hypPurchaseUG.NavigateUrl + queryStringCurrentPage
			//hypRegUG.NavigateUrl = hypRegUG.NavigateUrl + queryStringCurrentPage
			if (!IsPostBack) {
				ChangeTextHyperlink(hypInstallUG);
				ChangeTextHyperlink(hypPurchaseUG);
				ChangeTextHyperlink(hypRegUG);
			}
		}
		private void ChangeTextHyperlink(HyperLink hyp)
		{
			string strCstep = " (Current Step)";
			if (Request.RawUrl.ToLower().IndexOf(hyp.NavigateUrl.ToLower()) > -1) {
				hyp.NavigateUrl = string.Empty;
				hyp.Text = hyp.Text + strCstep;
			}
		}
		public UserGuideLinks()
		{
			Load += Page_Load;
			Init += Page_Init;
		}
	}

}
