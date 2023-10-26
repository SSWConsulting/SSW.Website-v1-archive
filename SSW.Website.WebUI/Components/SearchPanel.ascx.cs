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
using SSW.Website.Common.Search;

namespace SSW.Website.WebUI.Components
{

	partial class SearchPanel : System.Web.UI.UserControl
	{

		#region "Fields"


		#endregion

		#region "Public Properties"

		public string Title {
			get { return titleLabel.Text; }
			set { titleLabel.Text = value; }
		}

		public string SearchText {
			get { return searchValueTextBox.Text; }
			set { searchValueTextBox.Text = value; }
		}
		public string SubmitButton {
			get { return goButton.Text; }
			set { goButton.Text = value; }
		}


		private ISearchProvider mSearchProvider;
		public ISearchProvider SearchProvider {
			get { return mSearchProvider; }
			set { mSearchProvider = value; }
		}

		#endregion

		#region "Internal Event Handlers"

		protected void goButton_Click(object sender, System.EventArgs e)
		{
			if ((SearchProvider != null)) {
				SearchProvider.Search(SearchText);

			}
		}

		#endregion

		#region "ViewState Handlers"

		// TODO: Investigate possibly using ControlState instead

		protected override object SaveViewState()
		{
			ViewState["mSearchProvider"] = mSearchProvider;
			return base.SaveViewState();
		}

		protected override void LoadViewState(object savedState)
		{
			base.LoadViewState(savedState);
			mSearchProvider = (ISearchProvider)ViewState["mSearchProvider"];
		}

		#endregion


	}

}
