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
//                   This page will make shore that the browser loads with the correct
//                   content type of a pdf file. There was problems with some browers that
//                   didnt pick up it was not another webpage unless you refreshed the page.
//---------------------------------------------- 

namespace SSW.Website.WebUI.AccessReporter
{

	public partial class PDFViewer : System.Web.UI.Page
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
			string filepath = null;
			System.IO.FileStream objfs = null;

			filepath = Request.MapPath(".") + "\\Reports\\" + Request.QueryString["File"];
			//filepath = ConfigurationManager.AppSettings("AccessReporterGeneratedFilePath") & Request.QueryString("File")

			if (!System.IO.File.Exists(filepath)) {
				Response.Write("File " + filepath + " does not exist. ");
				return;
			}

			try {
				objfs = new System.IO.FileStream(filepath, System.IO.FileMode.Open, System.IO.FileAccess.Read);
				byte[] bfarry = new byte[Convert.ToInt32(objfs.Length) + 1];

				objfs.Read(bfarry, 0, Convert.ToInt32(objfs.Length));

				Response.ContentType = "application/pdf";
				Response.AppendHeader("content-disposition", "inline; filename=" + Request.QueryString["File"]);
				Response.BinaryWrite(bfarry);
				Response.End();
			} finally {
				objfs.Close();
			}
		}
		public PDFViewer()
		{
			Load += Page_Load;
			Init += Page_Init;
		}

	}

}
