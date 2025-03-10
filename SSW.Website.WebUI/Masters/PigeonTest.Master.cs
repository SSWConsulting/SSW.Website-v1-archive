﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace SSW.Website.WebUI.Masters
{
    public partial class PigeonTest : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var link = new HtmlLink();
            link.Attributes.Add("rel", "canonical");
            link.Href = System.Configuration.ConfigurationManager.AppSettings["MainSiteUrl"] + Request.RawUrl.Replace("Ssw", "ssw").Replace("SSW", "ssw");
            this.HeaderScripts.Controls.Add(link);

            if (!string.IsNullOrEmpty(Request.QueryString["title"]))
            {
                Console.WriteLine(Request.QueryString["title"]);
                Page.Title = Request.QueryString["title"];
            }
        }
       
    }
}