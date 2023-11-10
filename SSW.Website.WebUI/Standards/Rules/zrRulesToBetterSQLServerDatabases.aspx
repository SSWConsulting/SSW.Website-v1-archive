<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better SQL Server Databases" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="ssw" TagName="SQLAuditor" Src="GetSQLAuditor.ascx" %>
<%@ Register TagPrefix="ssw" TagName="SQLAuditorVoteBox" Src="~/Components/SQLAuditorVoteBox.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>
        Frequently when I'm reviewing a client's <a href="/ssw/Consulting/DatabaseDevelopment.aspx">SQL Server database</a> design, the in-house
        developers tell me that "it's a bit of a dog's breakfast." 10 different developers
        have been working on it for a few years so a lot of the basic defaults have not
        been changed. Here are some of the typical things that all SQL Server DBAs and Database
        developers should know. These rules are above and beyond the most basic textbook
        recommendations of:
    </p>
    <ul>
        <li>Ensuring your databases are Normalized and in 3rd Normal Form</li>
        <li>Making sure you have primary keys, foreign keys and simple indexes to improve performance</li>
        <li>Making sure you Back up regularly</li>
        <li>Basic Naming conventions (see some of our <a href="/ssw/Standards/DeveloperSQLServer/SQLServerStandard_1_ObjectNaming.aspx">
            object naming conventions</a>)</li>
        <li>Minimizing resultset sizes and data over the wire</li>
    </ul>
    <p>
        Now I don't see a purpose in rewriting applications that work. But - I do see the
        value in making an application standardised. We all KNOW that standards are a good
        thing, it's time we were all brave enough to be strict. Here are the standards that
        we follow...
    </p>
    <p>
        Do you agree with them all? Are we missing some? Email us your tips, thoughts or
        arguments. <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F25323042657474657225323053514C253230536572766572253230446174616261736573')">
            Let us know</a> what you think.</p>
    <p>
        <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Index"
            width="90%">
            <tr>
                <td>
                    <b>*** Update ***</b> Instead of manually implementing these rules, use <a href="/ssw/SQLAuditor/">
                        SSW SQL Auditor</a> to automatically implement many of them for you. <a href="/ssw/Download/Download.aspx?GroupCategoryID=1SQL">
                            Download</a> it and give it a go.
                </td>
            </tr>
        </table>
    </p>
    <br />
    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
        style="{width: 100%}">
        <tr>
            <td>
                <b>SSW's Rules to Better SQL Server Databases</b><br />
                <br />
                <b>1 - 99 General and DBA Rules</b>
                <ol style="margin-left: 30px">
                    <li><a href="#MeasureUpTime">Do you measure up-time?</a></li>
                    <li><a href="#CheckUpToDate">Do you check your SQL Server is up-to-date?</a></li>
                    <li><a href="#DesignForChange">Do you design for change?</a></li>
                    <li><a href="#ScriptOutChanges">Do you script out all changes?</a></li>
                    <li><a href="#ConfigureDomainAccount">Do you configure all your SQL Server Services
                        to use a Domain Account rather than a local service account?</a></li>
                    <li><a href="#ServiceAccountNaming">Do you name your SQL Server Domain Account as 'SQLServerMachineName'
                        so it is easily identified when performing network operations?</a></li>
                    <li><a href="#AccountNotAdmin">Do your SQL Server Services run under non-Administrator
                        accounts?</a></li>
                    <li><a href="#ConfigSQLMail">Do you use Database Mail (not SQL Mail) in SQL 2005?</a></li>
                    <li><a href="#DefaultAlerts">Do you turn on all the default alerts?</a></li>
                    <li><a href="#CreateCustomAlerts">Have you created your own alerts?</a></li>
                    <li><a href="#MaintenancePlan">Backup - Do you setup a complete Maintenance Plan?</a></li>
                    <li><a href="#BackupScripts">Backup - Do you backup scripts?</a></li>
                    <li><a href="#Restoration">Backup - Do you take Restoration seriously?</a></li>
                    <li><a href="#Restoration">Backup - Do you have a Restoration Standard?</a></li>
                    <li><a href="#LogFiles">Are you aware of all the log files?</a></li>
                    <li><a href="#ChangeDefaults">Do you secure your server by changing the 'defaults'?</a></li>
                    <li><a href="#SecurityAuditing">Do you turn on security auditing?</a></li>
                    <li><a href="#IncreaseLogSize">Do you increase the Log Size of your Event Viewer?</a></li>
                    <li><a href="#DisableUnneccessary">Do you remove unnecessary permissions on databases?</a></li>
                    <li><a href="#PerformaceAlerts">Do you use Performance Alerts?</a></li>
                    <li><a href="#Collation">Do you make sure you use a consistent Collation server-wide?</a></li>
                    <li><a href="#DefaultDataDir">Do you create new databases in the default data directory?</a></li>
                    <li><a href="#Compatibility">Are you aware of compatibility issues between SQL Server
                        2000 and 2005?</a></li>
                    <li><a href="#GeneralContactDetailTable">Do you have a general Contact Detail table?</a></li>
                    <li><a href="#Documentation">Do you know how to provide best database schema document?</a></li>
                    <li><a href="#AvoidCollationErrors">Do you avoid collation errors?</a></li>
                </ol>
                <p>
                    <b>100 - 199 Data Rules</b></p>
                <ol start="100" style="margin-left: 30px">
                    <li><a href="#AvoidNullsTextFields">Don't allow NULLs in text fields</a></li>
                    <li><a href="#AvoidNullsNumberFields">Don't allow NULLs in number fields if it has the
                        same meaning as zero</a></li>
                    <li><a href="#DontStartTextWithEmptyLine">Don't start data in character columns with
                        empty line</a></li>
                    <li><a href="#DontStartTextWithSpace">Don't start data in character columns with spaces</a></li>
                    <li><a href="#UseIdentity">Use Identities in SQL Server (but don't use Autonumbers in
                        Access)</a></li>
                    <li><a href="#AvoidDelete">Don't delete records - just flag them as deleted</a></li>
                    <li><a href="#DateData">Make sure you have valid date data in your database</a></li>
                    <li><a href="#UniversalTime">DateTime fields must be converted to universal time</a></li>
                    <li><a href="#UseAuditTools">Do you use 3rd party audit tools to audit data changes?</a></li>
                    <li><a href="#InvalidCharInObject">Do you use invalid characters in object identifiers?</a></li>
                    <li><a href="#InvalidCharInData">Do you check invalid characters in character data?</a></li>
                    <li><a href="#ImageReplaceWithURL">Do you use a URL instead of a image in your database?</a></li>
                </ol>
                <p>
                    <b>200 - 299 Table and Column Rules</b></p>
                <!-- Removed by PH, bad rule <a href="#NoAutonumberORIdentity">200.</a> Don't use Autonumber or 
					Identities<br />-->
                <ol start="200" style="margin-left: 30px">
                    <li><a href="#UnicodeDatatype">Only use Unicode datatypes (nchar, nvarchar and ntext)
                        in special circumstances</a></li>
                    <li><a href="#Varchar">Do you always use Varchar?</a></li>
                    <li><a href="#StandardTableFields">Do you have standard Tables and Columns?</a></li>
                    <li><a href="#BitFields">Do you use Bit/Numeric data type correctly?</a></li>
                    <li><a href="#KeyTypes">What type of primary keys do you use - Natural or Surrogate?</a></li>
                    <li><a href="#MaxRowSize">Maximum row size for a table</a></li>
                    <li><a href="#PrimaryKey">Do you create primary key on your tables?</a></li>
                    <li><a href="#Clustered">Do you create clustered index on your tables?</a></li>
                    <li><a href="#DateTime">Use smalldatetime datatype, where possible, instead of datetime
                        datatype</a></li>
                    <li><a href="#RowGuid">Do not use indexes on RowGuid column</a></li>
                    <li><a href="#Timestamp">Do you have a timestamp column?</a></li>
                    <li><a href="#FillFactor">Use FillFactor of 90% for indexes and constraints</a></li>
                    <li><a href="#TableNameLength">Do not use table names longer than 24 characters</a></li>
                    <li><a href="#RequiredTables">Do you always have version tracking tables?</a></li>
                    <li><a href="#DenormalizedFields">Do you validate your denormalized fields correctly?</a></li>
                    <li><a href="#userschema">Do you avoid using user-schema separation?</a></li>
                    <li><a href="#triggersdenormalized">Do you use triggers for denormalized fields?</a></li>
                    <li><a href="#consistentcolumn">Do you create a consistent primary key column on your
                        tables?</a></li>
                    <li><a href="#LookupTable">Do you use separate lookup tables rather than one large lookup
                        table for your lookup data?</a></li>
                    <li><a href="#NormalizedFields">Do you avoid de-normalized fields with computed columns?</a></li>
                    <li><a href="#ZSPrefix">Do you add zs prefix to table name?</a></li>
                </ol>
                <p>
                    <b>300 - 399 Views Rules</b></p>
                <ol start="300" style="margin-left: 30px">
                    <li><a href="#NoViewsRedundantObjects">Don't have views as redundant objects</a></li>
                </ol>
                <p>
                    <b>400 - 499 Stored Procedure Rules</b></p>
                <ol start="400" style="margin-left: 30px">
                    <li><a href="#IncludeStatus">Do your stored procedures return a value indicating the
                        status?</a></li>
                    <li><a href="#StandardizeReturn">Do you standardize on the return values of stored procedures
                        for success and failures?</a></li>
                    <li><a href="#OUTPUTparameters">If you need to return the value of variables, do you
                        use OUTPUT parameters?</a></li>
                    <li><a href="#globalvariableERROR">Do you check the global variable @@ERROR after executing
                        a data manipulation statement?</a></li>
                    <li><a href="#scopeidentity">Do you use SCOPE_IDENTITY() to get the most recent row
                        identity?</a></li>
                    <li><a href="#SETNOCOUNTONNOCOUNTOFF">Do you SET NOCOUNT ON for production and NOCOUNT
                        OFF off for development/debugging purposes?</a></li>
                    <li><a href="#StoredProcsSimple">Do you keep your Stored Procs simple?</a></li>
                    <li><a href="#StoredProcsSystemPrefix">Do not start user stored procedures with system
                        prefix "sp_" or "dt_"</a></li>
                    <li><a href="#StoredProcsStandardDesc">Use company standard description in your stored
                        procedures</a></li>
                    <li><a href="#AvoidUsingStar">Do you avoid using SELECT * when inserting data?</a></li>
                    <li><a href="#Transaction">Do you use transactions for complicated stored procedures?</a></li>
                    <li><a href="#Owner-prefix">Do you know SQL stored procedure names should be prefixed with the owner?</a></li>
                </ol>
                <p>
                    <b>500 - 599 Function Rules</b></p>
                <p>
                    <b>600 - 699 Relationship Rules</b></p>
                <ol start="600" style="margin-left: 30px">
                    <li><a href="#ReferentialIntegrity">Turn on referential integrity in relationships</a></li>
                    <li><a href="#IncludeONUPDATECASCADE">Use ON UPDATE CASCADE clause when creating relationship</a></li>
                    <li><a href="#DontIncludeONDELETECASCADE">Do not use ON DELETE CASCADE clause when creating
                        relationship</a></li>
                    <li><a href="#RelationshipsReplication">Use NOT FOR REPLICATION clause when creating
                        relationship</a></li>
                    <li><a href="#MissingRelationships">Do columns ending with 'ID' have FOREIGN KEY constraints?</a></li>
                </ol>
                <p>
                    <b>700 - 799 General Rules</b></p>
                <ol start="700" style="margin-left: 30px">
                    <li><a href="#ObjectNameReservedWord">Object name should not be a reserved word</a></li>
                    <li><a href="#ObjectNameHasSpaces">Object name should not contain spaces</a></li>
                    <li><a href="#ObjectNameUnsynchronized">Do not use <b>sp_rename</b> to rename objects
                        like stored procedures, views and triggers.</a></li>
                    <li><a href="#NamingConventions">Object name should follow your company Naming Conventions</a></li>
                    <li><a href="#ObjectOwnedByDbo">Object should be owned by dbo</a></li>
                    <li><a href="#NamingConventionsDBServer">Naming convention for use on database server
                        test and production</a></li>
                </ol>
                <p>
                    <b>800 - 899 Middle Tier Rules</b></p>
                <ol start="800" style="margin-left: 30px">
                    <li><a href="#DatesISOFormat">Do you submit all dates to SQL Server in ISO format</a></li>
                    <li><a href="#MiddleTier">Do you implement business rules in the middle tier?</a></li>
                </ol>
                <p>
                    <b>900 - 999 Performance Tuning Rules</b></p>
                <ol start="900" style="margin-left: 30px">
                    <li><a href="#ClearServerCacheBenchmarkTest">Be Sure To Clear SQL Server Cache When
                        Performing Benchmark Tests</a></li>
                </ol>
            </td>
        </tr>
    </table>
    <div id="mainContent">
        <h2>
            <a name="General"></a>General DBA Rules</h2>
        <ol>
            <li>
                <h2>
                    <a name="MeasureUpTime"></a>Do you Measure Up-Time?</h2>
                <p>
                    If you measure up-time you can pro-actively inform your manager how successful you
                    have been as a DBA. You can do this in 2 ways:
                </p>
                <span>
                    <h3>
                        Option 1: High Tech Solution - using Microsoft Operations Manager (MOM)</h3>
                    MOM allows you to monitor and generate reports on the total uptime of your SQL Server
                    and other service level exceptions. You need the following for these reports:
                    <ol>
                        <li>Microsoft Operations Manager 2005 and SQL Server on the network when performing
                            a network scan</li>
                        <li>Downloaded <a href="/ssw/Redirect/Microsoft/MOMSSQLManagementPack.htm">Microsoft
                            SQL Server Management Pack for Microsoft Operations Manager 2005</a> for free.</li>
                    </ol>
                    <p>
                        <img border="0" src="Images/SQLDatabases_MOMs.gif" alt="MOMs Operations Manager"
                            width="1022" height="873" />
                        <br />
                        <b>Figure:&nbsp;Show managers what a good job you're doing with Microsoft Operations
                            Manager and associated reporting service reports</b>
                    </p>
                    <h3>
                        Option 2: Low Tech Solution - using a recurring select as a heartbeat</h3>
                    <ol>
                        <li>Run a query as a ping once every a 5 minutes something that takes about 2 seconds</li>
                        <li>SELECT * FROM Orders Five times</li>
                        <li>Log it with the time</li>
                        <li>Graph - See uptime</li>
                        <li>Graph See performance</li>
                    </ol>
                </span>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox1" WebsiteRuleID="1" runat="server" /><br />
            </li>
            <li>
                <h2>
                    <a name="CheckUpToDate"></a>Do you check your SQL Server is up-to-date?</h2>
                <p>
                    Most patches are for security. SQL Slammer showed that it's no good waiting a month
                    before you decide to install a service pack. I would say wait one week and then
                    install the service pack (maximum delay should be 2 weeks)
                    <br />
                    <br />
                    <b>Option 1:</b> Manually check using <a href="/ssw/KB/KB.asp?KBID=Q746022">@@version</a>
                    <br />
                    <br />
                    <b>Option 2</b>: Run <a href="/ssw/Diagnostics">SSW Diagnostics</a> and get all
                    green ticks (Recommended)</p>
                <p>
                    <img border="0" src="Images/SQLDatabases_RunDiagnostics.gif" alt="SSW Diagnostics"
                        width="814" height="577" />
                    <br />
                    <b>Figure:&nbsp;Use diagnostics to ensure your SQL is up-to-date</b>
                </p>
                <br />
                <b>Note:</b> To check all servers on my network I use <a href="/ssw/Standards/DeveloperGeneral/networkTools.aspx#NetPing">
                    Net Ping</a>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox2" runat="server" WebsiteRuleID="2">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="DesignForChange"></a>Do you design for change?</h2>
                <p>
                    Many developers are frightened of making a change to the existing database because
                    they just don't know what applications are using it. This is especially a problem
                    when you are dealing with a databases that you did not create. Here are some approaches
                    to this issue:
                </p>
                <ol>
                    <li>You could run around the office and find some one and hope they know (unbelievably
                        this seems this the most common method!)</li>
                    <li>Trawl through source control, all network locations and all the source code around
                        to check what connection strings are being used</li>
                    <li>You can have a zsApplication table and manually populate with application it uses
                        (Recommended). This can be populated with a run of a SQL profiler over a period
                        of a week so all usage is captured. </li>
                    <p>
                        <img border="0" src="Images/SQLDatabases_zsApplication.gif" alt="" width="876" height="319" />
                    </p>
                    <p>
                        <strong>Figure :&nbsp;Add a zsApplication table to make applications that use it visible
                            to all developers</strong>
                    </p>
                    <!--SSW Code Auditor - Ignore next line(HTML)-->
                    <li>Keep a constantly running login Audit with a SQL Server Profiler Trace that saves
                        to a table - and make sure all applications have an application name in their connection
                        string. This method is the most comprehensive option but is not recommended because
                        you get a constant performance hit from SQL Profiler running.</li>
                    <p>
                        <img border="0" src="Images/SQLDatabases_ProfileTraceForSecurity.jpg" alt="Security Log for Profiler"
                            width="479" height="508" />
                        <br />
                        <b>Figure:&nbsp;SQL Profiler can help you design for change with auditing of Login events
                            by giving you a guide on what applications are connecting to your database.</b>
                        <br />
                    </p>
                </ol>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox3" runat="server" WebsiteRuleID="3">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="ScriptOutChanges"></a>Do you script out all changes?</h2>
                <p>
                    Every time a change is made to your product's SQL Server Database, script out the
                    change. You can use Enterprise Manager, VS.NET or Query Analyzer but every time
                    you make changes you must save the change as a .sql script file so any alterations
                    are scripted. Everything at SSW is usually done three times, once on Development,
                    once on Staging and once on Production. Change control is one of the most
                    important processes to ensuring a stable database system.
                </p>
                <p>
                    Keep the scripts in a separate directory to any other scripts or files. This way
                    you can always go back to them and find out what alterations you have made to the
                    database in version xxx to find errors. If you have all the scripts you are able
                    to rebuild the database from scratch. At SSW we name this folder SQLChangeScripts so as to not confuse it with other script folders.</p>
                <p>
                    <img border="0" src="Images/SQLChangeScripts.jpg" alt="" width="572" height="594" />
                    <br />
                    <b>Figure 1:&nbsp;A list of change SQL scripts, each file name is in the correct format.</b></p>
                <p>
                    The script file format should be: &lt;version&gt;_&lt;description&gt;.sql</p>
                <p>
                    The &lt;version&gt; should be a number which is padded with leading zeros (0) on
                    the right to firm 3 or 4 digits (however long we need).</p>
                <h2>
                    What if you are using a code generator?</h2>
                Every time we use <a href="/ssw/Redirect/RADNextGeneration.htm">Next Generation</a>
                <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the ssw site" width="17"
                    height="11" />, it creates its own Generated Stored Procs in the Database Project
                of our Solution. The folder it is kept in is called &quot;Auto-Generated Stored
                Procedures&quot;.<p>
                    The scripts found within this folder are as follows:</p>
                <ul>
                    <li>010_ViewsForStoredProcedures.sql</li>
                    <li>020_StoredProcedures_Select.sql</li>
                    <li>030_StoredProcedures_Insert.sql</li>
                    <li>040_StoredProcedures_Update.sql</li>
                    <li>050_StoredProcedures_Delete.sql</li>
                </ul>
                <p>
                    After re-generation of code in the solution, these scripts will be updated with
                    the required stored procs for new Database Objects found in the application. The
                    problem is, however, that every time a re-generation occurs these files must always
                    be added to the large list of scripts in the &quot;SQLChangeScripts&quot; folder as
                    shown above.</p>
                <p>
                    To solve the issue of continually piling up these scripts every time you use <a href="/ssw/Redirect/RADNextGeneration.htm">
                        Next Generation</a>
                    <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17"
                        height="11" />, it is recommended that the scripts are copied over to the &quot;SQLChangeScripts&quot; folder, and the names should not be changed.<br />
                    By only modifying the first three numbers accordingly for the correct script sequence,
                    you will be able to find all other Next Generation stored procs, as shown in Figure
                    2.</p>
                <p>
                    <img border="0" src="Images/SQLScriptList.gif" alt="" width="332" height="361" /><br />
                    <b>Figure 2: Previous NextGen scripts can be removed except the last NextGen script
                        file e.g 008_StoredProcedures_Delete.sql should not be deleted as it may be the
                        last script in a previous version which SQL Deploy may need for reference.</b></p>
                <p>
                    Since the previous NextGen Scripts are considered outdated with the newly generated
                    scripts; deleting the previous NextGen scripts will not affect the Database Objects
                    found in the application.<br />
                    Deleting these scripts will in fact decrease the list of scripts significantly and
                    save a very large amount of time when upgrading the database using SQL Deploy, especially
                    when the generated scripts contain a lot of SQL commands.</p>
                <p>
                    After the Upgrade, you should do a check on the database with the scripts just to
                    make sure they Reconcile.</p>
                <p>
                    <table class="clsSSWProductTable" summary="SQL Deploy" style="width: 70%" id="Table2">
                        <tr>
                            <td>
                                We have a program called <a href="/ssw/SQLDeploy/">SSW SQL Deploy</a> which allows
                                you to run scripts automatically. <a href="https://www.nuget.org/packages/SSW.SQLDeploy.MVC" target="_blank">SSW SQL Deploy NuGet package</a> is also available for ASP.NET MVC applications.
                            </td>
                        </tr>
                    </table>
                </p>
                <p>
                    &nbsp;</p>
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox4" runat="server" WebsiteRuleID="4">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="ConfigureDomainAccount"></a>Do you configure all your SQL Server Services
                    to use a Domain Account rather than a local service account?</h2>
                <p>
                    SQL Server 2000 and 2005 have several different services that support them.
                </p>
                <ul>
                    <li>SQL Server</li>
                    <li>SQL Server Agent</li>
                    <li>SQL Server Reporting Services</li>
                    <li>SQL Server Integration Services</li>
                    <li>SQL Server Fulltext search</li>
                    <li>SQL Server Analysis Services</li>
                </ul>
                In the service properties window for these services, ensure that the Service Startup
                Account is run as "This Account" and not as "Built-in Account" (SQL 2005) or "Service
                Account" (SQL 2000). Otherwise, you won't get all the functionality by default such
                as the ability to use Replication, Linked Servers, connect to other machines or
                use SQL Server mail.<p>
                    For security you should not have this domain acccount in the Administrators group.
                    &nbsp;</p>
                <p>
                    <img border="0" src="Images/SQLDatabases_RunAsAccount.gif" alt="Run as Account in SQL 2005"
                        width="404" height="443" />
                    <br />
                    <b>Figure :&nbsp;Run as Account should use a domain account rather than a built-in account
                        (Good)</b>
                </p>
                <p>
                    <img border="0" src="Images/SQLDatabases_RunAsAccount_Bad.gif" alt="Run as Account in SQL 2005 (Bad)"
                        width="404" height="445" />
                    <br />
                    <b>Figure :&nbsp;This service is using a built-in local service account (Bad)</b>
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox5" runat="server" WebsiteRuleID="5">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="ServiceAccountNaming"></a>Do you name your SQL Server Domain Account as
                    'SQLServerMachineName' so it is easily identified when performing network operations?</h2>
                <p>
                    When you create the domain accounts under which SQL Server services run, you should
                    name this domain account as "SQLServerMachineName". e.g. SSW2000\SQLServerDragon.
                    If one of the SQL Server services updates a file on the network, then you can then
                    determine which server wrote to the file.
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox6" runat="server" WebsiteRuleID="6">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="AccountNotAdmin"></a>Do your SQL Server Services run under non-Administrator
                    accounts?</h2>
                <p>
                    You should always run all SQL Server services with the lowest possible priviledges
                    allowed in case the account is compromised. In SQL 2000 this was a bit of a pain
                    as you would have to manually create a minimal account with the bare minimum required
                    priviledges. SQL Server 2005 setup makes the whole process of granting priviledges
                    a whole lot easer than in SQL 2000 - because it automatically creates groups with
                    all the neccessary permissions for you!
                </p>
                <p>
                    <img border="0" src="Images/SQLDatabases_RunAsAccount_GroupsCreated.gif" alt="SQL 2005 now creates groups with the bare minimum permissions for you"
                        width="915" height="224" />
                </p>
                <p>
                    <strong>Figure :&nbsp;SQL 2005 now creates groups for all the SQL Server services with
                        the bare minimum permissions for you</strong>
                </p>
                <p>
                    For good old SQL 2000, you must manually give the SQL Server Service accounts the
                    following permissions:</p>
                <ul>
                <!--SSW Code Auditor - Ignore next line(HTML)-->
                    <li>Ability to log on as a service</li>
                    <li>Ability to access and change the MSSQL directory</li>
                    <li>Ability to access and change applicable .mdf, .ndf, and .ldf files</li>
                    <li>Ability to read and write to certain registry keys under:</li>
                </ul>
                <br />
                HKEY_LOCAL_MACHINE\Software\Microsoft\MSSQLServer.<br />
                -or- for any named instance: HKEY_LOCAL_MACHINE\Software\Microsoft\Microsoft SQL
                Server.
                <br />
                HKEY_LOCAL_MACHINE\System\CurrentControlset\Services\MSSQLServer.<br />
                -or- for any named instance: HKEY_LOCAL_MACHINE\System\CurrentControlset\Services\MSSQL$Instancename.
                <br />
                HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Perflib.<br />
                <br />
                If you are running any SQL Server Service in an user account that has administrator
                privileges a user that compromises the account could do anything that administrator
                could do - including playing around with the registry with procedures like xp_regdeletevalue.
                So, if you use an Administrator account, you're in effect giving away the keys to
                the house. Is this something you want to do?<br />
                &nbsp;<br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox7" runat="server" WebsiteRuleID="7">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="ConfigSQLMail"></a>Do you use Database Mail (not SQL Mail) in SQL 2005?</h2>
                <p>
                    SQL Server 2005 includes Database Mail, a replacement for SQL Mail. Database Mail
                    solves many of the problems inherent in SQL Mail, including:</p>
                <ul>
                    <li>HTML messages are now natively supported - so there's no need to use 3rd party dlls
                        anymore</li>
                    <li>There's no need for outlook or MAPI profiles on server - communication is directly
                        with SMTP server</li>
                    <li>Multiple profiles and accounts are supported to specify multiple SMTP servers or
                        different email infrastructure situations </li>
                    <li>SQL Server queues messages even when the external mailing process fails</li>
                    <li>High security - users and roles have to be granted permission to send mail</li>
                    <li>Logging and auditing</li>
                    <li>Attachment size regulations and file extension requirements can now be implemented</li>
                </ul>
                <p>
                    &nbsp;</p>
                <p>
                    <img border="0" src="Images/SQLDatabases_SQLMail.gif" alt="Use SQL Mail (bad)" width="945"
                        height="643" />
                </p>
                <strong>Figure :&nbsp;Using SQL Mail (Bad)</strong>
                <table class="clsSSWTable">
                    <tr>
                        <td>
                            <p>
                                EXEC master.dbo.xp_smtp_sendmail</p>
                            <p>
                                <!--SSW Code Auditor - Ignore next line(HTML)-->
                                @FROM = N'your@email.com',</p>
                            <p>
                                @FROM_NAME = N'Sophie Belle',</p>
                            <p>
                                <!--SSW Code Auditor - Ignore next line(HTML)-->
                                @TO = 'recipient@email.com',</p>
                            <p>
                                @subject = 'Vendor List',</p>
                            <p>
                                @message = 'The list of vendors is attached.',</p>
                            <p>
                                @type = N'text/html',</p>
                            <p>
                                @server = N'mail.company.com.au'</p>
                        </td>
                    </tr>
                </table>
                <strong>Figure: Avoid using SQL Mail - &nbsp;you need to have Outlook on the server
                    and there is no built-in logging (Bad)<br />
                </strong>
                <p>
                    &nbsp;</p>
                <p>
                    <img border="0" src="Images/SQLDatabases_DBMail.gif" alt="SQL 2005 now creates groups with the bare minimum permissions for you"
                        width="839" height="596" />
                </p>
                <p>
                    <strong>Figure :&nbsp;Use Database Mail (Good)</strong>
                </p>
                <p>
                    <table class="clsSSWTable">
                        <tr>
                            <td>
                                <p>
                                    USE msdb</p>
                                <p>
                                    Execute dbo.sp_send_dbmail</p>
                                <p>
                                    @profile_name = 'UTS',</p>
                                <p>
                                    <!--SSW Code Auditor - Ignore next line(HTML)-->
                                    @recipients = 'your@email.com,</p>
                                <p>
                                    @body = 'The list of vendors is attached.',</p>
                                <p>
                                    @query = 'USE AdventureWorks; SELECT VendorID, Name FROM Purchasing.Vendor',</p>
                                <p>
                                    @subject = 'Vendor List',</p>
                                <p>
                                    @attach_query_result_as_file = 1
                                </p>
                            </td>
                        </tr>
                    </table>
                    <strong>Figure: Use database mail for scalability, built-in logging and HTML capability
                        (Good)</strong></p>
                <p>
                    &nbsp;</p>
                <p>
                    For a more in-depth comparison of SQL Mail vs Database Mail, see this <a href="/ssw/Redirect/databasemailinsql2005.htm">
                        intro to Database Mail in SQL 2005</a><br />
                    &nbsp;</p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox8" runat="server" WebsiteRuleID="8">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="DefaultAlerts"></a>Do you turn on all the default alerts?</h2>
                <p>
                    Even if you don't have Microsoft Operations Manager, SQL Alerts are valuable because
                    they can alert administrators of imminent SQL Server failures. e.g. when the msdb
                    log file is full. To enable, you should change the settings under SQL Server Agent.
                </p>
                <p>
                    <img border="0" src="Images/SQLDatabases_DefaultAlerts2000.gif" alt="Alerts in SQL 2000"
                        width="754" height="344" />
                </p>
                <p>
                    <strong>Figure :&nbsp;Default Alerts in SQL 2000 were disabled after install. Enable
                        them.</strong>
                </p>
                <p>
                    SQL 2005 on the other hand has no default alerts. You will have to create them,
                    and I recommend that you add all the fatal level exceptions to alerts.
                </p>
                <p>
                    <img border="0" src="Images/SQLDatabases_DefaultAlerts2005.gif" alt="Alerts in SQL 2000"
                        width="313" height="161" />
                </p>
                <p>
                    <strong>Figure :&nbsp;SQL 2005 alerts - We recommend that you add the fatal exceptions
                        as alerts</strong>
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox9" runat="server" WebsiteRuleID="9">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="CreateCustomAlerts"></a>Have you created your own alerts?</h2>
                <p>
                    In addition don't forget to add your own alerts, such as sending an alert for the
                    exception "is outstanding amount > $15000". Many peple are not aware of this functionality
                    and write triggers or get 3rd party products to the same job.
                    <br />
                    &nbsp;</p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox10" runat="server" WebsiteRuleID="10">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="MaintenancePlan"></a>Backup - Do you setup a complete Maintenance Plan?</h2>
                <span>
                    <p>
                        It is surprising how many IT staff create backup plans and then leave it at that.
                        To have a complete maintenance plan, you should also consider the following:
                    </p>
                    <ol>
                        <li>Checking database integrity</li>
                        <li>Shrinking Databases</li>
                        <li>Reorganizing Indexes</li>
                        <li>Rebuilding Indexes</li>
                        <li>Updating Statistics</li>
                        <li>Cleaning up old maintenance histories</li>
                        <li>Performing automatic backups</li>
                        <li>Backing up System databases</li>
                        <li>Last but not least - you should regularly check that the maintenance plans have
                            been running successfully. Otherwise all your backup and maintenance efforts are
                            pointless.</li>
                        <p>
                            <img border="0" src="Images/SQLDatabases_MaintenancePlan.gif" alt="Complete Maintenance Plans"
                                width="878" height="723" />
                        </p>
                        <p>
                            <strong>Figure :&nbsp;SQL 2005 - A Complete Weekly Maintenance Plan</strong>
                        </p>
                    </ol>
                </span>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox11" runat="server" WebsiteRuleID="11">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="BackupScripts"></a>Backup - Do you back up scripts?</h2>
                <p>
                    Scripts are an important component in the operation of any database. This is why
                    you should back up all your scripts and historical schema snapshots - so you can
                    track the scripts that have been run and those that need to be deployed to test
                    and production databases. We typically store these in source control such as VSS
                    or Team Foundation Server as a Visual Studio Database project. You should regularly
                    generate full scripts of all objects changed, keeping the following points in mind:
                </p>
                <ul>
                    <li>Don't encrypt your database objects if you can avoid it - otherwise they can't be
                        scripted.</li>
                    <li>Use the
                        <ul>
                            <li>Enterprise Manager Generate Scripts Wizard Or</li>
                            <li>SQL DMO object model to script out the objects Or</li>
                            <li>Try a third party utility called <a href="/ssw/Standards/DeveloperGeneral/SQLservertools.aspx#SqlScribe">
                                SQL Scribe</a> (Recommended) to generate your schema snapshot scripts.</li>
                        </ul>
                    </li>
                </ul>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox12" runat="server" WebsiteRuleID="12">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="Restoration"></a>Backup - Do you take Restoration seriously?</h2>
                <p>
                    Restoration is vital, we all agree. But rapid restoration with minimal down time
                    is just as important. Run practice restorations on a regular basis, as you don't
                    want to find out that your back-up doesn't restore when a problem has already occurred.
                </p>
                <p>
                    This restoration process is so important that you should have a termination clause
                    in an employee's contract if the restore doesn't work when something goes wrong.
                    &nbsp;</p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox13" runat="server" WebsiteRuleID="13">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="RestorationStandard"></a>Backup - Do you have a Restoration Standard?</h2>
                <p>
                    If the restoration process is not clear and too complicated, then it will cost you
                    both time and money when you are already in a pressure situation. Make sure you
                    have a step by step and comprehensive restore standard with screenshots for every
                    step of the way so there are no nasty little surprises when your system goes down.
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox14" runat="server" WebsiteRuleID="14">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="LogFiles"></a>Are you aware of all the log files?</h2>
                <span>SQL Server stores vital error and performance information in several different
                    logs. You should be aware of all of them:</span>
                <ol>
                    <li>SQL Server Error Logs</li>
                    <ul>
                        <li>Configure how many you want to keep</li>
                        <li>You should Back up your SQL Server error logs with your other scripts</li>
                        <li>Sp_cycle_errorlog</li>
                    </ul>
                    <li>SQL Server Agent Error Log</li>
                    <ul>
                        <li>Recycles after every service restart</li>
                    </ul>
                    <li>Job History Logs</li>
                    <ul>
                        <li>Agent properties, Job System tab</li>
                        <li>Probably too low by default</li>
                    </ul>
                    <li>DBMaint history logs</li>
                    <li>(Event Viewer) - Issues<br />
                        &nbsp;</li>
                </ol>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox15" runat="server" WebsiteRuleID="15">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="ChangeDefaults"></a>Do you secure your server by changing the 'defaults'?</h2>
                <span>
                    <ol>
                        <li>Disable defaults
                            <ul>
                                <li>Disable Administrator and Rename it, then create a new "honeypot" Administrator
                                    account with no permissions.</li>
                                <li>Disable Guest on the SQL</li>
                                <li>Change Port 1433</li>
                                <li>Delete the sample databases - (AdventureWorks, Northwind and Pubs). These have a
                                    Public Role which is a security risk and allow Massive SQL Statements</li>
                            </ul>
                        </li>
                        <li>Other security issues
                            <ul>
                                <li>Use a service account with a strong password</li>
                                <li>Dont run SQL Server service as an administrator</li>
                                <li>Run in integrated security mode</li>
                                <li>Run on NTFS file system - Encrypt the data files</li>
                            </ul>
                        </li>
                    </ol>
                </span>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox16" runat="server" WebsiteRuleID="16">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="SecurityAuditing"></a>Do you turn on security auditing?</h2>
                <ul>
                <!--SSW Code Auditor - Ignore next line(HTML)-->
                    <li>Configure login security auditing</li>
                    <ul>
                        <li>Not on by default</li>
                        <li>Configure on the security tab of Server Properties in Enterprise Manager</li>
                        <li>Enable for Failure</li>
                        <li>View using the Windows Event Viewer</li>
                    </ul>
                </ul>
                <p>
                    <img border="0" src="Images/SQLDatabases_EnableAuditing.gif" alt="Enable Auditing"
                        width="714" height="642" />
                </p>
                <p>
                    <strong>Figure :&nbsp;Enable Auditing for SQL Server logins</strong>
                </p>
                <b>Note:</b> You can turn on a trace for SQL DDL operations statements
                <br />
                &nbsp;<br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox17" runat="server" WebsiteRuleID="17">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="IncreaseLogSize"></a>Do you increase the Log Size of your Event Viewer?</h2>
                <p>
                    Change the defaults from 512KB and "Overwrite events older than 7 days" to 64000KB
                    and Overwrite as needed. This will allow the users to view Security audits and errors
                    much further into the past with a minimal increase in space - and it will never
                    bloat your server.
                </p>
                <p>
                    <img border="0" src="Images/SQLDatabases_EventLog_Bad.gif" alt="Change event log defaults"
                        width="414" height="465" />
                </p>
                <p>
                    <strong>Figure :&nbsp;Change from this ridiculously small log size (Bad)...</strong>
                </p>
                <p>
                    <img border="0" src="Images/SQLDatabases_EventLog_Good.gif" alt="Change event log defaults"
                        width="414" height="465" />
                </p>
                <p>
                    <strong>Figure :&nbsp;... To a much more reasonable log size (Good)</strong>
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox18" runat="server" WebsiteRuleID="18">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="DisableUnneccessary"></a>Do you remove unnecessary permissions on databases?</h2>
                <p>
                    What goes for permissions to Windows objects also goes for SQL Server objects. Remove
                    all permissions but the bare minimum required to operate your application.
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox19" runat="server" WebsiteRuleID="19">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="PerformaceAlerts"></a>Do you use Performance Alerts?</h2>
                <p>
                    Performance alerts work well for problems that need to be discovered before they
                    occur.</p>
                <p>
                    For example, one problem that you may encounter is database file growth. Since databases
                    are set to grow to a certain percentage, you needed to configure an alert to let
                    you know when my database would draw close to that threshold. you can configure
                    a performance alert that fired off when it reached 80% of that threshold. Here is
                    an example of what you can do:</p>
                <p>
                    To configure an alert to trigger an application, perform the following steps:
                </p>
                <ol>
                    <li>Start the Microsoft Management Console (MMC) Performance snap-in (Start, Programs,
                        Administrative Tools, Performance).</li>
                    <li>Expand Performance Logs and Alerts, and select Alerts.</li>
                    <li>Right-click in the right pane, and select New Alert Settings.</li>
                    <li>Enter a name for the setting that reflects what the alert will monitor, and click
                        OK.</li>
                    <li>On the General tab, add the counter the alert will monitor and specify the values
                        that will trigger the action.</li>
                    <li>On the Action tab, select the Run this Program checkbox.</li>
                    <li>Click the Browse button, and select the name of the application you want to run.</li>
                    <li>Click OK.</li>
                </ol>
                <p>
                    <img src="Images/performanceAlert.gif" alt="Set a new Performance Alert" width="384"
                        height="386" />
                </p>
                You have just configured an application to run in response to an alert. Unfortunately,
                because the program doesn't interact with the desktop, it runs in the background,
                visible only in Task Manager. To enable the program to run interactively, perform
                the following steps:
                <ol>
                    <li>Start the MMC Services snap-in (Start, Programs, Administrative Tools, Services).</li>
                    <li>Right-click Performance Logs and Alerts, and select Properties.</li>
                    <li>On the Log On tab, specify the "Local System account" and select the "Allow service
                        to interact with desktop" checkbox.</li>
                </ol>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox20" runat="server" WebsiteRuleID="20">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="Collation"></a>Do you make sure you use a consistent Collation server-wide?</h2>
                <p>
                    Collation is the combination of language and sort orders, and you typically don't
                    notice it until you start running cross database queries.</p>
                <p>
                    It would make development simpler if the whole world spoke one language but even
                    if you are using English, you will still encounter collation issues if you are not
                    careful. The most common issue is the dreaded 'Cannot resolve collation conflict
                    for equal to operation' error when joining on columns that have different collation
                    orders. Collation is a great feature for international companies, but if you are
                    not consciously using it then you should have ALL the objects in ALL the databases
                    on ALL the servers using a consistent collation.
                </p>
                <p>
                    Flexibility with collation orders has increased a lot since SQL 7.0:
                </p>
                <ul>
                    <li>SQL 7: Back in SQL Server 7, you could only define the collation at the server level
                        and, once it was set, you could not change it without rebuilding the master database.</li>
                    <li>SQL 2000: This added the ability to have Column level collation which allows you
                        to set it at the database or column level.</li>
                </ul>
                <p>
                    However, with this column-level flexibility come additional issues. It is ideal
                    for those who only want the column name 'FirstName' to be represented in accent
                    insensitive sort order. However, one of the side effects, if you are not taking
                    notice of collation, is that you end up with many different collations on many different
                    databases.</p>
                <p>
                    We feel that the only time you need inconsitent collations is when you have a rogue
                    3rd Party application like Microsoft Great Plains that enforces its own collation.</p>
                <p>
                    See these Knowledge Base articles for more information about the issues you will
                    encounter when you have inconsistent collations:
                </p>
                <ul>
                    <li><a href="/ssw/KB/KB.aspx?KBID=Q211874"><strong>Q211874</strong> - Why do I get the
                        error 'Cannot resolve collation conflict for equal to operation'?</a>
                        <p>
                            The database collation differs from the SQL Server default collation because it
                            was attached or created with a different collation order. This causes issues when
                            you attempt to join tables in databases that have different collation orders. For
                            example, if your tempdb database and Northwind each have a different collation you
                            will get the following error 'Cannot resolve collation conflict for equal to operation'
                            when you attempt to do a join between tables from these databases</p>
                        <br />
                    </li>
                    <li><a href="/ssw/KB/KB.aspx?KBID=Q711843"><strong>Q711843</strong> - How do I change
                        the collation order in my SQL Server 2000 or 7.0 database?</a>
                        <p>
                            There is no 'recommended' collation as different collations will be used in different
                            countries but as a guideline, installations in the United States and installations
                            that require compatibility with SQL Server 7 databases should use the SQL_Latin1_General_Cp1_CI_AS
                            collation. Non-United States installations in English speaking countries should
                            use the Latin1_General_CI_AS collation.
                        </p>
                    </li>
                </ul>
                <p>
                    <img border="0" src="Images/SQLDatabases_CollationRecommended.gif" alt="SQL 2005 "
                        width="486" height="449" />
                </p>
                <p>
                    <strong>Figure :&nbsp;Setting the collation in SQL 2005 Setup - Choose Case Insensitive(CI),
                        Accent Sensitive (AS)</strong>
                </p>
                <p>
                    <br />
                </p>
                <br />
                <ssw:SQLAuditor id="SQLAuditor1" runat="server">
                </ssw:SQLAuditor>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox21" runat="server" WebsiteRuleID="21">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li><a name="DefaultDataDir"></a>
                <h2>
                    Do you create new databases in the default data directory?</h2>
                <p>
                    When trying to create a database in SQL Server 2005 from an existing create script
                    written for SQL Server 2000, we came across a problem. Our create script was trying
                    to determine the path to save the database file (the path to the default data store)
                    by using the sysdevices table in the Master database; however, the schema for the
                    Master database had changed in 2005 and our script could no longer find the column
                    it relied on to determine this path.</p>
                <p>
                    Rather than creating a new script specific to 2005, we found that by removing the
                    optional FILENAME attribute all together, both SQL Server 2000 and 2005 were happy
                    and the database files were saved into the default data directory which is what
                    we were after.</p>
                <p>
                    The moral of the story is - keep it simple.
                </p>
                <p>
                    When using a create script to create a new database, let SQL Server determine the
                    filename and path from its default settings. This will help make the script simpler,
                    more flexible, and ready to use with utilities such as MS OSQL and <a href="/ssw/SQLDeploy/">
                        SSW SQL Deploy</a>.
                </p>
                <pre>DECLARE @device_directory NVARCHAR(520)

