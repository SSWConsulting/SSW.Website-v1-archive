using Microsoft.ApplicationInsights;
using System.Web.Mvc;

namespace App_Start.ApplicationInsights
{
    /// <summary>
    /// Helps send all unhandled MVC exceptions to Application Insights. Is added to pipeline in App_Start/FilterConfig
    /// Code taken from https://azure.microsoft.com/en-us/documentation/articles/app-insights-asp-net-exceptions/
    /// </summary>
    public class AiHandleErrorAttribute : HandleErrorAttribute
    {
        public override void OnException(ExceptionContext filterContext)
        {
            if (filterContext != null && filterContext.HttpContext != null && filterContext.Exception != null)
            {
                //If customError is Off, then AI HTTPModule will report the exception 
                //If it is On, or RemoteOnly (default) - then we need to explicitly track the exception 
                if (filterContext.HttpContext.IsCustomErrorEnabled)
                {
                    var ai = new TelemetryClient();
                    ai.TrackException(filterContext.Exception);
                }
            }
            base.OnException(filterContext);
        }
    }
}