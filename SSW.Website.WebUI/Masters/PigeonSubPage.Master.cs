using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Masters
{
    public partial class PigeonSubPage : System.Web.UI.MasterPage
    {
        public string pageCategory = "";

        protected override void OnPreRender(System.EventArgs e)
        {
            base.OnPreRender(e);

            char[] seperator = { '/' };
            string[] urlParts = Request.Url.AbsolutePath.Split(seperator, 3, StringSplitOptions.RemoveEmptyEntries);

            if ((urlParts.Length >= 2))
            {
                string categoryName = urlParts[1];
                this.CategoryColor.Attributes.Add("class", categoryName.ToLower().Replace(" ", "-"));
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            var link = new HtmlLink();
            link.Attributes.Add("rel", "canonical");
            link.Href = System.Configuration.ConfigurationManager.AppSettings["MainSiteUrl"] + Request.RawUrl.Replace("Ssw", "ssw").Replace("SSW", "ssw");
            // Page.Controls.Add(link);
            this.HeaderScripts.Controls.Add(link);
        }




        private string GetPageCategory() {
           
            var currentNode = this.SiteMapPath1.Provider.FindSiteMapNode(Context);
            if (currentNode.ParentNode != null)
            {
                return currentNode.ParentNode.Title;
            }
            return string.Empty;
        }
        public string PageCategory {
            get {
                return GetPageCategory();
            }
        }
    }
}