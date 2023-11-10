<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master"  Title="SSW SQL Deploy - Screenshots" %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
<div style="display:block"><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider">
    </asp:SiteMapPath></div>
    <div class="TableOfContents">
        <p>s
            <strong>SSW SQL Deploy - Run as an .exe</strong>
        </p>
        <ol>
            <li><a href="#SQLinDir">Using SQL Deploy in Directory Mode</a>
                <ul>
                    <li><a href="#RunningExe">Overview of Directory Mode</a></li>
                    <li><a href="#SavingXmlAndSqlFiles">Saving SQL Deploy Project (.sdproj) and SQL script
                        files</a></li>
                </ul>
            </li>
            <li><a href="#ReceivingtheNewScripts">Using SQL Deploy in Single File Mode</a>
                <ul>
                    <li><a href="#ReceivingtheNewScripts">Overview of Single File mode</a></li>
                    <li><a href="#SelectXMLFile">Select the SQL Deploy Project (sdproj) file</a></li>
                    <li><a href="#UpgradeMethod">Select Single File mode</a></li>
                    <li><a href="#SelectVerifyRuntheScript">Select the SQL script file</a></li>
                    <li><a href="#CreateNewUseExisting">Create a new Database or use an existing Database</a></li>
                    <li><a href="#SQLCnn">Specify the SQL Server connection string</a></li>
                    <li><a href="#StartUpgrade">Start the upgrade process</a></li>
                </ul>
            </li>
            <li><a href="#SavingsqlFiles">Using SQL Deploy to Compare Scripts with the Database</a>
                <ul>
                    <li><a href="#SavingsqlFiles">Overview of Compare scripts mode</a></li>
                </ul>
            </li>
            <li><a href="#CmdLineArgs">Command line arguments for SSW SQL Deploy</a></li>
        </ol>
    </div>
    <ol>
        <li>
            <h2>
                Using SQL Deploy in Directory Mode<a name="SQLinDir"></a></h2>
            <h3>
                <a name="RunningExe">Overview of Directory Mode</a>
            </h3>
            <div class="sideboxblue">
                <b>What problem does SQL Deploy Directory Mode solve?</b>
                <p>
                    Directory mode helps to solve the problem of managing and applying updates to the
                    Database. It uses a history table to keep track of the updates that have been applied.
                    This allows the DBAs and Developers to put their updates into a single folder and
                    let SQL Deploy worry about versioning the changes.
                </p>
                There is&nbsp; also a dll that is provided that allows you to integrate with SQL
                Deploy and check if there is a new version.
            </div>
            <p>
                Directory mode is designed to allow Developers to incorporate SQL Deploy into their
                applications to deliver Database updates quickly and easily at the clients site.
            </p>
            <p>
                The SQL DBA or Developer saves all of the database updates to a single folder. SQL
                Deploy monitors this folder and checks for SQL scripts that have not been applied
                to the Database. It keeps track of the changes it has applied to the Database by
                updating a history table.
            </p>
            <h3>
                <a name="SavingXmlAndSqlFiles">For SQL Developers - Saving SQL Deploy Project (.sdproj) and SQL script files</a></h3>
            <p>
                When a new version of the Database is required, simply</p>
            <ul>
                <li>email the SQL scripts and the SQL Deploy Project (sdproj) file to the client.
                </li>
                <li>Instruct them to place these files into the directory that SQL Deploy is monitoring.
                    When the application detects the new SQL scripts the user will be notified that
                    changes need to be made to the Database and a dialog similar to the following will
                    be displayed.</li>
            </ul>
            <p>
                The SQL Deploy DLL will display this dialog when it detects a SQL script that has
                not been applied to the database. The checking process is normally run when the
                application that is using SQL Deploy is started.
            </p>
            <dl class="image">
                <dt>
                    <img border="0" src="Images/UpgradeMsgBox.gif" width="200" height="98" alt="Upgrade"></dt>
                <dd>
                    Figure: Warning - there is a new version</dd>
            </dl>
            <p>
                When the user clicks on the <b>Yes</b> button, SQL Deploy will be launched with
                the SQL Deploy Project (sdproj) file as a parameter. The user has only to click
                the <b>Next</b> button for each screen in the SQL Deploy wizard to apply the database
                updates. You could also start the console version of SQL Deploy with will upgrade
                the database with no user intervention.
            </p>
            <h3>
                <a name="CmdLineArgs">Command line arguments for SSW SQL Deploy</a>
            </h3>
            <p>
                You can start SQL Deploy with command line arguments to specify the initial values
                displayed in the wizard screens.</p>
            <p>
                <pre>SSW.SQLDeploy.exe [<i>/XMLFile:settings.sdproj</i>] [/TimeOut:<i>value]</i> [/UserMode:true|false]
                    [/ReconcileScriptsMode:true|false] [/FolderPath:<i>folderpath]</i> [/ConnectionString:<i>connectionstring]</i>
                    [/SelectedFile:<i>filepath]</i> [/UseTransactions:true|false] [/UpdateVersionTable:true|false]</pre></p>
            <p>
                OR</p>
            <p>
                <pre>SSW.SQLDeploy.exe <i>/XMLFile:settings.sdproj</i></pre></p>
            <table border="0" cellpadding="0" width="80%" id="CmdLineArgs" class="clsSSWTable">
                <thead>
                    <tr>
                        <th valign="top">
                            Parameter
                        </th>
                        <th valign="top">
                            Description
                        </th>
                    </tr>
                </thead>
                <tr>
                    <td valign="top">
                        <pre><i>/XMLFile:sqldeployproject.sdproj</i></pre>
                    </td>
                    <td valign="top">
                        The Full path and filename of the SQL Deploy Project (sdproj) file that contains
                        the settings to use. It is not necessary to specify other parameters if a XMLFile
                        is specified. For example:
                        <br />
                        <i>/XMLFile:"C:\Program Files\SSW SQL Deploy\Settings.sdproj"</i>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <pre>/TimeOut:<i>value</i></pre>
                    </td>
                    <td valign="top">
                        The connection Time out value to use when connecting to the SQL Server. For example:
                        <br />
                        <i>/TimeOut:5</i>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <pre><i>/UserMode:true|false</i></pre>
                    </td>
                    <td valign="top">
                        Indicates to run in Directory mode or Single File mode. <i>true</i> specifies to
                        run in Directory mode, the <i>/FolderPath</i> parameter must be specified. <i>false</i>
                        specifies to run in Single File mode, the <i>/SelectedFile</i> parameter must be
                        specified. For example:
                        <br />
                        <i>/UserMode:true</i>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <pre>/ReconcileScriptsMode:<i>true|false</i></pre>
                    </td>
                    <td valign="top">
                        Indicates whether to run in Compare(Reconcile) Scripts mode.
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <pre>/FolderPath:<i>folderpath</i></pre>
                    </td>
                    <td valign="top">
                        The path to the folder that contains the SQL script files. (not for Single File
                        mode) For example: <br /> /FolderPath:"C:\Program Files\SSW SQL Deploy\SampleData\"
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <pre>/ConnectionString:<i>connectionString</i></pre>
                    </td>
                    <td valign="top">
                        The connection string that specifies the Database to make the updates to. For example:<br />
                        <i>/ConnectionString:Provider=SQLOLEDB.1;Password=;Persist Security Info=True;User ID=sa;Initial
                            Catalog=SSWSQLDeployNorthwindSample;Data Source=(local)</i>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <pre>/SelectedFile:<i>filepath</i></pre>
                    </td>
                    <td valign="top">
                        The full path and filename of the SQL script file that SQL Deploy should run. This
                        option is only used with Single File mode.
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <pre>/UpdateVersionTable:<i>true|false</i></pre>
                    </td>
                    <td valign="top">
                        Indicates whether an entry will be added to the <i>_zsDataVersion</i> table with
                        the SQL script name and the date and time the script was run. Using this option
                        is recommended.
                    </td>
                </tr>
                </table>
                
                
            <%--<h3>
                Command line usage examples</h3>
            <p>
                Specifying the Connection string
            </p>
            <p>
                <pre>SSW.SQLDeploy.exe /ConnectionString:Provider=SQLOLEDB.1;Password=;Persist Security
                    Info=True;User ID=sa;Initial Catalog=SSWSQLDeployNorthwindSample;Data Source=(local)</pre>
            </p>
            <p>
                Specifying the SQL Deploy Project to use</p>
            <p>
                <pre>SSW.SQLDeploy.exe /XMLFile:"C:\Accounting\Accting.sdproj"</pre></p>
            <p>
                Using Directory mode
            </p>
            <p>
                <pre>SSW.SQLDeploy.exe &#047;TimeOut:10 &#047;UserMode:true
                    <br>
                    &#047;CompareScriptsMode:false &#047;FolderPath:"C:\Accounting\SQLScripts"<br>
                    &#047;UseTransactions:true &#047;UpdateVersionTable:true </pre>
            </p>
            <h3>
                <a name="SavingXmlAndSqlFiles">Saving SQL Deploy Project (.sdproj) and SQL script files</a>
            </h3>
            <p>
                To enable your Database to be updated with SSW SQL Deploy you must save all the
                changes you make to the Database as SQL script files. These can be saved from Enterprise
                Manager, Query Analyzer or Visual Studio .NET or created manually.
            </p>
            <p>
                You are required to name your scripts in alphabetical order so SQL Deploy knows
                the order in which to run the SQL scripts. e.g. 0001.sql, 0002.sql etc.
            </p>
            <h3>
                The _zsDataVersion Table</h3>
            <p>
                A history of the SQL scripts that have been run on the Database is stored in a table
                called _zsDataVersion. If this table does not exist in the Database then SQL Deploy
                will assume all scripts need to be run. This table will be created by SQL Deploy
                if it does not exist.
            </p>
            <table class="clsSSWTable" width="80%" id="table1" border="0">
                <thead>
                    <tr>
                        <th colspan="7" align="Center">
                            <b>Example _zsDataVersion Table</b>
                        </th>
                    </tr>
                </thead>
                <tr>
                    <td>
                        <b>Change ID</b>
                    </td>
                    <td>
                        <b>DateCreated</b>
                    </td>
                    <td>
                        <b>EmpUpdated</b>
                    </td>
                    <td>
                        <b>ScriptPath</b>
                    </td>
                    <td>
                        <b>ScriptFile</b>
                    </td>
                    <td>
                        <b>Note</b>
                    </td>
                    <td>
                        <b>SQLDeploy Version</b>
                    </td>
                </tr>
                <tr>
                    <td>
                        57
                    </td>
                    <td>
                        2009-10-26 14:52:25.587
                    </td>
                    <td>
                        SSWSQLDeploy/JayLin/SHRIMP
                    </td>
                    <td>
                        C:\Program Files (x86)\SSW Link Auditor\DatabaseScripts\Create Scripts
                    </td>
                    <td>
                        57_AlterSP_procRule_Update.sql
                    </td>
                    <td>
                        NULL
                    </td>
                    <td>
                        2.11
                    </td>
                </tr>
                <tr>
                    <td>
                        56
                    </td>
                    <td>
                        2009-10-26 14:52:25.573
                    </td>
                    <td>
                        SSWSQLDeploy/JayLin/SHRIMP
                    </td>
                    <td>
                        C:\Program Files (x86)\SSW Link Auditor\DatabaseScripts\Create Scripts
                    </td>
                    <td>
                        56_AlterTable_LinkAuditorRule.sql
                    </td>
                    <td>
                        NULL
                    </td>
                    <td>
                        2.11
                    </td>
                </tr>
                <tr>
                    <td>
                        55
                    </td>
                    <td>
                        2009-10-26 14:52:25.547
                    </td>
                    <td>
                        SSWSQLDeploy/JayLin/SHRIMP
                    </td>
                    <td>
                        C:\Program Files (x86)\SSW Link Auditor\DatabaseScripts\Create Scripts
                    </td>
                    <td>
                        55_AlterSP_procScanEntry_UpdateTarget.sql
                    </td>
                    <td>
                        NULL
                    </td>
                    <td>
                        2.11
                    </td>
                </tr>
                <tr>
                    <td>
                        54
                    </td>
                    <td>
                        2009-10-26 14:52:25.537
                    </td>
                    <td>
                        SSWSQLDeploy/JayLin/SHRIMP
                    </td>
                    <td>
                        C:\Program Files (x86)\SSW Link Auditor\DatabaseScripts\Create Scripts
                    </td>
                    <td>
                        54_AlterSP_ProcessTarget.sql
                    </td>
                    <td>
                        NULL
                    </td>
                    <td>
                        2.11
                    </td>
                </tr>
                <tr>
                    <td>
                        53
                    </td>
                    <td>
                        2009-10-26 14:52:25.523
                    </td>
                    <td>
                        SSWSQLDeploy/JayLin/SHRIMP
                    </td>
                    <td>
                        C:\Program Files (x86)\SSW Link Auditor\DatabaseScripts\Create Scripts
                    </td>
                    <td>
                        53_AlterTable_ScanEntry.sql
                    </td>
                    <td>
                        NULL
                    </td>
                    <td>
                        2.11
                    </td>
                </tr>
            </table>
            <p>
                Figure: The Directory mode only works when the backend has a table called _zsDataVersion
            </p>
            <p>
                The _zsDataVersion table is used by SQL Deploy to determine which SQL scripts are
                new and which have already been run.</p>
            <dl class="image">
                <dt>
                    <img border="0" src="Images/UserGu1.jpg" alt="No entries"></dt>
                <dd>
                    Figure: The ticked SQL scripts as there are no entries in the _zsDataVersion table
                    for them.</dd>
            </dl>
        </li>
