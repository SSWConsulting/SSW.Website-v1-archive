using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;

namespace SSW.Website.WebUI
{
    /// <summary>
    /// YouTubeThumb - fetches a thumbnail image from youtube and streams directly back to the client
    /// Allows clients without access to youtube (china) to fallback to a thumbnail image.
    /// </summary>
    public class YouTubeThumb : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {

            string url = string.Format("https://i.ytimg.com/vi/{0}/maxresdefault.jpg", context.Request.Params["id"]);

            WebClient wc = new WebClient();
            using (var imageStream = wc.OpenRead(url))
            {
                if (imageStream != null)
                {
                    foreach (var key in wc.ResponseHeaders.Keys)
                    {
                        context.Response.Headers.Add(key.ToString(), wc.ResponseHeaders[key.ToString()]);
                    }
                    context.Response.Flush(); // flush the headers - prevents framework from changing the content type
                    imageStream.CopyTo(context.Response.OutputStream);
                }
            }
            context.Response.Flush();
            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}