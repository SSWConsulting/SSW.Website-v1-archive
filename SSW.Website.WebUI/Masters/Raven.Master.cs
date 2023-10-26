using System;
using System.Web.Security;
using System.Web.UI;
using SSW.Framework.WebCRMProvider;
using SSW.SSWMT;
using System.Web.UI.HtmlControls;
using System.Configuration;

namespace SSW.Website.WebUI.Masters
{

	public partial class Raven : MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			//Fix http://ssw.com.au
			GlobalFunctions.FixSiteURL();
        }

		public string GetUserName()
		{
			string userName = string.Empty;
			if ((Context.User != null)) {
				CRMMembershipUser currentUser = (CRMMembershipUser)Membership.GetUser();
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

		public Raven()
		{
			Load += Page_Load;
          
		}

      
    }

}
