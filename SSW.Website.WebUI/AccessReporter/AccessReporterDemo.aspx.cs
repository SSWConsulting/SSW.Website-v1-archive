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
//---------------------------------------------- 
// Copyright 2001 Superior Software for Windows 
// www.ssw.com.au All Rights Reserved.

// VERSION AUTHOR  DATE COMMENT  
//1.0 DH 20/03/02 First released version. 
//---------------------------------------------- 

 // ERROR: Not supported in C#: OptionDeclaration
using SSW.AccessReporter.ReportClient;
using SSW.Framework.ExceptionManagement;
//Imports 
namespace SSW.Website.WebUI.AccessReporter
{

	public partial class SSWAccessReporter : System.Web.UI.Page
	{

		#region " Web Form Designer Generated Code "


		//This call is required by the Web Form Designer.
		[System.Diagnostics.DebuggerStepThrough()]

		private void InitializeComponent()
		{
		}


		protected void Page_Error(object sender, System.EventArgs e)
		{
			try {
				Microsoft.ApplicationBlocks.ExceptionManagement.ExceptionManager.Publish(Server.GetLastError());
			} catch (Exception ex) {
				Response.Write(Server.GetLastError().Message);
			}
		}

		private void Page_Init(System.Object sender, System.EventArgs e)
		{
			//CODEGEN: This method call is required by the Web Form Designer
			//Do not modify it using the code editor.
			InitializeComponent();
		}
		//


		#endregion


		//==============================================================================
		// Constants
		//==============================================================================
		// Location of reports created by the client

		private string sswReportOutputURL = "/ssw/AccessReporter/Reports/";
		// IP or Computer name of the computer that is running SSW Access Report Server.

		private const string sswDestinationComputer = "127.0.0.1";
		// These constants are used in place of the format type enum 
		// (Note: You should include these in all ASP's that use the report client)
		public const int sswFormatHTML = 1;
		public const int sswFormatRTF = 2;
		public const int sswFormatSNP = 3;
		public const int sswFormatTXT = 4;
		public const int sswFormatXLS = 5;

		public const int sswFormatPDF = 6;

		//==============================================================================
		// Page Calls
		//==============================================================================

		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			// Fix the Output URL so that the suer will be directed to the correct URL
			sswReportOutputURL = "http://" + Request.Url.Host + sswReportOutputURL;

			if (Page.IsPostBack) {
				lblMessage.Text = string.Empty;
			}
		}

		private void ReportName_SelectedIndexChanged(System.Object sender, System.EventArgs e)
		{
			if (ReportName.SelectedItem.Value == "Invoice") {
				ReportFilter.Visible = true;
			} else {
				ReportFilter.Visible = false;
			}
		}


		private void btnSubmit_Click(System.Object sender, System.EventArgs e)
		{
			//==============================================================================
			// Generates the report and redirects the user to the report. If there was an 
			//   error while generating, the error message will be displayed on the page.
			//==============================================================================
			string strReportFilter = string.Empty;
			// Report filter is only used for the Invoice report in this sample (set blank if other report)
			if (ReportFilter.Visible) {
				strReportFilter = ReportFilter.SelectedItem.Value.ToString();
			}

			//Let the global Error handler do this
			try {
				// Generate report and get the path of the file
				string strFileName = GetReport(cboDatabaseName.SelectedItem.Value.ToString(), ReportName.SelectedItem.Value.ToString(), (ReportClient.EnumReportFormat)Enum.Parse(typeof(ReportClient.EnumReportFormat), ReportFormat.SelectedItem.Value.ToString()), strReportFilter);

				// Get the file name of the file
				strFileName = GetFileName(strFileName);

				// If they have generated a PDF file then set the content type
				//   otherwise the pdf will not show correctly in some browers.
				if (ReportFormat.SelectedItem.Value.ToString() == ReportClient.EnumReportFormat.sswReportFormatPDF.ToString()) {
					Response.Redirect("PDFViewer.aspx?File=" + strFileName);
				}

				// Redirect to the report (Note: This requires the output URL)
				Response.Redirect(sswReportOutputURL + strFileName);

			} catch (Exception exp) {
				lblMessage.Text = "Report creation Failed: " + exp.Message;

				if ((exp.InnerException != null)) {
					lblMessage.Text += "<br>" + exp.InnerException.Message;
				}

				//SSW.Timepro.exception.ExceptionManager.Publish(exp)
				//    Microsoft.ApplicationBlocks.ExceptionManagement.ExceptionManager.Publish(exp)
			}

		}

		//==============================================================================
		// Private Routines
		//==============================================================================
		private string GetReport(string strDatabaseName, string strReportName, SSW.AccessReporter.ReportClient.ReportClient.EnumReportFormat enmReportFormat, string strReportFilter)
		{
			//==============================================================================
			// Generates a report, and returns the File Name. The file will be placed in the
			// reports directory as specified in the server options.
			//==============================================================================

			string strReturn = string.Empty;
			ReportClient objReportClient = new ReportClient(sswDestinationComputer);
			strReturn = objReportClient.GetReport(strDatabaseName, strReportName, strReportFilter, string.Empty, enmReportFormat);

			return strReturn;
		}
		private string GetFileName(string strPath)
		{
			//==============================================================================
			// Gets the name of a file when handed a fully qualified path. eg:
			// c:\inetpub\wwwroot\reports\Report1.snp => Report1.snp
			//==============================================================================
			return Strings.Mid(strPath, Strings.InStrRev(strPath, "\\") + 1, Strings.Len(strPath) - Strings.InStr(strPath, "\\"));
		}

		protected System.Web.UI.HtmlControls.HtmlForm Form1;
		public SSWAccessReporter()
		{
			Load += Page_Load;
			Init += Page_Init;
			Error += Page_Error;
		}
	}
}
