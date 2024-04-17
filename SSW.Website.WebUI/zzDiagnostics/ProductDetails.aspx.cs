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

	public partial class ProductDetails : System.Web.UI.Page
	{

		string foldUIStatus = "fold";
		string foldDownloadStatus = "fold";

		protected string strPID = string.Empty;


		protected void Page_Load(object sender, System.EventArgs e)
		{
			if (!Page.IsPostBack) {

				if (!string.IsNullOrEmpty(Request.QueryString["PID"])) {
					int iTmp = int.MinValue;
					string strPID = string.Empty;
					string strVID = string.Empty;

					strPID = Request.QueryString["PID"].ToString();
					if ((int.TryParse(strPID, out iTmp) == false)) {
						// to avoid invalid PID, which may cause exception
						HiddenFieldPID.Value = string.Empty;
						divContent.Visible = false;
						div_InvalidHint.Visible = true;
						return;
					}

					if (!string.IsNullOrEmpty(Request.QueryString["VID"])) {
						strVID = Request.QueryString["VID"].ToString();
					} else {
						strVID = "";
					}

					bool isFound = false;
					strVID = VerifyAndGetVID(strPID, strVID, ref isFound);
					HiddenFieldVID.Value = strVID;
					FormView1.Visible = isFound;
					gridHistory.Columns[gridHistory.Columns.Count - 1].Visible = isFound;

					
					strPID = strPID.Replace(" ", "");
					//to prevent sql injection attack
					
					strVID = strVID.Replace(" ", "");

					HiddenFieldPID.Value = strPID;


					string cmdString = string.Format("UPDATE ProductVersion SET ProductVersion.VersionCounter = ProductVersion.VersionCounter + 1 WHERE ProductVersion.VersionNumber = '{0}' AND ProductVersion.ProductID = {1}", strVID, strPID);
					SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SSWDiagnosticsConnectionString"].ToString());
					SqlCommand cmd = new SqlCommand(cmdString, conn);

					conn.Open();
					cmd.ExecuteNonQuery();
					conn.Close();

					HiddenFieldPIDCount.Value = strPID;
					HiddenFieldUIfoldStatus.Value = foldUIStatus;
					HiddenFieldDownloadfoldStatus.Value = foldDownloadStatus;

					GetCountByPID(strPID);

					// Display whether an update is required for this product
					DisplayUpdateRecommendation(strPID, strVID);

					//Show all other versions, by Luke, 27/08/2010
					ShowOtherProductVersions(strPID);
				} else {
					divContent.Visible = false;
					div_InvalidHint.Visible = true;
				}

			}

		}
		// Show Other Product Version, by Luke Chou, 27/08/2010
		protected void ShowOtherProductVersions(string strPID)
		{
			string cmdQueryString = "select distinct * from Product p ";
			cmdQueryString += " where p.GroupID = (select top 1 groupid from Product where ProductID = " + strPID + ") ";
			cmdQueryString += " and p.ProductID != " + strPID;
			SqlConnection connQuery = new SqlConnection(ConfigurationManager.ConnectionStrings["SSWDiagnosticsConnectionString"].ToString());
			SqlCommand cmdQuery = new SqlCommand(cmdQueryString, connQuery);
			SqlDataReader SqlQueryReader = null;

			// Open a connection to the database and then execute the SQL query
			connQuery.Open();
			SqlQueryReader = cmdQuery.ExecuteReader(CommandBehavior.CloseConnection);

			StringBuilder LatestProducts = new StringBuilder();
			// Latest Products
			StringBuilder PriorProducts = new StringBuilder();
			// Prior Products
			while ((SqlQueryReader.Read())) {
				string IsLatestProduct = SqlQueryReader.GetString(SqlQueryReader.GetOrdinal("ProductLatest"));
				string ProductID = SqlQueryReader.GetInt32(SqlQueryReader.GetOrdinal("ProductID")).ToString();
				string ProductName = SqlQueryReader.GetString(SqlQueryReader.GetOrdinal("ProductName"));
				// Prior Products
				if ((string.Compare(IsLatestProduct, "no", true) == 0)) {
					PriorProducts.Append(FormatURL(ProductID, ProductName));
				} else {
					LatestProducts.Append(FormatURL(ProductID, ProductName));
				}
			}

			lblLatestProducts.Text = LatestProducts.ToString();
			// show latest products
			lblPriorProducts.Text = PriorProducts.ToString();
			// show prior products

			// if there's no latest products, hide the row
			if (LatestProducts.ToString() == string.Empty) {
				TrLatestProducts.Visible = false;
			}

			// if there's no prior products, hide the row
			if (PriorProducts.ToString() == string.Empty) {
				TrPriorProducts.Visible = false;
			}

			// if there's no any other products, hide this section
			if (LatestProducts.ToString() == string.Empty & PriorProducts.ToString() == string.Empty) {
				DivOtherVersion.Visible = false;
			}
		}

		// Verify and Return correct VID
		private string VerifyAndGetVID(string PID, string VID, ref bool isFound)
		{
			string cmdQueryString = "select  * from ProductVersion where ProductID= " + PID + " order by versioninternalnumber asc";
			SqlConnection connQuery = new SqlConnection(ConfigurationManager.ConnectionStrings["SSWDiagnosticsConnectionString"].ToString());
			SqlCommand cmdQuery = new SqlCommand(cmdQueryString, connQuery);
			SqlDataReader SqlQueryReader = null;

			// Open a connection to the database and then execute the SQL query
			connQuery.Open();
			SqlQueryReader = cmdQuery.ExecuteReader(CommandBehavior.CloseConnection);

			string strVID = string.Empty;
			while ((SqlQueryReader.Read())) {
				string VersionNumber = SqlQueryReader.GetString(SqlQueryReader.GetOrdinal("VersionNumber"));

				if (VID == VersionNumber) {
					isFound = true;
					return VID;
				}

				if (strVID == string.Empty) {
					strVID = VersionNumber;
				}

				if (VID.StartsWith(VersionNumber)) {
					strVID = VersionNumber;
					isFound = true;
				}

			}

			return strVID;
		}

		private string FormatURL(string ProductID, string ProductName)
		{
			return "<a href=\"ProductDetails.aspx?PID=" + ProductID + "\">" + ProductName + "</a>&nbsp;&nbsp;&nbsp;&nbsp;";
		}

		protected void DisplayUpdateRecommendation(string strPID, string strVID)
		{
			string cmdQueryString = string.Format("SELECT ProductVersion.VersionLatest, Product.ProductLatest, Product.ProductDescription, Manufacturer.ManufacturerID FROM Manufacturer INNER JOIN ProductGroup ON Manufacturer.ManufacturerID = ProductGroup.ManufacturerID INNER JOIN Product ON ProductGroup.GroupID = Product.GroupID INNER JOIN ProductVersion ON Product.ProductID = ProductVersion.ProductID WHERE (ProductVersion.VersionNumber like '{0}%') and (Product.ProductID='{1}')", strVID, strPID);
			SqlConnection connQuery = new SqlConnection(ConfigurationManager.ConnectionStrings["SSWDiagnosticsConnectionString"].ToString());
			SqlCommand cmdQuery = new SqlCommand(cmdQueryString, connQuery);
			SqlDataReader SqlQueryReader = null;

			// Open a connection to the database and then execute the SQL query
			connQuery.Open();
			SqlQueryReader = cmdQuery.ExecuteReader(CommandBehavior.CloseConnection);

			// VersionUpdateText holds the text to be displayed, either informing the
			// user that a major or minor update is necessary if UpdateNecessary returns
			// true
			string VersionUpdateText = string.Empty;
			bool UpdateNecessary = false;

			// Read the first line of the SQL query to extract required information
			if ((SqlQueryReader.Read())) {
				// Extract two string values that will state whether the user is using
				// the latest product and version.
				string IsLatestProduct = SqlQueryReader.GetString(SqlQueryReader.GetOrdinal("ProductLatest"));
				string IsLatestVersion = SqlQueryReader.GetString(SqlQueryReader.GetOrdinal("VersionLatest"));
				string ProductDescription = SqlQueryReader.GetString(SqlQueryReader.GetOrdinal("ProductDescription"));
				int ManufacturerID = SqlQueryReader.GetInt32(SqlQueryReader.GetOrdinal("ManufacturerID"));

				if ((string.Compare(IsLatestProduct, "no", true) == 0)) {
					UpdateNecessary = true;
					VersionUpdateText = "Major Update Available Below";
				} else if ((string.Compare(IsLatestVersion, "yes", true) != 0)) {
					UpdateNecessary = true;
					VersionUpdateText = "Minor Update Available Below";
				}

				// if beta product, hide 3rd box, by Luke Chou, 27/08/2010
				if (IsBetaProduct(ProductDescription)) {
					FormView3.Visible = false;
				}

				// if microsoft products, it can update from windows update, by Luke Chou, 08/09/2010
				if (ManufacturerID == 1) {
					lblUpdateWindows.Visible = true;
				} else {
					lblUpdateWindows.Visible = false;
				}
			}

			// If an update is necessary, locate the Update Recommendation label and
			// display the appropriate text.
			Label LblUpdateRecommendation = null;
			if ((UpdateNecessary == true)) {
				LblUpdateRecommendation = (Label)FormView1.FindControl("UpdateRecommendation");
				if (((LblUpdateRecommendation != null))) {
					LblUpdateRecommendation.Visible = true;
					LblUpdateRecommendation.Text = VersionUpdateText;
				}
			}

			// Display the appropriate image indicating if an update is necessary
			Image ImgVersionIndicator1 = (Image)FormView1.FindControl("VersionIndicator1");
			if (((ImgVersionIndicator1 != null))) {
				if ((UpdateNecessary == true)) {
					ImgVersionIndicator1.ImageUrl = "Images/cross.png";
				} else {
					ImgVersionIndicator1.ImageUrl = "Images/tick.png";
				}
			}

			// Connection closes with SQL Data Reader (SqlQueryReader)
			SqlQueryReader.Close();

		}


		protected void GetCountByPID(string strPID)
		{
			string cmdStringCount = string.Format("select isnull(Product.AllowUpdateByUI,0) as AllowUpdateByUI,  isnull(CountOptionClickOnUpdatePage.CountClickUpdateByUI,0) as CountClickUpdateByUI,  isnull(CountOptionClickOnUpdatePage.CountClickUpdateByDownload,0) as CountClickUpdateByDownload, Product.UpdateByUIImage as UpdateByUIImage from Product left join CountOptionClickOnUpdatePage on Product.ProductID = CountOptionClickOnUpdatePage.ProductID WHERE (Product.ProductID={0})", strPID);
			SqlConnection connCount = new SqlConnection(ConfigurationManager.ConnectionStrings["SSWDiagnosticsConnectionString"].ToString());
			SqlCommand cmdCount = new SqlCommand(cmdStringCount, connCount);

			connCount.Open();
			SqlDataReader reader = cmdCount.ExecuteReader();

			while ((reader.Read())) {
				if (!reader.IsDBNull(0)) {
					bool AllowUpdateByUI = Convert.ToBoolean(reader["AllowUpdateByUI"]);
					if (AllowUpdateByUI) {
						PanelCount.Visible = true;
						string CountClickUpdateByUI = Convert.ToString(reader["CountClickUpdateByUI"]);
						string CountClickUpdateByDownload = Convert.ToString(reader["CountClickUpdateByDownload"]);
						string UpdateByUIImage = Convert.ToString(reader["UpdateByUIImage"]);

						LabelUI.Text = CountClickUpdateByUI;
						LabelDownload.Text = CountClickUpdateByDownload;
						ImageUI.ImageUrl = UpdateByUIImage;
						if (HiddenFieldUIfoldStatus.Value == "unfold") {
							ImageUI.Visible = true;
							LinkButtonUI.Text = "Use the applications UI (Hide Details...)";
							ImgBtnUI.ImageUrl = "Images\\UpdateUI\\collapse.jpg";
						} else {
							ImageUI.Visible = false;
							LinkButtonUI.Text = "Use the applications UI (Show Details...)";
							ImgBtnUI.ImageUrl = "Images\\UpdateUI\\expand.jpg";
						}


						if (HiddenFieldDownloadfoldStatus.Value == "unfold") {
							FormView2.Visible = true;
							LinkButtonDownload.Text = "Download and install (Hide Details...)";
							ImgBtnDownload.ImageUrl = "Images\\UpdateUI\\collapse.jpg";
						} else {
							FormView2.Visible = false;
							LinkButtonDownload.Text = "Download and install (Show Details...)";
							ImgBtnDownload.ImageUrl = "Images\\UpdateUI\\expand.jpg";
						}

					} else {
						PanelCount.Visible = false;
						FormView2.Visible = true;
					}

				}

			}

			connCount.Close();

		}


		protected void LinkButtonUI_Click(object sender, EventArgs e)
		{
			ClickUI();

		}


		protected void LinkButtonDownload_Click(object sender, EventArgs e)
		{
			ClickDownload();

		}


		protected void ImgBtnUI_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			ClickUI();

		}


		protected void ImgBtnDownload_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			ClickDownload();

		}


		protected void ClickUI()
		{
			ImageUI.Visible = true;

			string CountClickUpdateByUI = (Convert.ToInt32(LabelUI.Text) + 1).ToString();
			string CountClickUpdateByDownload = LabelDownload.Text.ToString();
			string strPIDCount = HiddenFieldPIDCount.Value.ToString();

			string cmdString = string.Format("update CountOptionClickOnUpdatePage set CountClickUpdateByUI ={0}, CountClickUpdateByDownload = {1} where ProductID = {2}", CountClickUpdateByUI, CountClickUpdateByDownload, strPIDCount);
			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SSWDiagnosticsConnectionString"].ToString());
			SqlCommand cmd = new SqlCommand(cmdString, conn);

			conn.Open();
			cmd.ExecuteNonQuery();
			conn.Close();

			if (HiddenFieldUIfoldStatus.Value == "fold") {
				HiddenFieldUIfoldStatus.Value = "unfold";
			} else {
				HiddenFieldUIfoldStatus.Value = "fold";
			}


			GetCountByPID(strPIDCount);

		}


		protected void ClickDownload()
		{
			FormView2.Visible = true;

			string CountClickUpdateByUI = LabelUI.Text.ToString();
			string CountClickUpdateByDownload = (Convert.ToInt32(LabelDownload.Text) + 1).ToString();
			string strPIDCount = HiddenFieldPIDCount.Value.ToString();

			string cmdString = string.Format("update CountOptionClickOnUpdatePage set CountClickUpdateByUI ={0}, CountClickUpdateByDownload = {1} where ProductID = {2}", CountClickUpdateByUI, CountClickUpdateByDownload, strPIDCount);
			SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SSWDiagnosticsConnectionString"].ToString());
			SqlCommand cmd = new SqlCommand(cmdString, conn);

			conn.Open();
			cmd.ExecuteNonQuery();
			conn.Close();

			if (HiddenFieldDownloadfoldStatus.Value == "fold") {
				HiddenFieldDownloadfoldStatus.Value = "unfold";
			} else {
				HiddenFieldDownloadfoldStatus.Value = "fold";
			}

			GetCountByPID(strPIDCount);

		}

		// Return Product Warning String, by Luke Chou, 25/08/2010
		protected string GetWarningString(string ProductDesc, string VersionDesc)
		{
			// try to find word 'beta' in product description
			Regex reg = new Regex("\\bbeta\\b");
			MatchCollection mc = reg.Matches(ProductDesc.ToLower());

			// if word 'beta' is found return "warning" 
			if (mc.Count > 0) {
				return " (Warning: Beta)";
			// if no 'beta' word, try to check if existed in version description or not
			} else {
				mc = reg.Matches(VersionDesc.ToLower());
				if (mc.Count > 0) {
					return " (Warning: Beta)";
				}
			}

			return " (Recommended)";
		}

		// Return if it's a beta product or not, by checking if there's word 'beta' in the input 
		// By Luke Chou, 27/08/2010
		protected bool IsBetaProduct(string ProductDesc)
		{
			Regex reg = new Regex("\\bbeta\\b");
			MatchCollection mc = reg.Matches(ProductDesc.ToLower());

			// if word 'beta' is found return true
			if (mc.Count > 0) {
				return true;
			} else {
				return false;
			}
		}
		public ProductDetails()
		{
			Load += Page_Load;
		}

	}
}
