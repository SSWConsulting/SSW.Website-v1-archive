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
public partial class Tester : System.Web.UI.Page
{

	string pcID;

	string product;

	protected void Page_Load(object sender, System.EventArgs e)
	{
	}


	protected void Button1_Click(System.Object sender, System.EventArgs e)
	{
		pcID = Server.UrlEncode(txtPCID.Text);

		product = Server.UrlEncode(txtProduct.Text);

		Response.Redirect("~/Products/GenerateRegistrationID.aspx?pc=" + pcID + "&pr=" + product);

	}
	public Tester()
	{
		Load += Page_Load;
	}


}
