<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Deployment - Data Schema"  %>
 
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
		<asp:label id="lblWelcome" runat="server"></asp:label>
			<!--
			This is the main document.
			-->

			<TABLE cellSpacing="2" cellPadding="2" width="100%" summary="Formatting Table">
				<TBODY>
					<TR>
						<TD>
		
<h2> Data Schema - How Changes are to be Implemented </h2>	
<P>One of the biggest deployment hassles is with the 
	backend database. When you deploy the frontend&nbsp;from 
	Development&nbsp;to&nbsp;Test to Production, it is usually a simple process 
	of&nbsp;deleting the old files and replacing&nbsp;with a copy. The 
	backend&nbsp;- particularly when it has data - is a different beast. 
</P>
<P>Following this standard will mean you only need to run 
	the changes made since the last version. Usually a matter of a couple of SQL files. The basic run is <STRONG>"Every change 
		to a deployed Database Schema (tables, views, stored procedures, user functions 
		and jobs) must be&nbsp;saved as a .sql script file and then run from Visual a 
		Studio Database Project (where available) or Query Analyzer."</STRONG> 
</P>
<table width="100%" border="0" bgcolor="#cccccc">
<tr>
	<td><b>THE PROBLEM:</b></td>
</tr>
<tr>
	<td>You are the highly strung developer of a popular 
			online Easter-Egg store. It is now 1am, and the build is due at 9am sharp. You 
			have finally ironed out all of the bugs, and have made several database 
			changes. Unfortunately, you will have to find out all the changes that have 
			been made, and hope that your development team have fully documented them. If 
			the changes haven't been documented, you are up the proverbial creek without a 
			paddle. You need a simple way of changing. 
	</td>
</tr>
</table>
<P><b>THE SOLUTION:</b></P>
<P>The basic principle is you should be able to run all 
	the scripts to get to the current version in a couple of minutes. To this end 
	you need to follow these steps:</P>
<P>You talk to a client and create a schema (whatever way 
	you want - we usually use Visual Studio.NET Database Project,
		SQL Server Enterprise&nbsp;Manager or Access 2002 ADPs). It is highly 
		recommended that you use a Visual Studio.NET<
	Project, and add it to Visual SourceSafe database. This will allow you to:</P>
<ul>
<li>
	Use templates, 
		make/modify scripts and apply changes - all through the one integrated 
		interface.
<li>
	Track if you have made 
		changes to the scripts/older versions of the scripts before deployment
<li>
	Provide a 
		checkin/checkout mechanism when multiple poeple are working on database schema 
		changes.</li>
</ul>
<P><img alt="" src="Images/DataSchemaStandard_AddSolutionToSourceControl.gif" width="216" height="361"></P>
<P><strong>Figure 1:</strong> Adding your Visual 
		Studio.NET database project to Visual SourceSafe control. 
</P>
<P>Now, at this stage the 
	database schema should be reasonably stable (ie there are no planned major 
	developments.)</P>
<P>Make sure it includes a table for recording the 
	current version of the backend. We call it _zsDataVersion (_zs for a system 
	table defined/created by us)<BR>
<STRONG>
		<BR>
		FOR REPLICATED DATABASES ONLY:<BR>
		Note: </STRONG>Due to limitations in SQL Server Replication:<BR>

	<BR>
	<STRONG>SQL Server 7.0:</STRONG><BR>
	A) If you have a replicated database in SQL Server 7 and you want to change 
	table structure, then - before creating scripts, and after&nbsp;creating 
	scripts&nbsp;- you will need to:<BR>

	<BR>
1. In Enterprise manager, manually remove 
	subscriptions to the database.
	<BR>
2. Remove the articles on the publication for 
	the table objects you want to change.
	<BR>
	3. Make the changes in script.<BR>
	4. Add the articles to publication again.<BR>
	5. Recreate the subscriptions, and when creating the subscription, make sure 
	that you select the option to say that you 'already have the schema and data'</P>
<P><STRONG>SQL Server 2000:</STRONG><BR>
	B) If you have a replicated database in SQL Server 2000 and you want to drop or 
	remove columns, this can be done via Enterprise Manager. Changes will be 
	propagated automatically to other replicas in the database.<BR>
