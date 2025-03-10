<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft SQL Server Suggestions"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				<asp:label id="lblWelcome" runat="server"></asp:label> 
<table class="clsSSWTableOfContents" cellspacing="0" cellpadding="0" summary="Index" style="{width:100%}">
<tr>
	<td>
			<b>SQL Server 2008</b>
			<ol>
				<li><a href="#AboutVersion">Show the version in the Icon Name</a></li>
				<li><a href="#RB2">Can you show the SQL that was generated by the Query Designer</a></li>
			</ol>
	</td>
</tr>
<table class="clsSSWTableOfContents" cellspacing="0" cellpadding="0" summary="Index" style="{width:100%}">
	<tr>
		<td>
		<b>SQL Server 2005</b>
			<ol>
				<li><a href="#NotAllSQLCommandsTransaction">Not All SQL Commands Run in a 
                    Transaction</a></li>
				<li><a href="#CollationAlteredT-SQL">Allow Collation to be Altered Through T-SQL</a></li>
				<li><a href="#CreateSPWizardCommandLine">Make Create Stored Procedure Wizard Launch 
                    From Command Line</a></li>
				<li><strike><a href="#oneSQLEmailclient">There should only be one SQL Email client</a></strike>&nbsp;&nbsp;<span style="color:Red; font-weight:bold;">* 
                    has been replaced by<a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#ConfigSQLMail">Database 
                    Mail</a> *</span></li>
				<li><a href="#BackupsGenerateSQLcreatescript">Backups should be able to generate a 
                    SQL create script for the database</a></li>
				<li><a href="#DraggingFieldsQueryAnalyzer">Dragging fields in Query Analyzer</a></li>
				<li><a href="#RightClick">Formatted copying of data from SQL Server &quot;Yukon&quot; 
                    Workbench</a></li>
				<li><strike><a href="#EnterpriseManagerView">Enterprise Manager View</a></strike>&nbsp;&nbsp;<span style="color:Red; font-weight:bold;">* 
                    been replaced by right click Filter is not quite as good as this suggestion 
                    but good enough *</span></li>
				<li><a href="#UnsignedIntegersDataTypes">Allow Unsigned Integers as Data Types</a></li>
				<li><a href="#selectminuscolumn">Allow SELECT * (EXCEPT Column1, Column2, ...)</a></li>
				<li><a href="#GenerateInsertStatements">Generate Insert Statements</a></li>
						<!--<a href="#NotificationServicesSmtp">9.</a> CC and BCC field for built-in SMTP delivery protocol<br>-->
				<li><a href="#SchemaChanges">Merge Replication Schema changes are too painful</a></li>
				<li><a href="#ReplicationAgentUnhelpful">Merge Replication Replication Agent is 
                    unhelpful</a></li>
				<li><a href="#ResynchronisationTool">Merge Replication - Add a resynchronisation 
                    tool</a></li>
				<li><a href="#Security">Merge Replication Security</a></li>

<li><a href="#FullTextIndexes">
			Full Text Indexes in SQL Server 2005 SP1 please</a></li>
			
		<li>
			<a href="#AutoCompressionBackups">
			Automatic Compression on Backups
		</a></li>

		<li>
			<a href="#ConfigurationChanges">
			Configuration Changes Script all config changes
 		</a></li>

		<li>
			<a href="#ConfigChangesComparison">
			Configuration Changes - Comparison of 2 Servers
		</a></li>

		<li>
			<a href="#GraphicalWorkbench">
			A graphical workbench for analyzing trace output 
		</a></li>

		<li>
			<a href="#RetainData">
			Retain Data in your DMVs
		</a></li>

		<li>
			<a href="#GUIForSQLCMDScripts">
			Have a GUI to generate SQLCMD scripts
		</a></li>

		<li>
			<a href="#DatabaseDocumenter">
			Have a database documenter built in
		</a></li>
		
		<li>
			<a href="#ScriptingMaintanence">
			Scripting Database Maintenance Plans
		</a></li>
		
		<li>
			<a href="#DataDudeAndLoadTest">
			With Data Dude add Load Tests for a stored proc
		</a></li>
		
		<li>
			<a href="#Dashboard">
			Give me a dashboard with green ticks and red crosses
