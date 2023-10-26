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
    public class ShareController : ApiController
    {
        [HttpGet]
        public void Index()
        {

        }

        [HttpPost()]
        public void Send(ShareModel shareModel) {
            string path = System.Web.Hosting.HostingEnvironment.MapPath("~/EmailTemplate/sharethispage.template");
            StreamReader reader = File.OpenText(path);
            EmailModel message = new EmailModel();
            message.Subject = "Are you stuck?";
            message.Body = reader.ReadToEnd().Replace("%%FullName%%", shareModel.FullName).Replace("%%ReferredFullName%%", shareModel.ReferredByFullName);
            message.To = shareModel.Email;
            message.From = "info@ssw.com.au";
            SSW.SSWMT.GlobalFunctions.SendEmail(message.Body, message.Subject, message.From, message.To, true);
            reader.Close();
        }

    }

    public class ShareModel
    {
        public string ReferredByFullName;
        public string FullName;
        public string Email;
    }

}