However,&nbsp;If&nbsp;you for example, you 
	want to change the data type of a column in a table, you will need to follow 
	steps 1 to 5 as per the SQL Server 7.0 procedure. 
</P>
<P><STRONG>FOR ALL DATABASES (Replicated and Non-Replicated):<BR>
	</STRONG><b>1) </b>When you (and the 
	client) are happy with the schema, open your Visual Studio Database Project 
	(where available), and Right Click the database in the Server Explorer 
	window. If Visual Studio.NET is not available, Open Enterprise Manager and 
	Right Click the database,&nbsp;All Tasks, and Generate SQL Script.</P>
<P><img alt="" src="Images/GenerateScript.gif" width="395" height="290"> 
<img alt="" src="/ssw/Methodology/Images\GenerateScriptVS.gif"></P>
<P><STRONG>Figure 2:</STRONG> Generate the 
		Initial&nbsp;Script&nbsp; e.g. ver001.sql - In Enterprise Manager (left), and 
		Visual Studio.NET (right)</P>
<P><strong>Make sure the correct options are selected (this 
		interface is the same in Enterprise Manager and Visual Studio.NET database 
		projects):</strong></P>
<P><img src="Images/DataSchemaStandard_ScriptingOptions.gif" alt="Create Script Standard" width="544" height="417"><BR>
<STRONG>Figure 2: Create Script Standard 
			Settings&nbsp;&nbsp;</STRONG></P>
<P><img src="Images/DataSchemaStandard_ScriptingOptions.gif" alt="Create Script Standard Settings" width="544" height="417"><BR>
<STRONG>Figure 3: Create Script Standard Settings&nbsp;<BR>
			&nbsp;<BR>
		</STRONG><img src="Images/DataSchemaStandard_ScriptingOptions.gif" alt="Create Script Standard " width="544" height="417"><BR>
<STRONG>Figure 4: Create Script Standard 
			Settings&nbsp;&nbsp;</STRONG></P>
<P>Open the initial script within Visual Studio.NET 
		editor (where available) or your&nbsp;text editor and add&nbsp;an INSERT 
		statement&nbsp;at the bottom to add a record to _zsDataVersion (sample script 
		for this table as below)</P>

<P>
	<TABLE borderColor="#ff0000" height="23%" cellSpacing="2" cellPadding="5" width="20%" align="left" border="2">
		<TR>
			<TD borderColor="#ffffff" bgColor="#cccccc" width="410">
				<P>Create table _zsDataVersion using .sql<BR>
						<pre>
CREATE TABLE _zsDataVersionsql
( 
	ChangeID int&nbsp;NOT NULL,
	DateCreated datetime NULL ,
	BackEndPath nvarchar(255) NULL,
	EmpUpdated nvarchar(150) NULL,
	FrontEndPath nvarchar(255) NULL,
	rowguid uniqueidentifier ROWGUIDCOL NOT NULL,
	Note ntext NULL,
	SSWTimeStamp timestamp NOT NULL 
)
ON PRIMARY 
TEXTIMAGE_ON PRIMARY 
GO</pre>
			</TD>
		</TR>
	</TABLE>
</P>
<P><BR>
&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>If you&nbsp;require any sample data, make another SQL 
	file, normally as SampleData.sql. 
</P>
<P><b>Note: </b>You may need to import the data in order, or you will need to remove foreign key constraints temporarily within your SQL 
	file, otherwise the data inserts may fail.</P>
<P><b>2)</b> Changes after the initial full script (version 1 or ver001.sql) must be&nbsp;saved into the same 
	directory. eg. <pre>D:\DataSQLScripts</pre></P>
<P><strong>Before </strong>
	<strong>proceeding, make sure that the following options are checked on in Visual 
		studio.NET (In Tools/Options)<br>
	</strong>
	<img alt="Create it via SQL Server Enterprise Manager" src="Images/DataSchemaStandard_ToolsOptionsVS.gif" border="0" width="594" height="379"><strong><br>
	</strong>
