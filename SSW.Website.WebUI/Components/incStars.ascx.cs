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


	partial class incStars : System.Web.UI.UserControl
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

		private int mintTucows = 0;
		private int mintSofoTex = 0;
		private int mintFileTransit = 0;
		private int mintFileHungry = 0;

		private int mintSharewareRiver = 0;
		public int Tucows {
			set { mintTucows = value; }
		}
		public int SofoTex {
			set { mintSofoTex = value; }
		}
		public int FileTransit {
			set { mintFileTransit = value; }
		}
		public int FileHungry {
			set { mintFileHungry = value; }
		}
		public int SharewareRiver {
			set { mintSharewareRiver = value; }
		}

		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			//Put user code to initialize the page here
			if (mintTucows >= 1 & mintTucows <= 5) {
				this.pnlTucows.Visible = true;
				imgTucows.ImageUrl = "/ssw/Images/Awards/" + mintTucows.ToString() + "Stars.gif";
			}
			if (mintSofoTex >= 1 & mintSofoTex <= 5) {
				pnlSofoTex.Visible = true;
				imgSofoTex.ImageUrl = "/ssw/Images/Awards/" + mintSofoTex.ToString() + "Stars.gif";
			}
			if (mintFileTransit >= 1 & mintFileTransit <= 5) {
				pnlFileTransit.Visible = true;
				imgFileTransit.ImageUrl = "/ssw/Images/Awards/" + mintFileTransit.ToString() + "Stars.gif";
			}
			if (mintFileHungry >= 1 & mintFileHungry <= 5) {
				pnlFileHungry.Visible = true;
				imgFileHungry.ImageUrl = "/ssw/Images/Awards/" + mintFileHungry.ToString() + "Stars.gif";
			}
			if (mintSharewareRiver >= 1 & mintSharewareRiver <= 5) {
				pnlSharewareRiver.Visible = true;
				imgSharewareRiver.ImageUrl = "/ssw/Images/Awards/" + mintSharewareRiver.ToString() + "Stars.gif";
			}
		}
		public incStars()
		{
			Load += Page_Load;
			Init += Page_Init;
		}

	}
}
