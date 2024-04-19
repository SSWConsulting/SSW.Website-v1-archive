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

	partial class UserGuide : System.Web.UI.Page
	{

		#region " Web Form Designer Generated Code "

		//This call is required by the Web Form Designer.
		[System.Diagnostics.DebuggerStepThrough()]

		private void InitializeComponent()
		{
		}
		//Protected WithEvents hypNext As System.Web.UI.WebControls.HyperLink
		//Protected WithEvents lblArrow As System.Web.UI.WebControls.Label


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
			//If Not IsPostBack Then
			//    If Request.QueryString("referer") <> "" Then
			//        hypNext.NavigateUrl = Request.QueryString("referer")
			//    Else
			//        hypNext.Visible = False
			//        lblArrow.Visible = False
			//    End If
			//End If
		}
		public UserGuide()
		{
			Load += Page_Load;
			Init += Page_Init;
		}

	}


}
