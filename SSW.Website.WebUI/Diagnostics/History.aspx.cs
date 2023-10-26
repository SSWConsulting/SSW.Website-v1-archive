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

namespace SSW.Website.WebUI.Diagnostics
{

	public partial class History : System.Web.UI.Page
	{


		private string mcID;
		protected void Page_Load(object sender, System.EventArgs e)
		{

			if (!(IsPostBack == true)) {
				if (!(Request.QueryString["CID"] == string.Empty)) {
					mcID = Request.QueryString["CID"].ToString();
					if (mcID != string.Empty) {
						GridView1.DataSource = GetHistoryList(mcID);
						GridView1.DataBind();

					}
				}

			}
		}

		private DataSet GetHistoryList(string cID)
		{
			DataSet ds = new DataSet();
			DataTable dt = new DataTable("HistoryList");
			dt.Columns.Add("Icon", typeof(string));
			dt.Columns.Add("ReportDate", typeof(string));
			dt.Columns.Add("ComputerName", typeof(string));
			dt.Columns.Add("ComputerIP", typeof(string));
			dt.Columns.Add("Good", typeof(int));
			dt.Columns.Add("Bad", typeof(int));
			dt.Columns.Add("Unrecognised", typeof(int));
			dt.Columns.Add("DiagnosticsVersion", typeof(string));
			dt.Columns.Add("ReportID", typeof(int));
			dt.Columns.Add("ReportURL", typeof(string));
			ds.Tables.Add(dt);
			DataRow dr = null;
			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SSWDiagnosticsConnectionString"].ToString());
			string sqlStr = "SELECT DISTINCT Good, Bad, Unrecognised, ReportDate, ComputerName, ComputerIP, DiagnosticsVersion, ReportID FROM HistoryReport WHERE SSWContactID = '" + cID.ToString() + "' ORDER BY ReportID DESC";
			SqlCommand cmd = new SqlCommand(sqlStr, conn);
			try {
				conn.Open();
				SqlDataReader result = cmd.ExecuteReader();
				while (result.Read() == true) {
					dr = dt.NewRow();
					dr["ReportDate"] = result.GetValue(3).ToString();
					dr["ComputerName"] = result.GetValue(4).ToString();
					dr["ComputerIP"] = result.GetValue(5).ToString();
					dr["Good"] = Convert.ToInt32(result.GetValue(0).ToString());
					dr["Bad"] = Convert.ToInt32(result.GetValue(1).ToString());
					dr["Unrecognised"] = Convert.ToInt32(result.GetValue(2).ToString());
					dr["DiagnosticsVersion"] = result.GetValue(6).ToString();
					dr["ReportID"] = Convert.ToInt32(result.GetValue(7).ToString());

					if (Convert.ToInt32(dr["Unrecognised"]) == 0) {
						if (Convert.ToInt32(dr["Bad"]) == 0) {
							dr["Icon"] = "~/Images/Images_HistoryReport/pass16.png";
						} else {
							dr["Icon"] = "~/Images/Images_HistoryReport/fail16.png";
						}
					} else {
						dr["Icon"] = "~/Images/Images_HistoryReport/unknown16.png";
					}
					
					dr["ReportURL"] = "HistoryReport.aspx?RID=" + dr["ReportID"].ToString();
					dt.Rows.Add(dr);
				}
			} catch (SqlException ex) {
				Response.Write(ex.ToString());
			} finally {
				conn.Close();
			}

			return ds;
		}


		protected void GridView1_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
		{
			//For index As Integer = 0 To GridView1.Rows.Count
			//    If e.Row.RowType = DataControlRowType.DataRow Then
			//        e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'")
			//        e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c")
			//        e.Row.Attributes.Add("onclick", "__doPostBack('GridView1','Select" & "$" & e.Row.RowIndex() & "')")

			//    End If
			//Next

		}
		public History()
		{
			Load += Page_Load;
		}
	}
}
