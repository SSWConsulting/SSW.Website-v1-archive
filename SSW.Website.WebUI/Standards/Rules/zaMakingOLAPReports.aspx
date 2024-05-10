<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Making reports from an OLAP data source in Yukon"  %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
		
			<h3>Making reports from an OLAP data source in Yukon</h3>
		
			<p>In this demo we will show you how to create a report using an OLAP data source. We will be basing our Report off the AdventureWorksDW sample database that is supplied with Yukon. </p>

			<p>We will be creating a report that shows The Adventure Works Internet Sales 
			(by Product Category) and that will allow us to drill down into the Subcategory and Product levels.</p>

			<p><b>Note: </b>Before trying to create a report on the AdventureWorksDW it is important to deploy and process the Adventure Works sample. To do this you will need to open the&nbsp; 
			Adventure Works solution in VS2005 and deploy it to your Analysis Services 
			Server. In a typical installation the Adventure Works solution can be found at this location: &quot;C:\Program 
			Files\Microsoft SQL Server\90\Tools\Samples\AdventureWorks Analysis 
			Services Project\&quot;.</p>

		<h2>Getting Started</h2>
		<ol>
		
		<li>Open up the Business Intelligence Studio
		<li>Create new Report Server project
		<li>Enter name and location for the project<li>Click OK
		<p><img src="Images/CreatingOLAPReports01.gif" width="691" height="505"><br><b>Figure:</b> 
		Creating a New Project.</p>
		</ol>
		
		<h2>Connecting to Analysis Services</h2>
		<p>Under your project, in the solution explorer, you will now have two folders:
		<ul>
		<li>Shared Data Sources
		<li>Reports
		</ul>
</p>

<ol>
	<li>Right click Shared Data Sources
	<li>Click Add New Data Source
	<li>Change the Type of data source to Microsoft SQL Server Analysis Services
	<li>Click Edit to create the connection string
		<p><img src="Images/CreatingOLAPReports02.gif" width="486" height="418"><br><b>Figure:</b> 
		Select Microsoft SQL Server Analysis Services.</p>
	<li>In the Server Name field type in the Name of your Server (eg localhost)<li>Select AdventureWorksDW 
	from the Database dropdown list<br><b>Note: </b>If the sample has not been deployed properly, the AdventureWorksDW database will not be accessible.<p><img src="Images/CreatingOLAPReports03.gif" width="314" height="398"><br><b>Figure:</b> 
		Building the Connection String.</p>
	<li>Click Test Connection
	<li>If the Connection String is good click OK
	<li>Name your Data Source after the Database (AdventureWorksDW)
	<li>Click OK
	</ol>
	<p>You will return to the IDE and you should now have an AdventureWorksDW.rds file listed under the Shared Data Sources folder.</p>
	
	<h2>Create the Report</h2>
	
	<ol>
	<li>Right click the Reports folder
	<li>Click Add New Report
	<li>Click Next on the splash screen
	<li>Click Next to Select the AdventureWorksDW as our Data Source
	<li>Click Query Builder to start building our Dataset
	</ol>
<h2>Lets make our Dataset</h2>
On the left of the Query Builder window, you will notice a section with a tab labeled Metadata. In this section you will see all the Measures, KPIs and Dimensions associated with your cube.
<ol>
<li>Expand the Measures group by clicking the plus
<li>Expand the Direct Sales folder
<li>Drag Internet Sales Amount over to the empty pane on the right (This is the preview window)
<li>Scroll down to and expand the Products dimension
<li>Drag the Product Category heirarchy over to the preview window
<p><img src="Images/CreatingOLAPReports04.gif" width="518" height="362"><br><b>Figure:</b> 
		Dragging dimension attributes across.</p>
<p>We will also be adding a parameter so that we can report on different years.</p>
<li>Expand the Date Dimension
<li>Expand the Calendar Folder
<li>Drag the Calendar Year attribute over to the Filter window on the top right of the Query Builder
<li>Tick the Parameter box
<li>Select All Periods from the Filter Expression dropdown list

<p>The Query Builder window should be looking something like this...</p>

<p><img src="Images/CreatingOLAPReports05.gif" width="797" height="313"><br><b>Figure:</b> 
		The dataset is complete.</p>
		<li>Click OK
</ol>

<h2>Finishing Up the Wizard</h2>

<p>After clicking OK on the Query Builder window, we will return to the Report wizard where you will see the MDX query that 
we just created. Try not to look at it for too long, you may hurt your eyes.</p>
<ol>
<li>Click Next
<li>Select the Tabular report type and click Next
<li>Click Group> three times to move the Category, Subcategory and Product Name over to the Groups section<br>
<b>Note:</b> The order in which you add the groups affects the way they will drill on the report.
<li>Click Details> once to move the Internet Sales Amount across to the Details section 
<li>Click Next
<li>Check the Enable Drill Down and Include Subtotals boxes
<li>Select the Corporate Style and Click Next (last time I promise)
<br><b>Note:</b> Selecting a style does not apply a style sheet to your report. Rather, it just formats the initial report components to match this scheme. If you delete any report items, and add new ones they will be without this formatting.

<li>Name the Report (something like Internet Sales by Product Category)<li>Click 
Finish</ol>
	
	 		<p>The bulk of our work is now done! You may preview your report by clicking on the Preview tab, but I must warn you, it needs some tidying up.</p>
	 <h2>Tidying Things Up</h2>
		<p>If you preview your report now, 
		it will look pretty ugly, but the functionality will be there. We will 
		adjust the table a little to make it look neater and we will also format 
		the sales figures to look like currency.</p>
		
		<ol>
		<li>Delete the Details row from the table
		<br><b>Note:</b> The details row adds an extra and unnecessary level of drilling to the report. Since we don't need it, we delete it. If you don't believe me, before you delete it, preview your report and drill down to the last level. It is redundant.
		<p><img src="Images/CreatingOLAPReports06.gif" width="542" height="328"><br><b>Figure:</b> 
		Deleting the Details row.</p>		
		<li>Select the three remaining Sales fields
		<li>Set their Format property to C0 (currency with zero decimal places)
		<p><img src="Images/CreatingOLAPReports07.gif" width="438" height="154"><br><b>Figure:</b> 
		Setting currency format.</p>
		<li>Adjust the Column widths to fit the content
		<br><b>Note:</b> Switch between layout and preview adjusting the columns until they are right.
		</ol>
		<p>The report should end up looking something like this</p>
		<p><img src="Images/CreatingOLAPReports08.gif" width="670" height="450"><br><b>Figure:</b> 
		Voila...One report ready to go.</p>

<h2>Deployment Time</h2>

<p>Prior to deploying the Report you will need to set the location of your Report Server. To do this right click the Report Project and go to properties. Your Report server will be in the form of <a href="MakingOLAPReports.aspx">http://server/ReportServer</a>. 
If you are working on your report server, you can simply set it to
<a href="MakingOLAPReports.aspx">http://server/ReportServer</a>.</p>

<p>Once you have set the Report Server, you can right click the Report Project and click Deploy.  Once it is complete you can view your reports in the Report Manager. Typically this URL is in the form of 
<a href="MakingOLAPReports.aspx">http://server/ReportServer</a>.</p>

<h2>Final Thought</h2>
<p>Was that easy or what? We made a report that supports drilling based off an OLAP source and we didnt have to write one line of MDX!</p>

<p>&nbsp;</p><p>&nbsp;</p>
<h2>Acknowledgements</h2>
 <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
 <BR>Grant Paisley
<br><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=MM">Michael Mileos</a>
                  
				</asp:content>