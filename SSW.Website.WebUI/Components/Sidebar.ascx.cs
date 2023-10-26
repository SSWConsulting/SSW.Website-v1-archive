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
using SSW.Website.Common;
using SSW.Framework.WebCRMProvider;

namespace SSW.Website.WebUI.Components
{

	partial class Sidebar : System.Web.UI.UserControl
	{
		private bool m_HideLeftNav = false;
		//Protected membershipViews As WebControls.MultiView
		//Protected WithEvents lbtnHideLeftNavBar As System.Web.UI.WebControls.LinkButton

		protected void Page_Load(object sender, System.EventArgs e)
		{
			if (!IsPostBack) {
				LoadWelcome();
				LoadUserStatistics();
				LoadMembershipStatistics();
				FillSideExtra();
			}

			if (!Page.ClientScript.IsClientScriptIncludeRegistered("sidebar")) {
				Page.ClientScript.RegisterClientScriptInclude("sidebar", ResolveClientUrl("~/Include/Sidebar.js"));
			}

			plcCaution.Visible = (Environment.MachineName == ConfigurationManager.AppSettings["MasterServer"]);

		}

		private void LoadWelcome()
		{
			// Load the name if there is one
			anonymousPanel.Visible = (Context.User != null) && !Context.User.Identity.IsAuthenticated;
			loggedOnPanel.Visible = !anonymousPanel.Visible;
			if (loggedOnPanel.Visible) {
				// TODO: Use first name only. Might need to consider storing this instead on an extended Principal object or Session... Investigate use of Membership provider.
				//usernameLabel.Text = String.Format("{0}'s ssw.com.au", Context.User.Identity.Name)
				CRMMembershipUser currentUser = (CRMMembershipUser)Membership.GetUser();
				if ((currentUser.FirstName != null)) {
					usernameLabel.Text = string.Format("{0}'s ssw.com.au", currentUser.FirstName);
				} else {
					usernameLabel.Text = string.Format("{0}'s ssw.com.au", Context.User.Identity.Name);
				}
			}

			// Load the greeting and time
			System.DateTime now = System.DateTime.Now;
			string timeGreeting = null;

			if (now.Hour > 17) {
				timeGreeting = "Good Evening";
			} else if (now.Hour >= 12) {
				timeGreeting = "Good Afternoon";
			} else {
				timeGreeting = "Good Morning";
			}

			greetingLabel.Text = timeGreeting;
			currentDateTimeLabel.Text = string.Format("{0} in Sydney", now.ToString("ddd dd MMM hh:mm tt"));
		}

		public void LoadUserStatistics()
		{
			// Start at 20 to make us not look like complete losers...
			//Dim activeUsersCount As Integer = 20
			int statisticsModule = Core.UserStatistics.ActiveSessionCount;

			//Dim authenticatedUsersCount As Integer = 0
			//TODO: authenticatedUsersCount to zero ; replace application variable in global.asax.vb with db data - lastActivated
			Hashtable ht = new Hashtable();
			string HashTableName = "LoggedInMembers";
			ht = (Hashtable)Application[HashTableName];
			int htKeyCount = 0;
			if ((ht != null)) {
				htKeyCount = ht.Keys.Count;
			} else {
				htKeyCount = 0;
			}

			if (statisticsModule < htKeyCount) {
				htKeyCount = statisticsModule;
			}
			int authenticatedUsersCount = htKeyCount;
			//Core.UserStatistics.AuthenticatedUsersCount


			//Dim statisticsModule As UserStatisticsModule = Core.UserStatistics




			//If Not statisticsModule Is Nothing Then
			//   activeUsersCount += statisticsModule.ActiveSessionCount
			//   authenticatedUsersCount += statisticsModule.AuthenticatedUsersCount
			//End If

			totalOnlineLabel.Text = statisticsModule.ToString();
			// activeUsersCount.ToString()
			membersOnlineLabel.Text = authenticatedUsersCount.ToString();
			visitorsOnlineLabel.Text = (statisticsModule - authenticatedUsersCount).ToString();
		}


