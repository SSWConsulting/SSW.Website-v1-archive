<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Guidelines for Report Solutions - Rich Clients"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
		
		<h2>Rich Clients </h2>
				<br>  
		<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
	<tr>
		<td>
			<b>This is the order we recommend: </b><br>
			<ol>
			<li> <a href="#ReportingServices">Reporting Services</a><br>
			<li> <a href="#ASPX">ASP.NET Pages</a>
			<li> <a href="#Excel">Excel</a><br>
			<li> <a href="#Crystal">Crystal</a><br>
			<li> <a href="#XMLXSL">XML/XSL</a><br>
			<li> <a href="#Access">Access</a><br>
			<li> <a href="#DataAnalyzer"> Data Analyzer</a><br>
			</ol>

		</td>
	</tr>
</table>
<ol>

	<li>
		<h2>
		<a name="ReportingServices"></a>Reporting Services 
		</h2>
		
		<p>Pros</p>
		<ul>
			<li>Great designer</li>
			<li>Web based</li>
			<li>Can render to a number of different formats</li>
			<li>Can export to office web components so that the user can 
			continue with further analysis</li>
			<li>Access Report import wizard</li>
		</ul>
			<p>Cons </p>
		<ul>
			<li>Need to launch a browser window or embed a browser window 
			control within the application </li>
			<li>The charting components are still a little basic</li>
		</ul>	
		<p>
		<img src="Images/RSReport.gif" border=1 width="516" height="786"><br><b>Figure: Reporting Services 2005 Report</b>
		</p>
	</li>
	
	<li>
		<a name="ASPX"></a><h2>ASP.NET Pages</h2>
		<p>
		Pros
		<ul>
		<li>Highly customizable
		<li>Web based
		<li>Easily integrates into your website
		</ul>
		Cons
		<ul>
		<li>Development Time
		<li>Can be fiddly making reports look nice</ul>
		</p>
		<p>
		<img src="Images/aspx.gif" border=1 width="484" height="724"><br><b>Figure: Aspx used for reporting</b>
		</p>
	</li>
	
		
	<li>
		<h2>
		<a name="Excel"></a>Excel
		</h2>

		<p>Recommended for numerical tabular data it allows further analysis by the user eg. Sales Reports </p>
		<p>Pros  </p>
			<ul>
				<li>You can link the data in a sheet and then design a spreadsheet without using ANY code. </li>
				<li>You get the auto filters for free but the   
			limitation is row and column based and the layout is restricted. </li>
			</ul>
				<p>Cons</p>
			<ul>
				<li>Development Time (if you opt for manually hand coding OLE Automation instead of using the above method) </li>
			</ul>
		<p><img border="0" src="Images/RptInExcel.jpg" alt="Reporting in Incident PRO" width="600" height="493"><br>
			Figure 1 We used this method for reporting in Incident PRO! </p>
	<p>&nbsp;</p>
	</li>

	<li>
		<h2>
		<a name="Crystal"></a>Crystal
		</h2>

		<p>Recommend for external documents </p>
		<p>Pros</p>
		<ul>
			<li>Excellent for printed documents Eg. Invoices </li>
		</ul>
		<p>Con </p>
		<ul>
			<li>Deployment 
			issues </li>
			<li>7.5 MB extra to .exe </li>
		</ul>
				<p>Note: We used this method for reporting in SQL Auditor </p>
			<p><img border="1" src="Images/RptInCrystal.gif" alt="Report in Crystal Report" width="499" height="401"></p>
		<p>&nbsp;</p>
	</li>
	
	<li>
		<h2>
		<a name="XMLXSL"></a>XML/XSL
		</h2>

		<p>OK for simple tabular reports </p>
		<p>Cons</p>
		<ul>
			<li>No Graphs </li>
			<li>Development Time </li>
			<li>XSL is very hard to debug </li>
		</ul>
		
		<p>Note: We used this method for reporting in Code Auditor </p>
		<p><img border="0" src="Images/RptInXSL.jpg" alt="Report in XSL" width="320" height="338"></p>
		<p>&nbsp;</p>
	</li>
	
	<li>
		<h2>
		<a name="Access"></a>Access 
		</h2>
		
		<p>Pros</p>
		<ul>
			<li>Great designer </li>
		</ul>
			<p>Cons </p>
		<ul>
			<li>Not every end user has Access (this is a show stopper!) </li>
		</ul>	
		<p>&nbsp;</p>
	</li>
	
	<li>
		<h2>
		<a name="DataAnalyzer"></a>Data Analyzer 
		</h2>

		<p>Microsoft Data Analyzer - $250 AUS 
			</p>
			<% 'SSW Code Auditor - Ignore next line %>
		<img border="0" src="Images/RptInDataAnalyzer.jpg" alt="Report in data analyzer" width="600" height="585">
		
	</li>
</ol>
		
		
		
		

		</asp:content>