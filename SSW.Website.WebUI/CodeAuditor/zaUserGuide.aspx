<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master"
    Title="SSW Code Auditor - Screenshots (Pro Version)" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server" />

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="images/codeauditor-logo.png" alt="Code Auditor logo" />
    <h2 class="tag">Keep your code healthy</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentFull" runat="server">
    <p>
        <b>Automate your Code Reviews with SSW Code Auditor</b>
    </p>
    <p>
        As a project or company grows, managing code standards throughout your team becomes
        virtually impossible. But consistent code is crucial to future development and maintenance.
        SSW Code Auditor lets you take control of your code and automatically review your
        web apps and projects - giving you more opportunity to spend time where it really
        matters.
    </p>
    <p>
        Here at SSW, we face the problem of maintaining our standards across nearly five
        thousand web pages, over twenty active projects in both Visual Basic (6 and .NET)
        and C-Sharp. There comes a point where a tool to check (or audit) our work would
        need was needed, this tool is SSW Code Auditor.
    </p>
    <p>
        <b>How do you plan on using SSW Code Auditor</b><br />
    </p>
    <ul>
        <li><a href="UserGuideVS.aspx">Screenshots (free version &#8211; VS Extension)</a></li>
        <li><a href="UserGuideCheckInPolicy.aspx">Visual Studio 2013/2012/2010 Check-In Policy</a></li>
        <li><a href="Tutorial.aspx">Tutorial</a></li>
        <li><a href="UserGuideASPMigration.aspx">ASP Migration from .Net 1.1 to .Net 2.0</a></li>
        <li><a href="UserGuideCustomRuleforSQL.aspx">How to make a Custom Rule for a SQL Database</a></li>
    </ul>
    <!--
    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
        style="width: 100%">
        <tr>
            <td>
                <b>SSW Code Auditor User Guide</b><br />
                1.<a href="#Pre">Prerequisites</a>
                <br />
                2.<a href="#RunCodeAud">Running SSW Code Auditor Wizard</a>
                <br />
                3.<a href="#CreateRule">Creating New Rule</a>
                <br />
                4.<a href="#ExpressBuilder">Creating Regular Expression</a><br />
                5.<a href="#TheReports">The Reports</a>
                <br />
                6.<a href="#ToolsOptions">Tools | Options</a><br />
            </td>
        </tr>
    </table>
     -->
    <p>
        SSW Code Auditor User Guide
    </p>
    <ol>
        <li><a href="#Pre">Prerequisites</a></li>
        <li><a href="#AddToFav">Tip: Add to your Favourites </a></li>
        <li><a href="#RunCodeAud">Running SSW Code Auditor Wizard</a></li>
        <li><a href="#CreateRule">Creating New Rule</a></li>
        <li><a href="#ExpressBuilder">Creating Regular Expression</a></li>
        <li><a href="#TheReports">The Reports</a></li>
        <li><a href="#ToolsOptions">Tools | Options</a></li>
    </ol>
    <ol>
        <li>
            <SSW:UserGuideLinks ID="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>
        </li>
        <li>
            <h2>
                <a name="AddToFav"></a>Tip: Add to your Favourites
            </h2>
            <p>
                Add SSW CodeAuditor Visual Studio Extension to your Favourites. <a href="http://www.ssw.com.au/ssw/Redirect/Microsoft/SSWCodeAuditorVSExt.htm">Download Link: SSW Code Auditor - VS Extension</a><br />
            </p>
            <img src="Images/AddToFav.png" alt="Add SSW CodeAuditor Visual Studio Extension to your Favourites" /><br />
            <b>Figure: Add to your Favourites</b>
        </li>
        <li>
            <h2>
                <a name="RunCodeAud"></a>Running SSW Code Auditor Wizard</h2>
            <p>
                When you run the SSW Code Auditor there will be a step by step wizard to guide you
                through the audit process.
            </p>
            <img src="Images/CodeAuditorWelcomeScreen.gif" alt="Code Auditor Welcome Screen"><br />
            <b>Figure: Run SSW Code Auditor</b><br />
            <br />
            <img src="Images/SelectJob.gif" alt="Select Job"><br />
            <b>Figure: Select a predefined Job or create a new one</b><br />
            <br />
            <img src="Images/SelectFiles.gif" alt="Select Files"><br />
            <b>Figure: Add the paths to scan</b><br />
            <br />
            <img src="Images/AvailableScanTypes.gif" alt="Available scan types"><br />
            <b>Figure: Available scan types - Files, Folders, URLs, VS Solutions and Projects</b><br />
            <br />
            <img src="Images/SelectRules.gif" alt="Select Rules"><br />
            <b>Figure: Select the rules you want to run</b><br />
            <br />
            <a name="Schedule"></a>
            <img src="Images/EmailSchedule.gif" alt="Email Schedule"><br />
            <b>Figure: Indicate where you'd like the report issued to</b><br />
            <br />
            <img src="Images/CommandLine.gif" alt="Start Process"><br />
            <b>Figure: SSW Code Auditor can be run on a schedule from the command line</b><br />
            <br />
            <img src="Images/ReadyToStartProcess.gif" alt="Ready to start"><br />
            <b>Figure: Ready to start the scanning process</b><br />
            <br />
            <img src="Images/ScanningInProgress.gif" alt="Scanning in progress"><br />
            <b>Figure: Scanning in progress</b><br />
            <br />
            <img src="Images/Results.gif" alt="Results are in"><br />
            <b>Figure: Results are in! Let's view the <a href="#TheReports">report</a></b><br />
            <br />
            <img src="Images/Finished.gif" alt="Finished"><br />
            <b>Figure: Finished! Thanks for using SSW Code Auditor</b>
            <br />
            <br />
            <br />
            <br />
        </li>
        <li>
            <h2>
                <a name="CreateRule"></a>Creating New Rule</h2>
            <p>
                To see a detailed walkthrough of how to create a new regular expression rule from
                scratch, see the <a href="RegExTutorial.aspx">Regular Expression Rule Tutorial</a>.
            </p>
            <p>
                To create a new rule for a Job:
            </p>
            <ol>
                <li>Select the designated Job and click next to the Rules Definition page.</li>
                <li>Click &quot;Add...&quot; on the bottom right of the Rules ListView.</li>
                <li>Select &quot;Create a new rule&quot; from the radio option and enter name for the
                    new rule.<br />
                    <img src="Images/RuleAdd.gif" alt="Add new rule">
                    <br />
                    <b>Figure: Create a new rule</b><br />
                    <br />
                    <img src="Images/RuleTypes.gif" alt="Available methods to create new rule">
                    <br />
                    <b>Figure: Choose different methods to create a new rule</b><br />
                    <br />
                </li>
                <li>Add general information of this rule.<br />
                    <img src="Images/RuleGeneral.gif" alt="General tab">
                    <br />
                    <b>Figure: General information of this rule</b><br />
                    <br />
                </li>
                <li>Enter the regular expression used by this rule and a regular expression in the search-in
                    field to filter the files this rule run on.<br />
                    <img src="Images/RuleSearch.gif" alt="Search tab">
                    <br />
                    <b>Figure: Search information of this rule</b><br />
                    <br />
                    <img src="Images/RuleCodeSample.gif" alt="Code sample">
                    <br />
                    <b>Figure: C# code for another rule search pattern</b><br />
                    <br />
                </li>
                <li>Tick the checkbox and enter the replacement text to automatically fix your code.<br />
                    <img src="Images/RuleReplace.gif" alt="Replace tab">
                    <br />
                    <b>Figure: Replacement text of this rule</b><br />
                    <br />
                </li>
                <li>You can test your regular expression on some simple test string before running it
                    on your projects.<br />
                    <img src="Images/RuleTest.gif" alt="Test tab">
                    <br />
                    <b>Figure: Simple regular expression testing</b> </li>
                <li>
                    <br />
                    <img src="Images/RuleChangeHistory.gif" alt="Change History tab">
                    <br />
                    <b>Figure: Change history of this rule</b> </li>
                <li>
                    <br />
                    <img src="Images/RuleStatistics.gif" alt="Statistics tab">
                    <br />
                    <b>Figure: Statistics of this rule</b> </li>
                <li>
                    <br />
                    <img src="Images/RuleExceptions.gif" alt="Rule Exceptions tab">
                    <br />
                    <b>Figure: Rule exceptions</b> </li>
            </ol>
            <br />
            <br />
            <br />
        </li>
        <li>
            <h2>
                <a name="ExpressBuilder"></a>Create Regular Expression</h2>
            <p>
                The following images show how to create your expression.
            </p>
            <img src="Images/regwiz1.gif" alt="Regular Expression Wizard" width="591" height="448"><br />
            <b>Figure: Figure: Use the powerful Regular Expression wizard to build patterns</b><br />
            <br />
            <img src="Images/regwiz2.gif" alt="Regular Expression Wizard 2" width="591" height="448"><br />
            <b>Figure: The wizard also shows you any group matchings, this information is very useful
                when you are building find &amp; replace patterns</b><br />
            <br />
            <img src="Images/regwiz3.gif" alt="Regular Expression Wizard 3" width="591" height="448"><br />
            <b>Figure: Figure: The wizard provides a testing ground for your Regular Expression</b><br />
            <br />
            <img src="Images/regwiz4.gif" alt="Regular Expression Wizard 3" width="591" height="448"><br />
            <b>Figure: You see check the regular expression in a more human readable way here</b><br />
            <br />
            <p>
                More information on <a href="Resources.aspx">regular expressions</a>.
            </p>
            <br />
        </li>
        <li>
            <h2>
                <a name="TheReports"></a>The Reports</h2>
            <p>
                <img src="Images/SampleReportBad.gif" alt="Sample Report" width="820" height="880"><br />
                <b>Figure: Job Report - before (Bad)</b>
            </p>
            <p>
                <img src="Images/SampleReportGood.gif" alt="Sample Report" width="820" height="880"><br />
                <b>Figure: Job Report - after (Good)</b>
            </p>
        </li>
        <li>
            <h2>
                <a name="ToolsOptions"></a>Tools | Options</h2>
            <p>
                <img src="Images/optionReports.gif" alt="Reports"><br />
                <b>Figure: Code Auditor Settings for Reports</b>
            </p>
            <p>
                <img src="Images/optionCheckInPolicy.gif" alt="Check-in Policy"><br />
                <b>Figure: Code Auditor Settings for TFS Check-in Policy</b>
            </p>
    </ol>
    <br />
    <a href="UserGuide_Old.aspx">Want to reminisce &#8211; see the old page + screenshots</a>
</asp:Content>
