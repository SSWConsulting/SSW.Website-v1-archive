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
//SSW Code Auditor - Ignore this file (VB.NET)
// ===============================================================================
// Online vote control for SSW SQL Auditor 
//
// Author: Ben Peng
//
// Date: 02/03/2007 
//
// Briefs:If user hasn't logged in, save his choices to session, and redirect he 
// to the login page. After logging in, fetch the choice in session, vote, get    
// result and format the control in Page_Load event.
// If user has logged in, process the vote immediately, and return formated results.
// 
// ===============================================================================
// Copyright © SSW 1990-2007.  
// All rights reserved.
// ==============================================================================


namespace SSW.Website.WebUI.Components
{

	public partial class SQLAuditorVoteBox : System.Web.UI.UserControl, ICallbackEventHandler
	{

		private string mWebsiteRuleID;
		private string mSessionItemName;
		private string mVarSelectedItem;
		private string controlID;
		private bool isRuleSuccessfullyInserted = true;
		private string urlFragment = string.Empty;
		private const string mWebServicesFailedText = "Sorry, The server is busy now. Please try again later.";
		private const string jsSourcePath = "/ssw/Include/SQLAuditorVoteBox.js";
		private const string logingPath = "/ssw/Shop/Login.aspx?ReturnUrl=";
		private const string agree_Selection = "0";
		private const string disagree_Selection = "1";
		private const string hardToImplement_Selection = "2";
		private const string ignored_Selection = "3";
		private const string dontunderstand_Selection = "9";
		private SSWSQLAuditorRuleUsageLogging.RuleAgreementDataSet ds;
		private SSWSQLAuditorRuleUsageLogging.RuleUsageLoggingService ruleUsageProxy = new SSWSQLAuditorRuleUsageLogging.RuleUsageLoggingService();
		//Private m_ev As New System.Diagnostics.EventLog("Application", System.Environment.MachineName, "SQLAuditor")

		public string WebsiteRuleID {
			get { return mWebsiteRuleID; }
			set { mWebsiteRuleID = value; }
		}

		private bool IsLoggedIn {
			get { return ((HttpContext.Current.User.Identity.Name != null)) && HttpContext.Current.User.Identity.Name != string.Empty && HttpContext.Current.User.Identity.IsAuthenticated; }
		}

		protected void Page_Load(object sender, System.EventArgs e)
		{
			try {
				controlID = ClientID + "_";
				mVarSelectedItem = ClientID + "SelectedItem";
				if (Page.IsCallback) {
					return;
				}
				ruleUsageProxy.Timeout = 10000;
				mSessionItemName = "SQLAuditorRule" + WebsiteRuleID;
				InitializeComponent();
				string callbackHandler = Page.ClientScript.GetCallbackEventReference(this, mVarSelectedItem, "HandlePostback", string.Empty);
				
				callbackHandler = "<script type=\"text/javascript\">" + "var " + mVarSelectedItem + ";" + " function " + ClientID + "CallServer() {  " + "if (" + mVarSelectedItem + "!=undefined){" + "PreLoad(\"" + controlID + "\");" + callbackHandler + ";}} </script>";
				Page.ClientScript.RegisterClientScriptInclude("Utility", jsSourcePath);
				Page.ClientScript.RegisterClientScriptBlock(this.GetType(), ClientID + "CallServer", callbackHandler);

				if (IsLoggedIn & ((Session[mSessionItemName] != null))) {
					//m_ev.WriteEntry("Get from session:" + SessionItemName)
					CallRemoteVote(Convert.ToString(Session[mSessionItemName]));
					Session.Remove(mSessionItemName);
					DivContent.InnerHtml = RetrieveSingleRuleUsageDataFromDS(WebsiteRuleID);
					DivContent.Style.Value = "Width:760px";
					tblContent.Visible = false;
				} else {
					tblContent.Visible = true;
				}
			} catch (Exception ex) {
				Response.Redirect("/ssw/sqlauditor/voteresult.aspx");
			}
		}


		//To be refactor: If we can get the Checked attributes in real time, then this onclick Eventhandler is not necessary
		private void InitializeComponent()
		{
			//Append the anchor of current page
			ctrlAgree.Attributes.Add("onClick", mVarSelectedItem + "=" + agree_Selection + "+" + "window.location.hash");
			ctrlDisagree.Attributes.Add("onClick", mVarSelectedItem + "=" + disagree_Selection + "+" + "window.location.hash");
			ctrlHardToImplement.Attributes.Add("onClick", mVarSelectedItem + "=" + hardToImplement_Selection + "+" + "window.location.hash");
			ctrlIgnored.Attributes.Add("onClick", mVarSelectedItem + "=" + ignored_Selection + "+" + "window.location.hash");
			ctrlDontUnderstand.Attributes.Add("onClick", mVarSelectedItem + "=" + dontunderstand_Selection + "+" + "window.location.hash");
			btnSubmit.Attributes.Add("onClick", ClientID + "CallServer()");
		}


		//Q:Is GetCallbackResult called during executing RaiseCallbackEvent?
		public void RaiseCallbackEvent(string eventArgument)
		{
			//m_ev.WriteEntry(WebsiteRuleID + ":RaiseCallbackEvent")
			string choice = eventArgument.Split('#')[0];
			if ((eventArgument.Split('#').Length > 1)) {
				urlFragment = eventArgument.Split('#')[1];
			}
			if (IsLoggedIn) {
				CallRemoteVote(choice);
			} else {
				mSessionItemName = "SQLAuditorRule" + WebsiteRuleID;
				//m_ev.WriteEntry("Save to session:" + SessionItemName)
				if (((Session[mSessionItemName] != null))) {
					Session.Add(mSessionItemName, choice);
				} else {
					Session[mSessionItemName] = choice;
				}
			}
		}