</a></li>
<li><a href="#ChangeSQL">Change the SQL in a deployed report</a></li>
<li><a href="#ChangeCollation">Change the Collation</a></li>
				<li><a href="#PastFolder">Should be able to remember the folder I had gone</a></li>
       <li><a href ="#ForeignKey_MultipleCascadePaths">Do not create a Foreign Key 
           constraint that may cause multiple cascade paths</a></li>
                <li><a href="#sp_helpindex">sp_helpindex still be needed because of the missing GUI</a></li>
				<li><a href="#SQLMobileXCopy">SQL Mobile - Xcopy .sdf please</a></li>
			</ol>
		</td>
	</tr>
</table>
<h2>SQL Server 2008</h2>
	<ol>
		<li>
			<h2>
			<a name="AboutVersion"></a>Show the version in the Icon Name</h2>
			<p>
			Some of products have version in the product name:
			</p>
			<dl class="goodImage">
				<dt>
				<img src="Images/AboutVersion_Good_SQL08.JPG" alt="Name with version"/></dt>
				<dd>
				Figure: Good Example - when I type Word &#8211; I can see the version </dd></dl>
			<dl class="badImage">
				<dt>
				<img src="Images/AboutVersion_Bad_SQL08.JPG" alt="Name without version"/></dt>
				<dd>
				Figure: Bad Example - when I type Management Studio &#8211; I have to hover to see the version</dd></dl>
		</li>
        <li>
            <h2>
                <a name="RB2"></a>Can you show the SQL that was generated by the Query Designer</h2>
            <p>
                The designer against a "report model" is awesome. End users are able to create quite complex queries that would be very difficult to write with SQL (even if you were quite good at it).
            </p>
            <p>
            Two improvements:
            </p>
            <ol>
                <li>
                    Could you show the equivalent SQL as well in a read only textbox (because it would help in learning and debugging)
                </li>
                <li>
                    Not sure.... But I don't think the word "Query" on the form below is ideal - because to most people it means "SQL".
                </li>
            </ol>
            <p>
                And the below is not SQL!
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/SQL_RB2_1.JPG" alt="Not SQL" /></dt>
                <dd>
                    Figure: Show the "Equivalent SQL" in a grey readonly textbox
                </dd>
            </dl>
            <dl class="image">
                <dt>
                    <img src="Images/SQL_RB2_2.JPG" alt="Clearer term than Query" /></dt>
                <dd>
                    Figure: Consider a clearer term than "Query" eg. "XML query"</dd></dl>
        </li>
    </ol>
<h2>SQL Server 2005</h2>
<ol>
<li>
	<h2>
		<a name="NotAllSQLCommandsTransaction"></a>Not All SQL Commands Run in a 
        Transaction
		</h2></li>


	<p> 
	    As seen in the screenshot below, some SQL commands that would normally run 
        correctly cause problems when run as part of a transaction. If there is a 
        technical problem behind this, it should be cleared up. 
	</p>

	<p>
	<img src="Images/SQL3.gif" alt="SQL" width="600" height="268"><br>
	<b>Figure: Can't put this stored procedure in a transaction</b><br>
        &nbsp;</p>

<li>
	<h2>
		<a name="CollationAlteredT-SQL"></a>Allow Collation to be Altered Through T-SQL
		</h2><br>	

	<p> 
	    Currently, SQL Server does not allow automated alterations to the collation via 
        T-SQL. SQL Server should include a T-SQL command to allow Database Collation to 
        be changed. All other properties can be changed; why not collation?
	<br />Also when the collation is changed we need an option to also change all the 
        objects inside the database as well (to this same collation).
	</p>

	<p>
	<img src="Images/SQL2.gif" alt="SQL" width="714" height="642"><br>
	<b>Figure: The Collation should not be read only in the Database Properties dialog</b>
	<br>
        &nbsp;</p>
</p>

<li>
	<h2>
		<a name="CreateSPWizardCommandLine"></a>Make Create Stored Procedure Wizard 
        Launch From Command Line
		</h2><br>


	<p> 
	    The Create Stored Procedure Wizard in SQL Server provides a quick and easy way 
        to create basic stored procedures for a database. However, it can't be used from 
        the command-line, which would be a welcome feature. <br />
	    I know there are a million code generators but I want this built in. I want to 
        be able to customize the templates and run the command line or the GUI (like 
        DTSRUN and DTSRUNUI)
	<p>
	<img src="Images/SQL4.gif" alt="SQL" width="798" height="511"><br>
	<b>Figure: Can't use this Create Stored Procedure Wizard from a command line</b>
	<br>
        &nbsp;<p>