</P>
<P>Make changes in the normal 
		way&nbsp;- via SQL Server Enterprise Manager (as per <STRONG>Figure 1</STRONG>)</P>
<P>
<IMG alt="Create it via SQL Server Enterprise Manager" src="Images/saveScript.gif" border="1" width="570" height="310"><BR>
<STRONG>Figure 5: </STRONG>Example of Adding a 
	new field to a table</P>
<LI>
If you are in Enterprise Manager, Do <STRONG>NOT </STRONG>
	save changes&nbsp;&nbsp;<IMG alt="" src="Images/imgSaveIcon.gif" width="22" height="21">
.
<LI>
Instead save it as a script file (.sql)&nbsp;&nbsp;
<IMG alt="" src="Images/DataSchemaStandard_SaveScriptIcon.gif" width="42" height="25"><br>
<br>
If you are in Visual 
	Studio .NET, click the save button and you will automatically be given the 
	prompt as below 
<BR>
<BR>
<IMG src="Images/ScriptChange.gif" alt="Save your changes as a 
		script file" border="0" width="456" height="347"><BR>
	<STRONG>Figure 6:</STRONG> Save your changes as a 
		script file - Do <STRONG>NOT </STRONG>save the changes themselves.<BR>
	
<LI>
Open the script file through Visual Studio.NET (where 
	available) or your text editor and add the INSERT STATEMENT. Make sure that the 
	insert statement is within a BEGIN TRANSACTION and a COMMIT TRANSACTION block. 
	e.g.
	<P>
		<TABLE borderColor="#ff0000" cellSpacing="2" cellPadding="5" width="80%" align="left" border="2">
			<TR>
				<TD borderColor="#ffffff" bgColor="#cccccc">
					<P>BEGIN TRANSACTION<BR>
							ALTER TABLE dbo.Categories ADD<BR>
							UnitID varchar(10) NULL<BR>
							GO<BR>
							<BR>
						INSERT INTO _zsDataVersion
							<BR>
							(ChangeID,DateCreated, BackEndPath, EmpUpdated, FrontEndPath, Note)
							<BR>
							VALUES
							<BR>
							('387',GETDATE(),'Northwind','Peter/Peter/ALPACA','Northwind','Added field 
							Category!UnitID')
							<BR>
							COMMIT<BR>
						
					</P>
				</TD>
			</TR>
		</TABLE>
	</P>

<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;
</P>
</LI>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P><STRONG>Figure&nbsp;7: </STRONG>
		Open the script file and add the INSERT STATEMENT (Text in red colour)
		<br>
</P>

<LI>
Save the script file. 
	In visual studio.net, you will automatically be prompted for the name
<P>You now have a directory 
		with all changes (see <STRONG>Figure 8</STRONG>) The idea is you run all the 
		above scripts and you get up-to-date.&nbsp; The _zsVersion table is a record of 
		what state the database is at.</P>
<P><img alt="" src="Images/DirectoryStructure.gif" width="531" height="325"><img alt="" src="/ssw/Methodology/Images\DataSchemaStandard_ScriptsVS.gif"></P>

<P><STRONG>Figure&nbsp;8 (Above) - An example changes 
				directory&nbsp;(left), the VS.NET changes directory (right)</STRONG><BR>
<P><STRONG>3) SYNCHRONISATION OF SCHEMAS: </STRONG>
</P>
<P><STRONG>Determine the current version and the scripts to be run.</STRONG> You 
	should check the current version of the database e.g. </P>
<STRONG>
<pre>	SELECT Max(ChangeID) FROM _zsDataVersion</pre></STRONG></P>
<P>and run the script which contains the next record for 
	_zsDataVersion.&nbsp;&nbsp;<STRONG>In VS.NET (where available), &nbsp;right click 
		on the script you want to run, and click Run or Run on to execute it.</STRONG></P>
<P><img alt="" src="/ssw/Methodology/Images\DataSchemaStandard_RunScriptOn1VS.gif">
	<img alt="" src="/ssw/Methodology/Images\DataSchemaStandard_RunScriptOn2VS.gif" width="238" height="296"></P>