		private void FillSideExtra()
		{
			string strTextFilePath = Page.Request.PhysicalPath;
			//GetParentPagePath()
			//LiteralSideExtra.Text = strTextFilePath
			strTextFilePath = strTextFilePath.Substring(0, strTextFilePath.Length - 5) + ".txt";
			if (System.IO.File.Exists(strTextFilePath)) {
				System.IO.StreamReader objStreamReader = new System.IO.StreamReader(strTextFilePath);
				LiteralSideExtra.Text = objStreamReader.ReadToEnd();
				objStreamReader.Close();
			}
		}

		//Private Function GetParentPagePath() As String
		//Dim strPageName As String = Page.ToString()
		//strPageName = strPageName.Substring(strPageName.LastIndexOf(".") + 1, (strPageName.Length - strPageName.LastIndexOf(".") - 1 - ("_aspx").Length))
		//Return Page.Request.MapPath(".") + "\" + strPageName + ".aspx"
		//End Function

		public void LoadMembershipStatistics()
		{
			// DH 2006/07/20 - commented out as error:
			// Name 'membershipViews' is not declated.
			// FW 2006/09/06 ¨C only invisible the error message on external server if there are exceptions while retrieving MembershipStatistics;

			string serverName = My.MyProject.Computer.Name.ToUpper();
			string internalServersString = ConfigurationManager.AppSettings["InternalMachineName"];
			try {
				MembershipStatistics membershipStatistics = Core.MembershipStatistics;
				totalMembersLabel.Text = membershipStatistics.TotalMembers.ToString();
				newMembersWeekLabel.Text = membershipStatistics.NewThisWeek.ToString();
				newMembersTodayLabel.Text = membershipStatistics.NewToday.ToString();
				membershipViews.SetActiveView(membershipView);
			} catch (HttpException ex) {
				//totalMembersLabel.Text = "Temporarily unavailable"
				if (internalServersString.IndexOf(serverName) >= 0) {
					errorViewLabel.Text = ex.Message;
					membershipViews.SetActiveView(membershipErrorView);
				} else {
					membershipViews.Visible = false;
				}
			}

		}

		protected void newsletterSignUpButton_Click(object sender, System.EventArgs e)
		{
			if (!Regex.IsMatch(newsletterEmailTextBox.Text, "^[\\w\\.-]+@[\\w-]+\\.[\\w\\.-]+$")) {
				//lblErrorMsg.Visible = True
			} else {
				//lblErrorMsg.Visible = False
				Response.Redirect("/ssw/Shop/ClientDetail.aspx?Email=" + newsletterEmailTextBox.Text + "&Tag=FNEWS");
			}
		}

		//Private Sub CheckLeftNav()
		//    Dim hideCookie As HttpCookie = Request.Cookies("HideLeftNav")
		//    Dim hideQuery As String = Request.QueryString("HideLeftNav")

		//    Dim url As Uri = Request.Url
		//    If Not hideCookie Is Nothing AndAlso hideQuery = "" Then
		//        If url.Query.Length = 0 Then
		//            Response.Redirect(url.ToString() & "?HideLeftNav=True")
		//        ElseIf url.Query.EndsWith("&") Then
		//            Response.Redirect(url.ToString() & "HideLeftNav=True")
		//        Else
		//            Response.Redirect(url.ToString() & "&HideLeftNav=True")
		//        End If
		//    End If

		//    If hideQuery = "True" Then
		//        Response.Cookies("HideLeftNav").Value = "True"
		//        Response.Cookies("HideLeftNav").Expires = Nothing
		//        m_HideLeftNav = True
		//    ElseIf hideQuery = "False" Then
		//        Response.Cookies("HideLeftNav").Expires = DateTime.Now.AddDays(-1)
		//        Dim path As String = Request.Url.PathAndQuery.Replace("HideLeftNav=False", "")
		//        If path.EndsWith("?") Then
		//            path = path.Substring(0, path.Length - 1)
		//        End If
		//        Response.Redirect(path)
		//        m_HideLeftNav = False
		//    End If
		//End Sub



		protected void lbtnHideLeftNavBar_Click(object sender, System.EventArgs e)
		{
			//CheckLeftNav()
			//Create a cookie for persistent state
			Response.Cookies["HideLeftNav"].Value = "True";
			Response.Cookies["HideLeftNav"].Expires = DateTime.Now.AddDays(10);
			Response.Redirect(Request.ServerVariables["URL"] + "?HideLeftNav=True");
		}
		public Sidebar()
		{
			Load += Page_Load;
		}
	}

}
