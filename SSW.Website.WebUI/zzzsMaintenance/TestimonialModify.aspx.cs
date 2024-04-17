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
using SSW.TimePROOnline.Objects;



namespace SSW.Website.WebUI.zsMaintenance
{

	partial class TestimonialModify : System.Web.UI.Page
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


		private int m_iRecId = 0;
		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			if (Server.MachineName.ToLower() != (ConfigurationManager.AppSettings["internalMachineName"]).ToLower()) {
				Response.Redirect("http://skunk/SSW/zsMaintenance/testimonialmodify.aspx");
			}
			if (Information.IsNumeric(Request.QueryString["TestimonialID"]) & (!string.IsNullOrEmpty(Request.QueryString["TestimonialID"]))) {
				//SSW Code Auditor - Ignore next line
				m_iRecId = Convert.ToInt32(Request.QueryString["TestimonialID"]);
			}

			if (!IsPostBack) {
				if ((!string.IsNullOrEmpty(Request.QueryString["Delete"]))) {
					DeleteTestimonial();
					return;
				}

				ProdCategories objProdCategories = new ProdCategories();
				objProdCategories.LoadForWeb(SSW.Data.Connector.ConnectionLocation.cnnDirect);

				cmbProduct.DataSource = objProdCategories;
				cmbProduct.DataValueField = "CategoryID";
				cmbProduct.DataTextField = "CategoryName";
				cmbProduct.DataBind();
				
				cmbProduct.Items.Insert(0, new ListItem("(none)", ""));

				TestimonialCategoryCollection tcc = TestimonialCategoryCollection.FillListFromDb();
				chklstCategories.DataSource = tcc;
				chklstCategories.DataValueField = "CatID";
				chklstCategories.DataTextField = "CategoryName";
				chklstCategories.DataBind();

				if (m_iRecId > 0) {
					TestimonialsDB testimonial = TestimonialsDB.GetQuote(m_iRecId);
					txtContentSnippet.Text = testimonial.Content;
					txtContentLong.Text = testimonial.ContentLong;
					txtAuthor.Text = testimonial.Author;
					txtCompany.Text = testimonial.CompanyName;
					txtCompanySite.Text = testimonial.CompanyUrl;

					TestimonialCategoriesDB tc = null;
					foreach (TestimonialCategoriesDB tc_loopVariable in testimonial.SelectedCategories) {
						tc = tc_loopVariable;
						ListItem li = chklstCategories.Items.FindByValue(tc.CatID.ToString());
						li.Selected = true;
					}
					cmbProduct.Items.FindByValue(testimonial.ProdID).Selected = true;

					btnDelete.Visible = true;
				} else {
					btnDelete.Visible = false;
				}
			}
		}

		private void btnSave_Click(System.Object sender, System.EventArgs e)
		{
			// make sure all field entries are OK
			// ===EDIT 6/9/04, WorkExperience
			//If Not (txtContentSnippet.Text <> "" And txtContentSnippet.Text.Length < 500 And txtContentLong.Text.Length < 4000 And txtCompanySite.Text.Length < 50) Then


			//(B)EDIT 09.12.16 by Luke
			//If Not (txtContentSnippet.Text <> "" And txtContentSnippet.Text.Length < 500 And txtContentLong.Text.Length < 4000 And txtCompanySite.Text.Length < 255) Then
			//    plcValidationError.Visible = True
			//    Return
			//End If
			if (txtContentSnippet.Text.Length >= 500) {
				errorBox.InnerText = "Testimonial Content (snippet) should be less than 500 words.";
				plcValidationError.Visible = true;
				txtContentSnippet.Focus();
				return;
			}

			if (string.IsNullOrEmpty(txtContentLong.Text) | txtContentLong.Text.Length >= 4000) {
				errorBox.InnerText = "Testimonial Content (long) should be enterred and less than 500 words.";
				plcValidationError.Visible = true;
				txtContentLong.Focus();
				return;
			}

			if (txtCompanySite.Text.Length >= 255) {
				errorBox.InnerText = "URL should be less than 255 words.";
				plcValidationError.Visible = true;
				txtCompanySite.Focus();
				return;
			}
			//(E)EDIT 09.12.16 by Luke

			TestimonialsDB testimonial = null;
			if (m_iRecId > 0) {
				testimonial = TestimonialsDB.GetQuote(m_iRecId);
			} else {
				testimonial = new TestimonialsDB();
			}
			testimonial.Content = txtContentSnippet.Text;
			testimonial.ContentLong = txtContentLong.Text;
			testimonial.Author = txtAuthor.Text;
			testimonial.CompanyName = txtCompany.Text;
			testimonial.CompanyUrl = txtCompanySite.Text;
			testimonial.ProdID = cmbProduct.SelectedValue;

			if (!fileImage.PostedFile.FileName.Equals(string.Empty)) {
				fileImage.PostedFile.SaveAs(Server.MapPath("/ssw/Company/Images/Testimonials/" + fileImage.PostedFile.FileName.Substring(fileImage.PostedFile.FileName.LastIndexOf("\\"), fileImage.PostedFile.FileName.Length - fileImage.PostedFile.FileName.LastIndexOf("\\"))));
				testimonial.ImageName = fileImage.PostedFile.FileName.Substring(fileImage.PostedFile.FileName.LastIndexOf("\\"), fileImage.PostedFile.FileName.Length - fileImage.PostedFile.FileName.LastIndexOf("\\"));
			}

			testimonial.SelectedCategories.Clear();
			ListItem li = null;
			foreach (ListItem li_loopVariable in chklstCategories.Items) {
				li = li_loopVariable;
				if (li.Selected) {
					
					testimonial.SelectedCategories.Add(new TestimonialCategoriesDB(Convert.ToInt32(li.Value), "", ""));
				}
			}

			testimonial.UpdateToDb();

			plcFinished.Visible = true;
			plcValidationError.Visible = false;
			plcForm.Visible = false;
		}

		private void btnDelete_Click(object sender, System.EventArgs e)
		{
			DeleteTestimonial();
		}

		private void DeleteTestimonial()
		{
			TestimonialsDB testimonial = null;
			if (m_iRecId > 0) {
				testimonial = TestimonialsDB.GetQuote(m_iRecId);
				testimonial.Delete();
			}

			Response.Redirect("/ssw/Testimonials/");
		}
		public TestimonialModify()
		{
			Load += Page_Load;
			Init += Page_Init;
		}

	}

}
