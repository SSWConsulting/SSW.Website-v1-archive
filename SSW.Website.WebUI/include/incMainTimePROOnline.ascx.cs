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
//1.0 DH 10/01/02 First released version
//1.1 AC 10/01/02 ' Tested 
//---------------------------------------------- 

using System.Data.SqlClient;

namespace SSW.Website.WebUI.include
{

	//Enum - 0 and 1 are the most common used ones of this enum
	//0=Everything but the footer
	//1=Footer and closing tables
	public enum incType
	{
		groupTop = 0,
		groupBottom = 1,
		singleLogo = 2,
		singleNavTop = 3,
		singleNavSide = 4,
		singleFooter = 5,
		singleNavHeadTop = 6
		//Added by PA 15/3/2002

	}

	public abstract class incMainTimePROOnline : System.Web.UI.UserControl
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

		protected System.Web.UI.WebControls.Panel pnlHead;
		protected System.Web.UI.WebControls.Panel pnlTopLogo;
		protected System.Web.UI.WebControls.Panel pnlNavTop;
		protected System.Web.UI.WebControls.Panel pnlTableMainOpen;
		protected System.Web.UI.WebControls.Panel pnlNavLeft;
		protected System.Web.UI.WebControls.Label lblFillFromMenu;
		protected System.Web.UI.WebControls.Label lblSideExtra;
		protected System.Web.UI.WebControls.Label lblSideVersion;
		protected System.Web.UI.WebControls.Panel pnlTableMid;
		protected System.Web.UI.WebControls.Panel pnlFooter;

		protected System.Web.UI.WebControls.Panel pnlTableMainClose;
		#endregion

		private incType mincType;
		private string mstrHeading = "Superior Software for Windows";
		private string mstrPageTitle = "Superior Software for Windows, Consultants for Database and Website Development";
		private bool mbolShowSiteVersion = false;
		private bool mbolPlayMusic = false;
		private string mstrSideHTML = string.Empty;
		private string mstrMetaKeywords = "Access,SQL Server,ASP,.net,visual basic,database,website,consultants,development,exchange server,sharepoint portal server,sharepoint team services";
		private string mstrMetaDescription = "Superior Software for Windows, Consultants for database and website development using Microsoft Access, VB.net, ASP.Net, SQL Server, Exchange Server and SharePoint Portal Server";
			// String.Empty
		private string mstrExtraHeaderHTML;
		protected System.Web.UI.WebControls.Literal lblWelcome;
		protected System.Web.UI.WebControls.PlaceHolder BasicSearches;
		protected System.Web.UI.WebControls.PlaceHolder MoreSearches;

		private bool m_HideLeftNav = false;
		public incType IncludeType {
			get { return mincType; }
			set { mincType = value; }
		}
		public string Heading {
			get { return mstrHeading; }
			set { mstrHeading = value; }
		}
		public string PageTitle {
			get { return mstrPageTitle; }
			set { mstrPageTitle = value; }
		}
		public bool ShowSiteVersion {
			get { return mbolShowSiteVersion; }
			set { mbolShowSiteVersion = value; }
		}
		public bool PlaySiteMusic {
			get { return mbolPlayMusic; }
			set { mbolPlayMusic = value; }
		}
		public string SetSideHTML {
			set {
				mstrSideHTML = value;
				lblSideExtra.Text = mstrSideHTML.ToString();
			}
		}
		public string MetaKeywords {
			get { return mstrMetaKeywords; }
			set { mstrMetaKeywords = value; }
		}
		public string MetaDescription {
			get { return mstrMetaDescription; }
			set { mstrMetaDescription = value; }
		}
		public string ExtraHeaderHTML {
			get { return mstrExtraHeaderHTML; }
			set { mstrExtraHeaderHTML = value; }
		}
		public bool HideLeftNav {
			get { return m_HideLeftNav; }
		}

		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			FillSideExtra();
			CheckLeftNav();
		}


		private void FillSidePanel()
		{
			//Step 2.
			//Generate Site Version and Users
			GenerateSideSiteVersion();

		}

		private void FillSideExtra()
		{
			string strPageName = Page.ToString();
			strPageName = strPageName.Substring(strPageName.LastIndexOf(".") + 1, (strPageName.Length - strPageName.LastIndexOf(".") - 1 - ("_aspx").Length));

			string strTextFilePath = Page.Request.MapPath(".") + "\\" + strPageName + ".txt";

			if (System.IO.File.Exists(strTextFilePath)) {
				System.IO.StreamReader objStreamReader = new System.IO.StreamReader(strTextFilePath);
				lblSideExtra.Text = objStreamReader.ReadToEnd();
				objStreamReader.Close();
			}
		}
		private void CheckLeftNav()
		{
			HttpCookie hideCookie = Request.Cookies["HideLeftNav"];
			string hideQuery = Request.QueryString["HideLeftNav"];

			Uri url = Request.Url;

			if ((hideCookie != null) && hideQuery == string.Empty) {
				if (url.Query.Length == 0) {
					Response.Redirect(url.ToString() + "?HideLeftNav=True");
				} else if (url.Query.EndsWith("&")) {
					Response.Redirect(url.ToString() + "HideLeftNav=True");
				} else {
					Response.Redirect(url.ToString() + "&HideLeftNav=True");
				}
			}

			if (hideQuery == "True") {
				Response.Cookies["HideLeftNav"].Value = "True";
				//Response.Cookies("HideLeftNav").Expires = Nothing
				m_HideLeftNav = true;
			} else if (hideQuery == "False") {
				Response.Cookies["HideLeftNav"].Expires = DateTime.Now.AddDays(-1);
				string path = Request.Url.PathAndQuery.Replace("HideLeftNav=False", string.Empty);
				if (path.EndsWith("?")) {
					path = path.Substring(0, path.Length - 1);
				}
				Response.Redirect(path);
				m_HideLeftNav = false;
			}
		}

		private void GenerateSideSiteVersion()
		{

			if (ShowSiteVersion) {
				//Dim strVersionNumber As String = SSWMT.GlobalFunctions.VersionNumber
				
				//lblSideVersion.Text = "<FONT FACE=""Verdana, Arial, Helvetica"" SIZE=""1"" color=""black""><br>Version: " & strVersionNumber & "&nbsp;Current Users: " & (Convert.ToInt32(Application("ActiveUsers")) + 20) & "</font>"

			}

		}
		public incMainTimePROOnline()
		{
			Load += Page_Load;
			Init += Page_Init;
		}

	}
}
