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

namespace SSW.SSWMT
{


	//*******************************************************
	//
	// OrderDetails Class
	//
	// A simple data class that encapsulates details about
	// a particular order inside the SSW Orders
	// database.
	//
	//*******************************************************
	public class zzOrderDetails
	{

		public DateTime OrderDate;
		public DateTime ShipDate;
		public decimal OrderTotal;

		public DataSet OrderItems;
	}

	//*******************************************************
	//
	// OrderHistoryDB Class
	//
	// Business/Data Logic Class that encapsulates all data
	// logic necessary to query past orders within the
	// SSW Orders database.
	//
	//*******************************************************
	public class OrdersDB
	{

		//*******************************************************
		//
		// CustomerDB.GetCustomerOrders()
		//
		// The GetCustomerOrders method returns a struct containing
		// a forward-only, read-only DataReader.  This displays a list of all
		// past orders placed by a specified customer.
		// The SQLDataReaderResult struct also returns the SQL connection,
		// which must be explicitly closed after the data from the DataReader
		// is bound into the controls.
		//
		//*******************************************************
		public SqlDataReader zzGetCustomerOrders(string customerID)
		{

			// Create Instance of Connection and Command Object
			 
			SqlConnection myConnection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
			SqlCommand myCommand = new SqlCommand("OrdersList", myConnection);

			// Mark the Command as a SPROC
			myCommand.CommandType = CommandType.StoredProcedure;

			// Add Parameters to SPROC
			SqlParameter parameterCustomerid = new SqlParameter("@CustomerID", SqlDbType.Int, 4);
			parameterCustomerid.Value = Convert.ToInt32(customerID);
			myCommand.Parameters.Add(parameterCustomerid);

			// Execute the command
			try {
				myConnection.Open();
				SqlDataReader result = myCommand.ExecuteReader(CommandBehavior.CloseConnection);
				// Return the datareader result
				return result;
			} finally {
				myConnection.Close();
			}

		}

		//*******************************************************
		//
		// OrdersDB.GetOrderDetails()
		//
		// The GetOrderDetails method returns an OrderDetails
		// struct containing information about the specified
		// order.
		//
		//*******************************************************
		//Public Function zzGetOrderDetails(ByVal orderID As Integer) As String  'As OrderDetails

		//    ' Create Instance of Connection and Command Object
		//    Dim myConnection As SqlConnection = New SqlConnection(ConfigurationManager.AppSettings("ConnectionString"))
		//    Dim myCommand As SqlDataAdapter = New SqlDataAdapter("OrdersDetail", myConnection)

		//    ' Mark the Command as a SPROC
		//    myCommand.SelectCommand.CommandType = CommandType.StoredProcedure

		//    ' Add Parameters to SPROC
		//    Dim parameterOrderID As SqlParameter = New SqlParameter("@OrderID", SqlDbType.Int, 4)
		//    parameterOrderID.Value = orderID
		//    myCommand.SelectCommand.Parameters.Add(parameterOrderID)

		//    Dim parameterOrderDate As SqlParameter = New SqlParameter("@OrderDate", SqlDbType.DateTime, 8)
		//    parameterOrderDate.Direction = ParameterDirection.Output
		//    myCommand.SelectCommand.Parameters.Add(parameterOrderDate)

		//    Dim parameterShipDate As SqlParameter = New SqlParameter("@ShipDate", SqlDbType.DateTime, 8)
		//    parameterShipDate.Direction = ParameterDirection.Output
		//    myCommand.SelectCommand.Parameters.Add(parameterShipDate)

		//    Dim parameterOrderTotal As SqlParameter = New SqlParameter("@OrderTotal", SqlDbType.Money, 8)
		//    parameterOrderTotal.Direction = ParameterDirection.Output
		//    myCommand.SelectCommand.Parameters.Add(parameterOrderTotal)

		//    ' Create and Fill the DataSet
		//    Dim myDataSet As DataSet = New DataSet()
		//    myCommand.Fill(myDataSet, "OrderItems")

		//    ' Create and Populate OrderDetails Struct using
		//    ' Output Params from the SPROC, as well as the
		//    ' populated dataset from the SqlDataAdapter

		//    'Dim myOrderDetails As OrderDetails = New OrderDetails()

		//    'myOrderDetails.OrderDate = CType(parameterOrderDate.Value, DateTime)
		//    'myOrderDetails.ShipDate = CType(parameterShipDate.Value, DateTime)
		//    'myOrderDetails.OrderTotal = CType(parameterOrderTotal.Value, Decimal)
		//    'myOrderDetails.OrderItems = myDataSet

