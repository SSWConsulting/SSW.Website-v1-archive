<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Application Design Architecture Supporting Web Services"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
		
<p>This document outlines the design architecture of SSW's software development 
projects. We use a multi-tiered approach which can support the use of web 
services if need be - allowing our applications to have complete support for 
access from locations outside of our network.</p>



		<span lang="EN-AU" style="font-size: 12.0pt; font-family: Verdana"><br>
		</span><b>
		<img border="0" src="Images/WebServicesArchitecture-AdamVersion.gif" alt="web services Adam" width="743" height="681"><br>
		Figure: Diagram of SSW Application Design - Adam's Version</b><p>
			<b>
			<img border="0" src="Images/WebServicesArchitecture-RossVersion.gif" alt="Web services Ross" width="753" height="690"><br>
			Figure: Diagram of SSW Application Design - Ross' Version</b></p>
		<h2>
		<a name="FrontendWindows"></a>Frontend  Windows</h2>

<p>The front-end contains only the GUI and basic interface related code. A 
couple of examples of what the front-end filename could be are:</p>
<ul>
	<li>SSWTimePRO.exe (recommended)</li>
	<li>Northwind.exe</li>
</ul>
    
<p>Our front-ends are always written in Microsoft Visual Basic.NET. Our 
reasoning for this is that:</p>
<ul>
	<li>It is a friendlier language for less experienced developers (i.e. 
	interface designers, etc) to be working with.</li><li>It has declarative events (via the Handles statement)</li>
	<li>We prefer our developers to have active experience with both C# and 
	VB.NET - thus, we implement both in our projects (our business layer is 
	written in C#, as described below)</li>
</ul>
		<p>The following concepts and rules are used in our development of this 
		tier:</p>
<h3>How This Layer Communicates</h3>
<ul>
	<li>This layer talks to the Middle Tier (or Business Objects) as in logic and 
	partitioning, obviously not physically as all assemblies live on the same PC 
	- the functionality is exposed via a reference to Business.dll.</li>
</ul>
<h3>Example of a standard data entry form</h3>
		<blockquote>
			<table border="0" id="table1" width="28%" style="border-width: 1px" cellpadding="5" bordercolor="#000000" cellspacing="0">
				<tr>
					<td width="182" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-top-style: none; border-top-width: medium; border-bottom-style: solid; border-bottom-width: 1px">
					<b><span style = "FONT-SIZE:7pt">Form Name</font></b></td>
					<td style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-top-style: none; border-top-width: medium; border-bottom-style: solid; border-bottom-width: 1px">
					<b><span style = "FONT-SIZE:7pt">Purpose</font></b></td>
				</tr>
				<tr>
					<td width="182" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#AAAAAA">
					<span style = "FONT-SIZE:7pt">frmCustomer<br>
					(Inherits from frmBase - has standard style definitions and 
					functionality such as action buttons, etc)</font></td>
					<td valign="top" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#AAAAAA">
					<span style = "FONT-SIZE:7pt">Data Entry form</font></td>
				</tr>
				<tr>
					<td width="182" valign="top" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#AAAAAA">
					<span style = "FONT-SIZE:7pt">frmCustomerSearch</font></td>
					<td style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#AAAAAA">
					<span style = "FONT-SIZE:7pt">Form that lists records that match a user's 
					search criteria</font></td>
				</tr>
				<tr>
					<td width="182" valign="top" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium" bordercolor="#AAAAAA">
					<span style = "FONT-SIZE:7pt">frmCustomerList</font></td>
					<td style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium" bordercolor="#AAAAAA">
					<span style = "FONT-SIZE:7pt">Lists all records of a particular type</font></td>
				</tr>
			</table>
		</blockquote>
		<h3>One to Many display strategy</h3>
<ul>
	<li>Always show the many as subforms i.e. as pages on the tab control in VB.NET 
	(ie. frmCustomerOrderSub, frmCustomerContactSub)</li>
	<li>Populated with data only as needed, but since a rich client can have state, do not lose the data until move to a new customer record</li>
</ul>
		<p>
		<img border="0" src="Images/ScreenCpfShot.jpg" alt="" width="763" height="568"><br>
		<b>Figure: Related data displayed in a sub-form</b></p>
<h2>Frontend - Web</h2>
<p>This area is also written in Microsoft Visual Basic.NET (our reasons for 
doing this are described in the <a href="#FrontendWindows">above section</a>)</p>
<h3>Frontend - ASP.NET</h3>
		<blockquote> 
			<table border="0" id="table2" width="28%" style="border-width: 1px" cellpadding="5" bordercolor="#000000" cellspacing="0">
				<tr>
					<td width="182" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-top-style: none; border-top-width: medium; border-bottom-style: solid; border-bottom-width: 1px">
					<b><span style = "FONT-SIZE:7pt">Form Name</font></b></td>
					<td style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-top-style: none; border-top-width: medium; border-bottom-style: solid; border-bottom-width: 1px">
					<b><span style = "FONT-SIZE:7pt">Purpose</font></b></td>
				</tr>
				<tr>
					<td width="182" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#AAAAAA">
					<span style = "FONT-SIZE:7pt">Customer.aspx</font></td>
					<td valign="top" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#AAAAAA">
					<span style = "FONT-SIZE:7pt">Data Entry form</font></td>
				</tr>
				<tr>
					<td width="182" valign="top" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium" bordercolor="#AAAAAA">
					<span style = "FONT-SIZE:7pt">CustomerList.aspx</font></td>
					<td style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium" bordercolor="#AAAAAA">
					<span style = "FONT-SIZE:7pt">Lists all records of a particular type</font></td>
				</tr>
			</table>
		</blockquote>
		<h3>One to Many display strategy</h3>
<ul>
	<li>Always show the many as subforms ie. as pages on the tab control in ASP.NET 
	(ie. frmCustomerOrderSub, frmCustomerContactSub)</li>
	<li>Populated with data only as needed, but since a web client shouldn't have state, do not attempt to keep the data ie. show one subform at a time</li>
</ul>
<h2>Business Objects</h2>
		<h3>Examples of Names:</h3>
<ul>
	<li>Business (recommended)</li>
	<li>NorthwindClassLibrary</li>
	<li>MiddleTier</li>
</ul>
<h3>Coding</h3>
<p>The Middle Tier (or Business Objects) is essentially ADO.NET code written in 
C# talking to stored procedures - no direct actions (INSERT, UPDATE, DELETE) in 
inline SQL</p>
<ul>
	<li>Customer.Select(strWhere, strCnn)</li>
	<li>Use a DataSet as it is a static snapshot of data, suitable for 
	transport across a web service (DataReaders aren't)</li>
	<li>Customer.Insert(..., strCnn) - Use sqlCommand DC</li>
	<li>Customer.Update(..., strCustomerID, intConcurrency, strCnn) 
	- Use sqlCommand DC</li>
	<li>Customer.Delete(strCustomerID, intConcurrency, strCnn) 
	- Use sqlCommand DC</li>
</ul>

<h2>Backend</h2>
<p>The backend is our data store - it's typically running on SQL Server or MSDE.</p>
<p>Examples of Names:</p>
<ul>
	<li>SSWTimePRO2000 (recommended)</li>
	<li>Northwind</li>
</ul>

<h2>Coding</h2>
<p><strike>Stored procs are better but they are more expensive for the customer. Therefore this is the suggested compromise.
    Stored procs for action for data integrity.
    SQL OK for SELECT</strike> </p>
<h2>Web Connectivity/Web Services</h2>
<p>The web services layer provides access to our business service via SOAP (an 
XML-based object access protocol that runs over HTTP).</p>
<p>Examples of Names:</p>
<ul>
	<li>WebServices (recommended)</li>
	<li>NorthwindWebService</li>
</ul>
<p>This is then implemented by creating a virtual directory in IIS that points 
to a collection of ASP.NET web service files, which in turn serves as a pointer 
to the Business Objects class.</p>
<h3>Coding</h3>
<p>In order to provide this access, we need to make our Middle Tier
    web enabled. This is done by adding [WebMethod] attributes to all functions.</p>
<p>Security is a consideration that should be taken seriously - after all, 
having this layer present will provide a publicly accessible gateway to all data 
in your backend!</p>
</asp:content>