<li>
	<h2>
		<a name="oneSQLEmailclient"></a><strike>There should only be one SQL Email 
        client</strike> <span style="color:Red; font-weight:bold;">* has been replaced 
        by <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#ConfigSQLMail">
        Database Mail</a> *</span>
		</h2>
	<p> 
	    Did anyone know that there is more than ONE mail client built into SQL Server? 
        Not 2, but 3 different mail clients.<p> 
<ul>
<li>SQL Mail MAPI - xp_sendmail, xp_readmail</li>
<li>SQL Agent Mail MAPI</li>
<li>DTS Mail - Send Email Task</li>
</ul>
    <p> 
	    I should be able to setup and test mail in one location and it works everywhere. 
        I am very curious how this happened? Don't the different teams talk to each 
        other? Is this a problem of backward compatibility...<br>
        &nbsp;</p>

<li>
	<h2>
		<a name="BackupsGenerateSQLcreatescript"></a>Backups should be able to generate 
        a SQL create script for the database
		</h2><br>


	<p>How many times have we had to restore a large database just to have a look at the 
        schema for just one table?<br />
	    This is why many developers have tried to find a way to script out their 
        database on a regular basis with their database. I suggest that a checkbox be 
        added to the maintenance plan wizard which will generate a .sql file in the same 
        directory as the backup.<p> 
	    Also I think it is important to be able to see the T-SQL that the Maintenance 
        Plan Wizard has created. Therefore, add a last screen to show all the script 
        that it has generated.
	<br>
        &nbsp;</p>

<li>
	<h2>
		<a name="DraggingFieldsQueryAnalyzer"></a>Dragging fields in Query Analyzer
		</h2><br>

	<p> 
	    In Query Analyzer a handy thing is you can use the Object Browser to drag a 
        field to build a SQL statement.
	<br>
	    It is handy but to be really useful we need to be able to select multiple fields 
        (with Control key).
	</p>	
	<p>
	<img src="Images/SQL1.gif" alt="Query Analyzer" width="471" height="321"><br>
	<b>Figure: Dragging fields in Query Analyzer</b>
	<br>
        &nbsp;</p>


<li>
	<h2>
		<a name="RightClick"></a>Nice formatted copying of data from SQL Management 
        Studio</h2>
		<br>
			<p><img src="Images/SqlQueryCopy.gif" alt="SQL Query Copy" width="399" height="298"><br><b>
                Figure: Copying records in a data viewer in SQL Management Studio</b>


</p>
	<p>When copying data from a data grid in SQL Management Studio, data should be 
        copied to the clipboard in a display-friendly format (i.e. RTF / HTML), in a 
        fashion that resembles copying data from the Microsoft Access data viewer.</p>
	<div style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
		<span style = FONT-FAMILY:Courier New; FONT-SIZE:10pt>1 Gustavo 2005-05-16 
        16:33:33.060<br />
        2 Catherine 2005-05-16 16:33:33.077<br />
        3 Kim 2005-05-16 16:33:33.077<br />
        4 Humberto 2005-05-16 16:33:33.090<br />
        5 Pilar 2005-05-16 16:33:33.090</span></div>
	<p><b>Figure: Bad example: data is plain-text only</b></p>
	<p><img border="0" src="../Images/SQLSer1.jpg" alt="SQL Server" width="552" height="354"></p>
	<p><b>TICK Figure: Good example: Access copies data to the clipboard pre-formatted - 
        also see the nice column headings</b></p>
	<li>
	<h2><a name="EnterpriseManagerView"></a>Enterprise Manager View <span style="color:Red; font-weight:bold;">
        * been replaced by right click Filter not quite as good as this 
        suggestion but good enough *</span>
		</h2><br>	
	<p><img border="0" src="./Images/SQLSerStudio1.gif" alt="SQL Server" width="383" height="250">
	<br />Figure: SQL Server Management Studio</p>
	
	<p>When I am in Enterprise Manager I am usually searching for an item. This view 
        needs improving.
	</p>
	<p>First, it would be a good idea to include all database objects (e.g. as Diagrams, 
        Tables, Views, etc.) in the main TreeView.</p>
	<img src="Images/enterprise_1.gif" alt="Enterprise manager" width="454" height="279"><br>
	<b>Figure: Current TreeView; does not display all database objects</b>
	<p>Second, it would be a good idea to add a filter box to allow the display to be 
        limited, as is seen in the following image.
	</p>
	<img src="Images/enterprise_2.gif" alt="Enterprise manager" width="670" height="217"><br>
	<b>Figure: Limiting display with a filter text box</b>
	<p>Alternately, an item that links to the Query Analyzer (see figure below) could be 
        added to a pop-up menu.
	</p>
	<img src="Images/enterprise_3.gif" alt="Enterprise manager" width="376" height="306"><br>
	<b>Figure: Query Analyzer</b> <br>&nbsp;</p>
