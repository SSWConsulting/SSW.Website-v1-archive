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
using System.IO;

namespace SSW.Website.WebUI
{

	public class SSWSiteMapProvider : XmlSiteMapProvider
	{

		public override System.Web.SiteMapNode FindSiteMapNode(string rawUrl)
		{
			//Return MyBase.FindSiteMapNode(rawUrl)
			return GetDirectoryNode(rawUrl);
		}

		private SiteMapNode GetDirectoryNode(string rawUrl)
		{
			SiteMapNode node = null;

			//remove para
			if (rawUrl.IndexOf("?") > 0) {
				rawUrl = rawUrl.Substring(0, rawUrl.IndexOf("?"));
			}

			//if it is just a directory, append it with default page
			if (rawUrl.ToLower().EndsWith(".aspx")) {
				node = base.FindSiteMapNode(rawUrl);
			} else {
				node = base.FindSiteMapNode(rawUrl + "Default.aspx");
			}

			//if it doesn't defined in the sitemap file, generate it dynamically
			if (node == null) {
				node = new SiteMapNode(this, rawUrl);

				string nodeDesc = string.Empty;
				//if it end with aspx, get the page's title as the nodeDesc
				if ((rawUrl.ToLower().EndsWith(".aspx")) & string.Compare(rawUrl, HttpContext.Current.Request.Path, true) == 0) {
					if ((HttpContext.Current.CurrentHandler != null)) {
						nodeDesc = ((Page)HttpContext.Current.CurrentHandler).Title;
						//if it contains -, make it shorter
						//If nodeDesc.Contains("-") Then
						//    nodeDesc = nodeDesc.Substring(0, nodeDesc.IndexOf("-"))
						//End If
					}
				} else {
					//if not, get the directory name as the nodeDesc
					string fullPath = rawUrl.Substring(0, rawUrl.LastIndexOf("/"));
					if (fullPath.Length > 0) {
						nodeDesc = fullPath.Substring(fullPath.LastIndexOf("/") + 1);
					}
				}

				node.Description = nodeDesc;
				node.Title = nodeDesc;
				node.Url = rawUrl;

				//if it is not the root, need to set its parent node
				if (!rawUrl.ToLower().EndsWith("default.aspx") & !rawUrl.ToLower().EndsWith("browse.aspx")) {
					//if it is the default page, just go a level up
					string parentUrl = rawUrl.Substring(0, rawUrl.LastIndexOf("/") + 1);

					//check if the default page for this directory exist, it not, use browse.aspx
					if (File.Exists(HttpContext.Current.Server.MapPath(parentUrl + "Default.aspx"))) {
						node.ParentNode = GetDirectoryNode(parentUrl + "Default.aspx");
					} else {
						node.ParentNode = GetDirectoryNode(parentUrl + "Browse.aspx");
					}
				} else {
					//if it is not the default page, check the default page
					string parentUrl = rawUrl.Substring(0, rawUrl.LastIndexOf("/"));

					if (parentUrl.LastIndexOf("/") > 0) {
						parentUrl = parentUrl.Substring(0, parentUrl.LastIndexOf("/") + 1);

						//check if the default page for this directory exist, it not, use browse.aspx
						if (File.Exists(HttpContext.Current.Server.MapPath(parentUrl + "Default.aspx"))) {
							node.ParentNode = GetDirectoryNode(parentUrl + "Default.aspx");
						} else {
							node.ParentNode = GetDirectoryNode(parentUrl + "Browse.aspx");
						}
					}
				}
			}

			return node;

		}

	}

}


