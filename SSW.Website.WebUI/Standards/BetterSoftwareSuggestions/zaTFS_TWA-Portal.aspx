<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="Microsoft TFS 2010 Team Web Access (TWA) + the SharePoint Portal Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
        <div class="TableOfContents">
            <h3>Microsoft TFS 2010 Team Web Access (TWA) + the SharePoint Portal Suggestions</h3>
            <ol>
                <li><a href="#ReportBugs">TFSWA - Help me allow the world end users to report bugs into TFS</a></li>
                <li><a href="#RichEdit">TFSWA - Help me have a rich editing experience on Work Items</a></li>
                <li><a href="#ClearerIcon">SharePoint Site - Make the Project icons clearer (little one)</a></li>
                <li><a href="#VisitedLinks">SharePoint Site - Support different colors for visited links (little one)</a></li>
                <li><a href="#FederatedAuthentication">TFSWA - Federated Authentication - Make TFS use Cardspace for Authentication</a></li>
                <li><a href="#SharepointLibrary">SharePoint - Link the SharePoint Document Library to Source Control</a></li>
                <li><a href="#WebEmailAttached">TFSWA - Add a new option "Send as email with .msg attached"</a></li>
                <li><a href="#UserExperience">TFSWA - User Experience - SharePoint, CRM and TFSWA Web UI</a></li>
                <li><a href="#WebUI">TFSWA - Add to the Web UI the ability to give a URL to any file?</a></li>
                <li><a href="#VSTSAlerts">TFSWA - Alerts should include the history (like an email)</a></li>
                <li><a href="#VSTSProcessTemplateEditor">TFSWA - Add a Team System Process Template Editor</a></li>
                <li><a href="#VSTSDiff">TFSWA - On the Alerts attach a .diff file</a></li>
                <li><a href="#VSTSCustomizeWorkItemUI">TFSWA - Give us the ability to Customize the Work Item UI in VS.NET </a></li>
                <li><a href="#VSTSDeleteWorkItem">TFSWA - Add a way to delete a Bug/Task</a></li>
                <li><a href="#NoRollback">TFSWA - Why is there no Rollback? </a></li>
                <li><a href="#SearchWIT">TFSWA - Add a "Search box" to search for work items</a></li>
                <li><a href="#TFSSPPortal">TFS SharePoint Portal 2010 (little one)</a></li>
                <li><a href="#LoseTab">Suggestion for TFSWA 2010</a></li>
                <li><a href="#Breadcrum">TSWA - Add breadcrumbs</a></li>
                <li><a href="#SearchUI">TWA - Suggestions for Search UI</a></li>
                <li><a href="#EnableIMTheURL">TWA - Enable me to IM the URL </a></li>
                <li><a href="#ShowURL">TWA - show URLs </a></li>
            </ol>
        </div>
        
        <ol>   
            <li>
                <h2><a name="ReportBugs"></a>TFSWA - Help me allow the world end users to report bugs into TFS</h2>
                <p>I want every bug in the world to have a unique URL.</p>
                <p>I want every company that owns TFS to have the equivalent of the Microsoft connect site.</p>
                <p>Today too many feature requests and bugs are discussed in conversations of people's blogs. I have a dream that all companies using TFS should have their current bugs and feature requests on the web at <a href="/SSW/Redirect/TFS_TFS.htm">tfs.northwind.com</a>. Then in their blog posts, people should reference the source - the public URL of the bug/suggestion.</p>
                <p>The portal must:</p>
                <ul>
                    <li>Have a unique URL for every bug</li>
                    <li>Allow you to subscribe to be notified when a fix has been released</li>
                    <li>Have voting</li>
                </ul>
                <p>Note: An Internet connector license costs approximately USD $15K which is too costly for anyone who wants to make TFS use, as ubiquitous as blogs are on the Internet.</p>
                <dl class="image">
                    <dt><img src="Images/TFS_BUG_01.jpg" alt="Atlassian's feature portal" /></dt>
                    <dd>Figure: Atlassian have it right with their feature requests portal</dd>
                </dl>
            </li>

            <li>
                <h2><a name="RichEdit"></a>TFSWA - Help me have a rich editing experience on Work Items</h2>
                <p>In TFS OWA give us a real "edit" button. Give us a rich client experience using Silverlight. (Or Click Once - like Report Builder inside SQL Reporting Services) and you can give us a great Windows Forms Control for Text Editing.</p>
                <p><a href="/ssw/redirect/TFS_HTMLoutput.htm">Here is some free .NET code for a Windows Forms based text editor with HTML output</a>.</p>
                <p>Or use a 3rd Party editor. Here is one <a href="/ssw/redirect/TFS_AsposeEditor.htm"> Aspose.Editor</a> (doesn't appear to be anything better)</p>
                <dl class="image">
                    <dt><img src="Images/TFS_01_01.jpg" alt="Aspose Editor" /></dt>
                    <dd>Figure: TFSWA needs a HTML description field. E.g. the Aspose.Editor allows you to paste in an image. <a href="/SSW/Redirect/TFS_DEMO.htm">See it in action yourself</a></dd>
                </dl>
            </li>

            <li>
                <h2><a name="ClearerIcon"></a>SharePoint Site - Make the Project icons clearer (little one)</h2>
                <p>The project icons need to be clearer.</p>
                <dl class="image">
                    <dt><img src="Images/ClearerIcon.gif" alt="similar icons" ></dt>
                    <dd>Figure: The icon for project document and excel document are too similar</dd>
                </dl>
            </li>

            <li>
                <h2><a name="VisitedLinks"></a>SharePoint Site - Support different colors for visited links (little one)</h2>
                <p>The SharePoint site should support different colors for visited links.</p>
                <dl class="image">
                    <dt><img src="Images/VisitedLinks.gif" alt="visited links with the same colour" border="0" width="838" height="426"></dt>
                    <dd>Figure: The visited links should be in different colours</dd>
                </dl>
                <p>We have a rule about this in Rule to Better Website - Navigation: <a href="/ssw/Standards/Rules/RulesToBetterWebsitesNavigation.aspx#visitedlink">Do you make sure users can see Visited Links?</a></p>
            </li>
         
            <li>
                <h2><a name="FederatedAuthentication"></a>TFSWA - Federated Authentication - Make TFS use Cardspace for Authentication</h2>
                <p>It would be nice if TFS could use Cardspace for authentication instead of using Integrated Windows Authentication.</p>
                <p>This would allow one click authentication e.g. In a non domain connected scenario like hosted TFS.</p>
                <p>Note: Also support Open ID (but this is a low priority)</p>
            </li>

            <li>
                <h2><a name="SharepointLibrary"></a>SharePoint - Link the SharePoint Document Library to Source Control</h2>
                <p>It would be nice to be able to check a file into source control and be able to have it appear as a document on SharePoint as well.<br />
                   The best solution for this is: when a SharePoint user requests a document, SharePoint gets the latest version from Source Control and gives it to the user. In this way, non developers can also access documents in Source Control without having to know about TFS.</p>
                <p>Note #1: Unfortunately this solution gives 2 sources of truth - but I will think of it in TFS - the proper source control system.</p>
                <p>Note #2: I hate this doubling up - the disk space issue - but it is better than only having them in SharePoint</p>
            </li>

            <li>
                <h2><a name="WebEmailAttached"></a>TFSWA - Add a new option "Send as email with .msg attached"</h2>
                <p>In TFS Web Access, when we complete a work item, we send an email via the "Tools" menu. The problem is the images are lost. We use TeamLook to put the work item here (from an email) and the original email is attached (a .msg file lives in "File Attachments" of the work item).So we would like an option of 'Send as Email (with attachments)'.</p>
                <dl class="image">
                    <dt><img src="Images/WebEmailAttach.jpg" alt="Send as Email" /></dt>
                    <dd>Figure: Add option to Tools menu - 'Send as Email (with attachments)'</dd>
                </dl>
                <p>In Team Explorer, we would like this functionality as well.</p>
                <dl class="image">
                    <dt><img src="Images/TFSEmailAttach.jpg" alt="Send Selection in Email" /></dt>
                    <dd>Figure: Add context menu - 'Send as Email (with attachments)'</dd>
                </dl>
            </li>

            <li>
                <h2><a name="UserExperience"></a>TFSWA - User Experience - SharePoint, CRM and TFSWA Web UI</h2>
                <p>CRM, SharePoint and TFS (Web Access) are inconsistent to end users. The different user experience might make users confused.</p>
                <p>See our CRM suggestion <a href="/ssw/Standards/BetterSoftwareSuggestions/crm.aspx#UserExperience">User Experience - SharePoint, CRM and TFSWA Web UI</a>.</p>
            </li>

            <li>
                <h2><a name="WebUI"></a>TFSWA - Add to the Web UI the ability to give a URL to any file?</h2>
                <p>Team System Web Access (aka TFSWA) is good, but needs for support for Source Control and nice URLs.</p>
                <p> want to be able to right click on a source code file and select "Copy URL to clipboard (so I can IM someone else)?</p>
                <dl class="image">
                    <dt><img src="Images/OWA.gif" alt="OWA" border="0" width="950" height="267"></dt>
                    <dd>Figure: I can give a URL to a specific email in a public folder - I want to give a URL to a specific code file in a TFS project</dd>
                </dl>
            </li>
            
            <li>
                <h2><a name="VSTSAlerts"></a>TFSWA - Alerts should include the history (like an email)</h2>
                <p>We want the alerts to respond with the history like an email, because of this we had to add this functionality into Extreme Emails.</p>
                <p>We would have preferred Microsoft to solve this problem.</p>
                <dl class="image">
                    <dt><img src="Images/EmailHistory.jpg" width="645" height="519" border="1" alt="History of WorkItem Status"></dt>
                    <dd>Figure: WorkItem alert notifications should include the history like an email</dd>
                </dl>
            </li>

            <li>
                <h2><a name="VSTSProcessTemplateEditor"></a>TFSWA - Add a Team System Process Template Editor</h2>
                <p>Microsoft should provide a GUI to modify or customize the process templates. Here is an example of editor:</p>
                <p><a href="/SSW/Redirect/GotDotNet2.htm">http://www.gotdotnet.com/Workspaces/Workspace.aspx?id=812a68af-5e74-48c6-9623-1a4469142a84</a></p>
                <dl class="image">
                    <dt><img src="Images/PTEditor.jpg" width="800" height="606" alt="Process Template Editor"></dt>
                    <dd>Figure: Sample software for Process Template Editor.</dd>
                </dl>
            </li>

            <li>
                <h2><a name="VSTSDiff"></a>TFSWA - On the Alerts attach a .diff file</h2>
                <p>On alert email it should attach .diff file to show the difference between original and the changed file.</p>
            </li>

            <li>
                <h2><a name="VSTSCustomizeWorkItemUI"></a>TFSWA - Give us the ability to Customize the Work Item UI in VS.NET</h2>
                <p>We should be able to modify or customize the WorkItem GUI in VS.NET according to our need.</p>
                <dl class="image">
                    <dt><img src="Images/CustomUI.jpg" width="677" height="526" alt="Customize the WorkItem UI"></dt>
                    <dd>Figure: WorkItem UI in VS.NET should be customized so I could remove these 2 fields as an example</dd>
                </dl>
            </li>

            <li>
                <h2><a name="VSTSDeleteWorkItem"></a>TFSWA - Add a way to delete a Bug/Task</h2>
                <p>We should be able to delete the unused/fake WorkItems.</p>
            </li>

            <li>
                <h2><a name="NoRollback"></a>TFSWA - Why is there no Rollback?</h2>
                <p>There's no easy way to rollback to an earlier change set. You have to do some copy and paste jobs manually.<br />
                    Or you can use <a href="/ssw/Redirect/TFSPowerToys.htm">TFS Power Toys</a>. TFS Power Toys provide a few functionalities like Unshelve, Rollback, Get Changeset, etc...<br />
                    The latest TFS Power Toys can be downloaded from Microsoft.<br />
                    Now the question is... why are all these basic source control functionalities missing from TFS?</p>
            </li>

            <li>
                <h2><a name="SearchWIT"></a>TFSWA - Add a "Search box" to search for work items</h2>
                <p>Users should expect:</p>
                <ol>
                    <li>it to work like outlook.</li>
                    <li>it to display like outlook</li>
                </ol>
                <p>should it support the 3 things I use on an hourly basis?</p>
                <p>For example: From:brian "work item" -randell</p>
                <p>PS: Not important, but if you get time, add one clever thing. When I type 'May', give me a list of work items where the work item's start date is in that range e.g. 30/5/2000</p>
                <p>PPS: Until we get this feature, Corneliu's (the smartest Romanian in the world) VS Quick Search plugin: <a href="/SSW/Redirect/TFS_QSP.htm">TFS Quick Search Plugin 1.2 (for VS2005 and VS2008)</a></p>
                <dl class="image">
                    <dt><img src="Images/TFS_SearchWIT.JPG" alt="Use the tool to search Work Items" /></dt>
                    <dd>Figure: The current way of finding work items is not good enough.</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/TFS_SearchWITLikeThis.JPG" alt="Search should like Outlook" /></dt>
                    <dd>Figure: We need Work Item Text Search to support the 3 most filters.</dd>
                </dl>
            </li>

            <li>
                <h2><a name="TFSSPPortal"></a>TFS SharePoint Portal 2010 (little one)</h2>
                <dl class="image">
                    <dt><img src="Images/RefreshIcon.JPG" alt="We need two more green icons in the areas" /></dt>
                    <dd>Figure: Refreshing the Portal - These 2 areas should also have the green icon (a smaller icon), so the user eyes sees all the places the data will be refreshed</dd>
                </dl>
            </li>

            <li>
                <h2><a name="LoseTab"></a>Suggestion for TFSWA 2010</h2>
                <p>Little one... you never know</p>
                <dl class="image">
                    <dt><img src="Images/CurrentTabLose.JPG" alt="I click 'Refresh' on the second tab, but it forgot that I was in the 2nd tab. " /></dt>
                    <dd>Figure: If I click "Refresh", the current tab should be remembered</dd>
                </dl>
            </li>

            <li>
                <h2><a name="Breadcrum"></a>TSWA - Add breadcrumbs</h2>
                <p>Breadcrumbs please (or the navigation menu in SharePoint 2010 )</p>
                <dl class="image">
                    <dt><img src="Images/NoBreadcrum.JPG" alt="We need a breadcrum" /></dt>
                    <dd>Figure: For example in this case, the breadcrumb would take you to this URL: http://projects.ssw.com.au/tfs/Northwind/ </dd>
                </dl>
            </li>

            <li>
                <h2>
                    <a name="SearchUI"></a>TWA - Suggestions for Search UI</h2>
                <p>
                    I have been watching a few users who thought there was no search in TWA. Turns out
                    they want to search on the description and are looking in the top right (which is
                    the standard location for search on web sites).
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/NormalPosition.JPG" alt="Normal position of the search box" /></dt>
                    <dd>
                        Figure: The Search box should be in the normal position of top right. Also the "Go!"
                        button should be renamed to "Search"
                    </dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/SearchForMore.JPG" alt="SP project dashboard needs the ability to search for more." /></dt>
                    <dd>Figure: The SharePoint Project Dashboard also needs the ability to search for more than the Work Item ID :)</dd>
                </dl>
            </li>
            <li>
              <h2><a name="EnableIMTheURL"></a>TWA - Enable me to IM the URL </h2>
              <p>Can we have the URL updated after the 'Search' button is clicked?</p>
              <dl class="image">
                    <dt><img src="Images/URLUpdated.JPG" alt="the URL updated " /></dt>
                    <dd>Figure: Can we have the URL updated after the 'Search' button is clicked?</dd>
                </dl>
            </li>
            <li>
              <h2><a name="ShowURL">TWA - show URLs </a></h2>
             <p>I know you can click the link, but my class today in Canberra had 40 brand new users in it, and 1 found the URL.</p>
             <dl class="image">
                    <dt><img src="Images/AWindowWithoutURL.JPG" alt="A window without the url " /></dt>
                    <dd>Figure: When a project manager double clicks a work item, then get a window without the URL.</dd>
                </dl>
            </li>

        </ol>

        <h2>Acknowledgements</h2>
        <p><a href="/people/adam-cogan">Adam Cogan</a><br>
           <a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Peter.aspx">Peter Gfader</a></p>
</asp:Content>