<li>
<h2><a name="UnsignedIntegersDataTypes"></a>Allow Unsigned Integers as Data Types
		</h2><br/>



	<p>Visual Basic .NET code allows for the declaration of both signed and unsigned 
        integers. In the following example, both variable declarations are valid.
	</p>
<table>
	<tr>
		<td><pre>Private StartY As Integer ' Signed integer<br>Private StartPositive As 
            UInt32 ' Unsigned integer<br>
		</pre></td>
	</tr>
	<tr>
		<td><b>Figure: Declaration of variable types</b></td>
	</tr>
</table>
<p>
    SQL Server doesn't offer any support for unsigned integers. This would serve as 
    a useful feature because it could seriously reduce the size of many databases. 
    Because if you know you have positive only numbers, you get an extra bit for 
    numeric resolution (especially useful for all ID fields) <br />
    Alternative: Allow use to specify an integer as being positive only - Either 
    way, an unsigned field type should be there.
<br/>&nbsp;</p>
<li>
<h2><a name="selectminuscolumn"></a>Allow SELECT * (EXCEPT Column1, Column2, ...)
	</h2>
</li>
	<p>Sometimes you want all the columns except a particular one. Boy it would be nice 
        to be able to say:</p>
<p>Example #1:&nbsp;&nbsp;&nbsp;&nbsp;SELECT * (EXCEPT Note, Image) FROM Customer
<br />Example #2:&nbsp;&nbsp;&nbsp;&nbsp;SELECT * (EXCEPT LargeDataTypes) FROM Customer (this would 
    automatically remove Text, nText, Image, VarCharMax, nVarCharMax, XML) 
<br />Example #3:&nbsp;&nbsp;&nbsp;&nbsp;SELECT * (EXCEPT XML) FROM Customer (this is a specific 
    datatype) &nbsp;</p>
<li>
<h2><a name="GenerateInsertStatements"></a>Generate Insert Statements
		</h2></li>


	<p>I would like to see an extra option Generate SQL Script of Data
	</p>
<!-- <p>Often I have needed to write a proc that would generate inserts... I came across this wonderful chunk of 
	code that does everything I could ever want. 
	<a href="../../Redirect/Tripod/Tripod.htm" target="_blank">http://vyaskn.tripod.com/code/generate_inserts.txt</a>
<img src="/ssw/Images/LeaveSite.gif" alt="Leave site" width="17" height="11">
</p> -->
<p>Microsoft please get the script here and include the option on the right click 
    menu:<br />Note: I should not need to download the SQL Publishing Wizard to do 
    this it should be in the box<br>&nbsp;</p>
<p>
<img src="Images/sqlserver-sqldata.gif" alt="sql server sql data" width="393" height="323"><br>
<b>Figure: No option to generate SQL Script of Data</b><br>

	</b><br>
<li>
<h2><a name="SchemaChanges"></a>Merge Replication Schema changes are too painful
	</h2>
		</li>
			<p>Absolutely the most painful thing when Replication is in place is making schema 
                changes. In particular:
			</p>
<ul>
	<li><b>Schema change propagation of ALTER table statements should be made simpler.</b><br>
        At the moment, I have to add a dummy column with the required datatype, update 
        it to the new values, then make another column with the correct name and 
        datatype and update that column with all the correct values. The removal of 
        replication is a time consuming process especially when the data has somehow 
        gotten out of synch. 
	<br><br></li>
	<li><b>Dropping tables should be automatically done without forcing the removal of 
        subscriptions.</b><br>This process is also very time consuming, especially when 
        I have to remove all subscriptions because I want to remove one article from 
        publication. It would be great to be able to do this automatically. 
					</li><br><br>
</ul>
<li>
<h2><a name="ReplicationAgentUnhelpful"></a>Merge Replication - Replication Agent is 
    unhelpful	
	</h2>
		</li>
			<p>During the processing of jobs, the Replication Agent does not provide adequately 
                detailed information for troubleshooting and resolving the issue. Please have 
                suggested solutions - like the Windows Event Log: this doesn't just have 
                recommendations, it also suggests solutions.<br><br></p>
<li>
<h2><a name="ResynchronisationTool"></a>Merge Replication - Add a Resynchronisation 
    Tool	
	</h2>
		</li>
			<p>
