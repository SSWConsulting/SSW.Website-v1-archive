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


namespace SSW
{


	public class TestimonialsDB
	{
		private int miQuoteId = 0;
		private string msContent;
		private string msContentLong;
		private string msAuthor;
		private string msCompany;
		private string msCompanyUrl;
		private string msImageName;
		private string msProdId;

		public TestimonialCategoryCollection SelectedCategories;
		public TestimonialsDB()
		{
			SelectedCategories = new TestimonialCategoryCollection();
		}

		public int QuoteID {
			get { return miQuoteId; }

			set { miQuoteId = value; }
		}

		public string Content {
			get { return msContent; }

			set { msContent = value; }
		}

		public string ContentLong {
			get { return msContentLong; }

			set { msContentLong = value; }
		}

		public string Author {
			get { return msAuthor; }

			set { msAuthor = value; }
		}

		public string CompanyName {
			get { return msCompany; }

			set { msCompany = value; }
		}

		public string CompanyUrl {
			get { return msCompanyUrl; }

			set { msCompanyUrl = value; }
		}

		public string ImageName {
			get { return msImageName; }

			set { msImageName = value; }
		}

		public string ProdID {
			get { return msProdId; }

			set { msProdId = value; }
		}

		private static TestimonialsDB GetQuoteFromSql(string sSql)
		{
			TestimonialsDB ret = new TestimonialsDB();

			SqlConnection cnn = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"));

			try {
				cnn.Open();

				SqlCommand cmd = new SqlCommand(sSql, cnn);
				SqlDataReader dr = cmd.ExecuteReader();

				dr.Read();
				if (dr.HasRows) {
					
					ret.miQuoteId = dr.GetInt32(0);
					
					if (!dr.IsDBNull(1))
						ret.msContent = dr.GetString(1);
					else
						ret.msContent = string.Empty;
					
					if (!dr.IsDBNull(2))
						ret.msAuthor = dr.GetString(2);
					else
						ret.msAuthor = string.Empty;
					
					if (!dr.IsDBNull(3))
						ret.msCompany = dr.GetString(3);
					else
						ret.msCompany = string.Empty;
					
					if (!dr.IsDBNull(4))
						ret.msCompanyUrl = dr.GetString(4);
					else
						ret.msCompanyUrl = string.Empty;
					
					if (!dr.IsDBNull(5))
						ret.msProdId = dr.GetString(5);
					else
						ret.msProdId = string.Empty;
					
					if (!dr.IsDBNull(6))
						ret.msContentLong = dr.GetString(6);
					else
						ret.msContentLong = string.Empty;
					
					if (!dr.IsDBNull(7))
						ret.msImageName = dr.GetString(7);
					else
						ret.msImageName = string.Empty;
				}

				dr.Close();

				cmd = new SqlCommand("SELECT TestimonialCategories.CatID, IsNull(ProdCatID, ''), CategoryTitle FROM TestimonialCategories INNER JOIN TestimonialCategorisation ON TestimonialCategorisation.CatID = TestimonialCategories.CatID WHERE TestID=" + ret.miQuoteId.ToString() + " ORDER BY TestimonialCategories.CatID", cnn);
				dr = cmd.ExecuteReader();

				while (dr.Read()) {
					ret.SelectedCategories.Add(new TestimonialCategoriesDB(dr.GetInt32(0), dr.GetString(1), dr.GetString(2)));
				}
			} finally {
				cnn.Close();
			}

			return ret;
		}
		private static DataSet GetQuoteFromSqlToDataSet(string sSql)
		{
			SqlConnection cnn = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"));

			try {
				cnn.Open();
				SqlCommand cmd = new SqlCommand(sSql, cnn);
				SqlDataAdapter adt = new SqlDataAdapter(cmd);
				DataSet ds = new DataSet();
				adt.Fill(ds);
				return ds;
			} finally {
				cnn.Close();
			}
		}
		public void UpdateToDb()
		{
			SqlConnection cnn = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"));

			try {
				cnn.Open();

				//Dim da As SqlDataAdapter = New SqlDataAdapter("SELECT * FROM Testimonials WHERE TestimonialID=" + miQuoteId.ToString(), cnn)
				SqlDataAdapter da = new SqlDataAdapter("SELECT TestimonialID,[Content], [ContentLong], [Author], [CompanyName], [DateCreated], [DateUpdated], [ProdID], [ImageName], [CompanySite2]  FROM Testimonials WHERE TestimonialID=" + miQuoteId.ToString(), cnn);

				SqlCommandBuilder cb = new SqlCommandBuilder(da);
				SqlCommand icOld = cb.GetInsertCommand();

				SqlCommand icNew = new SqlCommand(icOld.CommandText + "; SELECT SCOPE_IDENTITY() AS TestimonialID", icOld.Connection);
				icNew.UpdatedRowSource = UpdateRowSource.FirstReturnedRecord;
				SqlParameter[] aParams = new SqlParameter[icOld.Parameters.Count + 1];
				icOld.Parameters.CopyTo(aParams, 0);
				icOld.Parameters.Clear();

				int i = 0;
				for (i = 0; i <= aParams.Length - 1; i++) {
					if ((aParams[i] != null)) {
						icNew.Parameters.Add(aParams[i]);
					}
				}
				da.InsertCommand = icNew;

				DataSet ds = new DataSet();
				da.Fill(ds);

				if (this.QuoteID == 0) {
					ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
				}

				DataRow dr = ds.Tables[0].Rows[0];
				//===EDIT SSWWorkExperience 13/09/04 ===
				if (this.Content == null) {
					dr["Content"] = System.DBNull.Value;
				} else {
					dr["Content"] = this.Content;
				}

				if (this.ContentLong == null) {
					dr["ContentLong"] = System.DBNull.Value;
				} else {
					dr["ContentLong"] = this.ContentLong;
				}

				if (this.Author == null) {
					dr["Author"] = System.DBNull.Value;
				} else {
					dr["Author"] = this.Author;
				}

				if (this.CompanyName == null) {
					dr["CompanyName"] = System.DBNull.Value;
				} else {
					dr["CompanyName"] = this.CompanyName;
				}

				if (this.CompanyUrl == null) {
					dr["CompanySite2"] = System.DBNull.Value;
				} else {
					dr["CompanySite2"] = this.CompanyUrl;
				}

				if (this.ProdID == null) {
					dr["ProdID"] = System.DBNull.Value;
				} else {
					dr["ProdID"] = this.ProdID;
				}
				//dr("ProdID") = Me.ProdID

				if (this.ImageName == null) {
					dr["ImageName"] = System.DBNull.Value;
				} else {
					dr["ImageName"] = this.ImageName;
				}

				dr["DateUpdated"] = DateTime.Now;
				dr["DateCreated"] = DateTime.Now;

				da.Update(ds);
				if (this.QuoteID == 0) {
					this.QuoteID = Convert.ToInt32(dr["TestimonialID"]);
				}
				ds.Tables[0].AcceptChanges();

				SqlCommand cmd = new SqlCommand("DELETE FROM TestimonialCategorisation WHERE TestID=" + miQuoteId.ToString(), cnn);
				cmd.ExecuteNonQuery();

				da = new SqlDataAdapter("SELECT CatID, TestID, DateUpdated FROM TestimonialCategorisation WHERE TestID=" + miQuoteId.ToString(), cnn);
				cb = new SqlCommandBuilder(da);

				da.Fill(ds);

				TestimonialCategoriesDB tc = null;
				foreach (TestimonialCategoriesDB tc_loopVariable in this.SelectedCategories) {
					tc = tc_loopVariable;
					ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
					dr = ds.Tables[0].Rows[ds.Tables[0].Rows.Count - 1];
					dr["CatID"] = tc.CatID;
					dr["TestID"] = miQuoteId;
					dr["DateUpdated"] = DateTime.Now;
				}

				da.Update(ds);

			} finally {
				cnn.Close();
			}
		}
		public void Delete()
		{
			SqlConnection cnn = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"));

			try {
				cnn.Open();
				SqlCommand cmdDelT = new SqlCommand("DELETE FROM Testimonials WHERE TestimonialID=" + miQuoteId.ToString(), cnn);
				cmdDelT.ExecuteNonQuery();

				SqlCommand cmdDelTC = new SqlCommand("DELETE FROM TestimonialCategorisation WHERE TestID=" + miQuoteId.ToString(), cnn);
				cmdDelTC.ExecuteNonQuery();
			} finally {
				cnn.Close();
			}
		}