<P>Figure: Running the scripts on the destination servers 
		in VS.NET.</P>
<P><STRONG>Note:<BR>
	</STRONG>There are some important steps you should take before running these 
	change scripts:<BR>
	 <STRONG>1. </STRONG>Ideally, close off users 
		(Check Management -&gt; Process Info - &gt; Current Activity). Otherwise, some 
		major changes will time-out (because of locks held on those objects). Ideally, 
		you should not have any other users with locks on the objects you are 
		changing.&nbsp;<BR>
	<STRONG>2.</STRONG> Backup 
			database before making changes/running scripts. If there are major changes (esp 
			large tables with many relationships), restore this backup to another SQL 
			Server&nbsp;database (e.g. <STRONG>NorthwindScriptTest23112001</STRONG>
		when major changes are about to be made. Run the scripts on this test database 
		before running it on the database proper. Fix 
		any data-related problems and generate&nbsp;associated scripts to make the 
		updates.</P>
<UL>
	<LI>
		Run&nbsp;each version script in Query Analyzer, first 
			on the&nbsp;test database, then on the primary database.&nbsp;</LI>
</UL>
<P>Check the latest version in _zsVersion to confirm that 
		the changes have been made.</P>
<table>
	<tr>
		<td>
			<table borderColor="#ff0000" cellSpacing="2" cellPadding="5" width="60%" align="left" border="2">
				<tr>
					<td borderColor="#ffffff" bgColor="#cccccc">
						<P>What about ADPs in ACCESS 2002?<br>
								<br>
								ACCESS 2002 is as great as you have a graphical view of stored procedure. It 
								doesn't allow to save the changes to script file. But if you are disciplined 
								then it is OK to use for stored procedures.</P>
						<P><br>
								<IMG alt="" src="Images/designViewAccess.gif" width="497" height="205"> Figure: Design View of Stored 
								Procedure in Access ADP<br>
						</P>
						
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<P>
	<TABLE cellSpacing="2" cellPadding="5" width="50%" align="left" border="0">
		<tr>
			<td>
				<p><IMG height="300" src="Images/SampleTable.gif" alt="Sample table" width="698"><BR>
					Figure : An example of a backend table 
						recording the version numbers
				</p>
				<P>&nbsp;</P>
			</td>
		</tr>
		<tr>
			<td>
				<table borderColor="#ff0000" cellSpacing="2" cellPadding="5" width="70%" align="left" border="2">
					<tr>
						<td borderColor="#ffffff" bgColor="#cccccc">
							<P>What about Data?<br>
									<br>
									Use Spreadsheet.</P>
							<P>Use 
										the handy tool <a href="/ssw/Redirect/LockwoodTech.htm" target="_blank">Auto 
										Insert</a><IMG height="8" src="Images/LeaveSite.gif" alt="you are about to leave the SSW site" width="19">.
									<br>
									<IMG alt="" src="Images/auto_insert_results.gif" alt="" width="557" height="464">
									<br>
									Figure :Auto-Inserts results screen method</P>
							
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td width="410">
				<P>&nbsp;</P>
				<P><IMG src="Images/SmallRedBall.gif" alt="" width="10" height="10">
						<b>SQL Compare should be only as a validation tool.</b>
						<br>
						We do not use SQL Compare on its own, as it does not record version numbers. 
						e.g. There is no simple way of making sure&nbsp;what version I have &nbsp;by 
						looking at the two databases separately. 
				</P>
				<P>The developer should be responsible for breaking 
						the build as they make change without logging. This person is then in charge of 
						checking SQL Compare until he finds the next person who breaks the build. 
				</P>
				<P>&nbsp;</P>
			</td>
		</tr>
		<tr>
			<td>
			<h2> Acknowledgments </h2>	
				<p>We hope this was helpful 
						for you. If you have any comments or suggestions please <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D41626F7574253230796F757225323072756C6573253230746F253230626574746572253230636F64652E2E')">
							contact us</A>
				</p>
				<p><A href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</A></p>
		</asp:content>