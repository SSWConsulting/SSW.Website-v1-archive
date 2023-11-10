<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master"  Title="SQL Deploy - Developer's Guide" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
<div style="display:block"><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider">
    </asp:SiteMapPath></div>
    <img src="Images/SQLDeployLogo.gif" alt="SQL Deploy" align="right" width="174" height="77" />
    <p>
        <h2>
            SQL Deploy Developer's Guide - Database Deployment Software for SQL Server and MSDE</h2>
    </p>
    <p>
        <!--webbot bot="PurpleText" preview="KEYWORDS for SQL Deploy

MAIN KEYWORD: database deployment software 
SECONDARY: database updates | application deployment software | software deployment strategy/plan/process | remote software deployment | windows software deployment | application deployment plan/tool/tools | application deployment | sql server change deployment | sql server schema deployment tool | msde deployment | database schema deployment tool | deploy tool | software package deployment | application deployment in the enterprise | software package deployment
  
" -->
        How many times have you deployed an initial version of your <a href="/ssw/Consulting/DatabaseDevelopment.aspx">SQL Server</a> or MSDE Database
        application to your clients or departments, then wondered how you are going to make
        updates to the Database schema in the future without hassle?</p>
    <div class="TableOfContents">
        <p>
            <b>Introduction</b></p>
        <p>
            <a href="#BeforeYouStart">Before you start</a></p>
        <p>
            <b>Integrating SQL Deploy into your application</b></p>
        <p>
            <a href="#UsingSQLDeployCheckForVersionChecks">1) Using SQL Deploy Check for Version
                Checks</a><br>
            <a href="#UsingSQLDeployCompare">2) Using SQL Deploy Compare to upgrade database changes</a><br />            
            <a href="#UsingSQLDeployProjectFiles.sdproj">3) Using SQL Deploy project files (.sdproj)</a><br>
            <a href="#UsingTheOptionsControl">4) Using the Options Control</a><span style="color: green">(Recommended)
                - New!</span><br>
            <a href="#UsingSQLDeployOnExistingDataBase">5) Use SQL Deploy on your existing database
            </a>
            <br />

        </p>
    </div>
    <h2>
        Introduction</h2>
    <h3>
        <a name="BeforeYouStart">Before you start</a>
    </h3>
    <p>
        1) Optimise your database for maximum performance. Read our <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx">
            Rules To Better SQL Server Databases</a>. Instead of manually implementing these
        rules, use <a href="/ssw/SQLAuditor">SSW SQL Auditor</a> to automatically implement
        many of them for you. <a href="/ssw/Download/Download.aspx?GroupCategoryID=1SQL">Download</a>
        it and give it a go.
    </p>
    <p>
        2) Setup your script directories and files</p>
    <p>
        <ul>
            <li>Create a new script directory under your application folder. This directory is for
                the scripts which will create/manipulate the database structure, and insert/manipulate
                important static data. Place all appropriate scripts in this directory.
                <br>
                Your first script should drop (take this out if the database is of high importance)
                and create the database, your second should create tables, stored procs, views,
                etc and so on.<br>
                If you have not got any scripts of your database yet then you can use the program
                &quot;scptxfr.exe&quot; (supplied with SQL Server under C:\Program Files\Microsoft
                SQL Server\MSSQL\Upgrade ) in order to script out your entire database.<br>
                <br>
                An example command line to use is:<br>
                SCPTXFR.exe /s &lt;ServerName&gt;&nbsp; /d &lt;DatabaseName&gt; /P &lt;SA_Password&gt;
                /f ver0001.sql /H /A<br>
                Eg., &quot;SCPTXFR.exe&quot; /s (local) /d Northwind /f ver0001.sql /P mypassword
                /H /A<br>
                &nbsp;</li><li>If you have sample data, create another script directory also under your
                    application folder. Place all your insert scripts in there.<br>
                    &nbsp;</li><li>Once all your files are in this directory make sure that they are named
                        correctly. SSW SQL Deploy will determine the order of the scripts from there name.
                        Make sure they are in alphabetical order. If you are unsure, have a look at the
                        Samples\DatabaseSQLScripts folder under your SSW SQL Deploy installation.
                        <div class="greyBox">
                            <p>
                                It's important that you apply a flexible and useful <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#ScriptOutChanges">
                                    naming standard</a> to your SQL scripts.
                            </p>
                        </div>
                    </li>
            <li><strike>SSW SQL Deploy will store the names of the run scripts in a _zsDataVersion
                table. If SQL Deploy runs and this table does not exist already, the user will be
                asked if they want SQL Deploy to install it for them. To avoid complication, we
                recommend that you include the SQL that makes the table in your first script. You
                can find the SQL in the _zsDataVersion.sql file. CHECK FISRT</strike></li></ul>
    </p>
    <h2>
        Integrating SQL Deploy into your application</h2>
    <p>
        <a name="UsingSQLDeployCheckForVersionChecks"><b>1) Using SQL Deploy Check for Version
            Checks</b></a></p>
    <p>
        The SQL Deploy Check is a com compliant assembly which helps find what version of
        the database the client currently has. The application may then alert the user that
        he needs to update the database of version X.XX because the scripts are version
        X.XX.</p>
    <table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Tips On How to Show a Table"
        style="{width: 80%; }">
        <tr valign="top">
            <td>
                <img src="Images/pubproperty.gif" alt="Connection String" width="16" height="16">Connection
                String
            </td>
            <td>
                Gets or sets the connection string to the database.
            </td>
        </tr>
        <tr valign="top">
            <td>
                <img src="Images/pubproperty.gif" alt="GET VERSION" width="16" height="16">CurrentDatabaseVersion
            </td>
            <td>
                Gets the version of the current database according to the connection string. This
                is the last run script against the database, stored in the _zsDataVersion table.
            </td>
        </tr>
        <tr valign="top">
            <td width="185">
                <img src="Images/pubproperty.gif" alt="Get latest script" width="16" height="16">
                NewDatabaseVersion
            </td>
            <td width="100%">
                Gets the latest version of the scripts.
            </td>
        </tr>
        <tr valign="top">
            <td width="185">
                <img src="Images/pubproperty.gif" alt="Get/Set paths to scripts" width="16" height="16">SQLScriptPath
            </td>
            <td width="100%">
                Gets or sets the path to the SQL scripts.
            </td>
        </tr>
    </table>
    <p>
        This code illustrates how SSW SQL Deploy Check maybe used in your application.<br>
        <br>
        <table class="clsSSWTableCode" id="table7">
            <tr>
                <td>
                    <pre>Using SSW.SQLDeploy.Check;<br>
                        ...<br>
                        ...<br>
                        string strConnection = &quot;Data Source=(local);Initial Catalog=Northwind;&quot;;<br>
                        string strSQLDatabaseScripts = &quot;c:\temp\Scripts&quot;<br>
                        ClientUtil cu = new ClientUtil();<br>
                        if(cu.IsNewVersion(strConnection,steSQLDatabaseScripts)){<br>
                        &nbsp;&nbsp;&nbsp;&nbsp; MessageBox.Show(&quot;Please upgrade your database to &quot;+
                        cu.NewDatabaseVersion +&quot;, it is currently &quot;+cu.CurrentDatabaseVersion);<br>
                        <br>
                        }<br>
                        ...</pre>
                </td>
            </tr>
        </table>
    </p>

    <!-- Allan Start ----------------------------------------------------------------------------------------------->
			<p>
		<a name="UsingSQLDeployCompare"><b>2) Using SQL Deploy Compare to upgrade database changes</b></a></p>
