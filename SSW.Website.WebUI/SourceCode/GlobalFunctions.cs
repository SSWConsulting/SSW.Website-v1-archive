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
using System.Net.Mail;

namespace SSW.SSWMT
{

	public class GlobalFunctions
	{

		//Public Enum IconCode As Integer
		//    Info = 0
		//    Success = 1
		//    Fail = 2
		//End Enum

		//*******************************************************
		//
		// GlobalFunctions.SendEmail()
		//
		// This sub will send an email with the inputted data.
		//
		//*******************************************************
		public static void SendEmail(string strEmailMessage, string strEmailSubject, string strFrom, string strTo, bool bolHTMLFormat = false)
		{
			//SSW Code Auditor - Ignore next line 
			SendEmail(strEmailMessage, strEmailSubject, strFrom, strTo, MailPriority.Normal, bolHTMLFormat, "");
		}
		//SSW Code Auditor - Ignore next line 
		public static void SendEmail(string strEmailMessage, string strEmailSubject, string strFrom, string strTo, MailPriority pMailPriority, bool bolHTMLFormat = false, string strAttachmentPath = "")
		{
			string sTo = strTo.Trim();
			string sFrom = strFrom.Trim();
			string sSubject = strEmailSubject.Trim();
			string sBody = strEmailMessage.Trim();

			List<string> sAttachement = new List<string>();
			if (Strings.Trim(strAttachmentPath) != string.Empty) {
				sAttachement.Add(strAttachmentPath);
			}

			string sHost = Strings.Trim(SSW.SSWMT.GlobalFunctions.GetWebConfigString("SMTPMailServer"));


			//Whether to enable SMTPS
			string sEnableSMTPS = "OFF";
			string sEnableSMTPSSetting = GlobalFunctions.GetWebConfigString("UseSMTPS");
			if (sEnableSMTPSSetting != null && sEnableSMTPSSetting.Trim().Length > 0) {
				sEnableSMTPS = sEnableSMTPSSetting.ToUpper();
			}

			//Get port of SMTPS
			int sSMTPSPort = 0;
			string sSMTPSPortSetting = GlobalFunctions.GetWebConfigString("SMTPSPort");
			if (sSMTPSPortSetting != null) {
				int.TryParse(sSMTPSPortSetting, out sSMTPSPort);
			}


			//Call MailHelper to send message
			System.Net.NetworkCredential credential = new System.Net.NetworkCredential();
			credential.UserName = GlobalFunctions.GetWebConfigString("SMTP_SERVER_NOREPLY");
			credential.Password = GlobalFunctions.GetWebConfigString("SMTP_SERVER_PASSWORD");

            SSW.Framework.Utilities.MailHelper sMailHelper = new SSW.Framework.Utilities.MailHelper(sHost, credential);

            //Use SMTPS
            if (sEnableSMTPS.ToUpper().Equals("ON"))
            {
                sMailHelper.UseSMTPS = true;
                if (sSMTPSPort > 0)
                {
                    sMailHelper.SMTPSPort = sSMTPSPort;
                }
                else {
                    sMailHelper.SMTPSPort = 587;
                }
            }
         
            try
            {
               
                sMailHelper.SendMailMessage(sTo, sFrom, credential.UserName, null, null, sSubject, sBody, bolHTMLFormat, sAttachement.ToArray(), pMailPriority);
                //SSW Code Auditor - Ignore next line 
            }
            catch (Exception ex)
            {
                if (Strings.Trim(ex.Message) == "The transport lost its connection to the server.")
                {
                    // ignore this one
                }
                else {
                    throw;
                }
            }
        }



    
        public static int SetSelectedOnDropDown(System.Web.UI.WebControls.DropDownList pcboName, string pstrDropDownValue)
		{
			int i = 0;
			for (i = 0; i <= pcboName.Items.Count - 1; i++) {
				if (Convert.ToString(pcboName.Items[i].Value).ToLower().Trim() == pstrDropDownValue.ToLower().Trim()) {
					pcboName.SelectedIndex = i;
					return i;
				}
			}
			return -1;
		}
		//Dont use this in line html because we have user control for this - WebMessageBox.ascx by Peter Ahn on 01/02/2007
		//*******************************************************
		//
		// GlobalFunctions.MakeCustomMessage()
		//
		// This function will generate the generic error messages. 
		// It will return back the HTML that is needed to be placed on the page. 
		// This can be bound to a label.
		//
		//*******************************************************
		//Public Overloads Shared Function MakeCustomMessage(ByVal strMessageHeading As String, ByVal strMessageText As String) As String
		//    Return MakeCustomMessage(strMessageHeading, strMessageText, 315, IconCode.Info)
		//End Function

