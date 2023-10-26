using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Web.UI;
using System.Xml.Serialization;

namespace SSW.Website.WebUI.Components
{
    public partial class Menu : UserControl
    {
        #region Variables/Contructor

        private List<MenuItem> _items;
        private StringBuilder _html;
        private int _currentMegaLength = 0;
        private int _currentMegaItemIndex = 0;
        private int _currentMegaColumnsUsed;
        private int _currentMegaColumns;

        public Menu()
        {
            Load += Page_Load;
        }

        #endregion

        #region Properties

        public bool RenderMobile { get; set; }

        private int _maxLevels = -1;
        public int MaxLevels { get { return _maxLevels; } set { _maxLevels = value; } }


        private int _defaultColumns = 4;
        public int DefaultColumns { get { return _defaultColumns; } set { _defaultColumns = value; } }

        private int _defaultColumnsUsed = 3;
        public int DefaultColumnsUsed { get { return _defaultColumnsUsed; } set { _defaultColumnsUsed = value; } }

        #endregion

        #region Methods

        protected void Page_Load(object sender, EventArgs e)
        {
            _html = new StringBuilder();

            var xmlSerializer = new XmlSerializer(typeof(List<MenuItem>));
            using (var sr = new StringReader(XmlDataSource1.GetXmlDocument().OuterXml))
            {
                _items = (List<MenuItem>)xmlSerializer.Deserialize(sr);
            }
            RenderItems(_items);

            MenuResult.Text = _html.ToString();
        }

        private void RenderItems(List<MenuItem> items)
        {
            _html.AppendFormat("<ul{0}>", RenderMobile ? " class='nav navbar-nav'" : "");
            foreach (var item in items)
            {
                _html.AppendFormat("<li{0}>", RenderMobile ? " class='dropdown'" : "");
                var hasChildren = item.Children != null && item.Children.Count > 0;
                _html.AppendFormat(
                    RenderMobile
                        ? "<a href='{0}#' class='dropdown-toggle {3}' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>{1}{2}</a>"
                        : "<a href='{0}#' class='ignore {3}'>{1}{2}</a>", item.NavigateUrl, item.Text,
                    hasChildren ? " <i class='fa fa-angle-down'></i>" : "", item.CssClass);

                if (hasChildren)
                {
                    if (!RenderMobile)
                    {
                        _html.Append("<div class='Menu'>");
                        if (!string.IsNullOrEmpty(item.GroupImageUrl))
                        {
                            _html.AppendFormat("<div class='MenuImg'><img src='{0}' /></div>", item.GroupImageUrl);
                        }
                        _html.Append("<div class='MenuWrapper row'>");
                    }
                    _currentMegaLength = CountChildren(item);
                    _currentMegaItemIndex = 0;
                    _currentMegaColumnsUsed = item.Columns > 0 ? item.Columns : DefaultColumnsUsed;
                    _currentMegaColumns = 12 / (item.Columns > 0 ? item.Columns : DefaultColumns);
                    _html.AppendFormat("<ul class='col-md-{0}{1}'>", _currentMegaColumns, RenderMobile ? " dropdown-menu" : "");
                    RenderChildren(item, 1);
                    _html.Append("</ul>");

                    if (!RenderMobile)
                        _html.Append("</div></div>");
                }
                _html.Append("</li>");
            }
            _html.Append("</ul>");
        }

        private void RenderChildren(MenuItem item, int level)
        {
            if (level > MaxLevels && MaxLevels >= 0)
                return;

            var childIndex = 0;
            foreach (var child in item.Children)
            {
                _currentMegaItemIndex++;
                var lastChild = childIndex >= item.Children.Count - 1;
                if ((child.BreakListBefore || (_currentMegaItemIndex > _currentMegaLength / _currentMegaColumnsUsed && !lastChild && childIndex > 0)) && !RenderMobile)
                {
                    _currentMegaItemIndex = 0;
                    _html.AppendFormat("</ul><ul class='col-md-{0}'>", _currentMegaColumns);
                }

                var hasChildren = child.Children != null && child.Children.Count > 0;
                var navigateUrl = child.NavigateUrl;
                var navigateUrlCss = child.CssClass;
                if (child.NavigateUrlOnMobileOnly && !RenderMobile)
                {
                    navigateUrl = "#";
                    navigateUrlCss += " NonClickableMenuItem";
                }
                _html.AppendFormat("<li class='{2} level{3}'><a href='{0}' class='ignore'>{1}</a>", navigateUrl, child.Text, navigateUrlCss, level);
                if (hasChildren && (level + 1 <= MaxLevels || MaxLevels == -1))
                {
                    RenderChildren(child, level + 1);
                }
                _html.Append("</li>");
                childIndex++;
            }
        }

        private int CountChildren(MenuItem item)
        {
            return item.Children.Count + item.Children.Sum(child => CountChildren(child));
        }

        #endregion

        #region Subclass
        public class MenuItem
        {
            [XmlAttribute]
            public string Text;
            [XmlAttribute]
            public string Description;
            [XmlAttribute]
            public string NavigateUrl;
            [XmlAttribute]
            public bool NavigateUrlOnMobileOnly;
            [XmlAttribute]
            public string GroupImageUrl;
            [XmlAttribute]
            public string CssClass;
            [XmlAttribute]
            public string Target;
            [XmlAttribute]
            public bool BreakListBefore;
            [XmlAttribute]
            public int Columns;
            [DataMember]
            public List<MenuItem> Children;
        }
        #endregion
    }
}
