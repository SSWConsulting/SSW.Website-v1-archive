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
using Microsoft.Ajax.Utilities;

namespace SSW.Website.WebUI.Components
{

	public partial class RandomTestimonial : System.Web.UI.UserControl
	{
		private TestimonialDisplay mTestimonialDisplay = TestimonialDisplay.TopCommon;
		private int mCategoryID = 0;
		private string mProdCatID;

		private string mProdID;
		public TestimonialDisplay Display {
			get { return mTestimonialDisplay; }
			set { mTestimonialDisplay = value; }
		}

		public int CategoryID {
			get { return mCategoryID; }
			set { mCategoryID = value; }
		}

		public string ProdCatID {
			get { return mProdCatID; }
			set { mProdCatID = value; }
		}

		public string ProdID {
			get { return mProdID; }
			set { mProdID = value; }
		}

		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			// Get a random quote from the database
			SSW.TestimonialsDB testimonial = null;
			bool Failed = false;
			string sErr = string.Empty;

            try {
				if (mCategoryID > 0) {
					testimonial = TestimonialsDB.GetRandomQuote(mCategoryID);
				} else if (!string.IsNullOrWhiteSpace(mProdCatID)) {
					testimonial = TestimonialsDB.GetRandomQuote(mProdCatID);
				} else if (!string.IsNullOrWhiteSpace(mProdID)) {
					testimonial = TestimonialsDB.GetRandomQuoteForProd(mProdID);
				} else {
					testimonial = TestimonialsDB.GetRandomQuote();
				}
				//SSW Code Auditor - Ignore next line
			} catch (Exception ex) {
				Failed = true;
				sErr = ex.Message;
			}

			if (Failed) {
				// Display of testimonials failed for some reason, show a generic error plus a link
				var _with1 = lblError;
				
				_with1.Text = "<p style=\"font-size : 11px; color : #aaa\">There was an error displaying the testimonials. Please <A HREF=\"mailto:info@s*w.com.au?Subject=Error displaying Testimonials&body= URL: " + Request.Url.ToString() + Constants.vbNewLine + Constants.vbNewLine + "%0D Error: " + sErr + "\">report this error</a> to SSW and include the following text:<br> - " + sErr + "</p>";
				_with1.Visible = true;
			} else {
				if (mTestimonialDisplay == TestimonialDisplay.Normal) {
					lblQuote.Text = testimonial.Content;
					lblAuthor.Text = testimonial.Author;
					lblCompany.Text = testimonial.CompanyName + "&nbsp;" + testimonial.CompanyUrl;

				} else if (mTestimonialDisplay == TestimonialDisplay.TopCommon) {
					lblQuoteTop.Text = testimonial.Content;
					lblAuthorTop.Text = testimonial.Author;
					lblSep.Visible = testimonial.CompanyUrl != string.Empty | testimonial.CompanyName != string.Empty;
					if (testimonial.CompanyUrl != string.Empty & testimonial.CompanyName == string.Empty) {
						lblCompanyTop.Text = "Web Site" + "&nbsp;" + testimonial.CompanyUrl;
					} else if ((testimonial.CompanyName != string.Empty & testimonial.CompanyUrl != string.Empty)) {
						lblCompanyTop.Text = testimonial.CompanyName + "&nbsp;" + testimonial.CompanyUrl;
					} else {
						lblCompanyTop.Visible = false;
					}
				} else if (mTestimonialDisplay == TestimonialDisplay.SideBarRight) {
					lblQuoteSideRt.Text = testimonial.Content;
					lblAuthorSideRt.Text = testimonial.Author;
					lblComma.Visible = testimonial.CompanyUrl != string.Empty | testimonial.CompanyName != string.Empty;
					if (testimonial.CompanyUrl != string.Empty & testimonial.CompanyName == string.Empty) {
						lnkCompanySideRt.Text = "Web Site" + "&nbsp;" + testimonial.CompanyUrl;
					} else {
						lnkCompanySideRt.Text = testimonial.CompanyName + "&nbsp;" + testimonial.CompanyUrl;
					}
					plcMaintenance.Style.Add("float", "right");
					plcMaintenance.Style.Add("clear", "both");
				}


				plcNormalLook.Visible = (mTestimonialDisplay == TestimonialDisplay.Normal);
				plcTop.Visible = (mTestimonialDisplay == TestimonialDisplay.TopCommon);

			    if (testimonial.Content.IsNullOrWhiteSpace())
			    {
			        plcSideBarRight.Visible = false;
			    }
			    else
			    {
                    plcSideBarRight.Visible = (mTestimonialDisplay == TestimonialDisplay.SideBarRight);
                }

				plcMaintenance.Visible = Request.ServerVariables["HTTP_HOST"].ToLower() == "zoo";

				lnkEdit.NavigateUrl = lnkEdit.NavigateUrl + "?TestimonialID=" + testimonial.QuoteID.ToString();
				lnkMoreTestimonials.NavigateUrl = lnkMoreTestimonials.NavigateUrl + "?CategoryID=" + CategoryID.ToString();

			}
		}
		public RandomTestimonial()
		{
			Load += Page_Load;
		}
	}
}

public enum TestimonialDisplay
{
	Normal,
	TopCommon,
	SideBarRight
}