		//Public Overloads Shared Function MakeCustomMessage(ByVal strMessageHeading As String, ByVal strMessageText As String, ByVal intIconCode As IconCode) As String
		//    Return MakeCustomMessage(strMessageHeading, strMessageText, 315, intIconCode)
		//End Function

		//Public Overloads Shared Function MakeCustomMessage(ByVal strMessageHeading As String, ByVal strMessageText As String, ByVal intWidth As Integer) As String
		//    Return MakeCustomMessage(strMessageHeading, strMessageText, intWidth, IconCode.Info)
		//End Function

		//Public Overloads Shared Function MakeCustomMessage(ByVal strMessageHeading As String, ByVal strMessageText As String, ByVal intWidth As Integer, ByVal intIconCode As IconCode) As String
		//    Dim strReturnHTML As String = String.Empty
		//    Dim Icon As String = String.Empty

		//    If (intIconCode = IconCode.Info) Then 'infomation icon
		//        Icon = "/ssw/Images/ErrorMessage/error_info.gif"
		//    ElseIf (intIconCode = IconCode.Success) Then ' Success
		//        Icon = "/ssw/Images/ErrorMessage/success.gif"
		//    ElseIf (intIconCode = IconCode.Fail) Then ' Fail
		//        Icon = "/ssw/Images/ErrorMessage/error.gif"
		//    End If

		 
		//    strReturnHTML += Environment.NewLine & "<div id=""MsgboxTitleBarText"" style=""{position: relative; top: 0pt; left: 0pt;}"">" & Environment.NewLine
		 
		//    strReturnHTML += Environment.NewLine & "<table border=""0"" width=""" + intWidth.ToString + """  cellpadding=""0"" cellspacing=""0"">" & Environment.NewLine
		//    strReturnHTML += Environment.NewLine & "  <tr><td>" & Environment.NewLine
		 
		//    strReturnHTML += Environment.NewLine & "  <font face=""Verdana, Arial, Helvetica, sans-serif"" size=""2"" color=""#FFFFFF""><b>&nbsp;" & strMessageHeading.ToString & "</b></font>" & Environment.NewLine
		//    strReturnHTML += Environment.NewLine & "  </td></tr>" & Environment.NewLine
		//    strReturnHTML += Environment.NewLine & "</table></div>" & Environment.NewLine
		 
		//    strReturnHTML += Environment.NewLine & "<table border=""0"" width=""" + intWidth.ToString + """ bgcolor=""#CCCCCC"" cellpadding=""0"" cellspacing=""0"">" & Environment.NewLine
		//    strReturnHTML += Environment.NewLine & "  <tr>" & Environment.NewLine
		 
		//    strReturnHTML += Environment.NewLine & "    <td colspan=""2"" height=""16"">" & Environment.NewLine
		//    strReturnHTML += Environment.NewLine & "      <div id=""MsgboxTitleBarBackground"" style=""{height: 15pt}""><img id=""MsgboxTitleBarBackgroundImage"" src=""/ssw/Images/ErrorMessage/error_back.gif"" height=""100%"" width=""100%"" /></div>" & Environment.NewLine
		//    strReturnHTML += Environment.NewLine & "    </td>" & Environment.NewLine
		//    strReturnHTML += Environment.NewLine & "  </tr>" & Environment.NewLine
		//    strReturnHTML += Environment.NewLine & "  <tr>" & Environment.NewLine
		 
		//    strReturnHTML += Environment.NewLine & "    <td width=""47"" height=""28"">" & Environment.NewLine
		 
		//    strReturnHTML += Environment.NewLine & "      <div id=""errorimage"" align=""center""><img src=""" + Icon + """ width=""32"" height=""32"" /></div>" & Environment.NewLine
		//    strReturnHTML += Environment.NewLine & "    </td>" & Environment.NewLine
		//    strReturnHTML += Environment.NewLine & "    <td width=""*"" height=""28"">" & Environment.NewLine
		//    strReturnHTML += Environment.NewLine & "      <div id=""errortext"" align=""Left""><font face=""Verdana, Arial, Helvetica, sans-serif"" size=""2"">" & strMessageText.ToString & "</font></div>" & Environment.NewLine
		//    strReturnHTML += Environment.NewLine & "    </td>" & Environment.NewLine
		//    strReturnHTML += Environment.NewLine & "  </tr>" & Environment.NewLine
		//    strReturnHTML += Environment.NewLine & "</table>" & Environment.NewLine
		//    strReturnHTML += Environment.NewLine & "" & Environment.NewLine
		 
