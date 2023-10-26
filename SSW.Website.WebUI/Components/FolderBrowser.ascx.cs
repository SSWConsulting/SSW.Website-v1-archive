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
using System.Net;
using SSW.Website.Common;
using System.IO;

namespace SSW.Website.WebUI.Components
{
	partial class FolderBrowser : System.Web.UI.UserControl
	{

		DirectoryContents ds = new DirectoryContents();

		protected void Page_Load(object sender, System.EventArgs e)
		{

			if ((!IsPostBack) && (Request.QueryString["Path"] != string.Empty)) {
				string requestVirtualPath = Server.UrlDecode(Page.Request.QueryString["Path"]);

				//Dim url As String = Page.Request.ServerVariables("URL")
				//lblPath.Text = url.Substring(0, url.LastIndexOf("/"))
				//Dim intLastIndex As Integer = lblPath.Text.LastIndexOf("/")
				//lblFolderName.Text = lblPath.Text.Substring(lblPath.Text.LastIndexOf("/") + 1, lblPath.Text.Length - intLastIndex - 1)

				string FullPath = null;
				string LastDir = string.Empty;
				string LinkString = null;
				string FinalString = string.Empty;

				string url = Page.Request.ServerVariables["URL"];
				FullPath = url.Substring(0, url.LastIndexOf("/"));
				int intLastIndex = 0;

				while (!(FullPath.Length < 1)) {
					intLastIndex = FullPath.LastIndexOf("/");
					if (LastDir == string.Empty) {
						LinkString = FullPath.Substring(FullPath.LastIndexOf("/") + 1, FullPath.Length - intLastIndex - 1);
					} else {
						LinkString = "<a href='" + FullPath + "/browse.aspx'>" + FullPath.Substring(FullPath.LastIndexOf("/") + 1, FullPath.Length - intLastIndex - 1) + "</a>";
					}

					LastDir = FullPath.Substring(FullPath.LastIndexOf("/") + 1, FullPath.Length - intLastIndex - 1);
					FullPath = FullPath.Replace("/" + LastDir, string.Empty);
					if (LastDir.ToLower() == "ssw")
						break; // TODO: might not be correct. Was : Exit Do
					FinalString = "&nbsp;&gt;&nbsp;" + LinkString + FinalString;

				}
				breadcrumbPath.Text = FinalString;

				//// Change "/browse.aspx" to "/browse.xml"
				//// But want to make it generic so that it only uses the last "/"
				//Comment by Lei: problem code to parse the path incorrectly 
				//Dim slashIndex As Integer = requestVirtualPath.LastIndexOf("/")
				//Dim pageName As String = requestVirtualPath.Substring(slashIndex + 1)

				//Comment by Lei: fixed code to always get the correct path
				//
				string rawUrl = requestVirtualPath;
				int slashIndex = 0;
				string pageName = null;
				if (requestVirtualPath.IndexOf("?") > 0) {
					rawUrl = requestVirtualPath.Substring(0, requestVirtualPath.IndexOf("?"));
					slashIndex = rawUrl.LastIndexOf("/");
					pageName = rawUrl.Substring(slashIndex + 1);
				} else {
					slashIndex = requestVirtualPath.LastIndexOf("/");
					pageName = requestVirtualPath.Substring(slashIndex + 1);
				}


				//// TODO: Configure file name within web.config
				//// TODO: Use a special extension (pref not .xml) for the virtual xml file
				string xmlVirtualPath = requestVirtualPath.Replace(pageName, "BrowseXML.aspx");
				HttpWebResponse response = null;
				Stream s = null;

				try {
					//FormsAuthentication.RedirectFromLoginPage(SSWMT.CustomersDB.SSWInternalName, True)
					//System.Web.Security.FormsAuthentication.SetAuthCookie(SSWMT.CustomersDB.SSWInternalName, True)
					HttpWebRequest request = (HttpWebRequest)HttpWebRequest.Create(xmlVirtualPath);
					request.UserAgent = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; .NET CLR 1.0.3705)";
					request.AllowAutoRedirect = true;
					request.MaximumAutomaticRedirections = 4;

					//added by TerrySu
					Cookie cookie = new Cookie();
					HttpCookie httpcookie = Page.Request.Cookies["SSWStoreAuth"];

					if (((httpcookie != null))) {
						CookieContainer cc = new CookieContainer();

						string tempurl = Page.Request.Url.ToString();
						tempurl = tempurl.Substring(tempurl.IndexOf("//") + 2);
						int tempindex = tempurl.IndexOf("/");
						tempurl = tempurl.Substring(0, tempindex);

						cookie.Name = "SSWStoreAuth";
						cookie.Value = httpcookie.Value;
						cookie.Domain = tempurl;

						cc.Add(cookie);
						request.CookieContainer = cc;
					}

					CredentialCache myCredCache = new CredentialCache();
					myCredCache.Add(new Uri(xmlVirtualPath), "NTLM", (NetworkCredential)CredentialCache.DefaultCredentials);
					request.Credentials = myCredCache;
					//added end TerrySu
					//request.Credentials = CredentialCache.DefaultCredentials


					response = (HttpWebResponse)request.GetResponse();
					//// Note that the response stream is straight XML.
					//// We could if we want use an XSL file to transform the XML into some literal content control.

					SetDataSource();
					s = response.GetResponseStream();

					ds.ReadXml(s);
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					//Try
					//    'Dim ckAccrossBrowserSession As New System.Net.Cookie("AccrossBrowserSession", "False")
					//    ''ckAccrossBrowserSession.Value = "False"   ' TODO: chkRememberLogin.Checked
					//    'ckAccrossBrowserSession.Expires = DateTime.Now.AddDays(1)
					//    'response.Cookies.Add(ckAccrossBrowserSession)
					//    FormsAuthentication.RedirectFromLoginPage(SSWMT.CustomersDB.SSWInternalName, True)
					//    response = CType(Request.GetResponse, HttpWebResponse)
					//    SetDataSource()
					//    s = response.GetResponseStream()
					//    ds.ReadXml(s)
					//Catch exp As Exception
					xmlRequestFailedValidator.IsValid = false;
					xmlRequestFailedValidator.ErrorMessage = ex.ToString();
					xmlRequestFailedValidator.ErrorMessage += xmlVirtualPath;
					xmlRequestFailedValidator.ErrorMessage += url;
					gvFileList.Visible = false;
					//End Try



				} finally {
					if (((response != null))) {
						response.Close();
					}
				}

				//EL 16/09/2007
				if (ds.Tables.Count != 0) {
					gvFileList.DataSource = ds;
					gvFileList.DataBind();
				}

			}
		}

