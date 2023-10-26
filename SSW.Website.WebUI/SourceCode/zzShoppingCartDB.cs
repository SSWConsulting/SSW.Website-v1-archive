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
using SSW.Framework.WebCRMProvider;
using SSW.Website.WebUI.Shop;

namespace SSW.SSWMT
{
	// TODO: myCommand.CommandTimeout = 15
    
	public class ShoppingCartDB  //all of the db calls have been replaced with ssw.website.api 
	{

		//*******************************************************
		//
		// ShoppingCartDB.GetItems()
		//
		// The GetItems method returns a DataView containing
		// a forward-only, read-only DataView.  This displays a list of all
		// items within a shopping cart. 
		//
		//*******************************************************
		public DataSet GetItems(string strCartID, string CurrencyID)
		{
			DataSet result = new DataSet();

			// Create Instance of Connection and Command Object
			using (SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))) {
				using (SqlCommand myCommand = new SqlCommand("procwwwBasketSelect_2", myConnection)) {
					// Mark the Command as a SPROC
					myCommand.CommandType = CommandType.StoredProcedure;

					// Add Parameters to SPROC
					SqlParameter parameterCartID = new SqlParameter("@CartID", SqlDbType.NVarChar, 50);
					parameterCartID.Value = strCartID;
					myCommand.Parameters.Add(parameterCartID);

					SqlParameter parameterCurrencyID = new SqlParameter("@CurrencyID", SqlDbType.NVarChar, 50);
					parameterCurrencyID.Value = CurrencyID;
					myCommand.Parameters.Add(parameterCurrencyID);

					// Execute the command
					myConnection.Open();
					SqlDataAdapter sqlDA = new SqlDataAdapter(myCommand);
					//SqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)

					sqlDA.Fill(result, "Table");
					GiveDiscountToUpgrade(ref result, "Table");

					// RT (10/Jan/2005) - 50% discount for software upgrade after 6 months
					// Start ----------
					// End ----------
				}
			}

