using Microsoft.ApplicationInsights;
using System.Web.Http.ExceptionHandling;

namespace App_Start.ApplicationInsights
{
    /// <summary>
    /// Helps send all unhandled Web API exceptions to Application Insights. Is added to pipeline in App_Start/WebApiConfig
    /// Code taken from https://azure.microsoft.com/en-us/documentation/articles/app-insights-asp-net-exceptions/
    /// </summary>
    public class AiExceptionLogger : ExceptionLogger
    {
        public override void Log(ExceptionLoggerContext context)
        {
            if (context != null && context.Exception != null)
            {//or reuse instance (recommended!). see note above 
                var ai = new TelemetryClient();
                ai.TrackException(context.Exception);
            }
            base.Log(context);
        }
    }
}