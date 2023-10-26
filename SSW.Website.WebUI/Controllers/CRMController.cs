

using Microsoft.Xrm.Sdk;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Controllers;
using SSW.Website.Common;
using Microsoft.Xrm.Tooling.Connector;
using Microsoft.TeamFoundation.Common;
using Microsoft.Xrm.Sdk.Query;
using System.Xml.Serialization;

namespace Controllers
{
    public class CRMController : ApiController
    {

        protected string crmServerHost;
        protected string leadTemplateUrl;
        protected static string connectionString;
      
        protected override void Initialize(HttpControllerContext controllerContext)
        {
            connectionString = System.Configuration.ConfigurationManager.AppSettings["CRMConnectionString"].ToString();
            CrmServiceClient conn = new CrmServiceClient(connectionString);
            leadTemplateUrl = @"https://ssw.crm6.dynamics.com/main.aspx?appid=05daa2a9-8768-446e-b9d3-580c8a6f9b8b&pagetype=entityrecord&etn=lead&id={0}";
            base.Initialize(controllerContext);
        }

        [HttpPost]
        public string CreateLead([FromBody] LeadMessage message)
        {
            try
            {
                var recResult = RecaptchaHelper.Validate(message.Recaptcha);
                if (!recResult.Valid)
                {
                    throw new InvalidOperationException(recResult.FriendlyError);
                }

                Entity entity = new Entity("lead");
                entity.Attributes.Add(new KeyValuePair<string, object>("address2_country", message.Country));
                entity.Attributes.Add(new KeyValuePair<string, object>("ssw_state", new OptionSetValue(Convert.ToInt32(message.State))));
                entity.Attributes.Add(new KeyValuePair<string, object>("subject", message.Topic));
                entity.Attributes.Add(new KeyValuePair<string, object>("companyname", message.Company));
                entity.Attributes.Add(new KeyValuePair<string, object>("lastname", message.Name));
                entity.Attributes.Add(new KeyValuePair<string, object>("mobilephone", message.Phone));
                entity.Attributes.Add(new KeyValuePair<string, object>("emailaddress1", message.Email));
                entity.Attributes.Add(new KeyValuePair<string, object>("ssw_leadsourcewebpage", message.SourceWebPageURL));

                if (message.Note == string.Empty)
                {
                    message.Note = "";
                }

                var note = message.Note + "\n\r\n\r" + "----------This lead is generated from website enquiry form----------";

                entity.Attributes.Add(new KeyValuePair<string, object>("description", note));

                var crmService = GetOrgService();
                if (crmService == null)
                {
                    throw new NullReferenceException("Fail to connect to CRM service");
                }

                var Id = crmService.Create(entity);
            }
            catch (Exception ex)
            {
                var client = new Mindscape.Raygun4Net.WebApi.RaygunWebApiClient();
                ex.Data.Add("PostData", Newtonsoft.Json.JsonConvert.SerializeObject(message));
                client.SetCurrentHttpRequest(ActionContext.Request);
                client.SendInBackground(ex);
                throw;
            }
            

            //email sending is replaced with CRM workflow

            //string emailFrom = System.Configuration.ConfigurationManager.AppSettings["SSWInfoEmailAddress"];
            //string emailTo = System.Configuration.ConfigurationManager.AppSettings["SSWContactUsEmailAddress"]; 

            //string emailSubject = message.EmailSubject;
            //string emailBody = message.EmailBody + string.Format(leadTemplateUrl, Id);

            //SSW.SSWMT.GlobalFunctions.SendEmail(emailBody, emailSubject, emailFrom, emailTo, true);

            return "OK";
        }

