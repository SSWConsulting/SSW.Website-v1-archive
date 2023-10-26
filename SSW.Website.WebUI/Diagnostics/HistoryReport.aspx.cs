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
using System.Xml;
using System.IO;

namespace SSW.Website.WebUI.Diagnostics
{

	public partial class HistoryReport : System.Web.UI.Page
	{
		public string xmlStr = string.Empty;
		public string GoodStr = string.Empty;
		public string BadStr = string.Empty;

		public string UnrecognisedStr = string.Empty;


		protected void Page_Load(object sender, System.EventArgs e)
		{
			string reportID = string.Empty;
			reportID = Request.QueryString["RID"];

			if (reportID != string.Empty) {
				int tempReportID = -1;
				if (Int32.TryParse(reportID, out tempReportID) == true) {
					GetHistoryReport(Convert.ToInt32(tempReportID));
				}
				DataSet xmlDs = SetDataSet();

				string ProgramFile = null;
				string Path = null;
				string localVersion = null;
				string localName = null;
				string productID = null;
				string friendlyName = null;
				string latestVersion = null;
				string alert = null;
				string update = null;

				XmlDocument xmlDoc = new XmlDocument();

				if (xmlStr != string.Empty) {
					xmlDoc.LoadXml(xmlStr);

					XmlNodeList nd = null;
					nd = xmlDoc.SelectSingleNode("/Environment/Executables").ChildNodes;


					for (int i = 0; i <= nd.Count - 1; i++) {
						ProgramFile = nd[i].Attributes["file"].Value.ToString();
						Path = nd[i].Attributes["path"].Value.ToString();
						localVersion = nd[i].Attributes["localVersion"].Value.ToString();
						localName = nd[i].Attributes["localName"].Value.ToString();
						productID = nd[i].Attributes["productID"].Value.ToString();
						friendlyName = nd[i].Attributes["friendlyName"].Value.ToString();
						latestVersion = nd[i].Attributes["latestVersion"].Value.ToString();
						alert = nd[i].Attributes["alert"].Value.ToString();
						update = nd[i].Attributes["update"].Value.ToString();

						DataRow dr = xmlDs.Tables["Report"].NewRow();
						dr["#"] = i + 1;
						dr["friendlyName"] = friendlyName;
						dr["localVersion"] = localVersion;
						dr["latestVersion"] = latestVersion;
						dr["update"] = update;
						dr["Path"] = Path;

						//dr(6) = ProgramFile
						//dr(7) = localName
						//dr(8) = productID
						//dr(9) = alert
						if (latestVersion == "Yes") {
							dr["Image"] = imgGood.ImageUrl;
							dr["clnOrder"] = 0;
						} else if (latestVersion == "Unrecognized") {
							dr["Image"] = imgUnrecognized.ImageUrl;
							dr["clnOrder"] = 2;
						} else {
							dr["Image"] = imgBad.ImageUrl;
							dr["clnOrder"] = 1;
						}

						xmlDs.Tables["Report"].Rows.Add(dr);

					}

					xmlDs.Tables["Report"].DefaultView.Sort = "clnOrder ASC";

					HistoryReportGrid.DataSource = xmlDs.Tables["Report"];
					//HistoryReportGrid.Sort("clnOrder", SortDirection.)

					HistoryReportGrid.DataBind();

					this.lblGood.Text = string.Format("      {0} Good", GoodStr);
					this.lblBad.Text = string.Format("      {0} Bad", BadStr);
					this.lblUnrecognized.Text = string.Format("      {0} Unrecognized", UnrecognisedStr);

				}
			}
		}

		protected DataSet SetDataSet()
		{
			DataSet rds = new DataSet("ReportDS");

			DataColumn dcProgramFile = new DataColumn("Programe File", typeof(string));
			DataColumn dcPath = new DataColumn("Path", typeof(string));
			DataColumn dclocalVersion = new DataColumn("localVersion", typeof(string));
			DataColumn dclocalName = new DataColumn("localName", typeof(string));
			DataColumn dcproductID = new DataColumn("productID", typeof(string));
			DataColumn dcfriendlyName = new DataColumn("friendlyName", typeof(string));
			DataColumn dclatestVersion = new DataColumn("latestVersion", typeof(string));
			DataColumn dcalert = new DataColumn("alert", typeof(string));
			DataColumn dcupdate = new DataColumn("update", typeof(string));
			DataColumn dcImage = new DataColumn("Image", typeof(string));
			DataColumn dcNumber = new DataColumn("#", typeof(int));
			DataColumn dcOrder = new DataColumn("clnOrder", typeof(int));

			rds.Tables.Add("Report");

			rds.Tables["Report"].Columns.Add(dcNumber);
			rds.Tables["Report"].Columns.Add(dcfriendlyName);
			rds.Tables["Report"].Columns.Add(dclocalVersion);
			rds.Tables["Report"].Columns.Add(dclatestVersion);
			rds.Tables["Report"].Columns.Add(dcupdate);
			rds.Tables["Report"].Columns.Add(dcPath);
			//rds.Tables("Report").Columns.Add(dcProgramFile)
			//rds.Tables("Report").Columns.Add(dclocalName)
			//rds.Tables("Report").Columns.Add(dcproductID)
			//rds.Tables("Report").Columns.Add(dcalert)
			rds.Tables["Report"].Columns.Add(dcImage);
			rds.Tables["Report"].Columns.Add(dcOrder);

			return rds;

		}

		protected void GetHistoryReport(int reportID)
		{
			string versionXmlNumber = string.Empty;
			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SSWDiagnosticsConnectionString"].ToString());
			string sqlStr = "SELECT [XML], Good, Bad, Unrecognised, ReportDate, ComputerName FROM HistoryReport WHERE ReportID = " + reportID;
			SqlCommand cmd = new SqlCommand(sqlStr, conn);
			try {
				conn.Open();
				SqlDataReader result = cmd.ExecuteReader();
				if (result.Read() == true) {
					xmlStr = result.GetValue(0).ToString();
					GoodStr = result.GetValue(1).ToString();
					BadStr = result.GetValue(2).ToString();
					UnrecognisedStr = result.GetValue(3).ToString();
					this.lblReportDate.Text += ": " + result.GetValue(4).ToString();
					this.lblComputerName.Text += ": " + result.GetValue(5).ToString();

					result.Close();
				}
			} catch (SqlException ex) {
				Response.Write(ex.ToString());
			} finally {
				conn.Close();
			}
		}


		private void InitializeComponent()
		{
		}


		protected void HistoryReportGrid_SelectedIndexChanged(object sender, EventArgs e)
		{
		}
		public HistoryReport()
		{
			Load += Page_Load;
		}
	}
}
