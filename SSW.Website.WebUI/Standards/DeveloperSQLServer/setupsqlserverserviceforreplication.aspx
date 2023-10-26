<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW SQL Server Setup - Merge Replication"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
<h2>Standard for SQL Server Agent Setup - Merge Replication</h2>
<ol start="1">
	<li> Create a user on the SSW Domain (ie SSW2000\SQLServerMachineName). For example:
		<blockquote>
			<table>
				<tr>
					<td width="100">Computer</td>
					<td>GOOSE</td>
				</tr>
				<tr>
					<td>Full Name</td>
					<td>SQLServerGOOSE</td>
				</tr>
				<tr>
					<td>Password</td>
					<td>[Default company password]</td>
				</tr>
			</table>
		</blockquote>
		This can be done via Active Directory Users and Computers on the Domain Controller (e.g. WOLF)
	</li>
	
	<p><img src="Images/imgSQLServerAgentUsers.gif" alt="" width="551" height="87"></img></p>
	
	<li>Give this user Domain Administrative privileges - or at least a user that has file access to the distribution machine (normally the publisher). This user will be the identity under which SQL Server Service and SQL Server Agent will run. </li>
	
	<p>
    <img src="Images/imgSQLServerAgentUserProperties.gif" alt="" width="401" height="500"></img></p>
	
	<li>Add a user on the local machine with the same username and password.
	We are using the same username and password so the Local user will have the same permissions as the 
	domain user (e.g. local CHIMP\SQLServerCHIMP will have same permissions as SSW2000\SQLServerCHIMP). 
	Replication requires that the SQL Server Agent has file access to the distributor (which is JOEY). This file access 
	is required because it is going to be writing files (your TMP and SCH files, for example) to shared volumes 
	(ie other machines on the domain).</li>
	
	<li>Open Enterprise Manager, then right-click SQL Server Agent, click "Properties". You must ensure that the SQL Server Agent has permissions 
	to Access remote resources, such as file paths on other machines. </li>
</ol>

<p><img src="Images/imgSQLServerAgentProperties.gif" alt="" width="350" height="312"></img></p>
<p>
<img src="Images/imgSQLServerAgentPropertiesGeneralTab.gif" alt="" width="408" height="456"></img></p>

This is necessary because replication must physically access the file system of the distributor for snapshot and bulk copy files.
<br>
<br>
<h2>Acknowledgements</h2>
<p>
<a href="/ssw/Employees/employeesXML.aspx">David Klein</a> 
</p> 
		</asp:content>