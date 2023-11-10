<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Guidelines for Report Solutions"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				
		<h2>What do you do reports in?</h2>
There are so many options for reporting. There are two main types of reports
<ul>
	<li>
		Detail Reports. Printable reports that show detailed information for each row in the database. (e.g. an Invoice)
	</li>
	<li>
		Summary Reports. Business Intelligence Reports that group and summarise data into counts and sums of individual rows (e.g. a Monthly 
		sales with a chart)
	</li>
</ul>
Some of the main options:
<p>
	<b>Web and Windows - SQL Server Reporting Services</b></p>
<ul>
	<li>
		Pro: Export reports to a large number of different formats (html, pdf, office components, image)
	</li>
	<li>
		Pro: Scheduling report execution and emailing reports
	</li>
	<li>
		Pro: Multiple data source types
	</li>
	<li>
		Pro: Integrated report designer with VS.NET
	</li>
	<li>
		Pro: Web-based management interface, with incorporated security
	</li>	
	<li>
		Con: Limited charting capabilities (will be expected to improve)
	</li>
	<li>
		Con: Querystring loading functionality works, but it isn't shown in the browser
	</li>	
	<li>
		Con: Limited control set (although the controls are very rich)
	</li>	
	<li>
		Con: Difficult to integrate user input and dynamic behaviours
	</li>		
	<li>
		OLAP: Works  but need to know MDX
	</li>
</ul>
<p>
	<b>Web - ASPX</b></p>
<ul>
	<li>
		Pro: The DataGrids
	</li>
	<li>
		Pro: QueryString that can be emailed
	</li>
	<li>
		Pro: sorting hyperlinks
	</li>
	<li>
		Con: users cant do it
	</li>
	<li>
		Con: Hard to make print OK  can do it with CSS Printing
	</li>
	<li>
		Con: Impossible to make it print for multiple page reports
	</li>
	<li>
		OLAP: Works  but need to know MDX
	</li>
</ul>
<p>
	<b>Web  Crystal Reports</b></p>
<ul>
	<li>
		Pro: Great Printing - Easy to export to .pdf for printing
	</li>
	<li>
		Pro: Easy to export to .xls for analyzing
	</li>
	<li>
		Pro: Quicker to develop than ASPX -
	</li>
	<li>
		Pro: If client has specific needs for exactly how the report should look  you can be specific
	</li>
	<li>
		Pro: Integrates well with Strongly Typed Datasets
	</li>
	<li>
		Pro: drill down feature</li>
	<li>
		Con: users licensing costs if &gt; 5 concurrent reports
	</li>
	<li>
		Con: no sorting hyperlinks
	</li>
	<li>
		OLAP: Works  but need to know MDX
	</li>
</ul>
<p>
	<b>Web  Active Reports </b>
</p>
<ul>
	<li>
		Basically an alternative if you were to choose Crystal
	</li>
	<li>
		Con: Not in bed with Microsoft like Crystal
	</li>
	<li>
		OLAP: Works  but need to know MDX
	</li>
</ul>
<p>
	<b>Web - XML/XSL inside an ASPX page </b>
</p>
<ul>
	<li>
		Pro: can do great things like <a target="_blank" href="../../Redirect/XML/AmorphousMediaXSLReporting.htm">http://www.amorphous-media.com/client_demo/xmlreports/student_app.htm</a>&nbsp;<IMG alt="You are going to a site outside of SSW" src="/ssw/Images/leavesite.gif" width="17" height="11"></li>
	<li>
		Pro: can have client side filters and sorting
	</li>
	<li>
		Con: Development time
	</li>
	<li>
		Con: Impossible to make it print for multiple page reports
	</li>
	<li>
		OLAP: Works  but need to know MDX
	</li>
</ul>
<p>
	<b>Windows - Access </b>
