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

partial class CookiesDetection : System.Web.UI.Page
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
		// zz'ed ... Old method, not using anymore.

		//' Modified from http://msdn.microsoft.com/library/default.asp?url=/library/en-us/dv_vstechart/html/vbtchASPNETCookies101.asp

		//If Request.QueryString("SSWTestCookie") Is Nothing Then

		//    Response.Cookies("SSWTestCookie").Value = "OK"
		//    Response.Cookies("SSWTestCookie").Expires = DateTime.Now.AddMinutes(1)
		//    Response.Redirect(Request.Url.AbsolutePath & "?SSWTestCookie=OK")

		//Else
		//    ' Was the cookie accepted?
		//    If Not Request.Cookies("SSWTestCookie") Is Nothing Then
		//        ' Delete test cookie
		//        Response.Cookies("SSWTestCookie").Expires = DateTime.Now.AddDays(-1)

		//    Else
		//        ' No cookie, so it must not have been accepted

		//        MessagePanel.Visible = True

		//        Dim scriptString As String = "<script language=""javascript"">parent.document.all.CookiesIFrame.style.height = 40</script>"
		//        Page.RegisterClientScriptBlock("clientScript", scriptString)

		//    End If
		//End If

	}
	public CookiesDetection()
	{
		Load += Page_Load;
		Init += Page_Init;
	}

}


