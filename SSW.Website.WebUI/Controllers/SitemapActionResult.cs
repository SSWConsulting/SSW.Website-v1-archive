using System;
using System.Collections.Generic;
using System.Web.Mvc;
using System.Xml;
using Controllers;
using Microsoft.TeamFoundation.Common;

namespace SitemapActionResultSample.Components
{
    public class SitemapActionResult : ActionResult
    {
        private List<MenuItem> _menuItems;

        public SitemapActionResult(List<MenuItem> menuItems)
        {
            this._menuItems = menuItems;
        }

        public override void ExecuteResult(ControllerContext context)
        {
            context.HttpContext.Response.ContentType = "application/rss+xml";

            using (XmlWriter writer = XmlWriter.Create(context.HttpContext.Response.Output))
            {
                writer.WriteStartElement("urlset", "http://www.sitemaps.org/schemas/sitemap/0.9");

                writer.WriteStartElement("url");
                writer.WriteElementString("loc", "https://ssw.com.au");

                writer.WriteElementString("lastmod", DateTime.Now.ToString("yyyy-MM-dd"));

                writer.WriteElementString("changefreq", "weekly");
                writer.WriteElementString("priority", "1.0");
                writer.WriteEndElement();

                foreach (MenuItem elt in this._menuItems)
                    writeMenuItem(writer, elt);

                writer.WriteEndElement();

                writer.Flush();
                writer.Close();
            }
        }

        private static void writeMenuItem(XmlWriter writer, MenuItem elt)
        {
            if (!String.IsNullOrEmpty(elt.NavigateUrl))
            {
                writer.WriteStartElement("url");           
                writer.WriteElementString("loc", elt.NavigateUrl);
                writer.WriteEndElement();
            }
            //writer.WriteElementString("lastmod", elt.UpdatedOn.ToString("yyyy-MM-dd"));

            // writer.WriteElementString("changefreq", "daily");
            // writer.WriteElementString("priority", "0.5");
            //writer.WriteEndElement();
            //add element
            if (!elt.Children.IsNullOrEmpty())
            {
                foreach(MenuItem child in elt.Children)
                writeMenuItem(writer, child);
            }

        }
    }
}