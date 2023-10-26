<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Code Auditor - Screenshots (free version &#8211; VS Extension)" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server" />

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="images/codeauditor-logo.png" alt="Code Auditor logo" />
    <h2 class="tag">Keep your code healthy</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentFull" runat="server">

    <div class="greybox" style="display: inline-block;"><a href="UserGuide.aspx">See Code Auditor PRO version User Guide</a></div>

    <h2>Running SSW Code Auditor from Visual Studio</h2>
    <h3>How to use the scan</h3>
    <p>After installing the Code Auditor via Extensions and Updates, or (website link) and restarting a new menu will appear in Visual Studio.</p>
    <dl class="image">
        <dt><img src="images/VSUserGuide/ca-vs-1.png" /></dt>
        <dd>Figure: Code Auditor Visual Studio extension</dd>
    </dl>
    <ol>
        <li><strong>Open a solution in Visual Studio</strong>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-2.png" /></dt>
                <dd>Figure: Sample Solution</dd>
            </dl>
        </li>
        <li><strong>Select scan type (Complete solution, pending changes for both Git or TFS)</strong>
            <ol>
                <li>Scan entire solution</li>
                <li>Scan pending changes of either Git or TFS</li>
            </ol>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-3.png" /></dt>
                <dd>Figure: Scanning selections of Code Auditor</dd>
            </dl>
        </li>
        <li><strong>Once scan has begun, the loading bar shows the scan's progress</strong>
            <ol>
                <li>Scan has begun</li>
                <li>Progress of scan</li>
            </ol>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-4.png" /></dt>
                <dd>Figure: Visual Studio feedback for scan progress</dd>
            </dl>
        </li>
        <li><strong>Report result window</strong>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-5.png" /></dt>
                <dd>Figure: Report result window</dd>
            </dl>
        </li>
        <li><strong>Double-click an error to jump to the source</strong>
            <ol>
                <li>Double-click error result</li>
                <li>Jump to source (highlighted line)</li>
            </ol>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-6.png" /></dt>
                <dd>Figure: How to quickly jump to source of error</dd>
            </dl>
        </li>
    </ol>

    <h3>Features</h3>
    <ul>
        <li><strong>Select non default ruleset to run</strong>
            <ol>
                <li>Click "Code Auditor"</li>
                <li>Click "Windows"</li>
                <li>Click "Rules"</li>
                <li>Select rules to run</li>
            </ol>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-7.png" /></dt>
                <dd>Figure: Rules selection in Visual Studio</dd>
            </dl>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-8.png" /></dt>
                <dd>Figure: Rules screen of Code Auditor</dd>
            </dl>
        </li>
        <li><strong>Open Rule Description</strong>
            <p>Right click error and select "Open Rule in Browser" to go to the associated SSW Rule webpage.</p>
            <ol>
                <li>Right click rule</li>
                <li>Click "Open rule in browser" to open SSW Rules page explaining the purpose of the rule</li>
            </ol>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-9.png" /></dt>
                <dd>Figure: Process to select "Open Rule in Browser" from the Report window</dd>
            </dl>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-10.png" /></dt>
                <dd>Figure: Associated SSW rule example webpage</dd>
            </dl>
        </li>
        <li><strong>Check Report History (New)</strong>
            <p>View previously scanned reports</p>
            <ol>
                <li>Click "Code Auditor"</li>
                <li>Click "Windows"</li>
                <li>Click "History"</li>
                <li>Double click on report to open</li>
                <li>The report page will display the old report</li>
            </ol>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-11.png" /></dt>
                <dd>Figure: History selection in Visual Studio</dd>
            </dl>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-12.png" /></dt>
                <dd>Figure: Report History Window</dd>
            </dl>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-13.png" /></dt>
                <dd>Figure: Opening old report from report history</dd>
            </dl>
        </li>
        <li><strong>Edit my options</strong>
            <ol>
                <li>Click "Code Auditor"</li>
                <li>Click "Windows"</li>
                <li>Click "Options"</li>
            </ol>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-14.png" /></dt>
                <dd>Figure: Selecting options in Visual Studio</dd>
            </dl>
        </li>
        <li><strong>Email report to self or company (New)</strong>
            <ol>
                <li>Open options, click the "Email" tab and input your associated email details</li>
                <li>Click "Send Email" from the report window</li>
                <li>Visual studio will update about the email’s progress until sending is complete</li>
                <li>The report is received</li>
                <li>Select "Automatically email report when scan is complete" to send an email automatically after every scan</li>
            </ol>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-15.png" /></dt>
                <dd>Figure: Email panel of Options</dd>
            </dl>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-16.png" /></dt>
                <dd>Figure: Report window</dd>
            </dl>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-17.png" /></dt>
                <dd>Figure: Received email report</dd>
            </dl>
        </li>
        <li><strong>Do not scan certain code</strong>
            <p>You might find an instance where your code must break a rule for a valid reason.</p>
            <p>To improve the project, comment the reasoning behind this, and skip over the few lines of code.</p>
            <ol>
                <li>Open options and click the "Scanning" tab</li>
                <li>Ensure checkbox "Ignore code blocks"</li>
                <li>Click "Show Help" in order to open the Ignore Code Blocks window</li>
                <li>The Ignore Code Blocks window provides the commands to ignore specific code blocks when a scan is run</li>
            </ol>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-18.png" /></dt>
                <dd>Figure: Scanning tab of options</dd>
            </dl>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-19.png" /></dt>
                <dd>Figure: Ignore Code blocks command list window</dd>
            </dl>
        </li>
        <li><strong>Enable TFS Check-In policy</strong>
            <p>TFS Check-in policy allows TFS to run code Auditor whenever code is checked in.</p>
            <p>Select "Windows | Options | TFS" and then register the TFS version.</p>
            <ol>
                <li>Open options and click "TFS" tab</li>
                <li>Click "Register" for your associated Server version</li>
            </ol>
            <dl class="image">
                <dt><img src="images/VSUserGuide/ca-vs-20.png" /></dt>
                <dd>Figure: TFS panel of Options</dd>
            </dl>
        </li>

    </ul>

</asp:Content>