        [HttpGet]
        public static CRMUser GetUser(string userEmail)
        {
            CRMUser user = new CRMUser();
            if (connectionString.IsNullOrEmpty())
            {
                connectionString = System.Configuration.ConfigurationManager.AppSettings["CRMConnectionString"].ToString();
                CrmServiceClient conn = new CrmServiceClient(connectionString);
            }

            if (userEmail.IsNullOrEmpty())
            {
                throw new NullReferenceException("Fail to load user information");
            }

            var crmService = GetOrgService();

            if (crmService == null)
            {
                throw new NullReferenceException("Fail to connect to CRM service");
            }

            QueryExpression query = new QueryExpression
            {
                EntityName = "systemuser",
                ColumnSet = new ColumnSet("firstname", "nickname", "lastname", "photourl", "ssw_githuburl", "ssw_publicprofileurl", "ssw_shortdescription"),
                Criteria = new FilterExpression 
                {
                    FilterOperator = LogicalOperator.Or,
                    Filters =
                    {
                         new FilterExpression
                        {
                            Conditions =
                            {
                                new ConditionExpression
                                {
                                    AttributeName = "domainname",
                                    Operator = ConditionOperator.Equal,
                                    Values = { userEmail }
                                }
                            }
                        },
                        new FilterExpression
                        {
                            Conditions =
                            {
                                new ConditionExpression
                                {
                                    AttributeName = "internalemailaddress",
                                    Operator = ConditionOperator.Equal,
                                    Values = { userEmail }
                                }
                            }
                        }
                    }
                }
            };
            
            
            EntityCollection users = crmService.RetrieveMultiple(query);

            if (users.Entities.Count == 1)
            {
                user.FirstName = users.Entities[0].Attributes.Contains("firstname") ? users.Entities[0].Attributes["firstname"].ToString() : string.Empty;
                user.LastName = users.Entities[0].Attributes.Contains("lastname") ? users.Entities[0].Attributes["lastname"].ToString() : string.Empty;
                user.Nickname = users.Entities[0].Attributes.Contains("nickname") ? users.Entities[0].Attributes["nickname"].ToString() : string.Empty;
                user.PhotoURL = users.Entities[0].Attributes.Contains("photourl") ? users.Entities[0].Attributes["photourl"].ToString() : string.Empty;
                user.GitHubURL = users.Entities[0].Attributes.Contains("ssw_githuburl") ? users.Entities[0].Attributes["ssw_githuburl"].ToString() : string.Empty;
                user.ProfileURL = users.Entities[0].Attributes.Contains("ssw_publicprofileurl") ? users.Entities[0].Attributes["ssw_publicprofileurl"].ToString() : string.Empty;
                user.ShortDescription = users.Entities[0].Attributes.Contains("ssw_shortdescription") ? users.Entities[0].Attributes["ssw_shortdescription"].ToString() : string.Empty;
            }
            return user;
        }

        private static IOrganizationService GetOrgService()
        {
            //in the test enviornment, we didn't have a proper certificate, so need to ignore the certificate validation check
            System.Net.ServicePointManager.ServerCertificateValidationCallback = delegate { return true; };
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
            CrmServiceClient conn = new CrmServiceClient(connectionString);
           
            if (conn.IsReady) { 
                return (IOrganizationService)conn.OrganizationWebProxyClient != null ? (IOrganizationService)conn.OrganizationWebProxyClient : (IOrganizationService)conn.OrganizationServiceProxy;
            }
            else {
                throw new InvalidOperationException(string.Format("Unable to connect CRM:{0}",conn.LastCrmError));
            }

            
        }
        public class LeadMessage
        {
            public string Name;
            public string Topic;
            public string Company;
            public string Note;
            public string Country;
            public string State;
            public string Email;
            public string Phone; 
            public string Recaptcha;
            public string EmailBody;
            public string EmailSubject;
            public string SourceWebPageURL;
        }

        public class CRMUser
        {
            public string FirstName;
            public string LastName;
            public string Nickname;
            public string PhotoURL;
            public string GitHubURL;
            public string ProfileURL;
            public string ShortDescription;

            public string ToXML()
            {
                using (var stringwriter = new System.IO.StringWriter())
                {
                    var serializer = new XmlSerializer(this.GetType());
                    serializer.Serialize(stringwriter, this);
                    return stringwriter.ToString();
                }
            }
        }
    }
}
