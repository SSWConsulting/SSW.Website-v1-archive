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

using System.Net.Mail;
//---------------------------------------------- 
// Copyright 2001 Superior Software for Windows 
// www.ssw.com.au All Rights Reserved.

// VERSION AUTHOR  DATE COMMENT  
//1.0 DH 10/01/02 First released version.
//---------------------------------------------- 

using SSW.Framework.WebCRMProvider;
using SSWWebServiceContact;

namespace SSW.Website.WebUI.Shop
{

	partial class ClientInterests : System.Web.UI.Page
	{

		private WebMessageBox msgControl;
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


		//
		protected System.Web.UI.HtmlControls.HtmlAnchor A1;

		protected System.Web.UI.HtmlControls.HtmlInputButton Button1;
		#endregion
		private DataView dv;

		private ArrayList chkControlList = new ArrayList();
		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			//Put user code to initialize the page here
			PlaceHolderUserMessage.Visible = false;
			if (!IsPostBack) {
				CRMMembershipUser currentUser = (CRMMembershipUser)Membership.GetUser();
				if ((currentUser != null)) {
					if ((currentUser.FirstName != null) & (currentUser.LastName != null)) {
						if (currentUser.FirstName != string.Empty & currentUser.LastName != string.Empty) {
							//Display users First Name.
							lblUserName.Text = currentUser.FirstName;
							//lblUserName.Text += "Last Name: " & currentUser.LastName & "<br>"
						}
					}
				}

				//Get the users ID
				int customerId = 0;
				if (Context.User.Identity.Name.Length > 0) {
					WebUtility.ErrorIfTemporaryOfflineUser(Context);

					// Check to make sure user is not a SSWInternal User
					SSWMT.CustomersDB objCustomers = new SSWMT.CustomersDB();
					objCustomers.CheckSSWInternal(Context, Page);

					customerId = currentUser.SSWContactID;
				}

				SSWMT.CustomersDB ProductsInterest = new SSWMT.CustomersDB();
				string strEmail = string.Empty;
				if ((currentUser.Email != null)) {
					strEmail = currentUser.Email;
				}

				dv = ProductsInterest.GetCustomerProductIntrested(customerId);
				string strCategoryName = string.Empty;

				List<string> lstCategoryNames = new List<string>();
				lstCategoryNames.Add("My Career - I am a .NET guru and am ready for the next step");
				lstCategoryNames.Add("My Project - I have an exciting project and need it done by experts");
				lstCategoryNames.Add("SSW");


				for (int i = 0; i <= dv.Count - 1; i++) {
					if (!Information.IsDBNull(dv[i]["GroupCategoryName"]) && !lstCategoryNames.Contains(dv[i]["GroupCategoryName"].ToString())) {
						lstCategoryNames.Add(dv[i]["GroupCategoryName"].ToString());
					}
				}



				dlsProducts.DataSource = lstCategoryNames;
				//dlsProducts.DataKeyField =
				dlsProducts.DataBind();


			}
		}


		public void SubmitBtn_Click(System.Object sender, System.EventArgs e)
		{
			CRMMembershipUser currentUser = (CRMMembershipUser)Membership.GetUser();
			if (currentUser == null) {
				Response.Redirect("/ssw/Shop/Login.aspx?ReturnUrl=" + Server.UrlEncode("/ssw/Shop/ClientInterests.aspx"));
			}

			//Get the users ID
			int customerId = currentUser.SSWContactID;

			ArrayList aryReturn = null;
			aryReturn = new ArrayList(50);
			foreach (DataListItem it in dlsProducts.Items) {
				CheckBoxList chkprod = (CheckBoxList)it.FindControl("CheckBoxListProduct");
				if ((chkprod != null)) {
					ListItem li = null;
					foreach (ListItem li_loopVariable in chkprod.Items) {
						li = li_loopVariable;
						//If li.Selected Then
						//SSWWebServiceContact.clsContactProductInterest sctReturn = new SSWWebServiceContact.clsContactProductInterest();
                        clsContactProductInterest sctReturn = new clsContactProductInterest();

						sctReturn.Interested = li.Selected;
						sctReturn.ProductID = li.Value;
						aryReturn.Add(sctReturn);

						if (li.Selected & li.Value.Equals("JA")) {
							//send to DuncanHunter
							SendEmail("PennyWalker", Convert.ToString(customerId));
						}

						if (li.Selected & li.Value.Equals("PCS")) {
							//send to Uly
							SendEmail("Uly", Convert.ToString(customerId));
						}
						//End If
					}
				}

			}



			SSWMT.CustomersDB objCustomer = new SSWMT.CustomersDB();
			objCustomer.SaveCustomerProductIntrested(customerId, aryReturn);

			string strMessage = "Your interests have been updated.";

			if ((Request.Params["ReturnUrl"] != null)) {
				// I have to check this after so it wont throw an exception.
				if (Request.Params["ReturnUrl"] != string.Empty) {
					
					//strMessage += "<br><br>Click here to <a href=""" & Request.Params("ReturnUrl") & """>Continue</a>"

					//Redirect if there is a Return Url
					Response.Redirect(Request.Params["ReturnUrl"]);
				}
			}

			//lblMessage.Text = SSWMT.GlobalFunctions.MakeCustomMessage("Information", strMessage) & "<br>"
			//Add web message box user control on the fly by PA on 31/01/07

			PlaceHolderUserMessage.Visible = true;
			if ((msgControl != null)) {
				PlaceHolderUserMessage.Controls.Remove(msgControl);
			}
			WebUtility.GetMessageBox(this, "Information", strMessage, WebMessageBox.ResultIcon.Info, 400, ref PlaceHolderUserMessage);

		}

