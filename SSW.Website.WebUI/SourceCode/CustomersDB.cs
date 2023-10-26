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

namespace SSW.SSWMT
{

	public class CustomersDB
	{

		SSWWebServiceContact.Contact objCustomerWebService = new SSWWebServiceContact.Contact();

		System.Net.NetworkCredential networkCredential = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["WebServiceUserName"], ConfigurationManager.AppSettings["WebServicePassword"], ConfigurationManager.AppSettings["WebServiceDomain"]);
		public CustomersDB()
		{
			//objCustomerWebService.PreAuthenticate = True

			objCustomerWebService.Url = SSW.SSWMT.GlobalFunctions.GetWebConfigString("WebServiceURL");
			objCustomerWebService.Credentials = networkCredential;

			//objCustomerWebService.Proxy = System.Net.WebProxy.GetDefaultProxy()
		}

		public string GetCurrencyID(int ContactID)
		{

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					return objCustomerWebService.ClientContactCurrencyIDSelect(ContactID);
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

		public int GetConcurrency(int ContactID)
		{

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					string strConcurrency = objCustomerWebService.ClientContactConcurrencySelect(ContactID);
					if (strConcurrency.Length == 0) {
						return 0;
					} else {
						return Convert.ToInt32(strConcurrency);
					}
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}


		public void UpdateCurrencyID(int ContactID, string CurrencyID)
		{
			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					objCustomerWebService.ClientContactCurrencyIDUpdate(ContactID, CurrencyID);
					return;
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

		public void UpdateHideOnWeb(int ContactID, int HideOnWeb)
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
					objCustomerWebService.ClientContactHideOnWebUpdate(ContactID, HideOnWeb);
					return;
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

		public bool DisplayCustomerOnWeb(string Email, ref int ContactID)
		{

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					SSWWebServiceContact.clsContactHideOnWeb objContactHideOnWeb = objCustomerWebService.ClientContactHideOnWebSelect(Email);

					ContactID = objContactHideOnWeb.ContactID;

					if (objContactHideOnWeb.HideOnWeb == -1) {
						return false;
					} else if (objContactHideOnWeb.HideOnWeb == 0) {
						return true;
					}
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}


		public void UpdatePrimaryContact(int ContactID, int PrimaryContact)
		{
			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					objCustomerWebService.ClientContactPrimaryContactUpdate(ContactID, PrimaryContact);
					return;
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

		//*******************************************************
		//
		// CustomersDB.GetCustomerDetails()
		//
		// The GetCustomerDetails method returns a CustomerDetails
		// class that contains information about a specific
		// customer (name, email, etc).
		//
		//*******************************************************
		public SSWWebServiceContact.clsContactSmallDetails GetCustomerSmallDetails(int customerID)
		{

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					return objCustomerWebService.ClientSmallDetail(customerID);
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

		//*******************************************************
		//
		// CustomersDB.GetCustomerFullDetails()
		//
		// The GetCustomerFullDetails method returns a GetCustomerFullDetails
		// class that contains information about a specific
		// customer (name, email, address, etc).
		//
		//*******************************************************
		public SSWWebServiceContact.clsContactFullDetails GetCustomerFullDetails(int customerID)
		{

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					return objCustomerWebService.ClientDetail(customerID);
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

		//*******************************************************
		//
		// CustomersDB.SaveCustomerFullDetails()
		//
		// The SaveCustomerFullDetails method sends the inputted class 
		// to a web service back at the office ready to be updated.
		//
		//*******************************************************
		public string SaveCustomerFullDetails(int customerID, SSWWebServiceContact.clsContactFullDetails objCustomerFullDetails, ref bool bolConcurrencyCheck)
		{

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					return objCustomerWebService.ClientUpdate(customerID, objCustomerFullDetails, ref bolConcurrencyCheck).ToString();
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

		//*******************************************************
		//
		// CustomersDB.DeleteCustomerAccount()
		//
		// The DeleteCustomerAccount method sends the customerID 
		// to a web service back at the office and changes web account
		// to disabled.
		// It returns the true if one record was updated.
		//
		//*******************************************************
		public bool DeleteCustomerAccount(int customerID, string strHideAccountReason)
		{

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					int intReturn = objCustomerWebService.ClientRemove(customerID, strHideAccountReason);

					if (intReturn == 1) {
						return true;
					} else {
						return false;
					}
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

		//*******************************************************
		//
		// CustomersDB.SaveCustomerPassword()
		//
		// The SaveCustomerPassword method sends the customerID and password
		// to a web service back at the office and updates the customers record.
		// It returns the true if one record was updated.
		//
		//*******************************************************
		public bool SaveCustomerPassword(int customerID, string strPassword)
		{

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					int intRetrn = objCustomerWebService.ChangePassword(customerID, strPassword);

					if (intRetrn == 1) {
						return true;
					} else {
						return false;
					}
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

		//*******************************************************
		//
		// CustomersDB.GetCustomerProductIntrested()
		//
		// The GetCustomerProductIntrested method returns a DataView full 
		// of the SSW Products and also with a Column that is a 1 if this 
		// user already has it selected.
		//
		//*******************************************************
		public DataView GetCustomerProductIntrested(int customerID)
		{

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					DataSet objRetrn = objCustomerWebService.ClientProductInterested(customerID);
					return objRetrn.Tables[0].DefaultView;
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

		//*******************************************************
		//
		// CustomersDB.SaveCustomerProductIntrested()
		//
		// The SaveCustomerProductIntrested method sends the customerID 
		// and an ArrayList full of clsCustomerProductInterest objects to 
		// a web service back at the office and updates the customers record.
		//
		//*******************************************************

		public void SaveCustomerProductIntrested(int customerID, ArrayList aryProductSelect)
		{
			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					objCustomerWebService.ClientProductIntrestedUpdate(customerID, aryProductSelect.ToArray());
					return;
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

		//*******************************************************
		//
		// CustomersDB.Login()
		//
		// The Login method validates a email/password pair
		// against credentials stored in the customers database.
		// If the email/password pair is valid, the method returns
		// the "CustomerId" number of the customer.  Otherwise
		// it return a 0.
		//
		//*******************************************************
		public string Login(string strEmail, string strPassword, string strScreenRes, string strBrowser, string strNote, string referrerUrl, string referrerInfo)
		{

			Exception expLast = new Exception();
			int i = 0;

			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					int customerId = objCustomerWebService.ClientContactLoginSelect(strEmail, strPassword, strScreenRes, strBrowser, strNote, referrerUrl, referrerInfo);

					if (customerId == 0) {
						return null;
					} else {
						return customerId.ToString();
					}
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

		//*******************************************************
		//
		// CustomersDB.EmailAlreadyInDataBase()
		//
		// The EmailAlreadyInDataBase method validates a email address
		// against the email addresses in our database. If the email already 
		// exists in our database then it will return a 0
		//
		//*******************************************************
		public bool EmailAlreadyInDataBase(string strEmail)
		{

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					int intReturn = objCustomerWebService.ClientEmailExistSelect(strEmail);

					if (intReturn > 0) {
						return true;
					} else {
						return false;
					}
					//SSW Code Auditor - Ignore next line    
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

		//*******************************************************
		//
		// CustomersDB.SendPasswordReminderEmail()
		//
		// The SendPasswordReminderEmail method sends an email to 
		// the client with there password.
		//
		//*******************************************************
		public CoBool SendPasswordReminderEmail(string strEmail)
		{
			CoBool sCoBool = new CoBool();
			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					SSWWebServiceContact.CoBool sWebServiceCobool = new SSWWebServiceContact.CoBool();
					sWebServiceCobool = objCustomerWebService.SendPasswordReminderEmail(strEmail);
					sCoBool.IsSuccessful = sWebServiceCobool.IsSuccessful;
					sCoBool.FailMessage = sWebServiceCobool.FailMessage;
					return sCoBool;
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

		//*******************************************************
		//
		// CustomersDB.SendPasswordReminderEmail()
		//
		// The SendUpdateDetailsReminderEmail method sends an email to 
		// the client requesting them to update there details on the 
		// web sitewith there password.
		//
		//*******************************************************
		public bool SendUpdateDetailsReminderEmail(int customerID)
		{

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					return objCustomerWebService.ClientSendUpdateDetailsReminderEmail(customerID);
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

		

		public void InsertClientDiary(int customerID, string strCategoryID, string strDownloadID, string strDownloadVersionNo = "")
		{
			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					
					objCustomerWebService.ClientDiaryInsert(customerID, strCategoryID, strDownloadID, strDownloadVersionNo, "", "", "", "");
					return;
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}


		public void SetUserCookies(string strEmailAddress, string strFirstName, string strSurName, string strCountry)
		{
			//I want this to be fased out
			//Member exists. Set the Cookie
			HttpContext.Current.Response.Cookies["UserEmail"].Value = strEmailAddress;
			HttpContext.Current.Response.Cookies["UserEmail"].Expires = DateAndTime.Now.Date.AddDays(365);
			HttpContext.Current.Response.Cookies["UserEmail"].Path = "/";
			HttpContext.Current.Response.Cookies["SSWTimeProOnline"]["UserFirstName"] = strFirstName;
			HttpContext.Current.Response.Cookies["SSWTimeProOnline"].Expires = DateAndTime.Now.Date.AddDays(365);
			HttpContext.Current.Response.Cookies["SSWTimeProOnline"].Path = "/";
			HttpContext.Current.Response.Cookies["UserFirstName"].Value = strFirstName;
			HttpContext.Current.Response.Cookies["UserFirstName"].Expires = DateAndTime.Now.Date.AddDays(365);
			HttpContext.Current.Response.Cookies["UserFirstName"].Path = "/";
			HttpContext.Current.Response.Cookies["UserSurname"].Value = strSurName;
			HttpContext.Current.Response.Cookies["UserSurname"].Expires = DateAndTime.Now.Date.AddDays(365);
			HttpContext.Current.Response.Cookies["UserSurname"].Path = "/";

			HttpContext.Current.Response.Cookies["SSWLogin"].Expires = DateAndTime.Now.Date.AddDays(365);
			HttpContext.Current.Response.Cookies["SSWLogin"].Path = "/";

			HttpContext.Current.Response.Cookies["UserCountry"].Value = strCountry;
			HttpContext.Current.Response.Cookies["UserCountry"].Expires = DateAndTime.Now.Date.AddDays(365);
			HttpContext.Current.Response.Cookies["UserCountry"].Path = "/";
		}

		public const string sswInternalName = "SSWInternal";
		public void CheckSSWInternal(HttpContext context, Page CurrentPage)
		{
			if (context.User.Identity.Name == sswInternalName) {
				
				WebUtility.RedirectToMessagePage(CurrentPage.Response, context.Server.UrlEncode("You are currently logged on as a SSW Internal User, you have to <a href=\"/ssw/Shop/Login.aspx\">logoff</a> then sign in again to the SSW site to reset your UserID"));
			}
		}

		// == ClearUserCookies ==
		//   Unassociates session with a user.
		public void ClearUserCookies()
		{
			HttpContext.Current.Response.Cookies["UserEmail"].Value = string.Empty;
			HttpContext.Current.Response.Cookies["SSWTimeProOnline"]["UserFirstName"] = string.Empty;
			HttpContext.Current.Response.Cookies["UserFirstName"].Value = string.Empty;
			HttpContext.Current.Response.Cookies["UserSurname"].Value = string.Empty;
		}

		//*******************************************************
		//
		// CustomersDB.IsRegistered()
		//
		// The IsRegistered method returns a boolean that specifies
		// whether a client has registered a specific product or not
		// 
		//
		//*******************************************************
		public static bool IsRegistered(string productName, int customerID)
		{
			SSW.Framework.Registration.SSWWebService.clsRegistrationInfo regInfo = null;

			for (int i = 0; i <= 2; i++) {
				try {
					regInfo = SSW.Framework.Registration.WebServiceHelper.GetRegistrationService().ProdRegistrationInfo(productName, customerID);

					i = 2;
					//i need to add proper exception handling
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					if (i == 2)
						throw;
				}
			}

			if (regInfo == null | regInfo.UpgradeExpiryDate == Convert.ToDateTime("#12:00:00 AM#")) {
				return false;
			} else {
				return true;

			}

		}

		public string GetClientID(Int32 clientContactID)
		{
			return objCustomerWebService.GetClientID(clientContactID);
		}
		//*******************************************************
		//
		// CustomersDB.IsEmailDuplicated()
		//
		// Check if there're more than one records are using the same email address
		// If yes, then enable deleting function on ClientDetail page       
		// 
		// 
		//
		//*******************************************************
		public bool IsEmailDuplicated(string strEmail)
		{

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					int sEmailDuplication = objCustomerWebService.ClientEmailExistSelect(strEmail);
					if (sEmailDuplication > 1) {
						return true;
					} else {
						return false;
					}
					//SSW Code Auditor - Ignore next line
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

	}

}