		//    ' Return the DataSet
		//    'Return myOrderDetails

		//End Function

		//*******************************************************
		//
		// OrdersDB.CalculateShippingDate()
		//
		// The CalculateShippingDate method would be where you would
		// place all of the code necessary to calculate the shipping
		// ETA.  For now, we are just making up a random date.
		//
		//*******************************************************
		public DateTime zzCalculateShippingDate(string customerID, string cartID)
		{

			Random x = new Random();
			double myrandom = Convert.ToDouble(x.Next(0, 3));
			return DateTime.Now.AddDays(myrandom);

		}

		//*******************************************************
		//
		// OrdersDB.PayByCreditCard()
		//
		// The PayByCreditCard() method uses SSW.WebService.PaymentService
		//
		//*******************************************************
		public SSWWebServicePaymentSystem.PaymentResult PayByCreditCard(string creditCardNumber, string cvv, string expMonth, string expYear, int orderNumber, decimal totalPrice, decimal gstTax)
		{
			creditCardNumber = this.CleanUpEnteredString(creditCardNumber);

			SSWWebServicePaymentSystem.PaymentSystem payment = new SSWWebServicePaymentSystem.PaymentSystem();
		    payment.Url = SSW.SSWMT.GlobalFunctions.GetWebConfigString("SecurePayUrl");
			payment.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["WebServiceUserName"], ConfigurationManager.AppSettings["WebServicePassword"], ConfigurationManager.AppSettings["WebServiceDomain"]);
			//payment.PreAuthenticate = True

			SSWWebServicePaymentSystem.CreditCardDetails cardDetails = new SSWWebServicePaymentSystem.CreditCardDetails();
			cardDetails.CreditCardNumber = CardEncryption.Encrypt(creditCardNumber);
			cardDetails.VerificationNumber = cvv;
			cardDetails.ExpiryMonth = expMonth;
			cardDetails.ExpiryYear = expYear;

			SSWWebServicePaymentSystem.OrderInfo orders = new SSWWebServicePaymentSystem.OrderInfo();
			orders.OrderNumber = orderNumber.ToString();
			orders.InvoiceID = orderNumber.ToString();

			SSWWebServicePaymentSystem.PaymentDetails payDetails = new SSWWebServicePaymentSystem.PaymentDetails();
			decimal dciTotalPriceIncGST = totalPrice + (totalPrice * gstTax);
			payDetails.Currency = SSWWebServicePaymentSystem.CurrencyType.AUD;
			payDetails.Amount = System.Decimal.ToDouble(dciTotalPriceIncGST);

			// Do NOT call the webservice 3 times.. If it is down then we can do it manualy.
			// Dont think client would be impressed if we charged them 3 times
			//Dim expLast As New Exception()
			//Dim i As Integer
			//For i = 0 To 3
			//    Try
			//        ' Try to call Webservice 3 times.
			//        Return payment.SubmitPayment(cardDetails, payDetails, orders)

			//    Catch exp As System.Web.Services.Protocols.SoapException
			//        expLast = exp
			//    End Try
			//Next
			//Throw expLast

			return payment.SubmitPayment(cardDetails, payDetails, orders);

		}