		private void SendEmail(string sender, string userId)
		{
			StringBuilder emailBody = new StringBuilder();
			emailBody.Append("http://www.ssw.com.au/ssw/Shop/ClientDetail.aspx");
			emailBody.Append("?id=" + userId);
			emailBody.Append("&superuser=true");
			SSW.SSWMT.GlobalFunctions.SendEmail(emailBody.ToString(), "Alert ?new candidate", ConfigurationManager.AppSettings["SSWInfoEmailAddress"], sender + "@ssw.com.au", MailPriority.Normal, false, string.Empty);

		}


		private void dlsProducts_ItemDataBound(object sender, System.Web.UI.WebControls.DataListItemEventArgs e)
		{
			for (int i = 0; i <= dlsProducts.Items.Count; i++) {
				CheckBoxList chkList = (CheckBoxList)e.Item.FindControl("CheckBoxListProduct");
				DataView dvFiltered = dv;
				if (e.Item.DataItem.ToString() == "SSW") {
					dvFiltered.RowFilter = "GroupCategoryName IS NULL AND CategoryName<>'I''d like employment at SSW' AND CategoryName<>'I''m interested in SSW''s Consulting Services'";
				} else if (e.Item.DataItem.ToString().StartsWith("My Career - I am a .NET guru and am")) {
					dvFiltered.RowFilter = "CategoryName='I''d like employment at SSW'";
				} else if (e.Item.DataItem.ToString().StartsWith("My Project - I have an exciting project")) {
					dvFiltered.RowFilter = "CategoryName='I''m interested in SSW''s Consulting Services'";
				} else {
					dvFiltered.RowFilter = "GroupCategoryName = '" + e.Item.DataItem.ToString() + "'";
				}
				chkList.DataTextField = "CategoryName";
				chkList.DataValueField = "CategoryID";
				//checked
				chkList.DataSource = dvFiltered;
				chkList.DataBind();

				foreach (ListItem item in chkList.Items) {
					string categoryID = item.Value;
					DataRow[] rows = dvFiltered.Table.Select(string.Format("CategoryID='{0}'", categoryID));
					if ((rows.Length > 0)) {
						item.Selected = Convert.ToBoolean(rows[0]["Checked"]);
					}
				}

				//add a note under GroupName
				if ((i == 0)) {
					Label lblNote = (Label)e.Item.FindControl("LabelNote");
					lblNote.Text = "<p>Note: Also Isend your resume to <a href=" + "mailto:pennywalker@ssw.com.au" + ">PennyWalker@ssw.com.au</a> and call her now +61 2 9953 3000</p>";
					lblNote.Visible = true;
				} else if ((i == 1)) {
					Label lblNote = (Label)e.Item.FindControl("LabelNote");
					lblNote.Text = "<p>Note: Please also send your specifications to <a href=" + "Uly@ssw.com.au" + ">Uly@ssw.com.au</a> or call Ulysses now +61 2 9953 3000</p>";
					lblNote.Visible = true;
				} else {
					Label lblNote = (Label)e.Item.FindControl("LabelNote");
					lblNote.Visible = false;
				}
			}


		}

		protected void CheckBoxListProduct_OnSelectedIndexChanged(object sender, EventArgs e)
		{
			FindAllCheckBoxes();
			for (int iLoop = 0; iLoop <= chkControlList.Count - 1; iLoop++) {
				ListItem iListItem = (ListItem)chkControlList[iLoop];
				for (int jLoop = iLoop + 1; jLoop <= chkControlList.Count - 1; jLoop++) {
					ListItem jListItem = (ListItem)chkControlList[jLoop];
					if (iListItem.Value == jListItem.Value) {
						jListItem.Selected = iListItem.Selected;
					}
				}
			}
		}

		protected void FindAllCheckBoxes()
		{
			for (int iLoop = 0; iLoop <= dlsProducts.Items.Count - 1; iLoop++) {
				CheckBoxList mCheckBoxList = (CheckBoxList)dlsProducts.Items[iLoop].FindControl("CheckBoxListProduct");
				for (int jLoop = 0; jLoop <= mCheckBoxList.Items.Count - 1; jLoop++) {
					chkControlList.Add(mCheckBoxList.Items[jLoop]);
				}
			}
		}
		public ClientInterests()
		{
			Load += Page_Load;
			Init += Page_Init;
		}
	}


}
