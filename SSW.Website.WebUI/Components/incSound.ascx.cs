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

	partial class incSound : System.Web.UI.UserControl
	{

		#region " Web Form Designer Generated Code "

		//This call is required by the Web Form Designer.
		[System.Diagnostics.DebuggerStepThrough()]

		private void InitializeComponent()
		{
		}

		private void Page_Init(System.Object sender, System.EventArgs e)
		{
			//CODEGEN: This method call is required by the Web Form Designer
			//Do not modify it using the code editor.
			InitializeComponent();
		}

		#endregion
		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			//Only play in version 5 browsers and above (TO DO: I don't know which browsers support MP3)
			//if a cookie exists then the user has recently loaded the page within the last 2 minuets. Don’t play again.
			//if no cookie exists then make one and play sound.

			// DH 19-3-02 - Catch the conversion of Browser.Version to double. Some un common browsers
			//               do not store a number on this var.

			// ME 20-3-02 - Fixed the above problem a better way. Changed so that it returned 
			//               'Browser.MajorVersion' which is an integer
			//               rather than 'Browser.Version' which is a string

			int intBrowserVersion = 0;
			try {
				intBrowserVersion = Request.Browser.MajorVersion;
			} catch {
				intBrowserVersion = 0;
			}

			if (intBrowserVersion > 4) {
				//Check whether the user has been to the site before. 
				//If Not Request.Cookies("SSWHasHeardSound") Is Nothing Then
				//If Request.Cookies("SSWHasHeardSound").Value = "True" Then
				// Response.Cookies("SSWHasHeardSound").Value = "False"
				//Response.Cookies("SSWHasHeardSound").Expires = Date.Now.AddMinutes(2)
				//End If
				if (Request.ServerVariables["SCRIPT_NAME"].ToLower() == "/ssw/default.aspx") {
					if (Request.Cookies["SSWHasHeardSound"] == null) {
						Response.Cookies["SSWHasHeardSound"].Value = "False";
						Response.Cookies["SSWHasHeardSound"].Expires = System.DateTime.Now.AddMinutes(2);
					} else {
						Response.Cookies["SSWHasHeardSound"].Value = "True";
						Response.Cookies["SSWHasHeardSound"].Expires = System.DateTime.Now.AddMinutes(2);
					}
					if (Request.Cookies["SSWHasHeardSound"].Value == "False") {
						playSound(false);
					} else {
						playSound(true);
					}


				}

			}
		}

		private void playSound(bool blSoundOn)
		{
			//This function writes HTML to the browser (sound tags and a hyperlink to soundinfo page)
			string strFileName = null;
			//eg. Play_Golden Whistler no1.mp3
			strFileName = GetFileName();
			// Make sure it has returned a file name bugger than 9 charters. 
			//   i.e. the bird sounds are in the format "Play_*.mp3"
			if (strFileName.Length > 9) {
				if (!blSoundOn) {
					this.Controls.Add(new LiteralControl("<embed src='/ssw/sound/" + strFileName + "' hidden='true'>"));
				}
				//mstrSoundHTML = "<embed src=""/ssw/sound/" & strFileName & """ hidden=""true"">"

				//eg. Remove the "Play_" and the ".mp3" for the description for homepage 
				strFileName = Strings.Right(strFileName, Strings.Len(strFileName) - 5);
				strFileName = Strings.Left(strFileName, Strings.Len(strFileName) - 4);

				HyperLink h1 = new HyperLink();
				h1.Text = strFileName;
				h1.NavigateUrl = "/ssw/sound/SoundInfo.aspx";
				this.Controls.Add(h1);
			}

		}
		private string GetFileName()
		{
			//returns a random filename that starts with "Play_"
			System.IO.DirectoryInfo objDirectory = new System.IO.DirectoryInfo(Server.MapPath("\\SSW\\sound"));
			System.IO.FileInfo objFile = null;
			int intFileCount = 0;

			try {
				// No files may exist
				intFileCount = objDirectory.GetFiles("Play_*").Length;
			} catch {
				return string.Empty;
			}

			//use a random number to select a filename from the array
			Int32 intRandomNumber = default(Int32);
			VBMath.Randomize();
			intRandomNumber = Convert.ToInt32(VBMath.Rnd() * intFileCount);

			//Find all files named "Play_*" and put in an array
			Int32 intCount = 0;
			foreach (System.IO.FileInfo objFile_loopVariable in objDirectory.GetFiles("Play_*")) {
				objFile = objFile_loopVariable;
				if (intCount == intRandomNumber) {
					return objFile.Name.ToString();
				}
				intCount = intCount + 1;
			}

			// If we get to here then no files where found.
			return string.Empty;
		}
		public incSound()
		{
			Load += Page_Load;
			Init += Page_Init;
		}

	}

}
