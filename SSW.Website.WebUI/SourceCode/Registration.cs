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

	public class Registration
	{


		SSWWebServiceRegistration.Registration objRegistrationWebService = new SSWWebServiceRegistration.Registration();

		public Registration()
		{
			objRegistrationWebService.Url = SSW.SSWMT.GlobalFunctions.GetWebConfigString("WebServiceURLRegistration");
			System.Net.NetworkCredential networkCredential = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["WebServiceUserName"], ConfigurationManager.AppSettings["WebServicePassword"], ConfigurationManager.AppSettings["WebServiceDomain"]);
			objRegistrationWebService.Credentials = networkCredential;

		}



		public void Log(string category, int customerID, string productName, string pcID)
		{
			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					objRegistrationWebService.ClientDiaryInsertWithClientTime(customerID, category, "0", productName, string.Empty, pcID, "INTER/Internet Registration", DateTime.Now);

					return;
					//SSW Code Auditor - Ignore next line 
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}


		public SSWWebServiceRegistration.clsRegistrationInfo GetProdRegistrationInfo(int customerID, string productName)
		{

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					return objRegistrationWebService.ProdRegistrationInfo(productName, customerID);
					//SSW Code Auditor - Ignore next line 
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}



	}

}