		//*******************************************************
		//
		// OrdersDB.PlaceOrder()
		//
		// The PlaceOrder method places an order within the
		// IBuySpy Orders Database and then clears out the current
		// items within the shopping cart.
		//
		//*******************************************************
		public int PlaceOrder(DataTable dtCart,string customerID, decimal dciTotalPriceExGST, decimal dciGSTPercent, string strNote)
		{

            //SSWMT.ShoppingCartDB cart = new SSWMT.ShoppingCartDB();

            //// Populate datagrid with shopping cart data
            //DataSet dsCart = cart.GetItemsOrder(customerID);
            var dsCart = new DataSet();
            dsCart.Tables.Add(dtCart);
			SSWWebServiceContact.Contact objCustomerWebService = new SSWWebServiceContact.Contact();
			objCustomerWebService.Url = SSW.SSWMT.GlobalFunctions.GetWebConfigString("WebServiceURL");

			System.Net.NetworkCredential networkCredential = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["WebServiceUserName"], ConfigurationManager.AppSettings["WebServicePassword"], ConfigurationManager.AppSettings["WebServiceDomain"]);
			objCustomerWebService.Credentials = networkCredential;

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					return objCustomerWebService.ClientSubmitOrder(Convert.ToInt32(customerID), dsCart, dciTotalPriceExGST, dciGSTPercent, strNote);
					//SSW Code Auditor - Ignore next line 
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}


		//*******************************************************
		//
		// OrdersDB.PlaceOrder()
		//
		// The PlaceOrder method places an order within the
		// IBuySpy Orders Database and then clears out the current
		// items within the shopping cart.
		//
		//*******************************************************
		public bool ClientOrderConfirmationEmail(DataSet dsProducts, decimal dciGSTPercent, decimal dciTotalPrice, int intInvoiceNumber, string strPaymentMethod, string strToName, string strEmailAddress, string strInvoiceAddress)
		{

			SSWWebServiceContact.Contact objCustomerWebService = new SSWWebServiceContact.Contact();
			objCustomerWebService.Url = SSW.SSWMT.GlobalFunctions.GetWebConfigString("WebServiceURL");

			System.Net.NetworkCredential networkCredential = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["WebServiceUserName"], ConfigurationManager.AppSettings["WebServicePassword"], ConfigurationManager.AppSettings["WebServiceDomain"]);
			objCustomerWebService.Credentials = networkCredential;

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					return objCustomerWebService.ClientOrderConfirmationEmail(dsProducts, dciGSTPercent, dciTotalPrice, intInvoiceNumber, strPaymentMethod, strToName, strEmailAddress, strInvoiceAddress);
					//SSW Code Auditor - Ignore next line 
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}




		//*******************************************************
		//
		// Credit Card Validation
		//
		//   Mod 10 Rules
		//   The rules for a Mod 10 check: 
		//       The credit card number must be between 13 and 16 digits. 
		//       The credit card number must start with: 
		//           4 for Visa Cards 
		//           37 for American Express Cards 
		//           5 for MasterCards 
		//       If the credit card number is less then 16 digits add zeros to the beginning to make it 16 digits. 
		//       Multiply each digit of the credit card number by the corresponding digit of the mask, and sum the results together. Once all the results are summed divide by 10, if there is no remainder then the credit card number is valid.
		//
		//*******************************************************

		public enum CreditCardType
		{
			AmericanExpress = 1,
			MasterCard = 2,
			Visa = 3
		}

		public bool ValidateCreditCardNumber(string CCNumber, CreditCardType CCType)
		{
			string strNumOnly = null;

			strNumOnly = CleanUpEnteredString(CCNumber);

			// Check for length . 13<=len<=16 is required.
			if (Strings.Len(strNumOnly) < 13 | Strings.Len(strNumOnly) > 16)
				return false;

			// Check for first one or two numbers..
			switch (CCType) {
				case  // ERROR: Case labels with binary operators are unsupported : Equality
CreditCardType.MasterCard:
					if (!(Strings.Left(strNumOnly, 1) == "5"))
						return false;
					break;
				case  // ERROR: Case labels with binary operators are unsupported : Equality
CreditCardType.Visa:
					if (!(Strings.Left(strNumOnly, 1) == "4"))
						return false;
					break;
				case  // ERROR: Case labels with binary operators are unsupported : Equality
CreditCardType.AmericanExpress:
					if (!(Strings.Left(strNumOnly, 2) == "37"))
						return false;
					break;
				default:
					return false;
			}

			strNumOnly = Strings.StrDup(16 - Strings.Len(strNumOnly), "0") + strNumOnly;
			return PerformMod10Validation(strNumOnly);
		}

		// Cleans ups the entered Number for hyphens, dashes and spaces.
		private string CleanUpEnteredString(string strCCNumber)
		{
			string strNumOnly = Strings.Trim(strCCNumber);
			strNumOnly.Replace("-", string.Empty);
			strNumOnly.Replace(" ", string.Empty);

			return strNumOnly;
		}

		// Performing MOD 10 validation on the credit card number entered.
		private bool PerformMod10Validation(string strCCNumber)
		{
			string strMask = "2121212121212121";
			int intSum = 0;
			int i = 0;

			for (i = 1; i <= Strings.Len(strMask); i++) {
				int iTemp = Convert.ToInt32(Strings.Mid(strMask, i, 1)) * Convert.ToInt32(Strings.Mid(strCCNumber, i, 1));
				intSum += Convert.ToInt32(((iTemp >= 10) ? iTemp - 9 : iTemp));
			}

			if ((intSum % 10) == 0) {
				return true;
			} else {
				return false;
			}
		}



	}


}
