using Elmah.ContentSyndication;
using Microsoft.TeamFoundation.Common;
using Newtonsoft.Json;
using SitemapActionResultSample.Components;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;

namespace Controllers
{
    public class SitemapController : Controller
    {
        string menuJsonUrl = "https://SSWConsulting.github.io/SSW.Website.Menu.json/menu.json";
        
        [Route("ssw/sitemap.xml")]
        [HttpGet]
        public async System.Threading.Tasks.Task<ActionResult> Index()
        {

            //load menu.json
            using (HttpClient client = new HttpClient())
            {
                MenuItemsMapping menu = new MenuItemsMapping();
                // Call asynchronous network methods in a try/catch block to handle exceptions
                try
                {
                    HttpResponseMessage response = await client.GetAsync(menuJsonUrl);
                    response.EnsureSuccessStatusCode();
                    string responseBody = await response.Content.ReadAsStringAsync();
                    menu = JsonConvert.DeserializeObject<MenuItemsMapping>(responseBody);
                }
                catch (HttpRequestException e)
                {
                    //TODO Deal with exception
                    Console.WriteLine("\nException Caught!");
                    Console.WriteLine("Message :{0} ", e.Message);
                }

                return new SitemapActionResult(menu.MenuItems);
            }
        }
    }
}