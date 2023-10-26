using Controllers;
using Mindscape.Raygun4Net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Configuration;
using System.IO;
using System.Net;
using System.Runtime.Caching;
using System.Text.Json.Serialization;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;

public partial class CRMService : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string odata = string.Empty;
        var ignoreError = false;

        try
        {
            odata = HttpUtility.UrlDecode(Request.QueryString["odata"]);
            ignoreError = Convert.ToBoolean(Request.QueryString["ignoreError"]);
        }
        catch
        {
            // ignored
        }

        try
        {
            CRMController.CRMUser userContent = new CRMController.CRMUser();
            if (!string.IsNullOrEmpty(odata))
            {
                userContent = CRMController.GetUser(odata);
            }

            var result = JsonConvert.SerializeObject(userContent);
            Response.ContentType = "application/json;odata=verbose";
            Response.Write(result);
        }
        catch (Exception ex)
        {
            if (!ignoreError)
            {
                throw;
            }

            Response.Write("Error getting CRM data");
        }
    }
}
