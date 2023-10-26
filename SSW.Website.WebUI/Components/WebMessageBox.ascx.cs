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
public partial class WebMessageBox : System.Web.UI.UserControl
{
	private string mText;
	private string mHeaderText;
	private int mWidth = 315;
	private ResultIcon mIconURL;
	private string mImagePathURL;
	public enum ResultIcon : int
	{
		Info = 0,
		Success = 1,
		Fail = 2
	}

	public ResultIcon ImagePathResult {
		get { return mIconURL; }
		set {
			if (value == ResultIcon.Fail) {
				mImagePathURL = "/ssw/Images/Message/error.png";
			} else if (value == ResultIcon.Info) {
				mImagePathURL = "/ssw/Images/Message/info.png";
			} else if (value == ResultIcon.Success) {
				mImagePathURL = "/ssw/Images/Message/success.png";
			//logic error
			} else {
				mImagePathURL = string.Empty;
			}
			mIconURL = value;
			MessageImage.ImageUrl = mImagePathURL;
		}
	}
	public string Text {
		get { return mText; }
		set { mText = value; }
	}
	public int Width {
		get { return mWidth; }
		set { mWidth = value; }
	}
	public string HeaderText {
		get { return mHeaderText; }
		set { mHeaderText = value; }
	}

	protected void Page_Load(object sender, System.EventArgs e)
	{
		//If Not IsPostBack Then
		//tblMsgBoxHeader.Width = mWidth.ToString
		//tblMsgBoxContent.Width = mWidth.ToString
		//ImageError.ImageUrl = mImagePathURL
		lblText.Text = mText;
		lblHeader.Text = mHeaderText;

		//End If
	}
	public WebMessageBox()
	{
		Load += Page_Load;
	}

}
