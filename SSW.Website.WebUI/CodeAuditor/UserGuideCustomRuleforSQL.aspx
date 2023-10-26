<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Code Auditor - How to make a Custom Rule for a SQL Database" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server" />

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="images/codeauditor-logo.png" alt="Code Auditor logo" />
    <h2 class="tag">Keep your code healthy</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentFull" runat="server">
    <h2><a name="VSAddin"></a>How to make a Custom Rule for a SQL Database</h2>
    <p>Here is an example for how to make a Custom Rule "Every table name must start with 'tbl'":</p>
    <ol>
        <li>Script out the database<p>
            <dl class="image">
                <dt>
                    <img src="/ssw/KB/Images/GenerateScript.jpg" width="471" height="468" /></dt>
                <dd>Figure: Generate script for the database to a script file</dd>
            </dl>
        </p>
        </li>
        <li>Run Code Auditor and go to "Select Job" page
            <p>
                <dl class="image">
                    <dt>
                        <img src="/ssw/KB/Images/CheckSQLServerMode.jpg" width="560" height="469" /></dt>
                    <dd>Figure: Select 'a sample SQL Script project'</dd>
                </dl>
            </p>
        </li>
        <li>Select files to scan<p>
            <dl class="image">
                <dt>
                    <img src="/ssw/KB/Images/CodeAuditorSelectFolder.jpg" width="643" height="469" /></dt>
                <dd>Figure: Select files</dd>
            </dl>
        </p>
        </li>
        <li>Adding a new rule<p>
            <dl class="image">
                <dt>
                    <img src="/ssw/KB/Images/CodeAuditorNewRuleForm.jpg" width="560" height="469" /></dt>
                <dd>Figure: Click Add button to create a new rule</dd>
            </dl>
        </p>
            <p>
                <dl class="image">
                    <dt>
                        <img src="/ssw/KB/Images/CodeAuditorAddRule.jpg" width="514" height="506" /></dt>
                    <dd>Figure: Enter new rule name</dd>
                </dl>
            </p>
            <p>
                <dl class="image">
                    <dt>
                        <img src="/ssw/KB/Images/CodeAuditorEditRule.jpg" width="506" height="394" /></dt>
                    <dd>Figure: Enter rule URL and note</dd>
                </dl>
            </p>
            <p>
                <dl class="image">
                    <dt>
                        <img src="/ssw/KB/Images/CodeAuditorEditRuleRegex.jpg" width="506" height="394" /></dt>
                    <dd>Figure: Enter File Filter and Search pattern (Regex)</dd>
                </dl>
            </p>
        </li>
        <li>Rule Processing
            <p>
                <dl class="image">
                    <dt>
                        <img src="/ssw/KB/Images/CodeAuditorRuleProcessing.jpg" width="560" height="469" /></dt>
                    <dd>Figure: Click Start button to start Rule Processing</dd>
                </dl>
            </p>
        </li>
        <li>Rule Result<p>
            <dl class="image">
                <dt>
                    <img src="/ssw/KB/Images/CodeAuditorRuleResult.jpg" width="560" height="469" /></dt>
                <dd>Figure: Rule Result Page - show you a summary of the rules that passed and failed
                </dd>
            </dl>
        </p>
        </li>
        <li>Rule Report<p>
            <dl class="image">
                <dt>
                    <img src="/ssw/KB/Images/CodeAuditorOutputReport.jpg" width="810" height="810" /></dt>
                <dd>Figure: Rule Report - Show you the details of the rules that passed and failed</dd>
            </dl>
        </p>
        </li>
        <li><a href="/ssw/CodeAuditor/UserGuide.aspx#CreateRule">More details and screen shots on Creating New Rule</a></li>

    </ol>


</asp:Content>
