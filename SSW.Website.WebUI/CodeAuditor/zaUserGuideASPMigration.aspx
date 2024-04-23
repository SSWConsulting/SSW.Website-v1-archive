<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master"
    Title="SSW Code Auditor - ASP.NET Migration User Guide" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server" />

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="images/codeauditor-logo.png" alt="Code Auditor logo" />
    <h2 class="tag">Keep your code healthy</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentFull" runat="server">
    <h2>
        <a name="VSAddin"></a>Automatic Migration ASP.Net 1.1 to ASP.Net 2.0</h2>
    <p>
        Note: In case you are trying it on your own project, please make sure your Code
        Auditor report is zero.
    </p>
    <h3>Setup your sample project</h3>
    <ol>
        <li>Normally the Code Auditor ASP.NET 2.0 migration sample Virtual Directory is created
            for you by the setup package. If not (or you need to recreated the sample migration
            virtual directory), go to SSW Code Auditor Samples in your start menu or go to the
            following directory:<br>
            <br>
            C:\Program Files\SSW Code Auditor\samples\ASPMigration.
            <br>
            <br>
        </li>
        <li>Right click on the ASPMigration folder, go to Sharing and Security -&gt; Web Sharing.
            <br>
            <br>
            <img src="Images/ASPMigUserGuide1.gif" alt="" width="413" height="139">
            <br>
            <b>Figure: Enable web sharing </b>
            <br>
            <br>
        </li>
        <li>Select share this folder and add an Alias name. For example ASPMigration.
            <br>
            <br>
            <img src="Images/ASPMigUserGuide3.gif" alt="" width="368" height="474">
            <br>
            <b>Figure: Add share folder</b><br>
            <br>
            <img src="Images/ASPMigUserGuide2.gif" alt="Alias Name" width="384" height="313">
            <br>
            <b>Figure: Setup Alias name</b><br>
            <br>
        </li>
        <li>Open the Solution file (ASPMigration.sln) in Visual Studio 2003 and confirm that
            it compiles.
            <br>
            <br>
            <img src="Images/ASPMigVS2005_Build.gif" alt="Build your application first" width="367"
                height="186"><br>
            <strong>Figure: Compile your application in Visual Studio 2003 first</strong><br>
            <br>
            <strong>Note: </strong>As a general rule for any ASP.NET migration, you should make
            sure that
            <ul>
                <li>Your ASP.NET 1.1 web application compiles in Visual Studio 2003 before attempting
                    a migration </li>
                <li>You have removed any pages that are not used anymore. e.g. zzBasket.aspx or _Basket.aspx_old</li>
                <li>TIP: If you have a small website, you can precompile your whole web site using hidden
                    function of ASP.NET 1.1. See the <a href="/ssw/KB/KB.aspx?KBID=Q1545246">details</a>.
                    This ensures that all page directives and server tags in your aspx pages are valid.
                    This is not done by the VS 2003 compiler.<br>
                    <br>
                </li>
            </ul>
        </li>
        <li>Go to your browser and go to this location http://localhost/ASPMigration/Default.aspx.
            <br>
            <br>
            <img src="Images/ASPMigUserGuide07.gif" alt="" width="287" height="101">
            <br>
            <b>Figure: Open http://localhost link </b>
            <br>
            <br>
        </li>
        <li>Now this is your ASP.Net 1.1 test application.<br>
            &nbsp;</li>
    </ol>
    <p>
        &nbsp;
    </p>
    <br />
    <h3>(Optional) We can run Code Auditor rule ASP 2.0 Migration Prerequisite. This step
        is optional because it is not critical for the compilation of the migrated site</h3>
    This step will list:
    <ol>
        <li>All the script tags (e.g. Javascript) which will be removed by the Master Page migration
            process. These can be manually migrated at a later. The report can be used for future
            reference. </li>
        <li>Recommended directory locations (e.g. all ascx files should be in the /Components
            directory). </li>
    </ol>
    <br />
    <h3>We will start the migration to ASP.Net 2.0 using Code Auditor now.</h3>
    <br />
    <ol>
        <li>The built-in Microsoft VS 2005 ASP.NET 2.0 migration wizard does not take advantage
            of Master pages, you need to create them manually.
            <br />
            Let's see how Code Auditor help us to take advantage of master pages automatically
            in ASP.Net 2.0. </li>
        <li>Start Code Auditor Application and choose the job &quot;Migrating to ASP.Net2&quot;.</li>
        <li>Check the scanning folder is your virtual path that you just created.
            <br>
            <br>
            <img src="Images/ASPMigUserGuide10.gif" alt="" width="642" height="198">
            <br>
            <b>Figure: Check folder path<br>
                <br>
            </b>Note: If you have aspx pages or ascx files (controls) in subdirectories of your
            ASP.NET 1.1 web solution, make sure that you check on the &quot;Search Subfolders&quot;
            option when choosing the path to scan - otherwise it will not convert these files<br>
            <br>
            <img src="Images/ASPMigVS2005_SearchSubfolders.gif" alt="Include Subdirectories"
                width="690" height="155">
            <br>
            <b>Figure: Ensure that subfolders are checked on if you want to migrate your controls
                and pages in subdirectories as well </b>
            <br>
            <br>
            <br>
            <br>
        </li>
        <li>Run the Scan in Code Auditor.
            <br>
            <br>
            <img src="Images/ASPMigUserGuide1.gif" alt="" width="413" height="139">
            <br>
            <b>Figure: Scan the project</b><br>
            <br>
        </li>
        <li>Replacement Screen come up.<br>
            Warning! if you doing this on your live project please make sure you backup all
            you pages.<br>
            <br>
        </li>
        <li>Click on the replace button. You will have a list of options. You can replace them
            one by one or you can replace them all in one click.<br>
            In this example we recommended you to click Replace All.
            <br>
            <br>
            <img src="Images/ASPMigUserGuide11.gif" alt="" width="864" height="545">
            <br>
            <b>Figure: Replace All button</b><br>
            <br>
            <br>
            <img src="Images/ASPMigUserGuide12.gif" alt="" width="522" height="156">
            <br>
            <b>Figure: List of replacement buttons</b><br>
            <br>
        </li>
        <li>After that you can view your report. It will show all the lines that have been modified
            by Code Auditor </li>
        <li>To Ensure your Migration is successful. You need to make sure Code Auditor report
            is zero.<br>
            Please click back button and run the scan again.
            <br>
            <br>
            <img src="Images/ASPMigrationGoal.gif" alt="" width="550" height="450">
            <br>
            <b>Figure: Zero warnings in Code Auditor report</b><br>
            <br>
            <strong>Important</strong><br>
            Because the header (&lt;HEAD&gt;&lt;/HEAD&gt;) area is in the master page, the following
            will typically should be moved into the master page
            <br>
        </li>
        <ul>
            <li>Anything between &lt;SCRIPT&gt; &lt;/SCRIPT&gt; tags </li>
            <li>Any &lt;LINK HREF &gt; tags </li>
        </ul>
    </ol>
    <br />
    <h3>Open the solution in VS 2005 and use the VS 2005 ASP.NET Migration Wizard</h3>
    <ol>
        <li>Complete the steps in the wizard.
            <br>
            <img src="Images/ASPMigVS20051.gif" alt="" width="575" height="451">
            <br>
            <b>Figure: VS 2005 migration wizard page 1</b><br>
            <br>
            <br>
            <img src="Images/ASPMigVS20052.gif" alt="" width="575" height="451">
            <br>
            <b>Figure: VS 2005 migration wizard page 2</b><br>
            <br>
            <br>
            <img src="Images/ASPMigVS20053.gif" alt="" width="575" height="451">
            <br>
            <b>Figure: VS 2005 migration wizard page 3 </b>
            <br>
            <br>
        </li>
    </ol>
    <ol>
        <li>Your pages are all using master pages now. Here is what we have done in Code Auditor.
            <a href="/ssw/CodeAuditor/UserGuideASPMigrationScreenShot.aspx">Steps to ASP Migration</a>
        </li>
        <li>You can swap to designer view see how we are using Master Page now.<br>
            <br>
            <img src="Images/MasterPage.gif" alt="" width="959" height="533">
            <br>
            <b>Figure: Designer view in VS 2005 </b>
            <br>
            <br>
        </li>
    </ol>
    <h3>Now you have your ASP.Net 2.0 pages ready, but you still need to configure IIS</h3>
    <ol>
        <li>When You try to reload the Testing page again you will see the following error,
            which means your IIS settings is still on .Net 1.1.
            <br>
            <div style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
                <img src="Images/ASPMigrationErrorIIS.gif" alt="IIS Error Screen" width="1250" height="339">
            </div>
            <br>
            <b>Figure: Error page shows IIS configuration is still on .Net 1.1</b><br>
            <br>
        </li>
        <li>Bring up IIS
            <br>
            <br>
            <img src="Images/ASPMigUserGuide08.gif" alt="IIS Folder List" width="379" height="143">
            <br>
            <b>Figure: Open IIS in control panel</b><br>
            <br>
        </li>
        <li>Find your Virtual Directory ASPMigration </li>
        <li>Configure the ASP.Net Framework from 1.1 to 2.0
            <br>
            <br>
            <img src="Images/ASPMigUserGuide09.gif" alt="" width="472" height="458">
            <br>
            <b>Figure: Change Framework version</b><br>
            <br>
        </li>
        <li>Attempt to compile your project. If you recieve errors in your temporary ASP.NET
            2.0 files such as
            <br>
            <b>"c:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\Temporary ASP.NET Files\shoptest3\074c93d5\ccad2056\App_WebReferences.x32dixwx.0.cs(2828,26):
                warning CS0436: The type 'SSW.SSWWebService.clsContactFullDetails' in 'c:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\Temporary
                ASP.NET Files\shoptest3\074c93d5\ccad2056\App_WebReferences.x32dixwx.0.cs' conflicts
                with the imported type 'SSW.SSWWebService.clsContactFullDetails' in 'c:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\Temporary
                ASP.NET"</b><br>
            when compiling your project, it is recommended that you:
            <br>
            <ul>
                <li>Stop IIS and close VS 2005 </li>
                <li>Go to your ASP.NET 2.0 temporary files (typically C:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\Temporary
                    ASP.NET Files) and delete all the folders there<br>
                    <br>
                </li>
            </ul>
        </li>
        <li>Now you can refresh your Browser and enjoy ASP.Net 2.0 pages</li>
    </ol>
</asp:Content>
