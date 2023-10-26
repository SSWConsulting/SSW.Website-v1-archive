<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Business Intelligence - Setting up Resources"  %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
		
		
	    <h2>Attaching the AdventureWorks2000DW Data Warehouse Database</h2>
<p class="MsoNormal">In Enterprise Manager, right click <b>Databases </b>-&gt;<b> 
New Database</b>...</p>
		<p class="MsoNormal">Create a database with the name 
		&quot;AdventureWorks2000DW&quot;.</p>
		<p class="MsoNormal">Refresh the Enterprise Manager view so that the new 
		database is displayed. Right click the AdventureWorks2000DW database 
		that you just created, and select <b>All Tasks</b> -&gt; <b>Restore 
		Database</b>...</p>
		<p class="MsoNormal">In the <b>Restore</b> radio button group select 
		&quot;From Device&quot;, click <b>Select Device</b>. Click <b>Add</b> and 
		select the file that you downloaded (and uncompressed) to restore the 
		database.</p>
		<p class="MsoNormal">Note: you will need to make sure there are no 
		current connections to the database.</p>
	<h2>Bring in the AdventureWorks2000 Cube</h2>
<p class="MsoNormal">In Analysis Manager, right click server -&gt; Restore 
Database. Select the .cab file to create the Reseller Sales cube.</p>
		<p class="MsoNormal">You might need to change the data source for the 
		new cube, if you used an a different database name in the above steps. 
		In the data source dialog reselect the appropriate table and configure 
		any security information.</p>
<p class="MsoNormal">You might want to fix some of the properties of the cube. 
Check out
<a style="font-family: Tahoma; color: blue; text-decoration: underline; text-underline: single" href="http://www.ssw.com.au/ssw/Standards/Rules/RulesToBetterBusinessIntelligence.aspx">
http://www.ssw.com.au/ssw/Standards/Rules/RulesToBetterBusinessIntelligence.aspx</a>
for some rules that we think are important.</p>

			 <h2><a name="AcknowledgementsLikeThis"></a>Acknowledgements</H2>
                    <A href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AW">Andrew Weaver</A><BR>
					<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><BR>
					Grant Paisley
				</asp:content>