SELECT @device_directory = SUBSTRING(phyname, 1,
 CHARINDEX(N'master.mdf', LOWER(phyname)) - 1)
FROM master.dbo.sysdevices
WHERE (name = N'master')
 
EXECUTE (N'
CREATE DATABASE [DatabaseName]
            ON PRIMARY  
            (
            NAME = N''[DatabaseName]'', 
            FILENAME = N''' + @device_directory + N'[DatabaseName].mdf''
            )
            LOG ON 
            (
            NAME = N''[DatabaseName]_log'',  
            FILENAME = N''' + @device_directory + N'[DatabaseName].ldf''
            ) 
			COLLATE SQL_Latin1_General_CP1_CI_AS
            '           
            )
Go</pre>
                <b>Figure: FILENAME Parameter used to specify database path - Bad</b><br />
                <br />
                <pre>CREATE DATABASE [DatabaseName]
COLLATE SQL_Latin1_General_CP1_CI_AS
Go
</pre>
                <b>Figure: Generic CREATE DATABASE used - Good</b>
                <p>
                    <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor">
                        <tr>
                            <td>
                                We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#SQLScripts">Code Auditor</a>
                                that checks for this rule.
                            </td>
                        </tr>
                    </table>
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox22" runat="server" WebsiteRuleID="22">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li><a name="Compatibility"></a>
                <h2>
                    Are you aware of compatibility issues between SQL Server 2000 and 2005?</h2>
                <p>
                    The SQL 2005 generated scripts are not compatible to SQL 2000, so use SQL 2000 to
                    generate your scripts if you want to make your scripts work well on both versions.<br />
                    <pre>IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcessTarget]') AND type in (N'P', N'PC'))