		// this gets a single random quote, regardless of category
		public static TestimonialsDB GetRandomQuote()
		{
			//=== EDIT SSWWorkExperience 8/9/04
			//Dim ret As TestimonialsDB = GetQuoteFromSql("SELECT TOP 1 TestimonialID, Content, Author, CompanyName, CompanySite, ProdID, ContentLong, ImageName FROM Testimonials WHERE Content IS NOT NULL ORDER BY newid()")
			TestimonialsDB ret = GetQuoteFromSql("SELECT TOP 1 TestimonialID, Content, Author, CompanyName, CompanySite2, ProdID, ContentLong, ImageName FROM Testimonials WHERE Content IS NOT NULL ORDER BY newid()");
			return ret;
		}

		// this gets a single random quote that belongs to the category specified by iCatId
		public static TestimonialsDB GetRandomQuote(int iCatId)
		{
			//Dim ret As TestimonialsDB = GetQuoteFromSql("SELECT TOP 1 TestimonialID, Content, Author, CompanyName, CompanySite, ProdID, ContentLong, ImageName FROM Testimonials INNER JOIN TestimonialCategorisation AS TC ON TestID = TestimonialID WHERE CatID=" + CStr(iCatId) + " AND Content IS NOT NULL ORDER BY newid()")
			TestimonialsDB ret = GetQuoteFromSql("SELECT TOP 1 TestimonialID, Content, Author, CompanyName, CompanySite2, ProdID, ContentLong, ImageName FROM Testimonials INNER JOIN TestimonialCategorisation AS TC ON TestID = TestimonialID WHERE CatID=" + Convert.ToString(iCatId) + " AND Content IS NOT NULL ORDER BY newid()");
			return ret;
		}