		private void CallRemoteVote(string choice)
		{
			int sswContactID = int.Parse(HttpContext.Current.User.Identity.Name);
			//m_ev.WriteEntry("Begin Insert Rule Usage data:" + WebsiteRuleID + ";" + choice + ";" + sswContactID.ToString(), EventLogEntryType.SuccessAudit)
			try {
				ruleUsageProxy.InsertSingleRuleUsageRecordFromWebsite(WebsiteRuleID, choice, sswContactID);
				//m_ev.WriteEntry("End Insert Rule Usage data:")
				isRuleSuccessfullyInserted = true;
			} catch (System.Net.WebException ex) {
				isRuleSuccessfullyInserted = false;
			}
			//m_ev.WriteEntry("End Insert Rule Usage data")
		}


		public string GetCallbackResult()
		{
			//m_ev.WriteEntry(WebsiteRuleID + "GetCallbackResult ")
			if (IsLoggedIn) {
				return RetrieveSingleRuleUsageDataFromDS(WebsiteRuleID) + "|" + controlID;
			} else {
				string returnURL = logingPath + Server.UrlEncode(Request.Url.AbsolutePath + Convert.ToString(((urlFragment == string.Empty) ? string.Empty : "#" + urlFragment)));
				//m_ev.WriteEntry("url:" + String.Empty + "|" + returnURL)
				return string.Empty + "|" + returnURL;
				//turn to login page
			}
		}

		private string RetrieveSingleRuleUsageDataFromDS(string p_WebsiteRuleID)
		{
			try {
				//Load the control for vote result;
				WebUI.Components.SQLAuditorWhoVotedBox ctl = (WebUI.Components.SQLAuditorWhoVotedBox)this.LoadControl("../Components/SQLAuditorVoteResult.ascx");
				System.Text.StringBuilder sb = new StringBuilder();
				System.IO.TextWriter IOW = new System.IO.StringWriter(sb);
				System.Web.UI.HtmlTextWriter writer = new System.Web.UI.HtmlTextWriter(IOW);
				ctl.SetWhoVotedTableVisible(false);
				ctl.SetWebsiteRuleID(int.Parse(p_WebsiteRuleID));
				ctl.RenderControl(writer);

				return sb.ToString();
			} catch (Exception ex) {
				return mWebServicesFailedText;
				//Return "Error: " + ex.Message
			}

			//
			// Commented by FW, 23/03/2007;
			// Don't need to compose HTML string here, use a control and LoadControl() instead.
			//

			//'m_ev.WriteEntry("Begin retrieve RuleAgreementDS" + isRuleSuccessfullyInserted.ToString())
			//If isRuleSuccessfullyInserted Then
			//    Try
			//        ds = ruleUsageProxy.GetRuleAgreementStatDataSet()
			//    Catch ex As System.Net.WebException
			//        Return m_WebServicesFaildText
			//    End Try
			//    Dim rows As SSWSQLAuditorRuleUsageLogging.RuleAgreementDataSet.viewRuleAgreementStatRow() = CType(ds.viewRuleAgreementStat.Select(("WebsiteRuleID=" + p_WebsiteRuleID)), SSWSQLAuditorRuleUsageLogging.RuleAgreementDataSet.viewRuleAgreementStatRow())
			//    'm_ev.WriteEntry("End retrieve RuleAgreementDS")
			//    'there may be multi rules in SQL Auditor map with a sigle website rule, thus result may have multi records - by BP  25/02/2007
			//    Return GetFormatedStringFromDataRows(rows)
			//Else
			//    Return m_WebServicesFaildText
			//End If
		}


		private string GetFormatedStringFromDataRows(SSWSQLAuditorRuleUsageLogging.RuleAgreementDataSet.viewRuleAgreementStatRow[] rows)
		{
			int[] statData = new int[] {
				0,
				0,
				0,
				0,
				0,
				0
			};
			//m_ev.WriteEntry("Begin retrieve rows:" + rows.Length.ToString())
			for (int i = 0; i <= rows.Length - 1; i++) {
				statData[0] += rows[i].AgreeCount;
				statData[1] += rows[i].DisagreeCount;
				statData[2] += rows[i].HardToImplementCount;
				statData[3] += rows[i].IgnoredCount;
				statData[4] += rows[i].DontUnderstandCount;
				statData[5] += rows[i].TotalCount;
			}
			//m_ev.WriteEntry("Finished retrieve rows,Begin format results")
			return FormatResults(statData);
		}


		private string FormatResults(int[] statData)
		{
			string ruleUsageData = My.Resources.SSWWebResource.SQLAuditorVoteBox_FormatedResult;
			string[] results = new string[statData.Length];
			for (int i = 0; i <= statData.Length - 2; i++) {
				results[i] = statData[i].ToString() + " (" + FormatPercentage(statData[i], statData[statData.Length - 1]) + ")  ";
			}
			results[statData.Length - 1] = "<b>" + statData[statData.Length - 1].ToString() + " (100%)  " + "</b>";
			ruleUsageData = string.Format(ruleUsageData, results);
			//m_ev.WriteEntry(WebsiteRuleID + results(0))
			return ruleUsageData;
		}

		private string FormatPercentage(int part, int total)
		{
			return (Math.Round(Convert.ToDouble(part) / total, 3) * 100).ToString() + "%";
		}
		public SQLAuditorVoteBox()
		{
			Load += Page_Load;
		}
	}
}