		private void SetDataSource()
		{
			this.ds.DataSetName = "DirectoryContents";
		}

		protected string FormatThumbnail(string fileName, bool isdirectory, string fileExtension)
		{

			string ImageSourceLink = string.Empty;
			// pass the relative path;
			fileName = this.GetRelativePath(fileName);
			string FileFullName = Server.UrlEncode(fileName);
			if (isdirectory) {
				ImageSourceLink = "~/Images/Folder.gif";
				//String.Format("ShowItem.aspx?FileFullname={0}", WebUtility.FolderImagePath)
			} else {
				//James Zhou 20/02/2008 disable this to avoid the unmananged code calling
				//ImageSourceLink = String.Format("~/Components/ShowFileIcon.aspx?FileFullname={0}&Size=Small", FileFullName)

			}
			return ImageSourceLink;
		}

		protected string GetRelativePath(string FileFullName)
		{
			FileFullName = FileFullName.Replace("\\", "/");
			string flagFolderString = "/ssw/";
			string relativePath = FileFullName;
			int pos = FileFullName.ToLower().IndexOf(flagFolderString);

			// Replace icon path to the physical path on US Server for the request comes from Seal;
			// As we are directing Seal to US Server during moving servers...
			if (pos > 0) {
				relativePath = FileFullName.Substring(pos);
			}
			return relativePath;
		}
		public FolderBrowser()
		{
			Load += Page_Load;
		}

	}
}