--%>
                <li>
                    <h2>
                        <a name="ReceivingtheNewScripts">Using SQL Deploy in Single File Mode</a></h2>
                    <h3>
                        Overview of Single File mode
                    </h3>
                    <div class="sideboxblue">
                        <b>What problem does Single File mode solve?</b>
                        <p>
                            Single file mode is a great way to deliver ad-hoc updates to the Database. Instead
                            of stepping an end-user through the process of running Query Analyzer or OSQL they
                            can simply run SQL Deploy.
                        </p>
                        <p>
                            SQL Deploy provides a friendly wizard-style interface and will report error messages
                            in a way that people can understand.
                        </p>
                    </div>
                    <p>
                        In Single file mode SQL Deploy will run a single SQL script against the Database.
                        It is a simple method for ad-hoc database updates.
                    </p>
                    <p>
                        When a new SQL script is emailed to a user by the Developers, the SQL Deploy Project
                        (sdproj) file must be included. The SQL scripts and SQL Deploy Project (sdproj)
                        file are to saved to the users local disk drive as directed by the Developer.
                    </p>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/ScriptFiles.gif" alt="Files sent">
                        </dt>
                        <dd>
                            Figure: The two files sent by the Developer</dd>
                    </dl>
                    <h3>
                        <a name="SelectXMLFile">Select the SQL Deploy Project (sdproj) file</a></h3>
                    <p>
                        Open SSW SQL Deploy, and select the SQL Deploy Project (sdproj) file. This file
                        contains all the settings required to run the SQL script.
                    </p>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/UserGu2.jpg" alt="Select the project">
                        </dt>
                        <dd>
                            Figure: Select the SQL Deploy Project (sdproj) file sent by the Developer</dd>
                    </dl>
                    <h3>
                        <a name="UpgradeMethod">Select Single File mode</a>
                    </h3>
                    <p>
                        We are only running a single SQL file so select the Single File mode.
                    </p>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/UserGu3.jpg" alt="Single File Mode"></dt>
                        <dd>
                            Figure: Select the Single File mode</dd>
                    </dl>
                    <b><a name="SelectVerifyRuntheScript">Select the SQL script file</a></b>
                    <p>
                        Select the SQL script file that was sent by the Developer.
                    </p>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/UserGu4.jpg" alt="Script to run"></dt>
                        <dd>
                            Figure: Select the SQL script file to run</dd>
                    </dl>
                    <b><a name="CreateNewUseExisting">Create a new Database or use an existing Database</a></b>
                    <p>
                        Choose whether to create a new Database or modify an existing Database.
                    </p>
                    <p>
                        NOTE: If you are creating a new Database, the SQL script MUST contain a <pre>CREATE
                            DATABASE</pre> statement. SQL Deploy will use the <pre>CREATE DATABASE</pre>
                        statement to find the name of the Database. If you are not sure of how to do this,
                        look at the &#39;ver100.sql&#39; file in the samples folder.
                    </p>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/UserGu5.jpg" alt="Choose DB"></dt>
                        <dd>
                            Figure: Choose New or Existing Database</dd>
                    </dl>
                    <b><a name="SQLCnn">Specify the SQL Server connection string</a></b>
                    <p>
                        If you are creating a new Database specify the Server and security settings.
                    </p>
                    <p>
                        If you are updating an existing Database, click on the button to the right of the
                        connection string to build the connection string using the standard Microsoft UDL
                        wizard.
                    </p>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/UserGu6.jpg" alt="Connection string"></dt>
                        <dd>
                            Figure: Connection string to an existing Database</dd>
                    </dl>
                    <b><a name="StartUpgrade">Start the upgrade process</a></b>
                    <p>
                        Confirm any information then click on Finish to start the upgrade process.
                    </p>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/UserGu7.jpg" alt="Finish Dialog"></dt>
                        <dd>
                            Figure: Confirmation finish dialog</dd>
                    </dl>
                </li>
                <li>
                    <h2>
                        <a name="SavingsqlFiles">Using SQL Deploy to Compare Scripts with the Database</a></h2>
                    <p>
                        <b>Overview of Compare scripts mode</b></p>
                    <div class="sideboxblue">
                        <b>What problem does SQL Deploy Compare Scripts mode solve?</b>
                        <p>
                            Developers or DBA's can sometimes forget to save the changes they make to the Database
                            as an SQL script.
                        </p>
                        <p>
                            Compare Scripts mode ensures that all of the changes made to a Database between
                            versions are scripted for deployment.
                        </p>
                    </div>
                    <p>
                        The compare scripts mode allows you to check that the saved SQL scripts contain
                        all of the changes to your Database. It checks that you have not left anything out
                        before you upgrade a clients Database.
                    </p>
                    <p>
                        This feature is not available with the console application.
                    </p>
                    <p>
                        In this mode SQL Deploy creates a temporary Database then compares the temporary
                        Database structure to your existing Database. Any differences in the SQL scripts
                        are then displayed.
                    </p>
                    <p>
                        To do this you should run SQL Deploy in the Compare Scripts With Database Mode.
                    </p>
                    <p>
                        SQL Deploy will run all the scripts and create a temporary Database, it will then
                        script out the Database and display any differences in the schemas of the Databases.
                    </p>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/CompareExamDiff.gif" alt="Difference"></dt>
                        <dd>
                            Figure: Report generated after a compare. Demonstrating missing data from the
                            script.</dd>
                    </dl>
                </li>
    </ol>
</asp:Content>
