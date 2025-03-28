<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Team Foundation Server (VSTS + TFS) Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
        <div class="TableOfContents">
            <h3>
                Microsoft Team Foundation Server (was Microsoft Visual SourceSafe)</h3>
            <ol>
                <li><a href="#Appstore">Embrace the App store</a></li>
                <li><a href="#Web2">Embrace web 2.0 (aka UserVoice)</a></li>
                <li><a href="#Consistency">Embrace consistency</a></li>
                <li><a href="#AppComponents">Embrace components for Applications</a></li>
                <li><a href="#Scrum">Embrace Scrum</a></li>
                <li><a href="#TFSCompare">Embrace TFS compare</a></li>
                <li><a href="#VersionGuidance">Embrace Versioning and Branching Guidance</a></li>
                <li><a href="#Connect">Embrace and extend Connect</a></li>
                <li><a href="#Communication">Embrace KBs and all communication</a></li>
                <li><a href="#Performance">Embrace Performance by Piggy-backing on SQL Server</a></li>
                <li><a href="#Samples">Embrace Samples and Guidance</a></li>
                <li><a href="#Misc">Embrace a series of Miscellaneous Improvements</a></li>
                <li><a href="#TrackForMasses">Embrace task tracking for the masses</a></li>
                <li><a href="#EmbedImage">Work Items - Help me embed images in the description (this HTML feature is IMPORTANT) </a></li>
                <li><a href="#EmbedVideo">Work Items - Help me embed videos in the description (like you can with Live Writer) </a></li>
                <li><a href="#Wizard">Create project Wizard - Help me create the perfect Team Project</a></li>
               
                <li><a href="#TFSExplorerIntegration"><s>Explorer Integration</s></a><span style="color: #ff0000"><strong>*Fixed by Microsoft TFS Power Tools 2008*</strong></span></li>
                <li><a href="#VSSbackendSQLServer"><s>VSS we need the backend to be SQL Server?</s></a><span style="color: #ff0000"><strong>* Fixed by the release of Microsoft TFS *</strong></span></li>
                <li><a href="#BackupRestoreOptionSomewhere">Backup - Backup and a restore option?</a></li>
                <li><a href="#EditInPlace">Source Control - When comparing differences between two versions, you should be able to edit in place</a></li>
                <li><a href="#Annotate">Source Control - Annotate should enable to edit in place</a></li>
                <li><a href="#ShowFileSizes">Show file sizes in source control explorer (useful when on a slow connection)</a></li>
                <li><a href="#AutomaticallyMergeOfflineEditedFiles"><s>Source Control - It should automatically merge offline edited files</s></a> <span style="color: #ff0000"><strong>* Fixed by Microsoft in TFS *</strong></span></li>
                <li><a href="#AcceptConnectionsInternet"><s>VSS - It needs to able to accept connections over the Internet</s></a> <strong><span style="color: #ff0000">* Fixed by Microsoft in TFS *</span></strong></li>
                <li><a href="#UpdateFileDialogs"><s>VSS - Update File Dialogs</s></a> <strong><span style="color: #ff0000">* Fixed by Microsoft in TFS *</span></strong></li>
                <li><a href="#VersionControlVisualStudioNET"><s>VSS - make it scalable</s></a> <strong><span style="color: #ff0000">* Fixed by Microsoft in TFS *</span></strong></li>
                <li><a href='#CRMIntegration'>CRM Integration in TFS</a></li>
                <li><a href="#BugNotify">Work Items Alerts - Get notified when a bug is fixed</a></li>
                <li><a href="#TFSVersion">Other - TFS Version</a></li>
                <li><a href="#SolutionforTimeSheets">Timesheets - Solution for Time Sheets that kills off Project Server</a></li>
                <li><a href="#SearchFilter">Other - Add a search filter for team projects</a></li>
                <li><a href="#PermissionIssues">Other - Help me diagnose TFS Administration permission issues</a></li>
                <li><a href="#OutlookAddin">Other - Give us an Outlook Add-in, in the box</a></li>
                <li><a href="#ServiceManager2010">Other - Service Manager 2010</a></li>

                <li><a href="#WorkflowIntegration">Build - A built in workflow to deploy a version to staging/production</a></li>
                <li><a href="#WFEvent">Build - workflow events</a></li>
                <li><a href="#Consistent">Build - be consistent</a></li>
                <li><a href="#ServiceEnable">New Project - Be able to choose services for a new team project</a></li>
                <li><a href="#RollbackGUI">Source Control - Rollback should be available in the GUI</a></li>
                <li><a href="#MultiTenancy">Other - Make TFS support multi-tenancy (almost resolved in 2010)</a></li>
                <li><a href="#RefreshTFSCube">Help me refresh the TFS Cube</a></li>
                <li><a href="#UnitTest">Cube - Add the time it takes to run unit tests into the TFS Cube</a></li>
                <li><a href="#AddEstimate">Cube - Add the estimated time into the Data Warehouse</a></li>
                <li><a href="#CubSort">Cub - Sort dimension Date in TFS Cube on key column</a></li>
                <li><a href="#Validate">Cub - Validate dates in the Date dimension</a></li>
                <li><a href="#MakeShelvingAnOptionWhenClosing">Source Control - Make shelving an option when closing a solution or project</a></li>
                <li><a href="#TFSReportCVSR">Reports - Add a report about Created vs Resolved</a></li>
                <li><a href="#ReleaseNote">Reports - Add a built in report 'Release Notes'</a></li>
                <li><a href="#ReportEst">Reports - Add a report that shows developers estimates vs actual (their accuracy in estimating)</a></li>
                
                <li><a href="#Menu">Source Code - Team Explorer - Give me a context menu </a></li>
                <li><a href="#PriorityReport">Reports - Give me a report that shows the priority and the quality of the current features</a></li>
                <li><a href="#HyperlinkFile">Work Item - Add a hyperlink control so a click takes me to the file **CHECK IF Fixed in Rosario</a></li>
                <li><a href="#ReportProductive">Work Item - Help me enter time taken + give me a report of Productive time</a></li>
                <%--<li><a href="#WorkItem">Work items on the web for free</a></li>
                <li><a href="#Multitenant">Multi-tenant - be able to create multiple organizations</a></li>--%>
                <li><a href="#AllServer">Other - Add Users into TFS server, SharePoint server, and SQL Reporting Services server with just one form</a></li>
                <li><a href="#BPA">Other - Add the TFS BPA into the default install</a></li>
                <li><a href="#TFSAddIn">Microsoft should release an Outlook Addin (for TFS Work Items)</a></li>
               
                <%--<li><a href="#Backup">Other - Backup - Archive a Team Project</a></li>                --%>
                <li><a href="#ProjectCreate">Create Project - UI for no source control and no reports (and no crosses)</a></li>
                <li><a href="#Implement">Reports - Add a report evidence based scheduling </a></li>
                <li><a href="#UnitTestRunner">Other - TFS needs to include a unit test runner</a></li>
                <li><a href="#StandardItems">Work Items - Add standard work items to an iteration</a></li>
                <li><a href="#EstimateTime">Add estimate time on the UI when user fire up a get or deletion</a></li>
                <li><a href="#WorkItemLinks">Work Items - Improve Work Item "Links"</a></li>
                <li><a href="#Alternatives">What are the alternatives to TFS?</a></li>
                <li><a href="#DoThis">How can they do this?</a></li>                
                <li><a href="#DeployChangesToAllTeamProjects">Project Templates - Help me deploy my changes to all team projects</a></li>
                <li><a href="#ImproveAboutBox">Improve the About Box</a></li>
                <li><a href="#FindDataViaWebService">Finding all my data via web service</a></li>
                <li><a href="#TFSWorkplace">How should I know what my current machine is in the list of workspaces?</a></li>
                
                <li><a href="#VerifyChanges">Help me know what 'check-in' is about to do </a></li>
                <li><a href="#Iteration">Do you use the term "Iteration" instead of "Sprint" or "Release"?</a></li>
                <li><a href="#PGUIDInTWA">Why do we need a pGUID in the URL's in Team Web Access?</a></li>
                <li><a href="#RemoveSpace">Remove spaces from URL's for readability</a></li>
                <li><a href="#SelectedDashboard">Why is the selected dashboard still visible?</a></li>
                <li><a href="#FewerQueries">Help me create fewer queries</a></li>
                <li><a href="#ZeroSpeedBumps">Help me query my iterations with zero speed bumps</a></li>
                <li><a href="#AddReference">Suggestion - more improvements for Add Reference</a></li>
                <li><a href="#SubscribeToUserStory">Subscribe to a User Story in TSWA</a></li>
                <li><a href="#ShowTotals">Stories Overview report need to show totals</a></li>
                <li><a href="#ShowTasks">Stories Overview report needs to show tasks</a></li>
                
                <li><a href="#ChangeIteration">Why does changing an iteration break a query?</a></li>
                <li><a href="#PasteButton">Work item - Add "Paste to Current Work Item" button</a></li>
                
                <li><a href="#VisibleAttached">Work items - need to make the attachments more visible </a></li>
                <li><a href="#TFSPowerTools">TFS Power Tools - confusing name</a></li>
                <li><a href="#NastyErrorMsg">TFS 2010 Cable unplugged - Remove nasty error message</a></li>
                <li><a href="#CopyWithMissingFormat">Suggestion Missing Right Click "Copy" + Missing Formatting</a></li>
                <li><a href="#MissingStoryPoint">Project - Missing 'Story Points'</a></li>
                <li><a href="#RefreshButton">TFS 2010 - Bug in "Refresh" button in Microsoft Project</a></li>
                <li><a href="#EnableFindingTest">TFS 2010 Suggestion - Enable finding tests easier</a></li>
                <li><a href="#ALMIcons">ALM Icons on the File Menu</a></li>
                <li><a href="#DefinitionOfDone">Scrum Template - Tell me where to put your 'definition of done'</a></li>
                
                <li><a href="#LinkBugs">Linking bugs back to the origin</a></li>
                <li><a href="#ScrumProcessTemplate">Is there a point doing this for the scrum process template?</a></li>
                <li><a href="#DataFilter">Why don't the dashboard graphs have a date filter?</a></li>
                <li><a href="#DropdownMenuFilter">TFS2010 Suggestion - Typing in the Dropdown menu should filter</a></li>
                <li><a href="#ClearerFormat">TFS 2010 - TF.EXE make the format Clearer (little one)</a></li>
                <li><a href="#LessFriction">TFS 2010 - Less Friction - Add 2 more places to add a bug</a></li>
                <li><a href="#RetryButton">Messagebox needs a "try again" button (little one)</a></li>
                <li><a href="#RenameDocuments">TFS 2010 Documents Suggestions - rename to 'Document Library'</a></li>
                <li><a href="#LinkToDocumentLibrary">TFS 2010 Documents Suggestions - Link would be nice, so I can open the 'Document Library' on SharePoint</a></li>
                <li><a href="#ExcelIntegration">TFS 2010 Excel Integration - I want to press 'OK' even when no results</a></li>
                <li><a href="#FailedToCreateProject">TFS 2000 RTM - Help me know the problem when I can't create a team project (aka Error Log Hell)</a></li>
                <li><a href="#MoveWorkItem">Help me move a work item between team projects</a></li>
                <li><a href="#CreatePortalButton">Give me a "Create Project Portal" button please</a></li>
                <li><a href="#CreateQueries">Help me create less queries</a></li>
                <li><a href="#RenameProjects">Help me rename a project</a></li>
                <li><a href="#TeamCalendar">Help me use the Team Calendar</a></li>
                <li><a href="#SaveNextStep">TFS 2010 - permissions problem, would be great to save the next step</a></li>
                <li><a href="#ReportErrorMSG">TFS 2010 Admin Console Reporting - terrible error message</a></li>
                <li><a href="#WallsOfText">Remove Walls of Text &#8211; Add nice Formatting to the Errors</a></li>
                <li><a href="#RemoveSpaceInURL">Remove spaces from URL's for readability</a></li>
                <li><a href="#ScrumTemplate">TFS 2010 - Scrum template - Make it clear if it is story points or hours</a></li>
                <li><a href="#WriteComment">Help me write good comments?</a></li>
                <li><a href="#PortalLayout">Why is the portal layout not consistent?</a></li>
                <li><a href="#BuildBroken">Help me know as soon as possible that the build is broken!</a></li>
                <li><a href="#RewriteWebAccessURL">Help me rewrite Web Access URL's to be more friendly</a></li>
                <li><a href="#TestForBug">Help me remember to create a Test for a Bug</a></li>
                <li><a href="#CauseOfError">[ Other ] - Help me find the cause of an error</a></li>
                <li><a href="#ConflictResolutionDialogs">Version Control - Help me see what to do with conflicts</a></li>
                <li><a href="#TakeChanges">Version Control - Help me take all the changes from one side</a></li>
                <li><a href="#ChangeWhoMade">Version Control - Help me see who made the change </a></li>
                <li><a href="#RememberDoingHistory">Version Control - Help me remember what I was doing</a></li>
                <li><a href="#FilterPending">Version Control - Help me know that you can filter pending changes</a></li>
                <li><a href="#StandardColors">Version Control - Help me recognize instantly what is a delete and what is an add</a></li>
                
                <li><a href="#AddAnnotate">Power Tools - Version Control - Help me Annotate from the files</a></li>
                <li><a href="#WhatChanges">Version Control - Help me see what has changed, when I get latest</a></li>
                <li><a href="#NoNeedScroll">Version Control - Help me not have to scroll</a></li>
                <li><a href="#NormalCombo">Help me work with a normal Combo</a></li>
                
                <li><a href="#CallHierarchy">Help me see the call hierarchy for the events in IntelliTrace </a></li>
                
                <li><a href="#FilterNoise">Help me filter the IntelliTrace noise</a></li>
                <li><a href="#ReopenWorkItem">Help me reopen a work item (like how I can reopen a code file via 'Undo Close')</a></li>
                <li><a href="#ReportTFSServer">Help me report across my entire TFS server</a></li>
                <li><a href="#PublicPortal">A Public Portal for our Customers</a></li>

                <li><a href="#OpenProjectFromSC">TFS2010 - New developers opening a project from source control</a></li>
                <li><a href="#FunctionsOfAnalyzers">Architecture - Help me know what the 3 analyzers do via a popup form</a></li>
                <li><a href="#ToolbarDesire">TFS2010 - General toolbar desire - Help me use my toolbar in my working area </a></li>
                
                <li><a href="#DragPaper">Architecture- Help me drag my paper around (in Dependancy Graph .dgml)</a></li>
                <li><a href="#AddNewItem">Help me add a new work item quickly</a></li>
                <li><a href="#TFSReport">TFS report suggestion</a></li>
                <li><a href="#RefreshData">TFS 2010 - Refresh Report Data</a></li>
                
                <li><a href="#GoldenEgg">I think the VS Extension Manager is our golden egg&#8230; a real success story - let's keep it that way <font color="red">*Important*</font></a></li>
                <li><a href="#LHSExtensionManager">Extension Manager is missing 'TFS' in the left hand nav... so add a Tools | TFS category </a></li>
                <li><a href="#ConfigureDocsAndReports">Help me configure Documents and Reports</a></li>
                <li><a href="#VSScrumTemplate">Help me add the Visual Studio Scrum 1.0 Template to TFS</a></li>
                <li><a href="#ReadOneLine">Help me read one line that tell me the guts of each Report, Excel etc</a></li>
                
                <li><a href="#CodeMetrics">Code Metrics - Help me focus on my code </a></li>
                <li><a href="#ProblemMSGBox">Help me find answers to problem message boxes myself</a></li>
                <li><a href="#WhatJobsDo">Help me know what the jobs do</a></li>
                <li><a href="#ReadyForNextInteration">Help me get ready for the next iteration</a></li>
                <li><a href="#AvoidDuplicatedCode">Do you avoid duplicated code in your solution?</a></li>
                <li><a href="#Screenshots">Work Items - Help me with Screenshots </a></li>
                <li><a href="#RunTests">Add 'Run Tests' on the right click menu </a></li>
                
                <li><a href="#LineInCallView">Help me see find the line in the call view (in one step) when using IntelliTrace</a></li>
                <li><a href="#DescribeBacklog">Help me to describe Product Backlog Items effectively </a></li>
                <li><a href="#TesterDebug">Testers need to debug #1 - but they are *not* going to install and use some diff tool</a></li>
                <li><a href="#InfoAboutMyProject">Help me find file information about my project </a></li>
                <li><a href="#improve-gated-checkin">Improve the Gated Checkin workflow</a></li>
            </ol>
        </div>
        <p>
            <a name="TFS"></a>
        </p>
        <h2>
            Microsoft Team Foundation Server</h2>
        <ol>
            <li>
                <h2>
                    <a name="Appstore"></a>Embrace the App store
                </h2>
                TFS has the potential to be a better platform for creating apps than SharePoint
                or CRM. Clearly Microsoft can't give us every feature we need; so we need third
                parties to fill the gaps. What we need is the ability to:
                <ul>
                    <li>Create TFS Tables</li>
                    <li>Use Linq to TFS (and no, we can't require team explorer to be installed - think
                        about hosting)</li>
                    <li>Create packages (e.g. a .WSP)</li>
                    <li>Create an app store with verification (like Apple)</li>
                </ul>
            </li>
             <li>
                <h2>
                    <a name="Web2"></a>Embrace web 2.0 (aka UserVoice)
                </h2>
                Every Microsoft customer using TFS should have a site called TFS.northwind.com and
                it should be more important to them than mail.northwind.com. It would be the portal
                they go to for work and the portal their customers go to. Please improve the Web
                Access offering (TFSWA):
                <ul>
                    <li>Public and free</li>
                    <li>Do away with Jira </li>
                    <li>Do away with User voice</li>
                    <li>Work with the Silverlight team to replace their <a href="http://dotnet.uservoice.com/">
                        Silverlight User Voice</a> with TFS</li>
                    <li>Work with the SharePoint team to implement a User Voice like app</li>
                    <li>Rename TFSWA to TFS Voice </li>
                    <li>Make beautiful, add lots of Silverlight and jQuery</li>
                    <li>Have http://tfs.northwind.com/FeatureRequests (out of the box)
                      <ul>
                       <li>Note: Includes fixing the licensing for Read-Only users</li>
                        <dl>
                            <dt>
                                <img src="/ssw/standards/bettersoftwaresuggestions/images/LicenseForReadOnlyUsers.jpg" /></dt>
                            
                        </dl>
                      </ul>
                    </li>
                </ul>         
            </li>
            <li>
                <h2>
                    <a name="Consistency"></a>Embrace consistency across Microsoft products
                </h2>
                This one probably goes beyond Brian Harry. We need Steve Balmer to make the teams
                give us consistent experience when we:
                <ul>
                    <li>Create TFS tables, SharePoint lists or CRM entities</li>
                    <li>Create a TFS project collection, SharePoint site collection or CRM organization</li>
                    <li>Write code using Linq to TFS, Linq to SharePoint, Linq to CRM</li>
                    <li>Create Packages (they should all use the WSP technology)</li>
                    <li>When power users customize using TFS Designer, SharePoint Designer or CRM Designer</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="AppComponents"></a>Embrace components for Applications
                </h2>
                Give us a .dll to include in our apps that help users report problems and help developers
                know what is important. Functionality should give us:
                <ul>
                    <li>An unhandled exception logger</li>
                    <li>Reports - showing the most important bugs </li>
                    <li>Adding KBs</li>
                    <li>Message boxes updating to include links to those KBs</li>
                    <li>Feature voting from forms
                        <ul>
                          <li>Like <a href="http://sharepoint.ssw.com.au/Products/TFSSmashingBarrier/Default.aspx">TFS Smashing Barrier</a></li>
                          <li>Reports - showing the most important features</li>
                          <li>Work items to include field for "web pages/Windows forms"</li>
                          <li>Web pages/Windows forms to show associated work items</li>                          
                        </ul>
                    </li>
                    <li>Examples of when to use "Fix It"
                        <br />
                        e.g. When a user needs to change a setting in Tools options</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="Scrum"></a>Embrace Scrum
                </h2>
                The Agile process template in 2010 has improved considerably. It should be enhanced
                further so it supports Scrum, without having to read any books on it:
                <ul>
                    <li>Fix the Agile process template. Don't create a new one</li>
                    <li>Help planning prioritization
                        <br />
                        e.g. $100 - for stakeholders</li>
                    <li>Help estimating
                        <br />
                        e.g. using planning poker- for developers </li>
                    <li>Help the daily scrum - like Telerik's work item manager and burndown - for developers</li>
                    <li>Help the Retro - for the Scrum Team</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="TFSCompare"></a>Embrace TFS compare
                </h2>
                Process Templates are very painful to manage. Currently we have a full-time employee
                helping customers move from process template to another. Give us a way to:
                <ul>
                    <li>Migrate Process Templates automatically</li>
                    <li>Migrate TFS process templates manually (allowing us to build a mapping)</li>
                    <li>Like SQL Compare</li>
                    <li>Submit to a "Process Template App Store" (that allows a business model of, say, 99c per mapping use)</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="VersionGuidance"></a>Embrace Versioning and Branching Guidance
                </h2>
                <dl class="image">
                    <dt><img src="/ssw/standards/BetterSoftwareSuggestions/Images/version-guidance-1.jpg" /></dt>
                    <dd>Figure: No one is using this. Never used it... not even in demo. It needs to do much more</dd>
                </dl>
                <p>What I would like is this to:</p>
                <ul>
                    <li>Select and maintain a branching strategy</li>
                    <li>Select and maintain a release strategy</li>
                    <li>Help create a Service Pack</li>
                    <li>Help create a Hot Fix</li>
                </ul>
                <p><strong>Note:</strong> Additionally call out guidance common to Scrum projects. For example:</p>
                <ul>
                    <li>create a Sprint branch - this is like insurance. It gives the Product Owner the ability to cancel the sprint at any time. You do not want to be left with a half coded Sprint in your baseline code.<br />
                        or</li>
                    <li>introduce Continuous Deployment per Task or per PBI (recommended)</li>
                </ul>
                <p>See below for more screen captures...</p>

            </li>
           
            <li>
                <h2>
                    <a name="Connect"></a>Embrace and extend Connect
                </h2>
                <ul>
                    <li>Include the "Connect" functionality in the box </li>
                    <li>Migrate Connect to TFS.webaccess.uservoice </li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="Communication"></a>Embrace KBs and all communication</h2>
                Outlook is a powerful tool and should unlock its secrets so everyone benefits. Do
                this by having:
                <ul>
                    <li>We need an Outlook client. Team Companion is great but it's not from Microsoft and
                        the majority of customers only use stuff that is "out of the box." </li>
                    <li>A Team Project should create a SharePoint KB site</li>
                    <li>A Team Project should create a SharePoint team discussion site</li>
                    <li>Outlook email integration needs to provide easy integration by:<br />
                        <ul>
                            <li>Public [Team Project] -&gt; Goes into a team discussion</li>
                            <li>Button [Insert Existing KB]</li>
                            <li>Create KB -&gt; Creates a KB</li>
                        </ul>
                        <dl>
                            <dt>
                                <img src="/ssw/standards/rules/images/TFSOutlookIntegration01.jpg" /></dt>
                            <dd>
                                <b>Figure:</b> Outlook emails need a TFS tab to provide easy integration to KBs
                                and making this response public</dd>
                        </dl>
                        <br />
                        <dl>
                            <dt>
                                <img src="/ssw/standards/rules/images/TFSOutlookIntegration02.jpg" /></dt>
                            <dd>
                                <b>Figure:</b> Click Public and the response will be for all to read</dd>
                        </dl>
                    </li>
                    <li>Only be successful if you can update from the webpage or an email client. That means
                        you need Facebook-style notifications (keeping the same subjects) when entries are
                        made to these pages.</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="Performance"></a>Embrace Performance by Piggy-backing on SQL Server
                </h2>
                Two things should be done:
                <ul>
                    <li>Support transactional replication SQL Server (this will allow partial replication)</li>
                    <li>The current version of SQL Server 2008 R2 supports reading from the database mirror
                     <ul>
                      <li>Note: Would provide a little more than the TFS Proxy, but doesn't give us GIT</li>
                     </ul>
                    </li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="Samples"></a>Embrace Samples and Guidance</h2>
                <ul>
                    <li>Create three sample projects:
                      <ul>
                        <li>Tailspin (MVC 3)</li>
                        <li>AdventureWorks (Silverlight)</li>
                        <li>Northwind (WPF)</li>                        
                      </ul>
                    </li>
                    <li>Have an App Store
                        <ul>
                         <li>E.g. Brian Randell would add Blue Yonder</li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="Misc"></a>Embrace a series of Miscellaneous Improvements
                </h2>
                <ul>
                    <li>Deleting projects currently leaves debris that you can see in the warehouse even
                        after rebuilding</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="TrackForMasses"></a>Embrace task tracking for the masses</h2>
                <p>
                    >I know a college sophomore who used her father's TFS to keep track of a semester
                    long research project (with three other students) that had nothing to do with programming
                    at all. They simply loved the ability to keep revision controlled copies of all
                    of their work, and to have a means of tracking the status (especially who was responsible
                    for what, and when).<br />
                    David V. Corbin
                </p>
                <p>
                    Enough said...</p>
                <p>
                    Add a bit of nice integration with SharePoint and then we would have a great solution
                    to offer many teams inside organizations.</p>
            </li>
            
    
            <li>
                <h2>
                    <a name="EmbedImage"></a>Work Items - Help me embed images in the description (this
                    HTML feature is IMPORTANT)</h2>
                <p>
                    (Just like the above suggestion) We need VS.NET to also give us a great HTML work
                    item.
                </p>
                <p>
                    There needs to be an easy way to embed a screenshot into the details of a work item
                    instead of having to attach it to the work item - ideally it should be as easy as
                    a HTML email in Outlook.<br />
                    <br />
                    It must have 100% parity with Outlook - that is I should be able to copy from outlook
                    and paste into a work item (complete with exact formatting and images).
                    <br />
                    Note: If you can't do that, then show an IE control with a preview of the .msg file.
                    <br />
                    <img src="Images/WorkItemDesc.jpg" width="695" height="536" alt="WorkItem Description"
                        border="0">
                    <br>
                    <b>Figure: We also need the same in VS.NET. The Work Item description field needs to
                        support HTML and images. That is 100% parity with Outlook so we could copy from
                        an Outlook email and paste into VS.NET </b>
                    <br />
                </p>
            </li>
            <li>
                <h2>
                    <a name="EmbedVideo"></a>Work Items - Help me embed videos in the description (like
                    you can with Live Writer)
                </h2>
                <p>
                    Please embed videos in the description like you can do this in Live Writer.
                </p>
            </li>
            <li>
                <h2>
                    <a name="Wizard"></a>Create project Wizard - Help me create the perfect Team Project
                </h2>
                Note: This idea was conceived over a few reds with Adam Cogan and the strategic
                thinker Richard Hundhausen<br />
                <br />
                Get the New Project Wizard to help developers avoid common mistakes e.g. labeling,
                versions, patching after release. This great new Wizard should help those who have
                not read a book about SCM (source control management) design patterns.
                <br />
                <br />
                <dl class="image">
                    <dt>
                        <img src="Images/TFSProjectWizard01.jpg" /></dt>
                    <dd>Figure: Enter your features and it will create your iterations</dd>
                </dl>
                <br />
                <%--                (o) By Feature - big or little (recommended)<br />
                Enter your iterations:<br />
                [Feature1_CoolNewX]<br />
                [Feature2_CoolNewY]<br />
                (o) By Date
                <br />
                Choose the period:<br />
                [Every quarter]<br />
                [Every month]<br />
                (this would then configure the iterations)<br />
                <br />--%>
                <dl>
                    <dt>
                        <img src="Images/TFSProjectWizard02.jpg" /></dt>
                    <dd>
                        <b>Figure:</b> Enter your promotion levels and folder structure will be created
                        - it will also create a document that developers/IT admins are to follow when they
                        complete coding</dd>
                </dl>
                <br />
                <%--                [x] Dev<br />
                [x] Test aka UA<br />
                [x] Staging<br />
                [x] Prod<br />
                (this would then create the folder structure. Then open a document "Promotion Level
                - Here is what you do after you have completed coding").
                <br />
                <br />--%>
                <dl>
                    <dt>
                        <img src="Images/TFSProjectWizard03.jpg" /></dt>
                    <dd>
                        <b>Figure:</b> How do you isolate your work?</dd>
                </dl>
                <br />
                <%--                (o) No Branching - work on team<br />
                (o) Branch by Team -
                <br />
                Enter your teams:<br />
                [TeamA]<br />
                [TeamB]<br />
                (o) Branch by Feature (aka creating a bridge, aka Merge Hell)<br />
                (o) Branch by Release (aka major milestones) (Recommended)<br />
                <br />--%>
                <dl>
                    <dt>
                        <img src="Images/TFSProjectWizard04.jpg" /></dt>
                    <dd>
                        <b>Figure:</b> How do you do Hot Fixes?</dd>
                </dl>
                <br />
                <%--                (o) None - just fixes in Dev<br />
                (o) Hot Fix
                <br />
                (o) Hot Fixes that Roll into Service Packs (recommended)<br />
                <br />
                How do you do a Service Pack?<br />
                (o) None<br />
                (o) Service Pack<br />
                <br />--%>
                <dl>
                    <dt>
                        <img src="Images/TFSProjectWizard05.jpg" /></dt>
                    <dd>
                        <b>Figure:</b> How do you do your version?</dd>
                </dl>
                <br />
                <%--            1 part e.g. 3<br />
                2 parts e.g. 3.3<br />
                3 parts e.g. 3.3.3<br />
                4 parts e.g. 3.3.3.3 (recommended)<br />
                <br />
                How do you do Testing<br />
                (o) None<br />
                (o) One person can approve<br />
                (o) Two people can approve<br />
                <br />
                How do you do support?<br />
                (o) etc... etc...<br />
                <br />--%>
                <dl>
                    <dt>
                        <img src="Images/TFSProjectWizard06.jpg" /></dt>
                    <dd>
                        <b>Figure:</b> Finish</dd>
                </dl>
                <br />
                <%--                Now Start coding. Remember:<br />
                - Code in Trunk (aka main, prod)<br />
                - Never do a label - you are using branches<br />
                - Never etc...<br />--%>
            </li>
            
            <li>
                <h2>
                    <a name="TFSExplorerIntegration"></a><s>Explorer Integration</s><span style="color: #ff0000">*
                        Fixed by Microsoft TFS Power Tools 2008 *</span></h2>
                <p>
                    <s>Explorer integration please:</s>
                </p>
                <ul>
                    <li><s>The explorer integration of what state things are in (modified, committed, etc)</s></li>
                    <li><s>Who is the latest author who has worked on each item</s></li>
                    <li><s>What was the last revision the file was modified in</s></li>
                </ul>
                <p>
                    <s>Note: Scott Hanselman has got this working with the CodePlex TFS Bridge - see <a
                        href="/ssw/redirect/TFS_UseSVN.htm">How To: Use the SVNBridge to get TortoiseSVN
                        working with CodePlex</a></s>
                </p>
                <p>
                    <s>Note: The CodePlex team at Microsoft is rumoured to unleash a Subversion to TFS Bridge.
                        Essentially, it's Subversion on the outside, creamy TFS filling on the inside. If
                        it works, it's quite an interesting technical accomplishment - see <a href="/ssw/redirect/TFS_SVNRoll.htm">
                            CodePlex To Roll Out TortoiseSVN Support</a></s>
                </p>
                <p>
                    <s>Note: Ben Day has a commercial third party add - see <a href="/ssw/redirect/TFS_TFSEG.htm">
                        explorer integration with TFS</a></s>
                </p>
                <br>
                <s>Note: this screenshot is from Subversion.</s><br>
                <br>
                <img src="Images/Subversion.gif" width="1315" height="763" alt="Subversion" border="0">
                <br>
                <b><s>Figure: Subversion has a very nice explorer integration which we need in TFS (especially
                    when using it for projects that don'tused VS.NET)</s></b> </li>
            <li>
                <h2>
                    <a name="VSSbackendSQLServer"></a><s>VSS we need the backend to be SQL Server?</s>
                    <span style="color: #ff0000">* Fixed by the release of Microsoft TFS *</span></h2>
            </li>
            <p>
                <s>The speed is so slow it is unusable over a VPN.</s>
            </p>
            <li>
                <h2>
                    <a name="BackupRestoreOptionSomewhere"></a>Backup - Backup and a restore option?</h2>
                <p>
                    We do not have any backup and restore option in TFS. I would like it to be consistent
                    with SQL Server.<br />
                    Therefore I would expect it to go to a Team Project, right click, and choose "Backup".<br />
                    PS: Of course I want everything, Source Code, SharePoint, Reporting Services reports
                    etc.<br />
                </p>
                <img src="Images/BackupInTFS.jpg" width="525" height="265" alt="SQL Server database backup and restore"
                    border="1">
                <br>
                <b>Figure: 'Back Up' and 'Restore' options should exist under a Team Project right click
                    menu (and ideally for on Server menu too)</b><br>
                <br>
                <img src="Images/SQLBackup.jpg" width="433" height="599" alt="SQL Server database backup and restore"
                    border="1">
                <br>
                <b>Figure: SQL Server databases have 'Back up' and 'Restore' option - so should TFS</b>
                <br />
                <p>
                    I want to right click "Back Up" and put the file on the web.
                </p>
                <p>
                    Someone else should be able to download and restore. Just like SQL Server :-)
                </p>
                <p>
                    It should include:
                </p>
                <ul>
                    <li>Work items</li>
                    <li>SharePoint docs</li>
                </ul>
                <p>
                    Note: Before archiving it should check for linked work items + checkins across multiple
                    projects, and deal with it, or give validation.
                </p>
            </li>
            <li>
                <h2>
                    <a name="EditInPlace"></a>Source Control - When comparing differences between two
                    versions, you should be able to edit in place</h2>
                <p>
                    TFS's differences comparison utility is pretty much the same like VSS's. It is still
                    a read-only UI.<br>
                    <img src="Images/TFSCompareDifferences.gif" width="960" height="726" alt="Compare Differences"
                        border="0">
                    <br>
                    <b>Figure: Team Foundation Server's differences comparison utility should allow in place
                        editing</b>
                </p>
                <p>
                    Note #1: Until they fix this, you need to <a href="/ssw/redirect/TFS_Diff.htm">configure
                        VS.NET to use Beyond Compare - the best one (or another one like WinMerge or one
                        of the many other diff/merge tools)</a>
                </p>
                <p>
                    Note #2: Consider DiffDog for XML.
                </p>
            </li>
            <li>
                <h2>
                    <a name="Annotate"></a>Source Control - Annotate should enable to edit in place
                </h2>
                <p>
                    Annotate should allow us to:
                </p>
                <ul>
                    <li>Edit (expect to see it fixed in 2010)</li>
                    <li>Show deleted lines (not likely in 2010)</li>
                    <li>Have a slider to go back and forth in time (I am dreaming!)</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="ShowFileSizes"></a>Show file sizes in source control explorer (useful when
                    on a slow connection)
                </h2>
                <p>
                    The "Get Progress" dialog has been showing for the last 5 minutes. It would be nice
                    to know how big the file is that I'm getting.</p>
                <p>
                    The dialog should show the progress as a % of the file size transferred and show
                    how many megabytes to go.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="images/GetProcess.jpg" alt="Before the 'Get Latest' finished, we should see how long they have left." /></dt>
                    <dd>
                        Figure 1 - Bad Example - The user can't see how long they have left, before the
                        "Get Latest" is finished
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/TeraCopyProcess.jpg" alt="You can see how much has been transferred." /></dt>
                    <dd>
                        Figure 2 - Good Example - TeraCopy shows the user which files are completed, how
                        much has been transferred and how much to go
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="AutomaticallyMergeOfflineEditedFiles"></a><s>Source Control - It should automatically
                        merge offline edited files</s> <span style="color: #ff0000">* Fixed by Microsoft in
                            TFS *</span></h2>
                <p>
                    <s>It should automatically merge offline edited files. Currently when you come back
                        onto the network it doesn't merge, instead it asks "Which file do you want to keep?"
                        e.g. If you edit one function online and edit another function one offline why not
                        just merge them?</s>
                </p>
            </li>
            <li>
                <h2><a name="AcceptConnectionsInternet"></a><s>VSS - It needs to able to accept connections over the Internet</s> <span style="color: #ff0000">* Fixed by Microsoft in TFS *</span></h2>
                <p><s>I want to use my source control system over HTTP.</s></p>
            </li>
            <li>
                <h2>
                    <a name="UpdateFileDialogs"></a><s>VSS - Update File Dialogs</s> <span style="color: #ff0000">
                        * Fixed by Microsoft in TFS *</span></h2>
                <p>
                    <s>The file dialogs are very old and badly need an update. Currently even UNC's are
                        time consuming to access.</s>
                </p>
            </li>
            <li>
                <h2>
                    <a name="VersionControlVisualStudioNET"></a><s>VSS - make it scalable</s> <span style="color: #ff0000">
                        * Fixed by Microsoft in TFS *</span></h2>
                <p>
                    <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                        <tr>
                            <td valign="top">
                                <p>
                                    <b>Update:</b><br>
                                    It is good to see the new Microsoft TFS has solved most of the big problems I had
                                    with VSS, the ones left are much smaller issues in comparison.
                                    <br />
                                    Today Visual Source Safe (aka VSS) is only targeted towards the needs of individual
                                    developers or small developer teams.
                                    <br>
                                    Microsoft has created a new source control system named Team Foundation Server,
                                    a part of Visual Studio Team System. This product has addressed just about all of
                                    VSS's shortcomings and make it suitable for larger, disconnected teams.
                                </p>
                            </td>
                        </tr>
                    </table>
                    <br>
                    <s>Until Microsoft makes a version of SourceSafe that works with SQL Server, we have
                        to rely on alternative, 3rd party tools for source control.</s>
                    <br>
                    <br>
                </p>
            </li>
            
            <li>
                <h2>
                    <a name="CRMIntegration"></a>CRM Integration in TFS</h2>
                <p>
                    Work items should be able to have a link to a Customer in a CRM system.
                    <br />
                    If you are using Microsoft CRM then it should work out of the box, if you aren't,
                    then it should be able to work by providing just a connection string and SQL query
                    to the customer's table (in the Team Project Properties).
                </p>
            </li>
            <li>
                <h2>
                    <a name="BugNotify"></a>Work Items Alerts - Get notified when a bug is fixed</h2>
                <p>
                    Customers should be notified with all details which:
                </p>
                <ul>
                    <li>Can be read offline in an email</li>
                    <li>Informs them when a bug is fixed</li>
                    <li>Informs them when the release comes out</li>
                </ul>
                <p>
                    This needs an Outlook client, see Rules to Better Project Management with TFS: <a
                        href="/ssw/Standards/Rules/RulesToBetterProjectManagementWithTFS.aspx#CompletingWorkItem">
                        Development & Reporting</a>
                </p>
            </li>
            <li>
                <h2>
                    <a name="TFSVersion"></a>Other - TFS Version</h2>
                <p>
                    In SQL Server I run SELECT @@version to get the version number. In TFS it's too
                    hard to find out whether the SP1 is installed. Users should be able to run a command
                    line to get the version.
                </p>
                <p>
                    E.g. "devenv.exe /version" or "tfs.exe /version"</p>
                <p>
                    Plus it should return the type eg Standard, Enterprise
                </p>
            </li>
            <li>
                <h2>
                    <a name="SolutionforTimeSheets"></a>Timesheets - Solution for Time Sheets that kills off Project Server</h2>
                <dl class="image">
                    <dt>
                        <img src="Images/TFS_TS_01.jpg" alt="Time sheets" /></dt>
                    <dd>
                        Figure: Almost every company I have visited has a 'home brew' solution to timesheets,
                        with a long list of things they need.
                    </dd>
                </dl>
                <p>
                    The time sheets solution that Microsoft supplies should:
                </p>
                <ul>
                    <li>Be able to be generated automatically from the work items</li>
                    <li>Not just for developers. The solution should be able to be used by accountants and
                        lawyers if they want timesheets.</li>
                    <li>Work inside VS.NET + TFSWA (but use Silverlight)</li>
                    <li>Integrate with CRM (or a SharePoint web part) so a user can enter timesheets here
                        if they choose</li>
                    <li>Kill off the timesheet part of Project Server </li>
                </ul>
                <p>
                    P.S. If you won't fix this and want us to use Project then help us. I have spoken
                    to many, many developers and I can say that most don't know what MS Project is or
                    anything about the integration with TFS. It would be nice if there is a video showing
                    us how to use it for timesheets</p>
                <p>
                    It would be great if it can cater for consulting companies (e.g. software firms,
                    engineering firms, accounting firms) and require everyone on the team to enter 40
                    hours.</p>
                <p>
                    The goal should be that all developers on a project enter their 40 hours a week
                    into TFS?</p>
                <p>
                    Developers will hate you for it. Many companies outside the Microsoft world will
                    love you for it... Plus you will get great reports</p>
                <p>
                    There are a couple of 3rd party solutions today:
                    <dl class="image">
                        <dt>
                            <img src="Images/NotionTimesheet.jpg" alt="Notion timesheet" /></dt>
                        <dd>
                            Figure: Timesheet solution #1 - Chris Menegay's <a href="/ssw/redirect/NotionSolution.htm"
                                class="external">http://www.notionsolutions.com</a>
                        </dd>
                    </dl>
                    <dl class="image">
                        <dt>
                            <img src="Images/TeamExpandTimesheet.jpg" alt="Team Expand timesheet" /></dt>
                        <dd>
                            Figure: Timesheet solution #1 - Chris Menegay's <a href="/ssw/redirect/TeamExpandSolution.htm"
                                class="external">http://www.teamexpand.com/product/tx-chrono </a>
                        </dd>
                    </dl>
                </p>
            </li>

            <li>
                <h2><a name="SearchFilter"></a>Other - Add a search filter for team projects</h2>
                <p>I like that the UI for this dialog is consistent between Visual Studio, Team Web Access and Test and Lab Manager. However, the UI is consistently bad!</p>
                <p>It is a pain to scroll if you have lots of Team Projects. The dialog needs to have a search filter so you can quickly type a few letters in the Team Project name and narrow down the list.</p>
                <dl class="badImage">
                    <dt><img src="Images/ConnectToTP.JPG" alt="It's difficult to find the project you need from Team Project." /></dt>
                    <dd>Figure: Bad Example - Connect to Team project from Team Project becomes difficult when there are a lot of projects</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/ConnectToTWA.JPG" alt="It's difficult to find the project you need from Team Web Access." /></dt>
                    <dd>Figure: Bad Example - Connect to Team project from Team Web Access becomes difficult  when there are a lot of projects</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/ConnectToYourTP.JPG" alt="It's difficult to find the project you need from Lab and Test Manager." /></dt>
                    <dd>Figure: Bad Example - Connect to Team project from Lab and Test Manager (aka Camano) becomes difficult when there are a lot of projects</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/FacebookList.JPG" alt="Facebook has the search filter" /></dt>
                    <dd>Figure: - Good Example - Quickly search and select the items you need - no need to scroll 100 items!</dd>
                </dl>
            </li>

            <li>
                <h2><a name="PermissionIssues"></a>Other - Help me diagnose TFS Administration permission issues</h2>
                <p>I was trying to run the TfsConfig tool and I kept getting the message:</p>
                <p style="color:red; margin-left:25px;">TF55038: You don't have sufficient privileges to run this tool. Contact your Team Foundation systemadministrator."</p>
                <p>This message made me think that it was something to do with the Install permissions as it is always recommended to use a single account to do every install of TFS.</p>
                <p>I did not install the original TFS on our network and my account was not used to do the TFS2010 install. But I did do the upgrade from 2010 beta 2 to 2010 RC with my current account.</p>
                <p>So I proceeded to do some checking:</p>
                <ol>
                    <li>Am I in the administrators group on the server?
                        <dl class="image">
                            <dt><img src="Images/AdministratorsGroup.JPG" alt="Check if you are in the administrators group" /></dt>
                            <dd>Figure: Yes, I am in the administrators group on the server</dd>
                        </dl>
                    </li>
                    <li>Am I in the Administration Console users list?
                        <dl class="image">
                            <dt><img src="Images/AdministrationConsoleUser.JPG" alt="Check if you are in the administration console users list" /></dt>
                            <dd>Figure: Yes, I am in the Administration Console users list</dd>
                        </dl>
                    </li>
                    <li>Have I reapplied the permissions in the Administration Console users list ticking all the options?
                        <dl class="image">
                            <dt><img src="Images/CheckAdminOptions.JPG" alt="Check the boxes if you want to have all the admin options" /></dt>
                            <dd>Figure: Make sure you check all of the boxed if you want to have all the admin options</dd>
                        </dl>
                        <dl class="image">
                            <dt><img src="Images/CheckOptionsCorrect.JPG" alt="Make sure all options are correct" /></dt>
                            <dd>Figure: Yes, I have made sure that all my options are correct</dd>
                        </dl>
                    </li>
                    <li>Am I in the Team Foundation administrators group?
                        <dl class="image">
                            <dt><img src="Images/TFSAdministratorsGroup.JPG" alt="Check if you are in the TFS administrators group" /></dt>
                            <dd>Figure: Yes, I am in the Team Foundation Administrators group</dd>
                        </dl>
                    </li>
                    <li>Is my account explicitly SysAdmin on the Database server?
                        <dl class="image">
                            <dt><img src="Images/SysAdminOnDBServer.JPG" alt="" /></dt>
                            <dd>Figure: Yes, I do have explicit SysAdmin on the database</dd>
                        </dl>
                    </li>
                </ol>
                <p>Can you guess what the problem was?</p>
                <p><strong>The command line window was not running as the administrator!</strong></p>
                <p>As with most other applications there should be an explicit error message that states:<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"You are not currently running in administrator mode; please restart the command line with elevated privileges!"<br />
                    This would have saved me 30 minutes.
                </p>
            </li>

            <li>
               <h2><a name="OutlookAddin"></a>Other - Give us an Outlook Add-in, in the box</h2>
                <dl class="image">
                    <dt><img src="Images/NewButtonInOutlook.JPG" alt="Add a new button in Outlook" /></dt>
                    <dd>Figure: We need a button like this in Outloot</dd>
                </dl>
                <p>The TFS team do a good job with Excel and Project integration. The next one they need is an Outlook add in. It needs to be as good as TeamCompanion.</p>
            </li>

            <li>
                <h2><a name="ServiceManager2010"></a>Other - Service Manager 2010</h2>
                <p>Would be great to have a WhitePaper explaining Service Manager 2010 features + the  benefits of connecting it up with TFS 2010<br />
                 Would really help planning.</p>
            </li>

            <li>
                <h2>
                    <a name="WorkflowIntegration"></a>Build - A built in workflow to deploy a version
                    to staging/production</h2>
                <p>
                    There needs to be a work flow integrated in TFS so you can send a <a href="/ssw/eXtremeEmails/Reports/TestPleaseReport.htm">
                        'test please'</a> email with a link to "Test Passed" or "Test Failed".<br />
                    Then you could remove the permission for a developer to put a version into production
                    without a "Test Passed" confirmation.<br />
                    The workflow would mean that once the tester 'approves' the test, it moves it from
                    'Test' to 'Staging/Production'. No developer involved...
                </p>
                <p>
                    E.g. Today it can be done with TFS Deployer <a href="/ssw/redirect/TFS_TFSDeployer.htm">
                        Getting Started with TFS Deployer </a>
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/TFS_WI_01.jpg" alt="Workflow" /></dt>
                    <dd>
                        Figure: A developer should not be able to select "Production" until this build has
                        been passed
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="WFEvent"></a>Build - workflow events
                </h2>
                <p>
                    Give us a few events.
                </p>
                <p>
                    So I can build a workflow, to automatically deploy when I change the Build Quality
                    to "Staging/Production".
                </p>
                <p>
                    Upon that event it would run a WF/MsBuild/Powershell script to deploy it.
                </p>
                <p>
                    E.g.
                </p>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            if event(newbuild)<br />
                            compile<br />
                            run tests<br />
                            (the current build process)
                            <br />
                            if event(staging)
                            <br />
                            build ready for staging<br />
                            deploy to staging<br />
                            + send an email
                        </td>
                    </tr>
                </table>
            </li>
            <li>
                <h2>
                    <a name="Consistent"></a>Build - be consistent
                </h2>
                <p>
                    I don't want to become good at WF (preferred), MSBuild and Powershell. I can live
                    with 2 but not 3.
                </p>
            </li>

            <li>
                <h2>
                    <a name="ServiceEnable"></a>New Project - Be able to choose services for a new team
                    project</h2>
                <p>
                    When creating a new team project, users should be able to choose what services are
                    available.<br />
                    This applies to creating a SharePoint Portal, Reporting Services Portal and Source
                    Control.
                </p>
                <p>
                    We need to have TFS solve the scenario of creating a help desk system (for a team
                    that only want the work items)
                </p>
                <p>
                    So this should be a ticketing system - so you need a <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/KB.aspx">
                        KB</a> system as well
                </p>
            </li>
            <li>
                <h2>
                    <a name="RollbackGUI"></a>Source Control - Rollback should be available in the GUI</h2>
                <p>
                    At the moment, the only way to roll back changes is to run a command line script
                    (See Rules to Better Project Management with TFS: <a href="/ssw/Standards/Rules/RulesToBetterVersionControlWithTFS(AKASourceControl).aspx#RollbackChanges">
                        Do you know how to rollback changes in TFS?</a>) It would be nice if we could
                    right click a file and do the same thing. Much like the Get Specific Version command
                </p>
                <p>
                    Note: I am predicting that <a href="http://www.woodwardweb.com/about.html">Martin Woodward</a>
                    will beat Microsoft to this
                </p>
                <br />
                <img src="Images/RollbackGUI1.png" width="293" height="176" alt="Get Specific Version"
                    border="0" />
                <br />
                <b>Figure: We are missing a Rollback choice</b>
                <p>
                    Then we could specify which revision to get based on a changeset number, date or
                    label.</p>
                <br />
                <img src="Images/RollbackGUI2.png" alt="Rollback Selection" border="0" />
            </li>
            <li>
                <h2>
                    <a name="MultiTenancy"></a>Other - Make TFS support multi-tenancy (almost resolved
                    in 2010)</h2>
                <p>
                    Note: Expected to be pretty much done in 2010, but reporting cannot leak out data.
                    Sometimes one team will not want another team to see their work items.
                </p>
                <p>
                    This is the reason that we don't see Hosted TFS (other than one attempt by Readify).
                    <br />
                    Importantly the implementation should be consistent with all other teams that invest
                    heavily in hosting scenarios. So I would like to see a consistent implementation
                    for Exchange Server, WSS and CRM 4
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/TFS_MT_01.jpg" alt="CRM4" /></dt>
                    <dd>
                        Figure: Work with the CRM 4 team to make both experiences consistent
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="RefreshTFSCube"></a>Help me refresh the TFS Cube</h2>
                <p>
                    There should be a context menu on the team project to save you <a href="/ssw/Standards/Rules/RulesToBetterProjectManagementWithTFS.aspx#RefreshCube">
                        learning how to do it the hard way</a></p>
                <dl class="image">
                    <dt>
                        <img src="Images/ReprocessDataWarehouse.jpg" alt="Reprocess data warehouse option" /></dt>
                    <dd>
                        Figure: We need an option on the right click menu to "Reprocess data warehouse"
                    </dd>
                </dl>
                <p>
                    Note: Since I triggered this manually I want to be informed when the Process has
                    been completed.</p>
            </li>
            <li>
                <h2>
                    <a name="UnitTest"></a>Cube - Add the time it takes to run unit tests into the TFS
                    Cube</h2>
                <p>
                    In the test results table there is a start time and a finished time but there isn't
                    a duration. However, duration in the .trx file is the key value users want to know.
                    <dt class="image">
                        <dl>
                            <img src="Images/testing.gif" /></dl>
                        <dd>
                            Figure: should be able to see a graph like this based on the cube</dd>
                    </dt>
                </p>
            </li>
            <li>
                <h2>
                    <a name="AddEstimate"></a>Cube - Add the estimated time into the Data Warehouse
                </h2>
                <p>
                    Need this field in the data warehouse.
                </p>
                <p>
                    Note: I can live without it not being in the cube.
                </p>
            </li>
            <li>
                <h2>
                    <a name="CubSort"></a>Cub - Sort dimension Date in TFS Cube on key column
                </h2>
                <p>
                    Update: Need to test this in 2010 - Data should be under 'Work item' too
                </p>
                <dt class="image">
                    <dl>
                        <img src="Images/TFS_CubSort_1.jpg" alt="Sort Cub" /></dl>
                    <dd>
                        Figure: Microsoft standard TFS Analysis database TFSWarehouse</dd>
                </dt>
                <dt class="image">
                    <dl>
                        <img src="Images/TFS_CubSort_2.jpg" alt="Sort Cub" /></dl>
                    <dd>
                        Figure: Pivot table based on "Team System" cube does not allow sorting on Month
                        (it should be sorted from December to January)</dd>
                </dt>
            </li>
            <li>
                <h2>
                    <a name="Validate"></a>Cub - Validate dates in the Date dimension
                </h2>
                <dt class="image">
                    <dl>
                        <img src="Images/TFS_Validate_1.jpg" alt="TFS Validate" /></dl>
                    <dd>
                        Figure: Invalid dates in Microsoft cube "TFS System" in the dimension "Date"</dd>
                </dt>
            </li>
            <li>
                <h2>
                    <a name="MakeShelvingAnOptionWhenClosing"></a>Source Control - Make Shelving an
                    option when closing a solution or project</h2>
                <p>
                    If you have set Visual Studio to check in everything when closing a solution or
                    project as per the below:
                    <dt class="image">
                        <dl>
                            <img src="Images/SourceControlEnvironmentSettings.jpg" /></dl>
                        <dd>
                            Figure: Check in everything option is checked</dd>
                    </dt>
                </p>
                <p>
                    The screen shown when closing should also include the ability to shelveset rather
                    than check in (commit) the changed files to the repository. The work may still be
                    in progress and should be saved somewhere accessible by others, not just stored
                    on the local machine.
                    <dt class="image">
                        <dl>
                            <img src="Images/ClosingOnlyCheckinIsAvailable.jpg" /></dl>
                        <dd>
                            Figure: There is no option to shelveset changes</dd>
                    </dt>
                </p>
            </li>
            <li>
                <h2>
                    <a name="TFSReportCVSR"></a>Reports - Add a report about Created vs Resolved</h2>
                <p>
                    I would like a report about Created vs Resolved issues like below:
                </p>
                <dt class="image">
                    <dl>
                        <img src="Images/TFSReportCVSR.jpg" alt="Created vs Resolved" />
                    </dl>
                    <dd>
                        Figure: The report which shows the created issues number vs resolved issues number.
                        Green are successful days - so you expect lots of red at the beginning, and green
                        at the end. This way you can see when the release is coming to an end.</dd>
                </dt>
            </li>
            <li>
                <h2>
                    <a name="ReleaseNote"></a>Reports - Add a built in report 'Release Notes'</h2>
                <dl class="image">
                    <dt>
                        <img src="Images/TFS_RN_01.jpg" alt="Release note example" /></dt>
                    <dd>
                        Figure: TFS should include a 'Release Notes' report that we can include on our web
                        pages
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/TFS_RN_02.jpg" alt="Better release note example" /></dt>
                    <dd>
                        Figure: Also give a 2nd even nicer 'Release Notes' report, with grouping for bugs
                        and features
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="ReportEst"></a>Reports - Add a report that shows developers estimates vs
                    actual (their accuracy in estimating)
                </h2>
                <dl class="image">
                    <dt>
                        <img src="Images/TFS_RE_01.jpg" alt="Better release note example" /></dt>
                    <dd>
                        Figure: Here is data for Joe Blow. I want to see the best estimator by plotting
                        each task with the estimate vs actual + I would like to see an estimator getting
                        better over time.
                    </dd>
                </dl>
            </li>
           
            <li>
                <h2>
                    <a name="Menu"></a>Source Code - Team Explorer - Give me a context menu
                </h2>
                <p>
                    I want a content menu in Source Control Explorer "Open with..." and "Open with Notepad"
                    and "Copy Local Path" and "Copy Server Path"
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/TFS_MN_01.jpg" alt="Better release note example" /></dt>
                    <dd>
                        Figure: We need 4 additional options
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="PriorityReport"></a>Reports - Give me a report that shows the priority
                    and the quality of the current features
                </h2>
                <dl class="image">
                    <dt>
                        <img src="Images/TFS_PR_01.jpg" alt="Better release note example" /></dt>
                    <dd>
                        Figure: We need a report like this in Excel and Reporting Services (built in or
                        in Power Tools)
                    </dd>
                </dl>
                <p>
                    Please add in as a reporting services report - not just Excel. And it needs a legend
                    included:
                </p>
                <p>
                    <strong>Legend:</strong><br />
                    Yellow = They're OK<br />
                    Red = They don't have bandwidth to do that feature
                </p>
            </li>
            <li>
                <h2>
                    <a name="HyperlinkFile"></a>Work Item - Add a hyperlink control so a click takes
                    me to the file **CHECK IF Fixed in Rosario
                </h2>
                <p>
                    Note: Ignore this if you can switch this form to use WPF - because then I can do
                    it myself really quickly
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/TFS_HF_01.jpg" alt="File link" /></dt>
                    <dd>
                        Figure: TFS has better add hyperlink can takes us to the file
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="ReportProductive"></a>Work Item - Help me enter time taken + give me a
                    report of Productive time
                </h2>
                <p>
                    I want to resolve a work item, by the work item asking me for the time taken. While
                    I am looking at it, a window under it would be playing what I have been doing since
                    the last work item.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/TFS_RP_02.jpg" alt="Report" /></dt>
                    <dd>
                        Figure: Help me enter time taken. A quick fix would be to buy TimeSnapper or RescueTime
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/TFS_RP_01.jpg" alt="Report" /></dt>
                    <dd>
                        Figure: I would like to see a report like this across my team
                    </dd>
                </dl>
            </li>
            <%--    <li>
        <h2>
            <a name="WorkItem"></a>Work items on the web for free

        </h2>
        <p>
            Give me a SharePoint portal and a voting system, and let my users see all bugs and suggestions (not just the ones they added) for free.
        </p>
    </li>
    <li>
        <h2>
            <a name="Multitenant"></a>Multi-tenant - be able to create multiple organizations
        </h2>
        <p>
                            Make the experience consistent with Microsoft CRM 4 and Microsoft Exchange Server
        </p>
        <p>
                            Note: This is the reason that TFSNow failed
        </p>
    </li>--%>
            <li>
                <h2>
                    <a name="AllServer"></a>Other - Add Users into TFS server, SharePoint server, and
                    SQL Reporting Services server with just one form
                </h2>
                <p>
                    Note: Add one more Analysis Services. In 2010 we might see Excel reports using the
                    cube. If so then these Project managers will need a reader role added too
                </p>
                <ul>
                    <li>Integrate "Team Foundation Server Administration Tool"</li>
                    <li>So you don't need <a href="/SSW/Redirect/TFS_MSDN.htm">Team Foundation Server Administration
                        Tool</a> (ignore that pages says beta. Just follow the link to CodePlex) </li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="BPA"></a>Other - Add the TFS BPA into the default install
                </h2>
                <p>
                    Bill Essary from Microsoft produced the great BPA. It should in on the default install,
                    on the start menu. Do more:
                </p>
                <ol>
                    <li>Include it in default install, on the start menu</li>
                    <li>In 2010 give us a TFS Manager - MMC thing - and make a right click "Check Health"</li>
                    <li>Make it do more. e.g. you are running over privileged accounts (tfsservice needs
                        the loginasservice right only)</li>
                </ol>
                <p>
                    More info <a href="/SSW/Redirect/TFS_BPA.htm">TFS BPA - View 2: Seeing the tool from
                        a PowerTool end-user perspective</a>
                </p>
            </li>
            <li>
                <h2>
                    <a name="TFSAddIn"></a>Microsoft should release an Outlook Addin (for TFS Work Items)
                </h2>
                <p>
                    Or purchase:
                </p>
                <ul>
                    <li>Outlook TFS Addin from: <a href="/SSW/Redirect/TFS_AddIn.htm">Outlook 2007 TFS Addin</a></li>
                    <li>Team Look from: <a href="http://www.teamsystemsolutions.com/teamlook/download.aspx">
                        Team Look</a></li>
                    <li>Team Companion</li>
                </ul>
                <p>
                    More info on <a href="/ssw/Standards/Rules/RulestoBetterProjectManagementwithTFS.aspx#SendDoneMail">
                        How we use Outlook for completing TFS tasks and sending 'done' emails</a></p>
            </li>

            <li>
                <h2>
                    <a name="ProjectCreate"></a>Create Project - UI for no source control and no reports
                    (and no crosses)
                </h2>
                <dl class="image">
                    <dt>
                        <img src="Images/TFS_PC_01.jpg" alt="Project create" /></dt>
                    <dd>
                        Figure: I don't want these crosses if I didn't create a WSS or RS
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="Implement"></a>Reports - Add a report evidence based scheduling
                </h2>
                <dl class="image">
                    <dt>
                        <img src="Images/TFS_IR_01.jpg" alt="Report" /></dt>
                    <dd>
                        Figure: Show me the Probable Ship Date
                    </dd>
                </dl>
                <p>
                    I want the probability date + to see if I am adding work to a release, faster than
                    they can do them. More by someone who knows how to do it right <a href="/ssw/redirect/TFS_JOE.htm">
                        Evidence Based Scheduling</a>
                </p>
            </li>
            <li>
                <h2>
                    <a name="UnitTestRunner"></a>Other - TFS needs to include a unit test runner
                </h2>
                <p>
                    TFS needs to include a unit test runner like NUnit: <a href="/ssw/redirect/TFS_NUNIT.htm">
                        NUnit Home Page</a>
                </p>
            </li>
            

            <li><a name="StandardItems"></a>
                <h2>
                    Work Items - Add standard Work Items to an iteration</h2>
                <p>
                    Any software iteration has a bunch of <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/ReleaseEstimationProcess.aspx">
                        standard items</a> (such as testing, administration etc). It would be great
                    if these could be included with a simple click, rather than having to enter them
                    all in manually.
                </p>
            </li>
            <li><a name="EstimateTime"></a>
                <h2>
                    Add estimate time on the UI when user fire up a get or deletion</h2>
                <p>
                    The server should know how long it takes, so the user know then they won't cancel
                    the task (TFS 2008 doesn't have server cancelation right now, will add in 2010).
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/TFSGetProgress.gif" alt="TFS Get Progress" /></dt>
                    <dd>
                        Figure: TFS Get Progress dialog
                    </dd>
                </dl>
            </li>
            <li><a name="WorkItemLinks"></a>
                <h2>
                    Work Items - Improve Work Item "Links"</h2>
                <p>
                    Basically you should link items together when you think they are the same bug. When
                    you solve one - it might indicate that the related bugs are fixed too.</p>
                <p>
                    So it's nice to have</p>
                <ul>
                    <li>Add a column in the "Links" tab that shows the status of the other work items.</li>
                    <li>If a work item is resolved it shows as a strikethough.</li>
                    <li>When you change the "State" to "Resolved", pop a messagebox saying "This task has
                        2 links which are not resolved."</li>
                    <li>When you open an existing work item and some are now resolved, pop a messagebox
                        saying "Since you last looked at this item, 2 related items have been resolved,
                        which may indicate that this bug is also resolved."</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="Alternatives"></a>What are the alternatives to TFS?</h2>
                <p>
                    There might be a lot of things the team need to do, but I haven't come across a
                    source code solution close to as good as it is today. These are the alternatives
                    I see:
                </p>
                <ul>
                    <li>Source Safe - non scalable</li>
                    <li>CVS - was good 7 years ago</li>
                    <li>Subversion - the 2nd best option</li>
                    <li><a href="/ssw/Standards/DeveloperGeneral/NetTools.aspx#SourceGearVault">SourceGear
                        Vault</a></li>
                    <li>IBM Jazz</li>
                    <li>Perforce - a terrible cryptic interface</li>
                    <li>StarTeam</li>
                    <li>Source Integrity</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="DoThis"></a>How can they do this?
                </h2>
                <p>
                    It is not easy, but one small thing I would suggest is, reducing the testing matrix
                    by supporting:
                </p>
                <ul>
                    <li>SQL 2008 only</li>
                    <li>Windows Server 2008 only</li>
                    <li>64 bit only - see James Manning supports 64 bit only too </li>
                </ul>
            </li>
           
            <li>
                <h2>
                    <a name="DeployChangesToAllTeamProjects"></a>Project Templates - Help me deploy
                    my changes to all team projects</h2>
                <p>
                    The problem: Currently when you change a report (or work item definition etc), you
                    need to manually deploy to all existing team projects.<br />
                    This is a complicated process for a developer, as they need to work out what the
                    various command lines, they will need to successfully deploy.
                </p>
                <p>
                    Solution #1: (simple)<br />
                    <ol>
                        <li>Add a field to a project 'TemplateName'. This stores the template it was created
                            from (and gets updated from)</li>
                        <li>Add a DeployChangesToAllTeamProjects.ps (a powershell script that iterates through
                            projects and updates the relevant ones)</li>
                    </ol>
                </p>
                <p>
                    Solution #2: (ideal)<br />
                    <ol>
                        <li>Do the above</li>
                        <li>Then add UI to the 'Process Template Manager'</li>
                        <li>When you make a new report (or work item definition etc), you would press an "Upload
                            and Deploy" on the 'Project Template Manager'</li>
                    </ol>
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/UpdateAndDeployButton.JPG" alt="Add an update and deploy button" /></dt>
                    <dd>
                        Figure: Need an "Update and Deploy" button
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="ImproveAboutBox"></a>Improve the About Box</h2>
                <p>
                    I instructed one of my guys to tell me what a client's environment is (for upgrade
                    purposes). He says:</p>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;They have TFS 2008 SP1. That is
                    the latest version. So nothing to do.</p>
                <p>
                    He got the info from here...</p>
                <dl class="image">
                    <dt>
                        <img src="Images/TFS2008SP1.JPG" alt="The latest version of TFS 2008 SP1." /></dt>
                </dl>
                <p>
                    This is incomplete, so I would like more shown so he could tell me something like
                    this:</p>
                <dl class="image">
                    <dt>
                        <img src="Images/ListItems.JPG" alt="The items should be shown." /></dt>
                </dl>
                <p>
                    So you need:</p>
                <ol>
                    <li>More information on all the components</li>
                    <li>A 'Check For Update' button</li>
                    <li>A hyperlink to 'Upgrade Instructions'</li>
                </ol>
            </li>
            <li>
                <h2>
                    <a name="FindDataViaWebService"></a>Finding all my data via web service</h2>
                <p>
                    I want to loop through all the data I have in CRM4 to implement proper search in
                    SharePoint.<br />
                    There is a web service <a href="/SSW/Redirect/WebService.htm" class="external">http://msdn.microsoft.com/en-au/library/cc151047.aspx</a>
                </p>
                <p>
                    How do I do this today for my TFS data? It would be great to have a consistent offering
                    from TFS.</p>
            </li>
            <li>
                <h2>
                    <a name="TFSWorkplace"></a>How should I know what my current machine is in the list
                    of workspaces?</h2>
                <p>
                    In VS 2008 go to "Source Control" | "Workspaces"<br />
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/SelectWorkspaces.JPG" alt="Select Workspaces from Source Control" /></dt>
                    <dd>
                        Figure: Select list of Workspaces from VS 2008
                    </dd>
                </dl>
                <p>
                    How do I see what my current machine is?
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/ManageWorkspaces.JPG" alt="Edit Workspaces Name from Source Control" /></dt>
                    <dd>
                        Figure: Add an indicator (CURRENT MACHINE), and a column called: "Last time accessed
                        this TFS"
                    </dd>
                </dl>
            </li>
            
            
            <li>
                <h2>
                    <a name="VerifyChanges"></a>Help me know what 'check-in' is about to do
                </h2>
                <p>
                    Scenario
                    <ol>
                        <li>I browse through a solution</li>
                        <li>Open files in code view or designer (and those files get checked out automatically...
                            I don't think they should)</li>
                        <li>Then I do my daily check in</li>
                        <li>I see a lot of checked out files<br />
                            I am scared... I don't want to lose any changes... but...<br />
                            So what did I do?
                            <dl class="image">
                                <dt>
                                    <img src="Images/CheckInFiles.JPG" alt="Check - in source file dialog shows the files which haven't changed." /></dt>
                                <dd>
                                    Figure: This dialog should not show files that have not changed. Maybe add a button
                                    "# of changed lines"
                                </dd>
                            </dl>
                        </li>
                        <li>Then I write a comment like: "Not sure what I did, but I did no change at all"</li>
                        <li>Click on "Check In" - it gives me
                            <dl class="image">
                                <dt>
                                    <img src="Images/NoChangesWarning.JPG" alt="No changes warning dialog." /></dt>
                                <dd>
                                    Figure: The UI should be changed so this dialog never occurs
                                </dd>
                            </dl>
                        </li>
                        <li>AHHHH... WHAT A RELIEF</li>
                    </ol>
                </p>
                <p>
                    Suggestion<br />
                    <dl class="image">
                        <dt>
                            <img src="Images/VerifyChangesButton.JPG" alt="We need a verify button to check the changes." /></dt>
                        <dd>
                            Figure: The UI should be changed so this dialog never occurs
                        </dd>
                    </dl>
                </p>
            </li>
            <li>
                <h2>
                    <a name="Iteration"></a>Do you use the term "Iteration" instead of "Sprint" or "Release"?</h2>
                <p>
                    It is important that we are consistent in how we call bundles of work. TFS uses
                    Iteration by default and that is how you should also refer to a grouping of work
                    items.</p>
                <dl class="badCode">
                    <dt>
                        <pre>
              Hi Peter, 
              
              Can I get you to approve the following tasks that will be in the next Release 02?           
              - Order Form - Mockup
              - Order Form - Database Schema 
              - Order Form - UI
              - Options Form - Mockup
              - Options Form - UI  
              
               Regards,
               Andy  
              </pre>
                    </dt>
                    <dd>
                        Figure: Bad example - some customers think a release is a module or particular feature
                        set
                    </dd>
                </dl>
                <dl class="badCode">
                    <dt>
                        <pre> 
            Hi Peter,

            Can I get you to approve the following tasks that will be in the next Sprint?
              - Order Form - Mockup
              - Order Form - Database Schema
              - Order Form - UI
              - Options Form - Mockup
              - Options Form - UI

            Regards,
            Andy
                </pre>
                    </dt>
                    <dd>
                        Figure: Bad example - Sprint is not a common term outside of scrum and customers
                        are not familiar with it
                    </dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        <pre> 
            Hi Peter,

            Can I get you to approve the following tasks that will be in the next Iteration 02?
              - Order Form - Mockup
              - Order Form - Database Schema
              - Order Form - UI
              - Options Form - Mockup
              - Options Form - UI

            Regards,
            Andy
                </pre>
                    </dt>
                    <dd>
                        Figure: Good example - Iteration is used to say that the following work items are
                        going to be worked on next
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="PGUIDInTWA"></a>Why do we need a pGUID in the URL's in Team Web Access?</h2>
                <p>
                    Clean up the links in Team Web Access to make it easier to send to others...</p>
                <dl class="image">
                    <dt>
                        <img src="Images/Pguid.JPG" alt="This link has a pGUID." /></dt>
                    <dd>
                        Figure: Even this link has a pGUID...
                    </dd>
                </dl>
                <p>
                    Currently the URL's are horrible:
                    <dl class="code">
                        <dt>
                            <pre>
          http://tfs.ssw.com.au/tfs/web/wi.aspx?id=12650&pguid=406b9537-bcff-4f4a-90dc-f1fca88e7d33
          http://tfs.ssw.com.au/tfs/web/UI/Pages/WorkItems/WorkItemEdit.aspx?id=12650&pguid=406b9537-bcff-4f4a-90dc-f1fca88e7d33
         </pre>
                        </dt>
                    </dl>
                </p>
                <p>
                    Much better:
                    <dl class="code">
                        <dt>
                            <pre>
          http://tfs.ssw.com.au/tfs/web/wi.aspx?id=12650
         </pre>
                        </dt>
                    </dl>
                </p>
            </li>
            <li>
                <h2>
                    <a name="RemoveSpace"></a>Remove spaces from URL's for readability</h2>
                <p>
                    Working at TFS I find myself using URLs all the time</p>
                <p>
                    Why are the words "Team" and "Shared" used on the default portal?</p>
                <p>
                    There is nothing else called "team" or "shared" there, and they really do *not*
                    add any value.
                    <br />
                    In fact they *remove value* because they add those horrible "%20" to the URL's that
                    make them less friendly for users.
                    <dl class="code">
                        <dt>
                            <pre>
            http://projects.ssw.com.au/tfs/Conquest/Team%20Wiki
            http://projects.ssw.com.au/tfs/Conquest/Shared%20Documents
           </pre>
                        </dt>
                    </dl>
                    Should be:
                    <dl class="code">
                        <dt>
                            <pre>
            http://projects.ssw.com.au/tfs/Conquest/Documents
            http://projects.ssw.com.au/tfs/Conquest/Wiki 
           </pre>
                        </dt>
                    </dl>
                </p>
            </li>
            <li>
                <h2>
                    <a name="SelectedDashboard"></a>Why is the selected dashboard still visible?</h2>
                <p>
                    When you select a dashboard, the link remains clickable in the menu! This encourages
                    users to click it again and puts extra load on the server. If a user is on a page,
                    they should not be able to click that link again.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/SelectedItemInDashboard.JPG" alt="The link item is still clickable after you select it." /></dt>
                </dl>
                <ol>
                    A better option:
                    <li>Have the link completely disappear from the list so that it only shows other dashboards.
                        (Recommended)</li>
                    <li>Remove the link from the selected page.</li>
                </ol>
            </li>
            <li>
                <h2>
                    <a name="FewerQueries"></a>Help me create fewer queries</h2>
                <ol>
                    Most people create two queries:
                    <li>The first to do query the work items they want</li>
                    <li>The second to query the same + "Active"</li>
                </ol>
                <dl class="image">
                    <dt>
                        <img src="Images/Queries.JPG" alt="You shouldn't create copies of queries and 'Active'" /></dt>
                    <dd>
                        Figure: Developers should not have to keep creating copies of queries + "Active"
                    </dd>
                </dl>
                <p>
                    Make this easier by adding an "Active" link next to each query (this will auto add
                    "Active" to that query)</p>
                <p>
                    If you are feeling generous, you could add filtering to all of the columns like
                    the Telerik Work Item Manger:</p>
                <dl class="image">
                    <dt>
                        <img src="Images/TSWAFilter.JPG" alt="TSWA shouldn't have filters on the column headers." /></dt>
                    <dd>
                        Figure: Telerik gives filters on the column headers - TSWA should do the same
                    </dd>
                </dl>
            </li>

            <li>
                <h2>
                    <a name="ZeroSpeedBumps"></a>Help me query my iterations with zero speed bumps</h2>
                <p>
                    When we create iteration, you always try to remember the manual step of creating
                    a query to go with it.
                </p>
                <p>
                    Note: Would also be good for it to send an email... for tracking with the URL to
                    follow... similar to the email that SharePoint sends for a new portal or Facebook
                    sends</p>
                <dl class="image">
                    <dt>
                        <img src="Images/NewQueries.JPG" alt="Queries should be created automatically" /></dt>
                    <dd>
                        Figure: These queries should be automatically created, when you create a new iteration
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="AddReference"></a>Suggestion - more improvements for Add Reference</h2>
                <p>
                    We know how long it takes to load this famous dialog in Visual Studio 2008.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/AddReference.JPG" alt="We need three things more like below." /></dt>
                    <dd>
                        Figure: there are 3 things to make the process of adding references to VS.NET better
                    </dd>
                </dl>
                <p>
                    <b>Suggestion #1:</b> Allow me to make a simple _AddMyStandardReferences.bat
                    <br />
                    Do this by adding a checkbox above
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[x] Record into a .bat file<br />
                    Have it create that .bat file
                </p>
                <p>
                    <b>Suggestion #2:</b> Allow me to see the popular references<br />
                    Do this by adding a column "Popularity"
                </p>
                <p>
                    <b>Suggestion #3</b> Why not drag drop references from the file system?<br />
                    <dl class="image">
                        <dt>
                            <img src="Images/DragFileInVS2008.JPG" alt="It's possible to drag a reference onto the project. " /></dt>
                        <dd>
                            Figure: The mouse cursor suggests it is possible to drag a reference onto the project...
                        </dd>
                    </dl>
                    <dl class="image">
                        <dt>
                            <img src="Images/FileTypeChange.JPG" alt="The DLL's get added as content " /></dt>
                        <dd>
                            Figure: Boooo... But the DLL's get added as content in the project... :-(
                        </dd>
                    </dl>
                    <dl class="image">
                        <dt>
                            <img src="Images/DragFileInVS2010.JPG" alt="Failed to drag a file onto the project " /></dt>
                        <dd>
                            Figure: Doesn't work in VS2010 either
                        </dd>
                    </dl>
                    <dl class="image">
                        <dt>
                            <img src="Images/Results.JPG" alt="It's not a reference " /></dt>
                        <dd>
                            Figure: The Result is not a reference :-(
                        </dd>
                    </dl>
                </p>
                <p>
                    At least is the "Add reference" dialog in VS2010 is faster and not so painful, but
                    these 3 suggestions would make it great.</p>
            </li>
            <li>
                <h2>
                    <a name="SubscribeToUserStory"></a>Subscribe to a User Story in TSWA</h2>
                <p>
                    Can I ask the TFS team to add the following user story?</p>
                <i>
                    <p>
                        As an employee<br />
                        I would like to be able to subscribe to a User Story
                        <br />
                        So that I can track its progress and completion.</p>
                </i>
                <dl class="image">
                    <dt>
                        <img src="Images/AlertOnChange.JPG" alt="Alert On Change" /></dt>
                    <dd>
                        Figure: Now I know this is easy to do in Visual Studio with "Alert on Change"
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/NeedUserStoryInTSWA.JPG" alt="TSWA need subscribing to a User Story " /></dt>
                    <dd>
                        Figure: I mean for customers... Boy oh boy... they too want it in Team System Web
                        Access
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="ShowTotals"></a>Stories Overview report need to show totals</h2>
                <p>
                    The report needs footer to the table to show "Total Hours Remaining" and "Total
                    Tests".</p>
                <dl class="image">
                    <dt>
                        <img src="Images/ShowTotalHours.JPG" alt="There aren't total hours in the report. " /></dt>
                    <dd>
                        Figure 1 - Stories Overview Report needs to show the total hours
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="ShowTasks"></a>Stories Overview report needs to show tasks</h2>
                <p>
                    Looking at your project at a high level is fantastic and great for evaluating the
                    general situation but sometimes it is also beneficial to know about the details
                    as well. The current "Stories Overview" report only shows "User Stories".
                    <br />
                    It would be great if there was an extra parameter:<br />
                    "[ ] Show Tasks"
                </p>
                <p>
                    That will show the tasks assigned to the User Story and whether they are completed
                    or not.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/OverviewReport.JPG" alt=" Stories Overview Report" /></dt>
                    <dd>
                        Figure 1 - Stories Overview Report
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/ShowTasksAndHours.JPG" alt=" There aren't tasks and total hours " /></dt>
                    <dd>
                        Figure 2 - Stories Overview Report needs to show tasks and total hours
                    </dd>
                </dl>
            </li>

            

            <li>
                <h2>
                    <a name="ChangeIteration"></a>Why does changing an iteration break a query?</h2>
                <p>
                    If you rename an iteration that is used in one or more queries, those queries break.
                    Because of this, our developers really do not want to make any changes to the iterations
                    because they do not know what it will break!
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/IterationHandledAuto.JPG" alt="The iteration should be handled automatically." /></dt>
                    <dd>
                        Figure: This scenario should be handled automatically
                    </dd>
                </dl>
                <ol>
                    There are two options for solving this:
                    <li>Can all the queries be updated automatically when you change a referenced iteration?
                        (Recommended)</li>
                    <li>Offer the ability to select the iteration before loading the query if it can't be
                        found?</li>
                </ol>
            </li>
            <li>
                <h2>
                    <a name="PasteButton"></a>Work item - Add "Paste to Current Work Item" button</h2>
                <p>
                    I love how Joel Semeniuk released this great TFS app that <a href="/SSW/Redirect/TeamExpandSolution.htm">
                        solves the old image on the clipboard, to TFS work item problem</a>... This
                    makes it easy to get work items into TFS...</p>
                <dl class="image">
                    <dt>
                        <img src="Images/NewPasteButton.JPG" alt="" /></dt>
                    <dd>
                        Figure: We need a button like this to paste an image from the clipboard
                    </dd>
                </dl>
                <p>
                    So go ahead and test Joel's great button above... demo to your customers. They will
                    want it.<br />
                    The TFS team should add this button to the TFS work item (so it an out of the box
                    experience)
                </p>
                
            </li>
            
            <li>
               <h2><a name="VisibleAttached"></a>Work items - need to make the attachments more visible</h2>
                <dl class="image">
                    <dt>
                        <img src="Images/EmailWithAttachments.JPG" alt="Make it visible" /></dt>
                    <dd>
                        Figure: Make it clearer when a work item has attachments. Show all the attachments
                        on the <b>Details</b> tab, like Outlook does.
                    </dd></dl>
                 <p><b>Alternative</b></p>
                 <dl class="image">
                    <dt>
                        <img src="Images/AlternativeAttached.JPG" alt="An alternative way" /></dt>
                    <dd>
                       Figure: As an alternative you could change the tab from 'Attachments' to 'Attachments (2)' 
                    </dd></dl>
            </li>
            
            <li>
                <h2>
                    <a name="TFSPowerTools"></a>TFS Power Tools - confusing name</h2>
                <p>
                    We are having problems updating our SSW Diagnostics scanner as it has the following
                    unrecognized version in <a href="/ssw/Diagnostics/">http://www.ssw.com.au/ssw/Diagnostics/</a></p>
                <p>
                    Currently showing "Microsoft Visual Studio 2010"</p>
                <p>
                    It should show as "Microsoft Team Foundation Server 2010 Power Tools".
                </p>
                <p>
                    Location - C:\Program Files (x86)\Microsoft Team Foundation Server 2010 Power Tools\TFPT.EXE</p>
                <dl class="image">
                    <dt>
                        <img src="Images/TFSDetails.JPG" alt="" /></dt>
                    <dd>
                        Figure: It should show as "Microsoft Team Foundation Server 2010 Power Tools".
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="NastyErrorMsg"></a>TFS 2010 Cable unplugged - Remove nasty error message</h2>
                <p>
                    Open VS 2010 ?This error shows
                    <dl class="image">
                        <dt>
                            <img src="Images/TFSErrorMessage.JPG" alt="This is a nasty error message" /></dt>
                        <dd>
                            Figure - when you open VS 2010 this error should *not* show. Way too nasty. Replace
                            it with the nice one (next figure).
                        </dd>
                    </dl>
                </p>
                <ul>
                    To Repro:
                    <li>Pull out plug</li>
                    <li>Open VS</li>
                    <li>Click "OK" on error message above</li>
                    <li>Close VS 2010 and reopen</li>
                    <li>Then 2nd time you get the below - it is much nicer</li>
                </ul>
                <dl class="image">
                    <dt>
                        <img src="Images/NiceUI.JPG" alt="A nice UI" /></dt>
                    <dd>
                        Figure: Click "OK" above and reopen VS 2010... 2nd time you get this? A much nicer
                        experience
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="CopyWithMissingFormat"></a>Suggestion Missing Right Click "Copy" + Missing
                    Formatting</h2>
                <dl class="image">
                    <dt>
                        <img src="Images/CopyAndSendToWord.JPG" alt="Copy and send to word options" /></dt>
                    <dd>
                        Figure: It would be nice to have 2 more menus "Copy" and "Send to Word"
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/UglyPaste.JPG" alt="An ugly paste" /></dt>
                    <dd>
                        Figure: This is the ugly text you get from the "Paste"
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/PrettyPaste.JPG" alt="A pretty paste with table" /></dt>
                    <dd>
                        Figure: This is the pretty table you *should* get from the "Paste"
                    </dd>
                </dl>
                <p>
                    BTW this is similar to this <a href="/ssw/Standards/BetterSoftwareSuggestions/MSForm.aspx#DataGridsFormattingonCopy">
                        suggestion I gave in 1992 for Windows Forms DataGrids</a></p>
            </li>
            <li>
                <h2>
                    <a name="MissingStoryPoint"></a>Project - Missing 'Story Points'</h2>
                <p>
                    Out of the box Excel has these 2 fields</p>
                <dl class="image">
                    <dt>
                        <img src="Images/ExcelFields.JPG" alt="2 fields " /></dt>
                    <dd>
                        Figure: Good - Excel has "Story Points" and "Stack Rank" out of the box
                    </dd>
                </dl>
                <p>
                    Unfortunately, Project is missing both fields from the 'Out of the Box' experience<br />
                    You can add 'Stack Rank' and 'Baseline Work' without too much trouble... but
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/MissingStoryPoint.JPG" alt="The 'Story Points' is missing " /></dt>
                    <dd>
                        Figure: The worst part is it seems to be missing 'Story Points'
                    </dd>
                </dl>
                <p>
                    Can anyone help?</p>
            </li>
            <li>
                <h2>
                    <a name="RefreshButton"></a>TFS 2010 - Bug in "Refresh" button in Microsoft Project</h2>
                <dl class="image">
                    <dt>
                        <img src="Images/RefreshButton01.JPG" alt="Both open in MS Excel and MS Project " /></dt>
                    <dd>
                        Figure: To repro - open both "Open in Microsoft Excel" and "Open in Microsoft Project"
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/RefreshButton02.JPG" alt="Add a new user story" /></dt>
                    <dd>
                        Figure: Add a new user story
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RefreshButton03.JPG" alt="Excel's refresh " /></dt>
                    <dd>
                        Figure: Good - Excel's Refresh shows the new Work Item
                    </dd>
                </dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/RefreshButton04.JPG" alt=" Project's refresh " /></dt>
                    <dd>
                        Figure: Bad - Project's Refresh does *not* show the new Work Item
                    </dd>
                </dl>
            </li>
            
            <li>
                <h2>
                    <a name="EnableFindingTest"></a>TFS 2010 Suggestion - Enable finding tests easier</h2>
                <ul>
                    When I add a new file with a few unit tests, I would like to quickly find them.
                    I would love you to give me:
                    <li>a new column "File name"</li>
                    <li>right click "Filter to [ ] " and/or</li>
                    <li>new column "Date Modified"</li>
                </ul>
                <dl class="image">
                    <dt>
                        <img src="Images/TestShow.JPG" alt="Way to show test " /></dt>
                    <dd>
                        Figure: I want a way to see the tests only in this file 'CreditCardTests.cs'
                    </dd>
                </dl>
            </li>
            
            <li>
                <h2>
                    <a name="ALMIcons"></a>ALM Icons on the File Menu</h2>
                <dl class="image">
                    <dt>
                        <img src="Images/SourceControlOnFileMenu.JPG" alt="A handy item in the file menu." /></dt>
                    <dd>
                        Figure: A little one, but every bit of branding helps. And visibility on the 'File'
                        menu would surely be handy
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/AddWorkItemInFileMenu.JPG" alt="Also add a icon for 'Work Item' " /></dt>
                    <dd>
                        Figure: Also add the icon for 'Work Items'
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="DefinitionOfDone"></a>Scrum Template - Tell me where to put your 'definition
                    of done'</h2>
                <p>
                    I wish it was obvious where to put the definition of done</p>
                <dl class="image">
                    <dt>
                        <img src="Images/DefaultText.JPG" alt="Default Text" /></dt>
                    <dd>
                        Figure: I love the default text here
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/DefinitionOfDone.JPG" alt="Definition Of Done" /></dt>
                    <dd>
                        Figure: Can we have default text here ?something like this that indicates where
                        to put the 'definition of done'
                    </dd>
                </dl>
                <p>
                    Personally I would prefer to only have one wiki location for all sprints. I have
                    rules and they are not changing :-)
                </p>
                <p>
                    But for new people to Scrum...<br />
                    They don't know where to store it. They should be given a pointer, so they know
                    where to enter their DOD.<br />
                    A little guidance too would be nice.... A little bit of default text in VS or a
                    wiki would get them going.<br />
                    They should see a few default DODs (simple, medium, hard)...<br />
                    PS: the harder ones would list more and more of the features of VS 2010.
                </p>
                <p>
                    Then they would get the idea to start simple, and make improvements over time...
                    I thought devs might want to see past DODs - since we are using a version control
                    system.</p>
                <p>
                    But like I said, I would not want to store it per sprint, but rather at a central
                    wiki location...</p>
            </li>
            
            
            <li>
                <h2>
                    <a name="LinkBugs"></a>Linking bugs back to the origin</h2>
                <p>
                    I think this is a cool report</p>
                <dl class="image">
                    <dt>
                        <img src="Images/CoolReport.JPG" alt="Cool Report " /></dt>
                    <dd>
                        Figure: Cool Report - But how do you get a Bug into the "Bugs" column on this report?
                    </dd>
                </dl>
                <p>
                    Give me something obvious on the UI of the 'Bug' work item... So I know how to do
                    this<br />
                    I have tried going to the 'tasks' tab
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/YellowIconWarning.JPG" alt="Yellow icon warning " /></dt>
                    <dd>
                        Figure: Can't add - see the yellow warning icon
                    </dd>
                </dl>
                <p>
                    So I try on the 'Links' tab</p>
                <dl class="image">
                    <dt>
                        <img src="Images/ChooseLinkType.JPG" alt="Choose link type" /></dt>
                    <dd>
                        Figure: Don't know what to choose?
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="ScrumProcessTemplate"></a>Is there a point doing this for the scrum process
                    template?</h2>
                <p>
                    I guess not - but I am assuming that if there was a report ?the answer would be
                    'yes'</p>
                <dl class="image">
                    <dt>
                        <img src="Images/PointForScrumpProcessTemplate.JPG" alt="A method can do the scrum process template " /></dt>
                    <dd>
                        Figure: You can link it via this method. Is there a purpose?
                    </dd>
                </dl>
            </li>
           
            <li>
                <h2>
                    <a name="DataFilter"></a>Why don't the dashboard graphs have a date filter?</h2>
                <p>
                    The dashboard graphs do not allow the ability to edit the date range from the dashboard
                    page, so xxx.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/StaleData.JPG" alt="Stale data" /></dt>
                    <dd>
                        Figure: Data looks very stale with little movement - what I would like to see is ???
                    </dd>
                </dl>
                <p>
                  When you work in projects that are on going with iterations of a few weeks with stagnant periods [say again or add commas] the data can look very stale. To prevent this each graph should have the appropriate date ranges easily selectable in a combobox.
                </p>
                <ul>
                    For example, "Task Progress" combo box should have:
                    <li>This week</li>
                    <li>Last week</li>
                    <li>Last Two weeks (Default)</li>
                    <li>Last Month</li>
                    <li>Last 3 Months</li>
                    <li>Last 6 Months</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="DropdownMenuFilter"></a>TFS2010 Suggestion - Typing in the Dropdown menu
                    should filter</h2>
                <p>
                    Typing in the Dropdown menu should filter
                    <br />
                    (of course use the built in combobox, if it requires a change to that, modify it
                    and include that as a new property for us to use too)</p>
                <p>
                    Also include a 2nd column that includes some sample data
                    <br />
                    (does not have to be real data)
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/DropdownMenu.JPG" alt="Filter in dropdown menu when you type" /></dt>
                    <dd>
                        Figure: Typing in the Dropdown menu should filter
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="ClearerFormat"></a>TFS 2010 - TF.EXE make the format Clearer (little one)</h2>
                <ul>
                    You want to visually recognize that Workspaces are under Collections E.g.
                    <li>Add an extra line before collection</li>
                    <li>Indent all the stuff under each collection </li>
                </ul>
                <dl class="image">
                    <dt>
                        <img src="Images/WorkplaceUnderCollection.JPG" alt="Make the workspaces appear under a collection" /></dt>
                    <dd>
                        Figure: Make the workspaces appear under a collection
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/Hook.JPG" alt="Need a hook" /></dt>
                    <dd>
                        Figure: Also a hook into DOS view from the UI would be useful. Otherwise you need
                        to Google around. Here is a potential spot in the UI to get to it.
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="LessFriction"></a>TFS 2010 - Less Friction - Add 2 more places to add a
                    bug</h2>
                <p>
                    Watching a couple who really struggled for a minute or two to add a bug today...<br />
                    Being C guys... they are a little slow :) ...and did not know to try right clicking
                    on other nodes.<br />
                    They really expected it to be on the right click menu and on the toolbar.
                </p>
                <dl class="image">
                    <dt><img src="Images/AddBug.JPG" alt="Add Bug" /></dt>
                    <dd>Figure: Add 'Add Bug' to the toolbar and the right click menu of a query</dd>
                </dl>
            </li>
            <li>
                <h2><a name="RetryButton"></a>Messagebox needs a "try again" button (little one)</h2>
                <p>Saw this with a student today</p>
                <dl class="image">
                    <dt><img src="Images/MSGBoxNeedRetryButton.JPG" alt="Need a try again button" /></dt>
                    <dd>Figure: Give me a chance to plug in the cable, or include an image of how to turn it back on later via the File | Source Control menu</dd>
                </dl>
                <p>
                    ---------------------------<br />
                    Microsoft Visual Studio<br />
                    ---------------------------<br />
                    Go Offline<br />
                    The Team Foundation Server http://sswtfs:8080/tfs/defaultcollection is currently
                    unavailable.<br />
                    This solution will be opened offline.<br />
                    ---------------------------<br />
                    OK Help
                    <br />
                    ---------------------------
                </p>
            </li>
            <li>
                <h2>
                    <a name="RenameDocuments"></a>TFS 2010 Documents Suggestions - rename to 'Document
                    Library'</h2>
                <dl class="image">
                    <dt>
                        <img src="Images/RenameDocuments.JPG" alt="Rename Documents" /></dt>
                    <dd>
                        Figure: If you rename it to 'Document Library' people would know (instantly) it
                        is actually SharePoint
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/ChangeIcon.JPG" alt="The icon should be changed,too" /></dt>
                    <dd>
                        Figure: And it would be good to change the icon to use the same one
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="LinkToDocumentLibrary"></a>TFS 2010 Documents Suggestions - Link would be
                    nice, so I can open the 'Document Library' on SharePoint</h2>
                <dl class="image">
                    <dt>
                        <img src="Images/OpenInPortalHook.JPG" alt="Open In Portal Hook" /></dt>
                    <dd>
                        Figure: What was the reason to not give us an 'Open in Portal' hook?
                    </dd>
                </dl>
                <p>
                    This hook would open a URL like http://tfs2010server/sites/DefaultCollection/Deva.O
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/NeedAQuickShortcut.JPG" alt="Need a quick shortcut to link to Document Library" /></dt>
                    <dd>
                        Figure: Want a quick shortcut to this Document Library
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="ExcelIntegration"></a>TFS 2010 Excel Integration - I want to press "OK" even
                    when no results</h2>
                <p>
                    ...because I want the query to add work items</p>
                <dl class="image">
                    <dt>
                        <img src="Images/OKButton.JPG" alt="Add an 'OK' button" /></dt>
                    <dd>
                        Figure: Allow me to press "OK" so I can add some data
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                <a name="FailedToCreateProject"></a>TFS 2000 RTM - Help me know the problem when
                    I can't create a team project (aka Error Log Hell)</h2>
                 <p>
                  When user is trying to achieve a simple task... and that application gives an error... and the user then has to open a log file... and then that user has try to work out what the error is... they are experiencing 'error log hell'.
                  Too often apps give errors in logs, rather than a validation error. I always believe going to the logs should be exception ?not the rule. <br /><br />
                  This is a good example of this TFS giving the user 'error log hell'.
                 </p>
                <dl class="image">
                    <dt>
                        <img src="Images/TeamProjectCreationFailed.JPG" alt="Failed to create a team project" /></dt>
                    <dd>
                    </dd>
                </dl>
                <div class="greyBox">
                  <p>
                   Error<br />
                   The Project Creation Wizard encountered an error while creating reports to the SQL Server <br />
                   Reporting Services on http://tfs-rc-demo-v7/ReportServer/ReportService2005.asmx. <br />

                   Explanation <br />
                   The Project Creation Wizard encountered a problem while creating reports on the SQL Server 
                   Reporting Services on http://tfs-rc-demo-v7/ReportServer/ReportService2005.asmx. 
                   The reason for the failure cannot be determined at this time. Because the operation failed, 
                   the wizard was not able to finish creating the SQL Server Reporting Services site. 
                   <br />
                   User Action <br />
                   Contact the administrator for the SQL Server Reporting Services on 
                   http://tfs-rc-demo-v7/ReportServer/ReportService2005.asmx to confirm that
                    the SQL Server Reporting Services server is running and you have 
                    sufficient privileges to create a project. Your user account on SQL 
                    Server Reporting Services must have Content Manager permission to create
                    a new project. Also, you might find additional helpful information in the 
                    project creation log. The log shows each action taken by the wizard at the
                     time of the failure and may include additional details about the error.                   
                  </p>
                </div>
                <p><b>Suggestion #1 - add validation and improve that error</b></p>
                <p>
                    Add validation and then say
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Some idiot deleted the 2 data sources from http://tfsServer/Reports/Pages/Folder.aspx
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fix this by creating a new data warehouse via TFS Administration
                    Console
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/DeletedItems.JPG" alt="Two items are deleted" /></dt>
                    <dd>
                        Figure: The TFS team should tell the user to find the goose that deleted these 2
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/MissingData.JPG" alt="Missing Data" /></dt>
                    <dd>
                        Figure: The TFS team should validate for missing data sources and then include this screen capture in
                        the solution
                    </dd>
                </dl>
                <p><b>Suggestion #2 - Don't stop at this one issue.Add other validation so that a user does not need to read the log to find the problem</b></p>  
                <p>Here is an example: </p>                  
                <div class="greyBox">
                    <p>
                        ---begin Exception entry--- Time: 2010-04-12T07:49:13 Module: Engine Event Description:
                        TF30162: Task "Populate Reports" from Group "Reporting" failed Exception Type: Microsoft.TeamFoundation.Client.PcwException
                        Exception Message: The Project Creation Wizard encountered an error while creating
                        reports to the SQL Server Reporting Services on http://tfs-rc-demo-v7/ReportServer/ReportService2005.asmx.
                        Exception Details: The Project Creation Wizard encountered a problem while creating
                        reports on the SQL Server Reporting Services on http://tfs-rc-demo-v7/ReportServer/ReportService2005.asmx.
                        The reason for the failure cannot be determined at this time. Because the operation
                        failed, the wizard was not able to finish creating the SQL Server Reporting Services
                        site.
                    </p>
                    <p>
                        Stack Trace: at Microsoft.VisualStudio.TeamFoundation.RosettaReportUploader.Execute(ProjectCreationContext
                        context, XmlNode taskXml) at Microsoft.VisualStudio.TeamFoundation.ProjectCreationEngine.TaskExecutor.PerformTask(IProjectComponentCreator
                        componentCreator, ProjectCreationContext context, XmlNode taskXml) at Microsoft.VisualStudio.TeamFoundation.ProjectCreationEngine.RunTask(Object
                        taskObj)<br />
                         -- Inner Exception -- 
                        <br />
                        Exception Message: The item '/Tfs2010OlapReportDS'cannot be found. (type ReportingServiceException) 
                        <br />
                        Exception Stack Trace: at Microsoft.TeamFoundation.Client.Reporting.ReportingUtilities.ConvertException(SoapException
                        e) at Microsoft.TeamFoundation.Client.Reporting.ReportingUtilities.HasPermissions(ReportingService
                        proxy, String itemPath, String[] permissions) at Microsoft.TeamFoundation.Client.Reporting.ReportingUtilities.CheckPermissions(ReportingService
                        proxy, String itemPath, String[] requiredPermissions) at Microsoft.TeamFoundation.Client.Reporting.ReportingUploader.Validate()
                        at Microsoft.VisualStudio.TeamFoundation.RosettaReportUploader.Execute(ProjectCreationContext
                        context, XmlNode taskXml)
                    </p>
                    <p>
                        Inner Exception Details: Exception Message: System.Web.Services.Protocols.SoapException:
                        The item '/Tfs2010OlapReportDS' cannot be found. ---&gt; Microsoft.ReportingServices.Diagnostics.Utilities.ItemNotFoundException:
                        The item '/Tfs2010OlapReportDS' cannot be found. at Microsoft.ReportingServices.WebServer.ReportingService2005Impl.GetPermissions(String
                        Item, String[]& Permissions) at Microsoft.ReportingServices.WebServer.ReportingService2005.GetPermissions(String
                        Item, String[]& Permissions) (type SoapException)SoapException Details: &lt;detail&gt;&lt;ErrorCode
                        xmlns="http://www.microsoft.com/sql/reportingservices"&gt;rsItemNotFound&lt;/ErrorCode&gt;&lt;HttpStatus
                        xmlns="http://www.microsoft.com/sql/reportingservices"&gt;400&lt;/HttpStatus&gt;&lt;Message
                        xmlns="http://www.microsoft.com/sql/reportingservices"&gt;The item '/Tfs2010OlapReportDS'
                        cannot be found.&lt;/Message&gt;&lt;HelpLink xmlns="http://www.microsoft.com/sql/reportingservices"&gt;http://go.microsoft.com/fwlink/?
                        LinkId=20476&amp;EvtSrc=Microsoft.ReportingServices.Diagnostics.Utilities.ErrorStrings&amp;EvtID=rsItemNotFound&amp;ProdName=Microsoft%20SQL%20Server%20Reporting%
                        20Services&amp;ProdVer=10.0.2734.0&lt;/HelpLink&gt;&lt;ProductName xmlns="http://www.microsoft.com/sql/reportingservices"&gt;Microsoft
                        SQL Server Reporting Services&lt;/ProductName&gt;&lt;ProductVersion xmlns="http://www.microsoft.com/sql/reportingservices"&gt;10.0.2734.0&lt;/ProductVersion&gt;&lt;ProductLocaleId
                        xmlns="http://www.microsoft.com/sql/reportingservices"&gt;127&lt;/ProductLocaleId&gt;&lt;OperatingSystem
                        xmlns="http://www.microsoft.com/sql/reportingservices"&gt;OsIndependent&lt;/OperatingSystem&gt;&lt;CountryLocaleId
                        xmlns="http://www.microsoft.com/sql/reportingservices"&gt;1033&lt;/CountryLocaleId&gt;&lt;MoreInformation
                        xmlns="http://www.microsoft.com/sql/reportingservices"&gt;&lt;Source&gt;ReportingServicesLibrary&lt;/Source&gt;&lt;Message
                        msrs:ErrorCode="rsItemNotFound" msrs:HelpLink="http://go.microsoft.com/fwlink/?
                        LinkId=20476&amp;EvtSrc=Microsoft.ReportingServices.Diagnostics.Utilities.ErrorStrings&amp;EvtID=rsItemNotFound&amp;ProdName=Microsoft%20SQL%20Server%20Reporting%20Services&amp;ProdVer=10.0.2734.0"
                        xmlns:msrs="http://www.microsoft.com/sql/reportingservices"&gt;The item '/Tfs2010OlapReportDS'
                        cannot be found.&lt;/Message&gt;&lt;/MoreInformation&gt;&lt;Warnings xmlns="http://www.microsoft.com/sql/reportingservices"
                        /&gt;&lt;/detail&gt;
                    </p>
                </div>
                <p><b>Figure: Use validation to avoid making a user read this log file... this is a painful way to solve their problem</b></p>
            </li>
            <li>
                <h2>
                    <a name="MoveWorkItem"></a>Help me move a work item between team projects</h2>
                <p>
                    If I create a work item in the wrong team project, I want a menu option to move
                    it into the correct Team Project. Currently I have to 'destroy' it, and then re-create
                    it.</p>
            </li>
            <li>
                <h2>
                    <a name="CreatePortalButton"></a>Give me a "Create Project Portal" button please</h2>
                <p>
                    See 'xxxx' for the current workaround</p>
                <dl class="image">
                    <dt>
                        <img src="Images/ProjectPortalSettings.JPG" alt="Project Portal Settings" /></dt>
                    <dd>
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="CreateQueries"></a>Help me create less queries</h2>
                <ol>
                    Most people create two queries:
                    <li>The first to do query the work items they want</li>
                    <li>The second to query Active work items on the same set</li>
                </ol>
                <dl class="image">
                    <dt>
                        <img src="Images/CreateQueries.JPG" alt="CreateQueries" /></dt>
                    <dd>
                    </dd>
                </dl>
                <ul>
                    Make this easier by:
                    <li>adding an "Active" link next to a query that only shows active in that query</li>
                    <li>adding filtering to the state column to do this on the query page.</li>
                </ul>
                <p>
                    If you are feeling generous, you could add filtering to all of the columns like
                    the Telerik Work Item Manger:</p>
                <dl class="image">
                    <dt>
                        <img src="Images/Filters.JPG" alt="Filters" /></dt>
                    <dd>
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="RenameProjects"></a>Help me rename a project</h2>
                <p>
                    Is it that hard to allow the renaming of a project?</p>
                <ul>
                    One of our projects has quite a long name with two spaces. Let us call it "Hinshelwood's
                    of Glasgow" which gives us two problems:
                    <li>It is rather long and makes project URL's less user friendly (yes we are back to
                        that)</li>
                    <li>It gives away the client name, which on some projects is sensitive.</li>
                </ul>
                <p>
                    Why have URL's like:<br />
                    http://tfs.ssw.com.au/tfs/web/UI/Pages/WorkItems/QueryResult.aspx?path= <span class="highlight">
                        Hinshelwoods%20Of%20Glasgow</span>%2FTeam%20Queries%2FMy%20Work%20Items&pguid=cd9aadc0-e886-4b01-8eb2-959adefbca74
                    <br />
                    When it could be:<br />
                    http://tfs.ssw.com.au/tfs/web/UI/Pages/WorkItems/QueryResult.aspx?path= <span class="highlight">
                        HOG</span>/Team%20Queries/MyWorkItems<br />
                    Much more readable and does not give away the clients identity, but to do this <b>I
                        need to rename the project!</b>
                    <br />
                    Please allow us to rename out projects :(
                </p>
            </li>
            <li>
                <h2>
                    <a name="TeamCalendar"></a>Help me use the Team Calendar</h2>
                <p>
                    Does anyone use the Portal calendar?<br />
                    Unless we can guarantee with a query/list that all the right people have the calendar
                    linked to their outlook it is not very useful. Everyone on the team needs the same
                    picture.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/UseCalendar.JPG" alt="Use Calendar" /></dt>
                    <dd>
                        Figure: We need some way to force calendar integration
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="SaveNextStep"></a>TFS 2010 - permissions problem, would be great to save
                    the next step</h2>
                <p>
                    When a user gets this error... It is intimidating... Really they should just email
                    the TFS administrator and say "Please give me xxx permission"<br />
                    I have watched them... they think that *they* have done something wrong.
                </p>
                <p>
                    So do you think we should add a button next to the "OK" button that says:<br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "Ask your TFS Administrator for Permission"
                </p>
                <p>
                    Note: This requires a field in the TFS Admin Console.
                    <br />
                    Note: The email to the TFS Admin should have a link to tell them what to do.<br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;E.g. Bad option - Add Bob as a domain admin (the
                    local admin group)<br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;Good option - etc
                </p>
                <p>
                    I think this would be an awesome feature...</p>
                <dl class="image">
                    <dt>
                        <img src="Images/AskForPermission.JPG" alt="Need a button - Ask TFS Admin For Permission" /></dt>
                    <dd>
                        Figure: A button is needed "Ask your TFS Administrator for Permission"
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="ReportErrorMSG"></a>TFS 2010 Admin Console Reporting - terrible error message
                </h2>
                <p>
                    I was asked to 'fix up the permissions problems' on a TFS server that another consultant
                    setup. So I need more info to help me find the problem.<br />
                    Terrible error message - I can't see anything missing or wrong on the 3 tabs<br />
                    I spent a couple of hours trying to find it.<br />
                    Gave up... uninstalled RS and installed RS<br />
                    This error message needs improving &#8211; it is useless
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/TerribleErrorMSG.JPG" alt="Terrible error MSG" /></dt>
                    <dd>
                        Figure: Terrible error message - I can't see anything missing or wrong on the 3
                        tabs
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="WallsOfText"></a>Remove Walls of Text &#8211; Add nice Formatting to the
                    Errors</h2>
                <p>
                    Now don't get concerned... this request is only about asking for colors/formatting
                    (there is no bug)</p>
                <p>
                    When you get an error here...<br />
                    Then you click the hyperlink and look at the error... it is a wall of text... I
                    have a suggestion:</p>
                <ul>
                    When you hit an error, can you format it in HTML.... plain text makes it sooooo
                    hard....
                    <br />
                    <li>make the error easy to see by making it in red color </li>
                    <li>and highlight the Exception Message</li>
                </ul>
                <p>
                    See below for example</p>
                <div class="greyBox">
                    <p>
                        2009-08-29T12:59:30 | Module: Internal | Team Foundation Server proxy retrieved
                        | Completion time: 0 seconds<br />
                        2009-08-29T12:59:30 | Module: Internal | The template information for Team Foundation
                        Server "vsts2010\DefaultCollection" was retrieved from the Team Foundation Server.
                        | Completion time: 0.0100006 seconds<br />
                        2009-08-29T12:59:31 | Module: Wizard | Retrieved IAuthorizationService proxy | Completion
                        time: 0 seconds<br />
                        2009-08-29T12:59:31 | Module: Wizard | TF30227: Project creation permissions retrieved
                        | Completion time: 0.0090005 seconds<br />
                        2009-08-29T12:59:55 | Module: Engine | Thread: 12 | New project will be created
                        with the "SSW for Agile Software Development - v1.3 Beta" methodology<br />
                        2009-08-29T12:59:55 | Module: Engine | Retrieved IAuthorizationService proxy | Completion
                        time: 0 seconds<br />
                        2009-08-29T12:59:55 | Module: Engine | TF30227: Project creation permissions retrieved
                        | Completion time: 0.0070004 seconds<br />
                        2009-08-29T12:59:55 | Module: Internal | Team Foundation Server proxy retrieved
                        | Completion time: 0 seconds<br />
                        2009-08-29T12:59:55 | Module: Internal | The template information for Team Foundation
                        Server "vsts2010\DefaultCollection" was retrieved from the Team Foundation Server.
                        | Completion time: 0.0080004 seconds<br />
                        2009-08-29T12:59:55 | Module: Exporter | Wrote compressed process template file
                        | Completion time: 0 seconds<br />
                        2009-08-29T12:59:56 | Module: Exporter | Extracted process template file | Completion
                        time: 0.856049 seconds<br />
                        2009-08-29T12:59:56 | Module: Engine | Thread: 12 | Starting Project Creation for
                        project "allan" in domain "vsts2010\DefaultCollection"<br />
                        2009-08-29T12:59:56 | Module: Engine | The user identity information was retrieved
                        from the Group Security Service | Completion time: 0.0070004 seconds<br />
                        2009-08-29T12:59:56 | Module: Initializer | Thread: 12 | The New Team Project Wizard
                        is starting to initialize the plug-ins.<br />
                        2009-08-29T12:59:56 | Module: CssStructureUploader | Thread: 12 | Entering Initialize
                        in CssStructureUploader<br />
                        2009-08-29T12:59:56 | Module: CssStructureUploader | Thread: 12 | Initialize for
                        CssStructureUploader complete<br />
                        2009-08-29T12:59:56 | Module: Initializer | Thread: 12 | The New Team Project Wizard
                        successfully Initialized the plug-in Microsoft.ProjectCreationWizard.Classification.<br />
                        2009-08-29T12:59:56 | Module: Rosetta | Thread: 12 | Entering Initialize in RosettaReportUploader<br />
                        2009-08-29T12:59:56 | Module: Rosetta | Thread: 12 | Exiting Initialize for RosettaReportUploader<br />
                        2009-08-29T12:59:56 | Module: Initializer | Thread: 12 | The New Team Project Wizard
                        successfully Initialized the plug-in Microsoft.ProjectCreationWizard.Reporting.<br />
                        2009-08-29T12:59:56 | Module: GSSStructureUploader | Thread: 12 | Entering Initialize
                        in GssStructureCreator<br />
                        2009-08-29T12:59:56 | Module: GSSStructureUploader | Thread: 12 | Exiting Initialize
                        for GssStructureCreator<br />
                        2009-08-29T12:59:56 | Module: Initializer | Thread: 12 | The New Team Project Wizard
                        successfully Initialized the plug-in Microsoft.ProjectCreationWizard.Groups.<br />
                        2009-08-29T12:59:56 | Module: Work Item Tracking | Thread: 12 | About to begin the
                        creation of project allan on server vsts2010\DefaultCollection<br />
                        2009-08-29T12:59:56 | Module: Initializer | Thread: 12 | The New Team Project Wizard
                        successfully Initialized the plug-in Microsoft.ProjectCreationWizard.WorkItemTracking.<br />
                        2009-08-29T12:59:56 | Module: Initializer | Thread: 12 | The New Team Project Wizard
                        successfully Initialized the plug-in Microsoft.ProjectCreationWizard.VersionControl.<br />
                        2009-08-29T12:59:56 | Module: Initializer | Thread: 12 | The New Team Project Wizard
                        successfully initialized the plug-ins.<br />
                        2009-08-29T12:59:56 | Module: Engine | Thread: 12 | Process template XML loaded<br />
                        2009-08-29T12:59:56 | Module: Engine | Thread: 12 | Starting Project Creation Engine
                        execution<br />
                        2009-08-29T12:59:56 | Module: Engine | Thread: 13 | Running Task "UploadStructure"
                        from Group "Classification"<br />
                        2009-08-29T12:59:56 | Module: CssStructureUploader | Thread: 13 | Getting CSS proxy<br />
                        2009-08-29T12:59:56 | Module: CssStructureUploader | Thread: 13 | CSS proxy retrieved<br />
                        2009-08-29T12:59:56 | Module: CssStructureUploader | Thread: 13 | The uploading
                        of the Classification Service has started<br />
                        2009-08-29T12:59:56 | Module: CssStructureUploader | Thread: 13 | Uploading CSS
                        structure: "&lt;Nodes&gt;&lt;Node<br />
                        StructureType="ProjectLifecycle" Name="Iteration"&gt;&lt;Children&gt;&lt;Node StructureType="ProjectLifecycle"
                        Name="Iteration 0" /&gt;&lt;Node
                        <br />
                        StructureType="ProjectLifecycle" Name="Iteration 1" /&gt;&lt;Node StructureType="ProjectLifecycle"
                        Name="Iteration 2" /&gt;&lt;/Children&gt;&lt;/Node&gt;&lt;Node
                        <br />
                        StructureType="ProjectModelHierarchy" Name="Area" /&gt;&lt;/Nodes&gt;"<br />
                        2009-08-29T12:59:56 | Module: CssStructureUploader | Thread: 13 | Creating Project
                        : allan<br />
                        2009-08-29T13:00:02 | Module: CssStructureUploader | Thread: 13 | Created Project
                        Administrators group S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-4181733270-2352711500-<br />
                        2713589126-1915436593 successfully.<br />
                        2009-08-29T13:00:02 | Module: CssStructureUploader | Thread: 13 | CSS structure
                        upload finished<br />
                        2009-08-29T13:00:02 | Module: CssStructureUploader | Thread: 13 | Updating project
                        properties for :vstfs:///Classification/TeamProject/513569ec-0344-4911-8592-645ddf413d1a<br />
                        2009-08-29T13:00:04 | Module: Engine | Task "UploadStructure" from Group "Classification"
                        completed with success | Completion time: 7.7344424 seconds<br />
                        2009-08-29T13:00:04 | Module: Engine | Thread: 4 | Running Task "" from Group ""<br />
                        2009-08-29T13:00:04 | Module: Engine | Thread: 11 | Running Task "Site" from Group
                        "Reporting"<br />
                        2009-08-29T13:00:04 | Module: Engine | Thread: 4 | Running Task "GroupCreation1"
                        from Group "Groups"<br />
                        2009-08-29T13:00:04 | Module: GSSStructureUploader | Thread: 4 | Entering Execute
                        in GssStructureCreator<br />
                        2009-08-29T13:00:04 | Module: GSSStructureUploader | Thread: 4 | Getting list of
                        structures for: vstfs:///Classification/TeamProject/513569ec-0344-4911-8592-645ddf413d1a<br />
                        2009-08-29T13:00:04 | Module: Rosetta | Thread: 11 | Creating site: /TfsReports/DefaultCollection/allan<br />
                        2009-08-29T13:00:04 | Module: GSSStructureUploader | Thread: 4 | Creating application
                        group for "Readers" URI "vstfs:///Classification/TeamProject/513569ec-0344-4911-8592-645ddf413d1a"<br />
                        2009-08-29T13:00:04 | Module: GSSStructureUploader | Thread: 4 | Creating application
                        group for "Readers" URI "vstfs:///Classification/TeamProject/513569ec-0344-4911-8592-645ddf413d1a"<br />
                        2009-08-29T13:00:04 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "GENERIC_READ" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-<br />
                        732022000-2582958658-3107557771-1021700088" deny: "True"<br />
                        2009-08-29T13:00:05 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "GENERIC_READ" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-<br />
                        732022000-2582958658-3107557771-1021700088" deny: "True"<br />
                        2009-08-29T13:00:05 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "WORK_ITEM_READ" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-<br />
                        732022000-2582958658-3107557771-1021700088" deny: "True"<br />
                        2009-08-29T13:00:05 | Module: GSSStructureUploader | Thread: 4 | Creating application
                        group for "Contributors" URI "vstfs:///Classification/TeamProject/513569ec-0344-4911-8592-645ddf413d1a"<br />
                        2009-08-29T13:00:05 | Module: GSSStructureUploader | Thread: 4 | Creating application
                        group for "Contributors" URI "vstfs:///Classification/TeamProject/513569ec-0344-4911-8592-645ddf413d1a"<br />
                        2009-08-29T13:00:05 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "GENERIC_READ" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-<br />
                        1677139746-4266085697-3055808969-1627754202" deny: "True"<br />
                        2009-08-29T13:00:05 | Module: Engine | Task "Site" from Group "Reporting" completed
                        with success | Completion time: 1.0630608 seconds<br />
                        2009-08-29T13:00:05 | Module: Engine | Thread: 13 | Running Task "Populate Reports"
                        from Group "Reporting"<br />
                        2009-08-29T13:00:05 | Module: Rosetta | Thread: 13 | Creating report: Work Item
                        with Tasks<br />
                        2009-08-29T13:00:05 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "PUBLISH_TEST_RESULTS" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-<br />
                        1677139746-4266085697-3055808969-1627754202" deny: "True"<br />
                        2009-08-29T13:00:05 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "GENERIC_READ" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-<br />
                        1677139746-4266085697-3055808969-1627754202" deny: "True"<br />
                        2009-08-29T13:00:05 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "WORK_ITEM_READ" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-<br />
                        1677139746-4266085697-3055808969-1627754202" deny: "True"<br />
                        2009-08-29T13:00:06 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "WORK_ITEM_WRITE" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-1677139746-<br />
                        4266085697-3055808969-1627754202" deny: "True"<br />
                        2009-08-29T13:00:06 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "START_BUILD" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-1677139746-<br />
                        4266085697-3055808969-1627754202" deny: "True"<br />
                        2009-08-29T13:00:06 | Module: GSSStructureUploader | Thread: 4 | Creating application
                        group for "Build Services" URI "vstfs:///Classification/TeamProject/513569ec-0344-4911-8592-645ddf413d1a"<br />
                        2009-08-29T13:00:06 | Module: GSSStructureUploader | Thread: 4 | Creating application
                        group for "Build Services" URI "vstfs:///Classification/TeamProject/513569ec-0344-4911-8592-645ddf413d1a"<br />
                        2009-08-29T13:00:06 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "GENERIC_READ" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-<br />
                        110700454-3677416519-2996199154-2555493847" deny: "True"<br />
                        2009-08-29T13:00:06 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "PUBLISH_TEST_RESULTS" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-<br />
                        110700454-3677416519-2996199154-2555493847" deny: "True"<br />
                        2009-08-29T13:00:06 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "GENERIC_READ" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-<br />
                        110700454-3677416519-2996199154-2555493847" deny: "True"<br />
                        2009-08-29T13:00:06 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "WORK_ITEM_READ" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-<br />
                        110700454-3677416519-2996199154-2555493847" deny: "True"<br />
                        2009-08-29T13:00:06 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "WORK_ITEM_WRITE" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-<br />
                        110700454-3677416519-2996199154-2555493847" deny: "True"<br />
                        2009-08-29T13:00:06 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "START_BUILD" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-<br />
                        110700454-3677416519-2996199154-2555493847" deny: "True"<br />
                        2009-08-29T13:00:06 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "UPDATE_BUILD" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-<br />
                        110700454-3677416519-2996199154-2555493847" deny: "True"<br />
                        2009-08-29T13:00:06 | Module: GSSStructureUploader | Thread: 4 | Adding access entry
                        - actionName "EDIT_BUILD_STATUS" sid: "S-1-9-1551374245-1835895849-2299369793-2557183871-2138820253-1-<br />
                        110700454-3677416519-2996199154-2555493847" deny: "True"<br />
                        2009-08-29T13:00:06 | Module: GSSStructureUploader | Thread: 4 | Exiting Execute
                        for GssStructureCreator<br />
                        2009-08-29T13:00:06 | Module: Engine | Task "GroupCreation1" from Group "Groups"
                        completed with success | Completion time: 2.1561234 seconds<br />
                        2009-08-29T13:00:06 | Module: Engine | Thread: 17 | Running Task "" from Group ""<br />
                        2009-08-29T13:00:06 | Module: Engine | Thread: 9 | Running Task "WITs" from Group
                        "WorkItemTracking"<br />
                        2009-08-29T13:00:06 | Module: Work Item Tracking | Thread: 9 | Synchronizing users
                        and groups.<br />
                        2009-08-29T13:00:07 | Module: Work Item Tracking | Thread: 9 | Synchronizing CSS
                        structures.<br />
                        2009-08-29T13:00:07 | Module: Work Item Tracking | Thread: 9 | WorkItemType definition
                        file found: C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp\WorkItem Tracking\TypeDefinitions\Bug.xml<br />
                        2009-08-29T13:00:07 | Module: Work Item Tracking | Thread: 9 | WorkItemType definition
                        file found: C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp\WorkItem Tracking\TypeDefinitions\Task.xml<br />
                        2009-08-29T13:00:07 | Module: Work Item Tracking | Thread: 9 | WorkItemType definition
                        file found: C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp\WorkItem Tracking\TypeDefinitions\Qos.xml<br />
                        2009-08-29T13:00:07 | Module: Work Item Tracking | Thread: 9 | WorkItemType definition
                        file found: C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp\WorkItem Tracking\TypeDefinitions\Scenario.xml<br />
                        2009-08-29T13:00:07 | Module: Work Item Tracking | Thread: 9 | WorkItemType definition
                        file found: C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp\WorkItem Tracking\TypeDefinitions\Risk.xml<br />
                        2009-08-29T13:00:07 | Module: Work Item Tracking | Thread: 9 | Uploading work item
                        type from file 'C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp\WorkItem
                        Tracking\TypeDefinitions\Bug.xml'...<br />
                        2009-08-29T13:00:11 | Module: Work Item Tracking | Thread: 9 | Uploaded WorkItemType
                        definition from C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp\WorkItem
                        <br />
                        Tracking\TypeDefinitions\Bug.xml.<br />
                        2009-08-29T13:00:11 | Module: Work Item Tracking | Thread: 9 | Uploading work item
                        type from file 'C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp\WorkItem
                        <br />
                        Tracking\TypeDefinitions\Task.xml'...<br />
                        2009-08-29T13:00:12 | Module: Rosetta | Thread: 13 | Setting data sources for report:
                        /TfsReports/DefaultCollection/allan/Work Item with Tasks<br />
                        2009-08-29T13:00:12 | Module: Work Item Tracking | Thread: 9 | Uploaded WorkItemType
                        definition from C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp\WorkItem<br />
                        Tracking\TypeDefinitions\Task.xml.<br />
                        2009-08-29T13:00:12 | Module: Work Item Tracking | Thread: 9 | Uploading work item
                        type from file 'C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp\WorkItem
                        <br />
                        Tracking\TypeDefinitions\Qos.xml'...
                        <br />
                    </p>
                </div>
                <div class="greyBox">
                    <p>
                        <span style="color:red;">---begin Exception entry---<br />
                            Time: 2009-08-29T13:00:13<br />
                            Module: Engine<br />
                            Event Description: TF30162: Task "Populate Reports" from Group "Reporting" failed<br />
                            Exception Type: Microsoft.TeamFoundation.Client.PcwException<br />
                            Exception Message: The Project Creation Wizard encountered an error while creating
                            reports to the SQL Server Reporting Services on http://vsts2010/ReportServer/ReportService2005.asmx.
                            <br />
                            Exception Details: The Project Creation Wizard encountered a problem while<br />
                            creating reports on the SQL Server Reporting Services on http://vsts2010/ReportServer/ReportService2005.asmx.
                            <br />
                            The reason for the failure cannot be determined at this time.
                            <br />
                            Because the operation failed, the wizard was not able to finish
                            <br />
                            creating the SQL Server Reporting Services site.<br />
                            Stack Trace:<br />
                            at Microsoft.VisualStudio.TeamFoundation.RosettaReportUploader.Execute(ProjectCreationContext
                            context, XmlNode taskXml)<br />
                            at Microsoft.VisualStudio.TeamFoundation.ProjectCreationEngine.TaskExecutor.PerformTask(IProjectComponentCreator
                            componentCreator, ProjectCreationContext context, XmlNode taskXml)<br />
                            at Microsoft.VisualStudio.TeamFoundation.ProjectCreationEngine.RunTask(Object taskObj)<br />
                            -- Inner Exception --<br />
                            Exception Type: Microsoft.TeamFoundation.Client.Reporting.ReportingUploaderException<br />
                            Exception Message: TF30225: Error uploading report 'Work Item with Tasks': System.Web.Services.Protocols.SoapException:
                            The item '/TfsOlapReportDS' cannot be found. ---> Microsoft.ReportingServices.Diagnostics.Utilities.ItemNotFoundException:
                            The item '/TfsOlapReportDS' cannot be found.<br />
                            at Microsoft.ReportingServices.WebServer.ReportingService2005Impl.SetItemDataSources(String
                            Item, DataSource[] DataSources)<br />
                            at Microsoft.ReportingServices.WebServer.ReportingService2005.SetItemDataSources(String
                            Item, DataSource[] DataSources)<br />
                            Stack Trace:<br />
                            at Microsoft.TeamFoundation.Client.Reporting.ReportingUploader.UploadReport(XmlNode
                            report)<br />
                            at Microsoft.TeamFoundation.Client.Reporting.ReportingUploader.HandleCreateReports(XmlNode
                            node)<br />
                            at Microsoft.TeamFoundation.Client.Reporting.ReportingUploader.Run()<br />
                            at Microsoft.VisualStudio.TeamFoundation.RosettaReportUploader.Execute(ProjectCreationContext
                            context, XmlNode taskXml)<br />
                            -- end Inner Exception<br />
                        </span>
                    </p>
                </div>
                <div class="greyBox">
                    <p>
                        <span style="color:red;">-- Inner Exception --<br />
                            Exception Type: System.Web.Services.Protocols.SoapException<br />
                        </span><b><span class="highlight">Exception Message: System.Web.Services.Protocols.SoapException:
                            The item '/TfsOlapReportDS' cannot be found. ---&gt; Microsoft.ReportingServices.Diagnostics.Utilities.ItemNotFoundException:
                            The item '/TfsOlapReportDS' cannot be found.</span></b><br />
                        <span style="color:red;">at Microsoft.ReportingServices.WebServer.ReportingService2005Impl.SetItemDataSources(String
                            Item, DataSource[] DataSources)<br />
                            at Microsoft.ReportingServices.WebServer.ReportingService2005.SetItemDataSources(String
                            Item, DataSource[] DataSources)<br />
                            SoapException Details: &lt;detail&gt;&lt;ErrorCode xmlns="http://www.microsoft.com/sql/reportingservices"&gt;rsItemNotFound&lt;/ErrorCode&gt;&lt;HttpStatus
                            <br />
                            xmlns="http://www.microsoft.com/sql/reportingservices"&gt;400&lt;/HttpStatus&gt;&lt;Message
                            xmlns="http://www.microsoft.com/sql/reportingservices"&gt;The item '/TfsOlapReportDS'
                            cannot be found.&lt;/Message&gt;&lt;HelpLink<br />
                            xmlns="http://www.microsoft.com/sql/reportingservices"&gt;http://go.microsoft.com/fwlink/?
                            &lt;br /&gt; LinkId=20476&amp;EvtSrc=Microsoft.ReportingServices.Diagnostics.Utilities.ErrorStrings&amp;EvtID=rsItemNotFound&amp;ProdName=Microsoft%20SQL%20Server%20Reporting%20<br />
                            Services&amp;ProdVer=10.0.2531.0&lt;/HelpLink&gt;&lt;ProductName xmlns="http://www.microsoft.com/sql/reportingservices"&gt;Microsoft
                            SQL Server Reporting Services&lt;/ProductName&gt;&lt;ProductVersion<br />
                            xmlns="http://www.microsoft.com/sql/reportingservices"&gt;10.0.2531.0&lt;/ProductVersion&gt;&lt;ProductLocaleId
                            <br />
                            xmlns="http://www.microsoft.com/sql/reportingservices"&gt;127&lt;/ProductLocaleId&gt;&lt;OperatingSystem
                            <br />
                            xmlns="http://www.microsoft.com/sql/reportingservices"&gt;OsIndependent&lt;/OperatingSystem&gt;&lt;CountryLocaleId
                            <br />
                            xmlns="http://www.microsoft.com/sql/reportingservices"&gt;1033&lt;/CountryLocaleId&gt;&lt;MoreInformation
                            <br />
                            xmlns="http://www.microsoft.com/sql/reportingservices"&gt;&lt;Source&gt;ReportingServicesLibrary&lt;/Source&gt;&lt;Message
                            msrs:ErrorCode="rsItemNotFound" msrs:HelpLink="http://go.microsoft.com/fwlink/?
                            <br />
                            LinkId=20476&amp;EvtSrc=Microsoft.ReportingServices.Diagnostics.Utilities.ErrorStrings&amp;EvtID=rsItemNotFound&amp;ProdName=Microsoft%20SQL%20Server%20Reporting%20Services&amp;ProdVer=10.0.2531.0"
                            <br />
                            xmlns:msrs="http://www.microsoft.com/sql/reportingservices"&gt;The item '/TfsOlapReportDS'
                            cannot be found.&lt;/Message&gt;&lt;/MoreInformation&gt;&lt;Warnings
                            <br />
                            xmlns="http://www.microsoft.com/sql/reportingservices" /&gt;&lt;/detail&gt;<br />
                            Stack Trace:&lt;br /&gt; at System.Web.Services.Protocols.SoapHttpClientProtocol.ReadResponse(SoapClientMessage
                            message, WebResponse response, Stream responseStream, Boolean asyncCall)<br />
                            at System.Web.Services.Protocols.SoapHttpClientProtocol.Invoke(String methodName,
                            Object[] parameters)<br />
                            at Microsoft.TeamFoundation.Client.Reporting.ReportingService.SetReportDataSources(String
                            Item, DataSource[] DataSources)<br />
                            at Microsoft.TeamFoundation.Client.Reporting.ReportingUploader.UploadReport(XmlNode
                            report)<br />
                            -- end Inner Exception --<br />
                            --- end Exception entry ---<br />
                        </span>
                    </p>
                </div>
                <div class="greyBox">
                    2009-08-29T13:00:13 | Module: Engine | Thread: 13 | TF30202: Task "" from Group
                    "" will not be run because a prior task failed.<br />
                    2009-08-29T13:00:13 | Module: Engine | Thread: 13 | TF30202: Task "WIs" from Group
                    "WorkItemTracking" will not be run because a prior task failed.<br />
                    2009-08-29T13:00:13 | Module: Engine | Thread: 13 | TF30202: Task "Queries" from
                    Group "WorkItemTracking" will not be run because a prior task failed.<br />
                    2009-08-29T13:00:13 | Module: Engine | Thread: 13 | TF30202: Task "" from Group
                    "" will not be run because a prior task failed.<br />
                    2009-08-29T13:00:13 | Module: Engine | Thread: 13 | TF30202: Task "VersionControlTask"
                    from Group "VersionControl" will not be run because a prior task failed.<br />
                    2009-08-29T13:00:13 | Module: Engine | Thread: 13 | TF30202: Task "" from Group
                    "" will not be run because a prior task failed.<br />
                    2009-08-29T13:00:17 | Module: Work Item Tracking | Thread: 9 | Uploaded WorkItemType
                    definition from C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp\WorkItem<br />
                    Tracking\TypeDefinitions\Qos.xml.<br />
                    2009-08-29T13:00:17 | Module: Work Item Tracking | Thread: 9 | Uploading work item
                    type from file 'C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp\WorkItem<br />
                    Tracking\TypeDefinitions\Scenario.xml'...<br />
                    2009-08-29T13:00:20 | Module: Work Item Tracking | Thread: 9 | Uploaded WorkItemType
                    definition from C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp\WorkItem<br />
                    Tracking\TypeDefinitions\Scenario.xml.<br />
                    2009-08-29T13:00:20 | Module: Work Item Tracking | Thread: 9 | Uploading work item
                    type from file 'C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp\WorkItem<br />
                    Tracking\TypeDefinitions\Risk.xml'...<br />
                    2009-08-29T13:00:22 | Module: Work Item Tracking | Thread: 9 | Uploaded WorkItemType
                    definition from C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp\WorkItem<br />
                    Tracking\TypeDefinitions\Risk.xml.<br />
                    2009-08-29T13:00:22 | Module: Engine | Task "WITs" from Group "WorkItemTracking"
                    completed with success | Completion time: 16.0369172 seconds<br />
                    2009-08-29T13:00:23 | Module: Engine | Thread: 12 | Deleting from Build ...<br />
                    2009-08-29T13:00:24 | Module: Engine | Thread: 12 | Done<br />
                    2009-08-29T13:00:24 | Module: Engine | Thread: 12 | Deleting from Version Control
                    ...<br />
                    2009-08-29T13:00:24 | Module: Engine | Thread: 12 | Not found<br />
                    2009-08-29T13:00:24 | Module: Engine | Thread: 12 | Deleting from Work Item Tracking
                    ...<br />
                    2009-08-29T13:00:26 | Module: Engine | Thread: 12 | Violation of PRIMARY KEY constraint
                    'PK_TreeIDPairs__BelowID_AboveID'. Cannot insert duplicate key in object 'dbo.TreeIDPairs'.
                    ---&gt; Violation of<br />
                    PRIMARY KEY constraint 'PK_TreeIDPairs__BelowID_AboveID'. Cannot insert duplicate
                    key in object 'dbo.TreeIDPairs'.<br />
                    2009-08-29T13:00:26 | Module: Engine | Thread: 12 | Deleting from TestManagement
                    ...<br />
                    2009-08-29T13:00:30 | Module: Engine | Thread: 12 | Done<br />
                    2009-08-29T13:00:30 | Module: Engine | Thread: 12 | Deleting from LabManagement
                    ...<br />
                    2009-08-29T13:00:31 | Module: Engine | Thread: 12 | Not found<br />
                    2009-08-29T13:00:31 | Module: Engine | Thread: 12 | Deleting Report Server files
                    ...<br />
                    2009-08-29T13:00:31 | Module: Engine | Thread: 12 | Done<br />
                    2009-08-29T13:00:31 | Module: Engine | Thread: 12 | Warning. Did not find SharePoint
                    site service.<br />
                    ---begin Exception entry---<br />
                    Time: 2009-08-29T13:00:31<br />
                    Module: Engine<br />
                    Event Description: TF30002: The New Team Project Wizard encountered an error deleting
                    the project
                    <br />
                    Exception Type: System.Web.Services.Protocols.SoapException<br />
                    Exception Message: Violation of PRIMARY KEY constraint 'PK_TreeIDPairs__BelowID_AboveID'.
                    Cannot insert duplicate key in object 'dbo.TreeIDPairs'. ---&gt; Violation of PRIMARY
                    KEY constraint<br />
                    'PK_TreeIDPairs__BelowID_AboveID'. Cannot insert duplicate key in object 'dbo.TreeIDPairs'.<br />
                    SoapException Details: &lt;detail ExceptionMessage="Violation of PRIMARY KEY constraint
                    'PK_TreeIDPairs__BelowID_AboveID'. Cannot insert duplicate key in object 'dbo.TreeIDPairs'."&gt;&lt;details
                    id="-2"<br />
                    xmlns="http://schemas.microsoft.com/TeamFoundation/2005/06/WorkItemTracking/faultdetail/03"
                    /&gt;&lt;/detail&gt;<br />
                    Stack Trace:<br />
                    at System.Web.Services.Protocols.SoapHttpClientProtocol.ReadResponse(SoapClientMessage
                    message, WebResponse response, Stream responseStream, Boolean asyncCall)<br />
                    at System.Web.Services.Protocols.SoapHttpClientProtocol.Invoke(String methodName,
                    Object[] parameters)<br />
                    at Microsoft.TeamFoundation.Client.DeleteProjectClient.DeleteProject(String projectUri)<br />
                    at Microsoft.TeamFoundation.Client.TeamProjectDeleter.DoDelete(String friendlyName,
                    String serviceUri, String projectUri)<br />
                    --- end Exception entry ---<br />
                    2009-08-29T13:00:31 | Module: Engine | Thread: 12 | Attempting to delete folder
                    "C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp"<br />
                    2009-08-29T13:00:31 | Module: Engine | Thread: 12 | The folder C:\Users\Administrator\AppData\Local\Temp\TPW_tmp3242.tmp
                    was removed.
                    <br />
                </div>
            </li>
            <li>
                <h2>
                    <a name="RemoveSpaceInURL"></a>Remove spaces from URL's for readability</h2>
                <p>
                    Working at TFS I find myself using URLs all the time<br />
                    Why are the words "Team" and "Shared" used on the default portal?
                </p>
                <p>
                    There is nothing else called "team" or "shared" there, and they really do *not*
                    add any value.
                    <br />
                    In fact they *remove value* because they add those horrible "%20"'s to the URL's
                    that make them less friendly for users.<br />
                    <div class="greyBox">
                        http://projects.ssw.com.au/tfs/Conquest/Team%20Wiki http://projects.ssw.com.au/tfs/Conquest/Shared%20Documents
                    </div>
                    Should be:
                    <div class="greyBox">
                        http://projects.ssw.com.au/tfs/Conquest/Documents http://projects.ssw.com.au/tfs/Conquest/Wiki
                    </div>
                </p>
            </li>
            <li>
                <h2>
                    <a name="ScrumTemplate"></a>TFS 2010 - Scrum template - Make it clear if it is story
                    points or hours</h2>
                <p>
                    I noticed people were confused?even after an explanation?</p>
                <dl class="image">
                    <dt>
                        <img src="images/ProductBacklog01.jpg" alt="Change 'Effort (in story points)' " />
                    </dt>
                    <dd>
                        Figure: Change "Effort (in story points)"</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="images/ProductBacklog02.jpg" alt="Change to 'Remaining (in hrs)'" />
                    </dt>
                    <dd>
                        Figure: Change to "Remaining (in hours)"</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="WriteComment"></a>Help me write good comments?</h2>
                <p>
                    Writing good comments can really help when you are writing release notes or even
                    just looking for something. Intelligence and spellcheck would really help to make
                    sure that comments are correct.</p>
                <dl class="image">
                    <dt>
                        <img src="images/IntelligenseAndSpell.jpg" alt="Intelligence and spell " />
                    </dt>
                    <dd>
                        Figure: Having intelligence and spell check</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="PortalLayout"></a>Why is the portal layout not consistent?</h2>
                <ol>
                    There a couple of layout problems with the default portal:
                    <li>There should be Icons beside each of the main heading to make them stand out
                        <dl class="image">
                            <dt>
                                <img src="images/IconMissing.jpg" alt="Icon missing" />
                            </dt>
                            <dd>
                                Figure: None of the headings have Icons</dd>
                        </dl>
                    </li>
                    <li>The indenting is not consistent
                        <dl class="image">
                            <dt>
                                <img src="images/IndentConsistent.jpg" alt="Indenting is not consistent" />
                            </dt>
                            <dd>
                                Figure: Almost every piece of content has different indenting!</dd>
                        </dl>
                    </li>
                    <li>Can we have a list of "High Priority Bugs" and "Recently fixed Bugs" added above
                        "Recent Builds". A client viewing this site asked "What do I care about 'recent
                        checking', I want to see high priority bugs or at least recently fixed bugs."<br />
                        Note: Must have resolver/closer in the tooltip.
                        <dl class="image">
                            <dt>
                                <img src="images/UserWhoCheckIn.jpg" alt="It should show the user who check in" />
                            </dt>
                            <dd>
                                Figure: I cannot tell who made this change without clicking and opening up the check-in.</dd>
                        </dl>
                    </li>
                </ol>
            </li>
            <li>
                <h2>
                    <a name="BuildBroken"></a>Help me know as soon as possible that the build is broken!</h2>
                <p>
                    It would be really cool if TFS could push out Windows Live Alerts so I could choose
                    how I am notified of events like build failures.</p>
                <dl class="image">
                    <dt>
                        <img src="images/BuildNotification.jpg" alt="Build Notification - Broken MSG" />
                    </dt>
                    <dd>
                        Figure: the current notification is interactive, but not immediate or intrusive
                        enough</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="images/ConfigureBuildNotification.jpg" alt="Configure Build Notification " />
                    </dt>
                    <dd>
                        Figure: Configuration is hard and most users do not even know it exists</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="images/AzureServicesDeveloperPortal.jpg" alt="Azure Services Developer Portal " />
                    </dt>
                    <dd>
                        Figure: This would allow users to choose how they are notified of build problems</dd>
                </dl>
                <p>
                    Opting for a standard solution allows much more flexibility on receipt.</p>
            </li>
            <li>
                <h2>
                    <a name="RewriteWebAccessURL"></a>Help me rewrite Web Access URL's to be more friendly</h2>
                <p>
                    There are ways to make URL's more friendly, but they all rely on the URL being written
                    in the clear on the page.</p>
                <dl class="badImage">
                    <dt>
                        <img src="images/LinksNotWork.jpg" alt="Links Not Work" />
                    </dt>
                    <dd>
                        Figure: Bad example -These links will not work as they are built and executed with
                        a postback</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="images/LinksWork.jpg" alt="Links Work" />
                    </dt>
                    <dd>
                        Figure: Good example -However these folders on SharePoint will work as they are
                        written into the page in the clear</dd>
                </dl>
                <p>
                    Make it easier by not using postbacks unless you really need them.</p>
            </li>
            <li>
             <h2><a name="TestForBug"></a>Help me remember to create a Test for a Bug</h2>
              <p>Help me eradicate bugs by adding a Check-In Policy that checks if you are associating code with a Bug and fails if that bug has no associated Test Case.</p>
               <dl class="goodImage">
                    <dt>
                        <img src="images/ProtectBugFixes.jpg" alt="Protect Bug Fixes" />
                    </dt>
                    <dd>
                       Figure: We need to be able to protect our bug fixes</dd></dl>
            </li>
           <li>
            <h2><a name="CauseOfError"></a>[ Other ] - Help me find the cause of an error</h2>
            <p>The list of errors after  build is often confusing to new developers (and Adam).</p>
             <dl class="image">
                    <dt>
                        <img src="images/SymptomaticError.jpg" alt="The first Symptomatic Error" />
                    </dt>
                    <dd>
                       Figure: This is confusing as the first error might be just a symptom</dd></dl>
              <ul>
                <li>This list often wastes developer's time.</li>
                <li>The order of it is incredible important.</li>
                <li>Ideally this list would list only one item that is bold (that indicates you fix it first)<br />
                  When a junior developer does a 'Get Latest' and sees 300 errors, some suffer a panic attack. So either fix the order above, or add a record at the top that says
                     Go to the 'Output' panel and fix the first 'error'. That error is probably causing all the subsequent errors.
                    <dl class="image">
                      <dt>
                        <img src="images/RootCause.jpg" alt="The first error may be the root cause. " />
                       </dt>
                       <dd>
                       Figure: The first error encountered may be the root cause</dd></dl>                
                </li> 
                <li>Add a message first in the list to look at the Output and fix the first error found<br />
                   When a user clicks that message it should take them to the output window and pop a balloon over the first error message that says, "Fix this first".
                </li>               
              </ul>
           </li> 
           <li>
             <h2><a name="ConflictResolutionDialogs"></a>Version Control - Help me see what to do with conflicts</h2>
             <p>It can be hard to follow the conflict resolution dialogs.</p>
                    <dl class="image">
                      <dt>
                        <img src="images/WhichVersion.jpg" alt=" Which version should I take?" />
                       </dt>
                       <dd>
                       Figure: I cannot tell from here which version I want to take</dd></dl> 
                   <dl class="image">
                      <dt>
                        <img src="images/VersionDiscrimination.jpg" alt=" Version Discrimination" />
                       </dt>
                       <dd>
                       Figure: Can you tell which one I would take here? </dd></dl>     
                    <p>It would be really good if it would show the number of lines that have been changed on each side.</p>
                   <dl class="image">
                      <dt>
                        <img src="images/EasierFind.jpg" alt="Easier Find " />
                       </dt>
                       <dd>
                       Figure: Put the data next to the target to make it easier to see which is for which  </dd></dl> 
              <p>Too much reading and associating... It would be more intuitive for new users if the data was under the existing columns "Take Server Version" and "Keep Local Version"</p>         
           </li>
           <li>
             <h2><a name="TakeChanges"></a>Version Control - Help me take all the changes from one side</h2>
             <p>Once I have opened up the merge dialog I may quickly see that I just want to take the server or local changes. <br />
                It is also not obvious that the top two boxes are read-only and only the bottom box can be edited. </p>
                    <dl class="image">
                      <dt>
                        <img src="images/TakeAllFromOneSide.jpg" alt="Take all from one side " />
                       </dt>
                       <dd>
                        Figure:  Make it easier to take all from one side</dd></dl> 
             <ol>
               <li>Add 2 buttons "Take Server Version" and "Keep Local Version".</li>
               <li>Make the two top text boxes grey to show that they are read only.</li>
             </ol>
                    <dl class="image">
                      <dt>
                        <img src="images/TwoButtons.jpg" alt="Two Buttons " />
                       </dt>
                       <dd>
                        Figure: Here are the 2 buttons, I would like on the above form</dd></dl> 
           </li>
           <li>
             <h2><a name="ChangeWhoMade"></a>Version Control - Help me see who made the change</h2>
             <p>In the Merge tool add pictures for all of the developers that have changed the code so I can easily see who changed what.<br /><br />
                Maybe if I see a picture of my boss I would not throw out his change.</p>
              <dl class="image">
                      <dt>
                        <img src="images/ImgOfMeAndTeam.jpg" alt="The images of me and the team. " />
                       </dt>
                       <dd>
                        Figure: More personal, more social, more friendly - Add a picture of me on the left and a team picture on the right</dd></dl>   
           </li>
           <li>
             <h2><a name="RememberDoingHistory"></a>Version Control - Help me remember what I was doing</h2>
             <p>I am trying to recall what I was doing when this file was added by some tool in VS. I think looking at other files in the same folder might help.</p>
                <dl class="image">
                      <dt>
                        <img src="images/OpeningContainingFolder.jpg" alt="Opening Containing Folder " />
                       </dt>
                 <dd>
                   Figure:  Add "Opening Containing Folder" then I might be able to recall what I was doing at the time </dd></dl>  
               <p>Come on... this is the only remaining right click menu I don't have to scroll.  So please fix by adding more options :-)</p>  
           </li>   
           <li>
             <h2><a name="FilterPending"></a>Version Control - Help me know that you can filter pending changes</h2>
             <p>This button looks like it launches some VS app? It does not look like a "Filter"</p>
               <dl class="image">
                      <dt>
                        <img src="images/VSLogo.jpg" alt="VS Logo " />
                       </dt>
                 <dd>Figure: Why does this button have a Visual Studio Logo?</dd></dl>
               <ul>               
                 I think it needs either: 
                <li>An icon that looks like Filter Funnel, or</li>
                <li>Make a dropdown with "All Solutions | Current Solution"</li>                
               </ul>
           </li>      
           <li>
             <h2><a name="StandardColors"></a>Version Control - Help me recognize instantly what is a delete and what is an add</h2>
             <ul>
              Can we have these file names in the standard colours?which is:
              <li>Blue for edit</li>
              <li>Green for add</li>
              <li>Red for delete</li>                            
             </ul>
                <dl class="image">
                      <dt>
                        <img src="images/DifferenceOfChanges.jpg" alt="Show the Difference Of Changes " />
                       </dt>
                 <dd>Figure: I can't easily see the difference between these actions - save me from having to mentally map the 2nd 'change' column</dd></dl>
           </li>
           
           <li>
            <h2><a name="AddAnnotate"></a>Power Tools - Version Control - Help me Annotate from the files</h2>
             <p>I should be able to annotate and view history from windows explorer.</p>
              <dl class="image">
                      <dt>
                        <img src="images/ConsistentWithVS.jpg" alt="Consistent With VS " />
                       </dt>
                 <dd>Figure: Aim to be consistent with VS (also add "Annotate" and "View History") </dd></dl>
              <p> You can have it dump this info out to Word or HTML.</p>
           </li>
           <li>
             <h2><a name="WhatChanges"></a>Version Control - Help me see what has changed, when I get latest</h2>
             <p>It is not obvious what has been done by calling "Get latest".</p>
              <dl class="image">
                      <dt>
                        <img src="images/GetLatest.jpg" alt="Get Latest " />
                       </dt>
                 <dd>Figure: After I click 'Get Latest', the feedback is zip.... nothing </dd></dl>
               <dl class="image">
                      <dt>
                        <img src="images/OutputWindow.jpg" alt="Output Window " />
                       </dt>
                 <dd>Figure: It would be nice to automatically see the output window with a selection active, as it can be cluttered with old content </dd></dl>
               <ol>
                 So:
                 <li>Please switch to this 'Output' tab</li>
                 <li>Please highlight the line that just got added.</li>
               </ol>
           </li>
           <li>
            <h2><a name="NoNeedScroll"></a>Version Control - Help me not have to scroll</h2>
            <p>Can we move these 8 items under a "Team Foundation" Menu; this will help TFS branding, less menu scrolling and consistency.</p>
                <dl class="image">
                      <dt>
                        <img src="images/SeparateMenu.jpg" alt="Separate Menu " />
                       </dt>
                 <dd>Figure: These should be on their own menu </dd></dl>
                <p>Note: There is an argument to leave "Get Latest" and "Check In..." as they are used most often, but really it should be an all or nothing move.</p>
                 <dl class="image">
                      <dt>
                        <img src="images/Submenu.jpg" alt="Submenu " />
                       </dt>
                 <dd>Figure: The submenu is nice branding for Team Foundation Server </dd></dl>
                <p>I guess I should stop installing cool VS add-ins. I have about 20 of them. :-)</p> 
           </li>
           <li>
             <h2><a name="NormalCombo"></a>Help me work with a normal Combo</h2>
             <p>Does *anyone* like that combo box changing order every time you select an item.
             I don't like a combo box changing order after each selection. I would like it to be changed to work normally.</p>
                <dl class="image">
                      <dt>
                        <img src="images/KeepOrder.jpg" alt="Keep Order " />
                       </dt>
                 <dd>Figure: Selecting a item in the combo box should *not* change the order </dd></dl>
           </li>
           
           <li>
             <h2><a name="CallHierarchy"></a>Help me see the call hierarchy for the events in IntelliTrace</h2>
             <p>
              I love to visualize the relationship between events eg. a user clicks a button and stuff happens.<br />
              So it would help if I could see indentation of the events based on its call hierarchy.
             </p>
             <dl class="image">
                      <dt>
                        <img src="images/GroupAndIndentTheEvents.jpg" alt="Group and indent the events" />
                       </dt>
                 <dd>Figure: Group and indent the events based on its call hierarchy (maybe add another view ?but make this new view *default*) </dd></dl>
           </li>
           
           <li>
             <h2><a name="FilterNoise"></a>Help me filter the IntelliTrace noise</h2>
              <p>Intellitrace is not very usable?I think it suffers from too much noise and not enough information!</p>
              <p>Anything you can do to filter out noise will improve things.</p>
              <ul>
                I don't want to see:<br />
                <li>static file load stuff (eg. The .png below - although it could be sharepoint doing funky stuff)</li>
                <li>any images or javascript or css (have file extensions as a filter option ?with these turned off by default)</li>                
              </ul>
              <p>I only want to see server side programmatic code.</p>
               <dl class="image">
                      <dt>
                        <img src="images/LoseTheNoise.jpg" alt="Lose the noise by default." />
                       </dt>
                 <dd>Figure: Lose this noise by default</dd></dl>
           </li>
           
           <li>
             <h2><a name="ReopenWorkItem"></a>Help me reopen a work item (like how I can reopen a code file via 'Undo Close')</h2>
              <p>
               "Undo close" is an awesome feature that is part of the PowerCommands for Visual Studio 2010.<br />
                But that feature doesn't work for Work item queries or other windows that are not code files.
              </p>
              <dl class="image">
                      <dt>
                        <img src="images/UndoClose.jpg" alt="Undo Close - doesn't work with closed work item queries" />
                       </dt>
                 <dd>Figure: 'Undo Close' doesn't work with closed work item queries </dd></dl>
                <dl class="image">
                      <dt>
                        <img src="images/RecentlyClosedTabs.jpg" alt="Recently Closed Tabs " />
                       </dt>
                 <dd>Figure: This 'Recently Closed Tabs' in Firefox is the utopia the team should strive for  </dd></dl> 
           </li>
           <li>
            <h2><a name="ReportTFSServer"></a>Help me report across my entire TFS server</h2>
            <ul>
             We need 3 reports to report across our entire TFS server:
             <li>Iterations currently being worked on by Team Project</li>
             <li>Tasks completed in the last 30 days by Team Project</li>
             <li>Number of Check-ins in the last 30 days by Team Project</li>                          
            </ul>
            <p>This will help us manage and monitor our projects better.<br />
             Note: It would be really helpful if these were added to the Team Project Collection Portal site in SharePoint.
            </p>
           </li>
           <li>
            <h2><a name="PublicPortal"></a>A Public Portal for our Customers</h2>
             <p>
              People often ask me how Telerik decides what products and features to build for each release. The answer is simple: by listening to you, our customers. Through our forums, support tickets, customer visits, and booths at conferences, we gather a tremendous amount of feedback and that becomes the core of our product planning. Today we are proud to announce the Q2 release of our customer-designed, "Best of TechEd" award-winning product suite.<br />
              
             </p>
              <p>
               How do you decide what products and features to build for each release. Does TFS give the answer? Should it?
              </p>
              <p>
               Microsoft's TWA (Team Web Access from the TFS team) does an OK job of dealing with work items. In fact I use it every day. There are many places it could do with more AJAX (so it was a responsive UI like Facebook), but it is better than average. My complaint is it inwardly looking, not a public portal for customers and their feedback.
              </p>
              <ul>
               Ideally I hope to see an awesome 2nd generation TWA, that gives all software companies, a standard system for:
               <li>moving emails from customers, that link to items in TFS</li>
               <li>having a forum, that link to items in TFS</li>
               <li>having support tickets, that link to items in TFS</li>               
              </ul>
              <ul>
               There are others things that would be useful (but are less important) and I am not sure how to approach them:
               <li>having feedback from customer visits, that link to items in TFS</li>
               <li>having feedback from booths at conferences, that link to items in TFS</li>             
              </ul>
              <p>
               SSW receives a lot of suggestions? And I send lots of suggestions for products I use, or friends who have proToday I see a low percentage of feedback come back to me when done. Probably less than 2%. The responses are manual emails from developers or managers with Type A personalities :)
              </p>
              <p>We need a great system for categorizing/tagging and responding back when features are done.</p>
              <ol>
               We all gather a tremendous amount of feedback and that becomes the core of our product planning. Today it is done manually, maybe it has to be? I hope not.
                <li>Do many think an awesome web portal is the domain of TFS 2012?</li>
                <li>Is there higher priorities for them?</li>
              </ol>
           </li>
           
           <li>
            <h2><a name="OpenProjectFromSC"></a>TFS2010 - New developers opening a project from source control</h2>
             <p>
              Getting going on TFS for the first time is not as easy as it should be. Watching a couple new developers, try to start using TFS was interesting. <br />
              They hit a roadblock since they are fixated on using the Open menu, and there are no right click menus or pointers to help them get to their source code.          
             </p>
              <dl class="image">
                      <dt>
                        <img src="images/ExperiencedDevelopersUseSC.jpg" alt="The way an experienced developer opening source control " />
                       </dt>
                 <dd>Figure: An experienced individual developer starts using TFS.  He goes for Open | Team Project. He does not see the other method of Source Control | Open From Source Control  </dd></dl> 
              <p>What they are after is their code, so they are surprised when nothing under "Source Control" and no right click menu to 'Open'? Unfortunately they don't know to try double clicking</p>
               <dl class="image">
                      <dt>
                        <img src="images/NothingUnderSC.jpg" alt="No suggest under source control " />
                       </dt>
                 <dd>Figure:There is nothing under source control to suggest that there is a solution waiting to be opened there.  </dd></dl> 
                <p>
                So they go to the 'Solution Explorer' and get even more confused because there are no projects showing.
                </p>
                <dl class="image">
                      <dt>
                        <img src="images/WeirdMyProject.jpg" alt="Weird my project " />
                       </dt>
                 <dd>Figure:Weird my project (source code) is not here either. </dd></dl> 
                 <p>From here the guys went round and round... getting nowhere :-(</p>
                <ol>
                 4 UI suggestions that would give new developers a nicer experience getting going on TFS:<br />
                 <li>In the 'Team Explorer' tab under 'Source Control' give a visual indicator eg. A tree node like the others, the folders or a hyperlink 'open'</li>
                 <li>In the 'Team Explorer' tab under 'Source Control' give a right click menu, with an option 'open'</li>
                 <li>In the 'Solution Explorer' tab, when it is empty and you have a team project open, give a hyperlink 'open'</li>
                 <li>In the File Menu, move 'Source Control' up under the 'Open' menu</li> 
                </ol>
           </li>
           <li>
            <h2><a name="FunctionsOfAnalyzers"></a>Architecture - Help me know what the 3 analyzers do via a popup form</h2>
              <dl class="image">
                      <dt>
                        <img src="images/AnalyzersPopupForms.jpg" alt="Check on Analyzer popup three forms" />
                       </dt>
                 <dd>Figure:After checking on an 'Analyzer', popup a form showing what this is showing me (of course include a checkbox "[x] Don't show again" ) </dd></dl> 
              <dl class="goodImage">
                      <dt>
                        <img src="images/GoodExpCroatian.jpg" alt="Croatians - a good example " />
                       </dt>
                 <dd>Figure: Good example - What the Croatians at TeamCompanion did based on a similar suggestion. They implemented this. Perfect! </dd></dl> 
              <p>
               To be fair this is documented at <a href="http://msdn.microsoft.com/en-us/library/ee847415.aspx">http://msdn.microsoft.com/en-us/library/ee847415.aspx</a> <br />
                However my suggestions are:
              </p>
              <ol>
              <li>this is not discoverable enough &#8211; so link to it from the UI</li>
              <li>this is at the bottom of a long article &#8211; so put it in its own page</li>
              <li>It is missing a screen capture. Not a single one relating to the 'Analyzers' (the finding areas of complexity) :-(</li>
              <li><span style="color:red;">IMPORTANT</span>: Fix the 'Find Hubs' in the UI so developers understand they *always* exist and they are *not* necessarily bad. <br />
               Every developer knows what "Circular References" are and what "Unreferenced Nodes" might be, so they assume that &#8220;Find Hubs&#8221; is going to be bad too &#8211; this must be made obvious in the UI
              </li>              
              </ol>
               <dl class="image">
                      <dt>
                        <img src="images/FixDoc.jpg" alt="Fix the doco " />
                       </dt>
                 <dd>Figure: Fix the doco, then link to it</dd></dl> 
           </li>
           <li>
            <h2><a name="ToolbarDesire"></a>TFS2010 - General toolbar desire - Help me use my toolbar in my working area</h2>
              <dl class="image">
                      <dt>
                        <img src="images/MoveToolbar.jpg" alt="Move the toolbar into the window " />
                       </dt>
                 <dd>Figure: Oh I wish I could move my Toolbar into the window that it is relevant for</dd></dl> 
           </li>
           
           <li>
            <h2><a name="DragPaper"></a>Architecture- Help me drag my paper around (in Dependancy Graph .dgml)</h2>
             <p>
              I want "Space + Mouse Click and Drag" to work &#8211; it is a convention that started with Photoshop and has continued with many other apps eg. Acrobat<br />
                Note: I am aware that Control + Drag works &#8211; but this is non-standard eg. With Paint, Snag-it etc
             </p>
               <dl class="image">
                      <dt>
                        <img src="images/DragPaper.jpg" alt=" Can't drag paper around" />
                       </dt>
                 <dd>Figure: I want to drag my paper around... but I get this :-( </dd></dl>  
           </li> 
           <li>
            <h2><a name="AddNewItem"></a>Help me add a new work item quickly</h2>
            <p>We need an 'Add New" link as the 2nd record in this case. (The bottom of however many records there are).</p>
            <dl class="image">
                      <dt>
                        <img src="images/QuickWayToAddNewItem.jpg" alt="Quick way to add a new item " />
                       </dt>
                 <dd>Figure:  A quick way to add a new work item please</dd></dl>  
           </li>
           
            <li>
             <h2><a name="TFSReport"></a>TFS report suggestion</h2>
             <p>The report for "Project Management" stories overview, like<br />
              http://tfs.ssw.com.au/<span class="highlight">Reports</span>/Pages/Report.aspx?ItemPath=%2fTfsReports%2fDefaultCollection%2fSSW.SharePoint%2fProject+Management%2fStories+Overview
             </p>
              <dl class="image">
                      <dt>
                        <img src="images/AddLinkToSprint.jpg" alt="Add a link to sprint" />
                       </dt>
                 </dl>  
              <p>Should include a URL of TFS Web Access (which include the details of selected sprint), like <br />
                 http://tfs.ssw.com.au/tfs/<span class="highlight">web/UI</span>/Pages/WorkItems/QueryResult.aspx?path=SSW.SharePoint%2FTeam%20Queries%2F_Areas%2FSP2010Migration%2FSprint11(current.SolutionUpgrade)%2FSprint11%20backlog&pguid=32c0d57a-6e46-424f-9411-231bc0f86291
              </p> 
              <dl class="image">
                      <dt>
                        <img src="images/URLOfTWA.jpg" alt="URL of TWA " />
                       </dt>
                 </dl> 
            </li>  
            <li>
             <h2><a name="RefreshData"></a>TFS 2010 - Refresh Report Data</h2>
             <dl class="image">
                      <dt>
                        <img src="images/RefreshReportCube.jpg" alt="Refresh Report Cube " />
                       </dt>
                   <dd>Figure: Need a "Refresh Report Cube" on the right click menu</dd>
                 </dl> 
              <p>
               That calls<br />
              <!--SSW Link Auditor - Ignore begin-->http://localhost:8080/tfs/TeamFoundation/administration/v3.0/WarehouseControlService.asmx?op=ProcessWarehouse<!--SSW Link Auditor - Ignore end--><br />
                CollectionName=?<br />
                   <!--SSW Link Auditor - Ignore begin-->http://localhost:8080/tfs/TeamFoundation/administration/v3.0/WarehouseControlService.asmx?op=ProcessAnalysisDatabase <!--SSW Link Auditor - Ignore end--><br /><br />
                processingType=Full
              </p>
            </li>  
            
            <li>
             <h2><a name="GoldenEgg">I think the VS Extension Manager is our golden egg&#8230; a real success story - let's keep it that way <font color="red">*Important*</font></a></h2>
              <p>
               But lately I see more and more rust creeping in.<br />
                Let's allow crap in there (because it might be a gem), but allow us to identify it&#8230; and quick.
              </p>
              <ul>
               So my suggestion is to add a:
               <li>Field 'Count of Bugs'</li>
               <li>"Dodgy" warning that shows, when there are say 3 (un-responded) bug reports and <1 positive votes for a release.</li>               
              </ul>
              <ul>
               And a eccentric suggestion to add a:
               <li>Field 'Count of Great votes from MVPs'</li>
               <li>"Unknown" warning that shows, when there are say <3 good reports from MVPs</li>               
              </ul>
              <p>Eg. <a href="http://visualstudiogallery.msdn.microsoft.com/e79e4a0f-f670-47c2-9b8a-3b6f664bf4ae?SRC=VSIDE">http://visualstudiogallery.msdn.microsoft.com/e79e4a0f-f670-47c2-9b8a-3b6f664bf4ae?SRC=VSIDE</a> </p>
              <dl class="image">
                      <dt>
                        <img src="images/CountOfBugs.jpg" alt="Count of bugs " />
                       </dt>
                   <dd>Figure: Under 'rating' add 'Count of bugs'</dd>
                 </dl> 
            </li> 

            <li>
                <h2><a name="LHSExtensionManager"></a>Extension Manager is missing 'TFS' in the left hand nav... so add a Tools | TFS category</h2>
                <ul>
                    <li>The 'TFS' category in the left nav, is important</li>
                    <li>We also want those 2 tools removed - they are nothing to do with TFS</li>
                    <li>Can we have a consistent naming applied, well as much as possible... E.g. "for TFS 2010" at the end</li>
                </ul>
                <dl class="image">
                    <dt><img src="images/tfs-left-nav.jpg" alt="3 things we need for TFS in the Extension Manager" /></dt>
                    <dd>Figure:3 things we need for TFS in the Extension Manager</dd>
                </dl> 
            </li>

            <li>
             <h2><a name="ConfigureDocsAndReports"></a>Help me configure Documents and Reports</h2>
             <dl class="image">
                      <dt>
                        <img src="images/AddConfigure.jpg" alt="Add configure" />
                       </dt>
                   <dd>Figure: Today the Right click menu = nothing... Please add 'Configure (or at least Help)'</dd>
                 </dl> 
            </li>  
            <li>
             <h2><a name="VSScrumTemplate"></a>Help me add the Visual Studio Scrum 1.0 Template to TFS</h2>
             <p>
              Installing the Visual Studio Scrum 1.0 Template takes a number of steps when it should only take one.  I should not have to google and read a blog post to work out how to install it!  (<a href="http://blogs.msdn.com/b/cdndevs/archive/2010/07/19/microsoft-visual-studio-scrum-1-0.aspx">http://blogs.msdn.com/b/cdndevs/archive/2010/07/19/microsoft-visual-studio-scrum-1-0.aspx</a>)
             </p>
             <ol>
             This is how I want it to work:
             <li>Install the template in one step directly from the Extension Manager.<br />
             Currently, I have to download an MSI, install the MSI, then upload the new template to the Process Template Manager by finding it in Program Files
             </li>
             <li>
             If user input is explicitly required to attach to TFS, do this in a dialog immediately after you press the "Download" button (in Extension Manager).
             </li>           
             </ol>
             <dl class="image">
                      <dt>
                        <img src="images/DownloadButton.jpg" alt="Download button" />
                       </dt>
                   <dd>Figure: Clicking "Download" for Visual Studio Scrum 1.0 from the Extension Manager should do everything</dd>
                 </dl> 
                <dl class="image">
                      <dt>
                        <img src="images/ExtraStep.jpg" alt="Extra step " />
                       </dt>
                   <dd>Figure: Currently, this extra step is required.  You open the Process Template Manager, then</dd>
                 </dl>  
                 <dl class="image">
                      <dt>
                        <img src="images/ManuallyUpload.jpg" alt="Manually upload the template " />
                       </dt>
                   <dd>Figure: Continued... Then manually upload the template (obviously for the Scrum Template)... After this, you need to find the template with the file explorer</dd>
                 </dl>  
            </li>
            <li>
             <h2><a name="ReadOneLine"></a>Help me read one line that tell me the guts of each Report, Excel etc</h2>
             <p>Would it be possible to have this read the 1st line of the description the Excel doc etc?</p>
             <dl class="image">
                      <dt>
                        <img src="images/ShortDescription.jpg" alt="Short description" />
                       </dt>
                   <dd>Figure: I would love to see a short description for each one</dd>
                 </dl> 
            </li>
            
            <li>
             <h2><a name="CodeMetrics"></a>Code Metrics - Help me focus on my code</h2>
             <dl class="image">
                      <dt>
                        <img src="images/DimOnes.jpg" alt="Dim the ones " />
                       </dt>
                   <dd>Figure: Dim the ones I did not write eg. The ones in the red boxes</dd>
                 </dl> 
            </li>
            <li>
             <h2><a name="ProblemMSGBox"></a>Help me find answers to problem message boxes myself</h2>
             <p>
                Today every 'Bug' has a URL now, thanks to TSWA<br />
                I believe we should have a solution where every 'Messagebox' has a URL (that points to TSWA) ?
                Reading the below history, I imagine John's answer would have been...
             </p>
            <div class="greyBox">
             <p>
              Sin Min, <br />

                Please click the link on that message box and you will see http://Tfs.northwind.com/kb/messagebox/1234  <br />
                It will tell you to Reinstall the Power Tools to get them back and immediately uninstall them. That should make everything right.<br />
                Can you believe that TSWA has made my life even simpler :)<br /><br />

                John Robbins
             </p>
            </div>
            <b>Figure: Good example - The answer I would like to see to the below thread</b><br />
            <p>Basically a message box without a URL, means you need to go searching/asking for answer.<br />
                Is this a job that the TFS team should solve?
            </p>
            <div class="greyBox">
             <p>
  -----Original Message-----<br />
From: John Robbins<br />
Sent: Monday, 5 April 2010 1:24 PM<br />
To: Sin Min; 'Visual Studio Team System Champs'<br />
Subject: RE: Could not load type error in Team Explorer 2010<br /><br />

Cool! Reinstall the Power Tools to get them back and immediately uninstall them. That should make everything right.<br />

Now if only life were that simple. :)<br /><br />

-----Original Message-----<br />
From: Sin Min<br />
Sent: Sunday, April 04, 2010 7:14 PM<br />
To: John Robbins; 'Visual Studio Team System Champs'<br />
Subject: RE: Could not load type error in Team Explorer 2010<br /><br />

Good catch! I believe I uninstalled VS2010 RC then only followed by Power Tool RC after I noticed it. It is gone from the Add/ Remove programs but the bits still here...Thanks!!<br /><br />

-----Original Message-----<br />
From: John Robbins<br />
Sent: Monday, April 05, 2010 9:38 AM<br />
To: Sin Min; 'Visual Studio Team System Champs'<br />
Subject: RE: Could not load type error in Team Explorer 2010<br /><br />

Hi,<br /><br />

I saw something that looked very similar to this dialog when I installed the VS 2010 RC because I had the Beta 2 version of the Power Tools still on my machine. Did you uninstall the RC version of the Power Tools before installing the RTM?<br /><br />

 
-----Original Message-----<br />
From: owner-vsts-champs On Behalf Of Sin Min<br />
Sent: Monday, 5 April 2010 11:24 AM<br />
To: 'Visual Studio Team System Champs' <br />
Subject: Could not load type error in Team Explorer 2010<br /><br />

FYI, installed both VS+TFS 2010 RTM on Win7 x64. Fired up VS and caught this error.</p>
              <dl class="badImage">
                <dt><img src="images/TeamFoundationError.jpg" alt="Team foundation error " /></dt>
                <dd>Figure: Bad example - The message box without a URL means you need to go searching/asking for answer</dd>
              </dl> 

            </div>
            </li>
            
            <li>
                <h2><a name="WhatJobsDo"></a>Help me know what the jobs do</h2>
                <dl class="image">
                    <dt><img src="images/WhatJobsDo.jpg" alt="What Jobs Do?" /></dt>
                    <dd>Figure: I don't know what these SQL Jobs do from the GUID name. Add a couple of words after the GUID</dd>
                </dl>
            </li>

            <li>
                <h2><a name="ReadyForNextInteration"></a>Help me get ready for the next iteration</h2>
                <p>At the moment, the agile template only populates the queries and documents for the first iteration. To get this all ready for the next iteration you need to:</p>
                <ul>
                    <li>Copy the planning workbooks</li>
                    <li>Update the underlying queries to be the right iteration</li>
                    <li>Change the dates</li>
                    <li>Copy any Team Queries and update the iteration</li>
                </ul>
                <p>There should be a right click menu "Generate Queries and Documents" that automates the above steps.</p>
                <dl class="image">
                    <dt><img src="images/GenerateQueries.jpg" alt="Generate Queries" /></dt>
                    <dd>Figure: There should be a right click menu "Generate Queries and Documents"</dd>
                </dl>
            </li>

            <li>
                <h2><a name="AvoidDuplicatedCode"></a>Do you avoid duplicated code in your solution?</h2>
                <p>Microsoft please give us a checkin policy that verifies that the changeset doesn't introduce duplicated code to the solution.</p>
                <p>Tell the developer that was about to check in some code: "Your code has 20 lines of similarity to \Debuger.cs"</p>
                <p>Simian http://www.harukizaemon.com/simian/ is a tool that can detect similar/duplicated code.</p>
                <dl class="image">
                    <dt><img src="images/DuplicatedCode.jpg" alt="Figure: Duplicated code detected by Simian in 2 files with 60 lines of similarities" /></dt>
                    <dd>Figure: Duplicated code detected by Simian in 2 files with 60 lines of similarities</dd>
                </dl>            
            </li>
            <li>
                <h2><a name="Screenshots"></a>Work Items - Help me with Screenshots</h2>
                <p>Anyone that has heard me speaking on TFS.... you surely have heard me asking for screenshots for at least 5 years... When this support is added, I think screenshots will be the flagship feature mentioned by people on why you should upgrade.</p>
                <p>Basically I am sad when each new version comes out and there is:</p>
                <dl class="image">
                    <dt><img src="images/ThreeItems.jpg" alt="" /></dt>
                </dl>    
                <p>There must be lots of technical humps, but I would love to know if any of this is possible without a mountain of work:</p>
                <ol>
                    <li>In the Browser - Paste (via Silverlight 5 and PInvoke)  </li>
                    <li>In the Brower - "Edit Description in Word"  (opening Word and linking to it)</li>
                    <li>In the Browser - Insert Table (the same as the SharePoint team)</li>
                    <li>In the Browser - "Edit HTML"</li>
                    <li>Working with the SharePoint and CRM team to make a consistent solution</li>
                    <li>The % parity from copying from an outlook email?</li>
                    <li>The % parity from copying from a word .doc?</li>
                    <li>The % parity from sharepoint wiki page?</li>
                    <li>Getting a "Team" tab in word</li>
                </ol>
                <dl class="image">
                    <dt><img src="images/TeamTab.jpg" alt="Add a Team tab" /></dt>
                    <dd>Figure: Getting a "team" tab in word with a single text box: Work Item ID</dd>
                </dl>
                <p>Just this feature in Word - would get us to a place where adding a bug.... <b>is as easy as writing it on paper</b>.</p>
            </li>
            <li>
               <h2><a name="RunTests"></a>Add 'Run Tests' on the right click menu</h2>
                <table class="clsSSWTable">                  
                    <tr>
                        <td>Add right click menu "Run Tests</td>
                        <td>|Tests in Current Context </td>
                        <td>**Rename to 'Test Solution in current context (4)' </td>
                    </tr>
                    <tr>
                        <td> </td>
                        <td>|All Tests in Solution</td>
                        <td>**Rename to 'Test Solution (55)'</td>      
                    </tr>
                    <tr>
                        <td></td>
                        <td>|All Impacted Tests"</td>
                        <td> </td>
                    </tr>    
                </table>
                <dl class="image">
                    <dt><img src="images/RunCodeAnalysis.jpg" alt="The first option" /></dt>
                    <dd>Figure: The first option is to 'Run Code Analysis'. What?</dd>
                </dl>               
            </li>
            
            <li>
                <h2><a name="LineInCallView"></a>Help me see find the line in the call view (in one step) when using IntelliTrace</h2>
                <p>When you search for text in any other application, it does not say <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"We found one!   Do you want to go there?"<br />
                It just goes there!</p>
                <p>Summary: I should <b>*not*</b> have to manually select #3 or #4</p>
                <dl class="image">
                    <dt><img src="images/JumpTheStep.jpg" alt="Jump this step " /></dt>
                    <dd>Figure: I should not need step #3, in order to find the first result (#1)  </dd>
                </dl>                  
            </li>
            <li>
                <h2><a name="DescribeBacklog"></a>Help me to describe Product Backlog Items effectively</h2>
                <p>
                  The Description and Acceptance Criteria fields in the Hosted TFS Scrum Template should allow me to write rich text so I can communicate effectively with my team.<br />
                    These fields may have areas that need emphasis, and acceptance criteria should be presented in bullet lists.
                </p>
                <p>Change the Description and Acceptance Criteria fields to rich text fields.</p>
                <dl class="image">
                    <dt><img src="images/RichTextFields.jpg" alt="There should be rich text in these fields. " /></dt>
                    <dd>Figure: The Description and Acceptance Criteria fields should be rich text so I can communicate effectively with my team.  </dd>
                </dl>              
            </li>
            <li>
                <h2><a name="TesterDebug"></a>Testers need to debug #1 - but they are *not* going to install and use some diff tool</h2>
                <p>(Happy to be corrected - there might be a much better way to debug)</p>
                <dl class="image">
                    <dt><img src="images/CompareResultsOfTests.jpg" alt="Compare the results of the tests " /></dt>
                    <dd>Figure: I am trying to understand the differences between 'WebTest1' and 'WebTest2'... so add menu item 'Open Results in Excel' </dd>
                </dl>  
                <dl class="image">
                    <dt><img src="images/OpenResultInExcel.jpg" alt="Open result in Excel " /></dt>
                    <dd>Figure: After clicking a menu item like 'Open Results in Excel' I would like to see this  </dd>
                </dl>  
            </li>
            <li>
               <h2><a name="InfoAboutMyProject"></a>Help me find file information about my project</h2>
               <p>e.g. On a 1gb web site over VPN </p>
               <p>A VS user should be able to find out information about a team project without having to check out <b>*all*</b> the code.</p>
               <p>Currently, to find the number of files in a project collection, or the <b>*size*</b> of those files, you have to do a Get Latest, potentially downloading gigabytes of data to your local machine.</p>
               <ol>
                 <li>Include a file size column in the Source Control Explorer in Visual Studio</li>
                 <li>Give me a tool to search for files based on their file properties.<br />
                   This should behave the same way as searching for files in Windows Explorer.<br />
                   <dl class="image">
                     <dt><img src="images/FileInfoMissing.jpg" alt="File info missing in VS 2010" /></dt>
                     <dd>Figure: File information is missing from the Source Control Explorer in Visual Studio 2010  </dd>
                   </dl>  
                   <dl class="image">
                     <dt><img src="images/FileInfoMissing01.jpg" alt="File info missing in VS 2012/2011 " /></dt>
                     <dd>Figure: File information is also missing from the Source Control Explorer in Visual Studio 2012 / Visual Studio 11  </dd>
                   </dl> 
                    <dl class="image">
                     <dt><img src="images/SearchFilesFunction.jpg" alt="Search for files function " /></dt>
                     <dd>Figure: I should be able to search for files just like I do in Windows Explorer </dd>
                   </dl> 
                 </li>              
               </ol>
            </li>

            <li>
                <h2><a name="improve-gated-checkin"></a>Improve the Gated Checkin workflow</h2>
                    <p>Gated Checkins are great for verifying your project builds successfully before a checkin occurs, but the workflow and dialog messages can be difficult to follow and needs to improve.</p>
                    <p>The process for a project with a Gated Checkin build is:</p>
                    <ol>
                        <li>The developer clicks Check In</li>
                        <li>Changes are not checked in, but are shelved and a build is queued</li>
                        <li>The developer is notified when a build succeeds and prompted to �reconcile� their workspace</li>
                    </ol>  
                    <p><strong>Note:</strong> This relies on the Build Notifications tool running, which may not be the case. If it's not running, the developer has to manually reconcile their workspace before they can effectively continue working.</p>
                    <dl class="image">
                        <dt><img src="Images/improve-checkin-1.jpg" /></dt>
                        <dd>Figure: The developer is notified if a gated check-in resulted in a commit</dd>
                    </dl>    
                    <h3>Recommendations</h3>
                    <ol>
                        <li>The Build Notifications tool should not be a requirement � Visual Studio should handle this notification itself</li>
                        <li>The text in the notification dialog should be changed from:<br />
                        If you did not undo your local pending changes when you submitted your check-in, you may need to reconcile your workspace with the repository.<br />
                        To:<br />
                        Your Gated Check-in has succeeded and the server has now checked in your changes.<br />
                        Click Reconcile to make sure your local workspace is up to date with the server.</li>
                        <li>By default, reconciliation shouldn�t be required. If the file hasn�t changed since your checkin, it should be automatically reconciled</li>
                        <li>If manual reconciliation is required, there should be a more obvious option in Team Explorer:
                            <dl class="image">
                                <dt><img src="Images/improve-checkin-2.jpg" /></dt>
                                <dd>Figure: Manual Reconciliation should be easier in Team Explorer's Pending Changes window</dd>
                            </dl></li>
                    </ol>

            </li>

        </ol>
        <h2>Acknowledgements</h2>
        <p>
            <a href="/people/adam-cogan">Adam Cogan</a><br />
            <a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Peter.aspx">Peter Gfader</a>
        </p>
</asp:Content>