<p>If I am forced to remove replications, then re-add replications, I should have 
    the option to recheck the data and resynchronise any missing records. 
			</p>
<p>This could be as simple as running an &quot;myupdate&quot; on offending records.
			</p>
<p>Note: We developed a tool to aid this. 
<a href="/ssw/SqlTotalCompare">http://www.ssw.com.au/SQLTotalCompare</a>
</p><br>
<li>
<h2><a name="Security"></a>Merge Replication Security</h2>

			<p>FTP Replication should not require Port 1433 to be open, just the FTP port. This 
                is an issue with a lot of firewalls and security guys.			
			</p>
		</li>
		
		<li>
			<a name="FullTextIndexes"></a>
			<h2>Full Text Indexes in SQL Server 2005 SP1 please</h2>
			<p>As per <a href="/ssw/Redirect/JoeyOnSoftwareMSJet.htm">
                http://www.joelonsoftware.com/items/2005/10/17.html</a></p>
		</li>

		<li>
			<a name="AutoCompressionBackups"></a>
			<h2>Automatic Compression on Backups</h2>
			<p>This should be in the box I should not need to be buying Quest LiteSpeed.</p>
		</li>

		<li>
			<a name="ConfigurationChanges"></a>
			<h2>Configuration Changes Script all config changes</h2>
			<p>I should be able to script out all settings that are different to the default. 
                Eg. right click a server and select
            <ul>
            <li>Save Config Changes, this might be a .sql script or an .xml file and it would 
                contain and settings you have changed from a Vanilla install eg.</li>
            <li>Load Config Changes</li>
            <li>Server Collation being different then the default</li>
            <li>Memory configuration eg. AWE is configured to allow more than 2 GB of RAM</li>
            </ul></p>
		</li>

		<li>
			<a name="ConfigChangesComparison"></a>
			<h2>Configuration Changes - Comparison of 2 Servers</h2>
			<p>Like the above I should be able to select 2 different servers and see the 
                differences basically a server compare</p>
		</li>

		<li>
			<a name="GraphicalWorkbench"></a>
			<h2>A graphical workbench for analyzing trace output </h2>
			<p>All I want to see is see the top 10 worst performing queries with a graph.</p>
		</li>

		<li>
			<a name="RetainData"></a>
			<h2>Retain Data in your DMVs</h2>
			<p>When you restart your server your Data Management Views are flushed please 
                stop doing this. </p>
		</li>

		<li>
			<a name="GUIForSQLCMDScripts"></a>
			<h2>Have a GUI to generate SQLCMD scripts</h2>
			<p>For example say I want to restore the master database then I would like to type 
                SQLCMDUI (like DTSRUN and DTSRUNUI) and it pops a form with a wizard where I 
                select the command, then the server, then the database etc.</p>
		</li>

		<li>
			<a name="DatabaseDocumenter"></a>
			<h2>Have a database documenter built in</h2>
			<p>Then I don't need to purchases Apex SQLDoc or GeckoWare SQL Scribe 
                Documentation Builder</p>
		</li>
		
		<li>
			<a name="ScriptingMaintanence"></a>
			<h2>Scripting Database Maintenance Plans</h2>
			<p>Don't get me wrong, maintenance plans in 2005 are better how they are just a 
                SSIS package. This means I can migrate it from one server to another.
