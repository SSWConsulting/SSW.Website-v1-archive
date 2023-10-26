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

	public partial class SQLAuditorWhoVotedBox : System.Web.UI.UserControl
	{

		private string pRuleIDFromSQLAuditor = "SARuleID";
		private string pRuleIDFromWebsite = "WebsiteRuleID";
		protected bool mFromSQLAuditor = false;
		protected DataSet whoVotedDataSet = null;
		protected string[] mLabels = new string[] {
			"Agree",
			"Disagree",
			"Too hard to implement",
			"Don't care",
			"Don't know"
		};
		protected bool mShowWhoVotedTable = true;
		protected int mWebsiteRuleID = 0;

		protected int mSQLAuditorRuleID = 0;
		protected void Page_Load(object sender, System.EventArgs e)
		{

			if (!this.Page.IsPostBack) {
				string ruleID = string.Empty;
				if (!string.IsNullOrEmpty(this.Request.QueryString[pRuleIDFromSQLAuditor])) {
					ruleID = this.Request.QueryString[pRuleIDFromSQLAuditor];
					mFromSQLAuditor = true;
				} else if (!string.IsNullOrEmpty(this.Request.QueryString[pRuleIDFromWebsite])) {
					ruleID = this.Request.QueryString[pRuleIDFromWebsite];
				}

				int ruleIntID = 0;
				try {
					ruleIntID = int.Parse(ruleID);
				} catch {
					ruleIntID = 0;
				}


				//Me.Page.Response.Write(String.Format("RuleID={0}, FromSQLAuditor={1}", ruleIntID.ToString(), fromSQLAuditor))

				if (ruleIntID > 0) {
					this.SetRuleID(ruleIntID, mFromSQLAuditor);
				}

			}

		}

		public void SetWhoVotedTableVisible(bool visible)
		{
			this.mShowWhoVotedTable = visible;
		}

		public void SetSQLAuditorRuleID(int ruleIntID)
		{
			this.mSQLAuditorRuleID = ruleIntID;
			this.SetRuleID(ruleIntID, true);
		}

		public void SetWebsiteRuleID(int ruleIntID)
		{
			mWebsiteRuleID = ruleIntID;
			this.SetRuleID(ruleIntID, false);
		}

		private void SetRuleID(int ruleIntID, bool mFromSQLAuditor)
		{
			SSWSQLAuditorRuleUsageLogging.RuleUsageLoggingService service = new SSWSQLAuditorRuleUsageLogging.RuleUsageLoggingService();
			if (mFromSQLAuditor) {
				whoVotedDataSet = service.GetWhoVotedTableForSQLAuditor(ruleIntID);
			} else {
				whoVotedDataSet = service.GetWhoVotedTableForWebsite(ruleIntID);
			}

			if (mShowWhoVotedTable) {
				if ((whoVotedDataSet != null)) {
					this.WhoVotedRepeater.DataSource = whoVotedDataSet.Tables[1];
					this.WhoVotedRepeater.DataBind();
				} else {
					this.WhoVotedRepeater.Visible = false;
				}
			}
		}

		protected string RuleTitle {
			get {
				if (this.whoVotedDataSet == null) {
					return string.Empty;
				} else {
					//EL 17/08/2007
					if (whoVotedDataSet.Tables[0].Columns.Contains("Title")) {
						return whoVotedDataSet.Tables[0].Rows[0]["Title"].ToString();
					} else {
						return string.Empty;
					}
				}
			}
		}

		protected string RuleURL {
			get {
				if (this.whoVotedDataSet == null) {
					return string.Empty;
				} else {
					string url = whoVotedDataSet.Tables[0].Rows[0]["ReasonURL"].ToString().Trim();
					if (url.ToLower().StartsWith("http://www.ssw.com.au")) {
						return url.Substring("http://www.ssw.com.au".Length);
					} else {
						return url;
					}
				}
			}
		}

		protected int GetBarLength(int ruleOpinionID, int totalLength = 200)
		{
			return Convert.ToInt32(GetVotesPercent(ruleOpinionID) * totalLength);
		}

		protected int GetVotesNumber(int ruleOpinionID)
		{
			if (RowCount == 0) {
				return 0;
			} else {
				return this.whoVotedDataSet.Tables[1].Select("RuleOpinionID=" + ruleOpinionID.ToString()).Length;
			}
		}

		protected double GetVotesPercent(int ruleOpinionID)
		{
			if (RowCount == 0) {
				return 0;
			} else {
				return (GetVotesNumber(ruleOpinionID) / RowCount);
			}
		}

		protected string GetVotesPercentString(int ruleOpinionID)
		{
			return GetVotesPercent(ruleOpinionID).ToString("P0");
		}

		protected int RowCount {
			get {
				if (this.whoVotedDataSet == null || this.whoVotedDataSet.Tables.Count < 2) {
					return 0;
				} else {
					return this.whoVotedDataSet.Tables[1].Rows.Count;
				}
			}
		}

		protected string GetCaption(int ruleOpinionID)
		{
			if (ruleOpinionID >= 0 && ruleOpinionID <= 3) {
				return mLabels[ruleOpinionID];
			} else {
				return mLabels[4];
			}
		}

		protected int ImplementedCount {
			get {
				if (ImplementationRowCount == 0) {
					return 0;
				} else {
					return Convert.ToInt32(this.whoVotedDataSet.Tables[2].Rows[0]["Implemented"]);
				}
			}
		}

		protected int NotImplementedCount {
			get {
				if (ImplementationRowCount == 0) {
					return 0;
				} else {
					return Convert.ToInt32(this.whoVotedDataSet.Tables[2].Rows[0]["NotImplemented"]);
				}
			}
		}

		protected int ImplementationRowCount {
			get {
				if (this.whoVotedDataSet == null || this.whoVotedDataSet.Tables.Count < 3 || this.whoVotedDataSet.Tables[2].Rows.Count < 1) {
					return 0;
				} else {
					return Convert.ToInt32(this.whoVotedDataSet.Tables[2].Rows[0]["Implemented"]) + Convert.ToInt32(this.whoVotedDataSet.Tables[2].Rows[0]["NotImplemented"]);
				}
			}
		}
	}

}
