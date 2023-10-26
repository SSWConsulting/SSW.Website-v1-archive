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

    partial class RavenSubPageTempNav : System.Web.UI.MasterPage
	{

		protected override void OnPreRender(System.EventArgs e)
		{
			base.OnPreRender(e);

			char[] seperator = { '/' };
			string[] urlParts = Request.Url.AbsolutePath.Split(seperator, 3, StringSplitOptions.RemoveEmptyEntries);


			if ((urlParts.Length >= 2)) {
				string categoryName = urlParts[1];
				this.CategoryColor.Attributes.Add("class", categoryName.ToLower().Replace(" ", "-"));
			}

		}

		//'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		//'    ' Fix http://ssw.com.au
		//'    SSW.SSWMT.GlobalFunctions.FixSiteURL()

		//'    If Request.RawUrl.ToLower().Contains("/ssw/default.aspx") Then
		//'        lblHeading.Text = "Sydney's Leading .NET and SQL Consultants"
		//'    ElseIf Request.RawUrl.ToLower().Contains("/ssw/netug/sydney.aspx") Then
		//'        lblHeading.Text = "SSW - Sydney's .NET User Group "
		//'    ElseIf Request.RawUrl.ToLower().Contains("/ssw/netug/canberra.aspx") Then
		//'        lblHeading.Text = "SSW - Canberra's .NET User Group "
		//'    Else
		//'        lblHeading.Text = Page.Title
		//'    End If

		//'    'check if the content page have a SiteMapPath, if yes, disable the one in master page
		//'    If CheckSiteMapControl(title.Controls) Or CheckSiteMapControl(titleSales.Controls) _
		//'        Or CheckSiteMapControl(titleCase.Controls) Or CheckSiteMapControl(titleUX.Controls) _
		//'        Or CheckSiteMapControl(maincontentFull.Controls) Or CheckSiteMapControl(maincontent.Controls) Then
		//'        SiteMapPathMaster.Visible = False
		//'    End If

		//'End Sub

		//'Private Function CheckSiteMapControl(ByVal controls As ControlCollection) As Boolean
		//'    For Each c As Control In controls
		//'        If TypeOf c Is SiteMapPath Then
		//'            Return True
		//'        End If
		//'    Next
		//'    Return False
		//'End Function

		//'Protected Sub newsletterSignUpButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles newsletterSignUpButton.Click
		//'    Response.Redirect("/ssw/Shop/ClientDetail.aspx?Email=" + newsletterEmailTextBox.Text + "&Tag=FNEWS")
		//'End Sub

	}

}
