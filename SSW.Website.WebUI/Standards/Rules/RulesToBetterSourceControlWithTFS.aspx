<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="true" Title="SSW Rules to Better Source Control with TFS" %>
<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

    <p>
        You should always use a source control system! SSW uses and recommends Microsoft Team
        Foundation Server (TFS) using Git for source control. Source control allows the tracking of changes to code as
        well as a backup of your source code. This is also very useful when debugging and
        fixing errors as you can locate changes that have been introduced and see the lines
        that were updated.</p>
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230536F75726365253230436F6E74726F6C')">
            Let us know</a> what you think.</p>
    <p>
        <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" />
        Indicates important rule</p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#UsingSourceControl">Do you know the benefits of using source control?</a></li>
            <li><a href="#RightSourceControl">Do you know the right source control to use?</a> <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#CheckinRegularly">Do you make small changes and check in early and often?</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#EnforceComments">Check-in - Do you enforce comments with check-ins?</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#EnforceWorkItemAss">Check-in - Do you enforce work item association with check-in?</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>            
            <li><a href="#VersionNumbers">Do you know how to structure your version numbers?</a></li>
            <li><a href="#CheckInAllFiles">Do you work on one task at a time (aka. Do you check-in all files?)</a> <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#MultipleCheckOuts">Do you always allow multiple check-outs?</a> <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#CheckinReport">Do you have a report to see who has not checked in?</a></li>
            <li><a href="#SetupSourceStandardLocation">Do you avoid limiting source control to just code?</a></li>
            <li><a href="#IncludeOriginalArtwork">Do you include original artwork in Source Control?</a></li>
            <li><a href="#RollbackChanges">Do you know how to rollback changes in TFS?</a></li>
            <li><a href="#TfsExternal">Do you configure your TFS to be accessible from outside the network?</a></li>
            <li><a href="#UseWE">Do you use the Windows Explorer Integration?</a></li>            
			<li><a href="#KeepingHistoryInVSS">Do you need to migrate the history from VSS (or another source control system) to TFS?</a></li>

			<li><a href="#CreateTests">1.	Do you know to always create a test if you are fixing a bug (aka Red Green Refactor)?</a></li>
            <li><a href="#TFSWorkspaceType">Do you know what type of TFS workspace to use?</a></li>
			
        </ol>
    </div>
    <br />
    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="UsingSourceControl"></a>Do you know the benefits of using source control?</h2>
                <p>The standard answer to this question is that it allows team development and provides a backup of all of your code and changes. In other words, you can see the <strong>history</strong>.</p>
                <p>The best answer is that it lets us find exactly what changed to break the application, and who did it. A lot of the time you spend as a developer is fixing bugs. You don’t want to just keep making changes, you also want to inform the person who made the error.</p>
                <p>In Team Foundation Server, you can see who made a change that introduced an error and let them know.</p>
                <dl class="image">
                    <dt><img src="Images/source-control-benefits-1.jpg" alt="source-control-benefits" /></dt>
                    <dd>Figure: OK Example – You can view the changes for an individual file or folder</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/source-control-benefits-2.jpg" alt="source-control-benefits" /></dt>
                    <dd>Figure: OK Example – we can select different changesets and compare the changes</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/source-control-benefits-3.jpg" alt="source-control-benefits" /></dt>
                    <dd>Figure: OK Example – we can select different changesets and compare the changes. Green = added, Red = deleted</dd>
                </dl>
                 <dl class="goodImage">
                    <dt><img src="Images/source-control-benefits-4.jpg" alt="source-control-benefits" /></dt>
                    <dd>Figure: Good Example – right-clicking on a file and selecting Annotate lets you view the person last worked on the file and should be CCed when bugs are discovered in his code</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/source-control-benefits-5.jpg" alt="source-control-benefits" /></dt>
                    <dd>Figure: Good Example – using annotate allows us to find the coder who made specific changes, to understand their thoughts before deleting/changing their code</dd>
                </dl>
                 <dl class="goodImage">
                    <dt><img src="Images/source-control-benefits-6.jpg" alt="source-control-benefits" /></dt>
                    <dd>Figure: Good Example – clicking on the changeset Id shows us all the files that got checked in at that time as well as their comments</dd>
                </dl>
                <h3>Related Rule</h3>
                <p>If you want to see how this is done in SharePoint, read <a href="https://rules.ssw.com.au/do-you-know-how-to-view-changes-made-to-a-sharepoint-page">Do you know how to view changes made to a SharePoint page?</a>​​</p>
            </li>

            <li>
                <h2><a name="RightSourceControl"></a>Do you know the right source control to use?<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                    <p>SSW uses and recommends Team Foundation Server, using Git as the source control option.</p>
                    <p>Team Foundation Server has some great features that make it a great option for teams serious about producing great software.</p>
                    <h3>Integration with a complete set of application lifecycle management tools</h3>
                    <p>Team Foundation Server isn’t just source control, it also gives you the tools to manage your complete application lifecycle. From awesome agile collaboration tools and work items for tracking requirements, to managing and running manual and automated test suites, through to build and deployment services and tools, TFS gives you a fully-integrated platform to develop great solutions from end to end.</p>
                    <p>For more information on effective project management with Team Foundation Server, see the <a href="http://rules.ssw.com.au/Management/RulesToBetterScrumUsingTFS/Pages/default.aspx">Rules to Better Scrum using TFS</a>.</p>
                    <h3>Visual Studio integration</h3>
                    <p>TFS integrates with Visual Studio incredibly well. Most of the features are surfaced in the IDE so you never have to switch programs.</p>
                    <p>You can even integrate TFS with Eclipse or just use it from Windows Explorer or the command line!</p>
                    <h3>Multiple options for source control</h3>
                    <p>Team Foundation Server 2013 lets you use either a centralized source control system (Team Foundation Version Control ) or a distributed source control system (Git) for managing your code.</p>
                    <p>There are reasons for using both and it depends on your development team and what the workflow they’re comfortable with. Both are good options, but at SSW we use Git for new projects because it helps us make multiple small commits before pushing big changes to the server. To find out when you should use Git, see <a href="http://rules.ssw.com.au/TFS/RulesToBetterVersionControlwithTFS(AKASourceControl)/Pages/when-to-use-Git-for-version-control.aspx">Do you know when to use Git for version control?</a></p>
                    <h3>Multiple options for hosting</h3>
                    <p>Team Foundation Server is available both as an on-premises product as well as a cloud-hosted system through Visual Studio Online. You can get full control by installing it on your own servers, or you can let Microsoft do the work and host it for you at <a href="http://www.visualstudio.com" target="_blank">visualstudio.com</a>.</p>
            </li>

            <li>
                <h2><a name="CheckinRegularly"></a>Do you make small changes and check in early and often? <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                    <p>Frequently developers work on long or difficult features/bugs and leave code checked out for days or worse still, weeks.</p>
                    <ol>
                        <li>What happens if your laptop hard drive dies?</li>
                        <li>What happens if you call in sick?</li>
                        <li>What happens if someone has to take over from you?</li>
                    </ol>
                    <dl class="badImage">
                        <dt><img src="Images/CheckInRegularly.jpg" alt="Check-In Regularly"  /></dt>
                        <dd>Figure: Bad Example – don't try to eat too much at once</dd>
                    </dl>
                    <p>We recommend a check-in:</p>
                    <ol>
                        <li>Immediately after completing a piece of functionality, where the code compiles and passes all unit tests</li>
                        <li>Before lunch or dinner</li>
                        <li>Before leaving your workstation for an extended period of time</li>
                    </ol>
                    <p>Another good reason to check-in regularly is that it makes it easier to merge your changes with other developers. If all developers check-in lots of changes in one go, you will spend a lot of your time resolving conflicts instead of doing work.</p>
                    <p><strong>Tip: </strong>Git makes it easier for developers to work in small chunks. It encourages frequent local commits before pushing a bunch of changes to the server at once.</p>
                    <h3>Exception: What if you’re doing a large refactor?</h3>
                    <p>You should always write software using an architecture like the Onion Architecture that allow small checkins that won’t break the build. However, despite your best efforts, you might find yourself with a large refactoring job on some legacy code.</p>
                    <img src="Images/git.jpg" alt="Git logo" />
                <p>If you're using Git, you have two options for saving unfinished work:</p>
                    <ol>
                        <li>Create a "backup" branch on the server and push your changes there</li>
                        <li>Use local commits and make sure your hard drive is backed up daily (preferred)</li>
                    </ol>
                <img src="Images/tfs.jpg" alt="TFS logo" />
                    <p>If you're using Team Foundation Version Control, you can use Shelvesets or the My Work feature to save your unfinished work to the server.</p>
                    <p>My Work lets you suspend your work to save your changes (it uses a Shelveset in the background), and makes it easy to resume your work later. It will even restore Visual Studio to the state it was when you suspended, letting you pick up exactly where you left off!</p>
                <dl class="image">
                    <dt><img src="Images/source-control-checkin-1.jpg" alt="source-control-checkin" /></dt>
                    <dd>Figure: OK Example – click Shelve to save your changes without checking in</dd>
                </dl>
                 <dl class="goodImage">
                    <dt><img src="Images/source-control-checkin-2.jpg" alt="source-control-checkin" /></dt>
                    <dd>Figure: Good Example – use Suspend in the My Work hub to save your unfinished changes</dd>
                </dl>
            </li>

            <li>
                <h2><a name="EnforceComments" id="EnforceComments"></a>Do you enforce comments with check-ins?<img src="/ssw/Images/Validation/redstar.gif"
                        alt="Red star" width="18" height="14" /></h2>
                <p>Developers should always add a comment to every check-in they create. This lets the other developers know what was changed and why.  Without comments, some of the great built in TFS features like History become far less useful.</p>
                <dl class="badImage">
                    <dt><img alt="comments-checkin" src="Images/source-control-comments-1.jpg" /></dt>
                    <dd>Figure: Bad Example - no comments against the check-ins mean we don't know what changes were made in each revision</dd></dl>
                <dl class="goodImage">
                    <dt><img alt="comments-checkin" src="Images/source-control-comments-2.jpg" /></dt>
                    <dd>Figure: Good Example: Now we can pin point which revision a particular change has been made</dd>
                </dl>
                <img src="Images/git.jpg" alt="Git logo" />
                <p>If you're using Git, you can't enforce this rule out of the box!</p>
                <img src="Images/tfs.jpg" alt="TFS logo" />
                <p>If you're using Team Foundation Version Control, you can enforce this behaviour.</p>
                   
                <p>To enforce this behaviour, you will need to:</p>
                <ol>
                    <li>In <strong>Team Explorer</strong>, go to <strong>Settings</strong> and click <strong>Source Control</strong> in the <strong>Team Project</strong> section
                    <dl class="image">
                        <dt>
                            <img alt="comments-checkin" src="Images/source-control-comments-4.jpg" />
                        </dt>
                    </dl>
                        </li>
                    <li>Select the <b>Check-in Policy</b> tab</li>
                    <li>Click <b>Add</b></li>
                    <li>Select the Changeset Comments Policy
                    <dl class="image">
                        <dt>
                            <img alt="comments-checkin" src="Images/source-control-comments-5.jpg" /></dt>
                    </dl>
                        </li>
                    </ol>
                    <p>Now the next time someone checks-in some code, they are forced to enter a comment.</p>
            </li>

            <li>
                <h2>
                <a name="EnforceWorkItemAss" id="A1"></a>Check-in – Do you enforce work item association with check-in?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" />
                </h2>
                <p>One of the big advantages of using TFS is end to end traceability, however this requires the developer to do one extra step to link their code (changeset) with requirements (work items).</p>
                <p>Code is the body of software, while user requirements are the spirit. Work Item association helps us to link the spirit and body of software together. This is especially useful when you're trying to identify the impact of a bug in terms of user requirements. 
                </p>
                <img src="Images/git.jpg" alt="Git logo" />
                <p>In Git, you can associate your changes with a work item using the comments field.</p>
                <dl class="image">
                    <dt><img alt="source-control-checkin-enforce" src="Images/source-control-checkin-enforce-1.jpg" /></dt>
                    <dd>Figure: You can reference work items directly in your commit message</dd>
                </dl>
                <img src="Images/tfs.jpg" alt="TFS logo" />
                <p>If you're using Team Foundation Version Control, you should associate a work item when you check in.</p>

                <dl class="badImage">
                    <dt><img alt="source-control-checkin-enforce" src="Images/source-control-checkin-enforce-2.jpg" /></dt>
                    <dd>Figure: Bad Example - no work item is associated with this changeset</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img alt="source-control-checkin-enforce" src="Images/source-control-checkin-enforce-3.jpg" /></dt>
                    <dd>Figure: Good Example - a work item is associated with this changeset</dd>
                </dl>
                <p>
                In order to achieve this, developers need to use the Related Work Items to add a work item by Id or by query.
                </p>
                <p>Even better, developers should associate their changes to a work item using the My Work feature <strong>before</strong> they start developing.</p>
                <dl class="image">
                    <dt><img alt="source-control-checkin-enforce" src="Images/source-control-checkin-enforce-4.jpg" /></dt>
                    <dd>Figure: OK Example – associating a Work Item with the Changeset</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img alt="source-control-checkin-enforce" src="Images/source-control-checkin-enforce-5.jpg" /></dt>
                    <dd>Figure: Good Example – associating a work item using the My Work feature</dd>
                </dl>
                <img src="Images/git.jpg" alt="Git logo" />
                <p>Git doesn't support checkin policies, so you can’t enforce this rule out of the box.</p>
                <img src="Images/tfs.jpg" alt="TFS logo" />
                <p>If you're using Team Foundation Version Control, you can take it one step further and enable the "Work Item Check-in Policy" to enforce this rule in your team.</p>
                <p>To do this, you'll need to install the Team Foundation Server Power Tools, then enable the Work Items check-in policy.</p>
                <dl class="image">
                    <dt><img alt="source-control-checkin-enforce" src="Images/source-control-checkin-enforce-6.jpg" /></dt>
                    <dd>Figure: Always enable the "Work Items check-in policy"</dd>
                </dl>
            </li>
           
            <li>
                <h2><a name="VersionNumbers"></a>Do you know how to structure your version numbers?</h2>
                <p>Version numbering for .Net assemblies should take the structure: [Major].[Minor].[Revision].[Build].</p>
                <ul>
                    <li><strong>Major</strong> – should only change with major upgrades or a new platform (e.g. Windows 8).<br />
                        For projects that have not yet been released to production, this number should be 0 and should only change to 1 on the first release
                    </li>
                    <li><strong>Minor</strong> – for new features and releases that are customer facing, ideally incremented every sprint</li>
                    <li><strong>Revision</strong> – for emergency maintenance or security patches to the customer</li>
                    <li><strong>Build</strong> - internal build number to differentiate different builds. It should not be incremented manually</li>
                </ul>
                <p>This strategy fits very well with the Release Branching strategy we recommend in our <a href="http://rules.ssw.com.au/TFS/RulesToBetterBranchingAndBuilds/Pages/default.aspx">Rules to Better Branching and Builds</a>. Whenever a patch needs to be applied to a version of an application, you can branch off the released version, apply the changes, and release a new revision. Finally, you can merge your fix back into the trunk.</p>
                <dl class="image">
                    <dt><img alt="source-control-version-numbers.jpg" src="Images/source-control-version-numbers.jpg" /></dt>
                    <dd>Figure: Example process where a patch needs to be applied to 1.1.0 in production</dd>
                </dl>

            </li>

            <li>
                <h2>
                    <a name="CheckInAllFiles"></a>Do you work on one task at a time (aka. Do you check-in all files?)
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                
                    <p>You should always try to limit your work to one task at a time so that your check-ins can be tied to a single piece of work. If you stick to this rule, you should always be able to check in every modified file at the completion of a task.</p>
                    <p>If you're working on a few tasks without doing a check-in between them, you can find yourself only wanting to check in a few files rather than everything. This can lead to the problem of partial check-ins where references to new classes or methods are unavailable because they are in the files that haven't been checked in, and you don't want to break the build! So either, check-in all the files you are working on or none at all if you aren't finished working on the task.</p>
                    <p>The best way to manage the tasks you're working on is to use the My Work hub in Visual Studio. See the <a href="http://rules.ssw.com.au/Management/RulesToBetterScrumUsingTFS/Pages/use-the-My-Work-hub.aspx">"Do you use the My Work hub?" rule</a> for more information.</p>
            </li>

            <li>
                <h2>
                    <a name="MultipleCheckOuts"></a>Do you always allow multiple check-outs?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                    <p>In the past, source control systems like Visual SourceSafe were not good at merging. Developers also tried to avoid having to merge files, because it was too hard. Team Foundation Server lets you only allow one person at a time to check out a file, so there will be no chance of a conflict that needs merging. However, you should always allow multiple people to modify a file at the same time!</p>
                    <p>There are two reasons:</p>
                    <ol>
                        <li>These days, a developer will rarely be working on a single file at a time. If they check out file A, then later go to work on file B to complete the change only to find another developer has it checked out, they're stuck!</li>
                        <li>Usually, team members will be working on different files or different sections of the same file. You'll lose productivity if developers can’t work on the files they need to even if the changes don't affect the rest of the team. Merging tools are very good these days and can usually resolve conflicts that don't involve the same section of code.</li>
                    </ol>

                    <dl class="image">
                        <dt><img src="Images/source-control-multiple-checkout.jpg" alt="Check-out settings for files" /></dt>
                        <dd>Figure: Enable multiple check-out should always be checked</dd>
                    </dl>

            </li>
            <li>
                <h2><a name="CheckinReport"></a>Do you have a report to see who has not checked in?</h2>
                    <p>Managers should regularly check to see if developers are committing their changes into source control. In TFS you can only get a status by manually looking at each project or running "tfs status" command. A great tool is <a href="/SSW/Redirect/Attrice.htm"> Attrice Team Foundation SideKicks</a> which can display the status of all users and projects</p>
                    <dl class="image">
                        <dt><img src="Images/SideKicksStatus.jpg" alt="Source Safe VS.NET" /></dt>
                        <dd>Figure: Use TFS Sidekicks and search for files older than 48 hours to find the naughty devs</dd>
                    </dl>
                    <p>Suggestion for TFS Sidekicks: Add a button to "Email all people their shame list"... showing their files that are still checked out (until then I do it manually)</p>
                    <p><strong>Tip:</strong> If old edits are no longer required, or the workspace is no longer current, you can undo changes by highlighting the files you want to undo and clicking the Undo Pending Change button.</p>
                    <dl class="image">
                        <dt><img src="Images/SideKicksStatus.jpg" alt="Source Safe VS.NET" /></dt>
                        <dd>Figure: Use TFS Sidekicks to undo old checkouts by selecting them and clicking "Undo"</dd>
                    </dl>
            </li>

            <li>
                <h2><a name="SetupSourceStandardLocation"></a>Do you avoid limiting source control to just code?</h2>
                <p>You can spend valuable developer time on every part of a project. The bulk of time is normally spent on coding up .cs, .vb, .html and .cshtml files. However, there is a lot more to your project than just source code. You should include all relevant non-compiled files in source control to avoid the following:</p>
                <ul>
                    <li>losing work</li>
                    <li>losing old versions of work</li>
                    <li>having work overwritten</li>
                </ul>
                <p>In particular, you should make it as easy as possible to see who changed what and who deleted what and allow a simple rollback to previous versions of non-code files.
                    Files you should put in source control include:</p>
                <ul>
                    <li>XSL files</li>
                    <li>Word documents</li>
                    <li>Excel Spreadsheets </li>
                    <li>Visio Diagrams</li>
                    <li>All source code and markup including HTML, CSS, and JavaScript files</li>
                    <li>HTML files</li>
                    <li>Image files and PSD files (yes this takes room in your source control database - but we still want to be able to revert to an old version easily) </li>
                </ul>
                <p>
                    Things you don't store are:
                </p>
                <ul>
                    <li>Video files eg. .avi (these take up too much room)</li>
                    <li>Compiled .dll and .exe files (you should exclude the bin and obj folders)</li>
                    <li>Installers eg. .msi</li>
                </ul>
            </li>

            <li>
                <h2><a name="IncludeOriginalArtwork"></a>Do you include original artwork in Source Control?</h2>
                <p>Your original digital artwork is an asset and also need to be managed accordingly. However many organizations fail to realize this and issues starts to arise when you need to roll back your images. You may discover that the designer has overwritten the old images or worse, the image was designed spontaneously and the original design was exported to a .jpg or .gif without the original design being saved! Including your original artwork in your source control can be handy in case of hard drive failures or accidental deletions.</p>
                <dl class="image">
                    <dt><img src="Images/include_artworks_in_source.gif" height="162" width="178" alt="" /></dt>
                    <dd>Figure: Include your original artworks in Source (eg .PSDs in Source Control)</dd>
                </dl>
                <p>We choose to exempt uncompressed video files as they tend to have large footprints and potentially cause delays in productivity. It is highly recommended that you have a separate backup procedure for these files.</p>
            </li>

            <li>
                <h2><a name="RollbackChanges" id="RollbackChanges"></a> Do you know how to rollback changes in TFS?</h2>
                <p>Whilst working on a new feature all morning I&#8217;ve realised that this isn&#8217;t going to work out. I need to revert back to what the code was this morning before I touched it. But how?</p>
                <p>There are two ways to do this:</p>
                <ol>
                    <li>If you haven&#8217;t checked in any files since you started modifying them then
                        the process is simple:
                        <ul>
                            <li>Right click your solution or project and choose <b>Source Control | Undo Pending Changes</b></li>
                            <dl class="image">
                                <dt>
                                    <img alt="Undo Pending changes" src="Images/source-control-rollback-1.jpg" />
                                </dt>
                                <dd>Figure: You can undo pending changes right from the Solution Explorer</dd>
                            </dl>
                        </ul>
                    </li>
                    <li>If you aren&#8217;t so lucky and have made some commits along the way then the only option is to use the Rollback command.
                        <ul>
                            <li>Find the revision before you started checking code in using the History command
                            <dl class="image">
                                <dt>
                                    <img alt="Revision List" src="Images/source-control-rollback-2.jpg" />
                                </dt>
                                <dd>Figure: The last revision before Drew made changes was 63428</dd>
                            </dl>
                            </li>
                            <li>Right-click the changeset and choose Rollback Entire Changeset
                            <dl class="image">
                                <dt>
                                    <img alt="Rollback Changeset" src="Images/source-control-rollback-3.jpg" />
                                </dt>
                                <dd>Figure: You can rollback to a changeset from the History window</dd>
                            </dl>
                            </li>
                        </ul>
                    </li>
                </ol>
            </li>

            <li>
                <h2><a name="TfsExternal"></a>Do you configure your TFS to be accessible from outside the network?</h2>
                    <p>It is important to have source control available to you wherever you are, so that means than VPN access is not enough. This is because sometimes when you are working on-site, the client may have strict network policies that block VPN or even port 8080 is blocked.</p>
                    <p><strong>Tip: </strong>You can solve this with TFS Extranet Support:</p>
                    <ul>
                        <li>TFS SP1<br />
                            This feature called "Extranet Support" was added way back in TFS 2005 SP1 as per <a href="/ssw/Redirect/StandardsRules/MSDNBlog.htm" class="external" target="_blank">Stuff in the pipe for Team Foundation Server</a> </li>
                        <li>A domain name or IP address forwarded to TFS (eg: tfs.your-domain.com)</li>
                        <li>Port 8080 (this is port that TFS uses for source control)</li>
                        <li>Firewall/Router rule (ideally)</li>
                    </ul>
                    <p>Yes Port 8080 will work in most cases but not on the strictest networks, where only Port 80 is allowed.
                    <br />Then you have to use port forwarding via a firewall/router rule (recommended) to forward port 80 to the TFS port, while in this way, you would lose the TFS SharePoint Portal and Reporting Services.
                    </p>
                    <dl class="image">
                        <dt><img alt="Rule to forward port 80 to the TFS port" src="Images/tfs-firewall-rule-80.gif" width="681" height="339" />
                        </dt>
                        <dd>Figure: Rule to forward port 80 to the TFS port</dd>
                    </dl>
                    <p><strong>Tip:</strong> you should also consider exposing your TFS server via HTTPS and port 43. This provides extra security.</p>
            </li>

            <li>
                <h2><a name="UseWE"></a>Do you use the Windows Explorer Integration?</h2>
                <ol>
                    <li>Install the TFS Power Tools from <a href="http://aka.ms/TFS2013PowerTools" target="_blank">aka.ms/TFS2013PowerTools</a></li>
                </ol>
                <dl class="image">
                    <dt><img alt="Use Windows Explorer" src="Images/TFS_WE_01.jpg" /></dt>
                    <dd>Figure: Using Windows Explorer for your source control is a dream (great for designers too - who don't want to use VS)</dd>
                </dl>
            </li>

            <li>
                <h2><a name="KeepingHistoryInVSS"></a>Do you need to migrate the history from VSS (or another source control system) to TFS?</h2>
                    <p>Suppose you are migrating from VSS or another source control system to TFS, you need to consider if it's necessary to also migrate the history.</p>
                    <p>We suggest that you don't migrate the history, because:<br/>
                <ul>
                   <li>Normally, you don't need to check the history very often. If you do sometimes, then get it from the old system.</li>
                   <li>This will save a lot of space for TFS. For example, if you have a 7GB VSS history database, you probably only need to look at a small bit of information every 3 months, so what's the point of copying about 7GB of data when you only need one line of code?</li>
                </ul></p>
                 <p>But there are also some considerations that may prompt you to migrate the history:</p>
                <ul>
                  <li>If the history of source changes will be checked very often, so you can check the old history with the recent together via TFS.</li>
                  <li>You are going to decommission the old VSS completely. Say you don't want to keep the old VSS database, and then it will be necessary to keep the information somewhere.</li>
                   <li>If the project is very active, then it will be worthwhile to migrate the history because your developers may need it every day.</li>
                </ul>
                <p>If you are going to move the history, these links may help:</p>
                <ul>
                    <li><a href="/ssw/redirect/msdn/MigratingToTFS.htm">http://msdn2.microsoft.com/en-us/library/ms181247.aspx</a></li>
                    <li><a href="/ssw/redirect/MigratingToTFS.htm">http://blogs.msdn.com/buckh/archive/2004/06/10/152609.aspx</a></li>
                    <li><a href="/ssw/redirect/MigratingToTFS2.htm">http://blogger.xs4all.nl/tty1/archive/2006/04/09/85962.aspx</a></li>
                </ul>
            </li>

            <li>
                <h2><a name="CreateTests"></a>1.	Do you know to always create a test if you are fixing a bug (aka Red Green Refactor)?</h2>
                    <p>If you need to fix a bug, you should write a test first and follow the Red-green-refactor process. This will help you verify the fix and make sure it doesn’t happen again.</p>
                    <p>The process is:</p>   
                    <ol>
                        <li>Create a test for the broken code – the test should fail when run (Red)</li>
                        <li>Update the broken code so it works correctly – the test should now pass (Green)</li>
                        <li>Refactor the code if you need to improve its quality – the test should still pass so you can be confident you haven't broken anything (Refactor)</li>
                    </ol>
                    <p>If you find you can't write tests around the broken code, that's a sign your code is not structured very well. You should follow the Do You Use a Dependency Injection Centric Architecture rule.</p>
           </li>

            <li>
                <h2><a name="TFSWorkspaceType"></a>Do you know what type of TFS workspace to use?</h2>
                <p>In most cases, you should use Git or Team Foundation Version Control with local workspaces in Team Foundation Server (we recommend Git) for source control.</p>
                <p>There are three reasons you might want to consider Server workspaces:</p>
                <p>You might consider using server workspaces when you have a very large codebase that you’re working on. Using a local workspace will keep a (compressed) copy of everything on your local machine so you can rollback any changes you make while you’re offline. If there are a very large number of files (more than 100,000) it may take a long time for the disk scanner to determine which files have changed. In some cases you may even get a timeout error.</p>
                <p>Use them when you are using checkout locks (not recommended). Because you’re not talking to the server when you start editing a file, your machine can’t enforce checkout locks.</p>
                <p>If you have some people working in VS 2010, local workspaces will be invisible to them.<br />
                Introduced in TFS 2012, prior to then.</p>
            </li>

        </ol>

    </div>


    <h2>Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DDK">David Klein</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TKK">Tristan Kurniawan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=RT">Ryan Tee</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JK">Justin King</a><br />
    </p>
</asp:Content>
