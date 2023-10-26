using App_Start.ApplicationInsights;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using System.Web.Http.ExceptionHandling;

public static class WebApiConfig
{
    public static void Register(HttpConfiguration config)
    {

        //Config Raygun
        Mindscape.Raygun4Net.WebApi.RaygunWebApiClient.Attach(config);
        // Web API configuration and services

        // Web API routes
        config.MapHttpAttributeRoutes();

        config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );

        // Configuration for Application Insights to capture unhandled exceptions
        config.Services.Add(typeof(IExceptionLogger), new AiExceptionLogger());

        config.IncludeErrorDetailPolicy = IncludeErrorDetailPolicy.Always;

       


    }
}
