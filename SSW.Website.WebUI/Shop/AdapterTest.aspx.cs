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
//---------------------------------------------- 
// Copyright 2001 Superior Software for Windows 
// www.ssw.com.au All Rights Reserved.

// VERSION AUTHOR  DATE COMMENT  
//1.0 DH 10/01/02 First released version.
//---------------------------------------------- 


namespace SSW.Website.WebUI.Shop
{

	public partial class AdapterTest : System.Web.UI.Page
	{

		private WebMessageBox msgControl;
		private void Page_Load(System.Object sender, System.EventArgs e)
		{
		}
		public AdapterTest()
		{
			Load += Page_Load;
		}

	}

}
