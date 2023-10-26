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
public partial class InfoBoxLink : System.Web.UI.UserControl
{
	private string mText;
	private string mCss;
	private string mWidth;
	private bool mShowImage = true;
	public bool ShowInfoIcon {
		get { return mShowImage; }
		set { mShowImage = value; }
	}
	public string Text {
		get { return mText; }
		set { mText = value; }
	}
	public string Width {
		get { return mWidth; }
		set { mWidth = value; }
	}
	public string Css {
		get { return mCss; }
		set { mCss = value; }
	}


	protected void Page_Load(object sender, System.EventArgs e)
	{
		if (SSW.SSWMT.GlobalFunctions.IsMasterServer()) {
			string DisplayImage = string.Empty;
			if (!mShowImage) {
				DisplayImage = "background-image: none";
			}
			LiteralInfo.Text = "<div class=" + mCss + " style='" + DisplayImage + "; width: " + mWidth + ";' >" + mText + "</div>";
			LiteralInfo.Visible = true;
		}

	}
	public InfoBoxLink()
	{
		Load += Page_Load;
	}

}
