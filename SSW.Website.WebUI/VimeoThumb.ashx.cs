using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace SSW.Website.WebUI
{
    /// <summary>
    /// VimeoThumb - fetches the list of thumbnail images from vimeo, the gets the thumbnail image and streams directly back to the client
    /// Allows clients without access to vimeo (china) to fallback to a thumbnail image.
    /// </summary>
    public class VimeoThumb : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            Console.WriteLine("Vimeo requested id: {0}", context.Request.Params["id"]);
            string urlForThumbnailList = string.Format("http://vimeo.com/api/v2/video/{0}.json", context.Request.Params["id"]);

            WebClient wc = new WebClient();
            var thumbnailJson = wc.DownloadString(urlForThumbnailList);            
            JArray jArray = JArray.Parse(thumbnailJson);
            JObject obj = jArray.Children<JObject>().First();
            var url = obj["thumbnail_large"].ToString();
                                 
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