			// Return the dataset result
			return result;
		}
		//*******************************************************
		//
		// ShoppingCartDB.GetOrderItems()
		//
		// The GetItems method returns a DataView containing
		// a forward-only, read-only DataView.  This displays a list of all
		// items within a shopping cart. 
		//
		//*******************************************************
		public DataTable GetOrderItems(string strCartID, string CurrencyID)
		{
			DataTable result = new DataTable();

			// Create Instance of Connection and Command Object
			using (SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))) {
				using (SqlCommand myCommand = new SqlCommand("procwwwBasketSelect_3", myConnection)) {
					// Mark the Command as a SPROC
					myCommand.CommandType = CommandType.StoredProcedure;

					// Add Parameters to SPROC
					SqlParameter parameterCartID = new SqlParameter("@CartID", SqlDbType.NVarChar, 50);
					parameterCartID.Value = strCartID;
					myCommand.Parameters.Add(parameterCartID);

					SqlParameter parameterCurrencyID = new SqlParameter("@CurrencyID", SqlDbType.NVarChar, 50);
					parameterCurrencyID.Value = CurrencyID;
					myCommand.Parameters.Add(parameterCurrencyID);

					// Execute the command
					myConnection.Open();
					SqlDataAdapter sqlDA = new SqlDataAdapter(myCommand);
					//SqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)

					sqlDA.Fill(result);
				}
			}

			// Return the dataset result
			return result;
		}



		public DataSet GetItems(string strCartID)
		{
			return GetItems(strCartID, "AUD");
		}

		public DataSet GetItemsOrder(string strCartID)
		{
			DataSet result = new DataSet();

			// Create Instance of Connection and Command Object
			using (SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))) {
				using (SqlCommand myCommand = new SqlCommand("procwwwBasketOrderSelect", myConnection)) {
					// Mark the Command as a SPROC
					myCommand.CommandType = CommandType.StoredProcedure;

					// Add Parameters to SPROC
					SqlParameter parameterCartID = new SqlParameter("@CartID", SqlDbType.NVarChar, 50);
					parameterCartID.Value = strCartID;
					myCommand.Parameters.Add(parameterCartID);

					// Execute the command
					myConnection.Open();
					SqlDataAdapter sqlDA = new SqlDataAdapter(myCommand);
					//SqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)

					sqlDA.Fill(result, "Table");
					// RT (10/Jan/2005) - 50% discount for software upgrade after 6 months
					// Start ----------
					GiveDiscountToUpgrade(ref result, "Table");
					// End ----------
				}
			}

			// Return the dataset result
			return result;
		}

		private void GiveDiscountToUpgrade(ref DataSet ds, string TableName)
		{
			// Called by GetItems & GetItemsOrder

			//Return      'Uncomment this line to disable this function


			// RT (12/Jan/2005) - Only check authenticated users (CartID = ContactID, which is integer)
			if (Information.IsNumeric(GetShoppingCartId()) == false) {
				return;
			}

			// RT (10/Jan/2005) - 50% discount for software upgrade after 6 months
			string strDiscountMessage = "<br>* 50% discount for upgrade - Normal Price: {0}";
			string OriginalPrice = null;

			foreach (DataRow dr in ds.Tables[TableName].Rows) {
				if (Convert.ToBoolean(dr["AllowDiscount"])) {

					if (QualifyForDiscount(Convert.ToInt32(dr["CartID"]), Convert.ToString(dr["ProdID"]))) {
						OriginalPrice = string.Format("{0:c}", Convert.ToDecimal(dr["SellAmt"])) + " (" + dr["ProductCurrency"].ToString() + ")";
						dr["ProdName"] = Convert.ToString(dr["ProdName"]) + string.Format(strDiscountMessage, OriginalPrice);
						dr["SellAmt"] = Convert.ToDouble(dr["SellAmt"]) / 2;
						if (ds.Tables[TableName].Columns.Contains("ExtendedAmt")) {
							dr["ExtendedAmt"] = Convert.ToDouble(dr["ExtendedAmt"]) / 2;
						}
						if (ds.Tables[TableName].Columns.Contains("UsersExtendedAmt")) {
							dr["UsersExtendedAmt"] = Convert.ToDouble(dr["UsersExtendedAmt"]) / 2;
						}

					}
				}
			}

		}

		public bool QualifyForDiscount(int intContactID, string strProdID)
		{

			SSWWebServiceContact.Contact WS = new SSWWebServiceContact.Contact();
			System.Net.NetworkCredential networkCredential = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["WebServiceUserName"], ConfigurationManager.AppSettings["WebServicePassword"], ConfigurationManager.AppSettings["WebServiceDomain"]);
			WS.Url = SSW.SSWMT.GlobalFunctions.GetWebConfigString("WebServiceURL");
			WS.Credentials = networkCredential;
			System.DateTime strTemp = WS.ClientInvoiceLastRegistered(intContactID, strProdID);
			int intQualifyMonths = Convert.ToInt32(ConfigurationManager.AppSettings["QualifyUpgradeMonths"]);



			//CInt(ConfigurationManager.AppSettings("QualifyUpgradeMonths"))

			if (DateAndTime.Year(Convert.ToDateTime(strTemp)) == 1) {
				return false;
				// No data found will return year = 0001

			} else {
				if (DateAndTime.Now.AddMonths(-intQualifyMonths) > strTemp) {
					return true;
				} else {
					return false;
				}

				//Dim ts As TimeSpan = DateTime.Now.Subtract(CDate(strTemp))

				//If ts.Days > intDays Then
				//    Return True
				//Else
				//    Return False
				//End If
			}

		}

		public DataSet GetAvailableConversionCurrencys()
		{
			DataSet result = new DataSet();

			// Create Instance of Connection and Command Object
			using (SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))) {
				using (SqlCommand myCommand = new SqlCommand("procCurrencySelect", myConnection)) {
					// Mark the Command as a SPROC
					myCommand.CommandType = CommandType.StoredProcedure;

					// Execute the command
					myConnection.Open();
					SqlDataAdapter sqlDA = new SqlDataAdapter(myCommand);
					sqlDA.Fill(result, "Table");
				}
			}

			// Return the dataset result
			return result;
		}
		//*******************************************************
		//
		// ShoppingCartDB.AddItem()
		//
		// The AddItem method adds an item into a shopping cart.
		//
		//*******************************************************
		public void AddItem(string strCartID, string strProductID, int intQuantity)
		{
			// Create Instance of Connection and Command Object
			using (SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))) {
				using (SqlCommand myCommand = new SqlCommand("procwwwBasketInsert", myConnection)) {
					// Mark the Command as a SPROC
					myCommand.CommandType = CommandType.StoredProcedure;

					// Add Parameters to SPROC
					SqlParameter parameterProductID = new SqlParameter("@ProductID", SqlDbType.NVarChar, 6);
					parameterProductID.Value = strProductID.ToString();
					myCommand.Parameters.Add(parameterProductID);

					SqlParameter parameterCartID = new SqlParameter("@CartID", SqlDbType.NVarChar, 50);
					parameterCartID.Value = strCartID.ToString();
					myCommand.Parameters.Add(parameterCartID);

					SqlParameter parameterQuantity = new SqlParameter("@Quantity", SqlDbType.Int, 4);
					parameterQuantity.Value = intQuantity;
					myCommand.Parameters.Add(parameterQuantity);

					myConnection.Open();
					myCommand.ExecuteNonQuery();
				}
			}
		}

		//*******************************************************
		//
		// ShoppingCartDB.UpdateItem()
		//
		// The UpdateItem method updates the quantity of an item
		// in a shopping cart.
		//
		//*******************************************************

		public void UpdateItem(string cartID, string productID, int quantity)
		{
			// throw an exception if quantity is a negative number
			if (quantity < 0) {
				throw new ArgumentException("Quantity cannot be a negative number");
			}

			// Create Instance of Connection and Command Object
			using (SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))) {
				using (SqlCommand myCommand = new SqlCommand("procwwwBasketUpdate", myConnection)) {
					// Mark the Command as a SPROC
					myCommand.CommandType = CommandType.StoredProcedure;

					// Add Parameters to SPROC
					SqlParameter parameterProductID = new SqlParameter("@ProductID", SqlDbType.NVarChar, 6);
					parameterProductID.Value = productID;
					myCommand.Parameters.Add(parameterProductID);

					SqlParameter parameterCartID = new SqlParameter("@CartID", SqlDbType.NVarChar, 50);
					parameterCartID.Value = cartID;
					myCommand.Parameters.Add(parameterCartID);

					SqlParameter parameterQuantity = new SqlParameter("@Quantity", SqlDbType.Int, 4);
					parameterQuantity.Value = quantity;
					myCommand.Parameters.Add(parameterQuantity);

					// Open the connection and execute the Command
					myConnection.Open();
					myCommand.ExecuteNonQuery();
				}
			}
		}
		//*******************************************************
		//
		// ShoppingCartDB.UpdateItem()
		//
		// The UpdateItem method updates the quantity of an item
		// in a shopping cart.
		//
		//*******************************************************

		public void UpdateItemAttendees(string cartID, string productID, string attendees)
		{
			// Create Instance of Connection and Command Object
			using (SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))) {
				string sql = "update wwwBasket set Attendees='" + attendees + "' where productID = @ProductID and cartID=@CartID";
				using (SqlCommand myCommand = new SqlCommand(sql, myConnection)) {
					myCommand.CommandType = CommandType.Text;
					SqlParameter parameterProductID = new SqlParameter("@ProductID", SqlDbType.NVarChar, 6);
					parameterProductID.Value = productID;
					myCommand.Parameters.Add(parameterProductID);

					SqlParameter parameterCartID = new SqlParameter("@CartID", SqlDbType.NVarChar, 50);
					parameterCartID.Value = cartID;
					myCommand.Parameters.Add(parameterCartID);

					// Open the connection and execute the Command
					myConnection.Open();
					myCommand.ExecuteNonQuery();
				}
			}
		}

		//*******************************************************
		//
		// ShoppingCartDB.RemoveItem()
		//
		// The RemoveItem method removes an item from a
		// shopping cart.
		//
		//*******************************************************

		public void RemoveItem(string cartID, string productID)
		{
			// Create Instance of Connection and Command Object
			using (SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))) {
				using (SqlCommand myCommand = new SqlCommand("procwwwBasketDelete", myConnection)) {
					// Mark the Command as a SPROC
					myCommand.CommandType = CommandType.StoredProcedure;

					// Add Parameters to SPROC
					SqlParameter parameterProductID = new SqlParameter("@ProductID", SqlDbType.NVarChar, 6);
					parameterProductID.Value = productID;
					myCommand.Parameters.Add(parameterProductID);

					SqlParameter parameterCartID = new SqlParameter("@CartID", SqlDbType.NVarChar, 50);
					parameterCartID.Value = cartID;
					myCommand.Parameters.Add(parameterCartID);

					// Open the connection and execute the Command
					myConnection.Open();
					myCommand.ExecuteNonQuery();
				}
			}
		}

		//*******************************************************
		//
		// ShoppingCartDB.GetItemCount()
		//
		// The GetItemCount method returns the number of items
		// within a shopping cart.
		//
		//*******************************************************
		public int GetItemCount(string strCartID)
		{

			// Create Instance of Connection and Command Object
			using (SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))) {
				using (SqlCommand myCommand = new SqlCommand("procwwwBasketCountOutput", myConnection)) {
					// Mark the Command as a SPROC
					myCommand.CommandType = CommandType.StoredProcedure;

					SqlParameter parameterCartID = new SqlParameter("@CartID", SqlDbType.NVarChar, 50);
					parameterCartID.Value = strCartID;
					myCommand.Parameters.Add(parameterCartID);

					// Add Parameters to SPROC
					SqlParameter parameterItemCount = new SqlParameter("@ItemCount", SqlDbType.Int, 4);
					parameterItemCount.Direction = ParameterDirection.Output;
					myCommand.Parameters.Add(parameterItemCount);

					// Open the connection and execute the Command
					myConnection.Open();
					myCommand.ExecuteNonQuery();
					// Return the ItemCount (obtained as out paramter of SPROC)
					return Convert.ToInt32(parameterItemCount.Value);
				}
			}
		}

		//*******************************************************
		//
		// ShoppingCartDB.GetTotal()
		//
		// The GetTotal method returns the total price of all
		// items within the shopping cart as a Decimal.
		//
		//*******************************************************
		public decimal GetTotal(string strCartID, string CurrencyID)
		{

			// RT (10/Jan/2005) - 50% discount for software upgrade after 6 months
			// Start ----------
			DataSet ds = new DataSet();
			ds = GetItems(strCartID, CurrencyID);
			decimal TotalAmount = 0;

			foreach (DataRow dr in ds.Tables["Table"].Rows) {
				//response.write(IIF(typeof(dr.Item("UsersExtendedAmt")) = typeof(dnnull), 0, dr.Item("UsersExtendedAmt"))))

				try {
					TotalAmount += Convert.ToDecimal(dr["UsersExtendedAmt"]);
					
				} finally {
				}
			}

			return TotalAmount;
			// End ----------

			// Old Code:

			//' Create Instance of Connection and Command Object
			//Dim myConnection As New SqlConnection(SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))
			//Dim myCommand As New SqlCommand("procwwwBasketTotalOutput", myConnection)

			//' Mark the Command as a SPROC
			//myCommand.CommandType = CommandType.StoredProcedure

			//' Add Parameters to SPROC
			//Dim parameterCartID As New SqlParameter("@CartID", SqlDbType.NVarChar, 50)
			//parameterCartID.Value = strCartID
			//myCommand.Parameters.Add(parameterCartID)

			//Dim parameterCurrencyID As New SqlParameter("@CurrencyID", SqlDbType.NVarChar, 6)
			//parameterCurrencyID.Value = CurrencyID
			//myCommand.Parameters.Add(parameterCurrencyID)

			//Dim parameterTotalCost As New SqlParameter("@TotalCost", SqlDbType.Money, 8)
			//parameterTotalCost.Direction = ParameterDirection.Output
			//myCommand.Parameters.Add(parameterTotalCost)

			//' Open the connection and execute the Command
			//myConnection.Open()
			//myCommand.ExecuteNonQuery()
			//myConnection.Close()

			//' Return the Total
			//If parameterTotalCost.Value.ToString() <> "" Then
			//    Return CType(parameterTotalCost.Value, Decimal)
			//Else
			//    Return 0
			//End If

		}
		public decimal GetTotal(string strCartID)
		{
			return GetTotal(strCartID, "AUD");
		}

		//*******************************************************
		//
		// ShoppingCartDB.MigrateCart()
		//
		// The MigrateCart method migrates the items from one
		// cartId to another.  This is used during the login
		// and/or registration process to transfer a user's
		// temporary cart items to a permanent account.
		//
		//*******************************************************

		public void MigrateCart(string oldCartId, string newCartId)
		{
			// Create Instance of Connection and Command Object
			using (SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))) {
				using (SqlCommand myCommand = new SqlCommand("procwwwShoppingCartMigrate", myConnection)) {
					// Mark the Command as a SPROC
					myCommand.CommandType = CommandType.StoredProcedure;

					// Add Parameters to SPROC
					SqlParameter cart1 = new SqlParameter("@OriginalCartId ", SqlDbType.NVarChar, 50);
					cart1.Value = oldCartId;
					myCommand.Parameters.Add(cart1);

					SqlParameter cart2 = new SqlParameter("@NewCartId ", SqlDbType.NVarChar, 50);
					cart2.Value = newCartId;
					myCommand.Parameters.Add(cart2);

					// Open the connection and execute the Command
					myConnection.Open();
					myCommand.ExecuteNonQuery();
				}
			}
		}

		//*******************************************************
		//
		// ShoppingCartDB.EmptyCart()
		//
		// The EmptyCart method removes all current items within
		// the shopping cart.
		//
		//*******************************************************

		public void EmptyCart(string strCartID)
		{
			// Create Instance of Connection and Command Object
			using (SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))) {
				using (SqlCommand myCommand = new SqlCommand("procwwwBasketClear", myConnection)) {
					// Mark the Command as a SPROC
					myCommand.CommandType = CommandType.StoredProcedure;

					// Add Parameters to SPROC
					SqlParameter parameterCartId = new SqlParameter("@CartID", SqlDbType.NVarChar, 50);
					parameterCartId.Value = strCartID;
					myCommand.Parameters.Add(parameterCartId);

					// Open the connection and execute the Command
					myConnection.Open();
					myCommand.ExecuteNonQuery();
				}
			}
		}

		//*******************************************************
		//
		// ShoppingCartDB.GetShoppingCartId()
		//
		// The GetShoppingCartId method is used to calculate the
		// "ShoppingCart" ID key used for a tracking a browser.
		//
		// The ShoppingCartID value is either the User's Identity
		// Name (if they are a registered and authenticated user),
		// or a random GUID calculated for guest visitors or
		// customers who have not yet logged in.
		//
		//*******************************************************
		public string GetShoppingCartId()
		{

			// Obtain current HttpContext of ASP.NET Request
			HttpContext context = HttpContext.Current;

			// If the user is authenticated, use their customerId as a permanent shopping cart id
			CRMMembershipUser currentUser = (CRMMembershipUser)Membership.GetUser();
			if ((currentUser != null)) {
				return currentUser.SSWContactID.ToString();
			}

			// If user is not authenticated, either fetch (or issue) a new temporary cartID
			if ((context.Request.Cookies["SSW_CartID"] != null)) {
				return context.Request.Cookies["SSW_CartID"].Value;
			} else {
				// Generate a new random GUID using System.Guid Class
				Guid tempCartId = Guid.NewGuid();

				// Send tempCartId back to client as a cookie
				context.Response.Cookies["SSW_CartID"].Value = tempCartId.ToString();

				// Return tempCartId
				return tempCartId.ToString();
			}

		}

		public DataTable GetProdAndCategoryFromProdID(string ProdID)
		{
			// Create Instance of Connection and Command Object
			string strSQL = "select Prod.ProdID, Prod.ProdName, ProdCategory.Image from Prod, ProdCategory where Prod.CategoryID = ProdCategory .CategoryID and ProdID ='" + ProdID + "'";
			using (SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"))) {
				using (SqlCommand myCommand = new SqlCommand(strSQL, myConnection)) {
					// Mark the Command as a SPROC
					myCommand.CommandType = CommandType.Text;

					DataTable result = new DataTable();
					
					myConnection.Open();
					SqlDataAdapter sqlDA = new SqlDataAdapter(myCommand);
					//SqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)

					sqlDA.Fill(result);

					return result;
				}
			}
		}

		public DataTable GetCountries()
		{
			// Create Instance of Connection and Command Object
			string strSQL = "select * from Country  order by country";
			using (SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("WebSQLDatabase"))) {
				using (SqlCommand myCommand = new SqlCommand(strSQL, myConnection)) {
					// Mark the Command as a SPROC
					myCommand.CommandType = CommandType.Text;

					DataTable result = new DataTable();

					myConnection.Open();
					SqlDataAdapter sqlDA = new SqlDataAdapter(myCommand);
					//SqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)

					sqlDA.Fill(result);
					return result;
				}
			}
		}


		public void UpdateContactHideOnWeb(int ContactID, int HideOnWeb)
		{
			//' Create Instance of Connection and Command Object
			SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("WebSQLDatabase"));
			string strSQL = "update ClientContact set wwwHideAccount=" + HideOnWeb.ToString() + " where ContactID=" + ContactID.ToString();
			SqlCommand myCommand = new SqlCommand(strSQL, myConnection);

			//' Mark the Command as a SPROC
			myCommand.CommandType = CommandType.Text;


			//' Open the connection and execute the Command
			myConnection.Open();
			myCommand.ExecuteNonQuery();
			myConnection.Close();

		}

		public bool DisplayCustomerOnWeb(string Email, int ContactID)
		{
			//' Create Instance of Connection and Command Object
			SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("WebSQLDatabase"));
			SqlCommand myCommand = new SqlCommand("select * from ClientContact where email='" + Email + "' order by DateCreated desc", myConnection);

			//' Mark the Command as a SPROC
			myCommand.CommandType = CommandType.Text;


			DataTable result = new DataTable();
			myConnection.Open();
			SqlDataAdapter sqlDA = new SqlDataAdapter(myCommand);
			//SqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)

			sqlDA.Fill(result);

			int HideOnWeb = 0;
			if (result.Rows.Count > 0) {
				int.TryParse(result.Rows[0]["contactid"].ToString(), out ContactID);
				int.TryParse(Convert.ToString(result.Rows[0]["wwwhideaccount"]), out HideOnWeb);
			}

			if (HideOnWeb == 0) {
				return true;
			} else {
				return false;
			}

		}


		public void UpdateContactCurrency(int ContactID, string currencyid)
		{
			//' Create Instance of Connection and Command Object
			SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("WebSQLDatabase"));
			string strSQL = "update ClientContact set currencyid='" + currencyid + "' where ContactID=" + ContactID.ToString();
			SqlCommand myCommand = new SqlCommand(strSQL, myConnection);

			//' Mark the Command as a SPROC
			myCommand.CommandType = CommandType.Text;


			//' Open the connection and execute the Command
			myConnection.Open();
			myCommand.ExecuteNonQuery();
			myConnection.Close();

		}

		public string GetContactCurrency(int ContactID)
		{

			//' Create Instance of Connection and Command Object
			SqlConnection myConnection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("WebSQLDatabase"));
			string strSQL = "select currencyid from ClientContact where ContactID=" + ContactID.ToString();
			SqlCommand myCommand = new SqlCommand(strSQL, myConnection);

			//' Mark the Command as a text
			myCommand.CommandType = CommandType.Text;

			DataTable result = new DataTable();
			myConnection.Open();
			SqlDataAdapter sqlDA = new SqlDataAdapter(myCommand);
			//SqlDataReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection)

			sqlDA.Fill(result);

			string CurrencyId = ShopHelper.DefaultCurrency();
			if (result.Rows.Count > 0) {
				CurrencyId = result.Rows[0]["currencyid"].ToString();
			}

			return CurrencyId;
		}

		public string GetProdImage(string ProdID)
		{
			DataTable result = new SSWMT.ShoppingCartDB().GetProdAndCategoryFromProdID(ProdID);

			if ((result != null)) {
				if ((result.Rows.Count > 0)) {
					if ((result.Rows[0]["Image"] != null)) {
						if (!string.IsNullOrEmpty(result.Rows[0]["Image"].ToString().Trim())) {
							string logoImage = result.Rows[0]["Image"].ToString().Trim();
							string productBoxImage = logoImage.Substring(0, logoImage.LastIndexOf("."));
							productBoxImage = productBoxImage + "_thumb" + logoImage.Substring(logoImage.LastIndexOf("."));
							return "<img src='" + productBoxImage + "' title='" + ProdID + "' alt='" + result.Rows[0]["ProdName"].ToString().Trim() + "' />";
						}
					}
				}
			}

			return "";
		}
	}

}