drop procedure [dbo].[ProcessTarget]
</pre>
                    <strong>Figure: script only works on SQL 2005, because 'sys.objects' is only available
                        in this version.</strong>
                    <br />
                    <br />
                    <pre>IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[ProcessTarget]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[ProcessTarget]
</pre>
                    <strong>Figure: script works on both SQL 2000 and SQL 2005</strong>
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox23" runat="server" WebsiteRuleID="23">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li><a name="GeneralContactDetailTable"></a>
                <h2>
                    Do you have a general Contact Detail table?</h2>
                <p>
                    It is common to have a Contact Detail table to store your contact information such
                    as phone numbers. Below is an example of Contact Detail table and its related tables.
                    This is bad because the PartyPhone table is too specific for phone number and you
                    have to add a new table to save email or other contact information if this is needed
                    in the future.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/ContactDetailTable_bad.gif" width="761" height="437" /></dt><dd>Figure:
                            a too specific Contact Detail table</dd></dl>
                we normally have a general Contact Detail table that includes all the different
                categories of phone numbers, whether is is shared or primary plus emails all in
                the same table.
                <dl class="goodImage">
                    <dt>
                        <img src="Images/ContactDetailTable_good.gif" alt="General Contact Detail Table"
                            width="660" height="519" /></dt><dd>Figure: a general Contact Detail table</dd></dl>
                We use a Contact Detail Category table to store these categories.
                <dl class="goodImage">
                    <dt>
                        <img src="Images/ContactDetailCategoryTable.gif" alt="Details of Contact Detail Category Table"
                            width="483" height="270" /></dt><dd>Figure: details of Contact Detail Category table</dd></dl>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox24" runat="server" WebsiteRuleID="24">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li><a name="Documentation" />
                <h2>
                    Do you know how to provide best database schema document?</h2>
                <p>
                    You should not provide a database schema via several screen captures - it has little
                    information of the details. A well formatted Word document may be providing more
                    details information, but it is not easy to maintain the document to keep it up-to-date.
                    The best way is to automatically generate your document with a tool.
                </p>
                <p>
                    We recommend and use <a href="/ssw/Standards/DeveloperGeneral/SQLservertools.aspx#SqlDoc">
                        Red-Gate SQL Doc</a> to produce chm help files or html pages of the database
                    schema. SQL Doc also allows you to run via the command line so you can include the
                    generation in your build process to be automatically created.
                </p>
                <p>
                    We have also have used these other available tools in the past: <a href="/ssw/Standards/DeveloperGeneral/SQLservertools.aspx#SqlScribe">
                        SQL Scribe</a> and <a href="/ssw/Standards/DeveloperGeneral/SQLservertools.aspx#ApexSqlDoc">
                            Apex SQL Doc</a>.
                    <br />
                    <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox25" runat="server" WebsiteRuleID="25">
                    </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="AvoidCollationErrors"></a>Do you avoid collation errors?
                </h2>
                <p>
                    You don't want this error:</p>
                <p>
                    "120_ClientInvoice_ClientIDRequired.sql...Column 'dbo.Client.ClientID' is not of
                    same collation as referencing column 'ClientInvoice.ClientID' in foreig..."</p>
                <p>
                    When you write a stored proc - it must work regardless of the users collation. When
                    you are joining to a temp table - meaning you are joining 2 different databases
                    (eg. Northwind and TempDB) they wont always have the same collation.</p>
                <p>
                    The reality is that you can't tell a user what collation to run their TempDB - we
                    can only specify the collation Northwind should be (we don't even want to specify
                    that - we want that to be the their default (as per their server))</p>
                <p>
                    Here is what you need to do:</p>
                <pre>
    SELECT
        #ClientSummary.ClientID,
        DateOfLastReminder = MAX(ClientDiary.DateCreated),
        DaysSinceLastReminder = DATEDIFF(day,MAX(ClientDiary.DateCreated),getdate())
    INTO #RecentReminderList
    FROM
        ClientDiary INNER JOIN #ClientSummary
        ON ClientDiary.ClientID = #ClientSummary.ClientID <span style='background: yellow'>COLLATE
            database_default</span>
    WHERE
        ClientDiary.CategoryID LIKE 'DEBT-%'
    GROUP BY
        #ClientSummary.ClientID
