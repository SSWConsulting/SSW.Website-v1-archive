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


public class WebUtility
{
	public static void RedirectToMessagePage(System.Web.HttpResponse Response, string Message, string MessageSize = "", string Title = "")
	{
		string MessagePageFormat = "/ssw/Shop/MessagePage.aspx?Message={0}{1}{2}";
		string MessageSizeFormat = "&MessageSize={0}";
		string TitleFormat = "&title={0}";
		string FinalUrl = string.Format(MessagePageFormat, Message, !string.IsNullOrEmpty(MessageSize) ? string.Format(MessageSizeFormat, MessageSize) : "", !string.IsNullOrEmpty(Title) ? string.Format(TitleFormat, Title) : "");
		Response.Redirect(FinalUrl);
	}

	public static void ErrorIfTemporaryOfflineUser(System.Web.HttpContext Context)
	{
		if (Context.User.Identity.Name == "OFFLINE") {
			WebUtility.RedirectToMessagePage(Context.Response, "You cannot view this page as a temporary offline user");
		}
	}

	public static WebMessageBox GetMessageBox(System.Web.UI.Page Page, string Title, string Message, WebMessageBox.ResultIcon Icon, int Width, ref System.Web.UI.WebControls.PlaceHolder PlaceHolder)
	{
		WebMessageBox msgControl = null;
		msgControl = (WebMessageBox)Page.LoadControl("~/Components/WebMessageBox.ascx");
		msgControl.HeaderText = Title;
		msgControl.Width = Width;
		msgControl.Text = Message;
		msgControl.ImagePathResult = Icon;
		if ((PlaceHolder != null)) {
			PlaceHolder.Controls.Add(msgControl);
		}
		return msgControl;
	}
}
