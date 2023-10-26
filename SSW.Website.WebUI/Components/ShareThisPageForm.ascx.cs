using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Components
{
    public partial class ShareThisPageForm : System.Web.UI.UserControl
    {
        public string RecaptchaPublicKey { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            RecaptchaPublicKey = System.Configuration.ConfigurationManager.AppSettings["recaptchaPublicKey"];
        }
    }
}