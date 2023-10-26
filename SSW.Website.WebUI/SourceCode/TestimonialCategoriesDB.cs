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


	public class TestimonialCategoriesDB
	{
		private int miCatID = 0;
		private string msProdCatId = string.Empty;

		private string msCategoryName = string.Empty;
		public int CatID {
			get { return miCatID; }

			set { miCatID = value; }
		}

		public string ProdCatID {
			get { return msProdCatId; }

			set { msProdCatId = value; }
		}

		public string CategoryName {
			get { return msCategoryName; }

			set { msCategoryName = value; }
		}

		public TestimonialCategoriesDB(int iCatId, string sProdCatId, string sCatName)
		{
			CatID = iCatId;
			ProdCatID = sProdCatId;
			CategoryName = sCatName;
		}
	}

	public class TestimonialCategoryCollection : System.Collections.CollectionBase
	{

		public void Add(TestimonialCategoriesDB tc)
		{
			this.List.Add(tc);
		}

		public void Remove(TestimonialCategoriesDB tc)
		{
			this.List.Remove(tc);
		}

		public TestimonialCategoriesDB this[int iIndex] {
			get { return (TestimonialCategoriesDB)this.List[iIndex]; }
		}

		public static TestimonialCategoryCollection FillListFromDb()
		{
			TestimonialCategoryCollection functionReturnValue = null;
			SqlConnection cnn = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"));
			try {
				cnn.Open();
				functionReturnValue = FillListFromDb(cnn);
			} finally {
				cnn.Close();
			}
			return functionReturnValue;
		}

		public static TestimonialCategoryCollection FillListFromDb(SqlConnection cnn)
		{
			TestimonialCategoryCollection tcc = new TestimonialCategoryCollection();
			SqlCommand cmd = new SqlCommand("SELECT CatID, IsNull(ProdCatID, '') AS ProdCatID, CategoryTitle FROM TestimonialCategories ORDER BY CategoryTitle", cnn);
			SqlDataReader dr = cmd.ExecuteReader();
			while (dr.Read()) {
				tcc.Add(new TestimonialCategoriesDB(dr.GetInt32(0), dr.GetString(1), dr.GetString(2)));
			}
			return tcc;
		}
	}
}
