<%@ Page Language="vb" MasterPageFile="~/Masters/Default.master" Title="AdventureWorks Sample Reports"  %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	    <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <p>
        Those reports require SQL Server Analysis Services and SQL Reporting Services. 
        If you successfully deploy AdventureWorks Sample Reports, you can browse reports under the AdventureWorks Sample Reports folder.
        You can use those samples to illustrate the sales summary and comparisons. 
    </p>
	<div class="TableOfContents">
        <ul>
                <li><a href="#CompanySales">Company Sales</a></li>
                <li><a href="#EmployeeSales">Employee Sales Summary</a></li>
                <li><a href="#ProductCatalog">Product Catalog</a></li>
                <li><a href="#ProductLine">Product Line Sales</a></li>
                <li><a href="#SalesOrder">Sales Order Detail</a></li>
                <li><a href="#SalesReason">Sales Reason Comparisons</a></li>
                <li><a href="#Territory">Territory Sales Drilldown</a></li>
        </ul>
    </div>
    <dl class="image">
        <dt><img src="Images/Adventure00.gif" alt="AdventureWorks Sample Reports"></dt>
        <dd>Figure: AdventureWorks Sample Reports</dd>
    </dl>
    <div id="mainContent">
        <ul>
            <!-- General Items -->
            <li>
                <h2><a name="CompanySales"></a>Company Sales</h2>
		        <p>
			        Adventure Works sales by quarter and product category. 
			        This report illustrates the use of a matrix data region that provides drilldown from summary data into detail data by showing and hiding rows. 
			        This report also illustrates the use of background images.
		        </p>
                <dl class="image">
                    <dt><img src="Images/Adventure01.gif" alt="Company Sales" ></dt>
                    <dd>Figure: Company Sales</dd>
                </dl>
            </li>
            <li>
                <h2><a name="EmployeeSales"></a>Employee Sales Summary</h2>
		        <p>
			        Adventure Works sales for an individual employee. 
			        This report includes Sales Comparison and Current Month Sales Comparison charts in addition to a Current Month Order Summary table with drillthrough to individual orders. 
			        This report illustrates the use of multiple datasets, charts, tables, drillthrough, and dynamic parameters.
		        </p>
                <dl class="image">
                    <dt><img src="Images/Adventure02.gif" alt="Employee Sales Summary" ></dt>
                    <dd>Figure: Employee Sales Summary</dd>
                </dl>
            </li>
	        <li>
                <h2><a name="ProductCatalog"></a>Product Catalog</h2>
		        <p>
			        Adventure Works full product catalog with pictures. 
			        This report illustrates the use of embedded images, database images, page breaks, page footers, tables, conditional formatting, and a document map.
		        </p>
                <dl class="image">
                    <dt><img src="Images/Adventure03.gif" alt="Product Catalog" ></dt>
                    <dd>Figure: Product Catalog</dd>
                </dl>
            </li>
	        <li>
                <h2><a name="ProductLine"></a>Product Line Sales</h2>
		        <p>
			        Adventure Works top five sales people and stores. This report illustrates a dataset with queries containing the TOP clause. 
			        It also illustrates the use of tables, charts, parameters, calculated fields, and drillthrough links.
		        </p>
                <dl class="image">
                    <dt><img src="Images/Adventure04.gif" alt="Product Line Sales" ></dt>
                    <dd>Figure: Product Line Sales</dd>
                </dl>
            </li>
            <li>
                <h2><a name="SalesOrder"></a>Sales Order Detail</h2>
		        <p>
			        Detail of an individual Adventure Works order. 
			        This report can be accessed as a drillthrough report from the Employee Sales Summary and Territory Sales drilldown report. 
			        This report illustrates the use of lists, tables, parameters, and expressions.
		        </p>
                <dl class="image">
                    <dt><img src="Images/Adventure05.gif" alt="Sales Order Detail" ></dt>
                    <dd>Figure: Sales Order Detail</dd>
                </dl>
            </li>
	        <li>
                <h2><a name="SalesReason"></a>Sales Reason Comparisons</h2>
		        <p>
			        Shows sales reason comparison data from an Analysis Services cube. Also illustrates the use of a multivalued parameter. 
			        The Sales Reason Comparisons report requires SQL Server Analysis Services and the AdventureWorks Analysis Services database.
		        </p>
                <dl class="image">
                    <dt><img src="Images/Adventure06.gif" alt="Sales Reason Comparisons" ></dt>
                    <dd>Figure: Sales Reason Comparisons</dd>
                </dl>
            </li>
	        <li>
                <h2><a name="Territory"></a>Territory Sales Drilldown</h2>
		        <p>
			        Adventure Works sales by territory. This report drills down through salesperson and order number with drillthrough to individual orders. 
			        This report illustrates the use of a table data region that provides drilldown from summary data into detail data by showing and hiding rows. 
			        This report also illustrates the use of drillthrough links and conditional formatting.
		        </p>
                <dl class="image">
                    <dt><img src="Images/Adventure07.gif" alt="Territory Sales Drilldown" ></dt>
                    <dd>Figure: Territory Sales Drilldown</dd>
                </dl>
            </li>
        </ul>
    </div>
</asp:content>