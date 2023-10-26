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

	partial class SearchBox : System.Web.UI.UserControl
	{


		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			if (!IsPostBack) {
				BindSearchPanels();
				internalSearchRepeater.Visible = Core.IsInternalServer();
			}
		}

		private void BindSearchPanels()
		{
			List<SearchProviderSetting> searchSettings = (List<SearchProviderSetting>)ConfigurationManager.GetSection("sswSearchProviders");

			List<SearchProviderSetting> internalSearchSettings = searchSettings.FindAll(MatchInternal);
			List<SearchProviderSetting> externalSearchSettings = searchSettings.FindAll(MatchExternal);

			externalSearchRepeater.DataSource = externalSearchSettings;
			internalSearchRepeater.DataSource = internalSearchSettings;
			externalSearchRepeater.DataBind();
			internalSearchRepeater.DataBind();
		}

		protected void SearchRepeater_ItemDataBound(object sender, System.Web.UI.WebControls.RepeaterItemEventArgs e)
		{
			SearchProviderSetting searchSetting = (SearchProviderSetting)e.Item.DataItem;
			SearchPanel searchPanel = (SearchPanel)e.Item.FindControl("searchPanel");

			searchPanel.Title = searchSetting.Title;
			searchPanel.SubmitButton = searchSetting.SubmitButton;
			// TODO: Deal with strange compiler issue and setup the provider.
			//searchPanel.SearchProvider = Core.GetProvider(searchPanel.Title) 'searchSetting.GetProvider()
			searchPanel.SearchProvider = searchSetting.GetProvider();
		}

		#region "Predicate logic for search provider searching"

		protected bool MatchInternal(SearchProviderSetting settings)
		{
			return settings.IsInternal;
		}

		protected bool MatchExternal(SearchProviderSetting settings)
		{
			return !MatchInternal(settings);
		}
		public SearchBox()
		{
			Load += Page_Load;
		}

		#endregion

	}
}