		//    strReturnHTML += Environment.NewLine & "<script language=""Javascript"">" & Environment.NewLine
		 
		//    strReturnHTML += Environment.NewLine & "	document.all(""MsgboxTitleBarText"").style.top = (parseInt (document.all(""MsgboxTitleBarText"").style.top) + parseInt (document.all(""MsgboxTitleBarBackground"").style.height)) + ""pt"";" & Environment.NewLine
		 
		//    strReturnHTML += Environment.NewLine & "	document.all(""MsgboxTitleBarText"").style.zIndex = (parseInt (document.all(""MsgboxTitleBarBackground"").style.zIndex) + 1);" & Environment.NewLine
		//    strReturnHTML += Environment.NewLine & "</script>" & Environment.NewLine

		//    Return strReturnHTML
		//End Function

		public static string GetWebConfigString(string StringName)
		{
			string strReturn = string.Empty;
			string strComputerName = System.Net.Dns.GetHostName();

			strReturn = ConfigurationManager.AppSettings[strComputerName.ToUpper() + "_" + StringName];

			if (strReturn == null || strReturn.Length == 0) {
				strReturn = ConfigurationManager.AppSettings[StringName];
			}

			// Use ANT by default if not settings are found...
			if (strReturn == null || strReturn.Length == 0) {
				strReturn = ConfigurationManager.AppSettings[ConfigurationManager.AppSettings["MasterServer"] + "_" + StringName];
			}

			return strReturn;
		}

		//*******************************************************
		//
		// GlobalFunctions.VersionNumber()
		//
		// This function will output the current version of the website.
		//
		//*******************************************************
		public static string VersionNumber()
		{
			string Output = null;
			Output = "8.9";
			// Version of the previous solution (Before .Net)
			Output = "9.0";
			// DH Move to .Net added Basket Page
			Output = "9.4";
			// DH did form validation on UpdateDetils.aspx page, merged main include files into one file.
			Output = "10.1";
			//DH A lot of work has been done in creating a web service to retrieve the users information from a web service at the office. 
			//                   These pages have been created:
			//                       BasketMigrate.aspx  This page will be shown if the user has items in there temporary shopping cart and then logs into the site. The user will have the option to Migrate the 2 shopping carts together or clear there old cart.
			//                       ClientDetail.aspx  This has been renamed from UpdateDetils.aspx. The page now accepts both update details and also new user registration.
			//                       ClientInterests.aspx  This page allows the user to select the SSW products that the user is interested in.
			//                       ClientPasswordChange.aspx  The user can change there password on this page. It is on a separate page because .Net cannot let you bind data to a password field on the main ClientDetails.aspx page.
			//                       ClientRemove.aspx  The user can decide to no longer be listed on SSW website. They can also enter a reason why.
			Output = "10.2";
			//DH A lot of work has been done in Implementing exchange rates in the website. 
			//                    You can display the price of our products for selected currencies. 
			//                    A web service was created in order to update these exchange rates. 
			//                    When a user orders on the site, there basket is sent to roo and an invoice is created.
			//                    The custom error message has been updated so it still displays correctly when it is centred.
			Output = "10.3";
			// DH fixing bugs while testing. Adding Overloads to some functions.

			return Output;
		}

		//*******************************************************
		//
		// IsMasterServer()
		//
		// This function show whether web server is mater or not. e.g. bee.
		//*******************************************************

		public static bool IsMasterServer()
		{
			string strComputerName = System.Net.Dns.GetHostName();
			if (strComputerName.ToUpper() == ConfigurationManager.AppSettings["MasterServer"].ToUpper()) {
				return true;
			} else {
				return false;
			}
		}



		public static void FixSiteURL()
		{
			string requestURL = HttpContext.Current.Request.Url.ToString();
			//Response.Redirect performs a 302 redirect which not friendly to search enginee
			//If requestURL.ToLower.StartsWith("http://ssw.com.au") Then
			//    HttpContext.Current.Response.Redirect(requestURL.ToLower.Replace("http://ssw.com.au", "http://www.ssw.com.au"))
			//    Return
			//End If

			string destUrl = SSW.Website.Common.RedirectHelper.NeedsRedirect(requestURL);
			if ((destUrl != null)) {
				SSW.Website.Common.RedirectHelper.RedirectUrl(HttpContext.Current.Response, destUrl);
			}

		}


	}

}
