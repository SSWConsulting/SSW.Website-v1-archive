using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Controllers
{
    public class MenuItemsMapping
    {
        public List<MenuItem> MenuItems;       
    }

    public class MenuItem
    {
        public string Text;
        public string Description;
        public string NavigateUrl;
        public bool NavigateUrlOnMobileOnly;
        public string GroupImageUrl;
        public string CssClass;
        public string Target;
        public bool BreakListBefore;
        public List<MenuItem> Children;
    }
}