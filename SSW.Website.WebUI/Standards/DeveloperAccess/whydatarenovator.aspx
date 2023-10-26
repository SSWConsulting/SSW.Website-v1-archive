<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Why Data Renovator"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
<p>
		<img src="/ssw/DataRenovator/Images/DataRenovatorLogo.gif" alt="SSW Data Renovator" align="right" width="237" height="83">  
		Keeping your live production database up to date with the latest structural changes is an ongoing problem for 
		developers. The database needs to be taken offline quickly to make structural changes and convert data but this 
		can be tricky when people are relying on the system. The data conversion can also take time as new fields and 
		relationships might have been added. 
</p>
<h2></a>The Common Scenario</h2>
	<p>
	At SSW the common scenario when the client requested changes to an existing application was that: 
	<ol>
		<li>While the changes are made the client continued to use the database system in their offices.</li>
		<li>The developers worked on the Application Database and made structural changes to a copy of the Data Database.</li>
		<li>Changes to the Data Database were tracked and either Update Queries or DAO code was written to make the update.</li>
	</ol>
	<p>
	After development was finished, a visit was made to the clients offices and the database was taken offline while changes were 
	made manually to the Data database. This was time consuming and expensive for the client, there had to be a better way...
	</p>
<h2></a>Using SSW Data Renovator</h2>	
	<p>
	So we developed SSW Data Renovator. This allows us to do the development in a similar way but when we come to update the 
	data at the clients offices we use SSW Data Renovator. We compare the version that the Client has been using against the 
	version that has just come out of development. The changes are checked and confirmed and all reports are printed. The data 
	is then transferred into a clean copy of the new database structure and the number of records transferred is checked from 
	within the SSW Data Renovator interface. The downtime of the clients database system is shortened and the possibility of 
	mistakes is reduced. 
	</p>
	<p>
	Note: If the client is not accessible we use <a href="/ssw/DataPRO">SSW Data PRO!</a>  Which uses a different approach in that it records changes to the 
	data database and replicates at the client site i.e. perform changes to database structure remotely without user 
	intervention. 
	</p>
<h2></a>Different Methods of Updating a Database </h2>
<p>
	The following examples assume that the database is in Microsoft Access format and has the data in a separate database to the 
	forms, reports and code. The client or live production database is named DBDATAv1.mdb and the development team has made changes 
	to the structure of this database, which is now called DBDATAv2.mdb.
</p>	
<p>

<table class="clsSSWTable" width="100%">
        <tr align=center valign=center>
					<td width=31> 
					  <b>No</b>
					</td>
	        <td  width=108> 
						<b>Method</b>
					</td>
					<td>
						<b>Develop On</b>
					</td>
					<td>
						<b>Additional Development</b>
					</td>
					<td>
						<b>Downtime for Client</b>
					</td>
					<td> 
						<b>Comments</b>
					</td>
        </tr>
        <tr> 
					<td> 
					   1.
					</td>
					<td> 
						Database Offline(Cannot be used during development)
					</td>
					<td>
						Master copy of Application and Data (DBDATAv 
					</td>
					<td>
						None.
					</td>
					<td> 
						As long as development takes (days to weeks)
					</td>
					<td>
						Can work for small, quick changes
					</td>
        </tr>
        <tr> 
					<td>
						2.
					</td>
          <td>
						Database Online  Manual Updates
					</td>
          <td>
						Master copy of Application Copy of production database
          </td>
          <td>
						None. Keep a record of structural changes
          </td>
          <td>
						As long as it takes to make changes manually (a few hours)
          </td>
          <td>
						Works for small changes. Chance that some changes will be missed on larger jobs
          </td>
        </tr>
        <tr>
        	<td>
						3.
					</td>
          <td>
						Database Online  Write Queries to move data from development to production
					</td>
          <td>
						 Master copy of Application Copy of production database
          </td>
          <td>
						 Writing and testing update Queries at the end of development
          </td>
          <td>
						As long as it takes to run the queries and convert data (a few hours)
          </td>
          <td>
						Allocate lots of time at the end of development to write and test the update queries.
          </td>
        </tr>
        <tr>
        	<td>
						4.
					</td>
          <td>
						Client Online  Write DAO Code to change structure of production database
					</td>
          <td>
						 Master copy of Application Copy of production database
          </td>
          <td>
						Code and interface to store and make the changes to live data
          </td>
          <td>
						As long as it takes to run the code (a few minutes)
          </td>
          <td>
						Good if the database has a large amount of data and few structural changes
          </td>
        </tr>
</table>
</p>
<h2></a>Issues of Converting Live Data</h2>
<p>
	Assuming you have ruled out the first option Database Offline for anything other than small changes, the following issues 
	need to be considered: 
</p>
<ul>
	<li><b>Tracking Structural Changes</b></li>
	<p>
	As development is being done on a copy of the live database that will be synchronized with the live database at the end of 
	development, all changes to the schema must be tracked. Tracking changes is especially important when using methods 2, 3 
	and 4. SSW Data Renovator compares two databases and reports any differences in the structure 
	</p>
	<li><b>Making Structural Changes</b></li>
	<p>
	If the old database will have its structure changed instead of transferring all data into the new database, structural 
	changes need to be made either manually or through code. Methods 2 and 4 work this way. Another SSW product SSW Data PRO! 
	can be used to automatically make structural changes to databases on-site 
	</p>
	<li><b>Removing all test data from the new structure</b></li>
	<p>
	Using Methods 2 and 3, the developer makes a copy of the master data database that has the new structure, clears all test 
	data out of this database then transfers the data from the live database into the development database. Clearing test 
	data can be a painstaking task if the database is large and referential integrity is enforced, as the data must be 
	deleted from tables in the correct order from the child tables upwards. SSW Data Renovator can remove all data from a database 
	in the correct order according to the relationships defined in the database. 
	</p>
	<li><b>Converting the Data from the old data structure to the new</b></li>
	<p>
	Once development has finished, either the production database must have its structure changed to match the changes made in 
	development or the data must be transferred to an empty copy of the development database. This can be complicated when new 
	fields have been added which cannot be empty, new relationships have been defined and field properties have been changed.
	SSW Data Renovator reports differences between tables and fields as well as indexes, relationships or properties. 
	</p>
	<p>
	Making structural changes to the database works when the database is very large and only a small number of changes have 
	been made, alternatively the data is transferred from the old version to the new. This ensures that none of the changes made 
	in development are lost and the data is valid. SSW Data Renovator performs data transfer from one database to another without 
	any changes to the old database. Tables and Fields can even be renamed and transferred without renaming the fields in the 
	old database. 
	</p>
	<li><b>Checking all data has been transferred correctly</b></li>
	<p>
	After the data has been transferred, checks are needed to ensure that all the records have been transferred correctly. Usually 
	this consists of counting the records in the tables before and after the transfer. SSW Data Renovator automatically displays a 
	list of tables and the number of records before and after the transfer. 
</ul>

<h2>Acknowledgements</h2>
	<p>
		<a href="/ssw/Employees/employeesXML.aspx">Ross Donald</a>
	</p>

		</asp:content>