		// this gets a single random quote that belongs to the product category id as used in ProdCategoryGroupCategory
		public static TestimonialsDB GetRandomQuote(string sProdCatId)
		{
			//Dim ret As TestimonialsDB = GetQuoteFromSql("SELECT TOP 1 TestimonialID, Content, Author, CompanyName, CompanySite, ProdID, ContentLong, ImageName FROM Testimonials INNER JOIN TestimonialCategorisation AS TC ON TestID = TestimonialID INNER JOIN TestimonialCategories TCats ON TCats.CatID = TC.CatID INNER JOIN ProdCategoryGroupCategory ON ProdCategoryGroupCategory.CategoryID = TCats.ProdCatID WHERE ProdCatID='" + sProdCatId + "' AND Content IS NOT NULL ORDER BY newid()")
			//=== EDIT SSWWorkExperience 8/9/04
			TestimonialsDB ret = GetQuoteFromSql("SELECT TOP 1 TestimonialID, Content, Author, CompanyName, CompanySite2, ProdID, ContentLong, ImageName FROM Testimonials INNER JOIN TestimonialCategorisation AS TC ON TestID = TestimonialID INNER JOIN TestimonialCategories TCats ON TCats.CatID = TC.CatID INNER JOIN ProdCategoryGroupCategory ON ProdCategoryGroupCategory.CategoryID = TCats.ProdCatID WHERE ProdCatID='" + sProdCatId + "' AND Content IS NOT NULL ORDER BY newid()");
			return ret;
		}

		// this gets a single random quote belonging to an entry in ProdCategory
		public static TestimonialsDB GetRandomQuoteForProd(string sProdId)
		{
			//Dim ret As TestimonialsDB = GetQuoteFromSql("SELECT TOP 1 TestimonialID, Content, Author, CompanyName, CompanySite, ProdID, ContentLong, ImageName FROM Testimonials WHERE ProdID='" + sProdId + "' AND Content <> '' ORDER BY newid()")
			//'=== EDIT SSWWorkExperience 8/9/04
			TestimonialsDB ret = GetQuoteFromSql("SELECT TOP 1 TestimonialID, Content, Author, CompanyName, CompanySite2, ProdID, ContentLong, ImageName FROM Testimonials WHERE ProdID='" + sProdId + "' AND Content <> '' ORDER BY newid()");
			return ret;
		}

