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
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated. 
// </auto-generated>
//------------------------------------------------------------------------------


namespace SSW.Website.WebUI.Shop
{

	public partial class ClientInterests
	{

		///<summary>
		///lblUserName control.
		///</summary>
		///<remarks>
		///Auto-generated field.
		///To modify move field declaration from designer file to code-behind file.
		///</remarks>

		protected global::System.Web.UI.WebControls.Label lblUserName;
		///<summary>
		///PlaceHolderUserMessage control.
		///</summary>
		///<remarks>
		///Auto-generated field.
		///To modify move field declaration from designer file to code-behind file.
		///</remarks>

		protected global::System.Web.UI.WebControls.PlaceHolder PlaceHolderUserMessage;
		///<summary>
		///pnlDetails control.
		///</summary>
		///<remarks>
		///Auto-generated field.
		///To modify move field declaration from designer file to code-behind file.
		///</remarks>

		protected global::System.Web.UI.WebControls.Panel pnlDetails;
		///<summary>
		///dlsProducts control.
		///</summary>
		///<remarks>
		///Auto-generated field.
		///To modify move field declaration from designer file to code-behind file.
		///</remarks>
		private global::System.Web.UI.WebControls.DataList withEventsField_dlsProducts;
		protected global::System.Web.UI.WebControls.DataList dlsProducts {
			get { return withEventsField_dlsProducts; }
			set {
				if (withEventsField_dlsProducts != null) {
					withEventsField_dlsProducts.ItemDataBound -= dlsProducts_ItemDataBound;
				}
				withEventsField_dlsProducts = value;
				if (withEventsField_dlsProducts != null) {
					withEventsField_dlsProducts.ItemDataBound += dlsProducts_ItemDataBound;
				}
			}
		}
	}
}