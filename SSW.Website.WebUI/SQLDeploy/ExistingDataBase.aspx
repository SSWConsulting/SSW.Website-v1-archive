<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW SQL Deploy - Use SQL Deploy on your existing database" %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>
<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
<div style="display:block"><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider">
    </asp:SiteMapPath></div>
    <ol>
        <p>
            <h2>
                Use SQL Deploy on your existing database</h2>
        </p>
        <p>
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
            <li>
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
                        Figure:Check the &#34;script all objects in the selected database&#34; box</dd>
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
                <p>
                    USE ADVENTUREWORKS<br />
                    GO<br />
                    INSERT INTO [dbo].[_zsDataVersion](<br />
                    [DateCreated]<br />
                    , [EmpUpdated]<br />
                    , [ScriptPath]<br />
                    , [ScriptFile]<br />
                    , [Note]<br />
                    , [SQLDeployVersion]<br />
                    )<br />
                    SELECT
                    <br />
                    getdate() -- current time on insert
                    <br />
                    , suser_sname() + ' as ' + user_name() -- system user name
                    <br />
                    , N'D:\DataPeterGfader\ProjectsTFS\AdventureWorks\SqlScripts' -- the folder where
                    the script was located, just for tracing purposes<br />
                    , N'00000_create_database.sql' -- the name of the script file<br />
                    , N'SSWSQLDeploy: Database created manually, don''t delete this record' -- Note<br />
                    , N'12.22' -- SQL Deploy version<br />
                </p>
                <br />
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
                    Remember: Make sure to script out your changes as described on the <a href="http://www.ssw.com.au/SSW/sqldeploy/ExeMode.aspx#SavingXmlAndSqlFiles">
                        sql deploy exe mode page</a>
                </p>
            </li>
          </p>
    </ol>
</asp:Content>
