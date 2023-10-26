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
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using AjaxControlToolkit;
using System.Data.SqlClient;


[System.Web.Services.WebService(Namespace = "http://tempuri.org/")]
[System.Web.Services.WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService()]
[ToolboxItem(false)]
public class SearchService : System.Web.Services.WebService
{

	[WebMethod()]
	public CascadingDropDownNameValue[] GetProducts(string knownCategoryValues, string category)
	{
		string strGroup = knownCategoryValues.Substring(knownCategoryValues.IndexOf(":") + 1);
		strGroup = strGroup.Substring(0, strGroup.Length - 1);
		List<CascadingDropDownNameValue> result = new List<CascadingDropDownNameValue>();
		SqlConnection Connection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"));

		try {
			Connection.Open();
			SqlCommand Command = new SqlCommand("SELECT p.CategoryID, p.CategoryName FROM ProdCategory p INNER JOIN ProdCategoryGroup g ON g.CategoryID = p.CategoryID WHERE g.GroupCategoryID = '" + strGroup + "' ORDER BY p.CategoryName ASC");
			Command.Connection = Connection;
			SqlDataReader reader = Command.ExecuteReader();

			while (reader.Read()) {
				result.Add(new CascadingDropDownNameValue(reader.GetString(1), reader.GetString(0)));
			}
			reader.Close();
			return result.ToArray();
			//SSW Code Auditor - Ignore next line
		} catch (Exception ex) {
			return null;
		} finally {
			Connection.Close();
		}

	}

	[WebMethod()]
	public string GetGroup(string CategoryID)
	{
		SqlConnection Connection = new SqlConnection(SSW.SSWMT.GlobalFunctions.GetWebConfigString("LocalWebDatabase"));

		try {
			Connection.Open();
			SqlCommand Command = new SqlCommand("SELECT GroupCategoryID FROM ProdCategoryGroup WHERE CategoryID = '" + CategoryID + "'");
			Command.Connection = Connection;
			string result = Command.ExecuteScalar().ToString();
			return result;
			//SSW Code Auditor - Ignore next line
		} catch (Exception ex) {
			return null;
		} finally {
			Connection.Close();
		}
	}

}
