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
namespace SSW.SSWMT
{
	/// <summary>
	/// This is used for return value. It contains a bool property indicating whether the function is successful,
	/// and a string peroperty standing for failure or success message.
	/// </summary>
	public class CoBool
	{


		public bool IsSuccessful;

		public string FailMessage;
		/// <summary>
		/// Default Constructor (IsSuccessful = True, Message = String.Empty)
		/// </summary>
		public CoBool()
		{
			this.IsSuccessful = true;
			this.FailMessage = string.Empty;
		}
		/// <summary>
		/// Constructor with two parameters
		/// </summary>
		/// <param name="pIsSuccessful">IsSuccessful</param>
		/// <param name="pMessage">Message for Success or Failure</param>
		public CoBool(bool pIsSuccessful, string pFailMessage)
		{
			this.IsSuccessful = pIsSuccessful;
			this.FailMessage = pFailMessage;
		}
	}
}
