using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Events
{
    public partial class Event : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string _event = Page.RouteData.Values["event"] as string;
            string _location = Page.RouteData.Values["location"] as string;
            string _date = Page.RouteData.Values["date"] as string;
        }
    }
}