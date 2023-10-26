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

	partial class Footer_New : System.Web.UI.UserControl
	{

		protected void Page_Load(object sender, System.EventArgs e)
		{
			if (!IsPostBack) {
				string feedbackFormat = "{0}?subject=Feedback to SSW&body={1}";
				string strQueryString = Request.ServerVariables["QUERY_STRING"];
				if (strQueryString != string.Empty) {
					strQueryString = "?" + strQueryString;
				}
				string feedbackEmail = ConfigurationManager.AppSettings["From"];
				string feedbackUrl = string.Format(feedbackFormat, feedbackEmail, "http://" + Request.ServerVariables["Server_Name"] + Request.Url.AbsolutePath + strQueryString);

				//encode feedbackUrl
				feedbackUrl = BitConverter.ToString(ASCIIEncoding.ASCII.GetBytes(feedbackUrl)).Replace("-", string.Empty);
				feedbackHyperLink.NavigateUrl = "javascript:sendEmail('" + feedbackUrl + "')";


				// Continuous Deployment details
				lthContDeployment.Text = "The latest deployment to " + Environment.MachineName;
				try {
					using (System.IO.StreamReader sr = new System.IO.StreamReader(Server.MapPath("~\\Version.txt"), true)) {
						string LastSyncChangesetId = sr.ReadLine();
						string LastSyncDateTime = sr.ReadLine();
						LastSyncChangesetId = LastSyncChangesetId.Substring(LastSyncChangesetId.IndexOf(":") + 1).Trim();
						LastSyncDateTime = LastSyncDateTime.Substring(LastSyncDateTime.IndexOf(":") + 1).Trim();

						lthContDeployment.Text += " occurred at " + LastSyncDateTime + " with changeset id <a href='/ssw/Version.aspx'>" + LastSyncChangesetId + "</a>";
						sr.Close();
					}

				} catch (Exception ex) {
                    lthContDeployment.Text += " is listed <a href='/ssw/Version.aspx'>here</a>";
				}

			}
		}

		public string GetYear()
		{
			return DateTime.Now.Year.ToString();
		}

		public Footer_New()
		{
			Load += Page_Load;
		}
	}

}
