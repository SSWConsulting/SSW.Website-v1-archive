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
namespace SSW.Website.WebUI
{

	partial class FolderBrowser : System.Web.UI.Page
	{
		protected void Page_Load(object sender, System.EventArgs e)
		{
			//    Dim dMasterPage As MasterPage = CType(Me.Master, DefaultMaster)
			//    dMasterPage.Page.Form.Attributes("action") = "Test.aspx"
			//    Response.Write("action=" & dMasterPage.Page.Form.Attributes("action"))
		}
		public FolderBrowser()
		{
			Load += Page_Load;
		}

		//Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.LoadComplete
		//    Dim dMasterPage As MasterPage = CType(Me.Master, DefaultMaster)
		//    'dMasterPage.Page.Form.Attributes("action") = "Test.aspx"
		//    Response.Write("action=" & dMasterPage.Page.Form.Attributes("action"))
		//End Sub
	}
}
