namespace SSW.Website.WebUI.Products
{
    partial class DefaultPage : System.Web.UI.Page
    {
        #region " Web Form Designer Generated Code "

        //This call is required by the Web Form Designer.
        [System.Diagnostics.DebuggerStepThrough()]

        private void InitializeComponent()
        {
        }


        private void Page_Init(System.Object sender, System.EventArgs e)
        {
            //CODEGEN: This method call is required by the Web Form Designer
            //Do not modify it using the code editor.
            InitializeComponent();
        }

        #endregion

        private void Page_Load(System.Object sender, System.EventArgs e)
        {
            //Bind the data
            //BuildProducts();
        }

        //private string GenerateProductHtml(VwProdSummaryList product, string groupClass, bool isPast)
        //{
        //    string productName = product.ProductName.StartsWith("SSW") ? product.ProductName.Remove(0, 3).Trim() : product.ProductName.Trim();
        //    string productDescription = product.Description;
        //    string websiteLink = string.IsNullOrWhiteSpace(product.Website) ? string.Empty: string.Format("href='{0}'", product.Website);
        //    string popular = product.IsPopular.GetValueOrDefault(false) ? "<span class=emphasistext>*popular*</span>" : string.Empty;
        //    string decommissioned = isPast ? "<span class='decommissionedtext'>decommissioned</span>" : string.Empty;
        //    string featured = product.IsFeatured.GetValueOrDefault(false) ? "featured-prod" : string.Empty;
            
        //    return string.Format("<div class='item all {0}-prod {1} {2}'><a {3}><div class='ourHolder-text'><h3>{4} {5}{6}</h3><p>{7}</p></div></a></div>", groupClass, featured, isPast? "decommissioned":string.Empty, websiteLink, productName, popular, decommissioned, productDescription);
        //}

        //private string GenerateGroupHtml(VwProdSummaryGroupList group, IEnumerable<VwProdSummaryList> currentProducts, IEnumerable<VwProdSummaryList> pastProducts, out string filterLink)
        //{
        //    currentProducts = currentProducts ?? Enumerable.Empty<VwProdSummaryList>();
        //    pastProducts = pastProducts ?? Enumerable.Empty<VwProdSummaryList>();

        //    StringBuilder htmlBuilder = new StringBuilder();

        //    Regex regularExpression = new Regex("[^a-zA-Z0-9]");
        //    string productGroupClass = regularExpression.Replace(group.CategoryName, "").ToLower();
        //    string groupIcon = string.Format("<img src={0} border=0 alt='{1}'>&nbsp;", group.Image, group.CategoryName);

        //    string decommissioned = currentProducts.Any() ? string.Empty : "decommissioned";
            
        //    htmlBuilder.AppendFormat("<div class='item isotope-header all {0}-prod {1}'><h2>{2}<a href='{3}'>{4}</a></h2></div>", productGroupClass, decommissioned, groupIcon, group.WebSite, group.CategoryName);

        //    currentProducts.Select(product => htmlBuilder.Append(GenerateProductHtml(product, productGroupClass, false))).ToList();
        //    pastProducts.Select(product => htmlBuilder.Append(GenerateProductHtml(product, productGroupClass, true))).ToList();

        //    //ADDING GROUP FILTER
        //    string dataFilter = string.Format(".{0}-prod", productGroupClass);
        //    filterLink = string.Format("<li class='filterItem {0}'><a href='#filter' data-filter='{1}'>{2}</a></li>", decommissioned, dataFilter, group.CategoryName);

        //    return htmlBuilder.ToString();
        //}

        //private void BuildProducts()
        //{
        //    var productApi = WebApiClientHelper.GetProductClient();

        //    //Fetch all our products
        //    var products = productApi.ProductGetProd(true).Select(p => new Product {Group = p.CategoryName, Item = p, IsCurrent = true }).ToList();
        //    var pastProducts = productApi.ProductGetProd(false).Select(p => new Product { Group = p.CategoryName, Item = p, IsCurrent = false });
        //    products.AddRange(pastProducts);

        //    var groupedProducts = products.GroupBy(p => p.Group).OrderBy(g => g.Key);

        //    //Fetch all our product groups
        //    var currentProductGroups = productApi.ProductGetProdSummaryGroups(true);
        //    var pastProductGroups = productApi.ProductGetProdSummaryGroups(false);
            
        //    foreach (var grouping in groupedProducts)
        //    {
        //        var group = currentProductGroups.FirstOrDefault(g => g.CategoryName == grouping.Key) ?? pastProductGroups.First(g => g.CategoryName == grouping.Key);
        //        var filterLink = string.Empty;

        //        var current = grouping.Where(p => p.IsCurrent).Select(p => p.Item);
        //        var past = grouping.Where(p => !p.IsCurrent).Select(p => p.Item);
        //        var groupHtml = GenerateGroupHtml(group, current, past, out filterLink);

        //        ProductsListLiteral.Text += groupHtml;
        //        FiltersLiteral.Text += filterLink;
        //    }
        //}

        //public DefaultPage()
        //{
        //    Load += Page_Load;
        //    Init += Page_Init;
        //}
        //private class Product
        //{
        //    public string Group { get; set; }
        //    public VwProdSummaryList Item { get; set; }
        //    public bool IsCurrent { get; set; }
        //}
    }
}
