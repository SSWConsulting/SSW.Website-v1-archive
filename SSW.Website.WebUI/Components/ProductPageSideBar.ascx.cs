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
using System.ComponentModel;
using System.ComponentModel.Design;

namespace SSW.Website.WebUI.Components
{


	[DefaultProperty("Links"), ToolboxData("<{0}:ProductPageSideBar runat=server></{0}:ProductPageSideBar>")]
	public partial class ProductPageSideBar : System.Web.UI.UserControl
	{
		//Implements INamingContainer

		#region " Web Form Designer Generated Code "

		//This call is required by the Web Form Designer.
		[System.Diagnostics.DebuggerStepThrough()]

		private void InitializeComponent()
		{
		}
		//Protected WithEvents lnkTry As System.Web.UI.WebControls.HyperLink
		//Protected WithEvents lnkBuy As System.Web.UI.WebControls.HyperLink
		protected System.Web.UI.WebControls.HyperLink lnkGuide;
		//Protected WithEvents imgProd As System.Web.UI.HtmlControls.HtmlImage
		protected System.Web.UI.HtmlControls.HtmlAnchor hypUserGuide;
		//Protected WithEvents RandomTestimonials As RandomTestimonial
		//Protected WithEvents ltLinks As System.Web.UI.WebControls.Literal
		//Protected WithEvents phTestimonial As System.Web.UI.WebControls.PlaceHolder
		//NOTE: The following placeholder declaration is required by the Web Form Designer.
		//Do not delete or move it.

		private System.Object designerPlaceholderDeclaration;
		private void Page_Init(System.Object sender, System.EventArgs e)
		{
			//CODEGEN: This method call is required by the Web Form Designer
			//Do not modify it using the code editor.
			InitializeComponent();
		}

		#endregion

		private string mCatID = string.Empty;
		private string mProdID = string.Empty;
		private string mDownloadID = string.Empty;
		private string mProdName = string.Empty;

		private string mBoxShotPath = string.Empty;
		private string mUserGuide = string.Empty;
		private string mDeveloperGuide = string.Empty;
		private string mSamplesGuide = string.Empty;
		private string mPromotionalFlyer = string.Empty;
		private string mResources = string.Empty;
		private string mHome = string.Empty;
		private string mRules = string.Empty;

		private string mManage = string.Empty;
		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			//Put user code to initialize the page here
			if (!IsPostBack) {
				
				lnkTry.NavigateUrl = "../Download/ProdBasket.aspx?ID=" + mDownloadID;
				
				lnkBuy.NavigateUrl = "../Products/ProdCategory.aspx?CategoryID=" + mProdID;

				if (mBoxShotPath != string.Empty) {
					if (mProdName == string.Empty) {
						mProdName = "SSW Product";
					}

					imgProd.Src = this.ResolveUrl(mBoxShotPath);
					imgProd.Alt = mProdName;
				}
				StringBuilder strLinks = new StringBuilder();

				if (!(mUserGuide == string.Empty)) {
					strLinks.Append("<li><a href='" + mUserGuide + "'>Screenshots</a></li>" + Environment.NewLine);
				}

				if (!(mDeveloperGuide == string.Empty)) {
					strLinks.Append("<li><a href='" + mDeveloperGuide + "'>Developer Guide</a></li>" + Environment.NewLine);
				}

				if (!(mSamplesGuide == string.Empty)) {
					strLinks.Append("<li><a href='" + mSamplesGuide + "'>Samples Guide</a></li>" + Environment.NewLine);

				}

				if (!(mPromotionalFlyer == string.Empty)) {
					string srcDir = "/ssw/Images/IconPdf.gif";
					strLinks.Append("<li><a href='" + mPromotionalFlyer + "'>Promotional Flyer<img src='" + srcDir + "'></a></li>" + Environment.NewLine);
				}

				if (!(mResources == string.Empty)) {
					strLinks.Append("<li><a href='" + mResources + "'>Resources</a></li>" + Environment.NewLine);
				}

				if (!(mHome == string.Empty)) {
					strLinks.Append("<li><a href='" + mHome + "'>Home Page</a></li>" + Environment.NewLine);
				}

				if (!(mRules == string.Empty)) {
					strLinks.Append("<li><a href='" + mRules + "'>Included Rules</a></li>" + Environment.NewLine);
				}

				if (!(mManage == string.Empty)) {
					strLinks.Append("<li><a href='" + mManage + "'>Using SSW eXtreme Emails! to Manage Projects</a></li>" + Environment.NewLine);
				}

				lblLinks.Text = "<UL>" + strLinks.ToString() + "</UL>";

				if (mProdID == string.Empty) {
					RandomTestimonial1.ProdCatID = mCatID;
				} else {
					RandomTestimonial1.ProdID = mProdID;
				}
				RandomTestimonial1.Display = TestimonialDisplay.SideBarRight;

			}

		}


		public string CatID {
			get { return mCatID; }
			set { mCatID = value; }
		}

		public string DownloadID {
			get { return mDownloadID; }
			set { mDownloadID = value; }
		}

		public string ProdID {
			get { return mProdID; }
			set { mProdID = value; }
		}

		public string BoxShotPath {
			get { return mBoxShotPath; }
			set { mBoxShotPath = value; }
		}

		public string ProdName {
			get { return mProdName; }
			set { mProdName = value; }
		}

		public string UserGuide {
			get { return mUserGuide; }
			set { mUserGuide = value; }
		}
		public string DeveloperGuide {
			get { return mDeveloperGuide; }
			set { mDeveloperGuide = value; }
		}
		public string SamplesGuide {
			get { return mSamplesGuide; }
			set { mSamplesGuide = value; }
		}
		public string PromotionalFlyer {
			get { return mPromotionalFlyer; }
			set { mPromotionalFlyer = value; }
		}
		public string Resources {
			get { return mResources; }
			set { mResources = value; }
		}

		public string Home {
			get { return mHome; }
			set { mHome = value; }
		}

		public string Rules {
			get { return mRules; }
			set { mRules = value; }
		}

		public string Manage {
			get { return mManage; }
			set { mManage = value; }
		}
		public ProductPageSideBar()
		{
			Load += Page_Load;
			Init += Page_Init;
		}
	}

}
