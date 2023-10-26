using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using SSW.Website.Common;

namespace Controllers
{
    public class MailController : ApiController
    {
        [HttpGet]
        public void Index()
        {

        }
        [HttpPost]
        public void Send([FromBody] EmailModel message)
        {

            var recResult = RecaptchaHelper.Validate(message.Recaptcha);
            if (!recResult.Valid)
            {
                throw new InvalidOperationException(recResult.FriendlyError);
            }

            SSW.SSWMT.GlobalFunctions.SendEmail(message.Body, message.Subject, message.From, message.To, true);
        }
    }
    public class EmailModel
    {
        public string From;
        public string To;
        public string Subject;
        public string Body;
        public string Recaptcha;

    }
}
