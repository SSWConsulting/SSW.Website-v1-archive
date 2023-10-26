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
//Imports System.Data.SqlClient

namespace SSW.SSWMT
{
	public class CurrentStatusDB
	{
		SSWWebServiceCurrentStatus.CurrentStatus objCurrentStatusWebService = new SSWWebServiceCurrentStatus.CurrentStatus();

		System.Net.NetworkCredential networkCredential = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["WebServiceUserName"], ConfigurationManager.AppSettings["WebServicePassword"], ConfigurationManager.AppSettings["WebServiceDomain"]);
		public CurrentStatusDB()
		{
			//objCustomerWebService.PreAuthenticate = True
			objCurrentStatusWebService.Url = SSW.SSWMT.GlobalFunctions.GetWebConfigString("WebServiceCSURL");
			objCurrentStatusWebService.Credentials = networkCredential;
			// objCustomerWebService.Proxy = System.Net.WebProxy.GetDefaultProxy()
		}


		public string getClientID(string ClientID)
		{

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					return objCurrentStatusWebService.getClientID(ClientID);
					//SSW Code Auditor - Ignore next line 
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}

		public DataSet getClientStatus(string ClientID)
		{

			Exception expLast = new Exception();
			int i = 0;
			for (i = 0; i <= 3; i++) {
				try {
					// Try to call Webservice 3 times.
					return objCurrentStatusWebService.getClientStatus(ClientID);
					//SSW Code Auditor - Ignore next line 
				} catch (Exception ex) {
					expLast = ex;
				}
			}

			throw expLast;
		}


	}
}
