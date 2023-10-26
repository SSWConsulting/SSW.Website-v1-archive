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

// --------------------------------------------------------------------------------------------------------------------
// <copyright file="HealthCheckTestsController.cs" company="SSW">
//   All rights reserved
// </copyright>
// <summary>
//   Health check API for tests. Allows running multiple or individual tests.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Web.Http;
using SSW.HealthCheck.Infrastructure;
namespace Controllers
{


	/// <summary>
	/// Health check API for tests. Allows running multiple or individual tests.
	/// </summary>
	public class HealthCheckStatisticsController : ApiController
	{
		/// <summary>
		/// Gets test run statistics
		/// </summary>
		/// <returns>Statistics of running test.</returns>
		public TestRunSummary Get()
		{
			IEnumerable<TestMonitor> tests = HealthCheckService.Default.GetAll();
			List<TestRunInstance> results = tests.Select(test => new TestRunInstance { Result = test.Run() }).ToList();
			return new TestRunSummary();
			//Return New TestRunSummary() With { _
			//    .IsHealthy = results.All(Function(r) r.Result.Success), _
			//    .Failed = results.Count(Function(r) Not r.Result.Success), _
			//    .Passed = results.Count(Function(r) r.Result.Success AndAlso Not r.Result.ShowWarning), _
			//    .Warnings = results.Count(Function(r) r.Result.Success AndAlso r.Result.ShowWarning), _
			//    .Total = results.Count() _
			//}
		}
	}

	/// <summary>
	/// Health check API for tests. Allows running multiple or individual tests.
	/// </summary>
	public class HealthCheckTestsController : ApiController
	{
		/// <summary>
		/// Run all tests.
		/// Sample request: GET api/healthchecktests
		/// </summary>
		/// <param name="id">The optional test id.</param>
		/// <returns>Collection of all test results</returns>
		[SuppressMessage("StyleCop.CSharp.DocumentationRules", "SA1650:ElementDocumentationMustBeSpelledCorrectly", Justification = "Reviewed. Suppression is OK here.")]
		public IEnumerable<TestRunInstance> Get(string id = null)
		{
			IEnumerable<TestMonitor> tests = HealthCheckService.Default.GetAll().Where(t => string.IsNullOrEmpty(id) || t.Key == id);
			List<TestRunInstance> results = tests.Select(test => new TestRunInstance {
				Result = test.Run(),
				Key = test.Key,
				Name = test.Name,
				Description = test.Description,
				Order = test.Order,
				TestCategory = test.TestCategory
			}).ToList();
			return results;
		}
	}
}

//=======================================================
//Service provided by Telerik (www.telerik.com)
//Conversion powered by NRefactory.
//Twitter: @telerik
//Facebook: facebook.com/telerik
//=======================================================
