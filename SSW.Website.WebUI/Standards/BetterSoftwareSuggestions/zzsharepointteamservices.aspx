
<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft SharePoint (MOSS + WSS) Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
        <div class="TableOfContents">
            <ol>
                <li><a href="#UserExperience">User Experience - SharePoint, CRM and TFSWA Web UI</a></li>
                <li><a href="#PassportIntegration">SharePoint should have out of the box Live (was Passport) Integration</a></li>
                <li><a href="#SharePointDiscussions">Discussions - Make SharePoint Discussions work as well as Newsgroups in Outlook Express</a></li>
                <li><a href="#SharePointSubject">The subject should not change per thread because it ruins "Conversation View" in outlook</a></li>
                <li><a href="#ShowEntireMessage">Add a CheckBox to show entire message (rather than cropped message)</a></li>
                <li><a href="#UnderlineAttachment">Attachments are hyperlinks and should be underlined</a></li>
                <li><a href="#ExtendedTemplates">Extended Templates</a></li>
                <li><a href="#AddNote">Add a note for multiple content types</a></li>
                <li><a href="#Excel">MOSS 2007 export to Excel to behave in the same manner as VSTS export to Excel</a></li>
                <li><a href="#TimeSheet">Add TimeSheet to SharePoint 2007</a></li>
                <li><a href="#Document">General List/Document Library Improvements</a></li>
                <li><a href="#Excel">Excel Services Improvements</a></li>
                <li><a href="#Catalog">Business Data Catalog Improvements</a></li>
                <li><a href="#SearchHighlight">The default search experience should use yellow highlighting</a></li>
                <li><a href="#HideURL">Hide the ugly URLs</a></li>
                <li><a href="#AddMoveInMenu">Please add a 'Move to another folder' to the right click menu</a></li>
                <li><a href="#BugReport">Bug - SharePoint Record Center - Record Center Holds Report Doesn't Open</a></li>
                <li><a href="#BugLibraries">Bug - SharePoint Libraries - Content Type item descriptions appear on some libraries and not others</a></li>
                <li><a href="#BugRouting">Bug - SharePoint Records Center - Routing Issue: default routing goes to wrong library, not "Unclassified Library"</a></li>
                <li><a href="#ExactMatch">Why do I need to have an exact match?</a></li>
                <li><a href="#URL">Why I can't easily change the URL?</a></li>
                <li><a href="#ResultsInComboBoxes">SharePoint should include the number of results in ComboBoxes</a></li>
                <li><a href="#AllowContributorsAddNewPages">BUG - Why can't MOSS publishing contributors add new pages?</a></li>
                <li><a href="#SuggestionToSP2007">SharePoint should make changing URLs easy</a></li>
                <li><a href="#ChangeDateFormatShouldBeEasier">Change the date format should be easier</a></li>
                <li><a href="#DiscussionBoardwithAlertPush">Discussion Board with Alert Push</a></li>
                <li><a href="#NiceURLs">Give me nice URLs</a></li>
                <li><a href="#ModifiedByField">Why does SharePoint change the Modified By field when a publishing workflow is started?</a></li>
                <li><a href="#BlogTemplate">Blog template lacks of some key features</a></li>
                <li><a href="#DiscussionBoard">The Discussion Board needs to support voting and rating posts</a></li>
                <li><a href="#NavigationBug">Fix navigation bug while in edit mode</a></li>
                <li><a href="#BugAjax">Bug - Ajax UpdatePanel could not be used in Publishing site template</a> </li>
                <li><a href="#MossPage">In moss the page title gets changed after an Ajax postback (when Ajax method is invoked)</a> </li>
                <li><a href="#SPVisualDev">Make something as cool as SPVisualDev (from CodePlex) - we want RAD development</a> </li>
                <li><a href="#CustDev">Help stop the divide between Customization and Development</a> </li>
                <li><a href="#RSSearch">Search for Reporting Services reports in SharePoint</a></li>
                <li><a href="#CustomizeListView">Make the List view schema readable</a></li>
                <li><a href="#CalFieldsVolatileFunctions">SharePoint Calcuated Field should allow volatile functions like Today and Me.</a></li>
                <li><a href="#ValidateData">Help me validate data without a server round trip</a></li>
                <li><a href="#CreateFilter">Create filters for SharePoint List</a></li>
                <li><a href="#VersionHistory">Version History Page should have filter for the unchanged content</a></li>
                <li><a href="#SharePointPageName">There should be a page name field on the SharePoint page in the edit mode.</a></li>
                <li><a href="#SPDocument">SharePoint Document Management</a></li>
                <li><a href="#EventManagement">Event management please</a></li>
                <li><a href="#Magnitude">Indicate the magnitude of a page edit</a></li>
                <li><a href="#SP2010LINQLimitation">SharePoint 2010 LINQ Limitations with SpMetal</a></li>
                <li><a href="#ConvertToXHTML">SharePoint 2010 Team - 'Convert to XHTML' is buggy</a></li>
                <li><a href="#PerformanceMetrics">SharePoint 2010 needs performance metrics overlayed on each web part</a></li>
                <li><a href="#CheckOutLowDiskSpace">Need clear message when check-out fails because of running out of disk space</a></li>
                <li><a href="#LINQDesignerSupport">We need more LINQ Designer Support in 2010</a></li>
                <li><a href="#MoveFiles">Moving files around - Cut doesn't Cut</a></li>
                <li><a href="#AddNew">SharePoint Designer 2010 BCS - Add new External Content Type on the list</a></li>
                <li><a href="#BCS">SharePoint Designer 2010 - Suggestion for BCS - Educate me with a picture</a></li>
                <li><a href="#UI">SharePoint Designer 2010 - Some of the UI is frightening</a></li>
                <li><a href="#SampleSite">We need a sample site - like Northwind</a></li>
                <li><a href="#CloseDialog">Help me close the dialog</a></li>
                <li><a href="#SPError">SharePoint 2010 - improve frightening errors</a></li>
                <li><a href="#PowerTools">We need SharePoint 2010 PowerTools</a></li>
                <li><a href="#LinkToAndFrom">Suggestion - Link to (and from) SharePoint Designer 2010 to SharePoint Central Admin</a></li>
                <li><a href="#AddMenu">Make it easier to get images and docs into a SharePoint 2010 image/document library</a></li>
                <li><a href="#WindowArchitecture">Suggestion - fix the window architecture</a></li>
                <li><a href="#RenameTitleBar">Suggestion - rename the title bar</a></li>
                <li><a href="#Localhost">Tell me what to do, to make localhost work</a></li>
                <li><a href="#ErrorMessage">The 'No Permissions' error message is incorrect</a></li>
                <li><a href="#PrintSingleItem">SharePoint 2010 - Help Me Print a Single Item in a List</a></li>
                <li><a href="#AddValidation">SharePoint 2010 - Add validation to "New Alert"</a></li>
                <li><a href="#Workspace">SharePoint Workspace - How did I end up with 2 workspace shortcuts?</a></li>
                <li><a href="#VersionNumber">Add the version number in the app name (like other programs eg. Word 2010)?</a></li>
                <li><a href="#WikiSEO">Suggestions to SharePoint - Wiki SEO</a></li>
                <li><a href="#PasteImgToSP">Help me paste images into SharePoint</a></li>
                <li><a href="#InsertImg">Inserting images </a></li>
                <li><a href="#ClickOnce">SharePoint Designer should be using ClickOnce</a></li>
                <li><a href="#VersionAndPlatform">SharePoint Designer installer should include version and platform information</a></li>
                <li><a href="#PublishFromWorkspace">Let me publish from SharePoint Workspace</a></li>
                <li><a href="#Rating">SharePoint 2010 comments/rating functionality </a></li>
                <li><a href="#BlueIcon">Help me know what the blue icon means</a></li>
                <li><a href="#Differences">Help me see the differences</a></li>
                <li><a href="#MultiplePlacesForURL">Why multiple places of "Site Url" in a BCS Project? </a></li>
                <li><a href="#PageAlternativeURLs">SharePoint pages should support classical althernative URLs</a></li>
            </ol>
        </div>
        <div id="mainContent">
            <ol>
                <li>
                    <h2>
                        <a name="UserExperience"></a>User Experience - SharePoint, CRM and TFSWA Web UI</h2>
                    <p>
                        CRM, SharePoint and TFS (Web Access) are inconsistent to end users. The different user experience might make users confused.
                    </p>
                    <p>
                        See our CRM suggestion <a href="/ssw/Standards/BetterSoftwareSuggestions/crm.aspx#UserExperience">User Experience - SharePoint, CRM and TFSWA Web UI</a>
                    </p>
                </li>
                <li>
                    <h2>
                        <a name="PassportIntegration"></a>SharePoint should have out of the box Live (was Passport) Integration</h2>
                    <p>
                    SharePoint is a great way of sharing information. However, I have access to a number of different portals around the globe, each with a different authentication system, meaning I have to remember heaps of different passwords. Out of the box Passport integration support is a perfect solution 
                    </p>
                 		                <dl class="image">
	                    <dt><img src="Images/SharePointTeam_PassportIntegration.gif" alt="SharePoint team Passport Integration" /></dt>
	                    <dd>Figure: Live (was Passport) authentication would enable access to all SharePoint Websites </dd>
	                </dl>
                    <p>
                        Note: There is an 'Extranet Collaboration Toolkit' for forms based authentication on Microsoft.com - then it is easy to create and manage accounts. 
                        This needs to be in the box.
                    </p>
                </li>
                <li>
                    <h2>
                        <a name="SharePointDiscussions"></a>Discussions - Make SharePoint Discussions work as well as Newsgroups in Outlook Express</h2>
                    <ol>
                        <li>How do I mark items as read?</li>
                        <li>How do I flag threads I like as red? ie. Use Watch</li>
                        <li>How do I read the threads offline? ie. travelling to and from work?</li>
                    </ol>
                    <p>Note: the solution is to come (any list) with an RSS reader eg. RSS Bandit.</p>
                    <p>
                        Discussions are not good enough... really they are aweful - Regular users need a rich client. Only irregular users prefer a browser. So add a button "Offline Discussions" using Click Once of course. I expect both choices... just like I use Outlook 2007 most of the time... but OWA when I am at someone else's PC.
                    </p>
	                <dl class="image">
	                    <dt><img src="Images/SharePointDiscussions.gif" alt="SharePoint Disuccsions" /></dt>
	                    <dd>Figure: SharePoint Discussions in 2003 needed lots of improvements </dd>
	                </dl>
		            <dl class="image">
	                    <dt><img src="Images/SharePointDiscussions_2007.jpg" alt="SharePoint Disuccsions in 2007" /></dt>
	                    <dd>Figure: SharePoint Discussions in 2007 still need lots of improvements.</dd>
	                </dl>
	            </li>
                <li>
                    <h2>
                        <a name="SharePointSubject"></a>The subject should not change per thread because
                        it ruins "Conversation View" in outlook</h2>
                    <p>
                        Bad: Subject: Why I HATE Lookups has been added by neilbl<br>
                        Good: Subject: Why I HATE Lookups
                        <br>
                    </p>
	                <dl class="image">
	                    <dt><img src="Images/SharePointConversationSubject.gif" alt="SharePoint Conversation" /></dt>
	                    <dd>Figure: The subjects for SharePoint Alerts should only have the subject not who added
                        it</dd>
	                </dl>
	            </li>
                <li>
                    <h2>
                        <a name="ShowEntireMessage"></a>Add a CheckBox to show entire message (rather than
                        cropped message)</h2>
                    <p>
                        Add a checkbox<br>
                        &nbsp;&nbsp;&nbsp; [x] show entire message (rather than cropped message)
                    </p>
	                <dl class="image">
	                    <dt><img src="Images/SharePointCroppedMessage1.gif" alt="" /></dt>
	                    <dd>Figure: SharePoint should have an option to show the entire message.</dd>
	                </dl>
                </li>
                <li>
                    <h2>
                        <a name="UnderlineAttachment"></a>Attachments are hyperlinks and should be underlined</h2>
                    <p>
                        Read more about this on <a href="/ssw/Standards/Rules/RulesToBetterWebsitesNavigation.aspx#underline">
                            Rules to Better Websites - Navigation</a>.
                    </p>
	                <dl class="image">
	                    <dt><img src="Images/UnderlineAttachment.gif" alt="" /></dt>
	                    <dd>Figure: Attachments are hyperlinks and should be underlined.</dd>
	                </dl>
                </li>
                <li>
                    <h2>
                        <a name="ExtendedTemplates"></a>Extended Templates</h2>
                    <p>
                        Users think of Content types as Extended Templates?
                    </p>
                    <p>
                        It would help to add a thumbnail of the .dotx or .xltx (if that is what you have
                        assigned inside Advanced Settings)
                    </p>
	                <dl class="image">
	                    <dt><img src="Images/SharePoint_ExtendedTemplates.gif" alt="" /></dt>
	                    <dd>Figure: Extended Templates.</dd>
	                </dl>
               </li>
                <li>
                    <h2>
                        <a name="AddNote"></a>Add a note for multiple content types</h2>
                    <p>
                        When you see the last combo on this page it strikes the user as weird. They ask
                        themselves an I only have one type??
                        <br />
                        So add a note under the combo that says
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<i>Note: You can add multiple content types later and workflows
                            etc.</i>
                    </p>
	                <dl class="image">
	                    <dt><img src="Images/SharePoint_ExtendedTemplates2.gif" alt="" /></dt>
	                    <dd>Figure: Add a note for multiple content types.</dd>
	                </dl>
                </li>
                <li>
                    <h2>
                        <a name="Excel"></a>MOSS 2007 export to Excel to behave in the same manner as VSTS
                        export to Excel</h2>
                    <p>
                        In VSTS when you export work items to Excel, it is a 2 way sync (via the TFS add-in
                        to Excel)
                    </p>
                    <p>
                        In MOSS 2007 when you export a list to Excel, it is a 1 way sync (any changes made
                        in Excel will be lost).
                    </p>
                    <p>
                        Exporting to Excel from MOSS 2007 should be extended so that it behaves in the same
                        way as VSTS and Excel, i.e. it should be a two way relationship. The main point
                        is that all MS products should be consistent and behave the same way. We don't want
                        to lose the two way behavior though as it is a good feature.
                    </p>
	                <dl class="image">
	                    <dt><img src="Images/SharePoint_Excel1.gif" alt="Connect to SharePoint List" /></dt>
	                    <dd>Figure: Connecting to TFS in Excel is should be the same experience as connecting
                            to a SharePoint List.</dd>
	                </dl>
	                <dl class="image">
	                    <dt><img src="Images/SharePoint_Excel2.gif" alt="" /></dt>
	                    <dd>Figure: Connecting to TFS from Excel is a 2 way sync - should be like this when you
                            connect to a SharePoint list.</dd>
	                </dl>
                </li>
                <li>
                    <h2>
                        <a name="TimeSheet"></a>Add TimeSheet to SharePoint 2007</h2>
                    <p>
                        Add a TimeSheet Application to SharePoint 2007 I think companies need a timesheet
                        application built into SharePoint that give a offline experience like Outlook and
                        Access. Too many companies are building their own timesheet applications, SharePoint
                        is not Microsoft's only choice.
                        <ul type="disc">
                            <li>They could build it into CRM. </li>
                            <li>They could build it into TFS's work items. I don't think this would work as TFS
                                wants you to use Microsoft Project. If they changed their mind and added to TFS
                                work items, then they have another problem. The problem is that we don't want timesheets
                                to only work for a programmer. It should work for accountants, lawyers and engineers.
                            </li>
                            <li>They could build their own product using Silverlight and WPF (SSW would be happy
                                to build this). </li>
                        </ul>
                    </p>
                </li>
                <li>
                    <h2>
                        <a name="Document"></a>General List/Document Library Improvements</h2>
                    <p>
                        <ul type="disc">
                            <li>Fix the scalability issues with Lists/Document libraries performing poorly with
                                more than 2000 items. Evidence: <a href="/SSW/Redirect/MicrosoftBlogs/MSSharepointTeam.htm">
                                    http://blogs.msdn.com/sharepoint/archive/2007/07/25/scaling-large-lists.aspx</a>.</li>
                            <li>Suppport file paths longer than 256 characters.</li>
                            <li>Add support to compare differences in document versions by visually showing the
                                differences.</li>
                            <li>Ability to Save & Restore Custom Views on Libraries/Lists, or create View templates.</li>
                            <li>Support for richer Active Directory style security, so we can allocate additional
                                Grant & Deny Permissions while retaining inheritance</li>
                            <li>Enable Multiple Inheritance of Content Types</li>
                            <li>Allow Lookup types to filter the list they are looking at (So you don't need to
                                create a separate list for every lookup field)</li>
                            <li>Ability to edit advanced properties of Lists, Libraries, Metadata columns thought
                                the UI.</li>
                            <li>Ability to filter available content types by client application or file format</li>
                            <li>Synchronisation of tasks with Outlook 2003</li>
                            <li>Two-way synchronisation of Calendars & Contacts with Outlook 2003</li>
                            <li>Ability to turn off UI features, such as RSS feeds.</li>
                            <li>Document Library Content types should allow more than one document template to be
                                used. This is because different templates can sometimes have the same metadata,
                                and we don't necessarily want to prompt the user to select from additional content
                                types when they upload a file.</li>
                        </ul>
                    </p>
                </li>
                <li>
                    <h2>
                        <a name="Excel"></a>Excel Services Improvements</h2>
                    <p>
                        Excel Services should support for drop downs for parameters and other input validations
                        methods.
                    </p>
                </li>
                <li>
                    <h2>
                        <a name="Catalog"></a>Business Data Catalog Improvements</h2>
                    <p>
                        Business Data Catalog should have the ability to launch Winform applications as
                        a BDC action - including command line parameters and/or recorded series of UI interactions.
                    </p>
                </li>
                <li>
                    <h2>
                        <a name="SearchHighlight"></a>The default search experience should use yellow highlighting</h2>
                    <p>
                        The default search experience should use yellow highlighting in the search results:
                    </p>
	                <dl class="image">
	                    <dt><img src="Images/AddHighlightLikeThis.jpg" alt="" /></dt>
	                    <dd>Figure: The default search experience should use yellow highlighting like Outlook 2007 searching does.</dd>
	                </dl>
                </li>
                <li>
                    <h2>
                        <a name="HideURL"></a>Hide the ugly URLs</h2>
                    <p>
                        On below page, the ugly URLs should be hide and we would love to know the reason for the ugly GUID:
                    </p>
	                <dl class="image">
	                    <dt><img src="Images/URLsShouldHide.jpg" alt="The ugly URLs should be hide" /></dt>
	                    <dd>Figure: The above ugly URLs should be hide.</dd>
	                </dl>
                </li>
                <li>
                    <h2>
                        <a name="AddMoveInMenu"></a>Please add a 'Move to another folder' to the right click menu</h2>
                    <p>
                        Please add a 'Move to another folder' in the right click menu.
                    </p>
                    <p>
                        If this is not possible maybe because of security, then open a messagebox with instructions of how to move eg: "To move use click Actions | View in Windows Explorer. You can then copy/paste, drag/drop etc.".
                    </p>
	                <dl class="image">
	                    <dt><img src="Images/AddMoveInMenu.jpg" alt="The menu without move item" /></dt>
	                    <dd>Figure: The right click menu needs a 'Move to another folder' option.</dd>
	                </dl>
                </li>
                <li>
                    <h2>
                        <a name="BugReport"></a>Bug - SharePoint Record Center - Record Center Holds Report Doesn't Open</h2>
                    <p>
                        When running the Holds Report in the Records Center, we get save file dialog:
                    </p>
	                <dl class="image">
	                    <dt><img src="Images/SPSaveReport.jpg" alt="Open report" /></dt>
	                    <dd>Figure: Run report, but get save file dialog.</dd>
	                </dl>
	                <p>
	                    After that get the 'Problems during load' dialog:
	                </p>
	                <dl class="image">
	                    <dt><img src="Images/ProblemsDialog.jpg" alt="After open report" /></dt>
	                    <dd>Figure: After the save file dialog, get the problems dialog.</dd>
	                </dl>

                </li>
                <li>
                    <h2>
                        <a name="BugLibraries"></a>Bug - SharePoint Libraries - Content Type item descriptions appear on some libraries and not others</h2>
                    <p>
                        Some document libraries show the description of the content type as shown below:
                    </p>
	                <dl class="image">
	                    <dt><img src="Images/LibShowDes.jpg" alt="Libraries Show Description" /></dt>
	                    <dd>Figure: The document libraries show description.</dd>
	                </dl>
	                <p>
	                    And others don't show the description:
	                </p>
	                <dl class="image">
	                    <dt><img src="Images/LibDontShowDes.jpg" alt="Libraries Don't Show Description" /></dt>
	                    <dd>Figure: Other document libraries don't show description.</dd>
	                </dl>
	                <p>
	                    There is no setting for this. How does SharePoint determine when to show the description?
	                </p>
                </li>
                <li>
                    <h2>
                        <a name="BugRouting"></a>Bug - SharePoint Records Center - Routing Issue: default routing goes to wrong library, not "Unclassified Library"</h2>
                    <p>
                        The routing table is configured correctly to route documents into different libraries in the records center. There is an "Unclassified Library", and the site is configured to route documents without a content type (or with an unknown content type) by default into this library.
                    </p>
                    <p>
                        This functionality doesn't work. The documents are moved into a library called "Sales" for some strange unknown reason.
                    </p>
                </li>
                <li>
                    <h2>
                        <a name="ExactMatch"></a>Why do I need to have an exact match?</h2>
                    <p>
					    When I input a name, it need to an exact match:                        
                    </p>
	                <dl class="image">
	                    <dt><img src="Images/ExactMatch_1.jpg" alt="Exact Match" /></dt>
	                    <dd>Figure: "No exact match was found".... come on....</dd>
	                </dl>
                </li>     
                   <li>
                    <h2>
                        <a name="URL"></a>Why I can't easily change the URL?</h2>
                        <p>In the future release, SharePoint should be able to change the url from</p>
                         <dl class="image">
	                    <dt><img src="Images/SP_current_URL.gif" alt="Current SharePoint URL" /></dt>
	                </dl>
	                <p>To</p>
	                <dl class="image">
	                    <dt><img src="Images/SP_recommend_URL.gif" alt="Recommend SharePoint URL" /></dt>
	                </dl>
                    <p>There is IIS URL Rewrite, it fixes incoming links, but once they navigate to another page, it uses the sharepoint links, so you end up with 2 different URLs for the same page.</p>
                    <p>There is also System.Web.Routing (my preference) that MVC uses, but the problem is the same.</p>                     
                    
    	           
                </li>  
                <li>
                 <h2>
                    <a name="ResultsInComboBoxes"></a>SharePoint should include the number of results in ComboBoxes
                 </h2>
                 <p>
                    When SharePoint displays a filter in a drop down menu, it should show how many items there are next to each item.
                 </p>
                 
                  <p>E.g.<br/>
                    Approved (17)<br/>
                    Rejected (2)<br/>
                    Pending (1)<br/>
                    Draft (1)<br/>
                    </p>
                    
                 <dl class="badImage">
				    <dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/ComboBoxIncludeNumber.jpg" /></dt>
				    <dd>Figure: A filter menu in SharePoint</dd>
			    </dl>
			    We have a rule to better UI  <a href="https://ssw.com.au/rules/forms-do-you-include-the-number-of-results-in-comboboxes"
                >Do you include the number of results in comboBoxes? </a>
                      
             </li>  
             <li>
             <h2>
                    <a name="AllowContributorsAddNewPages"></a>BUG - Why can't MOSS publishing contributors add new pages?
                 </h2>
                 <p>
                    When you add someone to the "< site > members" group they receive the "contribute" permission, which allows them to "view, add and edit elements" in a MOSS publishing site.
                 </p>
                  <p>
                  Except there is a problem - they cannot create new pages in the Pages document library ?when they try, they get a permission denied error.
                  </p>
                  <p>
                  The root of the problem is actually that the contribute user doesn't have permission to "read" the master page gallery.  Which means that SharePoint can't list the available page layouts to them on the right.
                  </p>
                   
			     <dl class="image">
		                    <dt><img src="Images/ReadTheListOfPageLayout.jpg" alt="Read the page layout available" /></dt>
		                    <dd>Figure: To create a page, you need to be able to read the list of page layouts available.</dd>
		                </dl>
			    <p>
			    The Fix is very easy, go to the list settings of the master page gallery, add the contribute group and give them Read permission.
			    </p>
    			
			    <dl class="image">
		                    <dt><img src="Images/GivePermissionToContributor.jpg" alt="Give permission to the contributor and they can read the master page gallery" /></dt>
		                    <dd>Figure: Granting "SSW Public Members" read permission to the master page gallery.</dd>
		                </dl>
			    <p>
			    This setting should have been set by default.
			    </p>
                      
             </li> 
                
             <li>
             <h2>
                    <a name="SuggestionToSP2007"></a>SharePoint should make changing URLs easy
                 </h2>
                 <p>I have an URL like this http://intranet.ssw.com.au/Products/Lists/Test%20please%20history/AllItems.aspx </p>
                
                <p>I want the URL to be like this http://intranet.ssw.com.au/Products/Lists/TestPleaseHistory/AllItems.aspx  - We have a general rule <a href="/ssw/Standards/Rules/RulestoBetterCode.aspx#NoSpacesInFileNames">Don't use spaces in folders or URLs</a></p> 
                 <p>
                 I expect to:<br/>
                 <ol>
                 <li>Edit the name of the list from "Test please history"  to "TestPleaseHistory".</li>
                 <li>Get the URL - http://intranet.ssw.com.au/Products/Lists/TestPleaseHistory/AllItems.aspx </li>
                 </ol>
                 </p>
                 
                 <p>But the URL is not changed only the name of the list changes...</p>
                 <p>
                 Current Workaround (includes 2 nasty gotchas) :<br/>
                 <ol>
                 <li>
                 Export the list. e.g. Test please history.xlsx
                 </li>
                 <li>
                 Create a new list with an appropriate name "TestPleaseHistory"
                 </li>
                 <li>
                 Import the data to this new list by selecting "Import Spreadsheet"
                 <dl class="image">
                 <dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/ImportDataToNewList.jpg" alt="Select Import Spreadsheet" /></dt>
                 <dd>Figure: Import Data to the new list</dd>
                 </dl>
                 </li>
                 </ol>
                 <p>Gotcha #1<br/>
                  You need to add the following to your Internet Explorer trusted sites.<br />
                   <ul><li>https://*.emea.microsoftonline.com </li>
                       <li>https://*.microsoftonline.com </li>
                   </ul>
                    Otherwise IE will block SharePoint from importing the spreadsheet saying "Error: The specified file is not valid spreadsheet or contains no data to import?"<br/>
                 <dl class="image">
                 <dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/AddRelatedSiteIntoTrustedSite.jpg" alt="Add the related sites into trusted sites then it won't be blocked"/></dt>
                 <dd>Figure: Add the sites into your explorer trusted sites</dd></dl>
                  </p>
                  <p>Gotcha #2<br />
                  Once the data is imported, you will encounter another problem with column types.<br/>
                  The "Person or Group" type is converted to Single line text, "Single line text" and  can't be converted back to a "Person or Group" type! 
                 <dl class="image">
                 <dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/UserType_PersonOrGroup.jpg" alt="The user type should be Person or Group"/></dt>
                 <dd>Figure: The "Person or Group" type is converted to "Single line of text"</dd>
                 </dl>
                 <dl class="image">
                 <dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/NoUserType.jpg" alt="The user type can't be converted back"/></dt>
                 <dd>Figure: The type can't be converted to "Person or Group"</dd>
                 </dl>
                 </p>
                 <ol>To work around this issue:
                 <li>
                  zz the affected columns e.g. rename "Testing Requested By" and "Tester Name" to "zzTesting Requested By" and "zzTester Name"
                 </li>
                 <li>
                 Create new columns with the "People and Group" type 
                 </li>
                 <li>
                 Click Save
                 </li>
                 <li>
                 On the page, click Actions | Edit in Datasheet.
                 <dl class="image">
                 <dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/EditInDatasheet.jpg" alt="Click Edit in Datasheet"/></dt>
                 <dd>Figure: Choose "Edit in Datasheet"</dd>
                 </dl>
                 </li>
                 <li>
                 Copy from the old columns to the new columns e.g. "zzTesting Requested By" and "zzTester Name" to "Testing Requested By" and "Tester Name"
                 <dl class="image">
                 <dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/CopyFromZZToNewColumns.jpg" alt="Copy from ZZ columns to new ones"/></dt>
                 <dd>Figure: Copy the zz columns to new ones</dd>
                 </dl>
                 </li>
                 <li>
                 Delete the old columns
                 </li>
                 <li>
                 Now you get the same list with the new URL.
                 <dl class="image">
                 <dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/TestPleaseHistory.jpg" alt="Test Please History"/></dt>
                 <dd>Figure: Test Please History list with the URL fixed</dd>
                 </dl>
                 </li>
                 </ol>
              </li>  
              
             <li>
             <h2>
                    <a name="ChangeDateFormatShouldBeEasier"></a>Change the date format should be easier
                 </h2>
                 <p>
                    By default, SharePoint's date type field only support two format : 
                 </p>
                <p>
            	    <dl class="image">
	                    <dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/DateFormatDateOnly.gif" alt=" Date format with Date only" /></dt>
	                    <dd>Figure: Date format with Date only</dd>
	                </dl>
	            </p>
	            <p>
	                <dl class="image">
	                    <dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/DateFormatDateAndTime.gif" alt="Date format with Date and Time" /></dt>
	                    <dd>Figure: Date format with Date and Time</dd>
	                </dl>
	            </p>
                 
                  <p>
                  That would be a bit hard to display the date including weekday.(see <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/DoYouKnowHowToCreateWeekDate.aspx" >Do you know how to format dates to include the weekday</a>? ).
                  </p>
                  <p>
                  It should be easier for users to show different format of dates.
                  </p>                   
             </li>  
            <li>
                <h2>
                    <a name="DiscussionBoardwithAlertPush"></a>Help me to get an email when an item is changed on the Discussion Board 
                </h2>
                <p>
                    In SharePoint Discussion Board, it allows users to subscribe and get email immediately, daily or weekly if the item has been changed.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/DiscussionBoardAlert.jpg" alt="Add subscription to the thread"/>
                    </dt>
                    <dd>Figure: Add subscription to the thread</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/DiscussionBoardAlertSetting.jpg" alt="Set the frequency of the alert"/>
                    </dt>
                    <dd>Figure: Set the frequency of the alert</dd>
                </dl>
                <p>
                    We believe there should be a checkbox to set that pushes an alert to all users who have subscribed to alerts, regardless of the alert frequency.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/SendImmediateNotification.jpg" alt="Add a checkbox to fire the alert immediately"/>
                    </dt>
                    <dd>Figure: Add a checkbox to fire the alert immediately</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="NiceURLs"></a>Give me nice URLs
                </h2>
                <p>
                    I just had a client refuse to use SharePoint discussion boards because of the ugly URLs.<br />
                    To fix it I would need to:
                    <ul>
                        <li>Write a custom HTTP module to rewrite the URL, or</li>
                        <li>Define a complex rule using IIS 7 URL rewrite module</li>
                        <li>Hope to find a 3rd Party solution that works off a list without custom configuration</li>
                    </ul>
                    It should just work out of the box.<br />
                    
                    Currently, the SharePoint provides us URLs like this:
                    <dl class="badCode">
                        <dt>
                            <pre>http://Intranet/Documents/Forms/AllItems.aspx</pre>
                        </dt>
                        <dd>Figure: Bad URL - it's not clear and easy to remember</dd>
                    </dl>
                    <dl class="goodCode">
                        <dt>
                            <pre>http://Intranet/Documents/</pre>
                        </dt>
                        <dd>Figure: Good URL - it looks simple and clear</dd>
                    </dl>
                    The issue gets worse on the SharePoint Discussion Board:
                    <dl class="badCode">
                        <dt>
                            <pre>http://vm-spdev-287:1000/sb/Lists/Forum/Flat.aspx?RootFolder=%2fsb%2fLists%2fForum%2fhello%20world&FolderCTID=0x01200200FB8C10D810AD664C994E06AA6DC6CE67
                                 &TopicsView=http%3A%2F%2Fvm%2Dspdev%2D287%3A1000%2Fsb%2FLists%2FForum%2FAllItems%2Easpx</pre>
                        </dt>
                        <dd>Figure: Bad URL - it includes many parameters</dd>
                    </dl>
                    <dl class="goodCode">
                        <dt>
                            <pre>http://stackoverflow.com/questions/<span style="background-color:yellow">288628</span>/remove-extra-white-space-from-first-page-of-sql-server-reporting-services-report</pre>
                        </dt>
                        <dd>Figure: Good URL - it only relies on the thread ID</dd>
                    </dl>
                </p>
                <p>
                 To open an excel document on the web
                   <dl class="badCode">
                        <dt>
                            <pre>http://Intranet/Subsite/Documents/_layouts/xlviewer.aspx?id=/SubSite/Documents/SalesReport.xlsx</pre>
                        </dt>
                        <dd>Figure: Bad URL - it's not clear and easy to remember</dd>
                    </dl>
                    <dl class="goodCode">
                        <dt>
                            <pre>http://Intranet/Subsite/Documents/SalesReport.xlsx?mode=view</pre>
                        </dt>
                        <dd>Figure: Good URL - it's consistent with the location of the file and uses parameters to tell you that it will open in view mode</dd>
                    </dl>
                </p>
            </li>
            
             <li>
                <h2>
                    <a name="ModifiedByField"></a>Why does SharePoint change the Modified By field when a publishing workflow is started?
                </h2>
                <p>
                   When you start an approval workflow in MOSS publishing site - why does it change the Modify By to "System Account" and clobber the previous person's "Modify By" value? <br/>
                   You can't see the person that modified this page anymore.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="/ssw/Standards/BetterSoftwareSuggestions/Images/ModifiedBySystemAccount.jpg" alt="The ModifiedBy field will be changed to 
                      System Account"/>
                    </dt>
                    <dd>Figure: Bad Example - MOSS publishing workflow changed the Modified By to "System Account".</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="BlogTemplate"></a>Blog template lacks of some key features
                </h2>
                <p>
                    In SharePoint, there is a blog template which enable users to share options based on the intranet.<br />
                    There are some advantages:
                    <ol>
                      <li>Good integration with Office users can use Word to edit their blogs</li>
                      <li>Good search engine inherit from SharePoint</li>
                    </ol>
                </p>
                <p>
                    To compete with WordPress, Community Server, there still some features need improving:
                    <ol>
                        <li>Spam comment protection</li>
                        <li>Theme</li>
                        <li>Trackback and Pingback</li>
                        <li>SEO - Search Engine Optimization
                            <ul>
                                <li>No way to set URL - see our prior suggestion <a href="#URL">Why I can't easily change the URL?</a></li>
                                <li>Permanent link is not nice</li>
                            </ul>
                        </li>
                        <li>Social network integration
                            <dl class="Image">
                                <dt><img src="Images\SocialIntegration.png" alt="Integrate with social network" /></dt>
                                <dd>Figure: Integrate with social network</dd>
                            </dl>
                        </li>
                        <li>Integration with blogging tools</li>
                        <li>Blog tracking stats via technorati or feed</li>
                    </ol>
                </p>
                <p>
                    <a href="http://www.codeplex.com/CKS">Community Kit for SharePoint</a>, includes "Enhanced Blog Edition" which contains:
                    <ol>
                      <li>Modular Theme Framework ("MTF") with optional "night time" autoswitch themelet</li>
                      <li>Akismet comment spam detection</li>
                      <li>Multiple categories/tags can be mapped to each blog entry/post</li>
                      <li>Anonymous comments can be moderated</li>
                      <li>Name and URL fields in comments</li>
                      <li>Friendly URL ("FURL") for the blog's posts</li>
                      <li>Friendly URL for the blog's RSS feed</li>
                    </ol>
                    But it isn't officially maintained or supported by Microsoft.
                </p>
            </li>
            <li>
                <h2>
                    <a name="DiscussionBoard"></a>The Discussion Board needs to support voting and rating posts 
                </h2>
                <p>
                    The Discussion Board in Microsoft Office SharePoint Server 2007 works well and has these great features:
                    <ul>
                        <li>Great integration with Outlook. This enables users to use their email client to post and reply to discussions (without needing to use the browser).</li>
                        <li>Email notification when there is a new reply (assuming the user or group is subscribed).</li>
                    </ul>
                    However popular features such as voting / rating need to be available out of the box. There are 2 benefits:
                    <ul>
                        <li>You can see which topics are the most popular.</li>
                        <li>On a specific post, you can see which answer is the most popular.</li>
                    </ul>
                    <dl class="badImage">
                        <dt><img src="Images\DiscussionBoard.png" alt="The discussion board in SharePoint" /></dt>
                        <dd>Figure: Bad Example - SharePoint 2007 Discussion Boards - the user can't see which posts are the most valuable </dd>
                    </dl>
                    <dl class="goodImage">
                        <dt><img src="Images\DiscussionVote.png" alt="Vote in discussion board" /></dt>
                        <dd>Figure: Good Example - It is clear the 3rd post is worth reading. <a href="/SSW/Redirect/StackFlow.htm" class="external">StackOverflow</a> does this well.</dd>
                    </dl>
                </p>
            </li>
            <li>
                <h2>
                    <a name="NavigationBug"></a>Fix navigation bug while in edit mode 
                </h2>
                <p>
                    SharePoint 2007 has a bug where, if a user decides to navigate on from a page that is in edit mode, the page hangs for up to a minute before displaying the following message: 
                    
                    <dl class="image">
                        <dt><img src="Images\NavigationBug.jpg" alt="The navigation bug in SharePoint" /></dt>
                        <dd>Figure: The prompt should be displayed immediately, as the wait is a large hindrance to productivity.</dd>
                    </dl>
                </p>
            </li>
            
            <li>
               <h2>
                   <a name="BugAjax"></a>Bug - Ajax UpdatePanel could not be used in Publishing site template
               </h2>
               <p>
                 <!--  Bryan ToDo: copy the content here.-->
                 Someone may going to use Ajax UpdatePanel  via following : http://msdn.microsoft.com/en-us/library/bb861877.aspx ,
                then you may find that the web part can work well in sites generated from other site templates except in the publishing site template. 
                (I think it could be recognized as a SharePoint bug)
                </p>
                <p>
                To solve this, you need to modify the master pages of publishing site:
               </p>
               <p>
                    <b>Change:</b>
                    <dl class="badCode">
                        <dt>
                           <!--  Bryan ToDo: copy the code after "Change" here. -->
                           &lt;body id="MasterBody" onload="javascript:_spBodyOnLoadWrapper();"&gt;<br />
                           <span class="highlight">&lt;WebPartPages:SPWebPartManager runat="server"/&gt;</span><br />
                           &lt;form id="Form1" runat="server" onsubmit="return _spFormOnSubmitWrapper();"&gt;<br />
                                 <br />
                           &lt;/form&gt;<br />
                           &lt;/body&gt;                            
                        </dt>
                        <dd>Figure: Bad code - caused the Ajax issue</dd>
                    </dl>
                    <b>To:</b>
                    <dl class="goodCode">
                        <dt>
                           <!-- Bryan ToDo: copy the code after "To" here. -->
                           &lt;body id="Body1" onload="javascript:_spBodyOnLoadWrapper();"&gt;  <br />
                           &lt;form id="Form2" runat="server" onsubmit="return _spFormOnSubmitWrapper();"&gt;<br />
                           <span class="highlight">&lt;WebPartPages:SPWebPartManager runat="server"/&gt;</span><br />
                                 <br />
                           &lt;/form&gt;<br />
                           &lt;/body&gt;
                        </dt>
                        <dd>Figure: Good code - fixed the Ajax issue</dd>
                    </dl>
                </p>
    
            </li> 
            
            <li>
                <h2>
                   <a name="MossPage"></a>In moss the page title gets changed after an Ajax postback (when Ajax method is invoked).
               </h2>
               <p>
                  There is a weird bug between the SharePoint title and the Ajax web part. <br /><br />
               <b>Bug description:</b> In moss the page title gets changed after an Ajax postback (when Ajax method is invoked). <br /><br />
               <b>Resolution:</b> go to the master page, change the title tag format in <b>same line</b> and <b>without space.</b> <br /><br />
                  
                  <dl class="badCode">
                  
                    <dt>
                      <pre> &lt;title id="onetidTitle"&gt;<span class="highlight"> </span>&lt;asp:ContentPlaceHolder ID="PlaceHolderPageTitle" runat="server" /&gt;<span class="highlight"> </span>&lt;/title&gt;</pre><br />
                    </dt>
                   
                   <dd>Figure: Bad Title with space</dd><br />
                   </dt>
                  </dl>
                  
                   <dl class="badCode">
                   <dt>
                      <pre>&lt;title id="onetidTitle"&gt; <br />
                      &lt;asp:ContentPlaceHolder ID="PlaceHolderPageTitle" runat="server" /&gt;<br />
                      &lt;/title&gt;<br />
                      </pre>
                   </dt>
                   <dd>Figure: Bad Title - not in one line</dd><br />
                   </dt>
                  </dl></dd>
                   </dt>
                  </dl>
                  
                   <dl class="badImage">
                   
                      <dt><img src="Images\AjaxpostbackwithBadTitle.jpg" alt="Bad Title Example" /></dt><br />
                   
                   </dt>
                   <dd>Figure: Title changed after an Ajax postback with Bad Title Example</dd><br />
                   </dt>
                  </dl></dd>
                   </dt>
                  </dl>
                   
                   
                   <dl class="goodCode"><br />
                   
                    <dt>
                     <pre>&lt;title id="onetidTitle"&gt;&lt;asp:ContentPlaceHolder ID="PlaceHolderPageTitle" runat="server" /&gt;&lt;/title&gt;</pre>
                    
                    </dt>
                   
                   </dt>
                   <dd>Figure: Good Title Example</dd><br />
                   </dt>
                  </dl></dd>
                   </dt>
                  </dl>
                  
                  <dl class="goodImage">
                   
                    <dt>
                    <img src="Images\AjaxpostbackGoodTitle.jpg" alt="Good Title Example" />
                    
                    </dt>
                   
                   </dt>
                   <dd>Figure: Title didn't change after an Ajax postback with Good Title Example</dd><br />
                   </dt>
                  </dl></dd>
                   </dt>
                  </dl>
               </p>

        </li>            
        <li>
            <h2>
              <a name="SPVisualDev"></a>Make something as cool as SPVisualDev (from CodePlex) ?we want RAD development
            </h2>
            <p>
                The ultimate development tool,  is the cool SPVirtualDev <a href="http://spvisualdev.codeplex.com/">http://spvisualdev.codeplex.com/.</a><br />

                Productive SharePoint developers enjoy using it <br />
                <!--e.g.<a href="http://chakkaradeep.com/index.php/spvisualdev-moss-feature-generator-must-have-tools-for-sharepoint-devs/">http://chakkaradeep.com/index.php/spvisualdev-moss-feature-generator-must-have-tools-for-sharepoint-devs/.</a> --><br /><br />

                Q:\ OK, so how does this make your development RAD? <br />
                A:\ Well let's pretend you want to change a piece of text in the Master Page. What do we need to do?<br /><br />

                Today, the steps are:<br />
                <ol>
                    <ol>
                      <li>Open SharePoint Designer</li>
                      <li>Edit the MasterPage.master</li>
                      <li>Save</li>
                      <li>Preview in the Browser to check</li>
                      <li>Open VS.NET 2008</li>
                      <li>Put the master page in the package solution  (*this is main the step that is removed next*)</li>
                      <li>Use VSeWSS to build the package.</li>
                      <li>Deploy to staging server</li>
                    </ol>
                </ol>
                <br />
                And when you are using this tool. The steps are:<br />
                <ol>
                 <ol>
                   <li>Open VS.NET 2008</li>
                   <li>Edit the MasterPage.master</li>
                   <li>Save</li>
                   <li>Preview in Browser to check</li>
                   <li>Use WSPBuilder to build the package</li>
                   <li>Deploy to staging server</li>
                 </ol>
                </ol>
                <br />
                <b>Plus there are even more benefits to using this tool?</b>
                <br />
            </p>
            <dl class="image">
                <dt>
                    <img src="Images\anyscripts.jpg" alt="without any scripts" />
                </dt>
                <dd>Figure: Easy to install and active feature without any scripts.</dd><br />
            </dl> 
            <dl class="image">          
                <dt>
                    <img src="Images\withoutediting.jpg" alt="without editing feature" />
                </dt>
                <dd>Figure: Easy to edit feature settings without editing the feature.xml file </dd><br />             
           </dl>
           <dl class="image">      
               <dt>
                   <img src="Images\addElements.jpg" alt="adding elements" />   
               </dt>
               <dd>Figure: Easy to add "lements" to your feature without editing your module.xml file </dd><br />          
           </dl>
        </li>   
        <li>
            <h2>
                <a name="CustDev"></a>Help stop the divide between Customization and Development
            </h2>    
            <p>
                When you customize SharePoint, it's easy, but you can't repeat your customization on other SharePoint site (e.g. Test Server).<br /><br />
                To repeat it, you have to go with Development, but it's not easy to package up, and hard for the people only understand SharePoint UI to run it.<br /><br />
                This suggestion solution is to add an button called "ecord Now" in the "Site Actions"<br /><br />
            </p>
            <dl class="image">                   
                <dt>
                    <img src="Images\SiteActions.jpg" alt="Site Action menu" />                    
                </dt>                                      
                <dd>Figure: A "Record Now" would help stop the divide between Customization and Development</dd><br />                                     
            </dl>
            <p>
               When you click the record Now, it would record all the actions you do until you stop.<br />
               All actions would be packaged to a Grid (aka List) that you could 'Run' to replay the changes. You could then copy the package to another server to test it.<br /><br />
               In addition .NET Developers could also copy their packages here to let SharePoint Architects to run them.<br /><br />
               Note: Even better this could become an "SharePoint App Store", borrowing off the iPhone.<br /><br />
               Note: Even the great Joel Olsen agreed with this suggestion of Adam's<br /><br />
            </p>
        </li>    
        <li><h2><a name="RSSearch"></a>Search for Reporting Services reports in SharePoint</h2>
            <p>
                We need a dropdown item for "search Reporting Services reports" and enter some keywords to show the search results
            </p>
            <dl class="image">                   
                <dt>
                    <img src="Images\Suggestion_SharePoint_RSSearch.jpg" alt="Site Action menu" />                    
                </dt>                                      
                <dd>Figure: Search page in SharePoint</dd><br />                                     
            </dl>
        </li>
        <li><a name="CustomizeListView"></a><h2>Make the List view schema readable</h2>
            <p>
                Sometimes, we have to change the format of a view in a list. 
                This view is defined in the list schema xml which is hard to read and maintain. 
                A better approach is to write it as aspx.
            </p>
            <dl class="badCode">
                <dt>
                    <pre>
&lt;List Name="ForumList" xmlns="http://schemas.microsoft.com/sharepoint/"&gt;
    &lt;PagedRowset&gt;
          &lt;HTML&gt;&lt;![CDATA[&lt;TABLE width="100%" border=0 cellpadding=0 cellspacing=0 class="ms-bottompaging"&gt;
             &lt;TR&gt;&lt;TD class="ms-bottompagingline1"&gt;&lt;IMG SRC="/_layouts/images/blank.gif" width=1 height=1 alt=""&gt;&lt;/TD&gt;&lt;/TR&gt;
             &lt;TR&gt;&lt;TD class="ms-bottompagingline2"&gt;&lt;IMG SRC="/_layouts/images/blank.gif" width=1 height=1 alt=""&gt;&lt;/TD&gt;&lt;/TR&gt;
             &lt;TR&gt;&lt;TD align=center Class="ms-vb" id="bottomPagingCell]]&gt;
          &lt;/HTML&gt;
          &lt;GetVar Name="WPQ" /&gt;
          &lt;HTML&gt;&lt;![CDATA["&gt;&lt;table&gt;]]&gt;&lt;/HTML&gt;
          <span style="background:yellow">
          &lt;Switch&gt;
            &lt;Expr&gt;
              &lt;GetVar Name="PrevPageData" /&gt;
            &lt;/Expr&gt;
            &lt;Case Value="" /&gt;
            &lt;Default&gt;
              &lt;HTML&gt;&lt;![CDATA[&lt;td&gt;&lt;A HREF="javascript:" OnClick='javascript:SubmitFormPost("]]&gt;&lt;/HTML&gt;
              &lt;ScriptQuote NotAddingQuote="TRUE"&gt;
                &lt;PageUrl /&gt;
                &lt;HTML&gt;?&lt;/HTML&gt;
                &lt;GetVar Name="PrevPageData" /&gt;
              &lt;/ScriptQuote&gt;
              &lt;HTML&gt;&lt;![CDATA[");javascript:return false;'&gt;]]&gt;&lt;/HTML&gt;
              &lt;HTML&gt;&lt;![CDATA[&lt;img src="/_layouts/1033/images/prev.gif" border=0 alt="Previous"&gt;&lt;/A&gt;&lt;/td&gt;]]&gt;&lt;/HTML&gt;
            &lt;/Default&gt;
          &lt;/Switch&gt;
          </span>
          ......
    &lt;/PagedRowset&gt;
&lt;/List&gt;
                    </pre>
                </dt>                                      
                <dd>Figure: The command is hard to understand and maintain</dd>
            </dl>
            <dl class="goodCode">
                <dt>
                    <pre>
&lt;List Name="ForumList" xmlns="http://schemas.microsoft.com/sharepoint/" DataSourceID="LinqDataSource1"&gt;
    &lt;HeaderTemplate&gt;
        &lt;HTML&gt;
            &lt;![CDATA[&lt;TABLE width="100%" border=0 cellpadding=0 cellspacing=0 class="ms-bottompaging"&gt;
             &lt;TR&gt;&lt;TD class="ms-bottompagingline1"&gt;&lt;IMG SRC="/_layouts/images/blank.gif" width=1 height=1 alt=""&gt;&lt;/TD&gt;&lt;/TR&gt;
             &lt;TR&gt;&lt;TD class="ms-bottompagingline2"&gt;&lt;IMG SRC="/_layouts/images/blank.gif" width=1 height=1 alt=""&gt;&lt;/TD&gt;&lt;/TR&gt;
            ]]&gt;
        &lt;/HTML&gt;
    &lt;/HeaderTemplate&gt;
    &lt;ItemTemplate&gt;
          &lt;HTML&gt;
            &lt;![CDATA[
            &lt;TR&gt;
              &lt;TD align=center Class="ms-vb" id="bottomPagingCell&gt;
                  &lt;%# DataBinder.Eval(Container.DataItem, "Price") %&gt;
              &lt;/TD&gt;
            &lt;TR&gt;
            ]]&gt;
          &lt;/HTML&gt;
          ......
    &lt;/ItemTemplate&gt;
    &lt;FooterTemplate&gt;
        &lt;HTML&gt;
            &lt;![CDATA[&lt;/TABLE&gt;]]&gt;
        &lt;/HTML&gt;
    &lt;/FooterTemplate&gt;
&lt;/List&gt;
&lt;asp:LinqDataSource  
    TableName="Products" 
    EnableUpdate="true"
    EnableInsert="true"
    EnableDelete="true"
    ID="LinqDataSource1" 
    runat="server"&gt;
&lt;/asp:LinqDataSource&gt;
                    </pre>
                </dt>                                      
                <dd>Figure: Use ASP.NET key words instead of CAML </dd>
            </dl>
        </li>
        <li>
            <h2><a name="CalFieldsVolatileFunctions"></a>SharePoint Calcuated Field should allow volatile functions like Today and Me</h2>
            <p>I need to have some fields calculated on the fly depends on the values of other column. A very common example is when you want to calcuate the age of a person with 
            his birthday, such a value will also depends on Today function; However when you enter such an expression DATEDIF(TODAY, [DOB], "Y") in SharePoint Calcuated field, 
            you will see the following error message:</p>
            <dl class="image">                   
                <dt>
                    <img src="Images\SPCalFieldVolatileFunc.jpg" alt="Error: Calculated columns cannot contain volatile functions like Today and Me" />                    
                </dt>                                      
                <dd>Figure: Calculated Columns should allow volatile functions</dd>
            </dl>
            
            <p>Sure, there are some work-around for this. For example: you can create another dummy field and call it "Today" then add that field name as a place holder to the expression 
            for this calculated field. Finally delete the dummy field, SharePoint will do the calcuation for you now. However, this is not perfect because the value is still "static" and it will not 
            change everytime you access the page while the field value can be only updated when you edit and save the item.</p>
            
        </li>
        <li>
            <h2><a name="ValidateData"></a>Help me validate data without a server round trip</h2>
            <p>In "My Sites" I have to click "Save and Close" to find out I've entered the data in the wrong format. </p>
            <p>There should be a calendar control or a format notice for the date field.</p>
            <dl class="image">                   
                <dt>
                    <img src="Images\RoundTrip.jpg" alt="There shouldn't be a round trip when entering data with wrong format" />                    
                </dt>                                      
                <dd>Figure: Why is a round trip needed?</dd>
            </dl>
        </li>
        <li>
            <h2><a name="CreateFilter"></a>Create filters for SharePoint List</h2>
            <p>In SharePoint List, there is a default view. 
               If users want to filter or group data, they have to build their own views.
            </p>
            <p>
               To contrast with Access, SharePoint should improve its filter functionality to let users get their data easier.
            </p>
            <dl class="badImage">                   
                <dt>
                    <img src="Images\CreateView.jpg" alt="Only 'All Items' is created by default" />
                </dt>                                      
                <dd>Figure: Only 'All Items' is created by default</dd>
            </dl>
            <dl class="goodImage">                   
                <dt>
                    <img src="Images\AccessFilter.jpg" alt="Easy for users to customize the data filter" />
                </dt>                                      
                <dd>Figure: Easy for users to customize the data filter</dd>
            </dl>
        </li>
          <li>
            <h2><a name="VersionHistory"></a>Version History Page should have filter for the unchanged content.</h2>
            <p>For the versiondiff.aspx page as you notice the highlighted section under the IE location, we can see the differences between the different versions of the same page. 
               
            </p>
            <p>
               But sometimes we just only want to see the content that have been changed. At this time, versiondiff.aspx cannot help us. 
               
            </p>
            <dl class="badImage">                   
                <dt>
                    <img src="Images\VersionHistoryBad.gif" alt="All the content including the changes show in the versiondiff.apsx page" width="675px" />
                </dt>                                      
                <dd>Figure: All the content including the changes show in the versiondiff.apsx page </dd>
            </dl>
            <dl class="goodImage">                   
                <dt>
                    <img src="Images\VersionHistoryGood.gif" alt="After applying the filter function." width="675px" />
                </dt>                                      
                <dd>Figure: Only the changes show in the versiondiff.aspx after applying the filter function. </dd>
            </dl>
        </li>
         <li>
            <h2><a name="SharePointPageName"></a>There should be a page name field in the SharePoint page in edit mode.</h2>
            <p>
                Edit SSW Rule page in the SharePoint, you will find that there is no page name field in the page. Then you cannot modify in this page.
            </p>
           
            <dl class="badImage">                   
                <dt>
                    <img src="Images\SharePointPageNameBad.jpg" alt="There is no page name field for user editing it in the page in edit mode" width="675px" />
                </dt>                                      
                <dd>Figure: There is no page name field for user editing it in the page in edit mode</dd>
            </dl>
            <dl class="goodImage">                   
                <dt>
                    <img src="Images\SharePointPageNameGood.jpg" alt="There is page name filed and link to tell the people where to change the name." width="675px" />
                </dt>                                      
                <dd>Figure:There is page name filed and link to tell the people where to change the name. </dd>
            </dl>
            <p>
               Why not change the page name field name on this page?<br/>
               After you changed the value of the page name, then check in it, it will redirect to the old page name URL that means "404 page not found error".<br />
               So add the page name field,let it readonly and tell the user where to change the field is better. Go to <a href="/ssw/kb/KB.aspx?KBID=Q1145379">How do you rename a page in sharepoint?</a> for details.     
            </p>
          
        </li>
        <li>
        <h2><a name="SPDocument"></a>SharePoint Document Management</h2>
        <p>Help me get the latest copy, when I know others have been working on the doc.</p>
        <dl class="image">
        <dt><img src="Images\AddVersionNumber.jpg" alt="I want to see the version number and know who edit the doc before"/></dt>
        </dl>
        <ul>Boy, next to 'Server Document', I would love to see:
        <li>A "Refresh" button in Microsoft Word, when I open a document from a SharePoint document library</li>
        <li>The version number</li>
        </ul> 
        </li>
        <li>
        <a name="EventManagement"></a><h2>Event management please</h2>
        <p>I would love SharePoint to provide an easy way to configure an event?Attending so many events I see the guys struggle at running these.</p>
        <p> I expect your first users will be running IT events e.g. Code Camp</p>
        <ol>
        This is how it should work:
        <li>Enter all the details of the event.<br />
          This gives you a public web portal.
        </li>
        <li>Give it a list of people to email (pump in a list via Excel in the same manner as we use Excel for TFS work items).</li>
        <li>It sends an email.</li>
        <li>They receive an email.
        <dl class="image">
        <dt><img src="Images\EventManagement01.jpg" alt="I expect it can create a work item like Excel for TFS work items, then send an email to people."/></dt>
        </dl>
        </li>
        <li>If they have Outlook they can enter inside the email</li>
        <li>If they have other clients e.g. Gmail, they click on the link and go to the SharePoint page - and click Register.
        <dl class="image">
        <dt><img src="Images\EventManagement02.jpg" alt="Click the link to SharePoint and register."/></dt>
        </dl>
        </li>
        <li>1 minute later, the attendees receive an appointment in their inbox, to accept.
        <dl class="image">
        <dt><img src="Images\EventManagement03.jpg" alt="The attendees will receive an appointment."/></dt>
        </dl>
        </li>
        </ol>
        <p>PS: Next enhancement would be to give it the list of speakers, and they would receive different emails, a place to put their PPT, etc.</p>
        </li>
        <li>
        <h2><a name="Magnitude"></a>Indicate the magnitude of a page edit</h2>
        <p>Add an extra column to the "Version History" page to show how big a change was made in each version (in number of lines modified or MB changed  or something).</p>
        <p>In this case the editor (Ulysses) clicked on edit just to see what it looked like from an Editor's viewpoint, but there is no indication that there was no significant change.</p>
        <p>The edits that were not significant should show their records as dimmed.</p>
        <dl class="image">
        <dt><img src="Images\VersionHistory.jpg" alt="Version History"/></dt>
        <dd>Figure: Version History</dd>
        </dl>
        <p>
        P.S. the URL should be nicer than this: <br />
        <dl class="code">
          <dt>
                 <pre>http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/_layouts/Versions.aspx?list=1badd854%2D7165%2D46cb%2D920e%2D44e2355cd6e7&ID=2
            &FileName=%2FStandards%2FCommunication%2FRulesToBetterEmail%2FPages%2FDefault%2Easpx&Source=%2FStandards%2FCommunication%2FRulesToBetter
            Email%2FPages%2Fdefault%2Easpx</pre>
          </dt>
        </dl>
        </p>
        </li>
        <li>
        <h2><a name="SP2010LINQLimitation"></a>SharePoint 2010 LINQ Limitations with SpMetal</h2>
        <p>Yep my dreams have not been fulfilled. My issues is that SPMetal currently generates a Linq DataContext for *all* lists within a SharePoint site, not a site collection. (aka a SPWeb, not SPSite).</p>
        <p>I was expecting to be able to choose the lists I wanted.</p>
        <ol>
        These are the basic limitations with this approach:
        <li>You cannot query across multiple lists that uses common list template<br />
        E.g. I can't query the 2 images libraries for say where "Date>LastMonth"<br />
        (I guess I need 2 LINQ queries and do a UNION)
        </li>
        <li>You cannot query across a site collection<br />
        E.g. I can't query ProjectA, ProjectB, ProjectC where "Documents Not Checked In > 7 days"<br />
        (I guess I need 2 LINQ queries and do a UNION)
        </li>
        <li>You cannot query across lists created by users<br />
        (when Bob the developer is coding, he won't know about my 'Adams Documents' that I create later)<br />
        E.g. I can't query Adams Documents where "Size>1MB"<br />
        (I guess there is *no* way to do this, because the list name is an attribute)
        <dl class="image">
        <dt><img src="Images\LINQForSimpleQuery.jpg" alt="LINQ for simple query"/></dt>
        <dd>Figure: I can't use LINQ for simple queries</dd>
        </dl>
        </li>
        </ol> 
        <li>
        <h2><a name="ConvertToXHTML"></a>SharePoint 2010 Team - 'Convert to XHTML' is buggy</h2>
        <p>This feature 'convert to XHTML' is interesting.<br />
           I wonder who will be using it? (assuming it is not buggy)<br />
           Reasons? Govt compliance?</p>
        <p>Anyway the bug....</p>
        <ol>
        To Repro 
          <li>Copy 'mini-biography' section from <a href="/SSW/Redirect/IMDB.htm" target="_blank" class="external">http://www.imdb.com/name/nm0971329/bio</a><img src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17" height="11" /></li> 
          <li>Paste</li>
          <li>Hit 'convert to XHTML'</li>
          <li>Observe</li>
        </ol>
        <dl class="Code">
           <dt>
           <pre>
           <span style="background-color:yellow"> &lt;a href="http://www.imdb.com/name/nm0001362/"&gt;&lt;font color="#003399"&gt;Bob Hope&lt;/font&gt;&lt;/a&gt; </span>
           </pre>
        </dt>
        </dl>
        <p>(which isn't a great HTML to start with...)<br />
         Was converted (wrongly) to</p>
         <dl class="Code">
           <dt>
           <pre>
           <span style="background-color:yellow"> &lt;a href="http://www.imdb.com/name/nm0001362/"&gt;&lt;/a&gt;</span>&lt;/p&gt;&lt;div&gt;Bob Hope&lt;/div&gt;&lt;p&gt; </span>
           </pre>
        </dt>
        </dl>
        <p>Because Bob Hope is now outside of the < a > tags - it is no longer a link</p>
        <dl class="image">
        <dt><img src="Images\ConvertToXHTML.jpg" alt=" Using 'Convert to XHTML' will cause them lose their links if they copy average HTML"/></dt>
        <dd>Figure: If knowledge workers use 'Convert to XHTML' they will lose their links if they copy average HTML.</dd>
        </dl>
        </li>
        
        
        </li>
        <li>
        <h2><a name="PerformanceMetrics"></a>SharePoint 2010 needs performance metrics overlayed on each web part</h2>
        <p>SharePoint 2010 comes with an awesome developer dashboard, which has very detailed information regarding the loading time of each component on the current page.</p>
        <dl class="image">
        <dt><img src="Images\LoadingTime.jpg" alt="Loading time for each component "/></dt>
        <dd>Figure: loading time of each component on the current page</dd>
        </dl>
        <p>What would make our dream come true is if the web part information can be overlayed on top of the current page, like so:</p>
        <dl class="image">
        <dt><img src="Images\WorleyParsons.jpg" alt="The page of WorleyParsons shows the loading time of each component "/></dt>
        </dl>
        <p>Then we will know at a glance which web part is behaving slowly!  (It's the corporate video web part!)</p>
        </li>
        <li><a name="CheckOutLowDiskSpace"></a><h2>Need clear message when check-out fails because of running out of disk space</h2>
            A SharePoint server ran out of disk space and this caused an error when checking out a document. But the error message was not clear enough to let us aware of the real cause.
         <dl class="image">
        <dt><img src="Images\sharepoint_doc_checkout.jpg" alt="check out a document when running out of disk space"/></dt>
         <dd>Figure: check out a document when running out of disk space</dd>
        </dl>
          <dl class="image">
        <dt><img src="Images\sharepoint_doc_checkout_low_diskspace.jpg" alt="error message not clear enough"/></dt>
         <dd>Figure: error message not clear enough</dd>
        </dl>
        </li>
        <li>
        <h2><a name="LINQDesignerSupport"></a>We need more LINQ Designer Support in 2010</h2>
        <p>I am happy that I don't have to do CAML anymore.<br /> 
           I like how I can generate strongly typed code. </p>
        <ol>
         I liked that it is in a few steps:
        <li>Run Command Line
         <dl class="code">
            <dt>
               <pre>
                  spmetal.exe 
                          /web:http://vm-sp2010-8888/northwind 
                          /language:csharp 
                          /code:Northwind.cs 
                          /namespace:Northwind.SharePoint
                </pre>
             </dt>
          </dl>
        </li>
        <li>Drag Grid and LINQ data source on</li>
        <li>Type in the content type, table name and select (in yellow)
        <dl class="">
          <dt>
            <pre>
             &lt;asp:GridView ID="GridView1" runat="server" DataSourceID="LinqDataSource1" 
    
                   AllowSorting="true" AllowPaging="true"&gt;
               &lt;/asp:GridView&gt;

            &lt;asp:LinqDataSource 
              ID="LinqDataSource1" runat="server" 
              <span style="background-color:yellow">ContextTypeName="Northwind.SharePoint.NorthwindDataContext, Northwind.SharePoint, Version=1.0.0.0, Culture=neutral, PublicKeyToken=9d99d0b2ebec5b2a" 
              TableName="SitePages" 
              Select="new(Name,Path)" </span>
              AutoSort="true" 
              AutoPage="true"&gt;
            &lt;/asp:LinqDataSource&gt;
            </pre>
          </dt>
        </dl>
        </li>
        </ol>
        <B>Suggestion:</B>
        <ol>
        <li>I don't want to type a command line</li>
        <li>I don't want to type in the yellow (I want to be able to select the "NorthwindDataContext" in the designer below)
        
        <dl class="image">
        <dt><img src="Images\ChooseContextObject.jpg" alt="I can't select the 'NorthwindDataContext' in the designer"/></dt>
         <dd>Figure: This doesn't work in SharePoint 2010 Beta2</dd>
        </dl>        
        </li>
        </ol>
        </li>
        <li>
        <h2><a name="MoveFiles"></a>Moving files around - Cut doesn't Cut</h2>
        <p>**SharePoint 2010 beta 2</p>
        <p>I was hoping this would be working for 2010</p>
        <dl class="image">
        <dt><img src="Images\FileCut.jpg" alt=" The Cut doesn't work."/></dt>
         <dd>Figure: Cut doesn't cut </dd>
        </dl>  
        <dl class="image">
        <dt><img src="Images\Pasted.jpg" alt="Not remove. "/></dt>
         <dd>Figure: They pasted - but did not remove</dd>
        </dl>
        <p><b>Suggestion</b><br />
           What I want is a Right Click Menu "Move"
        </p>
        </li>
        <li>
         <h2><a name="AddNew"></a>SharePoint Designer 2010 BCS - Add new External Content Type on the list</h2>
         <p>The new BCS functionality is great.I have noticed a couple of small speed bumps for new users. </p>
         <p>I have presented it a number of times and I have noticed a number of users don't know how to add a new BCS....?even though they just saw me do it.<br /> 
           They know they want to add another record to this list.... but they are lost on how.</p>
         <ul>
          <b>Suggestion:</b>
         <li> When the user goes to the left nav, select External Content Types and then sees the list of external content types...</li>
         <li>At that point, they need a &lt;New External Content Type&gt; at the bottom.</li> 
         </ul>
         <dl class="image">
        <dt><img src="Images\ExternalContentTypesAddNewOption.jpg" alt="We need an add new option for External Content Type"/></dt>
         <dd>Figure: External Content Types list needs a &lt;new&gt; option </dd>
        </dl> 
        </li>
        <li>
         <h2><a name="BCS"></a>SharePoint Designer 2010 - Suggestion for BCS - Educate me with a picture</h2>
          <p>Imagine a user, they know the concept of a BCS, they just not sure what to do next. I have seen them get stuck.</p>
          <ul>
           <b>Suggestion:</b>
           <li>Add the word 'BCS' to one of the left nav items</li>
           <li>Help them stop choosing 'Data Source' to create a BCS</li>
           <li>Add a picture to educate the user about what is an 'External Content Type' and how does it link their SharePoint and external data source <b>*IMPORTANT*</b></li>
          </ul>
         <dl class="image">
          <dt><img src="Images\ExternalContentType.jpg" alt="External Content Type and the external data source"/></dt>
          <dd>Figure: A knowledge worker may not fully understand the concepts of External Content Type, and the external data source. The problem is they always seem to *incorrectly* choose 'Data Source'</dd>
         </dl> 
         <p>
         <b>What would that picture look like?</b><br />
        On the first screen of the wizard, add a welcome screen that explains how the systems will work together. For example:
         </p>
          <dl class="image">
           <dt><img src="Images\WelcomeScreen.jpg" alt="BSC welcome screen"/></dt>
            <dd>Figure: A developer-rendition of a useful welcome screen, which is needed on the BCS wizard</dd>
          </dl> 
        </li>
        <li>
        <a name="UI"></a><h2>SharePoint Designer 2010 - Some of the UI is frightening</h2>
        <p><b>#1 - Where do I type? (Aka should text hyperlinks turn into text boxes?)</b></p>
        <p>BCS UI feedback using SharePoint Designer 2010... Oh boy... Some of the UI is frightening</p>
        <p>I guess many have seen this...And it is little one...But SharePoint 2010 is going to be huge... Like Office 4.3 was in the 90's</p>
        <p>That means the UI will be copied by thousands of application designers... Right?</p>
        <dl class="image">
        <dt><img src="Images\URL.jpg" alt="You can see the URL on the External Content Type UI"/></dt>
         <dd>Figure: Where will this URL take me? Where do I enter? Where are the white text boxes I am used to?</dd>
        </dl> 
        <dl class="image">
        <dt><img src="Images\AfterClickOnTheLink.jpg" alt=" You'll see the highlighted textbox after you click the link"/></dt>
         <dd>Figure: What the hell? When I click on the blue links (was it meant to look like a hyperlink) it turns into a textbox!</dd>
        </dl> 
         <dl class="image">
        <dt><img src="Images\NewBrowserWindow.jpg" alt=" After I click the link, it opens a new window."/></dt>
         <dd>Figure: Just when I thought I got it.... click URL link to edit it.... and it opens in new browser window...</dd>
        </dl> 
        <p>Notice: how there are no visual differences between an inline-field and a hyperlink.</p>
        <ol>
        <b>Summary</b><br />
         The inline-fields, although (incorrectly) becoming somewhat common on the web, is *not* appropriate here in SharePoint Designer
         <li>It is an unintuitive UI at a glance - clicking on a link typically brings a user to a webpage, or at the minimum some form of pop-up, or opening an additional MDI document.</li>
         <li><b>It is inconsistent with the rest of Microsoft Office suite</b></li>
         <li>It's not even consistent with other parts of the SharePoint designer itself</li>
         <li>The textboxes remain links - but the dropdown combos always are dropdowns, and the external system "link" behaves differently again</li>
         <li>Another difference - In web implementations of the inline-field, when the user changes focus the changes are saved immediately. This is not the case for SharePoint designer, the user still has to manually perform the Save operation.</li>        
        </ol>
        <p>Make it a UI standard that we want others to copy.</p>
        <p>Footnote: I do agree that Inline-fields are atheistically prettier than lots of scary textboxes.Especially when most of the time - you don't plan to edit anything. But in SharePoint Designer 2010 it appears 1/2 baked</p>
        <dl class="image">
        <dt><img src="Images\Inline - Fields.jpg" alt=" The Inline-feilds is better than some textboxes "/></dt>
        </dl>  
        </li>
        <li>
          <h2><a name="SampleSite"></a>We need a sample site - like Northwind</h2>
          <ol>
        Today SharePoint 2010 gives a sample site called Contoso that only comes on a VHD
          <li>Any chance we can get a Contoso build to install for the SharePoint 2010 RC?</li>
          <li>Can we get it as an .exe so I can install.... or does it only come on a pre-made VM?</li>
          <li>I wish it was called 'Northwind for SharePoint'  instead of Contoso. Contoso for me should be limited to BI samples<br />
           eg. <a href="http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=868662dc-187a-4a85-b611-b7df7dc909fc">http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=868662dc-187a-4a85-b611-b7df7dc909fc</a><br />
           PS: I also wish we had 'Northwind for TFS', 'Northwind for CRM' etc.
          </li>
          </ol>
         <p>
         <a href="http://www.microsoft.com/downloads/details.aspx?FamilyID=751fa0d1-356c-4002-9c60-d539896c66ce&displaylang=en">http://www.microsoft.com/downloads/details.aspx?FamilyID=751fa0d1-356c-4002-9c60-d539896c66ce&displaylang=en</a><br />
         <b>2010 Information Worker Demonstration Virtual Machine</b><br />
        This download contains a two Virtual Machine set for evaluating and demonstrating Office 2010 and SharePoint 2010
         </p>       
        </li>
        <li>
          <h2><a name="CloseDialog"></a>Help me close the dialog</h2>
          <dl class="image">
            <dt><img src="Images\CloseDialog.jpg" alt="There isn't a 'x' in the up-right corner."/></dt>
            <dd>Figure: Needs a [x] to close the window</dd>
          </dl>         
        </li>
        <li>
          <h2><a name="SPError"></a>SharePoint 2010 - improve frightening errors </h2>
          <p>This is a general question... is this a good error message for when the SQL service is stopped?</p>
          <dl class="image">
            <dt><img src="Images\SPError.jpg" alt="Frightening errors"/></dt>
          </dl>
          <p>Do you guys go to the trouble to giving more meaningful error messages when the database is unavailable?</p>
          <p>
          More Information:<br />
          Yes,I have turned off custom errors on this machine.<br />
          Does that mean I should get scary (non helpful) error messages :-)
          </p>
          <p>
          FYI I had&nbsp;&nbsp;&nbsp;&nbsp;C:\inetpub\wwwroot\wss\VirtualDirectories\80\web.config<br />
           <dl class="code">
            <pre>&lt;customErrors mode="Off" /&gt;</pre>
           </dl>
           Changing it to
           <dl class="code">
            <pre>&lt;customErrors mode="On" /&gt;</pre>
           </dl>
          </p>
          <p>
          gives
           <dl class="image">
            <dt><img src="Images\RuntimeError.jpg" alt="Runtime error"/></dt>
            <dd>
             Description: An application error occurred on the server. The current custom error settings for this application prevent the details of the application error from being viewed.</dd>
           </dl>
          Basically I think it should show 
           <dl class="image">
            <dt><img src="Images\ServerError.jpg" alt="Server error"/></dt>
           </dl>
          </p>
          <p>
          And it should be consistent across all URLs. What I see currently is:<br />
           <dl class="code">
              <pre>http://tarantulasp2010/sites/BethMorgan/Data%20Connections%20for%20PerformancePoint/Forms/By%20Data%20Source%20Type.aspx</pre>
              <dd>Gives scary message</dd>
           </dl>
           <dl class="code">
              <pre>http://tarantulasp2010/sites/BethMorgan/</pre>
              <dd>Gives a 500 error message</dd>
           </dl>
            <dl class="code">
               <pre>http://tarantulasp2010/</pre>
               <dd>Gives a 404 error message</dd>
           </dl>
          </p>
          <p>Nothing helps me identify this common problem quickly.<br />
 
             Please add to the backlog 'Help check SharePoint 2010 error messages are helpful'?</p>
        </li>
        <li>
          <h2><a name="PowerTools"></a>We need SharePoint 2010 PowerTools</h2>
          <p>
            I enjoy SharePoint 2010. Obviously the team have done a lot, but there are a lot of holes in the product. I understand that the team had to cut bits and pieces because getting over the testing bar couldn't be done in the time.
          </p>
          <p>
            I love how the TFS team gives us a package of little extras in 'TFS Power Tools'... these don't need quite the amount of testing, but almost every customer of mine tests and then installs them.
          </p>
          <p>Would you consider doing the same for SharePoint?</p>
        </li>
        <li>
           <h2>
            <a name="LinkToAndFrom"></a>Suggestion - Link to (and from) SharePoint Designer 2010 to SharePoint Central Admin
           </h2>
          <p>2 way integration would be useful for developers, so they get familiar with both tools</p>
          <ol>
            <li>Add a link to and from the equivalent screens<br />
                e.g. From SharePoint http://adam-sp2010demo:10000/_admin/bdc/ViewBDCApplication.aspx?AppId=ba9de91e%2Dd393%2D4a95%2Da561%2D5dc123773669
            </li>
            <li>
               Put those same icons (used in the SharePoint Designer grid) on the web version<br />
               <dl class="image">
                 <dt><img src="Images\LinkTo01.jpg" alt="Add a link to"/>
                  <dd>Figure: Give a link to get to this in SharePoint 2010 Central Admin - External Content Types</dd>
                 </dt>
               </dl>
                <dl class="image">
                 <dt><img src="Images\LinkTo02.jpg" alt="Add a link to"/>
                  <dd>Figure: Give a link to get to this in SharePoint Designer 2010 - External Content Types</dd>
                 </dt>
               </dl>
            </li>
          </ol>         
        </li>
        <li>
           <h2><a name="AddMenu"></a>Make it easier to get images and docs into a SharePoint 2010 image/document library</h2>
            <dl class="image">
               <dt><img src="Images\AddUploadImgMenu.jpg" alt="Add a menu"/>
               <dd>Figure: Add to the right click menu in Windows Explorer 'Send to SharePoint image library'</dd>
                </dt>
            </dl>
        </li>
        <li>
          <h2><a name="WindowArchitecture"></a>Suggestion - fix the window architecture</h2>
           <p>A little one, but I would like to understand the reason... There is something weird with the windows that I have never seen with any other app... when you use Snagit (and the Window option) it will only let you select the top section (see red square) - not the whole window.</p>
           <p>What is the reason?</p>
           <dl class="image">
               <dt><img src="Images\WeirdSelection.jpg" alt="Weird window selection"/>
               <dd>Figure: The window selection with Snagit is weird</dd>
                </dt>
            </dl>
        </li>
        <li>
          <h2><a name="RenameTitleBar"></a>Suggestion - rename the title bar</h2>
          <p>Thinking ahead... renames the title bar</p>
          <p>From<br />
           &nbsp;&nbsp;&nbsp;&nbsp;Microsoft SharePoint Workspace<br />
           To<br />
           &nbsp;&nbsp;&nbsp;&nbsp;Microsoft SharePoint Workspace 2010
          </p>
           <dl class="image">
               <dt><img src="Images\RenameToolBar.jpg" alt="Rename the tool bar"/>
               <dd>Figure: Think ahead to when we have 'Microsoft SharePoint Workspace 2012'... I want it clear which one my user has installed</dd>
               </dt>
            </dl>
        </li>
        <li>
         <h2><a name="Localhost"></a>Tell me what to do, to make localhost work</h2>
         <p>I am on a beautiful SharePoint 2010 box. I want to see all the sites on it.</p>
         <p>
          http://adam-sp2010demo/ <br/>
          And<br />
          http://localhost <br/>
          Should work out of the box (or an option to do it)
         </p>
            <dl class="image">
               <dt><img src="Images\LocalhostNotfound.jpg" alt="HTTP 404 Error page"/>
               <dd>Figure: I hate seeing this on a brand new SharePoint server that has a couple of site collection that I have just made</dd>
               </dt>
            </dl>
            <dl class="image">
               <dt><img src="Images\NavigationPage_small.jpg" alt="We need a navigation page"/>
               <dd>Figure: I would like a navigation page (aka site directory page) - This one possible solution </dd>
               </dt>
            </dl>
            <dl class="image">
               <dt><img src="Images\ListSitesEasily.jpg" alt="A list of all current sites"/>
               <dd>Figure: Then I would see a list of all the current sites without having the hassle of going to SharePoint Central Admin and finding a list of the sites </dd>
               </dt>
            </dl>
        </li>
        <li>
          <h2><a name="ErrorMessage"></a>The 'No Permissions' error message is incorrect</h2>
           <dl class="image">
               <dt><img src="Images\NoPermmissionError.jpg" alt="No Permmission Error "/>
               <dd>Figure: Not true - I do have permissions </dd>
               </dt>
            </dl>
          <p>
           The problem is that 'Data Connection' called 'AdventureWorksCube' has a pencil. I need to save it. <br />
           Tried too many other things before I worked that out.
          </p>
        </li>
        <li>
          <h2><a name="PrintSingleItem">Help Me Print a Single Item in a List</a></h2>
           <dl class="image">
               <dt><img src="Images\TwoMoreItems.jpg" alt=" Two More Items"/> 
               </dt><dd>Figure: This right click menu needs 2 more items</dd>
            </dl>
            <ul>
              Add 2 menus
             <li>Export item in word</li>
             <li>Print via word</li>
            </ul>
            <p>Note: You can solve this with a 3rd party - but no normal user has the skill to find this <a href="https://store.bamboosolutions.com/p-119-list-print.aspx">https://store.bamboosolutions.com/p-119-list-print.aspx</a> </p>
        </li>
        <li>
          <h2><a name="AddValidation"></a>SharePoint 2010 - Add validation to "New Alert"</h2>
          <p>Wiki has nice notification functionality, but missing some validation.</p>
           <dl class="image">
               <dt><img src="Images\SetAlert.jpg" alt="Set Alert "/> 
               </dt>
               <dd>Figure: Wiki have Alert Me | Set an alert on this page</dd>
            </dl>
            <dl class="image">
               <dt><img src="Images\AlertListItem.jpg" alt="Get the alert me from a list item's details page"/> 
               </dt>
               <dd>Figure: You can also get to the Alert Me from a list item's details page </dd>
            </dl>
            <dl class="image">
               <dt><img src="Images\CRMNewAlertOptions.jpg" alt="CRM New Alert Options"/> 
               </dt>
               <dd>Figure: Clicking "OK" should never generate a runtime error</dd>
            </dl>
            <dl class="image">
               <dt><img src="Images\RunTimeErrorAgain.jpg" alt=" Run Time Error Again"/> 
               </dt>
               <dd>Figure: Let me say again... Clicking "OK" should never generate a runtime error</dd>
            </dl>
            <p>How do you fix it?</p>
        </li>
        <li>
          <h2><a name="Workspace">SharePoint Workspace - How did I end up with 2 workspace shortcuts?</a></h2>
            <dl class="image">
               <dt><img src="Images\TwoShortcut.jpg" alt="Two Shortcut "/> 
               </dt>
               <dd>Figure: I am on the server and have 2 shortcuts... seems like a bug  (and they are inconsistent)</dd>
            </dl>
            <dl class="image">
               <dt><img src="Images\DifferentProperties.jpg" alt="Different Properties "/> 
               </dt>
               <dd>Figure: And the properties are different</dd>
            </dl>
        </li>
        <li>
         <h2><a name="VersionNumber"></a>Add the version number in the app name (like other programs eg. Word 2010)?</h2>
          <p>I always think apps should include their version number</p>
           <dl class="image">
               <dt><img src="Images\SharePointworkplace01.jpg" alt="SharePoint workplace without version No."/> 
               </dt>
               <dd>Figure: Where is 2010?</dd>
            </dl>
            <dl class="image">
               <dt><img src="Images\SharePointworkplace02.jpg" alt="SharePoint workplace without version No."/> 
               </dt>
               <dd>Figure: Where is 2010?</dd>
            </dl>
            <a href="/ssw/Standards/BetterSoftwareSuggestions/PerformancePoint.aspx#AppVersioinNumber">Versioin Number missing in PerformancePoint</a>
        </li>
        <li>
          <h2><a name="WikiSEO"></a>Suggestions to SharePoint - Wiki SEO</h2>
          <ul>
            SEO marketers want to use different keywords in the: 
           <li>Page Name</li>
           <li>Page Title</li>
           <li>URL and</li>    
           <li>Meta Description Problem</li>     
          </ul>
          <p>
           SharePoint 2010 Wiki's assumes the same text in first 3 and offers no way of editing the 'Meta Description' tag. 
            This is an incorrect assumption and should be fixed in SP1 (if Microsoft wants to get it used in the CMS world).
          </p>
          <dl class="image">
               <dt><img src="Images\ChangeURL.jpg" alt=" Give us some way of changing the URL"/> 
               </dt>
               <dd>Figure: Give us some way of changing the URL </dd>
            </dl>
            <p>Anyone with a serious Wordpress site installs this SEO add-on called 'All In One'.... The SharePoint community needs tools of this quality and simplicity to install
                <a href="http://wordpress.org/extend/plugins/all-in-one-seo-pack/">http://wordpress.org/extend/plugins/all-in-one-seo-pack/</a> 
             </p>
        </li>
        <li>
          <h2><a name="PasteImgToSP">Help me paste images into SharePoint</a></h2>
          <p>Many people like writing their content offline and then pasting it into the web. SharePoint does not allow this and the images are lost when you paste into a content area.</p>
           <dl class="image">
               <dt><img src="Images\SPImgPaste01.jpg" alt=" SP Img Paste - step 1"/> 
               </dt>
               <dd>Figure: I like writing content in Live Writer </dd>
            </dl>
              <dl class="image">
               <dt><img src="Images\SPImgPaste02.jpg" alt=" SP Img Paste - step 2"/> 
               </dt>
               <dd>Figure: the user thinks the image has been added</dd>
            </dl>
             <dl class="image">
               <dt><img src="Images\SPImgPaste02.jpg" alt=" SP Img Paste - step 3"/> 
               </dt>
               <dd>Figure: I don't think that path will work! </dd>
            </dl>
            <p>If you look closely you will see that it is using a local file system path without warning. This is very bad as every time the user tries to fix this page he will see that image works and think there are no problems.</p>
        </li>
        <li>
          <h2><a name="InsertImg">Inserting images </a></h2>
           <p>**SharePoint 2010 Beta 2**</p>
           <p>
            1)Make links cleaner<br /><br />
            Currently the link says <br />
            "Click here to insert a picture"<br />
            It would be cleaner to have it say <br />
            "Insert a picture"<br /><br />
             We shouldn't have the words "Click here to ..."...it is unnecessary. More info at <a href="/ssw/Standards/Rules/RulesToBetterGoogleRankings.aspx#Relevancy">http://www.ssw.com.au/ssw/Standards/Rules/RulesToBetterGoogleRankings.aspx#Relevancy</a>  
             <dl class="image">
               <dt><img src="Images\LessIsMore.jpg" alt="Less is more"/> 
               </dt>
               <dd>Figure: Less is more. Remove the words "Click here to"</dd>
            </dl>
           </p>
           <p>
            2)Give us the 3 choices<br /><br />
              The second problem is you loose the 3 choices you get on the ribbon bar.<br /> 
              Notice, that once you have inserted the image control using the hyperlink above, the ribbon bar now allows you to use the 3 nicer options such as "Change Picture From Computer"
              <dl class="image">
               <dt><img src="Images\HiddenOptions.jpg" alt="Hidden Options"/> 
               </dt>
               <dd>Figure: Why are the 3 nicer options hidden (prior to inserting an image) </dd>
            </dl>
           </p>
           <p>
            3)	Give us a easy way to have a caption<br /><br />
             More and more knowledge workers are moving from Microsoft Word to SharePoint. Word has always has simple captions on figures.  <br />
             More info here at <a href="/ssw/standards/rules/RulesToBetterWebsitesLayout.aspx#AlwaysAddFiguretoImages">http://www.ssw.com.au/ssw/standards/rules/RulesToBetterWebsitesLayout.aspx#AlwaysAddFiguretoImages</a>
             <ol>
              There needs to be a way to add an image as well as a caption for the image easily. To get this functionality in SharePoint 2010 there will be some additional work. Here are 2 options:
               <li>Create a customized image web part that has an additional caption property (preferred) or</li>
               <li>Use JavaScript (such as via jQuery plugins) to take the image's Alt Text and render it as a caption beneath the image (not preferred as the ALT text and figure are now tied together ?SEO guys are not going to want this)</li>               
             </ol>
           </p>
        </li>
        <li>
          <h2><a name="ClickOnce">SharePoint Designer should be using ClickOnce</a></h2>
          <p>
            It is a shame that SharePoint 2010 does not use ClickOnce technology, and instead tells every user to download it (at large size of 260MB).<br />
            When you go Site Actions | Edit in SharePoint Designer, you are prompted to download SharePointDesigner.exe from Microsoft.com. It would be better if the installer files are put on the server so users can install it using ClickOnce. 
          </p>
          <p>In addition see point 3 in the table of the rule <a href="/ssw/Standards/Rules/RulesToBetterWindowsFormsClickOnce.aspx#Steps">Do you know whether you should use Click Once or MSI</a> , basically if an application is used for the web, it should be using ClickOnce to install.  </p>
           <dl class="image">
               <dt><img src="Images\DownloadProcess.jpg" alt="Download Process"/> 
               </dt>
               <dd>Figure: Instead of using ClickOnce, SharePoint is prompting user to download SharePointDesigner.exe from Microsoft.com  </dd>
            </dl>
        </li>
        <li>
          <h2><a name="VersionAndPlatform"></a>SharePoint Designer installer should include version and platform information</h2>
          <p>
            The SharePoint Designer installer file should be clearer. I would like to see the version and platform added. <br />
            eg. Change  SharePointDesigner.exe to SharePointDesigner_2010_x86.exe</p>
            <p>We have a rule about this Do you include version numbers in your setup filename? </p>
            <dl class="image">
               <dt><img src="Images\DownloadProcess.jpg" alt="Version and platform info missing "/> 
               </dt>
               <dd>Figure: the installer of SharePoint Designer doesn't include version and platform </dd>
            </dl>
        </li>
        <li>
         <h2><a name="PublishFromWorkspace">Let me publish from SharePoint Workspace</a></h2>
           <p>I would be handy to publish files to higher versions directly from Microsoft SharePoint Workspace.</p>
            <dl class="image">
               <dt><img src="Images\SharePointWorkspace.jpg" alt="SharePoint Workspace "/> 
               </dt>
            </dl>
           <p>
             <b>Workaround</b><br />
             When you check-in via "SharePoint Workspace", you have the option of publishing, but not in Office itself.
           </p>
            <dl class="image">
               <dt><img src="Images\Workaround.jpg" alt="Workaround"/> 
               </dt>
            </dl>
        </li>
        <li>
         <h2><a name="Rating">SharePoint 2010 comments/rating functionality</a></h2>
         <ol>
          It's a good news for us that SharePoint 2010 already has Rating functionality by default, but we find that it's not flexible enough when we are trying to use it.
          <li>We cannot add two rating controls to a list, currently one list could only use one rating, it should be able to add multiple ratings to one list.<br />
            E.g. we hope to add two rating controls to "Rule" list:<br />
            Rating A: I like this rule - 5 stars<br />
            Rating B: I follow this rule - 5 stars
          </li>
          <li>
           We cannot change the number of stars which is 5 by default, the number of the stars should be able to be customized.<br />
            E.g. we prefer a rating with 10 stars like IMDB.com:<br />
             <dl class="image">
               <dt><img src="Images\RatingExample.jpg" alt="Rating example "/> 
               </dt>
            </dl>
          </li>          
         </ol>
        </li>
        <li>
          <h2><a name="BlueIcon">Help me know what the blue icon means</a></h2>
           <p>
            Add tooltip hover text on the blue icon that says:<br />
               &nbsp;&nbsp;&nbsp; "This page is modified from the site definition."</p>
             <dl class="image">
               <dt><img src="Images\BlueIcon.jpg" alt="what is the blue icon? "/> 
               </dt>
               <dd>Figure: I have no idea what the blue icon means</dd>
            </dl>
        </li>
        <li>
          <h2><a name="Differences">Help me see the differences</a></h2>
           <dl class="image">
               <dt><img src="Images\CompareButton.jpg" alt="The dialog need a compare button "/> 
               </dt>
               <dd>Figure: This version dialog need a "Compare" button</dd>
            </dl>
             <dl class="image">
               <dt><img src="Images\TFS2010UI.jpg" alt="UI of TFS 2010"/> 
               </dt>
               <dd>Figure: Even better make it consistent with the TFS 2010 UI</dd>
            </dl>
        </li>
        <li>
          <h2><a name="MultiplePlacesForURL">Why multiple places of "Site Url" in a BCS Project</a></h2>
            <p>This really caused me some grief... and it is not even easy to recall once you know.</p>
            <p>I suggest centralizing the 'Site Url' in one place to avoid the potential problem when I change the "Site Url" in project properties. </p>
            <p>How to reproduce?</p>
            <ol>
             <li>Create a "BDCM" project
              <dl class="image">
               <dt><img src="Images\BizDataConnectivityModel.jpg" alt="Create a Business Data Connectivity Model project"/> 
               </dt>
               <dd>Figure 1 - Create a "Business Data Connectivity Model" project </dd>
                </dl>
             </li>
             <li>Notice "Site Url" is stored in two places
               <dl class="image">
               <dt><img src="Images\SiteURLInTwoPlaces.jpg" alt="site url in two places"/> 
               </dt>
               <dd>Figure 2 - The Site URL of the project </dd>
                </dl>
             </li>
             <li>Notice there is a 2nd location you must change.... and is not as easy to find
              <dl class="image">
               <dt><img src="Images\GoToFacebookModel.jpg" alt="Go to FacebookModel | Feature Properties "/> 
               </dt>
               <dd>Figure 3 - Go to FacebookModel | Feature Properties (click on the '…') </dd>
                </dl>
               <dl class="image">
               <dt><img src="Images\ConcealedURL.jpg" alt="Concealed URL"/> 
               </dt>
               <dd>Figure 4 – The concealed 2nd 'Site Url'</dd>
                </dl>           
             </li>
            </ol>
             <p>I believe it is quite redundant and risky to have two "SiteUrl" properties in one project.</p>
             <p>
             Suggestion 1: Proper fix for SharePoint 2012 - Can you centralize the 'Site Url' in one place (at the project level) to avoid the nasty problems when changing the "Site Url" in project properties. <br />
               <span style="background-color:yellow"> Suggestion 2: Quick fix for Service Pack - Give a messagebox warning when you change either "Site Url" so no one has to go through what I did.</span>
             </p>
        </li>
        <li>
          <h2><a name="PageAlternativeURLs">SharePoint 2013 pages should support classical althernative URLs</a></h2>
            <p>SharePoint 2013 supports friendly althernative URL, which is a good feature.</p>
            <p>But sometimes we need to add some "classical althernative URLs":</p>
            <dl class="image">
               <dt><img src="Images\ClassicalUrlToFriendlyUrl.png" alt="Classical URLs has been converted to friendly URL"/> 
               </dt>
               <dd>Figure - classical URL "claimingexpress.aspx" has been changed to claimingexpress-aspx"</dd>
            </dl>
            <p>This feature can be used to avoid the broken links caused by page renaming, as page renmaming could be replaced via adding a classical alternative URLs</p>
            <p>To improve this feature, there are two level improvements:</p>
            <p>Option 1 (Quick update):<br />
               <ul>
                <li>
                    Change “Friendly URL” to “Alternative URL”, make it support character “.”, so it can be used widely.
                </li>
               </ul>
            </p>
            <p>Option 2 (full alternative navigation functionality) - Enhance metadata navigation to support more URL transfer/direct options<br />
               <ul>
                <li>
                    Internal: display the linked page without changing the URL displayed (.net’s Server.Transfer) (aka “Alternative URL”)
                </li>
                 <li>
                    301 Moved permanently: Send a 301 redirect back to the browser
                </li>
                 <li>
                    302 Moved Temporarily: Send a 302 redirect back to the browser
                </li>
               </ul>
            </p>
        </li>
    </ol>
  
    <h2>Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
    </p>
</asp:Content>