<p>
		The SQL Deploy Compare feature provides the ability to compare all the scripts against the current database and update the new changes.</p>
<table class="dtTABLE" cellSpacing="0" id="table2" width="100%">
	<!-- MSTableType="layout" -->
	<tr vAlign="top">
		<td>
		<span style="font-size: 10pt">
		<img src="Images/pubproperty.gif" alt="Gets/Sets Connection string" width="16" height="16"></span><span style="font-size: 9pt; text-decoration: none"> 
		Connection String</span></td>
		<td ><span style="font-size: 10pt">Gets or sets the connection string to the database. 
		</span> 
		</td>
	</tr>
	<tr vAlign="top">
		<td width="185">
		<span style="font-size: 10pt">
		<img src="Images/pubproperty.gif" alt="" width="16" height="16"></span><span style="font-size: 9pt; text-decoration: none"> SQLScriptPath</span></td>
		<td width="100%"><span style="font-size: 10pt">Gets or sets the path to the SQL scripts. 
		</span> </td>
	</tr>
	<tr>
		<td><img alt="" width="187" height="1" src="/ssw/SQLDeploy/Images/MsSpacer.gif"></td>
		<td></td>
	</tr>
</table>
<p>
		This code illustrates how SSW SQL Deploy Compare maybe used in your 
		application.<br>
		<br>
		<table class="clsSSWTableCode"	 id="table3">
		<tr>
			<td>

		<pre>
		using SSW.Framework.Data;<br />
		using SSW.Framework.Data.SqlServer;<br />
		...<br>
		...<br>
		string strDatabaseName = "SQLDeploySampleDatabase"; <br />
		string TempDatabaseName = strDatabaseName + "_TEMP";<br />
