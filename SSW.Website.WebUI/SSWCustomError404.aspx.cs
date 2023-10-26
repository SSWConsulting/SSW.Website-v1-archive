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
namespace SSW.Website.WebUI
{



	public partial class SSWCustomError404 : System.Web.UI.Page
	{

		protected void Page_Load(object sender, System.EventArgs e)
		{
			Response.StatusCode = 404;
		}
		public SSWCustomError404()
		{
			Load += Page_Load;
		}

	}

}