		// this gets multiple quotes belonging to an entry in ProdCategory
		public static DataSet GetMultipleRandomQuoteForProd(string sProdId)
		{
			return GetQuoteFromSqlToDataSet("SELECT TOP 2 TestimonialID, Content, Author, CompanyName, CompanySite2, ProdID, ContentLong, ImageName FROM Testimonials WHERE ProdID='" + sProdId + "' AND Content <> '' ORDER BY newid()");
		}

		// this gets a single random quote belonging to an entry in ProdCategory
		public static TestimonialsDB GetQuote(int iQuoteId)
		{
			//=== EDIT SSWWorkExperience 8/9/04
			//Dim ret As TestimonialsDB = GetQuoteFromSql("SELECT TOP 1 TestimonialID, Content, Author, CompanyName, CompanySite, ProdID, ContentLong, ImageName FROM Testimonials WHERE TestimonialID=" + iQuoteId.ToString())
			TestimonialsDB ret = GetQuoteFromSql("SELECT TOP 1 TestimonialID, Content, Author, CompanyName, CompanySite2, ProdID, ContentLong, ImageName FROM Testimonials WHERE TestimonialID=" + iQuoteId.ToString());
			return ret;
		}
	}

	public class TestimonialCollection : System.Collections.CollectionBase
	{

		public void Add(TestimonialsDB t)
		{
			this.List.Add(t);
		}

		public void Remove(TestimonialsDB t)
		{
			this.List.Remove(t);
		}

		public TestimonialsDB this[int iIndex] {
			get { return (TestimonialsDB)this.List[iIndex]; }
		}

		public static TestimonialCollection FillListFromDb()
		{
			return FillListFromDb(0);
		}

		public static TestimonialCollection FillListFromDb(SqlConnection cnn)
		{
			return FillListFromDb(0, cnn);
		}

		public static TestimonialCollection FillListFromDb(int iCatId)
		{
			TestimonialCollection functionReturnValue = null;
			SqlConnection cnn = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"));
			try {
				cnn.Open();
				functionReturnValue = FillListFromDb(iCatId, cnn);
			} finally {
				cnn.Close();
			}
			return functionReturnValue;
		}

		public static TestimonialCollection FillListFromDb(int iCatId, SqlConnection cnn)
		{
			TestimonialCollection tc = new TestimonialCollection();

			string sQuery = "SELECT TestimonialID, Content, IsNull(ContentLong, '') As ContentLong, Author, CompanyName, CompanySite2, ImageName FROM Testimonials";
			//===EDIT SSW WorkExperience 8/9/04
			//Dim sQuery As String = "SELECT TestimonialID, Content, IsNull(ContentLong, '') As ContentLong, Author, CompanyName, CompanySite, ImageName FROM Testimonials"
			if (iCatId > 0) {
				sQuery = sQuery + " INNER JOIN TestimonialCategorisation AS TC ON TestID = TestimonialID WHERE CatID=" + Convert.ToString(iCatId);
			}

			// EDIT JV 31/5/2005 - added order by desc
			sQuery += " ORDER BY Testimonials.DateUpdated DESC";

			SqlCommand cmd = new SqlCommand(sQuery, cnn);
			SqlDataReader dr = cmd.ExecuteReader();

			while (dr.Read()) {
				TestimonialsDB t = new TestimonialsDB();
				t.QuoteID = dr.GetInt32(0);
				if (!dr.IsDBNull(1))
					t.Content = dr.GetString(1);
				if (!dr.IsDBNull(2))
					t.ContentLong = dr.GetString(2);
				if (!dr.IsDBNull(3))
					t.Author = dr.GetString(3);
				if (!dr.IsDBNull(4))
					t.CompanyName = dr.GetString(4);
				if (!dr.IsDBNull(5))
					t.CompanyUrl = dr.GetString(5);
				if (!dr.IsDBNull(6))
					t.ImageName = dr.GetString(6);
				tc.Add(t);
			}

			return tc;
		}
	}
}
