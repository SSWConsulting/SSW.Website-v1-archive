﻿<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Microsoft Dynamics CRM Suggestions & Feedback | SSW Sydney, Brisbane & Melbourne"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
     <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <asp:label id="lblWelcome" runat="server"></asp:label>


    <div class="TableOfContents">
        <ol>
            <li><a href="#Cheap-license">Enable a super cheap license (say $1 month per user) when using CRM as an XRM platform (if hosted on Azure)</a></li>
            <li><a href="#UserExperience">User Experience - Help me have a consistent User Experience with SharePoint, CRM and TFSWA Web UI</a><img width="18" height="14" alt="Red star" src="/ssw/Images/Validation/redstar.gif"/></li>
            <li><a href="#SupportFF">Web Client - Help me have CRM work on Firefox and Chrome</a><img width="18" height="14" alt="Red star" src="/ssw/Images/Validation/redstar.gif"/></li>
            <li><a href="#CountInNav">General UI - Help me see how many items in each list</a><img width="18" height="14" alt="Red star" src="/ssw/Images/Validation/redstar.gif"/></li>
            <li><a href="#EditCSS">Server - Help me edit CSS file for each organization</a><img width="18" height="14" alt="Red star" src="/ssw/Images/Validation/redstar.gif"/></li>
            <li><a href="#FriendlyURL">User Experience - Help me make the URL friendly</a><img width="18" height="14" alt="Red star" src="/ssw/Images/Validation/redstar.gif"/></li>
            <li><a href="#RichClient">User Experience - No white screens in the browser - Help me have a rich client application</a></li>
            <li><a href="#DoubleClick">User Experience - Help me know when to click or double-click intuitively</a></li>       
            <li><a href="#IncreaseVersion">User Experience - Help me find the current version (rollup name)</a></li>
            <li><a href="#CRMFollowup">User Experience - Help me have a follow up flag the same as outlook</a></li>
            <li><a href="#OutlookLatest">Outlook Client - Help me get latest version (including rollups)</a><img width="18" height="14" alt="Red star" src="/ssw/Images/Validation/redstar.gif"/></li>
            <li><a href="#Toolbar">Outlook Client - Help me know the current organization</a></li>
            <li><strike><a href="#StopSend">Outlook Client - Help me send emails without them getting stuck in outbox</a></strike><span style="font-weight: bold; color: red">* Fixed in Microsoft in CRM 4.0 *</span></li>
            <li><a href="#ChangeServer"><strike>Outlook Client - Help me have a UI to change CRM Server</strike></a><span style="font-weight: bold; color: red">* Fixed in Microsoft in CRM 4.0 *</span></li>
            <li><a href="#OutlookCOMAddin">Outlook Client - Help me have a stable Outlook COM add in</a></li>
            <li><a href="#OutlookAutoSyncContact">Outlook Client - Help me not get a BIG surprise by my contacts syncing automatically</a></li>
            <li><a href="#OfflineOption">Outlook Client - Help me avoid the 'Unable to connect' balloon every 2 minutes</a></li>
            <li><a href="#Dashes"><strike>Web UI - Help me improve Message Box</strike></a><span style="font-weight: bold; color: red">* Fixed in Microsoft in CRM 4.0 *</span></li>
            <li><a href="#Diagnostics"><strike>General UI - Help me have a better UI for CRM Environment Diagnostics Wizard</strike></a><span style="font-weight: bold; color: red">* Fixed in by adding Diagnostics menu in CRM 4.0 Outlook Client*</span></li>
            <li><a href="#Deletion">Web UI - Help me know which related records will be deleted</a></li>
            <li><a href="#VirtualEarth">General UI - Help me have some Bing Maps integration and reports</a></li>
            <li><a href="#MoreErrorInfo">Web UI - Help me have more info on "Record Is Unavailable" error</a></li>
            <li><a href="#DisabledField">Form Design - Help me have disabled fields indicate how to modify them</a></li>
            <li><a href="#SortByMore">General UI - Help me have a sorted view by more than one field</a></li>
            <li><a href="#SortAbility">General UI - Help me have the sorted field visible from this UI</a></li>
            <li><a href="#AllShortcutsLink">General UI - Help me learn what all the possible URLs are by adding a "All URLs" option into the "Tools" menu</a></li>
            <li><a href="#CRMProgramName">Start Menu - Help me find the CRM programs</a></li>
            <li><a href="#CRMWorkPlaceOptionUI">Options - Help me know what's going on in the Workplace tab</a></li>
            <li><a href="#GeneralUITab">Options - Help me by having a nice UI on the "General" tab</a></li>
            <li><a href="#CheckName">User - Help me have a "Check Names" button</a></li>
            <li><a href="#DeleteUserAdAccount">User - Help me delete user Active Directory account</a><img width="18" height="14" alt="Red star" src="/ssw/Images/Validation/redstar.gif"/></li>
            <li><a href="#ExposeContact">Contact - Help me know Primary Contact on the Contact form</a></li>
            <li><a href="#AddressConsistent">Contact - Help me have a consistency with CRM and Outlook with regards to Addresses</a></li>
            <li><a href="#MapsIntegration">Add Microsoft Live Maps integration for contact and account addresses</a></li> 
            <li><a href="#DateControl">Developer - Help me have a Month/Year Date control</a></li>
            <li><a href="#ConfigFile">Developer - Help me have config files to store settings instead of the windows registry</a></li>
            <li><a href="#OriginalEmailFromOutlook">Developer - Help me see original email message and support a plugin message of promoting outlook email to CRM</a></li>
            <li><a href="#FormDesigner">Form Design - Help me resize fields on form without using JavaScript</a></li>
            <li><a href="#StatusReason">Workflow - Help me have a better "Status Reason" Message</a></li>
            <li><a href="#LaptopSQL">CRM Laptop Client Installer - Help me have an option to use local SQL Server (if already installed)</a></li>
            <li><a href="#PriceField">Campaign - Help me have campaign estimated revenue in default view</a></li>
            <li><a href="#DisplaySalesStage">Campaign - Help me have sales stage to be displayed on the form and have a predefined probability value</a></li>
            <li><a href="#EditReportLayout">Report - Help me select a template to choose my companies colors</a></li>
            <li><a href="#AddTextToReport">Report - Help me add text at the top of a report</a></li>
            <li><a href="#RemoveAttributeOnForm">Web Service - Help me remove an attribute on the form</a></li>
            <li><a href="#RecurringAppointment">Scheduler - Help me create recurring appointments</a></li>
            <li><a href="#Customizations">Customizations - Help me read Customization file</a></li>
            <li><a href="#CardspaceAndWCF">Security - Help me have Cardspace and WCF support</a></li>
            <li><a href="#CheckBox">Out of the box - Help me change option group to checkbox</a></li>
            <li><a href="#EmailTemplate">Email - Help me have an option for specifying a path to a .html for an email template</a></li>
            <li><a href="#EditCompletedTask">Out of the box - Help me edit a completed task</a></li>
            <li><a href="#CustomSearchResults">SharePoint Integration - Add a custom Search Results page as part of the CRM Search Accelerator</a></li>
            <li><a href="#OWAIntegration">Exchange - Help me have OWA integration with CRM 4</a></li>
            <li><a href="#URLForReports">Give URLs for reports</a></li>
            <li><a href="#RecordsAndPages">Campaigns - Help me have some idea how many records or pages</a></li>
            <li><a href="#Improvements">Improvements for the service calendar</a></li>
            <li><a href="#HighLatency">Add support for High Latency!</a></li>
            <li><a href="#ServiceActivities">Help me be able to use 'Service Activities' as native Outlook Appointments</a></li>
            <li><a href="#FullFooter">CRM 4 - Use full footer</a></li>
            <li><a href="#DrillDown">CRM 4 drill down not working in Activities report</a></li>
        </ol>
    </div>

    <ol>
        <li>
            <h2><a name="Cheap-license"></a>Enable a super cheap license (say $1 month per user) when using CRM as an XRM platform (if hosted on Azure)</h2>
                <p>I get the value of CRM when a customer uses it out of the box (you get a full Customer Relationship solution to improve your sales)... But what about when you are using it to build a custom solution?</p>
                <p>I don't think many developers know that using CRM (as xRM) gives you a nice GUI for creating tables, that automatically give you a basic editing form and services to program against.</p>
                <p>Make it easy for developers in VS to choose to build a solution on either:</p>
                <ul>
                    <li>ASP.NET and SQL Server</li>
                    <li>ASP.NET and xRM on Azure (empty $1 per month per user)</li>
                    <li>ASP.NET and CRM on Azure (everything - normal $100 per month per user)</li>    
                </ul>
                <p>My logic is that Microsoft wants Azure to be huge, and this is a step in that direction.</p>
                <dl class="image">
                    <dt><img src="Images/cheap-license.jpg" alt="Cheap license for CRM" /></dt>
                    <dd>Figure: The VS 2012 out of the box experience is missing any encouragement to use CRM (or XRM) </dd>
                </dl>
        </li>

        <li>
            <h2><a name="UserExperience"></a>User Experience - Help me have a consistent User Experience with SharePoint, CRM and TFSWA Web UI</h2>
                <p>Make Dynamics CRM and SharePoint and TFS (Web Access) consistent to end users. Please.</p>
                <p>Remember the early days of Microsoft Office when an end user got used to Excel, and we could show them that the switch from WordPerfect to Word would be fine.</p>
                <p>e.g. "See Mary, it has the same File Menu and look at the toolbar, and the Tools | Options is the same place."</p>
                <p>
                Well today I have bosses who love SharePoint, but I get no loyalty from them or
                their end users, when evaluating CRM4 vs Salesforce for their CRM. There is no loyalty
                because knowing SharePoint, does not help you know CRM.
                </p>
                <p>
                The first thing they want to do is change a few things... add a few fields.... so
                start with making the customizing consistent...
                </p>
                <p>e.g.</p>
                <ol>
                    <li>Modifying a list in SharePoint</li>
                    <li>Modifying an entity in MS CRM</li>
                    <li>Modifying a work item in TFS</li>
                </ol>
                <p>Should all be the same experience.</p>
                <p>For a gold star, we need to take more inspiration from Facebook. It is the standard UI. </p>
                <p>I want to sign in to each of those 3 portals (see red icon I am used to seeing at the top now) and see if I have stuff that has happened while I was away.</p>
                <p>e.g.</p>
                <ol>
                    <li>In SharePoint someone made a comment about one of my documents</li>
                    <li>In CRM someone made a comment about one of the customers I am the Account Manager of</li>
                    <li>In TFS someone made a comment about one of the work items I authored.</li>
                </ol>
        </li>

        <li>
            <h2><a name="SupportFF"></a>Web Client - Help me have CRM work on Firefox and Chrome</h2>
                <p style="color:Red;">UNBELIEVABLE - Not Fixed In CRM 2011.</p>
                <p>It is not just Firefox and Chrome... Actually it is more important that we can offer a solution that support the Apple Mac clients &#8211; which most organizations have these days.</p>
                <p>I should not have to deal with this error message</p>
                <pre>
    Unsupported Browser Version
    Microsoft Dynamics CRM requires Microsoft Internet Explorer 6 SP1 or later, running on a computer with Microsoft Windows XP, Microsoft Windows 2000, 
    or Microsoft Windows Server 2003. 

    Upgrade your browser and try again.
    </pre>
            <dl class="image">
                <dt>
                    <img src="Images/SupportFirefox.GIF" alt="Support to Firefox" /></dt>
                <dd>
                    Figure: I want to use CRM 2011 with my favorite browser</dd>
            </dl>
        </li>

        <li>
            <h2><a name="CountInNav"></a>General UI - Help me see how many items in each list</h2>
                <p>Show me count in left hand navigation like Outlook.</p>
                <dl class="badImage">
                    <dt><img src="Images/crm_CountInNav.jpg" alt="Left hand navigation" /></dt>
                    <dd>Figure: Bad Example - Left hand navigation</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/crm_CountInOutlookNav.jpg" alt="Count in Outlook" /></dt>
                    <dd>Figure: Good Example - Count in Outlook</dd>
                </dl>
                <p>We have a rule about this - <a href="/ssw/Standards/Rules/RulesToBetterSQLReportingServices.aspx#NodeNumber"> Data Layout - Do you have nodes count like Outlook?</a></p>
                <p>Tip #1: Use AJAX lazy loading for better performance.</p>
                <p>Tip #2: Allow me to grab an add-in from a 3rd party vendor. But it must be as easy to get as using the Visual Studio 2012 Extension Manager.</p>
        </li>

        <li>
            <h2><a name="EditCSS"></a>Server - Help me edit CSS file for each organization</h2>
                <p style="font-style:italic">User Story: As a CRM power user, I want to change the background color of the Test Organization to Blue, so that users don't enter a lot of data into the test CRM server by mistake.</p>
                <p>In CRM 2011, power users should be able to edit CSS on their CRM Website and this CSS should be per organization instead of per CRM web application.</p>
                <p>In addition you should provide 4 out of the box templates for <a href="/ssw/Standards/Rules/RulestoBetterMicrosoftCRM.aspx#Environment"> Dev, Test, Staging and Production</a>.</p>
                <p>Tip #1: If I know how to do this in SharePoint, it should be the same for CRM. Right?<br />
                    So I would love to see it be consistent with the SharePoint experience (it uses the click once app, SharePoint Designer)</p>
                <p>Tip #2: The TFS Web Access Team need to do this too for TFSPreview, in a consistent manner so I can leverage my existing knowledge from using SharePoint.</p>
        </li>

        <li>
            <h2><a name="FriendlyURL"></a>User Experience - Help me make the URL friendly</h2>
                <p>Please compile CRM 2011 in .NET 4 - then I can use System.Web.Routing and do it myself.</p>
                <p>URL in CRM is hard to understand, for example:</p>
                <dl class="badCode">
                    <dt>
                        <pre>http://CRMServer/SSW/sfa/conts/edit.aspx?id={1F914A6F-C320-DD11-926D-00155D012229}</pre>
                    </dt>
                    <dd>Figure: Bad URL - it's not clear and easy to remember</dd>
                </dl>
                <p>It looks much better if the URL changes to:</p>
                <dl class="goodCode">
                    <dt>
                        <pre>http://CRMServer/SSW/<span style="background-color: yellow;">Contacts/edit.aspx</span>?id={1F914A6F-C320-DD11-926D-00155D012229}</pre>
                    </dt>
                    <dd>Figure: Good URL - this looks simple clear</dd>
                </dl>
                <p>See our SharePoint suggestion: <a href="/SSW/Standards/BetterSoftwareSuggestions/SharePointTeamServices.aspx#NiceURLs"> Give me nice URLs</a>.</p>
        </li>

        <li>
            <h2><a name="RichClient"></a>User Experience - No white screens in the browser - Help me have a rich client application</h2>
                <p>(It must work on an iPad, so don't solve using Click Once or Silverlight).</p>
                <p>The web application is not responsive enough when your whole job is to use it all day long.</p>
                <p>Remember OWA is great, but most people choose to use Outlook all day long.</p>
                <p>Experienced Sales Force users say that they find CRM slower to use. I believe this is because they use more AJAX/jQuery<br />
                    Strive to use as much AJAX as Facebook.</p>
                <p>Tip #1: The Outlook Toolbar is OK, but needs an alternative</p>
                <p>Tip #2: Need offline support</p>
                <p>Tip #3: Remember OWA is great, but most people choose to use Outlook all day long.</p>
                <dl class="image">
                    <dt><img src="images/CRM_BlankForm.jpg" alt="Blank Form" /></dt>
                    <dd>Figure: Ouch... a white screen again. I don't ever want to see a blank screen like this - Either add some more AJAX or create a click once application (using SQL Compact for Offline)... Now this would make it more responsive than Sales Force!!!</dd>
                </dl>
        </li>

        <li>
            <h2><a name="IncreaseVersion"></a>User Experience - Help me find the current version (rollup name)</h2>
                <p>Number #1 of course is Windows Update.</p>
                <p>After that these things would be nice.</p>
                <dl class="image">
                    <dt><img src="Images/CRM3.gif" alt="CRM Help | About menu" /></dt>
                    <dd>Figure: The version number is not enough... e.g. I want to see Rollup 5 has been installed on this PC.</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/CRMInstallationProgram.gif" alt="CRM in 'Programs and Features'" /></dt>
                    <dd>Figure: When I install a Rollup - this version number does not change.</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/CRMInstalledUpdates.gif" alt="CRM Updates in 'Programs and Features'" /></dt>
                    <dd>Figure: I should not have to click "View Installed Updates" to find that Rollup 5 has been installed (Does anyone like that updates are hidden under here).</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/SilverlightSP.gif" alt="SilverLight SP in 'Programs and Features'" /></dt>
                    <dd>Figure: I much prefer being able to see SP1 here like this.</dd>
                </dl>
        </li>

        <li>
            <h2><a name="CRMFollowup"></a>User Experience - Help me have a follow up flag the same as Outlook</h2>
                <p>Update: Apparently Fixed in CRM 2011... to be confirmed. Apparently, inside Outlook you now get a rich client experience since it was re-coded to use MAPI, instead of using the old Web UI inside Outlook</p>
                <p>CRM should have a consistent process of creating follow up for an email between CRM and Outlook.</p>
                <p>The process in CRM:</p>
                <dl class="image">
                    <dt><img src="Images/CRMFollowup.gif" alt="Create follow up from an email in CRM"></dt>
                    <dd>Figure: Create follow up from an email in CRM</dd>
                </dl>
                <ol>
                    <li>Draft email</li>
                    <li>Save email activity</li>
                    <li>Create follow up</li>
                    <li>Save follow up activity</li>
                    <li>Send email</li>
                </ol>
                <p>The process in Outlook:</p>
                <dl class="image">
                    <dt><img src="Images/OutlookFollowup.gif" alt="Create follow up from an email in Outlook"></dt>
                    <dd>Figure: Create follow up from an email in Outlook</dd>
                </dl>
                <ol>
                    <li>Draft email</li>
                    <li>Hit "Follow up" flag</li>
                    <li>Choose "next week"</li>
                    <li>Send email</li>
                </ol>
        </li>

        <li>
            <h2><a name="DoubleClick"></a>User Experience - Help me know when to click or double-click intuitively</h2>
                <p>The reason they have done this - I assume - is to allow the user to select a record, and choose a different option from the menu. A better way would be to hyperlink the report name, and include a hover effect on the rest of the record <a href="/SSW/Training/Courses.aspx"> like used on this training page</a>.</p>
                <p>There are very few web pages if any, where you *have* to double click to open.</p>
                <ul>
                    <li>Either change the report to a hyperlink</li>
                    <li>or add to the tooltip "(double click to preview)"</li>
                </ul>
                <dl class="image">
                    <dt><img src="Images/CRM_Doubleclick.jpg" alt="Single click to expand, double click to open record is confusing"></dt>
                    <dd>Figure: Single click to expand, double click to open record is confusing</dd>
                </dl>
        </li>

        <li>
            <h2><a name="OutlookLatest"></a>Outlook Client - Help me get latest version (including rollups)</h2>
                <dl class="image">
                    <dt><img src="Images/OutlookCheckForUpdates.gif" alt="CRM Outlook check for updates" /></dt>
                    <dd>Figure: The "Check For Updates" button should give me an option to also check for Rollups</dd>
                </dl>
                <p>Today I have learnt about changing Registry Entry to enable <a class="external" target="_blank" alt="CRM Client AutoUpdate" href="http://blogs.msdn.com/crm/archive/2008/05/08/crm-client-autoupdate.aspx">CRM Client AutoUpdate</a>.</p>
                <dl class="code">
                    <dt>
                    <pre>
    Check For Updates on:<br />
    &nbsp;&nbsp;&nbsp;&nbsp;(o) Microsoft Servers<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[x]Check for Rollups (not recommended)<br />
    &nbsp;&nbsp;&nbsp;&nbsp;(o) Your CRM Server<br />
                    </pre>
                    </dt>
                    <dd>Figure: The "Check For Updates" should invoke a form with these steps</dd>
                </dl>
                <p>A message box is not good enough. I want to continue on and get the update.</p>
        </li>

        <li>
            <h2><a name="Toolbar"></a>Outlook Client - Help me know the current organization</h2>
                <p style="color:red; font-weight:bold;">UPDATE: To be confirmed. CRAIG AND GEORGE say this is fixed in the 2011 UI - multiple orgs are fine.</p>
                <p>Add a form that can show the current organization... with a button "Change".</p>
                <dl class="image">
                    <dt><img src="Images/CRMOutlookChangeOrganization1.gif" alt="Change organization" /></dt>
                    <dd>Figure: How can I know the current organization I am using? Change this option to pop a form</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/CRMOutlookChangeOrganization2.gif" alt="Change organization" /></dt>
                    <dd>Figure: A similar "Change" option is here in Outlook</dd>
                </dl>
                <p>PS: I should not have to close Outlook to see this.</p>
        </li>

        <li>
            <h2><a name="StopSend"></a><strike>Outlook Client - Help me send emails without them getting stuck in outbox</strike> - <span style="font-weight: bold; color: red">* Fixed in Microsoft in CRM 4.0 *</span></h2>
                <p>After the CRM Outlook Client is installed, you will find that emails will sit in your Outbox without a send date (they change from italics to non-italics). This happens whenever you navigate to the outbox folder in Outlook and an item is selected.</p>
                <dl class="image">
                    <dt><img src="Images/CRM1.gif" alt="Email is stuck without a sent date" /></dt>
                    <dd>BUG - Email is stuck without a sent date</dd>
                </dl>
                <p>Note: There is a work-around to send the un-sent emails - You open the item, switch back to Outlook and change folders out of the outbox. Then click send on the mail item and do not navigate back to the outbox until you've send/received.</p>
        </li>

        <li>
            <h2><a name="ChangeServer"></a><strike>Outlook Client - Help me have a UI to change CRM Server</strike> - <span style="font-weight: bold; color: red">* Fixed in Microsoft in CRM 4.0 *</span></h2>
                <p>When the CRM Outlook Client is installed, you cannot change the CRM server that you specified when you first installed it. We need a UI to change the server, like Exchange:</p>
                <dl class="image">
                    <dt><img src="Images/ExchangeSettings.gif" alt="Exchange Server Settings" /></dt>
                    <dd>Figure: UI to change the Exchange Server</dd>
                </dl>
                <p>At the moment, the only way to change the server url is through the registry at: "HKEY_CURRENT_USER\Software\Microsoft\MSCRMClient\ServerUrl".</p>
        </li>

        <li>
            <h2><a name="OutlookCOMAddin"></a><strike>Outlook Client - Help me have a stable Outlook COM add in</strike> - <span style="font-weight: bold; color: red">* FIXED IN CRM 4 ROLLUP 7 *</span></h2>
                <p>The quality of the add in is not good enough - the CRM team should install the Outlook add in from <a href="/SSW/Redirect/plaxo.htm">www.plaxo.com</a> and aspire to that quality and integration.</p>
                <p>The worst thing is it is buggy and causes outlook to crash.</p>
                <p>I thought I was dreaming first time - but now I know it's a persistent little bugger - this should NOT happen.</p>
                <dl class="image">
                    <dt><img src="Images/OutlookCOMAddin.jpg" alt="Outlook COM add in" /></dt>
                    <dd>Figure: When you turn off the outlook COM add-in it should not come back magically some time later</dd>
                </dl>
        </li>

        <li>
            <h2><a name="OutlookAutoSyncContact"></a>Help me not get a BIG surprise by my contacts syncing automatically</h2>
                <p>I Install CRM Outlook Client and I open up Outlook and it syncs 10,000+ contacts from CRM to my outlook contacts.</p>
                <p>Is CRM crazy? Why would it not tell me this?</p>
                <p>Suggestion:</p>
                <ul>
                    <li>Before doing that action, please give me a warning with how many you will sync.</li>
                    <li>Show me some of the sample data, in a grid.</li>
                    <li>Better still have a wizard that include the settings on below image.</li>
                    <li>Also educate me - my current contacts will not end up in CRM.</li>
                </ul>
                <dl class="image">
                    <dt><img src="Images/CRMSynchronizationTab.gif" alt="CRM Synchronization tab" /></dt>
                    <dd>Figure: These options should not be checked by default. And they should include the Count, so I can know how many will sync</dd>
                </dl>
                <p>Bottom line is you can't sync my stuff without asking me (and tell me the number).</p>
        </li>

        <li>
            <h2><a name="OfflineOption"></a><strike>Outlook Client - Help me avoid the 'Unable to connect' balloon every 2 minutes</strike> - <span style="font-weight: bold; color: red">* FIXED IN CRM 4 ROLLUP 7 *</span></h2>
                <p>Losing an Internet connection should be a seamless experience. Testing 'Work Offline' is important.</p>
                <dl class="image">
                    <dt><img src="Images/CRMOutlookUnableToConnect.gif" alt="CRM Unable to connect balloon" /></dt>
                    <dd>Figure: I should not have to see this message every 2 minutes when I lose Internet connection</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/CRMOutlookMenu.gif" alt="CRM Outlook menu" /></dt>
                    <dd>Figure: Add a 'Work Offline' option and automatically enable it when...</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/CRMOutlookMenu.gif" alt="CRM Outlook menu" /></dt>
                    <dd>Figure: When I click 'Work Offline' I expect CRM to take advantage of it</dd>
                </dl>
                <p>Note: By the way Firefox doesn't even ask me to 'Work Offline'</p>
        </li>

        <li>
            <h2><a name="Dashes"></a><strike>Web UI - Help me improve Message Box</strike> - <span style="font-weight: bold; color: red">* Fixed in Microsoft in CRM 4.0 *</span></h2>
                <p>Remove the non standard separating dashes and improve the Message Box.</p>
                <dl class="image">
                    <dt><img src="Images/CRM6.gif" alt="Message Box" /></dt>
                    <dd>Figure: Non standard separating dashes</dd>
                </dl>
        </li>

        <li>
            <h2><a name="Diagnostics"></a><strike>General UI - Help me have a better UI for CRM Environment Diagnostics Wizard</strike> - <span style="font-weight: bold; color: red">* Fixed in by adding Diagnostics menu in CRM 4.0 Outlook Client*</span></h2>
                <p>Allow this form to be expanded so you can see all in one - or send a screen capture to someone else:</p>
                <dl class="image">
                    <dt><img src="Images/CRMDiagnostics.gif" alt="Diagnostics Wizard" /></dt>
                    <dd>Figure: CRM Environment Diagnostics Wizard Form</dd>
                </dl>
                <p>Call this "CRM Configuration Manager" to be consistent with "Reporting Service Configuration Manager":</p>
                <dl class="image">
                    <dt><img src="Images/RSConfigManager.gif" alt="Reporting Services Configuration Manager" /></dt>
                    <dd>Figure: Reporting Services Configuration Manager</dd>
                </dl>
        </li>

        <li>
            <h2><a name="Deletion"></a>Web UI - Help me know which related records will be deleted</h2>
                <p>If the deletion will also delete some related records, it would be better to look up and show them in this "Deletion Confirm Dialog":</p>
                <dl class="image">
                    <dt><img src="Images/CRMDeletion.gif" alt="Deletion Information" /></dt>
                    <dd>Figure: Needs more deletion information in the Confirm Dialog</dd>
                </dl>
        </li>

        <li>
            <h2><a name="VirtualEarth"></a>General UI - Help me have some Bing Maps integration and reports</h2>
                <p>I want nice out of the box experience for nice demos to customers.</p>
                <p>So add some Bing Maps integration and reports.</p>
                <dl class="image">
                    <dt><img src="Images/spyk.gif" alt="Spyk" /></dt>
                    <dd>Figure: Have some out of the box Bing Maps (was Virtual Earth) Integration</dd>
                </dl>
        </li>

        <li>
            <h2><a name="MoreErrorInfo"></a>Web UI - Help me have more info on "Record Is Unavailable" error</h2>
                <p>This is a general one. The errors in CRM seem too generic, too often.</p>
                <p>If user has just installed it and gets the following error message:</p>
                <dl class="image">
                    <dt><img src="Images/crm_msg_unavaiable.gif" alt="Record Is Unavailable"></dt>
                    <dd>Figure: Error message of "Record Is Unavailable"</dd>
                </dl>
                <p>Tip #1: It would be better if user can get more info than this. E.g. If there are no databases on the server, the following info should be included:<br />
                    "There are no databases on this SQL Server. Please use the 'Deployment Manager' and create an organization."</p>
                <p>Tip #2: Don't show the generic soap errors. </p>
                <p>Tip #3: Make the errors link to the error log file</p>
                <p style="color:Red; font-weight:bold">* TODO: Mehmet and Zune: Find the most common errors and pain from others blog posts to use as an example *</p>
        </li>

        <li>
            <h2><a name="DisabledField"></a>Form Design - Help me have disabled fields indicate how to modify them</h2>
                <p><span style="font-weight: bold; color: Red;">* TODO: Adam to clarify the reason. I believe the reason is because you need to be aware that if it was created from lead... you need to go back to the lead to change it. *</span></p>
                <p>Note: if they added an opportunity directly... there is no source lead... so you can update it.</p>
                <p>"Originating Lead" - is disabled - fields should always indicate what you need to do to un-disable them.</p>
                <p>In this case once an opportunity is saved then the lead is locked into read-only mode.</p>
                <p>A tooltip indicating that the lead cannot be changed or how to change should be provided on the read-only field.</p>
                <dl class="image">
                    <dt><img src="Images/CRM_DisabledField.JPG" alt="Originating Lead is disabled after saving the opportunity"></dt>
                    <dd>Figure: Originating Lead is disabled after saving the opportunity - this means poor users can't change it after saving - as a minimum give a tooltip how to unlock it</dd>
                </dl>
                <p><b>UPDATE: NOT FIXED IN CRM 2011</b></p>
        </li>

        <li>
            <h2><a name="SortByMore"></a>General UI - Help me have a sorted view by more than one field</h2>
                <p><span style="font-weight: bold; color: red">* TODO: Adam to establish if there is a workaround by exporting the data to Excel *</span></p>
                <p><span style="font-weight: bold; color: red">NOTE: THE WORK AROUND IS TO HOLD DOWN SHIFT AND SORT COLUMNS - OR USE COMPOSITE COLUMNS</span></p>
                <p><span style="font-weight: bold; color: red">* TODO: Adam to establish if the same issue exists in SharePoint *</span></p>
                <p>In CRM4 it only allows a user to sort by one field like below, but we need sort by more than one field:</p>
                <dl class="image">
                    <dt><img src="Images/CRM_SortByMore.JPG" alt="Should be able to sort by more fields"></dt>
                    <dd>Figure: CRM4 Customizations only allows you to sort by one field</dd>
                </dl>
        </li>

        <li>
            <h2><a name="SortAbility"></a>General UI - Help me have the sorted field visible from this UI</h2>
                <p>In CRM4 there should be some sort ability in below UI:</p>
                <dl class="image">
                    <dt><img src="Images/CRM_SortAbility.JPG" alt="will be some sort ability"></dt>
                    <dd>Figure: There should be some sort ability in this UI</dd>
                </dl>
                <p>Note: Actually if you can click on 'Edit columns' to do this... Not very obvious.</p>
                <p><span style="font-weight: bold; color: red">* TODO: Adam to compare how it is done in SharePoint *</span></p>
        </li>

        <li>
            <h2><a name="AllShortcutsLink"></a>General UI - Help me learn what all the possible URLs are by adding a "All URLs" option into the "Tools" menu</h2>
                <p><b>UPDATE: This was fixed in CRM 4. To be confirmed</b></p>
                <p>Where you link to a help page about: How to link to different views on the various entities? Like <a href="/SSW/Redirect/CRM_MS.htm">Entity Type Codes</a></p>
                <dl class="image">
                    <dt><img src="Images/CRM_Link_01.JPG" alt="Add link in menu" /></dt>
                    <dd>Figure: The "All links" link would be helpful, on creation of Shortcuts on the Windows desktop</dd>
                </dl>
        </li>

        <li>
            <h2><a name="CRMProgramName"></a>Start Menu - Help me find the CRM programs</h2>
                <dl class="image">
                    <dt><img src="Images/CRMPrograms.gif" alt="CRM 4.0 Program Files"></dt>
                    <dd>Figure: These 3 options should start with 'CRM' because it doesn't work when you use the Windows 7 and Windows 8 searching</dd>
                </dl>
                <p>In addition I wouldn't mind an extra menu 'xRM' &#8211; and just a link for them to send to their Visual Studio developers.</p>
        </li>

        <li>
            <h2><a name="CRMWorkPlaceOptionUI"></a>Options - Help me know what's going on in the Workplace tab</h2>
                <dl class="image">
                    <dt><img src="Images/CRMWorkPlaceOption.gif" alt="CRM Workplace option"></dt>
                    <dd>Figure: Horrible UI - I don't know where to start</dd>
                </dl>
        </li>

        <li>
            <h2><a name="GeneralUITab"></a>Options - Help me by having a nice UI on the "General" tab</h2>
                <dl class="image">
                    <dt><img src="Images/CRMGeneralUITab.gif" alt='CRM 4.0 "General" Tab'></dt>
                    <dd>Figure: CRM 4.0 - The "General" tab, needs many things fixed on the UI</dd>
                </dl>
                <p>This is just poor design:</p>
                <ul>
                    <li>"Records per page" field should follow the rule <a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Forms.aspx#SizeSpacing">Do you follow the control size and spacing standards?</a></li>
                    <li>"Advanced Find Mode" field should follow the rule <a href="/SSW/Standards/Rules/RulestoBetterInterfaces-Controls.aspx#OptionGroupCheckBoxSimple">Do you make Option Groups and Check Boxes simple to understand?</a></li>
                    <li>"Advanced Find Mode" field should include images so you understand what this feature does</li>
                </ul>
        </li>

        <li>
            <h2><a name="CheckName"></a>User - Help me have a "Check Names" button</h2>
                <p>Microsoft CRM needs a "Check Names" button to work the same as Outlook - so you can add a user by only knowing a few characters of their name.</p>
                <dl class="image">
                    <dt><img src="Images/CRM2.gif" alt="Check Names" /></dt>
                    <dd>Figure: Need a "Check Names" button</dd>
                </dl>
                <p>Microsoft teams should share code. I'd like to see the same control reused from the SharePoint team.</p>
                <p>Add a tooltip "Use Control + K"</p>
                <p>IMPORTANT FOR HOSTED CRM<br />
                    Change 'Domain Logon Name' to 'Logon Name'<br />
                    e.g. The first field should be able to resolve by ID eg. Their email address, live ID or domain credentials.</p>
        </li>

        <li>
            <h2><a name="DeleteUserAdAccount"></a>User - Help me delete user Active Directory account</h2>
                <p><b>Update: Maybe fixed in CRM 2011. To be confirmed.</b></p>
                <p>I should not have to keep all my old employees' and contractors' accounts in Active Directory and I should be able to edit their information.</p>
                <p>Currently I have to have a crazy CRM rule to 'NEVER DELETE AN AD ACCOUNT' **TODO Find that rule</p>
                <p>BOTTOM LINE. NETWORK GUYS SHOULD NOT BREAK A BUSINESS APP</p>
        </li>

        <li>
            <h2><a name="ExposeContact"></a>Contact - Help me know Primary Contact on the Contac form</h2>
                <p>Currently you need to go to the Account (Client) to change the primary contact.</p>
                <p>To Repro:</p>
                <ol>
                    <li>Go to a Account with contacts</li>
                    <li>You can observer who is the primary contact in the XX field</li>
                    <li>Double click on the primary contact</li>
                    <li>Observer there is no way to know this is the primary contact</li>
                </ol>
                <p>Suggestion:</p>
                <ol>
                    <li>Underneath the "Parent Customer"</li>
                    <li>If Stephen is the primary contact</li>
                    <li>Add a checkbox "Primary Contact" [x]</li>
                    <li>If this guy is not the primary contact and you want to make him that. Check the checkbox and get a message to confirm.</li>
                </ol>
                <p>MORE INFO:<br />
                    THE PRIMARY CONTACT IS DEFINED BY A LINK NOT A FIELD. <br />
                    THE PROBLEM IS YOU CAN BE A CONTACT FOR MORE THAN ONE COMPANY (to be confirmed)<br />
                    TODO: in CRM 2011 get a screen capture of the grid</p>
                <dl class="image">
                    <dt><img src="Images/CRM6.gif" alt="Contact Form" /></dt>
                    <dd>Figure: Contact information without exposing primary contact</dd>
                </dl>
        </li>

        <li>
            <h2><a name="AddressConsistent"></a>Contact - Help me have a consistency with CRM and Outlook with regards to Addresses</h2>
                <p>
                Currently, CRM only allows making address single line which is not appropriate, because address might contain much information that one line is not enough. It's much better to support both single line and multi-line for users to input their addresses.</p>
                <dl class="image">
                    <dt><img src="Images/CrmAddress.jpg" alt="Street Address in CRM"></dt>
                    <dd>Figure: Street Address in CRM</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/OutlookAddress.jpg" alt="Street Address in Outlook"></dt>
                    <dd>Figure: Street Address in Outlook</dd>
                </dl>
                <p>CRM should be the same as Outlook? Or as a minimum, give us an option in Customization to have "have all addresses on 1 multiple line field".<br />
                    Tips:</p>
                <ol>
                    <li>You can change this easily - by making Address 2 and Address 3 invisible and make Address 1 multi-line.</li>
                    <li>If you hate how CRM deals with addresses, then fill all addresses in Outlook - it does synchronize back to CRM.</li>
                </ol>
                <p>This issue hasn't been changed in CRM4. We have a rule about this at <a href="../Rules/RulestoBetterInterfaces-Forms.aspx#ConsistentField"> Do you have consistent way to store a same field?</a></p>
        </li>
        
        <li>
            <h2><a name="MapsIntegration"></a>Add Microsoft Live Maps integration for contact and account addresses</h2>
                <p>Add a new tab to contact and account entities called location.  This tab should have an HTML iframe to Microsoft Live maps showing the address of the contact/account highlighted:</p>
                <dl class="image">
                    <dt><img src="Images/MapsWithHighlightedAddress.jpg" alt="The CRM account should have a integrated map with highlighted address." /></dt>
                    <dd>Figure: a CRM Account record with the address highlighted</dd>
                </dl>
                <p>Note #1 : This one is the right idea, but is missing the steps to follow. <br />
                    <a href="/ssw/Redirect/AddIntegrationMaps.htm" target="_blank">http://community.dynamics.com/blogs/crminogic/archive/2009/04/27/maps-integration-for-dynamics-crm-4.aspx</a></p>
                <p>Note #2: Richard has blogged a solution that shows the map on SharePoint (not CRM like we suggest).<br />
                    <a href="/ssw/Redirect/SPMapSolution.htm" target="_blank">http://www.dynamicscrmtrickbag.com/2009/04/14/search_accelerator_part2/ </a></p>
        </li>
    
        <li>
            <h2><a name="DateControl"></a>Developer - Help me have a Month/Year Date control</h2>
                <p>Currently the only option a user has when inputting a date are:</p>
                <ol>
                    <li>Date only</li>
                    <li>Date/Time only</li>
                </ol>
                <p>There is a need for a Month/Year control. For example this is needed when trying to report on a projected income on a monthly basis.</p>
                <dl class="image">
                    <dt><img src="Images/CRM_DC_01.JPG" alt="Month/Year Date control"></dt>
                    <dd>Figure: CRM should include a date control</dd>
                </dl>
                <p style="color:Red; font-weight:bold">TODO: See if KendoUI have a control for this</p>
        </li>

        <li>
            <h2><a name="ConfigFile"></a>Developer - Help me have config files to store settings instead of the windows registry</h2>
                <p>The connection string for CRM is actually stored in the windows registry under HKEY_LM\Software\Microsoft\MSCRM.</p>
                <p>This makes it very difficult to find and it would be more intuitive to store it in a config file in the CRM folder.</p>
                <dl class="image">
                    <dt><img src="Images/CRM_CF_01.JPG" alt="Config database under registry"></dt>
                    <dd>Figure: CRM config setting save in registry</dd>
                </dl>
        </li>

        <li>
            <h2><a name="OriginalEmailFromOutlook"></a>Developer - Help me see original email message and support a plugin message of promoting outlook email to CRM</h2>
                <p>Ideally, in order to properly integrate email with CRM, the developer should be able to see the original email message and hook in the process of promoting an email to CRM.</p>
                <p>For example, an invoice tracking email might need its custom attributes to track it's type/category etc. We can store this value in the email custom header, but we cannot pass this value to a custom attribute in CRM.</p>
                <p style="color:red; font-weight:bold;">TODO: You need some structure in the body of an email.</p>
                <p style="color:red; font-weight:bold;">TODO: Investigate with George</p>
                <p>N.B. This is not an issue if using the CRM web form to send the email, only if using CRM Outlook client, which is not customizable.</p>
        </li>

        <li>
            <h2><a name="FormDesigner"></a>Form Design - Help me resize fields on form without using JavaScript</h2>
                <p>Form Designer - field widths</p>
                <p>Field widths indicate to a user, what data will go in it. E.g. State will be able to accept say 6 characters - not 100 characters.</p>
                <p>You will be able to change the width of fields in the form designer (without needing JavaScript).</p>
                <dl class="badImage">
                    <dt><img alt="Page with a bad form designer" src="Images/FormDesignerDefault.gif" /></dt>
                    <dd>Figure: Bad - The form designer only gives you this by default</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img alt="Page with a good form designer" src="Images/FormDesignerAllowGet.gif" /></dt>
                    <dd>Figure: Good - The form designer should allow you to get to something like this eg. resize the width of fields</dd>
                </dl>
                <p>See <a href="http://www.ssw.com.au/ssw/standards/rules/RulestoBetterInterfaces-Forms.aspx#SizeSpacing">Do you follow the control size and spacing standards?</a></p>
        </li>

        <li>
            <h2><a name="StatusReason"></a>Workflow - Help me have a better "Status Reason" Message</h2>
                <p><span style="font-weight: bold; color: red">* TODO: Zune to add repro steps with Adam *</span></p>
                <p>See the 6th and 7th record (yellow parts) below, it would be better to change the "Status Reason" message from "Waiting For Resources" to "Waiting For Resources - Check the service 'Microsoft CRM Asynchronous Processing Service' is running". Because it took too long to work out:</p>
                <dl class="image">
                    <dt><img src="Images/CRMStatusReason.gif" alt="Status Reason Message" /></dt>
                    <dd>Figure: The message "Waiting For Resources" took too long to work out</dd>
                </dl>
        </li>

        <li>
            <h2><a name="LaptopSQL"></a>CRM Laptop Client Installer - Help me have an option to use local SQL Server (if already installed)</h2>
                <p>PCs already run slow enough. And installing SQL Server Express 2005 is a heavy thing and if it can be avoided, it should. The installer should have an option to point it at your current SQL Server (if installed), rather than installing a new instance.</p>
        </li>

        <li>
            <h2><a name="PriceField"></a>Campaign - Help me have campaign estimated revenue in default view</h2>
                <p>In default view for Campaigns you cannot easily see all the estimate revenue for all campaigns.</p>
                <p>Estimated revenue is available after expanding the campaign but on a section by section basis.</p>
                <p>It would be better to show this as an extra column as well as showing all campaigns estimated revenue, you can then sort from highest to lowest.</p>
                <dl class="image">
                    <dt><img src="Images/CRM_Campaign.jpg" alt="Estimated revenue not shown in default view"></dt>
                    <dd>Figure: Estimated revenue not shown in default view</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/CRM_Campaign_Estimate.jpg" alt="Estimated revenue hidden in expansion (but you can't sort on it down here)"></dt>
                    <dd>Figure: Estimated revenue hidden in expansion (but you can't sort on it down here)</dd>
                </dl>
                <p>Tip: Use the kendo grid from Telerik - it does this</p>
        </li>

        <li>
            <h2><a name="DisplaySalesStage"></a>Campaign - Help me have sales stage to be displayed on the form and have a predefined probability value</h2>
                <p>It's understood that different organizations have different sales stage regarding their opportunities. However the sales stage field should be shown on the form by default make users aware of this attribute and avoid them creating a custom attribute. Each sales stage should have a predefined probability value that is configurable via CRM UI not by hard-coding these values in JavaScript.</p>
                <dl class="image">
                    <dt><img src="Images/CRM_SS_01.JPG" alt="Custom Opportunity"></dt>
                    <dd>Figure: Custom opportunity in CRM</dd>
                </dl>
                <p style="color:Red; font-weight:bold;">TODO: ADAM Fix image by cleaning thread 'RE: Please enable Sales Stage field in SSW CRM'<br />
                TODO: Adam check the Breadcrumbs in the process</p>
        </li>

        <li>
            <h2><a name="EditReportLayout"></a>Report - Help me select a template to choose my companies colors</h2>
                <p>There is a workaround for this problem, where you can:</p>
                <ol>
                    <li>Export the .rdl to desk top from CRM, then </li>
                    <li>Open In VS.NET</li>
                    <li>Add header, footer and logo</li>
                    <li>Come back to CRM and re-upload it</li>
                </ol>
                <p>However this is not enough. It should be like the email template and mail merge template. Then it is used for everything...</p>
                <p>Any report which is created by the CRM Report Designer has a standard CRM look and feel. It would be better if there was a template that we could choose from while designing the report.</p>
                <dl class="image">
                    <dt><img src="Images/CRMReport.gif" alt="CRM report layout from Report Designer" /></dt>
                    <dd>Figure: CRM report layout from Report Designer</dd>
                </dl>
                <p style="color:Red; font-weight:bold;">TODO: Check the instructions</p>
        </li>

        <li><a name="AddTextToReport"></a>
            <h2>Report - Help me add text at the top of a report</h2>
                <p>The CRM Report Designer should allow a user to add text at the top of a report.</p>
                <dl class="image">
                    <dt><img src="Images/CRMReportTextOnTop.gif" alt="CRM Report with text added on top by using Report Builder 2.0" /></dt>
                    <dd>Figure: We have to download the report and edit it using Report Builder 2.0 to add some text on top of the report.</dd>
                </dl>
        </li>

        <li>
            <h2><a name="RemoveAttributeOnForm"></a>Web Service - Help me remove an attribute on the form</h2>
                <p><span style="font-weight: bold; color: red">* TODO: Adam to record a demo *</span></p>
                <p>The CRM Web Service does not have a method which removes the attribute from the form. You have to do it manually through CRM Web UI:</p>
                <ol>
                    <li>If attribute is not a required field then go to step 3.</li>
                    <li>Set attribute to be not required field</li>
                    <li>Save and publish the changes</li>
                    <li>Remove attribute from the form</li>
                    <li>Save and publish the changes</li>
                    <li>Remove attribute from the entity</li>
                    <li>Save and publish the changes</li>
                </ol>
        </li>

        <li>
            <h2><a name="RecurringAppointment"></a>Scheduler - Help me create recurring appointments</h2>
                <p>Microsoft Dynamics CRM 4 allows you to create an appointment:</p>
                <ul>
                    <li>Via the Web UI (New Activity | Appointment)</li>
                    <li>Via the Web UI (Service Calendar | New Service Activity)</li>
                    <li>Via Outlook (New Appointment | Track In CRM)</li>
                </ul>
                <p>To reproduce the problem, create a recurring appointment by:</p>
                <ol>
                    <li>Create an appointment in Outlook</li>
                    <li>Click "Recurrence"</li>
                    <li>Enter recurring time and pattern</li>
                    <li>Click "Track in CRM"</li>
                    <li>Click "Send"</li>
                </ol>
                <p>You will get the following error message from CRM 4.0 outlook add in:</p>
                <dl class="image">
                    <dt><img src="Images/CRMOutlookRecurringAppointmentError.gif" alt="Recurring appointment error in Outlook"></dt>
                    <dd>Figure: Please remove this error message in Outlook and support recurring appointments</dd>
                </dl>
                <dl class="code">
                    <dt>
                        <pre>Recurring appointments are not supported in Microsoft Dynamics CRM. If you continue, then the item will not be linked to Microsoft Dynamics CRM. Do you want to continue?</pre>
                    </dt>
                    <dd>Figure: Adding the above message box as text for Google to see</dd>
                </dl>
        </li>

        <li>
            <h2><a name="Customizations"></a>Customizations - Help me read Customization file</h2>	 
		        <p>In the customizations file: </p>
		        <ul>
			        <li>Format the XML correctly.</li>
			        <li>List the customizations that were done in comments at the top. E.g. <br />
			            &nbsp;&nbsp;&nbsp;&nbsp;There are 2 Customizations: <br />
			            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-  Custom Entity 'Timesheet'<br />
			            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-  Custom Entity 'Work Item'
                    </li>
                </ul>
                <dl class="image">
                    <dt><img src="Images/CRMCustomizations.gif" alt="Export Customizations" /></dt>
                    <dd>Figure: Customizations file is unreadable</dd>
                </dl>
                <p style="color:Red; font-weight:bold;">TODO: This may have been fixed in CRM 2011<br />
                TODO: DIMAZ HAS A CODE PLEX TOOL</p>
        </li>

        <li>
            <h2><a name="CardspaceAndWCF"></a>Security - Help me have Cardspace and WCF support</h2>
                <p>Cardspace will only start being implemented by sites when customers are demanding it. The more products and services that support Cardspace the greater the potential it has to become mainstream/popular.</p>
                <p>Currently CRM 4.0:</p>
                <ul>
                    <li>Use standard 2.0 Web Services</li>
                    <li>Support Live ID</li>
                </ul>
                <p>The CRM team will issue 4.1 with support for:</p>
                <ul>
                    <li>WCF</li>
                    <li>Cardspace</li>
                </ul>
        </li>

        <li>
            <h2><a name="CheckBox"></a>Out of the box - Help me change option group to checkbox</h2>
                <p>It is better to use checkboxes for contact methods instead of option group.</p>
                <dl class="badImage">
                    <dt><img src="Images/CRMDefaultContactMethodOptions.gif" alt="Option group for contact methods"></dt>
                    <dd>Figure: Bad Example - By default CRM uses option group for contact methods which is bad design.</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/CRMContactMethodsWithCheckboxes.gif" alt="Option group for contact methods"></dt>
                    <dd>Figure: Good Example - Using checkboxes provides a clear and simple interface.</dd>
                </dl>
                <p>See our rule <a href="/SSW/Standards/Rules/RulestoBetterMicrosoftCRM.aspx#UseCheckBox">Do you change contact method options from default option group to checkboxes?</a> for instructions on how to change from option group to checkboxes.</p>
        </li>

        <li>
            <h2><a name="EmailTemplate"></a>Email - Help me have an option for specifying a path to a .html file for an email template</h2>
                <p>CRM 4's email template needs to give an option to use a HTML file. This .html file would be used for the email body, because for professional newsletters you need to tweak the actual HTML.</p>
                <p>For example, you need to check that your newsletter will be rendered nicely in Gmail - this means tweaking HTML manually</p>
                <dl class="badImage">
                    <dt><img src="Images/CRMEmailTemplate.gif" alt="CRM Email Template"></dt>
                    <dd>Figure: Bad Example - The CRM 4.0 template does not allow you to specify a path to a HTML file</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/EmailMergeProStep2Big.gif" alt="HtmlRedirection" /></dt>
                    <dd>Figure: Good Example - You can specify a path to a HTML file in <a href="/ssw/Redirect/EmailMergePro.htm"> Email Merge PRO</a></dd>
                </dl>
        </li>

        <li>
            <h2><a name="EditCompletedTask"></a>Out of the box - Help me edit a completed task</h2>
                <dl class="image">
                    <dt><img src="Images/AnotherOption_EditTask.jpg" alt="Add another option to edit the completed task" /></dt>
                    <dd>Figure: Need another option Action | Edit Task</dd>
                </dl>
        </li>

        <li>
            <h2><a name="CustomSearchResults"></a>SharePoint Integration - Add a custom Search Results page as part of the CRM Search Accelerator</h2>
                <p>Either add a new custom Search Results page for use within SharePoint, or provide instructions as to how to customize an exist page with the following functionality:</p>   
                <ol>
                    <li>Change icon for a CRM search result to a CRM icon</li>
                    <li>The link provided to the search result item should open the CRM page itself</li>
                    <li>There should be a link next to the CRM link that says Cached Result (like Google) and opens a page with the cached results hosted within SharePoint</li>
                </ol>
                <dl class="badImage">
                    <dt><img src="Images/CustomerSearchResults.jpg" alt=" You can't see the CRM icon and the link which links to the CRM page."></dt>
                    <dd>Figure: Bad Example - There isn't a CRM icon and a link which links to the CRM page itself.</dd>
                </dl>
                <ul>
                    <li>Contact shows an IE icon</li>
                    <li>Search item links to the SharePoint hosted cached results only</li>
                </ul>
        </li>

        <li>
            <h2><a name="OWAIntegration"></a>Exchange - Help me have OWA integration with CRM 4</h2>
                <p>Please work with the Exchange Team to solve this.</p>
                <p>CRM 4.0 provides an Outlook add-in which enables users to access and modify CRM data via Outlook. However there is no add-in to integrate Outlook Web Access with CRM 4.0. This means that:</p>
                <ul>    
                    <li>Any changes to appointments, tasks, email... being made via Outlook Web Access won't be synchronized with CRM data.</li>
                    <li>Since CRM 4.0 Outlook add-in only works with default profile. You cannot use CRM 4.0 via Outlook as another user until you log off that computer and sign in as another user.</li>
                </ul>
        </li>

        <li>
            <h2><a name="URLForReports"></a>Give URLs for reports</h2>
                <p>Allow me to copy the reports URL, so I can IM it to someone</p>
                <dl class="badImage">
                    <dt><img src="Images/ReportViewerWithoutURL.jpg" alt="Report Viewer without URL "></dt>
                    <dd>Figure: Bad Example - Report Viewer don't have an URL for copying.</dd>
                </dl>
        </li>
        
        <li>
            <h2><a name="RecordsAndPages"></a>Campaigns - Help me have some idea how many records or pages</h2>
                <p>(This applies to all lists in CRM)<br />
                        We are moving our email newsletter to CRM 4 and have found that lists could work better. As an example if you are creating a quick campaign with 40,000 recipients, you want to know where it is up to while it is processing.</p>
                       <dl class="goodImage">
                         <dt>
                           <img src="Images/BestPageNavigationUI.jpg" alt="The Best Page Navigation UI"></dt>
                          <dd>
                           Figure: A text box to enter the page you want to go to, is the best page navigation UI</dd></dl>
                       <ul>
                         The out of the box experience should be better. I suggest changing the Footer to:
                         <li>"1 - 250 of 45,000 (5 selected)"&nbsp;&nbsp;&nbsp;&nbsp; *Fixed in CRM 2011 ?thank you </li>
                         <li>"Page 9 of xx" &nbsp;&nbsp;&nbsp;&nbsp;<span color="red">*Not Fixed in CRM 2011*</span></li>
                         <li>Having a text box like Adobe reader does&nbsp;&nbsp;&nbsp;&nbsp;<span color="red"> *Not Fixed in CRM 2011*</span></li>
                       </ul>
                       <p>Note: There is a <a href="http://a33ik.blogspot.com/2009/09/supported-record-counter-for-microsoft.html">nice albeit funny workaround by Andriy Butenko that adds an extra record to the first line with this information</a></p>
                       <dl class="goodImage">
                         <dt>
                           <img src="Images/GetDownToTheLastPage.jpg" alt="Get to the last page quickly"></dt>
                          <dd>
                           Figure: Help me get to the last page quickly... give us "Page 9 of xx"</dd></dl>
                </li>
                <li>
                  <h2><a name="Improvements"></a>Improvements for the service calendar</h2>
                  <ol>
                    The service calendar is a great way to schedule resources and keep track of what everyone is working on, however, there are a couple of things that would make it even more usable:
                    <li>The Resources should be able to be grouped by site or employee type as default (instead of having to manually sort each time)</li>
                    <li>You should be able to select a default type and view (instead of having to navigate to it each time)</li>
                    <li>Weekends should not be displayed if they're empty, only if there's something scheduled on them</li>
                  </ol>
                  <dl class="image">
                         <dt>
                           <img src="Images/ItemOnServiceCalendar.jpg" alt="Items On Service Calendar"></dt>
                          <dd>
                           </dd></dl>
                </li>
                 <li>
                   <h2><a name="HighLatency"></a>Add support for High Latency!</h2>
                    <p>When working on CRM from remote locations there is often high latency.</p>
                    <dl class="image">
                         <dt>
                           <img src="Images/GoodLatency.jpg" alt="Good latency at night "></dt>
                          <dd>
                            Figure: Good latency from UK to Aus during the night in Aus</dd></dl>
                    <p>This causes CRM to disconnect and for Outlook to freeze when connecting. CRM should have a proper threading model in its application so it does not make the user wait for extended periods of time.</p>
                 </li> 
                 <li>
                  <h2><a name="ServiceActivities"></a>Help me be able to use 'Service Activities' as native Outlook Appointments</h2>
                   <dl class="image">
                         <dt>
                           <img src="Images/DoubleClick.jpg" alt="Double Click"></dt>
                          <dd>
                            Figure: Double clicking does not open an Outlook Appointment (like other entities do)</dd></dl>             
                 <p>
                  In Outlook 2010 with the CRM Add-in a service activity can be synchronized to your calendar. Great.  But when you double click it, it opens in the CRM web application.<br />
                 This should open as an appointment natively in the Outlook client, rather than just a short-cut.  It should only open the CRM service activity if we click "View in CRM".
                 </p>
                  <dl class="image">
                         <dt>
                           <img src="Images/AppointmentOpenInWA.jpg" alt="Appointment Opened In WA"></dt>
                          <dd>
                            Figure: The appointment actually opens as expected in Outlook Web Access</dd></dl>
                  <p>For more info see <a href="/ssw/Standards/Rules/RulestoBetterMicrosoftCRM.aspx">xxxxxOTHER RULE YOU JUST CREATED WITH OTHER SUBJECTx</a></p>
                 </li>
                 <li>
                  <h2><a name="FullFooter"></a>CRM 4 - Use full footer</h2>
                  <p>When this report prints, it should show the date it was printed and the report name in the footer. </p>
                   <dl class="image">
                         <dt>
                           <img src="Images/DateAndReportName.jpg" alt="Date and report name"></dt>
                          <dd></dd></dl>
                   <p>
                    It should be the same as this: <a href="/ssw/standards/rules/rulestobetterSQlreportingservices.aspx#UsefulFooter">http://www.ssw.com.au/ssw/standards/rules/rulestobetterSQlreportingservices.aspx#UsefulFooter</a> </p>
                 </li>
                 <li>
                  <h2><a name="DrillDown"></a>CRM 4 drill down not working in Activities report</h2>
                   <dl class="image">
                         <dt>
                           <img src="Images/HyperlinkNotUnderlined.jpg" alt="The hyperlink isn't underlined."></dt>
                          <dd>Figure: The hyperlink "RE: Consulting" is not underlined and the drill down report that it links to does not show any records</dd></dl>
                   <p>When using the "Activities" report and drilled down to a particular user's email and it opened to a blank webpage when I clicked on that email.</p>
                   <ol>
                   In  summary:
                   <li>All hyperlinks should be underlined</li>
	               <li>The link currently goes to a blank page. This should be fixed.</li>	         
                   </ol>
                 </li>
    </ol>
    
    <h2>Acknowledgements</h2>
    <p><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></p>

</asp:content>