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
public partial class ClientDownloadHistory : System.Web.UI.Page
{

	protected void Page_Load(object sender, System.EventArgs e)
	{
		if (!Page.IsPostBack) {
			SSW.Framework.WebCRMProvider.CRMMembershipUser currentUser = (SSW.Framework.WebCRMProvider.CRMMembershipUser)Membership.GetUser();
			if (currentUser == null) {
				Response.Redirect("/ssw/Shop/Login.aspx?ReturnUrl=" + Server.UrlEncode("/ssw/Shop/ClientDownloadHistory.aspx"));
			}
			dgDownloadHistory.DataSource = QueryTable(currentUser.SSWContactID);
			dgDownloadHistory.DataBind();
		}
	}


	public ClientDownloadHistory()
	{
		Load += Page_Load;
	}

	private DataTable QueryTable(int contactID)
	{
		//Prepare the connection
		string strConnection = SSW.SSWMT.GlobalFunctions.GetWebConfigString("WebSQLDatabase");
		SqlConnection sqlConn = new SqlConnection(strConnection);

		//Prepare the select commands
		string strSql = string.Empty;
		strSql = "SELECT Download.ProdName, ClientDiary.DownloadVersionNo, ClientDiary.DateCreated " + "FROM ClientDiary " + "LEFT JOIN Download ON ClientDiary.DownloadID = Download.DownloadID " + "WHERE ContactID = '" + contactID.ToString() + "' and download.prodname is not null order by ClientDiary.DateCreated desc";
		SqlCommand sqlComm = new SqlCommand(strSql, sqlConn);

		//Fill our products
		DataTable dtTable = new DataTable();
		SqlDataAdapter sqlAdpt = new SqlDataAdapter(sqlComm);
		sqlAdpt.Fill(dtTable);

		return dtTable;
	}
}
