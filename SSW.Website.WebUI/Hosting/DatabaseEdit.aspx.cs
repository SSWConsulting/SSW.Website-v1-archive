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
using System.Data.SqlClient;

namespace SSW.Website.WebUI.hosting
{

	public partial class DatabaseEdit : System.Web.UI.Page
	{

		//Protected WithEvents txtDatabase As System.Web.UI.WebControls.TextBox
		//Protected WithEvents txtPassword As System.Web.UI.WebControls.TextBox
		//Protected WithEvents txtUserID As System.Web.UI.WebControls.TextBox
		//Protected WithEvents btnExecuteSQL As System.Web.UI.WebControls.Button
		//Protected WithEvents txtServer As System.Web.UI.WebControls.TextBox
		//Protected WithEvents lblMessage As System.Web.UI.WebControls.Label
		protected System.Web.UI.WebControls.HyperLink HyperLink1;
		protected System.Web.UI.WebControls.HyperLink HyperLink2;
		//Protected WithEvents chkReturnData As System.Web.UI.WebControls.CheckBox
		//Protected WithEvents dgd As System.Web.UI.WebControls.DataGrid
		protected System.Web.UI.WebControls.Label lblWelcome;
		protected System.Web.UI.HtmlControls.HtmlForm Form1;
		//Protected WithEvents txtSQL As System.Web.UI.WebControls.TextBox

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

		public void Page_Load(System.Object sender, System.EventArgs e)
		{
			dgd.Visible = false;
			if (IsPostBack & CheckInput())
				ExecuteSQL();
		}

		private void btnExecuteSQL_Click(System.Object sender, System.EventArgs e)
		{
		}


		string Password;
		public void ExecuteSQL()
		{
			if (Strings.Trim(txtPassword.Text) != string.Empty) {
				Session["Password"] = txtPassword.Text;
				lblMessage.Text = "<img src='images/icoInfo.gif'> Your password has been saved for this session so you don't need to enter it again<BR>";
			}
			if (chkReturnData.Checked) {
				DataSet dst = new DataSet();
				SqlDataAdapter sqladp = new SqlDataAdapter(txtSQL.Text, cnnstring());
				try {
					sqladp.Fill(dst, "myTable");
					dgd.DataSource = dst.Tables["myTable"].DefaultView;
					dgd.DataBind();
					if (dgd.Items.Count > 0)
						dgd.Visible = true;
					lblMessage.Text += "<img src='images/icoTick.gif'> SQL command executed! " + dst.Tables["myTable"].Rows.Count + " records returned";
				} catch (Exception ex) {
					lblMessage.Text += "<img src='images/icoError.gif'> <span style='color:red'>" + ex.Message + "</span>";
				}
			} else {
				SqlConnection sqlcnn = new SqlConnection(cnnstring());
				SqlCommand sqlcmd = new SqlCommand(txtSQL.Text, sqlcnn);
				try {
					sqlcnn.Open();
					string strRecordsUpdated = sqlcmd.ExecuteNonQuery().ToString();
					sqlcnn.Close();
					lblMessage.Text += "<img src='images/icoTick.gif'> SQL command executed!<br>";
					if (Convert.ToInt32(strRecordsUpdated) > -1) {
						lblMessage.Text += "<img src='images/icoInfo.gif'> " + strRecordsUpdated + " record(s) updated";
					}
				} catch (Exception ex) {
					lblMessage.Text += "<img src='images/icoError.gif'> <span style='color:red'>" + ex.Message + "</span>";
				}
			}
		}

		public string cnnstring()
		{
			try {
				
				return "data source=" + txtServer.Text + ";initial catalog=" + txtDatabase.Text + ";User ID=" + txtUserID.Text + ";Password=" + Session["Password"].ToString();
			} catch {
				return "data source= ?";
			}
		}

		public bool CheckInput()
		{
			string[] userInput = {
				txtServer.Text,
				txtDatabase.Text,
				txtPassword.Text,
				txtUserID.Text
			};
			int count = 0;
			for (count = 0; count <= userInput.Length - 1; count++) {
				
				if (Strings.InStr(userInput[count], "'") != 0 | Strings.InStr(userInput[count], "\"") != 0) {
					lblMessage.Text += "<img src='images/icoError.gif'> <span style='color:red'>User input contains illegal characters &quot or '</span>";
					return false;
				}
			}
			return true;
		}

		public void dgd_PageIndexChanged(object obj, DataGridPageChangedEventArgs e)
		{
			dgd.CurrentPageIndex = e.NewPageIndex;
			dgd.DataBind();
			lblMessage.Text = string.Empty;
		}

		//This stuff isn't implemented but I might do it one day
		public void dgd_Edit(object obj, DataGridCommandEventArgs e)
		{
			dgd.EditItemIndex = e.Item.ItemIndex;
			dgd.DataBind();
		}

		public void dgd_Update(object obj, DataGridCommandEventArgs e)
		{
			//do updates
			dgd.DataBind();
		}

		public void dgd_Cancel(object obj, DataGridCommandEventArgs e)
		{
			dgd.EditItemIndex = -1;
			dgd.DataBind();
		}

		public void dgd_SortCommand(object obj, DataGridSortCommandEventArgs e)
		{
			dgd.DataBind();
		}
		public DatabaseEdit()
		{
			Load += Page_Load;
			Init += Page_Init;
		}
	}
}
