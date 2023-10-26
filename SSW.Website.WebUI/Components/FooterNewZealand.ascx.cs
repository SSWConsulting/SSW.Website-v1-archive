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
namespace SSW.Website.WebUI.Components
{

	partial class FooterNewZealand : System.Web.UI.UserControl
	{

		protected global::System.Web.UI.WebControls.HyperLink feedbackHyperLink;
		protected global::System.Web.UI.WebControls.Literal lthContDeployment;

		protected void Page_Load(object sender, System.EventArgs e)
		{
			if (!IsPostBack) {
				string feedbackFormat = "mailto:{0}?subject=Feedback to SSW&body={1}";
				string strQueryString = string.Empty;
				strQueryString = Request.ServerVariables["QUERY_STRING"];
				if (strQueryString != string.Empty) {
					strQueryString = "?" + strQueryString;
				}
				string feedbackEmail = ConfigurationManager.AppSettings["From"];

				string feedbackUrl = string.Format(feedbackFormat, feedbackEmail, "http://" + Request.ServerVariables["Server_Name"] + Request.Url.AbsolutePath + strQueryString);
				feedbackHyperLink.NavigateUrl = feedbackUrl;
			}
		}
		public FooterNewZealand()
		{
			Load += Page_Load;
		}
	}

}