</pre>
                <p />
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox26" runat="server" WebsiteRuleID="409">
                </ssw:SQLAuditorVoteBox><br />
            </li>
        </ol>
        <h2>
            <a name="Data"></a>Data Rules</h2>
        <ol start="100">
            <li>
                <h2>
                    <a name="AvoidNullsTextFields"></a>Don't allow Nulls in text fields</h2>
                <p>
                    NULLs complicate your life. To avoid having to constantly differentiate between
                    empty strings and NULLs, you should avoid storing NULLS if you can.
                </p>
                <p>
                    Why? Well what is wrong with this?</p>
                <pre>SELECT ContactName
                                FROM Customer
                                WHERE ContactName <> ''</pre>
                <b>Figure: Selecting on empty string</b></p>
                <p>
                    Nothing if your data is perfect, but if you allow Nulls in your database, then statements
                    like this will give you unexpected results. To get it working you would have to
                    add the following to the last line:
                </p>
                <pre>WHERE ContactName <> '' OR ContactName Is Null </pre>
                <%-- </td>
                            </tr>
                        </table>--%>
                <b>Figure: Allowing null strings makes queries more complex</b>
                <p>
                    What about only allowing empty strings? Well we choose to block Nulls because it
                    is a lot easier to check off a check box in Enterprise Manager than it is to put
                    a constraint on every field that disallows empty string ('').
                </p>
                <table id="Table5">
                    <tr>
                        <td>
                            <img src="Images/SQLServerNullsAndEmptyStrings.gif" alt="SQL Server Nulls and Empty Strings"
                                border="1" width="409" height="125" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Figure: Don't allow Nulls </b>
                        </td>
                    </tr>
                </table>
                <p>
                    Not allowing Nulls will give you the following benefits:&nbsp;
                    <br />
                    * Don't have to enforce every text field with a CHECK constraint such as ([ContactName]&lt;&gt;'').
                    <br />
                    * Make your query simpler, avoid extra checking in stored procedures. So you don't
                    have to check for NULLs and empty strings in your WHERE clause.<br />
                    * SQL Server performs better when nulls are not being used.<br />
                    * Don't have to deal with the pain in middle tier to explicitly check DBNull.Value,
                    you can always use contactRow.ContactName == String.Empty. Database Nulls in the
                    .NET framework are represented as DBNull.Value and it cannot implicitly typecast
                    to ANY other type, so if you are allowing NULLs in ContactName field, the above
                    comparing will raise an exception.<br />
                    * Avoid other nasty issue, a lot of controls in the .NET framework have real problems
                    binding to DBNull.Value. So you don't have write custom controls to handle this
                    small thing.
                </p>
                <p>
                    However, you should always be aware that Nulls and empty strings are totally different,
                    so if you absolutely have to have them, they should be used consistently. In the
                    ANSI SQL-92 standard, an empty string ('') is never equated to Null, because empty
                    string can be significance in certain applications.
                    <br />
                    For example, you have Address1 and Address2 in your database, a Null value in Address2
                    means you don't know what the Address2 is, but an empty string means you know there
                    is no data for Address2. You have to use a checkbox on the UI to explicitly distinguish
                    Null value and empty string:<br />
                    &nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <img border="0" src="Images/NullValueOnUI.jpg" width="358" height="208"><br />
                    <b>Figure: A check box is required if you want to allow user to use Null value on the
                        UI</b></p>
                <p>
                    Some people are not going to like this rule, but this is how it works in Oracle
                    and Access:<br />
                    *In Oracle, empty strings are turned into Nulls (which is basically what this rule
                    is doing). Empty strings per se are not supported in Oracle (This is not ANSI compliant).
                    <br />
                    *And talking of legacy systems :-) be aware that using Access as a data editor is
                    a &quot;No-No&quot;. Access turns empty strings into a Null.</p>
                <p>
                    Finally always listen to the client, Nulls have meaning over an empty string - there
                    are exceptions where you might use them - but they are rare.
                </p>
                <p>
                    So follow this rule, block Nulls where possible, update your NULLs with proper information
                    as soon as possible, and keep data consistent and queries simple.
                    <br />
                </p>
                <table class="MsoNormalTable" width="80%" style="border: 1.5pt solid #ffcc00; margin-left: 3pt;
                    background: whitesmoke" cellspacing="0" cellpadding="0" bgcolor="whitesmoke"
                    summary="SQL Auditor" border="1" id="table13">
                    <tr>
                        <td style="border: medium none; padding: 0.75pt; background: #ffff99" bgcolor="#ffff99">
                            <p class="MsoNormal" style="margin-left: 0cm; margin-right: 0cm; margin-bottom: 3pt">
                                <span style="font-size: 9pt; font-family: Verdana">We have a program called <a title="/ssw/SQLAuditor/"
                                    style="font-family: Tahoma; color: blue; text-decoration: underline" href="../../SQLAuditor/">
                                    SSW SQL Auditor</a> to check for this rule: </span>
                            </p>
                            <p class="MsoNormal" style="text-indent: -18pt; line-height: 12.75pt; margin-left: 36pt">
                                <span style="font-size: 10pt; font-family: 'Courier New'">o</span><span style="font: 7pt 'Times New Roman'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </span><span style="font-size: 9pt; font-family: Verdana">Alternative #1 (recommended)
                                    - Use NOT NULL constraint and allow empty strings instead of allowing null values
                                </span>
                            </p>
                            <p class="MsoNormal" style="text-indent: -18pt; line-height: 12.75pt; margin-left: 36pt">
                                <span style="font-size: 10pt; font-family: 'Courier New'">o</span><span style="font: 7pt 'Times New Roman'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </span><span style="font-size: 9pt; font-family: Verdana">Alternative #2 (not recommended)
                                    - Use NULL constraint and disallow empty strings with CHECK constraint </span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: medium none; padding: 0.75pt; background: #ffff99" bgcolor="#ffff99">
                            <img border="0" src="Images/SQLAudtior-NoAllowNuLL.gif" width="538" height="179" />
                        </td>
                    </tr>
                    <tr>
                        <td style="border: medium none; padding: 0.75pt; background: #ffff99" bgcolor="#ffff99">
                            <p class="MsoNormal">
                                <b><span style="font-weight: bold; font-size: 9pt; font-family: Verdana">Figure: What
                                    the Customers table will look like after applying the rule above 'Alternative #1
                                    (recommended)'</span></b><span style="font-size: 9pt; font-family: Verdana">

                                </span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: medium none; padding: 0.75pt; background: #ffff99" bgcolor="#ffff99">
                            <img border="0" src="Images/SQLAuditor-NoAllowEmptyStri.gif" width="538" height="305" />
                        </td>
                    </tr>
                    <tr>
                        <td style="border: medium none; padding: 0.75pt; background: #ffff99" bgcolor="#ffff99">
                            <p class="MsoNormal">
                                <b><span style="font-weight: bold; font-size: 9pt; font-family: Verdana">Figure: What
                                    the Customers table will look like after applying the rule above 'Alternative #2
                                    (not recommended)</span></b></p>
                            <p class="MsoNormal">
                                <span style="font-family: Verdana">Alternative #1 is always preferred, but if you do
                                    have some exceptions in your application, please put comment in
                                    <br />
                                    the field &quot;Ignored by SQL Auditor: [your reasons]&quot;.<br />
                                    Eg. Ignored by SQL Auditor: Null means unknown addresses. I have provided a checked
                                    box in the UI so the user can signify that. </span>
                        </td>
                    </tr>
                </table>
                <p>
                    <br />
                    &nbsp;</p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox100" runat="server" WebsiteRuleID="100">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="AvoidNullsNumberFields"></a>Don't allow NULLs in number fields if it has
                    the same meaning as zero</h2>
                <p>
                    NULLs create difficulty in the middle-tier because you need to add further handling.
                    So avoid them where you can, eg. For a Discount field, make the default 0 and don't
                    allow NULLs.<br />
                    <br />
                    This rule should not be applied when a NULL value is valid data. Often times data
                    such as a percent earnings rate on a super fund is nullable because it may not be
                    supplied or relevant. This is very different to it being zero and you have no way
                    to determine real zero values from not supplied data. The hit of doing the work
                    in code is often offset in this case by the validity of query results.<br />
                    <br />
                    As a general rule of thumbs, don't use NULL if you cannot distinguish it from another
                    value.<br />
                    <br />
                    Q. What is the difference between NULL and 0 in discount field?
                    <br />
                    A. No difference, so don&#8217;t allow Nulls.<br />
                    <br />
                    Q: What is the difference between NULL and 0 in Tumor size?
                    <br />
                    A: Null means unknown and 0 means no tumor, so allow Nulls.<br />
                    <br />
                    <b>Note:</b> Nulls are evil, but don't go crazy removing nulls. Never invent your
                    own constant eg. -999 to represent a Null.
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox101" runat="server" WebsiteRuleID="101">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="DontStartTextWithEmptyLine"></a>Don't start data in character columns with
                    empty line</h2>
                <p>
                    Character columns (char, varchar, text, nchar, varchar, text) can store data as
                    &lt;Ctrl&gt;+&lt;Enter&gt; in the first line and the rest of data in the second
                    line.<br />
                    <br />
                    <strong>Note:</strong> If the front-end is Microsoft Access, then the data in the
                    second line is not shown.
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to remove an empty line from character type columns where it is the first character
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox102" runat="server" WebsiteRuleID="102">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="DontStartTextWithSpace"></a>Don't start data in character columns with
                    spaces</h2>
                <p>
                    Text in character columns (char, varchar, text, nchar, varchar, text) can start
                    with spaces which is usually data entry error.
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to remove leading spaces from character data
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox103" runat="server" WebsiteRuleID="103">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="UseIdentity"></a>Use Identities in SQL Server (but don't use Autonumbers
                    in Access)</h2>
                <p>
                    This one is going to be a controversial one. But the bottom line is every now and
                    then you want to do something and then you curse and wish your database didnt have
                    an identities. So why use them? Let's look at the problems first:</p>
                <p>
                    <strong>Cons:</strong></p>
                <ul>
                    <li>You cant manually change a Primary Key and let the Cascade Update do its work, eg.
                        an InvoiceID </li>
                    <li>Hassles when importing data into related tables where you want to control the Primary
                        Key eg. Order and Order Details </li>
                    <li>Replication you will get conflicts </li>
                </ul>
                <p>
                    In Microsoft Access you have autonumbers and there is no way around them so never
                    use them.<br />
                    But in SQL Server you have identities and we have these procs:</p>
                <ul>
                    <li>DBCC CHECKIDENT - Checks the current identity value for the specified table and,
                        if needed, corrects the identity value</li>
                    <li>SET IDENTITY_INSERT { table } { ON | OFF } - Allows explicit values to be inserted
                        into the identity column of a table</li>
                </ul>
                <p>
                    <strong>Pros:</strong></p>
                <ul>
                    <li>Less programming - letting the database take care of it</li>
                    <li>Replication (identities are supported by SQL Server with ranges so when you want
                        replication, no coding</li>
                    <li>Avoiding concurrency errors on high INSERT systems so no coding</li>
                </ul>
                <p>
                    So the only Con left is the importing of data but we can use one of the above procs
                    to get around it. See grey box.</p>
                <strong>The best way to import messy data into SQL Server (with Identities)</strong><br />
                Eg. inserting data to the Orders and Orders Details table:
                <ul>
                    <li>Use an .adp to copy the first record to Excel</li>
                    <li>Get the data into the same column orders</li>
                    <li>--</li>
                    <li>SET IDENTITY_INSERT Orders ON --this will allow manual identity INSERTS</li>
                    <li>Copy and Paste Append the Orders</li>
                    <li>SET IDENTITY_INSERT Orders OFF --as it can only be on for one table at a time</li>
                    <li>--</li>
                    <li>SET IDENTITY_INSERT [Order Details] ON --this will allow manual identity INSERTS</li>
                    <li>Copy and Paste Append the [Order Details]</li>
                    <li>SET IDENTITY_INSERT [Order Details] OFF</li>
                </ul>
                <br />
                <span class="Caption">Automatic Identity Range Handling </span>
                <p>
                    The simplest way of handling identity ranges across replicas is to allow SQL Server
                    2000 to manage identity range handling for you. To use automatic identity range
                    handling, you must first enable the feature at the time the publication is created,
                    assign a set of initial Publisher and Subscriber identity range values, and then
                    assign a threshold value that determines when a new identity range is created.
                    <br />
                    For example, assigning an identity range from 1000 through 2000 to a Publisher,
                    and a range from 2001 through 3000 to an initial Subscriber a range from 3001 to
                    4000 to the next publisher etc.
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox104" runat="server" WebsiteRuleID="104">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="AvoidDelete"></a>Don't delete records - just flag them as Inactive</h2>
                <p>
                    When users are deleting a lot of records as part of normal operations - they can
                    and do make mistakes. Instead of the painful process of having to go to a backup
                    to get these records, why not simply flag the records as Inactive?</p>
                <span class="Caption">Advantages </span>
                <ul>
                    <li>You do not have to delete all related records e.g. Customers, Orders, Order Details.
                        Instead, you can just flag the parent record as deleted with an "IsDeleted" bit
                        field. </li>
                    <li>You do not lose historical data e.g. how many products one of your previous clients
                        purchased</li>
                    <li>You can actually see who deleted the record, as your standard audit columns (e.g.
                        DateUpdated, UserUpdated are still there. The record does not just vanish </li>
                    <li>It is simple to implement - particularly when using a code generator. For example
                        - our code generator produces views and stored procedures, and all data access layer
                        code. With all data access done through the data layer views, we simply had to add
                        a filter to all views ("WHERE IsActive = 0"). Our autogenerated delete stored procedures
                        simply set the "IsActive" column to false. </li>
                </ul>
                <span class="Caption">Disadvantages</span>
                <ul>
                    <li>Depending on your interface design, you may have to join to parent tables to ensure
                        that deleted child records do not appear. Typically, the interface would be designed
                        in such a way that you would not need be able to created new records based on the
                        deleted items (e.g. you cannot create a new order record for a customer that is
                        deleted). Performance of queries can potentially suffer if you have to do these
                        joins.</li>
                    <li>While storage space is very cheap, you are not removing records from your database.
                        You may need to archive records if the number of deleted records becomes large.
                    </li>
                </ul>
                Also see <a href="#UseAuditTools">Using Audit Tools</a> for alternatives to this
                approach using 3rd party auditing tools.
                <br />
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox105" runat="server" WebsiteRuleID="105">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="DateData"></a>Date - Make sure you have valid date data in your database</h2>
                <p>
                    SQL Server dates can range from year 1900 up to year 9999. However, certain date
                    data in your database just wouldn't make any sense in the context of your business.
                    For example, if your company started trading in 2005 you should not have any dates
                    in your database before 2005 (unless you are tracking start dates of your clients,
                    but this is an exception). An invoice date of 2003 wouldn't make sense at all. You
                    should run validation queries to ensure no rubbush date data gets into your database.
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to see data that violates user-defined date range
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox106" runat="server" WebsiteRuleID="106">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="UniversalTime"></a>Date - DateTime fields must be converted to universal
                    time</h2>
                <p>
                    Any DateTime fields must be converted to universal time from the application to
                    the stored procedures when storing data into the database.<p>
                        When retrieving data from the database it must be converted back to the local time
                        of the user.<br />
                        That way you get an accurate representation of e.g. the time someone entered data
                        into the database (i.e. the DateUpdated field).<p>
                            The exception to this rule, however, is for already existing databases that deal
                            with DateTime as part of their queries.<br />
                            e.g. SSW Time PRO.NET is an application that allows employees to enter their timesheet.
                            The table used for storing this information has an important field that has a DateTime
                            data type.<br />
                            This cannot be converted to UTC in the database because that would mean:<br />
                            &nbsp;<ol>
                                <li>Converting every single entry since entries began being stored (in SSW's case since
                                    1996) to keep information consistent;</li>
                                <li>Other separate applications currently using the timesheet information in the database
                                    for reporting will also have to be entirely modified.</li>
                            </ol>
                            <p>
                                Currently there will be an issue if for example someone from the US (Pacific time)
                                has 19 hours difference between her local time and our servers.</p>
                            <p>
                                <b>Example:</b> Sally in the US enters a timesheet for the 21/04/05. (which will
                                default to have a time of 12:00:00 AM since the time was not specified)<br />
                                Our servers will store it as 21/04/05 19:00:00 in other words 21/04/05 07:00:00
                                PM because the .NET Framework will automatically convert the time accordingly for
                                our Web Service.<br />
                                Therefore our servers have to take the Date component of the DateTime and add the
                                Time component as 12:00:00 AM to make it stored in our local time format.<br />
                                <pre>[WebMethod]
public double GetDateDifference(DateTime dateRemote)
{
	DateTime dateLocal = dateRemote.Date;
	return (dateRemote.TimeOfDay.TotalHours - 
	dateLocal.TimeOfDay.TotalHours);
}</pre>
                                <p>
                                    <b>Figure: When dateRemote is passed in from the remote machine, .Net Framework will
                                        have already converted it to the UTC equivalent for the local server (i.e. the necessary
                                        hours would have been added to cater for the local server time).</b></p>
                                <p>
                                    In the above code snippet, the .Date property would cut off the Time portion of
                                    the DateTime variable and set the Time portion to &quot;12:00:00 AM&quot; as default.</p>
                                <p>
                                    This is for applications we currently have that:</p>
                                <ol>
                                    <li>Consider the DateTime component integral for the implementation of the application</li>
                                    <li>That will be used world wide.</li>
                                </ol>
                                <p>
                                    &nbsp;<br />
                                    <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox107" runat="server" WebsiteRuleID="107">
                                    </ssw:SQLAuditorVoteBox><br />
                &nbsp;</li>
            <li>
                <h2>
                    <a name="UseAuditTools"></a>Do you use 3rd party audit tools to audit data changes?</h2>
                <p>
                    In many cases, there are legal requirements to audit all updates to financial records.
                    In other cases, you will want to be able to track and undo deletes to your database.
                    Some solutions we have seen in the past are:
                </p>
                <ol>
                    <li>Manually adding triggers on all database tables to log every table</li>
                    <li>The business objects or stored procedures all write to 2 tables the main table such
                        as Customer and CustomerAudit</li>
                    <li>Using a logging utility to audit database changes</li>
                </ol>
                For ease of reporting and the ability to undo, we recommend that you use a logging
                utility such as <a runat="server" href="~/Redirect/Lumigent/Lumigent.htm" id="A1">Lumigent
                    Log Explorer</a>. This means that you can devote your development time to areas
                other than auditing. Also, unlike other utilities which use triggers (such as <a
                    href="~/Redirect/ApexSQL.htm" runat="server" id="A2">ApexSQL Audit</a>), there
                is no performance overhead because it relies upon log files already created by SQL
                Server. If required, you can export the log information to SQL Server, so you can
                perform advanced queries on it. It even allows you to recover previously deleted
                tables.
                <br />
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox108" runat="server" WebsiteRuleID="108">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="InvalidCharInObject"></a>Do you use invalid characters in object identifiers?</h2>
                <p>
                    We believe it is not good that use invalid characters (most of are Symbol characters,
                    like <b>"</b>,;"\/(<b>"</b>, etc.) in object identifiers. Though it is legal, it
                    is easy confused and probably cause error during run script on these objects.</p>
                <p>
                    <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor">
                        <tr>
                            <td>
                                We have a program called <a href="/ssw/SQLAuditor/Default.aspx">SQL Auditor</a>
                                that checks for this rule.
                            </td>
                        </tr>
                    </table>
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox109" runat="server" WebsiteRuleID="109">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="InvalidCharInData"></a>Do you check invalid characters in character data?</h2>
                <p>
                    Always avoid invalid characters in your data (most of are Symbol characters, like
                    "<b>,;"\/\n\r</b>", etc.). You usually get them in your database by mistake people
                    usually get them from copy and pasting from Word.
                    <br />
                    They can be costly here is an example of an error you can get.
                    <br />
                </p>
                <p>
                    <img src="/ssw/Standards/Rules/Images/InvalidCharacterInData1.gif" width="888" height="507" /></p>
                <br />
                What could this be? Well in this case the html source of http://www.ssw.com.au/ssw/Download/Download.aspx?GroupCategoryID=5BUS
                had this:<br />
                <br />
                <pre>&lt;script language="Javascript"&gt;
<p class="highlight">
    document.write('<b>SSW Smart Tags for Word</b> ');</p>
...
&lt;/script&gt;
</pre>
                <br />
                There is an unwanted [return char] in the end of [SSW Smart Tags for Word]. So,
                then you trace it to a database record and find that the CategoryName field is SSW
                Smart Tags for Word? in that record. After you I remove the error chars, this bug
                was fixed all very expensive and all very costly.
                <p>
                    <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor">
                        <tr>
                            <td>
                                We have a program called <a href="/ssw/SQLAuditor/Default.aspx">SQL Auditor</a>
                                that checks for this rule.
                            </td>
                        </tr>
                    </table>
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox110" runat="server" WebsiteRuleID="110">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="ImageReplaceWithURL"></a>Do you use a URL instead of a image in your database?</h2>
                <p>
                    We recommend that you use a URL instead of a image in your database, this will make
                    you
                </p>
                <ol>
                    <li>avoid size of your database increasing too speedy (which may will bring a serial
                        of problems, like performance, log and disk space, etc);</li>
                    <li>easy to validate and change the image;</li>
                </ol>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a report
                            of image columns
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox111" runat="server" WebsiteRuleID="111">
                </ssw:SQLAuditorVoteBox><br />
            </li>
        </ol>
        <h2>
            <a name="TableField"></a>Table and Column Rules</h2>
        <ol start="200">
            <!-- PH Removed, bad rule
			<li>
				<h2><a name="NoAutonumberORIdentity"></a> Don't use Autonumber or Identities</h2>
				<p>
				This is just lazy. It gives you more functionality later on changing data and 
				you won't have problems when importing data.
				<p>
					For Example: Your administrative person made&nbsp;several data entry errors, 
					and you have deleted all the record just entered. If you want to run an update 
					query to update the ClientID (and identity column), and want to change the 
					identity values from '130' to '100' to fill in the gaps - you can't - because 
					the column is not updateable.
				</p>
				<p>
					Solution: Use a generic function in your application to generate identifiers, 
					or use the unique identifier datatype with a default of NEWID(). The first 
					solution is preferred because the size of the column can be smaller than the 16 
					bytes (so it more efficient), and no round-trips are required to get the 
					NEWID() value that the database generated.
				</p>
			</li>
			-->
            <li>
                <h2>
                    <a name="UnicodeDatatype"></a>Only use Unicode datatypes (nchar, nvarchar and ntext)
                    in special circumstances</h2>
                <p>
                    Columns defined using the nchar, nvarchar and ntext datatypes can store any character
                    defined by the Unicode Standard, which includes all of the characters defined in
                    the various English and Non-English character sets. These datatypes take twice as
                    much storage space per characters as non-Unicode data types.
                </p>
                <p>
                    It is not the disk space costs that are the concern. It is the 8060 limit, please
                    refer to <a href="/ssw/Redirect/SQLServer/MaximumCapacitySpecificationsforSQLServer.htm">Maximum Capacity Specifications for SQL Server</a>
                    for details.</p>
                <p>
                    If your database stores only English characters, this is a waste of space. Don't
                    use Unicode double-byte datatypes such as nchar, nvarchar and ntext unless you are
                    doing multilingual applications.</p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/SQLAuditor/">SSW SQL Auditor</a> that can
                            produce a report indicating unicode datatype columns in your database. It also can
                            generate sql script to change datatype of those columns from nchar to char and from
                            nvarchar to varchar. To change datatype of ntext columns we recommend to use Enterprise
                            Manager.
                            <p>
                                <img src='/ssw/Standards/Rules/Images/ChangeDatatypeNText.jpg' alt="" width="320"
                                    height="219" /><br />
                                <b>Figure: SQL Auditor will report all unicode columns like nvarchar and ntext. It will
                                    give you a SQL script for the nvarchar and advise you to use Enterprise Manager
                                    to change ntext columns to text.</b>
                                <br />
                            </p>
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox200" runat="server" WebsiteRuleID="200">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="Varchar"></a>Do you always use Varchar?</h2>
                <p>
                    Use VARCHAR instead of CHAR, unless your data is almost always of a fixed length,
                    or is very short. For example, a Social Security/Tax File number which is always
                    9 characters. These situations are rare. SQL Server fits a whole row on a single
                    page, and will never try to save space by splitting a row across two pages. Running
                    DBCC SHOWCONTIG against tables shows that a table with fixed length columns takes
                    up less pages of storage space to store rows of data. General rule is that the shorter
                    the row length, the more rows you will fit on a page, and the smaller a table will
                    be. It allows you to save disk space and it means that any retrieval operation such
                    as SELECT COUNT(*) FROM, runs much quicker against the smaller table.
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox201" runat="server" WebsiteRuleID="201">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="StandardTableFields"></a>Do you have standard Tables and Columns?</h2>
                <ol>
                    <li>All tables should have the following fields:
                        <table class="clssswTable" summary="Required Fields" id="Table6" width="70%">
                            <tr>
                                <td width="20%">
                                    <b>Field</b>
                                </td>
                                <td width="40%">
                                    <b>SQL Server Field Properties</b>
                                </td>
                               
                            </tr>
                            <tr>
                                <td>
                                    CreatedUtc
                                </td>
                                <td>
                                    datetime2 Allow Nulls=False Default=GETUTCDATE()
                                </td>
                               
                            </tr>
                            <tr>
                                <td>
                                    CreatedUserId
                                </td>
                                <td>
                                    Foreign Key to Users table, Allow Nulls=False
                                </td>
                                
                            </tr>
                            <tr>
                                <td>
                                    ModifiedUtc
                                </td>
                                <td>
                                    datetime2 Allow Nulls=False Default=GETUTCDATE()
                                </td>
                                
                            </tr>
                            <tr>
                                <td>
                                    ModifiedUserId
                                </td>
                                <td>
                                    Foreign Key to Users table, Allow Nulls=False
                                </td>
                                
                            </tr>
                            <tr>
                                <td>
                                    Concurrency
                                </td>
                                <td>
                                    rowversion Allow Nulls=False
                                </td>
                                
                            </tr>
                        </table>
                        <p>
                            The first three are examples of bad table records. The last one is an example of
                            how this table structure should be entered.</p>

                        <p>
                            <img src="/ssw/Images/imgGoodBadPracticesExampleSQLFields.png" alt="Good Bad Practices Example SQL Fields" /><br />
                            <b>Figure: 3 bad examples and 1 good example of Row auditing</b>                            
                        </p>                        
                        <p>
                            Note #1: Never set the CreatedUtc field - instead use a default GETUTCDATE() 
                        </p>    
                        <p>
                            Note #2: These fields offer basic row auditing that will cover the majority of applications.  When an application has specific auditing requirements, they should be analysed to see if this approach is sufficient.
                        </p>    
                    </li>
                    <li>All databases should have a table with one record to store application Defaults.
                        This table should be called 'Control'.
                        <p>
                            If the settings are not application-wide, but just for that user then an XML (do
                            not use an INI file) for simple stuff might be better. Examples are saving the 'User'
                            for logon, 'Select Date Range' for a report, form positions, etc.
                        </p>
                        <p>
                            .NET programs have an Application.Configuration which exports to XML file (app.config)
                            automatically. It works very well, and deployment is very simple. It's integrated
                            right into the Visual Studio.NET designer as well.
                        </p>
                    </li>
                    <br />
                    <li>All databases should have a version table to record structural changes to tables.
                        See <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/DoYouStopDealingWithDataAndSchema.aspx">SSW Rules
                            to Better Code</a>
                        <br />
                        &nbsp; </li>
                    <li>Lookup tables that have just two columns should be consistent and follow this convention:
                        CategoryId (int) and CategoryName (varchar(100)).
                        <p>
                            The benefit is that a generic lookup form can be used. You will just need the generic
                            lookup form pass in the TableName and Column1 and Column2.
                        </p>
                        <p>
                            Note #1: The problem with the naming is the primary keys don't match</p>
                        <p>
                            Note #2: The benefit with the character primary key columns is that queries and
                            query strings have meaning eg. <a href="/ssw/Download/Download.aspx?GroupCategoryID=5BUS">
                                http://www.ssw.com.au/ssw/Download/Download.aspx?GroupCategoryID=5BUS</a> from
                            this URL I can guess that it is in the business category.
                        </p>
                    </li>
                </ol>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor/">SQL Auditor</a> will check this rule and generate a script
                            to add standard columns specified in Tools > Options
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox202" runat="server" WebsiteRuleID="202">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="BitFields"></a>Do you use Bit/Numeric data type correctly?</h2>
                <ol>
                    <li>Bit data type
                        <p>
                            Bit data from 0 to 1 (2 values only). Storage size is 1 byte.<br />
                            Columns of type <b>bit</b> cannot have indexes on them.&nbsp; Also, SQL Server 7
                            only allows True or False values in a <b>bit</b> column. SQL 2000 introduced the
                            ability to store NULL as well. Applications built for SQL Server 7 often does not
                            expect this behaviour, and may create subtle runtime errors. <a href="/ssw/KB/KB.asp?KBID=Q482854">
                                [more information on bit data type]</a>
                        </p>
                        <p>
                            Columns of type <b>bit</b> should be prefixed with "Is" or a "Should" ie. IsInvoiceSent
                            (y/n) or ShouldInvoiceBeSent (y/n) you can tell easily which way the boolean is
                            directed. <a href="RulestoBetterCode.aspx#BooleanPropertyNamingConventions">[more information
                                on naming conventions]</a></p>
                        <p>
                            This being said, fields of this type should generally be avoided because often a
                            field like this can contain a date i.e. DateInvoiceSent (Date/Time) is prefered
                            over InvoiceSent (y/n). If a date is inappropriate then we still recommend an int
                            field over a bit field anyway, because bits are a pain in the butt :-)</p>
                    </li>
                    <li>Tinyint data type
                        <p>
                            Integer data from 0 through 255. Storage size is 1 byte.</p>
                    </li>
                    <li>Smallint data type
                        <p>
                            Integer data from -2^15 (-32,768) through 2^15-1 (32,767). Storage size is 2 bytes.</p>
                    </li>
                    <li>Int data type
                        <p>
                            Integer (whole number) data from -2^31 (-2,147,483,648) through 2^31-1 (2,147,483,647).
                            Storage size is 4 bytes. The SQL-92 synonym for int is integer.</p>
                    </li>
                    <li>Bigint data type
                        <p>
                            Integer (whole number) data from -2^63 (-9223372036854775808) through 2^63-1 (9223372036854775807).
                            Storage size is 8 bytes.</p>
                    </li>
                </ol>
                <b>Recommended:</b>
                <ul>
                    <li>Use smallint datatype instead of bit datatype - so it can be indexed;</li>
                    <li>Use int datatype, where possible, instead of bigint datatype - for saving disk space;</li>
                    <li>Use smallint datatype, where possible, instead of int datatype - for saving disk
                        space;</li>
                    <li>Use tinyint datatype, where possible, instead of smallint datatype - for saving
                        disk space;</li>
                </ul>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to replace with the proper data type;
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox203" runat="server" WebsiteRuleID="203">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="KeyTypes"></a>What sort of primary keys do you use - Natural or Surrogate?</h2>
                <p>
                    Now this is a controversial one. Which one do you use?</p>
                <ol>
                    <li>A "Natural" (or "Intelligent") key is actual data
                        <ul>
                            <li>Surname, FirstName, DateOfBirth</li>
                        </ul>
                    </li>
                    <li>An "Acquired Surrogate" (or "Artifical" or "System Generated") key is NOT derived
                        from data eg. Autonumber
                        <ul>
                            <li>eg. ClientID 1234</li>
                            <li>eg. ClientID JSKDYF</li>
                            <li>eg. ReceiptID 1234</li>
                        </ul>
                    </li>
                    <li>A "Derived Surrogate" (or "User Provided") key is indirectly derived from data eg.
                        Autonumber
                        <ul>
                            <li>eg. ClientID SSW (for SSW)</li>
                            <li>eg. EmpID AJC (for Adam Jon Cogan)</li>
                            <li>eg. ProdID CA&nbsp;(for Code Auditor)</li>
                        </ul>
                    </li>
                    <li>A "GUID" key automatically generated by SQL Server </li>
                </ol>
                <p>
                    <b>The problems with Natural Keys:</b></p>
                <ul>
                    <li>Because they have a business meaning, if that meaning changes (eg. they change their
                        surname), then that value NEEDS to changed. Changing a value with data is a little
                        hard - but a lot easier with Cascade Update.</li>
                    <li>The main problem is that the key is large and combined and this needs to be used
                        in all joins</li>
                </ul>
                <p>
                    <b>The Problem with Acquired Surrogate Keys:</b></p>
                <ul>
                    <li>A surrogate key has no meaning to a user </li>
                    <li>It always requires a join when browsing a child table eg. The InvoiceDetail table</li>
                </ul>
                <p>
                    <b>The Problem with Derived Surrogate</b></p>
                <ul>
                    <li>The user needs to enter a unique value </li>
                    <li>Because they have a business meaning, if that meaning changes (eg. they change their
                        company name), then that value MAY NEED to changed. Changing a value with data is
                        a little hard - but a lot easier with Cascade Update </li>
                    <li>More likely to have a problem with Merge Replication</li>
                </ul>
                <p>
                    <b>The Problem with GUID key</b></p>
                <p>
                    We like GUID keys. However, GUID generation produces essentially random numbers
                    which cannot realistically be used as primary keys since new rows are inserted into
                    the table at random positions leading to extremely slow inserts as the table grows
                    to even a moderate size. Inserting into the middle of a table with clustered index,
                    rather than appending to the end can potentially cause the database to have to move
                    large portions of the data to accommodate space for the insert. This can be very
                    slow.</p>
                <p>
                    <b>Recommendations</b></p>
                <ol>
                    <li>We dont use Natural keys ever </li>
                    <li>We use Acquired Surrogate for some tables
                        <ul>
                            <li>eg. Invoice table</li>
                            <li>eg. Receipt table</li>
                        </ul>
                    </li>
                    <li>a combination of Acquired Surrogate and Derived Surrogate&nbsp;for other tables
                        <ul>
                            <li>eg. Customer table</li>
                            <li>eg. Employee table</li>
                            <li>eg. Product table</li>
                        </ul>
                        <p>
                            When we say combination because if the user doesn't enter a value then we put a
                            random value in (by a middle tier function, so it works with Access or SQL). eg.
                            ClientID JSKDYF
                        </p>
                        <p>
                            The user can then change the value to anything else and we validate it is not used,
                            and then perform a cascade update - or if it is more then 3 levels deep we execute
                            a stored proc. Unfortunately this is a complicated proc that cycles through all
                            related tables and performs an UPDATE. Here is an <a target="_BLANK" href="/ssw/KB/CodeBase/04SQLServer/A-RenamePrimaryKey-RD.txt">
                                example</a>
                        </p>
                        <p>
                            The Derived Surrogate has the benefit being easy for people to remember and can
                            be used in the interface or even the query string
                        </p>
                    </li>
                </ol>
                <p>
                    Over the years experience has lead me to the opinion that the natural vs surrogate
                    key argument comes down to a style issue. If a client or employer has a standard
                    one way or another, fine use it. If not, use whichever you method you prefer, recognizing
                    that there may be some annoyances you face down the road. But don't let somebody
                    criticize you because your style doesn't fit his preconceived notions.
                </p>
                <p>
                    <b>Links </b>
                </p>
                <ul>
                    <li><a target="_BLANK" href="/ssw/Redirect/SQLServer/dbpdSQLSurrogateKey.htm">The Case
                        for the Surrogate Key</a>
                        <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17"
                            height="11" /></li>
                    <li><a target="_BLANK" href="/ssw/Redirect/SQLServer/BuilderSQLServerIntelligentkeys.htm">
                        Intelligent Keys Aren't That Dumb</a>
                        <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17"
                            height="11" /></li>
                </ul>
                <br />
                <br />
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox204" runat="server" WebsiteRuleID="204">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="MaxRowSize"></a>Maximum row size for a table</h2>
                <p>
                    A tables&#39; maximum row size should be less than the size of a single SQL Server
                    data page (8060 bytes). Otherwise, data entry forms can give errors is not validated
                    correctly.
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule.
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox205" runat="server" WebsiteRuleID="205">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="PrimaryKey"></a>Do you create primary key on your tables?</h2>
                <p>
                    When you specify a PRIMARY KEY constraint for a table, SQL Server enforces data
                    uniqueness by creating a unique index for the primary key columns. This index also
                    permits fast access to data when the primary key is used in queries.
                    <br />
                    Although, strictly speaking, the primary key is not essential you can update tables
                    in SQL Enterprise Manager without it - we recommend all tables have a primary key
                    (except tables that have a high volume of continuous transactions). Especially,
                    when you have a client like Access, it would help you to avoid the problems.
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox206" runat="server" WebsiteRuleID="206">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="Clustered"></a>Do you create clustered index on your tables?</h2>
                <p>
                    You're allowed one clustered index per table, so unless you are never going to query
                    a table, you may as well choose a field to be part of a clustered index. Basically,
                    <br />
                    1) Every table should have a clustered index;<br />
                    2) The clustered index should be a unique clustered index where possible;<br />
                    3) The clustered index should be on a single column where possible;
                </p>
                <p>
                    So how do you choose the right field? Depending on the usage pattern of a table,
                    clustered indices should be created. If sets of related records are regularly retrieved
                    from a table in an application, a clustered index could dramatically improve performance.
                </p>
                <p>
                    For example, in an Order to OrderDetails relationship with OrderID as the joining
                    key, items in an order are regularly retrieved in a bundle. A clustered index on
                    the OrderID column in OrderDetails table will improve the performance of the application
                    significantly.
                </p>
                <p>
                    Another example, if a table is frequently used for reporting, and a date range is
                    used to define the time scope of the report, a clustered index on the date column
                    is suitable. In more technical terms, if queries such as
                </p>
                <pre>SELECT * FROM ReportTable WHERE ItemDate BETWEEN 1/1/2003 AND 1/2/2003</pre>
                is executed frequently, ItemDate is a good candidate column for a clustered index.
                <a href="/ssw/KB/KB.asp?KBID=Q833699">[more information on Clustered Indexes]</a>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to create a clustered index on the columns selected in the wizard
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox207" runat="server" WebsiteRuleID="207">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="DateTime">Use smalldatetime datatype, where possible, instead of datetime datatype</a></h2>
                <p>
                    Most applications do not require the range and precision offered by the DateTime
                    data type. When was the last time you needed to enter an order past the year of
                    2079? So you end up with better data integrity. Most business applications never
                    need dates outside the range of 1900-2079.
                </p>
                <p>
                    More Information:<br />
                    In addition (I don't really care about this) but I get a smaller database.
                    <br />
                    DateTime type takes up 8 bytes. It can store dates ranging from January 1, 1753,
                    to December 31, 9999, with time values rounded to increments of .000, .003, or .007
                    milliseconds.
                </p>
                <p>
                    A SmallDateTime type takes up only 4 bytes, as a consequence, it can only store
                    dates ranging from January 1, 1900, through June 6, 2079, with accuracy to the minute.
                    With a million records each with two date fields, you could save 8MB of storage
                    space. More space could actually be saved if you have indices on those columns.So
                    that is about 1 cent worth today :-)
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to change the datatype of datetime columns to smalldatetime
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox208" runat="server" WebsiteRuleID="208">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="RowGuid"></a>Do not use indexes on RowGuid column</h2>
                <p>
                    RowGuids (uniqueidentifier) are large fields (16 bytes) and are basically going
                    to ALWAYS be unique.
                    <br />
                    <br />
                    SQL Server adds a RowGUID column to all tables if you are using Merge Replication
                    (but doesn't add an index).<br />
                    <br />
                    RowGuids in general slow things down. Some people may consider using a RowGuid as
                    their primary key. This is a bad idea because the index is going to be quite slow....
                    you are searching a large field. It goes without saying, NEVER have clustered index
                    on a RowGuid column.<br />
                    <br />
                    Another little annoyance with RowGuids is when you are searching for one. You can't
                    use &gt; or &lt; on a RowGuid column.<br />
                    <br />
                    <b>Note:</b> There are not many cases where a RowGuid should have an index on it.
                    (Exception SSW SQL Total Compare which is a tool that compares data is in sync via
                    rowguids and this makes it lots faster).
                    <br />
                    <br />
                    Be aware that SQL server adds this column when you perform merge replication. There
                    are not many cases where this should have an index on it. An exception is if you
                    are using our utility <a href="/ssw/SQLTotalCompare/">SQL Total Compare</a>
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to drop any indexes on rowguid columns
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox209" runat="server" WebsiteRuleID="209">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="Timestamp"></a>Do you have a timestamp column?</h2>
                <p>
                    The SQL Server timestamp data type has nothing to do with times or dates. SQL Server
                    timestamps are binary numbers that indicate the relative sequence in which data
                    modifications took place in a database.
                </p>
                <p>
                    All tables should have a timestamp column to aid concurrency checking. A timestamp
                    improves update performance because only one column needs to be checked when performing
                    a concurrency check (instead of checking all columns in a table for changes).</p>
                <p>
                    Be aware that when replicating with a SQL Server CE Pocket PC device using SQL server,
                    a timestamp column is added automatically.
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to add a timestamp column to tables that do not have a timestamp column
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox210" runat="server" WebsiteRuleID="210">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="FillFactor"></a>Use FillFactor of 90% for indexes and constraints</h2>
                <p>
                    Indexes should generally have a fillfactor of 90%. If the amount of data stored
                    in the database does not prohibit rebuilding indexes, a fillfactor of 90% should
                    be maintained to increase performance of inserts.
                </p>
                <p>
                    A table that expects a lot of insert operations could use a lower fillfactor.
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to change FillFactor to 90% for indexes and constraints
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox211" runat="server" WebsiteRuleID="211">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="TableNameLength"></a>Do not use table names longer than 24 characters</h2>
                <p>
                    If a SQL Server table name is longer than 24 characters and is linked to an Access
                    front-end, characters after the 24th will be truncated <a href="/ssw/KB/KB.aspx?KBID=Q932378">
                        [more...]</a>
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule.
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox212" runat="server" WebsiteRuleID="212">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="RequiredTables"></a>Do you always have version tracking tables?</h2>
                <p>
                    We always use two tables for tracking versioning information:<br />
                </p>
                <ul>
                    <li>_zsDataVersion tracks the schema changes, and which update script we are up to.
                        This helps tremendously in determining which version of the scripts are still required
                        between development, test, and production databases.</li>
                    <li>_zsVersionLatest tracks which version the front-end client should be. This allows
                        us to give a warning to (or even deny) users who are connecting to the database
                        while not using the right version of the front-end client.</li>
                </ul>
                <p>
                    Please see "<a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/DoYouStopDealingWithDataAndSchema.aspx">Is a Back-end structural
                        change going to be a hassle?</a>" on our Rules to Successful Projects.</p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox213" runat="server" WebsiteRuleID="213">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="DenormalizedFields"></a>Do you validate your denormalized fields correctly?</h2>
                <p>
                    90% of the databases that SSW works with make use of denormalized fields. We believe
                    this is with good reason. However, several precautions should be taken to ensure
                    that the data held within these fields is reliable. This is particularly the case
                    several applications are updating your denormalized data. To illustrate, let's say
                    that we want to show all Customers with a calculated field totalling their order
                    amount (ie Customer.OrderTotal).
                </p>
                <p>
                    With this example in mind, the main reasons we use denormalized fields are:
                </p>
                <ul>
                    <li>reducing development complexity. A denormalized field can mean that all SELECT queries
                        in the database are simpler. Power users find it easier to use for reporting purposes
                        - without the need for a cube. In our example, we would not need a large view to
                        retrieve the data (as below).
                        <pre>SELECT Customer.CustomerID, SUM(SalesOrderDetail.OrderQty * (SalesOrderDetail.UnitPrice
- SalesOrderDetail.UnitPriceDiscount)) AS DetailTotal, Customer.SalesPersonID, Customer.TerritoryID,
Customer.AccountNumber, Customer.CustomerType, Customer.ModifiedDate, Customer.rowguid
FROM Customer INNER JOIN SalesOrderHeader ON Customer.CustomerID = SalesOrderHeader.CustomerID
INNER JOIN SalesOrderDetail ON SalesOrderHeader.SalesOrderID = SalesOrderDetail.SalesOrderID
GROUP BY Customer.CustomerID, Customer.SalesPersonID, Customer.TerritoryID, Customer.AccountNumber,
Customer.CustomerType, Customer.ModifiedDate,Customer.rowguid ORDER BY Customer.CustomerID</pre>
                        <span class="Caption">Figure: A view to get customer totals when no denormalized fields
                            are used</span>
                        <p>
                            If we had a denormalized field, the user or developer would simply have run the
                            following query:
                        </p>
                        <pre>SELECT Customer.CustomerID, Customer.OrderTotal 
AS DetailTotal 
FROM Customer 
ORDER BY Customer.CustomerID
				   </pre>
                        <span class="Caption">Figure: Queries are much simpler with denormalized fields</span>
                        <p>
                            Note that this is not a particularly complicated example. However, you can see why
                            it can simplify development greatly when working with a large number of tables</p>
                    </li>
                    <li>Performance is better for read-intensive reports - particularly when reporting on
                        data with a cube</li>
                    <li>when there a multiple tables in a SQL Server view, they can not be updated in one
                        hit - they must be updated one table at a time</li>
                    <li>It is a built-in validation device. For example, if records are accidentally deleted
                        directly in the database, there is is still a validation check for the correct totals.
                        <!--SSW Code Auditor - Ignore next line(HTML)-->
                        The value of this is mitigated when there is a full audit log on the database</li>
                </ul>
                <p>
                    However, there are reasons against using denormalized fields
                </p>
                <ul>
                    <li>they have to be maintained - and can potentially get out of synch. This can makes
                        them unreliable - particularly if several applications are incorrectly updating
                        the denormalized fields. UPDATE, INSERT, DELETEs are more complicated as they have
                        to update the denormalized fields</li>
                    <li>they can be seen as an unneccessary waste of space</li>
                </ul>
                <p>
                    All in all, we choose to still use denormalized fields because they can save development
                    time. We do this with some provisos. In particular, they must be validated correctly
                    to ensure the integrity of the data.
                </p>
                <p>
                    Here is how we ensure that this data is validated:
                </p>
                <ol>
                    <li>Change the description on any denormalized fields to include ";Denormalized" in
                        the description - ";Denormalized: Sum(OrderTotal) FROM Orders" in description in
                        Enterprise Manager</li>
                    <li>Create a view that lists all the denormalized fields in the database - based on
                        the decription field.
                        <pre>CREATE VIEW dbo.vwValidateDenormalizedFields
AS
SELECT OBJECT_NAME(id) AS TableName, COL_NAME(id, smallid) AS ColumnName,
CAST([value] AS VARCHAR(8000)) AS Description,
'procValidate_' + OBJECT_NAME(id) + '_' + COL_NAME(id, smallid) as
ValidationProcedureName
FROM dbo.sysproperties
WHERE (name = 'MS_Description') AND (CAST([value] AS VARCHAR(8000))
LIKE '%;Denormalized:%')</pre>
                        <span class="Caption">Figure: Standard view for validation of denormalized fields validators</span>
                    </li>
                    <li>Create a stored procedure (based on the above view) that validates whether all denormalized
                        fields have a stored procedure that validates the data within them
                        <pre>CREATE PROCEDURE procValidateDenormalizedFieldValidators AS
--Checks whether there is a validator for the denormalized field (DDK 6/6/2005)
SELECT ValidationProcedureName as MissingValidationProcedureName 
FROM 
vwValidateDenormalizedFields
WHERE
ValidationProcedureName
NOT IN
(
SELECT 
ValidationProcedureName
FROM 
vwValidateDenormalizedFields 
LEFT JOIN 
sysobjects 
ON vwValidateDenormalizedFields.ValidationProcedureName =OBJECT_NAME(sysobjects.id)
WHERE id IS NOT NULL
                </pre>
                        <span class="Caption">Figure: Standard stored procedure for validation of denormalized
                            fields validators</span> </li>
                </ol>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox214" runat="server" WebsiteRuleID="214">
                </ssw:SQLAuditorVoteBox><br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSQLServerSchemaDeployment/Pages/DoYouCheckYourDenormalizedFieldIsStillThereWithprocValidate.aspx">
                    http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSQLServerSchemaDeployment/Pages/DoYouCheckYourDenormalizedFieldIsStillThereWithprocValidate.aspx
                </a></font></li>
            <li><a name="userschema"></a>
                <h2>
                    Do you avoid using user-schema separation?</h2>
                <p>
                    User-schema separation is a new feature introduced in SQL 2005.</p>
                In SQL 2000
                <ul>
                    <li>All objects are owned by users</li>
                    <li>If a user is deleted, all these objects must be deleted or have the owner reassigned</li>
                    <li>In script the naming convention is databaseName.ownerName.objectName</li>
                    <li>You need to update all scripts when a user changes.</li>
                </ul>
                <p>
                    User-schema separation solves this problem by adding another level of naming, and
                    shifting ownership of database objects to the schema, not the user. So, is it worth
                    doing? Unless you are working with a very large database (100+ tables), the answer
                    is "no". Most smaller databases have all objects with owner "dbo", which is fine
                    in most cases.</p>
                <dl cass="badImage">
                    <dt>
                        <img border="0" src="Images/SQLDatabases_UserSchema_Bad.gif" alt="User schema (Bad)"
                            width="293" height="472" /></dt><dd>Figure: AdventureWorks using user schema - instead,
                                keep it simple and avoid using user schema unnecessarily</dd></dl>
                <dl cass="goodImage">
                    <dt>
                        <img border="0" src="Images/SQLDatabases_UserSchema_Good.gif" alt="Avoid user schema"
                            width="299" height="430" /></dt><dd>Figure: Adventure works with user schema cleaned
                                out (Good). Much simpler and more readable</dd></dl>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox215" runat="server" WebsiteRuleID="215">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li><a name="triggersdenormalized"></a>
                <h2>
                    Do you use triggers for denormalized fields?</h2>
                <p>
                    I believe that de-normalised fields are not a bad thing. When used properly and
                    sparingly, they can actually improve your application's performance. As an example:
                </p>
                <ul>
                    <li>I have an Orders table containing one record per order</li>
                    <li>I also have an OrderItems table which contains line items linked to the main OrderID,
                        as well as subtotals for each line item</li>
                    <li>In my front end I have a report showing the total for each order</li>
                </ul>
                To generate this report, I can either
                <ol>
                    <li>Calculate the Order total by summing up every single line item for the selected
                        Order every time the report is loaded, or</li>
                    <li>Store the Order subtotal as a de-normalised field in the Orders table which gets
                        updated using trigger</li>
                </ol>
                The second option will save me an expensive JOIN query each time because I can just
                tack the denormalised field onto the end of my SELECT query.
                <ol>
                    <li>Code: Alter Orders table
                        <pre>ALTER TABLE Orders
ADD SumOfOrderItems money NULL
				</pre>
                    </li>
                    <li>Code: Insert trigger
                        <pre>Alter Trigger tri_SumOfOrderItems
On dbo.OrderItems
For Insert
AS
DECLARE @OrderID varchar (5)
SELECT @OrderID = OrderID from inserted

UPDATE Orders
SET Orders.SumOfOrderItems = Orders.SumOfOrderItems + 
(SELECT isnull(SUM(ItemValue),0) FROM inserted WHERE inserted.OrderID = Orders.OrderID)
WHERE Orders.OrderID = @OrderID
				</pre>
                    </li>
                    <li>Code: Update trigger
                        <pre>Alter Trigger tru_SumOfOrderItems
On dbo.OrderItems
For Update
AS
DECLARE @OrderID varchar (5)
SELECT @OrderID = OrderID from deleted
--Could have used inserted table

UPDATE Orders
SET Orders.SumOfOrderItems = Orders.SumOfOrderItems
+ (SELECT isnull(SUM(ItemValue),0) FROM inserted WHERE inserted.OrderID = Orders.OrderID)
- (SELECT isnull(SUM(ItemValue),0) FROM deleted WHERE deleted.OrderID = Orders.OrderID) 
WHERE Orders.OrderID = @OrderID
</pre>
                    </li>
                    <li>Code: Delete trigger
                        <pre>Alter Trigger trd_SumOfOrderItems
On dbo.OrderItems
For Delete
AS
DECLARE @OrderID varchar (5)
SELECT @OrderID = OrderID FROM deleted

UPDATE Orders
SET Orders.SumOfOrderItems = Orders.SumOfOrderItems - 
	(SELECT isnull(SUM(ItemValue),0) FROM deleted WHERE deleted.OrderID = Orders.OrderID)
WHERE Orders.OrderID = @OrderID
</pre>
                    </li>
                    <li>Code: Maintenance stored procedure
                        <pre>--Stored Procedure for Maintenance
Alter Procedure dt_Maintenance_SumOfItemValue
As
UPDATE Orders
SET Orders.SumOfOrderItems = Isnull((SELECT SUM (ItemValue) FROM OrderItems WHERE OrderItems.OrderID = Orders.OrderID),0)
</pre>
                    </li>
                </ol>
                <br />
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox216" runat="server" WebsiteRuleID="216">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="consistentcolumn"></a>Do you create a consistent primary key column on
                    your tables?</h2>
                <p>
                    Make sure you created a consistent primary key column named [TableName]+"ID" on
                    your tables.<br />
                </p>
                <dl class="goodImage">
                    <dt>
                        <pre>
                                    Employee.EmployeeID</pre>
                    </dt>
                    <dd>
                        Figure: good example.</dd></dl>
                <dl class="badImage">
                    <dt>
                        <pre>
                                    Employee.ID, Employee.Employee_Code, Employee.Employee</pre>
                    </dt>
                    <dd>
                        Figure: bad example.</dd></dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule.
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox217" runat="server" WebsiteRuleID="217">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li><a name="LookupTable"></a>
                <h2>
                    Do you use separate lookup tables rather than one large lookup table for your lookup
                    data?</h2>
                <p style="font-size: small">
                    <b>Advantage: Simplifies ORM Mapping</b></p>
                <p>
                    We prefer multiple lookup tables so they make more sense in ORM tools. E.g. you
                    could have either:<br />
                </p>
                <p>
                    1. OrderType
                </p>
                Or
                <br />
                <p>
                    2. LookupTable
                </p>
                <p>
                    But when you are obtaining the OrderType for an order, you would have
                </p>
                <p>
                    Either
                </p>
                <p>
                    Order.OrderType.OrderTypeID (Good)
                </p>
                <p>
                    Or
                </p>
                <p>
                    <b>Order.LookupTable.Value (Not great as it is not clear what the nature of the lookup
                        table is). </b>If you have multiple lookups to the one table, you would need
                    to do your mappings manually rather than using a tool.
                    <br />
                </p>
                <p style="font-size: small">
                    <b>Advantage: Maintains Complete Referential Integrity without the need for triggers
                        Advantage: Maintains Complete Referential Integrity without the need for triggers</b></p>
                <p>
                    The other advantage of having separate lookup tables rather than one large one is
                    that referential integrity is maintained.</p>
                <p>
                    One issue with having one large table is that you can still enter invalid values
                    in the Order.OrderTypeID column. E.g. if Order TypeIDs range from 1-3 and CustomerTypeIDs
                    range from 4 to 10.
                </p>
                <p>
                    If I put OrderTypeID = 10, then I will not get referential integrity errors (even
                    though I should) because I have entered a value which exists in the lookup table
                    (even though it is for the wrong type).
                </p>
                <p>
                    If I want to enforce referential integrity so I can only enter the correct type
                    for my lookup table, then I would need to resort to triggers or a (fallible) coded
                    data tier.</p>
                <p style="font-size: small">
                    <b>Advantage: You can add new columns specific to each lookup table</b></p>
                <p>
                    For example, if a Lookup table (e.g. CustomerType) has an associated value (e.g.
                    the field MaximumDebtAmount), we don't need to add a field that is irrelevant to
                    all the other lookup tables. We can just add it to the individual lookup table.</p>
                <p style="font-size: small">
                    <b>Disadvantage: Multiple tables make maintenance slightly more difficult, especially
                        when making changes directly via Management Studio.</b></p>
                <p>
                    It is simpler to Administer one table than multiple tables, but you can reduce this
                    problem with a good Generic Administration Page UI.
                </p>
            </li>
            <li><a name="NormalizedFields"></a>
                <h2>
                    Do you avoid de-normalized fields with computed columns?</h2>
                <p>
                    We should always use computed columns (in SQL Server 2005 and later they can be
                    persisted) to avoid these types of denormalized columns.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/NormalizedFields_Bad.jpg" />
                    </dt>
                    <dd>
                        Figure: bad example.</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/NormalizedFields_Good.jpg" />
                    </dt>
                    <dd>
                        Figure: good example.</dd></dl>
                <p>
                    Computed columns has some limitations - they cannot access fields in other tables,
                    or other computed fields in the current table.</p>
                <p>
                    We use user defined functions (UDF) to encapsulate our logic in reusable functions,
                    this allows one computed column to use a function to call another function.
                </p>
                <p>
                    Use the suffix Computed to clearly distinguish that this field is a computed field.
                </p>
                <dl class="image">
                    <dt>
                        <pre>
                                ALTER FUNCTION [dbo].[udfEmpTime_TimeTotalComputed]
<br />
                                (
<br />
                                      @TimeStart as DateTime,
<br />
                                      @TimeEnd as DateTime   

<br />
                                )
<br />
                                RETURNS DECIMAL(8,6)
<br />
                                AS
<br />
                                BEGIN
<br />
                                      -- This function returns the time difference in hours - decimal(8,6)
<br />
                                      RETURN (round(isnull(CONVERT([decimal](8,6),@TimeEnd - @TimeStart,(0))*(24),(0)),(2)))
<br />
                                END
                        </pre>
                    </dt>
                    <dd>
                        Figure: This is the user defined function.</dd></dl>
                <dl class="image">
                    <dt>
                        <img src="Images/NormalizedFieldsDefine.jpg" />
                    </dt>
                    <dd>
                        Figure: Setting up computed column in table designer.</dd></dl>
            </li>
            <li><a name="ZSPrefix"></a>
                <h2>
                    Do you add zs prefix to table name?</h2>
                <p>
                    Any type of table in a database where that does not contain application data should
                    be called zs. So when the other application (e.g. SSW SQL Deploy) or the programmer
                    populates the table then it should be called zs (e.g. zsDate - the program populates
                    it, zsVersion - the programmer populates it).
                </p>
            </li>
        </ol>
        <h2>
            <a name="Views"></a>Views Rules</h2>
        <ol start="300">
            <li>
                <h2>
                    <a name="NoViewsRedundantObjects"></a>Don't have views as redundant objects</h2>
                <p>
                    Don't have views as redundant objects. e.g. vwCustomers as SELECT * FROM Customers.
                    This is unnecessary. Instead Views should be generally used for security.
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox300" runat="server" WebsiteRuleID="300">
                </ssw:SQLAuditorVoteBox><br />
            </li>
        </ol>
        <h2>
            <a name="StoredProc"></a>Stored Procedure Rules</h2>
        <ol start="400">
            <li>
                <h2>
                    <a name="IncludeStatus"></a>Do your stored procedures return a value indicating
                    the status?</h2>
                <p>
                    Make sure your stored procedures always return a value indicating the status. All
                    stored procedures should return the error number (if an error) or a 0 to indicate
                    no errors (ie success).
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox400" runat="server" WebsiteRuleID="400">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="StandardizeReturn"></a>Do you standardize on the return values of stored
                    procedures for success and failures?</h2>
                <p>
                    Standardize on the return values of stored procedures for success and failures.
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox401" runat="server" WebsiteRuleID="401">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="OUTPUTparameters"></a>If you need to return the value of variables, do
                    you use OUTPUT parameters?</h2>
                <p>
                    The RETURN statement is meant for returning the execution status only, but not data.
                    If you need to return value of variables, use OUTPUT parameters. There is a compelling
                    reason for this - if you use return values rather than output values to return data,
                    money values that you return will silently be truncated.
                    <br />
                    <br />
                    For more information, see the following <a href="/ssw/KB/KB.aspx?KBID=Q466955">KB article</a><br />
                    &nbsp;</p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox402" runat="server" WebsiteRuleID="402">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="globalvariableERROR"></a>Do you check the global variable @@ERROR after
                    executing a data manipulation statement?</h2>
                <p>
                    Always check the global variable @@ERROR immediately after executing a data manipulation
                    statement (like INSERT/UPDATE/DELETE), so that you can rollback the transaction
                    in case of an error (@@ERROR will be greater than 0 in case of an error). This is
                    important, because, by default, SQL Server will not rollback all the previous changes
                    within a transaction if a particular statement fails. This behaviour can be changed
                    by executing SET XACT_ABORT ON. The @@ROWCOUNT variable also plays an important
                    role in determining how many rows were affected by a previous data manipulation
                    (also, retrieval) statement, and based on that you could choose to commit or rollback
                    a particular transaction.
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox403" runat="server" WebsiteRuleID="403">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="scopeidentity"></a>Do you use SCOPE_IDENTITY() to get the most recent row
                    identity?</h2>
                <p>
                    When inserting a row in a stored procedure, always use SCOPE_IDENTITY() if you want
                    to get the ID of the row that was just inserted. A common error is to use @@IDENTITY,
                    which returns the most recently created identity for your current connection, not
                    necessarily the identity for the recently added row in a table. You could have a
                    situation where there is a trigger that inserts a new record in a Logs Table, for
                    example, when your Stored Procedure or INSERT SQL Statement inserts a record in
                    the Orders Table. If you use @@IDENTITY to retrieve the identity of the new order,
                    you will actually get the identity of the record added into the Log Table and not
                    the Orders Table, which will create a nasty bug in your data access layer. To avoid
                    the potential problems associated with someone adding a trigger later on, always
                    use SCOPE_IDENTITY() to return the identity of the recently added row in your INSERT
                    SQL Statement or Stored Procedure.</p>
                <p>
                    Behold this example from SQL Server Books online.</p>
                <pre>USE tempdb
GO
CREATE TABLE TZ (
   Z_id  int IDENTITY(1,1)PRIMARY KEY,
   Z_name varchar(20) NOT NULL)

INSERT TZ
   VALUES ('Lisa')
INSERT TZ
   VALUES ('Mike')
INSERT TZ
   VALUES ('Carla')

SELECT * FROM TZ

--Result set: This is how table TZ looks.
Z_id   Z_name
-------------
1      Lisa
2      Mike
3      Carla

CREATE TABLE TY (
   Y_id  int IDENTITY(100,5)PRIMARY KEY,
   Y_name varchar(20) NULL)

INSERT TY (Y_name)
   VALUES ('boathouse')
INSERT TY (Y_name)
   VALUES ('rocks')
INSERT TY (Y_name)
   VALUES ('elevator')

SELECT * FROM TY
--Result set: This is how TY looks:
Y_id  Y_name
---------------
100   boathouse
105   rocks
110   elevator

/*Create the trigger that inserts a row in table TY 
when a row is inserted in table TZ*/
CREATE TRIGGER Ztrig
ON TZ
FOR INSERT AS 
   BEGIN
   INSERT TY VALUES ('')
   END

/*FIRE the trigger and determine what identity values you obtain 
with the @@IDENTITY and SCOPE_IDENTITY functions.*/
INSERT TZ VALUES ('Rosalie')

SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY]
GO
SELECT   @@IDENTITY AS [@@IDENTITY]
GO
</pre>
                <p>
                    Notice the difference in the result sets. As you can see, it's crucial that you
                    understand the difference between the 2 commands in order to get the correct ID
                    of the row you just inserted.</p>
                <pre>SCOPE_IDENTITY
4
/*SCOPE_IDENTITY returned the last identity value in the same scope. This was the insert on table TZ.*/

@@IDENTITY
115
/*@@IDENTITY returned the last identity value inserted to TY by the trigger. This fired because of an earlier insert on TZ.*/
</pre>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox404" runat="server" WebsiteRuleID="404">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="SETNOCOUNTONNOCOUNTOFF"></a>Do you SET NOCOUNT ON for production and NOCOUNT
                    OFF off for development/debugging purposes?</h2>
                <p>
                    You should use SET NOCOUNT ON for production and NOCOUNT OFF off for development/debugging
                    purposes (i.e. when you want the rowcounts to display as the messages from your
                    T-SQL).
                </p>
                <p>
                    According to SQL Server Books Online:<br />
                    "For stored procedures that contain several statements that do not return much actual
                    data, this can provide a significant performance boost because network traffic is
                    greatly reduced."</p>
                <p>
                    Example: Procedure that returns a scalar value (ClientID generated by an insert
                    statement) should use OUTPUT keyword (not RETURN) to pass back data. This is how
                    you should return a generated ClientID from the procedure, and also return a status
                    value</p>
                <p>
                    <pre>CREATE PROCEDURE procClientInsert
/*
'---------------------------------------------- 
' Copyright 2001 SSW 
' www.ssw.com.au All Rights Reserved.
' VERSION AUTHOR  DATE COMMENT  
' 1.0     DDK      17/12/2001 
'
'Calling example

'DECLARE @pintClientID int
'DECLARE @intReturnValue int
'exec @intReturnValue = procClientInsert 'TEST Entry', 
@pintClientID OUTPUT
'PRINT @pintClientID
'PRINT  @intReturnValue
'---------------------------------------------- 
*/

@pstrCoName varchar (254),
@pintClientID int OUTPUT

AS

--IF ONE THING FAILS, ROLLBACK
SET XACT_ABORT ON
--THE COUNT WILL NOT NORMALLY DISPLAY IN AN APPLICATION IN PRODUCTION. 
--GET RID OF IT BECAUSE IT IS EXTRA TRAFFIC, AND CAN CAUSE 
PROBLEMS WITH SOME CLIENTS
SET NOCOUNT ON

--Generate a random number
SET @pintClientID = (SELECT CAST(RAND() * 100000000 AS int))

INSERT INTO Client (ClientID, CoName) VALUES (@pintClientID , 
@pstrCoName)

SET XACT_ABORT OFF

IF @@ROWCOUNT = 1 
            RETURN 0 -- SUCCESS
ELSE
    BEGIN
            IF @@ERROR=0 
                RETURN 1  -- FAILURE 
            ELSE
                RETURN @@ERROR  -- FAILURE 
    END

SET NOCOUNT OFF
</pre>
                </p>
                <p>
                    This procedure will display 0 or the error to indicate success or failure. You should
                    base you actions on this return code.</p>
                <p>
                    This separates return values from actual data so that other programmers know what
                    to expect.</p>
                <p>Note：<br />
                   If you are using SQL Server stored procedures to edit or delete data using a SqlDataAdapter, make sure that you do not use SET NOCOUNT ON in the stored procedure definition. This causes the rows affected count returned to be zero, which the DataAdapter interprets as a concurrency conflict. In this event, a DBConcurrencyException will be thrown.
                </p>
                <p>
                    <br />
                    <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox405" runat="server" WebsiteRuleID="405">
                    </ssw:SQLAuditorVoteBox><br />
                </p>

            </li>
            <li>
                <h2>
                    <a name="StoredProcsSimple"></a>Do you keep your Stored Procs simple?</h2>
                <p>
                    If you are using the .NET Framework, put validation and defaults in the middle tier.
                    The backend should have the required fields (Allow Nulls = False), but no complicated
                    constraints. The following are examples that work with the Products table (with
                    an added timestamp field called Concurrency) from Northwind.
                </p>
                <ol>
                    <li>Code: Select Procedure
                        <pre>ALTER PROCEDURE dbo.ProductSelect
@ProductID int
AS
SELECT ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock,
UnitsOnOrder, ReorderLevel, Discontinued, Concurrency
FROM Products
WHERE (ProductID= @ProductID)
                                        </pre>
                    </li>
                    <li>Code: Insert Procedure
                        <pre>ALTER PROCEDURE dbo.ProductInsert
@ProductName nvarchar(40),
@SupplierID int,
@CategoryID int,
@QuantityPerUnit nvarchar(20),
@UnitPrice money,
@UnitsInStock smallint,
@UnitsOnOrder smallint,
@ReorderLevel smallint,
@Discontinued bit
AS
INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice,
UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES (@ProductName, @SupplierID, @CategoryID, @QuantityPerUnit, @UnitPrice, @UnitsInStock,
@UnitsOnOrder, @ReorderLevel, @Discontinued, 1)
SELECT Scope_Identity() AS [SCOPE_IDENTITY]  --If table has identity column
--SELECT @@ROWCOUNT  --If table doesn't have identity column
-- Note: The middle tier must check the ROWCOUNT = 1</pre>
                    </li>
                    <li>Code: Update Procedure
                        <pre>ALTER PROCEDURE dbo.ProductUpdate 
@ProductID int, 
@ProductName nvarchar(40), 
@SupplierID int, 
@CategoryID int, 
@QuantityPerUnit nvarchar(20), 
@UnitPrice money, 
@UnitsInStock smallint, 
@UnitsOnOrder smallint, 
@ReorderLevel smallint, 
@Discontinued bit, 
@Concurrency timestamp 

UPDATE Products 
SET ProductName = @ProductName,
SupplierID = @SupplierID,
CategoryID = @CategoryID,
QuantityPerUnit = @QuantityPerUnit,
UnitPrice = @UnitPrice,
UnitsInStock = @UnitsInStock,
UnitsOnOrder = @UnitsOnOrder,
ReorderLevel = @ReorderLevel,
Discontinued = @Discontinued
 
WHERE (Concurrency = @Concurrency) AND (ProductID= @ProductID) --Note the double criteria to ensure concurrency 
SELECT @@ROWCOUNT 
 
-- Note: The middle tier must check the ROWCOUNT = 1</pre>
                    </li>
                    <li>Code: Delete Procedure
                        <pre>ALTER PROCEDURE dbo.ProductDelete 
@ProductID int, 
@Concurrency timestamp 
AS 
DELETE FROM Products 
WHERE (ProductID= @ProductID) AND (Concurrency = @Concurrency)
 
--Note the double criteria to ensure concurrency 
SELECT @@ROWCOUNT 
 
--Note: The middle tier must check the ROWCOUNT = 1</pre>
                    </li>
                </ol>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox406" runat="server" WebsiteRuleID="406">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="StoredProcsSystemPrefix"></a>Do not start user stored procedures with system
                    prefix "sp_" or "dt_"</h2>
                <p>
                    System stored procedures are created and stored in the master database and have
                    the sp_ prefix. System stored procedures can be executed from any database without
                    having to qualify the stored procedure name fully using the database name master.
                    It is strongly recommended that you do not create any stored procedures using sp_
                    as a prefix. SQL Server always looks for a stored procedure beginning with sp_ in
                    this order:
                </p>
                <ol>
                    <li>The stored procedure in the master database. </li>
                    <li>The stored procedure based on any qualifiers provided (database name or owner).
                    </li>
                    <li>The stored procedure using dbo as the owner, if one is not specified. </li>
                </ol>
                Therefore, although the user-created stored procedure prefixed with sp_ may exist
                in the current database, the master database is always checked first, even if the
                stored procedure is qualified with the database name.
                <p>
                    <strong>Important:</strong> If any user-created stored procedure has the same name
                    as a system stored procedure, the user-created stored procedure will never be executed.
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to replace user-defined stored procedures prefix of 'sp_' or 'dt_' with prefix defined
                            in Tools > Options
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox407" runat="server" WebsiteRuleID="407">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="StoredProcsStandardDesc"></a>Use company standard description in your stored
                    procedures</h2>
                <p>
                    All stored procedures Must Have Company Description.
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox408" runat="server" WebsiteRuleID="408">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="AvoidUsingStar"></a>Do you avoid using SELECT * when inserting data?</h2>
                <p>
                    Using a statement like "INSERT tableName SELECT * FROM otherTable", makes your stored
                    procedures vulnerable to failure. Once either of the two tables changs, your stored
                    procedure won't work. Not only that, when the inserting table has an identity column,
                    such a statement will cause an error - "An explicit value for the identity column
                    in table ParaRight can only be specified when a column list is used and IDENTITY_INSERT
                    is ON."
                </p>
                <dl class="badCode">
                    <dt>
                        <pre>
USE [ParaGreg]
GO
/****** Object:  StoredProcedure [dbo].[procMove]    Script Date: 08/08/2008 12:18:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[procMove]
@id AS Char,
@direction AS INT
AS
IF @direction = 0
BEGIN
      INSERT INTO ParaRight
      <span style='background-color: #FFFF00'>SELECT * FROM ParaLeft</span>
      WHERE ParaID = @id
      DELETE FROM ParaLeft
      WHERE ParaID = @id
END
ELSE IF @direction = 1
BEGIN
      INSERT INTO ParaLeft
      SELECT * FROM ParaRight
      WHERE ParaID = @id
      DELETE FROM ParaRight
      WHERE ParaID = @id
END

                
                </pre>
                    </dt>
                    <dd>
                        <b>Bad example:</b> Using SELECT * when inserting data. Besides, this stored procedure
                        should have an Else section to raise error when no condition is satisfied.</dd>
                </dl>
                <br />
                <dl class="goodCode">
                    <dt>
                        <pre>
USE [ParaGreg]
GO
/****** Object:  StoredProcedure [dbo].[procMove]    Script Date: 08/08/2008 12:18:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[procMove]
@id AS Char,
@direction AS INT
AS
IF @direction = 0
BEGIN
      INSERT INTO ParaRight
      <span style='background-color: #FFFF00'>SELECT Col1,Col2 FROM ParaLeft</span>
      WHERE ParaID = @id
      DELETE FROM ParaLeft
      WHERE ParaID = @id
END
ELSE IF @direction = 1
BEGIN
      INSERT INTO ParaLeft
      SELECT * FROM ParaRight
      WHERE ParaID = @id
      DELETE FROM ParaRight
      WHERE ParaID = @id
END
<span style='background-color: #FFFF00'>ELSE BEGIN PRINT "Please use a correct direction"
    END</span>

                
                </pre>
                    </dt>
                    <dd>
                        <b>Good example:</b> Using concrete columns instead of * and provide an Else section
                        to raise errors.</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="Transaction"></a>Do you use transactions for complicated stored procedures?</h2>
                <p>
                    A transaction means an atomic operation, it assures that all operations within the
                    transaction are successful, if not, the transaction will cancel all operations and
                    roll back to the original state of the database, that means no dirty data and mess
                    exists in the database, so if a stored procedure has many steps, and each step has
                    relation with other steps, it is strongly recommended that you encapsulate the procedure
                    in a transaction.
                </p>
                <dl class="badCode">
                    <dt>
                        <pre>
ALTER PROCEDURE [dbo].[procInit]
AS
    DELETE ParaLeft
    DELETE ParaRight
    INSERT INTO ParaLeft (ParaID)
    SELECT ParaID FROM Para
                </pre>
                    </dt>
                    <dd>
                        <b>Bad example:</b> No transaction here, if any of operations fail, the database
                        will only partially update, resulting in an unwanted result.</dd>
                </dl>
                <br />
                <dl class="goodCode">
                    <dt>
                        <pre>
ALTER PROCEDURE [dbo].[procInit]
AS
    <span style="background-color: #FFFF00">BEGIN TRANSACTION</span>
    
    DELETE ParaLeft
    DELETE ParaRight
    INSERT INTO ParaLeft (ParaID)
    SELECT ParaID FROM Para
    
    <span style="background-color: #FFFF00">COMMIT</span>
                </pre>
                    </dt>
                    <dd>
                        <b>Good example:</b> Using a transaction to assure that all operations within the
                        transaction will be successful, otherwise, the database will roll back to original
                        state.</dd>
                </dl>
            </li>

            <li><a name="Owner-prefix"></a>
                <h2>Do you know SQL stored procedure names should be prefixed with the owner?</h2>
                <p>Always specify the schema prefix when creating stored procedures. This way you know that it will always be dbo.procedure_name no matter who is logged in when it is created.</p>
                <p>There are 2 other benefits to including the schema prefix on all object references:</p>
                <ol>
                    <li>This prevents the database engine from checking for an object under the users schema first</li>
                    <li>Also avoids the issue where multiple plans are cached for the exact same statement/batch just because they were executed by users with different default schemas</li>
                </ol>
                <p>Aaron Bertrand agrees with this rule - <a href="http://sqlblog.com/blogs/aaron_bertrand/archive/2008/10/30/my-stored-procedure-best-practices-checklist.aspx">My stored procedure "best practices" checklist </a>.</p>
                <dl class="badCode">
                    <dt>
                        <pre>
CREATE PROCEDURE procCustomer_Update
   @CustomerID     INT,
  …..
BEGIN
                </pre>
                    </dt>
                    <dd>Figure: Bad example</dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        <pre>
CREATE PROCEDURE dbo.procCustomer_Update
   @CustomerID     INT,
  …..
BEGIN
                </pre>
                    </dt>
                    <dd>Figure: Good example</dd>
                </dl>

                <p class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</p>
            </li>

        </ol>
        <h2>
            <a name="Function"></a>Function Rules</h2>
        <ol start="500">
            <li>None to speak of at the moment<br />
            </li>
        </ol>
        <h2>
            <a name="Relationships"></a>Relationship Rules</h2>
        <ol start="600">
            <li>
                <h2>
                    <a name="ReferentialIntegrity">Turn on referential integrity in relationships</a></h2>
                <p>
                    Cascading referential integrity constraints allow you to define the actions SQL
                    Server takes when a user attempts to delete or update a key to which existing foreign
                    keys point. The REFERENCES clauses of the CREATE TABLE and ALTER TABLE statements
                    support ON DELETE and ON UPDATE clauses:
                </p>
                <ul>
                    <li>[ ON DELETE { CASCADE | NO ACTION } ] </li>
                    <li>[ ON UPDATE { CASCADE | NO ACTION } ] </li>
                </ul>
                NO ACTION is the default if ON DELETE or ON UPDATE is not specified.
                <p>
                    Relationships should always have referential integrity turned on. If you turned
                    it on after data has been added, you may have data in your database that violates
                    your referential integrity rules.
                    <table width="70%">
                        <tr>
                            <td>
                                <img src="Images/ReferentialIntegrityCheck.jpg" alt="Referential Integrity Check"
                                    border="0" width="401" height="507" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Figure: Recommended referential integrity constraints</b>
                            </td>
                        </tr>
                    </table>
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule.
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox600" runat="server" WebsiteRuleID="600">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="IncludeONUPDATECASCADE"></a>Use ON UPDATE CASCADE clause when creating
                    relationship</h2>
                <p>
                    The ON UPDATE CASCADE feature of SQL Server 2000 and above can save you time in
                    writing application and stored procedure code. We recommend that you take advantage
                    of it. It is also more efficient than using triggers to perform these updates.</p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to add the ON UPDATE CASCADE clause to relationships
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox60" runat="server" WebsiteRuleID="601">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="DontIncludeONDELETECASCADE">Do not use ON DELETE CASCADE clause when creating
                        relationship</a></h2>
                <p>
                    SQL Servers ON DELETE CASCADE functionality can be very dangerous. We recommend
                    not using it. Imagine someone deletes customer and the orders are deleted. If you
                    need to delete records in related tables, do it in code in the application as it
                    gives you more control.</p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to remove the ON DELETE CASCADE clause from relationships
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox602" runat="server" WebsiteRuleID="602">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="RelationshipsReplication">Use NOT FOR REPLICATION clause when creating relationship</a></h2>
                <p>
                    When NOT FOR REPLICATION is used with a Foreign Key relationship, the integrity
                    of the relationship is not checked while the Replication Agent is logged in and
                    performing replication operations. This allows changes to the data (such as cascading
                    updates) be propagated correctly.
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to add the NOT FOR REPLICATION clause to relationships
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox603" runat="server" WebsiteRuleID="603">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="MissingRelationships"></a>Do columns ending with 'ID' have FOREIGN KEY
                    constraints?</h2>
                <p>
                    <table width="70%">
                        <tr>
                            <td>
                                <img src="Images/NorthwindRelationships.jpg" alt="Northwind Relationships" border="1"
                                    width="552" height="318" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Figure: Missing relationships</b>
                            </td>
                        </tr>
                    </table>
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox604" runat="server" WebsiteRuleID="604">
                </ssw:SQLAuditorVoteBox><br />
            </li>
        </ol>
        <h2>
            <a name="GeneralRules"></a>General Rules</h2>
        <ol start="700">
            <li>
                <h2>
                    <a name="ObjectNameReservedWord"></a>Object name should not be a reserved word</h2>
                <p>
                    SQL Server reserves certain keywords for its exclusive use. It is not legal to include
                    the reserved keywords in a Transact-SQL statement in any location except that defined
                    by SQL Server. No objects in the database should be given a name that matches a
                    reserved keyword. If such a name exists, the object must always be referred to using
                    delimited identifiers. Although this method does allow for objects whose names are
                    reserved words, it is recommended that you do not name any database objects with
                    a name that is the same as a reserved word. In addition, the SQL-92 standard implemented
                    by Microsoft SQL Server defines a list of reserved keywords.
                </p>
                <p>
                    Avoid using SQL-92 reserved keywords for object names and identifiers, ie. User,
                    Count, Group, etc. They can be used if joined with other words.
                    <br />
                    <a href="/ssw/KB/KB.asp?KBID=Q931371">What are reserved words for SQL Server 2000?</a>
                    <br />
                    <a href="/ssw/KB/KB.asp?KBID=Q1620415">Why avoid reserved words and spaces in object
                        names?</a>
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to rename object names that represent reserved words
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox700" runat="server" WebsiteRuleID="700">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="ObjectNameHasSpaces"></a>Object name should not contain spaces</h2>
                <p>
                    Spaces should be avoided. If an object name contains a space, it can cause problems
                    later on for developers because the developer must remember to put the object name
                    inside square brackets when referencing it.
                    <br />
                    <a href="/ssw/KB/KB.asp?KBID=Q1620415">Why avoid reserved words and spaces in object
                        names?</a>
                </p>
                <p>
                    We aim to never have to use square brackets in any of our databases.</p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to remove spaces from object names
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox701" runat="server" WebsiteRuleID="701">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="ObjectNameUnsynchronized"></a>Do not use &quot;sp_rename&quot; to rename
                    objects like stored procedures, views and triggers</h2>
                <p>
                    Object name should be the same as name used in the object's script (e.g. CREATE
                    script for stored procedures, views and triggers). Inconsistency can happen when
                    object is renamed with sp_rename, but its script is not updated.
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to re-create objects that have mismatched names. The object name will be used as
                            the new name in CREATE script, not the name originally specified.
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox702" runat="server" WebsiteRuleID="702">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="NamingConventions"></a>Object name should follow your company Naming Conventions</h2>
                <ol>
                    <li><a href="/ssw/Standards/DeveloperSQLServer/SQLServerStandard_1_ObjectNaming.aspx">
                        SQL Server Object Naming Standard.aspx</a> SSW's Standard for naming SQL Server
                        Objects.</li>
                    <li><a href="/ssw/Standards/DeveloperSQLServer/SQLServerStandard_2_StoredProcedureNaming.aspx">
                        SQL Server Stored Procedure Naming Standard</a> SSW's Standard for naming Stored
                        Procedures.</li>
                    <li><a href="/ssw/Standards/DeveloperSQLServer/SQLServerStandard_4_IndexesNaming.aspx">
                        SQL Server Indexes Naming Standard</a> SSW's Standard for naming Indexes.</li>
                    <li><a href="/ssw/Standards/DeveloperSQLServer/SQLServerStandard_5_RelationshipNaming.aspx">
                        SQL Server Relationship Naming Standard</a> SSW's Standard for naming Relationships</li>
                    <li>Use decreasing generality for table names ie. Client and ClientInvoice, then ClientInvoiceDetail.</li>
                    <li>Don't use underscores, instead use upper and lower case ie. ClientInvoice is preferred
                        over Client_Invoice.</li>
                    <li>Table names should not use plurals ie. Client is preferred over Clients.</li>
                    <li>Generally don't use abbreviations. But there are a few words that are so commonly
                        used that they can be abbreviated. These are:
                        <ul>
                            <li>Quantity = Qty</li>
                            <li>Amount = Amt</li>
                            <li>Password = Pwd</li>
                        </ul>
                    </li>
                    <li>Prefix all Date fields with 'Date' ie. DateInvoiced. One extra use of this is you
                        can have generic code that enables a Date control on this field.</li>
                    <li>Suffix Percent fields with 'Pct' ie. SalesTaxPct.</li>
                    <li>Only use alphabet characters. ie. don't use AustraliaListA$. Avoid the following
                        characters in your object names in SQL Server. If you do not do this, you will need
                        to constantly identify those ill-named objects with bracketed or quoted identifiers
                        - otherwise, unintended bugs can arise. <a href="/ssw/KB/KB.asp?KBID=Q316015">What characters
                            and symbols should I avoid using when naming objects in Access and SQL Server databases</a></li>
                    <li>Don't use reserved words on their own. ie. User, Count, Group, etc. They can be
                        used if joined with other words. <a href="/ssw/KB/KB.asp?KBID=Q931371">What are reserved
                            words for SQL Server 2000?</a></li>
                </ol>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to append prefix to object names according with current Naming Convention. Refer
                            to 'Naming Conventions' tab in Tools>Options.
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox703" runat="server" WebsiteRuleID="703">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="ObjectOwnedByDbo"></a>Every object name should be owned by dbo</h2>
                <p>
                    The reason is that you avoid ownership chain problems. Where Mary owns an object,
                    Fred can read the object and then he creates a proc and he gives permission to Tom
                    to execute. But Tom cant because there is a product chain of ownership.
                </p>
                <dl class="goodImage">
                    <dt>
                        <pre>
                                    CREATE PROCEDURE [dbo].[Sales by Year]

<br />
                                        @Beginning_Date DateTime,

<br />
                                        @Ending_Date DateTime AS

<br />
                                    SELECT Orders.ShippedDate

<br />
                                          ,Orders.OrderID

<br />
                                          ,"vwOrderSubTotals".Subtotal

<br />
                                          ,DATENAME(yy,ShippedDate) AS Year

<br />
                                    FROM Orders

<br />
                                    INNER JOIN "vwOrderSubTotals"

<br />
                                        ON Orders.OrderID = "vwOrderSubTotals".OrderID

<br />
                                    WHERE Orders.ShippedDate Between @Beginning_Date And @Ending_Date

<br /></pre>
                    </dt>
                    <dd>
                        Figure: good example.
                    </dd>
                </dl>
                <dl class="badImage">
                    <dt>
                        <pre>
                                    CREATE PROCEDURE [Adam Cogan].[Sales by Year]

<br />
                                        @Beginning_Date DateTime,

<br />
                                        @Ending_Date DateTime AS

<br />
                                    SELECT Orders.ShippedDate

<br />
                                          ,Orders.OrderID

<br />
                                          ,"vwOrderSubTotals".Subtotal

<br />
                                          ,DATENAME(yy,ShippedDate) AS Year

<br />
                                    FROM Orders

<br />
                                    INNER JOIN "vwOrderSubTotals"

<br />
                                        ON Orders.OrderID = "vwOrderSubTotals".OrderID

<br />
                                    WHERE Orders.ShippedDate Between @Beginning_Date And @Ending_Date

<br /></pre>
                    </dt>
                    <dd>
                        Figure: bad example.
                    </dd>
                </dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor"
                    width="70%">
                    <tr>
                        <td>
                            <a href="/ssw/SQLAuditor">SQL Auditor</a> will check this rule and generate a script
                            to re-create objects that don't have owner dbo.
                        </td>
                    </tr>
                </table>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox704" runat="server" WebsiteRuleID="704">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="NamingConventionsDBServer"></a>Naming convention for use on database server
                    test and production</h2>
                <p>
                    Generally, every client should have a dev and a test database, so the dev database
                    need to have the postfix "Dev" and the test database need to have the postfix "Test"(E.g.
                    SSWCRMDev, SSWCRMTest). However, you don't need any postfix for production database.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadDBName.gif" alt="Database with bad names" /></dt>
                    <dd>
                        Figure: Database with bad names</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodDBName.gif" alt="Database with standard names" /></dt>
                    <dd>
                        Figure: Database with standard names</dd>
                </dl>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox705" runat="server" WebsiteRuleID="705">
                </ssw:SQLAuditorVoteBox><br />
            </li>
        </ol>
        <h2>
            <a name="MiddleTier"></a>Middle Tier Rules</h2>
        <ol start="800">
            <li>
                <h2>
                    <a name="DatesISOFormat"></a>Do you submit all dates to SQL Server in ISO format</h2>
                <p>
                    All dates submitted to SQL Server must be in ISO format date. This ensures that
                    language or database settings do not interfere with inserts and updates of data.
                    You should <b>NEVER</b> need to change the default language of users or of the database
                    in SQL Server. For example, any insert into a SQL Server database with Visual Basic
                    should call Format(ctlStartDate,"yyyy-mm-dd") or VB.NET Ctype(ctlStartDate.Text,Date).ToString("yyyy-MM-dd")
                    before attempting the insert or update. This will ensure consistency of treatment
                    when dealing with dates in your SQL Server backend.
                </p>
                <dl class="goodCode">
                    <dt>
                        <pre>SET DATEFORMAT mdy
<br />
                        print convert( datetime, '2003-07-01' )
<br />
                        -- returns Jul 1 2003 12:00AM
<br />
                        print convert( datetime, '01/07/2003' )
<br />
                        -- returns Jan 7 2003 12:00AM
<br />
                        print convert( datetime, '20030701' )
<br />
                        -- returns Jul 1 2003 12:00AM
<br />
                    </pre>
                        <pre>SET DATEFORMAT dmy
<br />
                        print convert( datetime, '2003-07-01' )
<br />
                        -- returns Jan 7 2003 12:00AM, opposite of above
<br />
                        print convert( datetime, '01/07/2003' )
<br />
                        -- returns Jul 1 2003 12:00AM, opposite of above
                        <br />
                        print convert( datetime, '20030701' )
<br />
                        -- returns <b>Jul 1 2003 12:00AM</b>, only one which is same as above<br />
                    </pre>
                    </dt>
                    <dd>
                        Code - ISO format date is the best.
                    </dd>
                </dl>
                <p>
                    The extended format can still mix up month & day in some circumstances, whereas
                    the basic format is the only one that always works correctly.
                </p>
                <p>
                    To be even more pedantic, when you include the time as well as the date, the value
                    isn't really an ISO value at all! The ISO representation of a date/time would be
                    '20030701T0958', whereas for SQL you should send it as '20030701 09:58'. This isn't
                    even the extended ISO format as it is missing the obligatory "T" character (ref.
                    section 5.4.1 of the standard).
                </p>
                <p>
                    (The standard does allow you to "be omitted in applications where there is no risk
                    of confusing", but it doesn't allow you to add a space or mix basic date with extended
                    time.)
                </p>
                <p>
                    So, if you want to be absolutely correct then it may be best to remove the reference
                    to ISO, so that your rule works for date/time as well as just dates.
                </p>
                <p>
                    The technical term used in the SQL help is "Unseparated String Format" (easily searched
                    for).
                </p>
                <p>
                    The help specifies that this format is unaffected by the SET DATEFORMAT command
                    (which depends on any locale settings for SQL Server or the computer it is installed
                    on).
                </p>
                <p>
                    "The SET DATEFORMAT session setting does not apply to all-numeric date entries (numeric
                    entries without separators). Six- or eight-digit strings are always interpreted
                    as ymd."
                </p>
                <p>
                    <a href="/SSW/Redirect/W3CTipsIsoDate.htm" target="_blank">What is ISO format date?</a>
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox800" runat="server" WebsiteRuleID="800">
                </ssw:SQLAuditorVoteBox><br />
            </li>
            <li>
                <h2>
                    <a name="BusinessLogic"></a>Do you implement business logic in middle tier?</h2>
                <p>
                    Business logic/rules should be implemented in an object oriented language such as
                    VB.NET and C#.&nbsp; This dramatically increases the adaptability, extensibility
                    and maintainability of the application.
                </p>
                <p>
                    Implementing business logic in stored procedures have the disadvantage of being
                    hard to test, debug and evolve, therefore, they should only implement basic data
                    access logic.
                </p>
                <p>
                    With the exception of some very heavy data oriented operations, it is excusable
                    to use stored procedures to carry out some logic for performance reasons.
                </p>
                <p>
                    Triggers are even more difficult as their behaviour is event based. &nbsp;It is
                    okay to use triggers for non-functional/infrastructural features such as logging
                    changes, or maintain more complex relational integrity which cannot be enforced
                    by a simple relationship.
                </p>
                <br />
                <ssw:SQLAuditorVoteBox id="SQLAuditorVoteBox801" runat="server" WebsiteRuleID="801">
                </ssw:SQLAuditorVoteBox><br />
            </li>
        </ol>
        <h2>
            <a name="PerformanceTuning">Performance Tuning</a></h2>
        <ol start="900">
            <li>
                <h2>
                    <a name="ClearServerCacheBenchmarkTest"></a>Be Sure To Clear SQL Server Cache When
                    Performing Benchmark Tests</h2>
                <p>
                    When you are tuning SQL statements you tend to play in SQL management studio for
                    a while. During this time SQL caches your query's and execution plans.<br />
                    All well and good but when you are trying to speed up a existing query that is taking
                    some time then you may not be making a difference even though your execution times
                    are way down.</p>
                <p>
                    You really need to clear SQL's cache (or buffer) every time you test the speed of
                    a query. This prevents the data and/or execution plans from being cached, thus corrupting
                    the next test.
                </p>
                <p>
                    To clear SQL Server's cache, run <strong>DBCC DROPCLEANBUFFERS</strong>, which clears
                    all data from the cache. Then run <strong>DBCC FREEPROCCACHE</strong>, which clears
                    the stored procedure cache.</p>
            </li>
            <img src="/ssw/Standards/Rules/Images/ClearSQLServerCache_BenchmarkTests.JPG" alt="Clearing the cache"
                width="1122" height="71" />
            <p>
                <strong>Figure 1: First call is after clearing the cache. The second one is without
                    clearing the cache. (26 seconds vs 2 seconds)</strong></p>
        </ol>
    </div>
    <h2>
        Links</h2>
    <ul>
        <li><a href="/ssw/Redirect/SQLServer/BWunderHotTip.htm" target="_blank">Bill Wunder
            SQL Coding Standards and Guideline</a>
            <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif"
                width="17" height="11" /></li>
    </ul>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
    </p>
    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DDK">David Klein</a>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DH">Daniel Hyles</a>
    </p>
    </span>
</asp:Content>
