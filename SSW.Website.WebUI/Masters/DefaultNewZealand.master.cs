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
namespace SSW.Website.WebUI.Masters
{

	partial class DefaultMasterNewZealand : System.Web.UI.MasterPage
	{


		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			//If Not IsPostBack Then
			//    CheckLeftNav()
			//End If
			string requestURL = Request.Url.ToString();
			if (requestURL.ToLower().IndexOf("http://ssw.com.au") == 0) {
				requestURL = "http://www.ssw.com.au" + requestURL.Substring(17);
				Response.Redirect(requestURL);
			}

		}
		public DefaultMasterNewZealand()
		{
			Load += Page_Load;
		}

		//'==Check left nav bar==
		//Private Sub CheckLeftNav()


		//    Dim boolHideLeftnav As Boolean = False
		//    Dim hideCookie As HttpCookie = Request.Cookies("HideLeftNav")
		//    Dim hideQuery As String = Request.QueryString("HideLeftNav")

		//    '1. Check QueryString(Priority) first 
		//    If hideQuery Is Nothing Then
		//        boolHideLeftnav = False
		//        If Not hideCookie Is Nothing Then
		//            boolHideLeftnav = True
		//        End If
		//    ElseIf hideQuery.ToLower = "true" Then
		//        boolHideLeftnav = True
		//    ElseIf hideQuery.ToLower = "false" Then
		//        boolHideLeftnav = False
		//    End If

		//    '2. Check Cookie if there is no queryString specified
		//    If hideQuery Is Nothing AndAlso Not hideCookie Is Nothing Then

		//        boolHideLeftnav = hideCookie.Value = "True"

		//    End If

		//    '3. Load client script to hide/show left nav
		//    If boolHideLeftnav Then
		//        'Response.Cookies("HideLeftNav").Value = "True"
		//        MasterBody.Attributes.Add("onload", "hideLeftNavBarQS();")
		//    ElseIf Not boolHideLeftnav Then
		//        'Response.Cookies("HideLeftNav").Value = "False"
		//        MasterBody.Attributes.Add("onload", "showLeftNavBarQS();")
		//    End If
		//End Sub

		//Protected Sub lbtnShowLeftNavBar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnShowLeftNavBar.Click
		//    'CheckLeftNav2()
		//    'Create a cookie for persistent state
		//    Response.Cookies("HideLeftNav").Value = "False"
		//    Response.Cookies("HideLeftNav").Expires = DateTime.Now.AddDays(10)
		//    Response.Redirect(Request.ServerVariables("URL") & "?HideLeftNav=False")

		//End Sub
	}


}
