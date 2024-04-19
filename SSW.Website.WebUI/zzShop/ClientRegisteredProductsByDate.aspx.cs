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
using Microsoft.Reporting.WebForms;
using SSW.Framework.WebCRMProvider;

namespace SSW.Website.WebUI.Shop
{

	partial class ClientRegisteredProductsByDate : System.Web.UI.Page
	{

		public Int32 mintClientContactID = 0;

		public string clientInfo = string.Empty;
		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			CRMMembershipUser currentUser = (CRMMembershipUser)Membership.GetUser();
			//Get the users ID
			string customerId = string.Empty;
			if ((currentUser != null)) {
				customerId = currentUser.SSWContactID.ToString();
			} else {
				Response.Redirect("Login.aspx?ReturnUrl=ClientRegisteredProductsByDate.aspx");
			}

			if (customerId != string.Empty & customerId != "00" & customerId != "OFFLINE") {
				mintClientContactID = Convert.ToInt32(customerId);
			}

			clientInfo = ShopHelper.GetUserClientInfo();

			//'set credential to access RS report
			//Dim userName As String = ConfigurationManager.AppSettings("ReportViewer_UserName")
			//Dim password As String = ConfigurationManager.AppSettings("ReportViewer_Password")
			//Dim domain As String = ConfigurationManager.AppSettings("ReportViewer_UserDomain")
			//reportViewer.ServerReport.ReportServerCredentials = New ReportViewerCredential(userName, password, domain)

			//Dim paramList As List(Of ReportParameter) = New List(Of ReportParameter)
			//paramList.Add(New ReportParameter("ClientContactID", mintClientContactID, False))
			//reportViewer.ServerReport.SetParameters(paramList)

		}
		public ClientRegisteredProductsByDate()
		{
			Load += Page_Load;
		}
	}

}
