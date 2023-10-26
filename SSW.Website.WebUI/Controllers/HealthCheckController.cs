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


using SSW.HealthCheck.Infrastructure;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web.Mvc;
using Newtonsoft.Json;
namespace Controllers
{

	public class HealthCheckController : Controller
	{

		private static readonly JsonSerializerSettings settings = new JsonSerializerSettings { DateFormatHandling = DateFormatHandling.IsoDateFormat };
		public ActionResult Index()
		{
			if (this.HttpContext != null) {
				HealthCheckService.Default.HttpContext = this.HttpContext.ApplicationInstance.Context;
			}

			IEnumerable<TestGroup> tests = HealthCheckService.Default.GetAll().GroupBy(t => new {
				Name = t.TestCategory == null ? "Default tests" : t.TestCategory.Name,
				Order = t.TestCategory == null ? 0 : t.TestCategory.Order
			}).OrderBy(g => g.Key.Order).ThenBy(g => g.Key.Name).Select(g => new TestGroup {
				Name = g.Key.Name,
				TestMonitors = g.OrderBy(i => i.Order).ThenBy(i => i.Key)
			});

			return this.View(tests);
		}

		public ActionResult Check(string key)
		{
			if (this.HttpContext != null) {
				HealthCheckService.Default.HttpContext = this.HttpContext.ApplicationInstance.Context;
			}

			TestMonitor m = HealthCheckService.Default.GetByKey(key);
			m.Run();
			string json = JsonConvert.SerializeObject(m, settings);
			return this.Content(json, "application/json");
		}
	}
}

//=======================================================
//Service provided by Telerik (www.telerik.com)
//Conversion powered by NRefactory.
//Twitter: @telerik
//Facebook: facebook.com/telerik
//=======================================================