</p>
<ul>
	<li>
		Pro: Great Printing
	</li>
	<li>
		Pro: Can use on the web with SSW Access Reporter for IIS (and can make a .pdf) <br>
		e.g. <a target="_blank" href="http://www.ssw.com.au/ssw/AccessReporterForIIS/AccessReporterDemo.aspx">http://www.ssw.com.au/ssw/AccessReporterForIIS/AccessReporterDemo.aspx</a> 
	</li>
	<li>
		Con: No drill down feature
	</li>
	<li>
		OLAP: Nothing  ODBC doesnt allow you to link to OLAP
	</li>
</ul>
<p>
	<b>Windows - Excel </b>
</p>
<ul>
	<li>
		Pro: Quicker to develop
	</li>
	<li>
		Pro: Admin staff can change it
	</li>
	<li>
		Pro: Can embed components on the web
	</li>
	<li>
		Con: to add the filter fields (or any customisation) you need to add code
	</li>
	<li>
		OLAP: Works great and hides the complexity
	</li>
</ul>
<p>
	<b>Windows  Crystal Reports</b>
</p>
<ul>
	<li>
		Con: no QueryString that can be emailed
	</li>
	<li>
		OLAP: Works  but need to know MDX
	</li>
</ul>
<p>
	<b>Windows  Active Reports</b>
</p>
<ul>
	<li>
		Con: no QueryString that can be emailed
	</li>
	<li>
		OLAP: Works  but need to know MDX
	</li>
</ul>
<p>
	<b>Windows - Data Analyzer </b>
</p>
<ul>
	<li>
		Pro: Create for seeing data trends for little work
	</li>
	<li>
		Con: Can use for detail type reports
	</li>
</ul>
<h2>So which one when doing detail type reports? (usually printable ones e.g. 
	an Invoice)</h2>
<p>
	Because you can't control the report length and need strong layout control, 
	a proper reporting solution is the best option. Hence Reporting Services and
	Crystal (although not naturally my second choice), but the fact is you just dont know if the report is going to be multiple pages so:
</p>
<ol>
	<li>
		Web and Windows - Reporting Services</li>
	<li>
		Web  Crystal Reports
	</li>
	<li>
		Windows  Crystal Reports <br>
		Note: the same report can be used on both web and windows
	</li>
	<li>
		Web  Active Reports
	</li>
	<li>
		Windows  Active Reports <br>
		Then
	</li>
	<li>
		Windows - Access
	</li>
	<li>
		Windows - Excel
	</li>
	<li>
		Web - ASPX
	</li>
	<li>
		Web - XML/XSL inside an ASPX page
	</li>
</ol>
<h2>So which one when doing summary type reports (usually business intelligence ones e.g. monthly sales with a chart)</h2>
<p>
	For these reports, the important thing for me is development time, having drill down functionality and the ability to put the reports on 
	the web. Also I really like having reports with a query string, so it can be emailed/Instant messaged. Below is a general guide as to the 
	order I choose, based on these requirements: <br>
	BTW This is not in concrete and we use all the below options for different clients.
</p>
<ol>
	<li>
		Web and Windows - Reporting Services</li>
	<li>
		Web - ASPX
	</li>
	<li>
		Windows - Excel
	</li>
	<li>
		Web  Crystal Reports
	</li>
	<li>
		Web  Active Reports
	</li>
	<li>
		Windows  Crystal Reports
	</li>
	<li>
		Windows  Active Reports
	</li>
	<li>
		Windows - Access
	</li>
	<li>
		Web - XML/XSL inside an ASPX page
	</li>
</ol>
<p>
	If OLAP is in the picture then
</p>
<ol>
	<li>
		Windows - Excel
	</li>
	<li>
		Windows - Data Analyzer</li>
</ol>

		<h2>Rich Client and Web Client Options</h2>

		<p>
			<a href="GuidelinesForReportingRichClient.aspx">Rich Client Options</a></p>
		<p>
			<a href="GuidelinesForReportingWebClient.aspx">Web Client Options</a></p>

		</asp:content>