using System;
using System.Web.Security;
using System.Web.UI;
using SSW.Framework.WebCRMProvider;
using SSW.SSWMT;

namespace SSW
{
    public partial class ClientInvoiceSummary : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((IsPostBack == false))
            {
                lblInvoiceDetail.Visible = false;
                string clientID = string.Empty;
                CRMMembershipUser currentUser = (CRMMembershipUser)Membership.GetUser();
                if ((currentUser != null))
                {
                    CustomersDB wsClient = new CustomersDB();
                    clientID = wsClient.GetClientID(currentUser.SSWContactID);
                }
                else
                {
                    Response.Redirect("Login.aspx?ReturnUrl=ClientInvoiceSummary.aspx");
                }

                //'set credential to access RS report
                //Dim userName As String = ConfigurationManager.AppSettings("ReportViewer_UserName")
                //Dim password As String = ConfigurationManager.AppSettings("ReportViewer_Password")
                //Dim domain As String = ConfigurationManager.AppSettings("ReportViewer_UserDomain")
                //reportViewer.ServerReport.ReportServerCredentials = New ReportViewerCredential(userName, password, domain)

                //Dim paramList As List(Of ReportParameter) = New List(Of ReportParameter)
                //paramList.Add(New ReportParameter("ClientID", clientID, False))
                //reportViewer.ServerReport.SetParameters(paramList)


            }

        }

        public ClientInvoiceSummary()
        {
            Load += Page_Load;
        }

        //Private Sub reportViewer_Drillthrough(ByVal sender As Object, ByVal e As Microsoft.Reporting.WebForms.DrillthroughEventArgs) Handles reportViewer.Drillthrough
        //    lblInvoiceDetail.Visible = True
        //End Sub
    }
}