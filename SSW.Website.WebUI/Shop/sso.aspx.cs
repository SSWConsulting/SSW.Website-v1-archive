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
using SSW.Framework.WebCRMProvider;
using SSW.SSWMT;


public partial class sso : System.Web.UI.Page
{

	protected void Page_Load(object sender, System.EventArgs e)
	{
		//Check if it is from the sharepoint site's login page's login action
		Uri referUrl = HttpContext.Current.Request.UrlReferrer;

		if ((referUrl != null)) {
			string strReferUrl = referUrl.OriginalString;
			//Remove queryUrl
			if (strReferUrl.IndexOf("?") > 0) {
				strReferUrl = strReferUrl.Substring(0, strReferUrl.IndexOf("?"));
			}

			//Compare to the sharepointsite's login page
			if (string.Compare(strReferUrl, GlobalFunctions.GetWebConfigString("RemoteLoginUrl"), true) == 0) {
				//TODO not sure why can't get the refer's cookie across the domain
				//'Check the refer's cookie
				//Dim spCookie As HttpCookie = HttpContext.Current.Request.Cookies("SSWSPStoreAuth")
				//If Not spCookie Is Nothing Then
				//Check the parameter UserName
				string userName = Request.Params["UserName"];
				WriteInfo("userName is:" + userName);
				if (userName.Length > 0) {
					//Descrypt
					string descryptKey = ConfigurationManager.AppSettings["SSWKey"];
					WriteInfo("descryptKey is:" + descryptKey);

					if (descryptKey.Length != 0) {
						WriteInfo("descryptKing" + descryptKey);
						userName = SecurityHelper.Decrypt(descryptKey, userName);
					}
					WriteInfo("UserName is:" + userName);
					//Check UserName
					if (userName.Length > 0) {
						//Check User in provider
						if (Membership.FindUsersByName(userName).Count > 0) {
							//Set cookies
							FormsAuthentication.SetAuthCookie(userName, true);
						} else {
							WriteInfo("Can't find user: " + userName);
						}
					} else {
						WriteInfo("UserName is Empty");
					}
				} else {
					WriteInfo("UserName is Empty");
				}
				//Else
				//    Page.Response.Write("Refer Cookie IS NULL")
				//    If HttpContext.Current.Request.Cookies Is Nothing Then
				//        Page.Response.Write("Refer Cookies: " + HttpContext.Current.Request.Cookies.Count)
				//        For Each c As HttpCookie In HttpContext.Current.Request.Cookies
				//            Page.Response.Write("Name:" + c.Name + "  Value:" + c.Value)
				//        Next
				//    End If
				//End If
			} else {
				WriteInfo("Referer not consistent with web.config: " + strReferUrl);
			}

			//Redirect to the referUrl
			Page.Response.Redirect(strReferUrl);

		} else {
			WriteInfo("Request's Referer is NULL");
		}

	}

	private void WriteInfo(string msg)
	{
		//For debug use
		//Page.Response.Write(msg)
	}
	public sso()
	{
		Load += Page_Load;
	}

}
