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
using SSW.Framework.ExceptionManagement;
public class ExceptionHelper
{
	public static string GetErrorLogEmailHeader()
	{
		//if ((My.Resources.Resources.ResourceManager.GetString("ErrorLogEmailBodyHead") != null)) {
		//	//get the resource string - right click this project in VS and go to Resources tab
		//	return My.Resources.Resources.ResourceManager.GetString("ErrorLogEmailBodyHead");
		//} else {
			return string.Empty;
		//}
	}

	public static void LogError(Exception ex, NameValueCollection additionalInfo)
	{
		// use the exception publisher configured in web.config - we use mail publisher 
		Microsoft.ApplicationBlocks.ExceptionManagement.ExceptionManager.Publish(ex, additionalInfo);
	}
}
