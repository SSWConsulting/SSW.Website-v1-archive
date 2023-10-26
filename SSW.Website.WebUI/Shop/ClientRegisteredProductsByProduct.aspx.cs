using Microsoft.VisualBasic;
using SSW;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Collections.Specialized;
using System.Configuration;
using System.Net;
using System.Security.Principal;
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

    partial class ClientRegisteredProductsByProduct : System.Web.UI.Page
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

        public Int32 mintClientContactID = 0;

        public string clientInfo = string.Empty;
        private void Page_Load(System.Object sender, System.EventArgs e)
        {
            CRMMembershipUser currentUser = (CRMMembershipUser)Membership.GetUser();
            //Get the users ID
            string customerId = string.Empty;
            if ((currentUser != null))
            {
                customerId = currentUser.SSWContactID.ToString();
            }
            else
            {
                Response.Redirect("Login.aspx?ReturnUrl=ClientRegisteredProductsByProduct.aspx");
            }

            if (customerId != string.Empty & customerId != "00" & customerId != "OFFLINE")
            {
                mintClientContactID = Convert.ToInt32(customerId);
            }

            clientInfo = ShopHelper.GetUserClientInfo();

            //'set credential to access RS report
            //Dim userName As String = ConfigurationManager.AppSettings("ReportViewer_UserName")
            //Dim password As String = ConfigurationManager.AppSettings("ReportViewer_Password")
            //Dim domain As String = ConfigurationManager.AppSettings("ReportViewer_UserDomain")
            var userName = ConfigurationManager.AppSettings["ReportViewer_UserName"];
            var password = ConfigurationManager.AppSettings["ReportViewer_Password"];
            var domain = ConfigurationManager.AppSettings["ReportViewer_UserDomain"];
            reportViewer.ServerReport.ReportServerCredentials = new ReportServerCredentials(userName, password, domain);

            //reportViewer.ServerReport.ReportServerCredentials = new ReportViewerCre

            //Dim paramList As List(Of ReportParameter) = New List(Of ReportParameter)
            //paramList.Add(New ReportParameter("ClientContactID", mintClientContactID, False))
            //reportViewer.ServerReport.SetParameters(paramList)
            var paramList = new List<ReportParameter>
            {
                new ReportParameter("ClientContactID", mintClientContactID.ToString(), false)
            };
            reportViewer.ServerReport.SetParameters(paramList);
        }
        public ClientRegisteredProductsByProduct()
        {
            Load += Page_Load;
            Init += Page_Init;
        }
    }

    /// <summary>
    /// Local implementation of IReportServerCredentials
    /// </summary>
    public class ReportServerCredentials : IReportServerCredentials
    {
        private string _userName;
        private string _password;
        private string _domain;

        public ReportServerCredentials(string userName, string password, string domain)
        {
            _userName = userName;
            _password = password;
            _domain = domain;
        }

        public WindowsIdentity ImpersonationUser
        {
            get
            {
                // Use default identity.
                return null;
            }
        }

        public ICredentials NetworkCredentials
        {
            get
            {
                // Use default identity.
                return new NetworkCredential(_userName, _password, _domain);
            }
        }

        public bool GetFormsCredentials(out Cookie authCookie, out string user, out string password, out string authority)
        {
            // Do not use forms credentials to authenticate.
            authCookie = null;
            user = password = authority = null;
            return false;
        }
    }

}