<br />I want more. I want to right click it called Generate Script just like a Job. 
<br />Basically everything in SQL Server should be able to have a right click Generate SQL</p>
		</li>
		
		<li>
			<a name="DataDudeAndLoadTest"></a>
			<h2>With Data Dude add Load Tests for a stored proc</h2>
			<p>Allow me to specify a property Simulate [100] Concurrent Users and say this 
                stored proc must execute in under [50] seconds.</p>
		</li>
		
		<li>
			<a name="Dashboard"></a>
			<h2>Give me a dashboard with green ticks and red crosses</h2>
			<p>Like the <a href="/ssw/Standards/Rules/RulesToBetterSQLReportingServices.aspx#GreenTicks">
                SQL Reporting Services configuration manager</a> please check everything you can 
                eg:
                <ul>
                <li>no backups red cross</li>
                <li>indexes not being used red cross </li>
                <li>database mail not being configured - red cross</li>
                </ul></p>
		</li>
		
		<li>
		<a id="ChangeSQL"></a>
		<h2>Change the SQL in a deployed report</h2>
		<p>In SQL Management studio add the reports datasets into the tree here, so you can 
            change the SQL in a deployed report </p>
		<dl class ="image">
		<dt><img src="Images/ssChangeSQL.JPG" alt="Change SQL" width="375" height="289" /></dt>
		<dd>Figure: SQL Management Studio - Tree</dd>
		</dl>
		</li>
		
		
        
        <li><a id="ChangeCollation"></a><h2>Change the Collation</h2>
        <p>
        <strong>Help users change the collation</strong><br />
            You should be able to change the collation of a database (including tables and 
            fields)<br />
            If not we at least need a help button next to the collation field.<br /><br />
            So add a button &#8220;How to Change?and it will say:<br />
            &nbsp;&nbsp;&nbsp;&nbsp;<strong>How to change the collation</strong></p>
        <ol>
        <li>Check you have SQL Server Integration Services installed and running on local 
            computer.</li>
        <li>To change the collation, create a <strong>new database</strong> specifying the 
            collation (if the server location is different to what you want)</li>
        <li>Right Click -&gt; Tasks -&gt; Import Data</li>
        </ol>
        <dl class="image"><dt><img src="Images/rsChangeCollation.JPG" alt="Change Collation" width="605" height="544" /></dt><dd>
            Figure: Change Collation</dd></dl>
        </li>
        
        <li><a id="PastFolder"></a><h2>Should be able to remember the folder I had gone</h2>
        <p>
            Should be able to past a directory folder and it go to it (so I can select the 
            .bak file there).
        </p>
        <dl class="image">
            <dt>
                <img src="Images/PastFolder.JPG" alt="The folder should be remembered" />
            </dt>
            <dd>Figure: Remember this folder and direct there when I want to select the backup 
                file next time.</dd>
        </dl>
        </li>
        
        <li><a id="ForeignKey_MultipleCascadePaths"></a><h2>Do not create a Foreign Key 
            constraint that may cause multiple cascade paths</h2>
        <p>
            An occurs when you create a FOREIGN KEY constraint that may cause  
            <a href = "http://support.microsoft.com/default.aspx?scid=kb;en-us;321843">multiple 
            cascade paths.</a><br />
            In SQL Server, a table cannot appear more than one time in a list of all the 
            cascading referential actions that are started by either a DELETE or an UPDATE 
            statement, which is a terrible limitation.                    
        </p>
        
        </li>
        
        <li>
            <h2>
                <a name="sp_helpindex">sp_helpindex still be needed because of the missing GUI
                            
                            </a>
                            </h2>
                            <p class="MsoNormal">
                                <span lang="EN-US" style="mso-ansi-language: EN-US">View Indexes/Keys<o:p></o:p></span></p>
                            <p class="MsoNormal">
                                <span lang="EN-US" style="mso-ansi-language: EN-US">View Relationships<o:p></o:p></span></p>
                            <p class="MsoNormal">
                                <span lang="EN-US" style="mso-ansi-language: EN-US">View Fulltext Indexes<o:p></o:p></span></p>
                            <p class="MsoNormal">
                                <span lang="EN-US" style="mso-ansi-language: EN-US">View XML Indexes<o:p></o:p></span></p>
                            <p class="MsoNormal">
                                <span lang="EN-US" style="mso-ansi-language: EN-US">View Check Contraints<o:p></o:p></span></p>
                            <p>
                                <a name="sp_helpindex">
                            </p>
                            
                            <dl class="image"> 
                            <dt> <img alt="Contacts with the same name" src="images/helpindex.jpg" /></dt>
                           
                                <dd>   Figure: Right-click menu on a table in SQL Server Management Studio</dd>
                                
                            </dl> 
                            
                            <dl class="image"> 
                            <dt> <img alt="Contacts Details" src="images/helpindex1.jpg" style="width: 229px" /></dt>
                            
                                <dd>   Figure: Table Designer menu in SQL Server Management Studio</dd>
                            </dl>        
        
        </li> 
		<li>
			<h2><a name="SQLMobileXCopy">SQL Mobile - Xcopy .sdf please</a></h2>
			<p>I want to be able to create the .sdf file using SQL Management Studio and then xcopy the file to the device.</p>
			<p>Currently the only way to move data is to use SQL Replication or the object model(RDA).</a>
		</li>
</ol>

<br />
<h2>Acknowledgements</h2>	<p>
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a> <br/>
	<a href="/SSW/Redirect/WardyIT.htm">Peter Ward</a> 
	</p> 
		</asp:content>