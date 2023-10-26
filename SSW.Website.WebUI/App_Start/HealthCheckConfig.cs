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
using SSW.HealthCheck.Infrastructure.Tests;
using SSW.HealthCheck.Mvc5;
using SSW.Website.HealthCheckTests.TestConfig;

[assembly: WebActivatorEx.PreApplicationStartMethod(typeof(HealthCheckConfig), "PreStart")]
public sealed class HealthCheckConfig
{
	private HealthCheckConfig()
	{
	}
	public static void PreStart()
	{
		// Add your start logic here
		RegisterTests();
	}
	public static void RegisterTests()
	{
		RegisterTests(HealthCheckService.Default);
	}
	public static void RegisterTests(HealthCheckService svc)
	{
		// Built in Health Check tests
        HealthCheckExtendedTestConfig.RegisterTests(svc);

        // migrated zsValidate tests
        ZsvalidateErrorPageTestConfig.RegisterTests(svc); 
        ZsvalidateStatusTestConfig.RegisterTests(svc);

		svc.Setup<Hubs.HealthCheckHub>();
	}
}