string strDatabaseScriptPath = "../DatabaseSQLScripts/";<br />
<br />
Settings settings = new Settings();<br />
settings.FolderPath = Server.MapPath(strDatabaseScriptPath);<br />
<br />
SQLFileFinder finder = new SQLFileFinder();<br />
finder.FillAdvanced(settings);<br />
finder.SetEnabledOnAllFiles(true);<br />
SQLFileCollection files = finder.EnabledFiles();<br />
<br />
settings.Connection = "Server=localhost;Database=SQLDeploySampleDatabase;";<br />
<br />
if (DBUtils.DoesDatabaseExist(TempDatabaseName, settings.Connection))<br />
{<br />
	&nbsp;&nbsp;&nbsp;&nbsp;DropDatabase(TempDatabaseName, false);<br />
}<br />
<br />
settings.ConnectionString.InitialCatalog = TempDatabaseName;<br />
settings.IsNewDatabase = !DBUtils.DoesDatabaseExist(strDatabaseName, settings.Connection);<br />
settings.NewDatabaseName = TempDatabaseName;<br />
settings.PlaceHolder = "[DatabaseNamePlaceHolder]";<br />
<br />
foreach(SQLFile file in files)<br />
{<br />
	&nbsp;&nbsp;&nbsp;&nbsp;file.SQLFileStepsReplace("'"+databaseName+"'","'"+TempDatabaseName+"'");<br />
	&nbsp;&nbsp;&nbsp;&nbsp;file.SQLFileStepsReplace("'"+databaseName+".","'"+TempDatabaseName+".");<br />
	&nbsp;&nbsp;&nbsp;&nbsp;file.SQLFileStepsReplace(" "+databaseName+" " ," "+TempDatabaseName+" ");<br />
	&nbsp;&nbsp;&nbsp;&nbsp;file.SQLFileStepsReplace("USE "+databaseName+"" ,"USE "+TempDatabaseName+"");<br />
	&nbsp;&nbsp;&nbsp;&nbsp;file.SQLFileStepsReplace("DATABASE "+databaseName+"" ,"DATABASE "+TempDatabaseName+"");<br />
}	<br />
<br />
settings.ConnectionString.InitialCatalog = "";<br />
du.UpgradeDatabase(files, settings, settings.NewDatabaseName, true);<br />
		</pre>
			
		</tr>
			</td></table></p>		
			
		<!-- Allan end --------------------------------------------------------------------------------------------------->

    <p>
        <b><a name="UsingSQLDeployProjectFiles.sdproj">3) Using SQL Deploy Project Files (.sdproj)</a></b></p>
    <p>
        To automate the upgrade process for later use, you can make a sdproj file which
        stores all the information about your database. SQL Deploy will make this file for
        you when you run SQL Deploy for the first time.</p>
    <p>
        After the file has been made, package the file with your application. We recommend
        that you put the file with the rest of your script files in the Script folder we
        created in the last step.</p>
    <p>
        Now you can just add new script files to the Scripts folder and the next time the
        user double clicks on the sdproj file, SQL Deploy will automatically select the
        new scripts. The user should only have to click next through all the screens.</p>
    <p>
        <b><a name="UsingTheOptionsControl">4)Using the Options Control</a></b></p>
    <p>
        The options control provides means for the application user to select, create, update
        and compare the application database. The options control is powered by SSW SQL
        Deploy for all the database creation, upgrade and compare.</p>
    <p>
        The developer can easily implement this control using the following steps:</p>
    <ul>
        <li>Create a new Windows Application project (preferably in C# as the code listings)</li>
            Add the control to your Visual Studio .Net toolbox
                <li>Right-click on the toolbox, and select &quot;Add/Remove Items...&quot;</li><li>Browse
                    for SSW.Framework.WindowsUI.Options.dll under your SSW SQL Deploy folder</li><li>Your
                        toolbox should now have the DatabaseSetupControl:<br>
                        <br>
                        <img border="0" src="Images/AddControlToToolbox.gif"><br>
                        <b>Figure: DatabaseSetupControl added to the VS.Net toolbox</b><br>
                        <ul>
                            <li>Add the control onto your form by dragging the control onto your
                                form.</li><li>Add references to SSW.Framework.Data.dll in order to access the ConnectionBuilder
                                    Class</li></ul>
            </li>
                    <li>If you intend to show the compare button, add ExamDiff.exe from your SQL
                    Deploy run directory to your primary output directory.</li><li>Set the configuration
                        of the control using the Configuration property in your load event handler (or constructor).<br>
                        &nbsp;<table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Tips On How to Show a Table"
                            style="{width: 80%; }" id="table8">
                            <tr valign="top">
                                <td>
                                    <img src="Images/pubproperty.gif" alt="Connection String" width="16" height="16">
                                </td>
                                <td>
                                    ConnectionBuilder
                                </td>
                                <td width="100%">
                                    Gets or sets the connection string builder for the connection to the database.
                                </td>
                            </tr>
                            <tr valign="top">
                                <td>
                                    <img src="Images/pubproperty.gif" alt="Get latest script" width="16" height="16">
                                </td>
                                <td>
                                    CreateScriptsPath
                                </td>
                                <td>
                                    Gets or sets the path to the create scripts folder.
                                </td>
                            </tr>
                            <tr valign="top">
                                <td width="16">
                                    <img src="Images/pubproperty.gif" alt="Get latest script" width="16" height="16">
                                </td>
                                <td width="219">
                                    NewDatabaseName
                                </td>
                                <td>
                                    Gets or sets the database name (set as default when creating a new database).
                                </td>
                            </tr>
                            <tr valign="top">
                                <td width="16" nowrap>
                                    <img src="Images/pubproperty.gif" alt="Get latest script" width="16" height="16">
                                </td>
                                <td width="219" nowrap>
                                    DatabaseNamePlaceholder
                                </td>
                                <td>
                                    Gets or sets the database name place holder in the scripts which will be replaced
                                    with the database name.
                                </td>
                            </tr>
                            <tr>
                                <td width="16" nowrap valign="top">
                                    <img src="Images/pubproperty.gif" alt="Get latest script" width="16" height="16">
                                </td>
                                <td width="219" nowrap valign="top">
                                    IsSampleDatabaseNameEnforced
                                </td>
                                <td>
                                    Gets or sets whether the sample database name is enforced on the database creation
                                    form. This will set the database name textbox to be disabled if insert sample checkbox
                                    ticked.
                                </td>
                            </tr>
                            <tr valign="top">
                                <td width="16" nowrap>
                                    <img src="Images/pubproperty.gif" alt="Get latest script" width="16" height="16">
                                </td>
                                <td width="219" nowrap>
                                    IsDatabaseNameEnforced
                                </td>
                                <td>
                                    Gets or sets whether the database name is enforced on the database creation form.
                                    This will set the database name textbox to be disabled.
                                </td>
                            </tr>
                            <tr valign="top">
                                <td width="16" nowrap>
                                    <img src="Images/pubproperty.gif" alt="Get latest script" width="16" height="16">
                                </td>
                                <td width="219" nowrap valign="top">
                                    PostCreateScriptsPath
                                </td>
                                <td>
                                    Gets or sets the path to the post create scripts folder.
                                </td>
                            </tr>
                            <tr valign="top">
                                <td width="16" nowrap>
                                    <img src="Images/pubproperty.gif" alt="Get latest script" width="16" height="16">
                                </td>
                                <td width="219" nowrap valign="top">
                                    PostUpgradeScriptsPath
                                </td>
                                <td>
                                    Gets or sets the path to the post upgrade scripts folder.
                                </td>
                            </tr>
                            <tr valign="top">
                                <td width="16" nowrap>
                                    <img src="Images/pubproperty.gif" alt="Get latest script" width="16" height="16">
                                </td>
                                <td width="219" nowrap valign="top">
                                    PreUpgradeScriptsPath
                                </td>
                                <td>
                                    Gets or sets the path to the pre upgrade scripts folder.
                                </td>
                            </tr>
                            <tr valign="top">
                                <td width="16" nowrap>
                                    <img src="Images/pubproperty.gif" alt="Get latest script" width="16" height="16">
                                </td>
                                <td width="219" nowrap valign="top">
                                    ProductName
                                </td>
                                <td>
                                    Gets or sets the product name which will mainly be displayed in the status messages.
                                </td>
                            </tr>
                            <tr>
                                <td width="16" nowrap valign="top">
                                    <img src="Images/pubproperty.gif" alt="Get latest script" width="16" height="16">
                                </td>
                                <td width="219" nowrap valign="top">
                                    SampleDatabaseName
                                </td>
                                <td>
                                    Gets or sets the sample database name (set as default when creating a new database
                                    with insert sample checkbox ticked).
                                </td>
                            </tr>
                            <tr valign="top">
                                <td width="16" nowrap>
                                    <img src="Images/pubproperty.gif" alt="Get latest script" width="16" height="16">
                                </td>
                                <td width="219" nowrap valign="top">
                                    SampleScriptsPath
                                </td>
                                <td>
                                    Gets or sets the path to the sample scripts folder.
                                </td>
                            </tr>
                            <tr valign="top">
                                <td width="16" nowrap>
                                    <img src="Images/pubproperty.gif" alt="Get latest script" width="16" height="16">
                                </td>
                                <td width="219" nowrap>
                                    UpgradeScriptsPath
                                </td>
                                <td>
                                    Gets or sets the path to the upgrade scripts folder.
                                </td>
                            </tr>
                        </table>
                        <b>Figure: Properties to set to configure the control</b>
                        <br>
                        <p>
                            Below is some sample code of setting the control's configuration &amp; handling
                            the ConnectionBuilder.ConnectionStringChanged event.
                        </p>
                        <p>
                            Replace the MyConfiguration properties with the paths on your computer. A Sample
                            MyConfiguration Class is shown in the code listing at the bottom.</p>
                        <table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Tips On How to Show a Table"
                            style="{width: 80%; }" id="table8">
                            <tr>
                                <td>
                                    <pre>private void Form1_Load(object sender, System.EventArgs e)<br>
                                        {<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; databaseSetupControl1.Configuration.ConnectionBuilder.ConnectionString
                                        = MyConfiguration.ConnectionString;<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; databaseSetupControl1.Configuration.CreateScriptsPath
                                        = MyConfiguration.CreateScriptsPath;<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; databaseSetupControl1.Configuration.UpgradeScriptsPath
                                        = MyConfiguration.UpgradeScriptsPath;<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; databaseSetupControl1.Configuration.ProductName =
                                        Application.ProductName;<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; databaseSetupControl1.Configuration.SampleScriptsPath=
                                        MyConfiguration.SampleScriptsPath;<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; databaseSetupControl1.Configuration.NewDatabaseName
                                        = &quot;SSWSQLDeployNorthwindSample&quot;;<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; databaseSetupControl1.Configuration.IsDatabaseNameEnforced
                                        = true;<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; databaseSetupControl1.Configuration.ConnectionBuilder.ConnectionStringChanged+=
                                        new EventHandler(Configuration_ConnectionStringChanged);<br>
                                        <br>
                                        }<br>
                                        <br>
                                        private void Configuration_ConnectionStringChanged(object sender, EventArgs e)<br>
                                        {<br>
                                        &nbsp;&nbsp;&nbsp;// MessageBox.Show(&quot;The connection string has changed, please
                                        handle here.&quot;,Application.ProductName);<br>
                                        } </pre>
                                </td>
                            </tr>
                        </table>
                        <b>Figure: Code listing sample of how to set the configuration of the control</b>
                        <p>
                        &nbsp;</p></li>
                <li>Handle the ConnectionStringChangedevent. In the event handler the Configuration.ConnectionBuilder.ConnectionStringChanged
                    would return the selected connection string. Typically you would then store this
                    connection string.</li><li>Note: If you are using SQL Deploy's sample scripts (typically
                        in C:\Program Files\SSW SQL Deploy\Samples\WebForm\DatabaseSQLScripts), it is a
                        good idea to copy them into 3 separate folders:
                        <ul>
                            <li>CreateScripts - ver0001.sql</li><li>UpgradeScripts - ver0002.sql,ver0003.sql,ver0004.sql,ver0005.sql</li><li>
                                SampleScripts - ver0006.sql</li></ul>
                        <p>
                            Then set the paths for the configuration accordingly. The listing below shows the
                            MyConfiguration class encapsulating those script paths.</p>
                        <table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Tips On How to Show a Table"
                            style="{width: 80%; }" id="table9">
                            <tr>
                                <td>
                                    <pre>public class MyConfiguration<br>
                                        {<br>
                                        &nbsp; public MyConfiguration() {}<br>
                                        <br>
                                        &nbsp; public static string ConnectionString<br>
                                        &nbsp; {<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; get { return &quot;&quot;; }<br>
                                        &nbsp; }<br>
                                        <br>
                                        &nbsp; public static string CreateScriptsPath<br>
                                        &nbsp; {<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp; get { return @&quot;c:\Program Files\SSW SQL Deploy\Samples\WebForm\DatabaseSQLScripts\Create&quot;;
                                        }<br>
                                        &nbsp; }<br>
                                        <br>
                                        &nbsp;public static string UpgradeScriptsPath<br>
                                        &nbsp; {<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp; get { return @&quot;c:\Program Files\SSW SQL Deploy\Samples\WebForm\DatabaseSQLScripts\Upgrade&quot;;
                                        }<br>
                                        &nbsp;}<br>
                                        <br>
                                        &nbsp; public static string SampleScriptsPath<br>
                                        &nbsp; {<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp; get { return @&quot;c:\Program Files\SSW SQL Deploy\Samples\WebForm\DatabaseSQLScripts\Sample&quot;;
                                        }<br>
                                        &nbsp; }<br>
                                        } </pre>
                                </td>
                            </tr>
                        </table>
                        <b>Figure: Code for a sample MyConfiguration class with typical script paths</b></li>
    </ul>
    <p>
        <b><a name="UsingSQLDeployOnExistingDataBase">5)Using SQL Deploy On Existing DataBase</a></b></p>
   
        <p>
            In this quick walkthrough we configure SQL Deploy for the existing &#34;AdventureWorks&#34;
            sample database for future changes..</p>
        <dl class="image">
            <dt>
                <img border="0" src="Images/AdventureWorksDatabase.gif" alt="Adventure Works Database"></dt>
            <dd>
                Figure: AdventureWorks sample database from Microsoft, with no &#34;_zsVersion&#34; table
                code</dd>
        </dl>
        <h2>
            Step 1: Script your existing database to a &#34;00000_create_database.sql&#34; script file
        </h2>
        <dl class="image">
            <dt>
                <img border="0" src="Images/GenerateScripts.gif" alt="Generate Scripts"></dt>
            <dd>
                Figure: Use SQL Server Management Studio (SSMS) to generate scripts to create your
                whole database</dd>
        </dl>
        <dl class="image">
            <dt>
                <img border="0" src="Images/ScriptAllObjects.gif" alt="Script All Objects"></dt>
            <dd>
                Figure:Check the "script all objects in the selected database" box</dd>
        </dl>
        <p>
            Let SSMS create the &#34;00000_create_database.sql&#34; for you</p>
        <dl class="image">
            <dt>
                <img border="0" src="Images/SingleFile.gif" alt="Single File"></dt>
            <dd>
                Figure:Make sure to create 1 single file in your project folder</dd>
        </dl>
        <dl class="image">
            <dt>
                <img border="0" src="Images/SuccesfullGeneration.gif" alt="Succesfull Generation"></dt>
            <dd>
                Figure:Generation of scripts was successful
            </dd>
        </dl>
        <p>
            Add this 2 lines at the start of the script:</p>
        <p>
            <br />
            CREATE DATABASE [AdventureWorks]<br />
            GO</p>
        <p>
            <br />
            Note: This script is special because it creates a new database. We identify this
            by these lines.</p>
        <h2>
            Final result of step 1
        </h2>
        <dl class="image">
            <dt>
                <img border="0" src="Images/SQLScript.gif" alt="create database script"></dt>
            <dd>
                Figure:One &#34;create database script&#34; file in your project &#34;SQLScripts&#34; folder
            </dd>
        </dl>
        <h2>
            Step 2: Tell SQL Deploy that you have run already the &#34;create database script&#34;
        </h2>
        <p>
            Since you have already an existing database, you have to tell SQL Deploy about that.<br />
            Copy and paste this script into SQL Server Management Studio and run it on the AdventureWorks
            database.<br />
            This will tell SQL Deploy that this script has been run already
        </p>
        <br />
        <dl class="goodImage">
            <pre>
    USE ADVENTUREWORKS
      GO
           INSERT INTO [dbo].[_zsDataVersion](
           [DateCreated]
           , [EmpUpdated]
           , [ScriptPath]
           , [ScriptFile]
           , [Note]
           , [SQLDeployVersion]
           )
        SELECT
           getdate() -- current time on insert
           ,suser_sname() + ' as ' + user_name() -- system user name
           , N'D:\DataPeterGfader\ProjectsTFS\AdventureWorks\SqlScripts' -- the folder where the script was located, just for tracing purposes
           , N'00000_create_database.sql' -- the name of the script file
           , N'SSWSQLDeploy: Database created manually, don''t delete this record' --
           Note
           N'12.22' -- SQL Deploy version   
                    </pre>
        </dl>
        <p>
            This step is not necessary if you start with a new database from scratch.<br />
            If you wish that SQL Deploy creates a new database for you run the wizard as described
            on <a href="http://www.ssw.com.au/SSW/sqldeploy/ExeMode.aspx#CreateNewUseExisting">SSW
                SQL Deploy-Create new database in EXE mode</a>
        </p>
        <h2>
            Final result of step 2
        </h2>
        <p>
            1. Run through the wizard to update your database
        </p>
        <dl class="image">
            <dt>
                <img border="0" src="Images/SelectSQLFile.gif" alt="Select SQL File"></dt>
            <dd>
                Figure: SQL Deploy sees that &#34;00000_create_database.sql&#34; has been run already
            </dd>
        </dl>
        <p>
            2. Run &#34;Compare database&#34; and see that your database matches up with the SQL scripts
        </p>
        <p>
            <h2>
                Your database is ready and you can start using SQL Deploy</h2>
        </p>
        <dl class="image">
            <dt>
                <img border="0" src="Images/Start.gif" alt="Ready To Start"></dt>
        </dl>
        <p>
            Remember: Make sure to script out your changes as described on the <a href="ExeMode.aspx#SavingXmlAndSqlFiles">
                sql deploy exe mode page</a>
        </p>
</asp:Content>
