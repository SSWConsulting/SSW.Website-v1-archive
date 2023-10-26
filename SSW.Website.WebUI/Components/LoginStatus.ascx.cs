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
namespace SSW.Website.WebUI.Components
{

	partial class LoginStatus : System.Web.UI.UserControl
	{


		public string GetUserName()
		{
			string userName = string.Empty;
			if ((Context.User != null)) {
				SSW.Framework.WebCRMProvider.CRMMembershipUser currentUser = (SSW.Framework.WebCRMProvider.CRMMembershipUser)Membership.GetUser();
				if ((currentUser != null)) {
					if ((currentUser.FirstName != null)) {
						userName = userName + currentUser.FirstName;
					}
					if ((currentUser.LastName != null)) {
						if (userName != string.Empty) {
							userName = userName + "&nbsp;";
						}
						userName = userName + currentUser.LastName;
					}
				}
			}

			return userName;
		}

	}

}
