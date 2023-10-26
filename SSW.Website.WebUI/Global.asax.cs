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

using System.Web.Routing;
using System.Web.Http;
using System.Web.Optimization;
using Microsoft.ApplicationInsights;
using System.Web.Mvc;
using System.Web.Configuration;
using App_Start.ApplicationInsights;
using System.Net;

public class Global_asax : HttpApplication
{
    private const string HashTableName = "LoggedInMembers";

    public void Application_Start(object sender, EventArgs e)
    {
//#if !DEBUG
//        var config = WebConfigurationManager.OpenWebConfiguration("~");
//        DpapiUtils.EncryptSections(config, new string[]
//            {
//                "connectionStrings",
//                "appSettings",
//                "applicationSettings/My.MySettings",
//                "applicationSettings/SSW.Website.zsValidate.WebUI.Properties.Settings"
//            });
//#endif

        Application["ActiveUsers"] = 0;

        // Now with Routing
        RouteTable.Routes.Clear();
        GlobalConfiguration.Configure(WebApiConfig.Register);
        FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);
    }

    protected string MyGetConnectionString(EventArgs e, ref bool isSqlConnection)
    {
        // You must assign isSqlConnectionB to true or false
        // depending on if your connection string is a Sql or OleDb database
        // You must return a string containing the connection string
        // EventArgs will be empty
        isSqlConnection = true;
        return ConfigurationManager.AppSettings[Environment.MachineName + "_PollConnectionString"];
    }


    public void Session_Start(object sender, EventArgs e)
    {
        // putting a try catch around it as malformed hacks are causing System.UriFormatException
        try
        {
            //James Zhou 5/03/2008: added referrer tracking code
            //The session variables will be saved when users sign in (Shop/Login.aspx.vb)
            if (Request.UrlReferrer != null)
            {
                bool isTracked = true;
                if (Request.UrlReferrer.Host.IndexOf("www.ssw.com.au", StringComparison.Ordinal) >= 0)
                {
                    isTracked = false;
                    //Ignore general intenral referrer
                    if (
                        Request.UrlReferrer.OriginalString.IndexOf("http://www.ssw.com.au/ssw/Redirect/GoogleAds/",
                            StringComparison.Ordinal) >= 0)
                    {
                        isTracked = true;
                        //Track Google Paid Ad redirection page
                    }
                }
                if (isTracked)
                {
                    if (Session["Referrer_Url"] == null)
                    {
                        Session.Add("Referrer_Url", Request.UrlReferrer.OriginalString);
                    }
                    if (Session["Referrer_Info"] == null)
                    {
                        IRefer referrer = ReferrerFactory.BuildReferrer(Request.UrlReferrer);
                        if ((referrer != null))
                        {
                            string referrerKeyword = referrer.ParseReferrerInfo(Request.UrlReferrer);
                            if ((referrerKeyword != null))
                            {
                                Session.Add("Referrer_Info", referrer.ReferrerName + " - " + referrerKeyword);
                            }
                            else
                            {
                                string referrerPaidAd = referrer.ParsePaidAdInfo(Request.UrlReferrer);
                                if ((referrerPaidAd != null))
                                {
                                    Session.Add("Referrer_Info", referrer.ReferrerName + " Paid Ad - " + referrerPaidAd);
                                }
                            }
                        }
                    }
                }
            }
        }
        catch (UriFormatException exception)
        {
            var ai = new TelemetryClient();
            var additionalProperties = new Dictionary<string, string>();
            var urlReferrer = Request.Headers["Referer"];
            additionalProperties.Add("Headers['Referer']", urlReferrer);
            ai.TrackException(exception, additionalProperties);
        }

        // Fires when the session is started
        Application.Lock();
        Application["ActiveUsers"] = Convert.ToInt32(Application["ActiveUsers"]) + 1;

        if (Membership.GetUser() != null)
        {
            string UserEmail = Membership.GetUser().Email;
            if (!string.IsNullOrEmpty(UserEmail))
            {
                //Add to hash table - Application variable for Members count on left nav by PA 17/1/05
                Hashtable ht = null;
                ht = (Hashtable)Application[HashTableName];
                if (ht == null)
                {
                    ht = new Hashtable();
                }
                if (!ht.ContainsKey(UserEmail))
                {
                    //Check email address
                    ht.Add(UserEmail, "");
                }
                Application[HashTableName] = ht;
            }
        }

        Application.UnLock();
    }

    public void Application_BeginRequest(object sender, EventArgs e)
    {
        SSW.SSWMT.GlobalFunctions.FixSiteURL();
    }

    public void Application_AuthenticateRequest(object sender, EventArgs e)
    {
        // Fires upon attempting to authenticate the use
    }

    public void Application_Error(object sender, EventArgs e)
    {
        // First check it if is an AXD, internal or 404 error. Then handle it before it is reported as an Exception.

        //EL 18/12/2009: Ignore the trace.axd?id=xxx errors
        //trace.axd are requested by some asp.net controls, it is only valid when the page is loading, but invalid later
        //Usually these trace.axd are requested by google bot cache refresh
        if (Request.Path.Contains(".axd"))
        {
            Server.ClearError();
            return;
        }

        Exception objLastError = Server.GetLastError();
        //EL 12/05/2010 Detect by response code
        if (objLastError is HttpException)
        {
            if (Request.Url.AbsolutePath.ToString().ToLower().StartsWith("/ssw/standardsinternal/inductiontraining/"))
            {
                Server.ClearError();
                Response.Redirect("/SSW/StandardsInternal/InductionTraining/default.aspx");
                return;
            }
            if (((HttpException)objLastError).GetHttpCode() == 404)
            {
                Server.ClearError();
                Server.Transfer("/ssw/SSWCustomError404.aspx");
                return;
            }
        }


        // Now that special cases are handled, log it as an Exception in App Insights
        // Raygun has also been configured in web.config to log exceptions to Raygun automatically
        // https://app.raygun.com/crashreporting/iushhj?#active

        // send to Application Insights
        if (HttpContext.Current.IsCustomErrorEnabled && Server.GetLastError() != null)
        {
            var ai = new TelemetryClient(); // or re-use an existing instance           
            ai.TrackException(Server.GetLastError());
        }


        //*********************************************************************************
        // --- Send an email to SSW Error Log ---
        // NOTE: 2019-06-20: Sending mail to SSWErrorLog@ssw.com.au has been disabled by setting the "mode" to be 'off' in the web.config
        // see: <exceptionManagement> section of web.config
        // So eventhough all the data is being set in "additionalInfo" below, this information will NOT be sent by email.
        // See information about the Microsoft.ExceptionManagement ApplicationBlocks that is
        // used by SSW.Framework.ExceptionManagement here : https://www.codemag.com/article/0211131/Microsoft-Exception-Management-Application-Blocks
        //*********************************************************************************

        System.Collections.Specialized.NameValueCollection additionalInfo = new System.Collections.Specialized.NameValueCollection();
        additionalInfo.Add("Subject", "SSW Website Error - " + Request.Url.ToString().ToLower());
        additionalInfo.Add("", ExceptionHelper.GetErrorLogEmailHeader());
        // get error log email body header
        additionalInfo.Add("Error In Page: ", Request.Url.ToString());
        additionalInfo.Add("Server Name: ", Request.ServerVariables["SERVER_NAME"]);
        additionalInfo.Add("Server IP Address: ", Request.ServerVariables["LOCAL_ADDR"]);
        if ((Request.UrlReferrer != null))
        {
            additionalInfo.Add("Referring URL: ", Request.UrlReferrer.ToString());
            string strUrlReferrer = Request.UrlReferrer.ToString().ToLower();
            if (strUrlReferrer.IndexOf("ssw.com.au") == -1 & strUrlReferrer.IndexOf("//zoo") == -1 & strUrlReferrer.IndexOf("//skunk") == -1 & strUrlReferrer.IndexOf("//seal") == -1)
            {
                additionalInfo.Add("Warning Only: ", "(bad link outside our site probably not worth fixing)");
            }
        }
        else
        {
            additionalInfo.Add("Referring URL: ", "not available");
        }
        additionalInfo.Add("Browser: ", Request.Browser.Browser);
        additionalInfo.Add("Browser Version: ", Request.Browser.Version);

        var membershipUser = Membership.GetUser();
        if (membershipUser != null && !string.IsNullOrEmpty(membershipUser.Email))
        {
            additionalInfo.Add("Client Email: ", Membership.GetUser().Email);
        }

        additionalInfo.Add("Client IP Address: ", Request.ServerVariables["REMOTE_ADDR"]);

        // *************************************************************************
        // JKZ - 16/10/2006
        // our website forbid to download some kind of files, eg. *.vb, *.cs, *.mdb
        // someone want to access the files which are forbidden, 
        // but it will general a server error which need not to be processed
        // So it need not send an email
        string strUrlRequest = Request.Url.ToString().ToLower();
        bool bNeedSendEmail = true;
        string strFileName = "";
        string strExtName = "";
        if (strUrlRequest.IndexOf("?") > 0)
        {
            strUrlRequest = strUrlRequest.Substring(0, strUrlRequest.IndexOf("?"));
        }
        if (strUrlRequest.Substring(strUrlRequest.Length - 1) == "/")
        {
            strUrlRequest = strUrlRequest.Substring(0, strUrlRequest.Length - 1);
        }
        strFileName = strUrlRequest.Substring(strUrlRequest.LastIndexOf("/") + 1).ToLower();
        if (strFileName.IndexOf(".") > 0)
        {
            strExtName = strFileName.Substring(strFileName.LastIndexOf(".") + 1);
        }
        if (strExtName == "vb" | strExtName == "cs" | strExtName == "mdb" | strExtName == "sitemap" | strExtName == "resx" | strExtName == "ascx" | strExtName == "asmx" | strExtName == "resources" | strExtName == "config" | strExtName == "csproj" | strExtName == "vbproj")
        {
            bNeedSendEmail = false;
        }
        //the page /zsvalidate/Configuration/TestError.aspx is a test page who always throw exception
        //If strUrlRequest.IndexOf("/zsvalidate/configuration/testerror.aspx") >= 0 Then
        //    bNeedSendEmail = False
        //End If
        // ignore exception happened in showfileicon.aspx 
        if (strUrlRequest.IndexOf("showfileicon.aspx") >= 0)
        {
            bNeedSendEmail = false;
        }

        // NOT record exception from localhost or while debugging
#if DEBUG
		if (Request.IsLocal) {
			bNeedSendEmail = false;
		}
#endif

        // Only record the Exception from internal/AU/US server
        if (strUrlRequest.IndexOf("ssw.com.au") == -1 & strUrlRequest.IndexOf("//skunk") == -1 & strUrlRequest.IndexOf("//seal") == -1 & strUrlRequest.IndexOf("//zoo") == -1)
        {
            bNeedSendEmail = false;
        }

        // bugs in the Third Part Tools, cannot to be resolve until the new version fix the bugs
        if (objLastError.ToString().ToLower().IndexOf("\\aspnet_client\\freetextbox\\languages\\") > 0)
        {
            bNeedSendEmail = false;
        }
        // this error is only generated if you navigate quickly through the web application. 
        // that means, if you press an postback control before the whole page is loaded/rendered, 
        // then you get this posted error. if you wait until the whole page has finished rendering, 
        // then the postback generates no errors.
        if (objLastError.ToString().ToLower().IndexOf("validation of viewstate mac failed") > 0 | objLastError.ToString().ToLower().IndexOf("invalid viewstate") > 0 | objLastError.ToString().ToLower().IndexOf("invalid postback or callback argument") > 0)
        {
            bNeedSendEmail = false;
        }
        //
        if (objLastError.ToString().ToLower().IndexOf("a potentially dangerous request.form") > 0 & strUrlRequest.ToLower().IndexOf("/ssw/default.aspx") > 0)
        {
            bNeedSendEmail = false;
        }

        if (bNeedSendEmail)
        {
            ExceptionHelper.LogError(objLastError, additionalInfo);
        }

        //*********************************************************************************




        // Move this error to the error page so i can get the error message        
        if (!Convert.ToBoolean(SSW.SSWMT.GlobalFunctions.GetWebConfigString("DisableCustomError")))
        {
            // Sometimes there is no inner exception.
            Exception exception = objLastError.InnerException ?? objLastError;            
            Server.Transfer("~/ErrorPage.aspx?ErrType=" + exception.GetType().ToString() + "&ErrMsg=" + exception.Message) ;
        }

    }

    public void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

        // Decrease the active visitors count when the session ends.
        Application.Lock();
        Application["ActiveUsers"] = Convert.ToInt32(Application["ActiveUsers"]) - 1;

        try
        {

            Hashtable ht = new Hashtable();
            ht = (Hashtable)Application[HashTableName];
            if ((ht != null) & (Membership.GetUser() != null))
            {
                string UserEmail = string.Empty;
                UserEmail = Membership.GetUser().Email;
                if (ht.ContainsKey(UserEmail))
                {
                    ht.Remove(UserEmail);
                    Application[HashTableName] = ht;
                }
            }

        }
        catch (Exception ex)
        {
        }

        Application.UnLock();
    }

    public void Application_End(object sender, EventArgs e)
    {
        System.Web.HttpRuntime runtime = null;
        runtime = (HttpRuntime)typeof(System.Web.HttpRuntime).InvokeMember("_theRuntime", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Static | System.Reflection.BindingFlags.GetField, null, null, null);

        if ((runtime == null))
        {
            return;
        }

        string shutDownMessage = Convert.ToString(runtime.GetType().InvokeMember("_shutDownMessage", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.GetField, null, runtime, null));
        string shutDownStack = Convert.ToString(runtime.GetType().InvokeMember("_shutDownStack", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.GetField, null, runtime, null));

        if ((!System.Diagnostics.EventLog.SourceExists(".NET Runtime")))
        {
            System.Diagnostics.EventLog.CreateEventSource(".NET Runtime", "Application");
        }

        System.Diagnostics.EventLog log = new System.Diagnostics.EventLog();
        log.Source = ".NET Runtime";
        log.WriteEntry(string.Format("\\r\\n\\r\\n_shutDownMessage={0}\\r\\n\\r\\n_shutDownStack={1}", shutDownMessage, shutDownStack), System.Diagnostics.EventLogEntryType.Error);

    }

    private static void CheckAndEncryptConnectionString()
    {
        //Opens the web.config file as a Configuration object 
        var config = WebConfigurationManager.OpenWebConfiguration("~");

        bool isDirty = false;
        string[] sectionKeys = { "connectionStrings", "appSettings", "applicationSettings" };
        foreach (var sectionKey in sectionKeys)
        {
            // Get the connectionStrings section. 
            var section = config.GetSection(sectionKey);
            var sg = config.GetSectionGroup("applicationSettings");
            
            //Ensures that the section is not already protected 
            if (section.SectionInformation.IsProtected) continue;

            //Uses the Windows Data Protection API (DPAPI) to encrypt the 
            //configuration section using a machine-specific secret key 
            section.SectionInformation.ProtectSection("DataProtectionConfigurationProvider");
            isDirty = true;
        }

        if (isDirty)
        {
            config.Save();

            foreach (var sectionKey in sectionKeys)
            {
                ConfigurationManager.RefreshSection(sectionKey);
            }
        }

        string tfsServer = ConfigurationManager.AppSettings["TFSServer"];
    }


}
