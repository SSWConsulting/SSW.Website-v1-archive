<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="true"
    Title="SSW Rules to Better Source Control" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        If Server.MachineName.ToUpper().Equals(ConfigurationManager.AppSettings("MasterServer")) Then
            pnlInfo.Visible = True
        Else
            pnlInfo.Visible = False
        End If
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>
        You should always use a source control system! SSW uses and recommends Microsoft Team
        Foundation Server (TFS). Source control allows the tracking of changes to code as
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
            <li><a href="#RightSourceControl">Do you know the right source control to use?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#BackupRepository">Are you very clear your Source Control is not a backup
                repository?</a></li>
            <li><a href="#TestDrivenProcess">(Before starting) Do you follow a Test Driven Process?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#CompilePassed">(After work) Do you only check-in code when it has compiled
                and passed the unit tests?</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star"
                    width="18" height="14" /></li>
            <li><a href="#CheckinRegularly">(Check-in regularly) Do you keep chunks of work small,
                check in after completing each chunk of work (which should be before lunch and dinner)?</a><img
                    src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#EnforceComments">Do you enforce comments with check-ins?</a><img src="/ssw/Images/Validation/redstar.gif"
                alt="Red star" width="18" height="14" /></li>
            <li><a href="#CheckinComment">Do you know how to write good checkin-in comments?</a></li>
            <li><a href="#Conventions">Do you know the best Project/Version conventions?</a></li>
            <li><a href="#LabelReleasesInSourceControl">Do you label your releases in Source Control?</a></li>
            <li><a href="#VersionNumbers">Do you know how to structure your version numbers?</a></li>
            <li><a href="#CheckInAllFiles">Do you check-in all files?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#SharedCheckOuts">Do you use shared check-outs?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#CheckinReport">Do you have a report to see who has not checked in?</a></li>
            <li><a href="#OnlyFilesNeeded">Do you only check out the files that you need?</a></li>
            <li><a href="#SetupSourceStandardLocation">Do you avoid limiting source control to just
                code?</a></li>
            <li><a href="#IncludeOriginalArtworks">Do you include original artworks in Source Control?</a></li>
            <li><a href="#RollbackChanges">Do you know how to rollback changes in TFS?</a></li>
            <li><a href="#TfsExternal">Do you configure your TFS to be accessible from outside the network?</a></li>
            <li><a href="#ConfigureTFSWA">Do you configure your Team System Web Access to be accessible from outside the network?</a></li>
            <li><a href="#Template">Do you use SSW Agile Template for SSW project?</a></li>
            <li><a href="#UseWE">Do you use the Windows Explorer Integration</a></li>
            <li><a href="#KeepingVSS">Why are we still keeping VSS?</a></li>
			<li><a href="#KeepingHistoryInVSS">Do you need to migrate the history from VSS to TFS?</a></li>
			<li><a href="#CheckInPolicy">Do you know which check-in policies to enable?</a></li>
        </ol>
    </div>
    <br />
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="UsingSourceControl"></a>Do you know the benefits of using source control?</h2>
                <p>
                    Source control allows you to backup your code, as well as to track your changes. This is very powerful regarding debugging, fixing errors and creating release notes as you can locate previous changes and see the lines that were updated.
                </p>
                <p>
                    With the source control (we use TFS), we can share project code and cooperate with other team members. 
                    Using it allows us to track changes, compare code and even roll-back if required.
                    Moreover, it keeps our code safe which is the most important.
                </p>
                <p>However, the best use is the blame game. You don't just fix code, you see who broke it, fix it, and then let them know.</p>
                <p>
                    <dl class="greyBox">
                        <dt>
                            <p>
                                Tip: It is not just about fixing problems. Always use Annotate and after fixing the problem and include a screen capture of it, letting the person who broke it know, that you just fixed their mistake.
                            </p>
                            <p>
                                This is easier now with TFS2013 Web Access, with which you can provide a changeset URL to the person who made the mistake.
                            </p>
                        </dt>
                    </dl>
                </p>
                <br />
                <dl class="image">
                    <dt>
                        <img src="Images/ChangesetURL.jpg" alt="Changeset URL" align="middle" />
                    </dt>
                    <dd>
                        Figure: Getting a URL to a specific changeset
                    </dd>
                </dl>

                <dl class="image">
                    <dt>
                        <img src="Images/HistoryWindow.jpg" alt="History" align="middle" width="577" height="228" /></dt>
                    <dd>
                        Figure: Viewing the changes in source control on each individual file is ok
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/HistoryCompareMenu.jpg" alt="History Compare Menu" align="middle" width="791" height="225" /></dt>
                    <dd>
                        Figure: We can select different changesets and compare the changes
                    </dd>
                </dl>
                  <dl class="image">
                    <dt>
                        <img src="Images/Compare.jpg" alt="Compare" align="middle" width="750" height="328" /></dt>
                    <dd>
                        Figure: We can select different changesets and compare the changes. Blue = modified, Green = addition, Red = deletion
                    </dd>
                </dl>
                 <dl class="image">
                    <dt>
                        <img src="Images/Annotatemenu.jpg" alt="AnnotateMenu" align="middle" width="215" height="331" /></dt>
                    <dd>
                        Figure: Right clicking on a file and selecting Annotate to view the history on a segment basis is much better
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/Annotate.jpg" alt="Annotate" align="middle" width="497" height="595" /></dt>
                    <dd>
                        Figure: Using annotate is great. It allows us to find the coder who made the breaking changes, to understand his thoughts before deleting/changing his or her code 
                    </dd>
                </dl>
            </li>
            <li><a name="RightSourceControl"></a>
                <h2>
                    Do you know the right source control to use?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    SSW uses and recommends Microsoft Team Foundation Server (TFS) as a source code
                    solution.
                    <br />
                    <dl class="image">
                        <dt>
                            <img src="Images/TFS.jpg" alt="Microsoft Visual Studio Team System" align="middle" /></dt>
                        <dd>
                            Figure: Microsoft Visual Studio Team System
                        </dd>
                    </dl>
                </p>
                <p>
                    Here are some of the reasons why:<br />
                    <ul>
                        <li>Checkin policies</li>
                        <li>Integrated Work Items and Source control</li>
                        <li>Visual Studio IDE integration</li>
                        <li>Code Metrics</li>
                        <li>HTTP access via webservices</li>
                        <li>Integrated Build Server</li>
                    </ul>
                </p>
                <p>
                    We also use Subversion (SVN) and Visual Source Safe (VSS) as needed</p>
            </li>
            <li><a name="BackupRepository"></a>
                <h2>
                    Are you very clear your Source Control is not a backup repository?</h2>
                <p>
                    Only check-in code that is compiling and unit tests are working.<br />
                    Note: If you are not finished working:<br />
                    <ul>
                        <li>TFS put changes into shelveset</li>
                        <li>SVN put changes into sandbox / branches</li>
                    </ul>
                </p>
            </li>
            <li>
                <h2>
                    <a name="TestDrivenProcess"></a>(Before starting) Do you follow a Test Driven Process?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    Never allow a situation where a developer can check out code and the code does not
                    compile &#8211; or the unit tests are not all green. This is called &#8220;breaking
                    the build&#8221; and the punishment in our office is 20 pushups and fixing broken
                    links for an hour!</p>
                <dl class="bad">
                    <dt class="greyBox"><b>Bad Process</b>
                        <ol>
                            <li>Check out</li>
                            <li>Compile</li>
                            <li>Develop</li>
                            <li>Compile</li>
                            <li>Check In</li>                            
                        </ol>
                    </dt>
                    <dd>A Bad Developer</dd>
                </dl>
                <dl class="good">
                    <dt class="greyBox"><b>Good Process</b>
                        <ol>
                            <li>Get latest</li>
                            <li>Compile</li>
                            <li>Run Unit Tests</li>
                            <li>If Tests pass then start developing</li>
                            <li>Check out</li>
                            <li>Develop</li>
                            <li>Compile</li>
                            <li>Run Unit Tests</li>
                            <li>Get Latest (Always do a Get Latest before checking in as code you didn't change could break your code)</li>
                            <li>Compile</li>
                            <li>Run Unit Tests</li>
                            <li>Check In if all tests passed</li>
                           
                            <li>Run Unit Tests to confirm everything is working</li>
                        </ol>
                    </dt>
                    <dd>A Good Developer</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="CompilePassed"></a>(After work) Do you only check-in code when it has compiled
                    and passed the unit tests?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    Too many people treat Source Control as a networked drive. Don't just check-in when
                    the clock ticks past 5 or 6 o'clock. If code doesn't pass its unit tests or won't
                    even compile put your code in a <a href="/SSW/Redirect/MSDN2/Shelveset.htm">
                        shelveset</a>
                </p>
                
                <p>Other recommendations have included using //TODO or commenting the code out. However we recommed avoiding this
                practice as it increases the risk that the code is forgotten about.</p>
            </li>
            <li><a name="CheckinRegularly"></a>
                <h2>
                    (Check-in regularly) Do you keep chunks of work small, check in after completing
                    each chunk of work (which should be before lunch and dinner)?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    Frequently developers work on long or difficult features/bugs and leave code checked
                    out for days or worse still weeks.
                </p>
                <ol>
                    <li>What happens if your laptop hard drive dies?</li>
                    <li>What happens if you call in sick?</li>
                    <li>How can you pair program if not sharing your changesets?</li>
                </ol>
                <p>
                    That's why source code should be checked in regularly. We recommend a check-in:
                    <ul>
                        <li>Immediately after completing a piece of functionality, where the <a href="#CompilePassed">
                            code compiles and passes the unit tests</a></li>
                        <li>Before lunch or dinner</li>
                        <li>Before leaving your workstation for an extended period of time</li>
                    </ul>
                </p>
                <p>
                    If the changes would break the build or are in a state that cannot be put into the
                    main trunk, then this code should be put into a <a href="/SSW/Redirect/MSDN2/Shelveset.htm">
                        shelveset</a> (sometimes referred to as 'sandbox') in source control.
                </p>
                <p>
                    Another good reason to check-in regularly is that it makes it easier to merge your
                    changes with other developers. If all developers check-in lots of changes in one
                    go, you will spend a lot of your time resolving conflicts instead of doing work.</p>
                <p>
                    TIP: How can you enforce regular check-ins? Monitor them using a <a href="#CheckinReport">
                        report to see who has not checked in</a>.</p>
            </li>
            <li><a name="EnforceComments" id="EnforceComments"></a>
                <h2>
                    Do you enforce comments with check-ins?<img src="/ssw/Images/Validation/redstar.gif"
                        alt="Red star" width="18" height="14" /></h2>
                <p>
                    Team System is great, but there are some standard features in other source control
                    systems that aren&#8217;t available. One of the glaring omissions is enforcing comments
                    when checking in code. Without comments, some of the other built in features like
                    History become redundant without comments.</p>
                <dl class="badImage">
                    <dt>
                        <img alt="Revision List" src="Images/commentsbad.gif" width="435" height="120" />
                    </dt>
                    <dd>
                        Figure: Bad Example: No Comments against the check-ins we don&#8217;t know what changes were made
                        in each revision</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img alt="Revision List" src="Images/commentsgood.gif" width="590" height="255" />
                    </dt>
                    <dd>
                        Figure: Good Example: Now we can pin point which revision a particular change has been made</dd></dl>
                <p>
                    To enforce this behaviour, you will need to:</p>
                <ol>
                    <li>Install <a href="/ssw/Redirect/TFSPowerToolsDownload.htm" target="_blank">Team Foundation
                        Server Power Tools v1.2</a></li>
                    <li>Right click the <b>Team Project in Team Explorer > Team Project Settings > Source
                        Control</b></li>
                    <dl class="image">
                        <dt>
                            <img alt="Revision List" src="Images/enforce1.gif" width="351" height="224" />
                        </dt>
                    </dl>
                    <li>Select the <b>Check-in Policy</b> tab</li>
                    <li>Click <b>Add</b></li>
                    <li>Select the Changeset Comments Policy</li>
                    <dl class="image">
                        <dt>
                            <img alt="Revision List" src="Images/enforce2.gif" width="404" height="269" />
                        </dt>
                    </dl>
                </ol>
                <p>
                    Now the next time someone checks-in some code, they are forced to enter a comment.</p>
            </li>
            <li><a name="CheckinComment"></a>
                <h2>Do you know how to write good checkin-in comments?</h2>
                <p>Good comments are important because version history can be used to give a brief overview of what’s happening on the project.</p>
                <p>At SSW we use the check-in comments in the following way:</p>
                <ul>
                    <li>As a changelog for a project - <a href="http://www.ssw.com.au/ssw/Version.aspx">www.ssw.com.au/ssw/Version.aspx</a>
                        <dl class="image">
                            <dt>
                                <img alt="Comment example" src="Images/comment-tfs.jpg" />
                            </dt>
                        </dl>
                    </li>
                    <li>As automatic descriptions for our time sheeting application TimePRO.NET
                        <dl class="image">
                            <dt>
                                <img alt="Comment example" src="Images/comment-timepro.jpg" />
                            </dt>
                        </dl>
                    </li>
                </ul>
                <p>A good comment should:</p>
                <ul>
                    <li>Describe the task being worked on (the "What",  not the "Why" or "How")</li>
                    <li>Be understandable by the product owner (not just developers)</li>
                </ul>
                <p>Here are some examples:</p>
                <ul>
                    <li>New P112: Added a new control for DateOfBirth</li>
                    <li>Bug P113: Fixed validation to now allow US dates</li>
                    <li>Refactor: Moved the email regex from inline to a resource file</li>
                </ul>
            </li>

            <li><a name="Conventions"></a>
                <h2>
                    Do you know the best Project/Version conventions?</h2>
                <p>Having a good folder structure in version control allows everyone to know where everything is without even having to look.</p>
                <p>
                    <dl class="code">
                        <pre>
/northwind
	/trunk
	/branches (or shelvesets)
		/experiemental-feature1
	/releases (or tags)
		/1.0.0.356
</pre>
                        <dd>
                            Figure: Bad example, SVN conventions are a dated and ignore releases, hotfixes and Service Packs</dd>
                    </dl>
                </p>
                <p>Trunk is the old way, Main is the new way as per the branching guidance, and it is the way that Microsoft does things.</p>
                   <dl class="goodImage">
                        <dt>
                            <img  src="Images/BranchGuidance.jpg" alt="Main branch guidance " />
                        </dt>
                        <dd>Figure: Good example, this makes a lot more sense</dd>
                    </dl>
                <b>More Information:</b>
                   <dl class="goodImage">
                        <dt>
                            <img  src="Images/GoodFormatForInfo.jpg" alt="Good format for the information" />
                        </dt>
                        <dd>Figure: A good format for all your Products/Projects makes it easy to know where things are and what they are for</dd>
                    </dl>
                   <p>Read the TFS 2010 Branching Guidance &#45; <a href="http://tfsbranchingguideiii.codeplex.com">http://tfsbranchingguideiii.codeplex.com</a></p> 
            </li>
            <li><a name="LabelReleasesInSourceControl"></a>
                <h2>
                    Do you label your versions and releases in Source Control?</h2>
                <p>
                    TFS takes labeling to a new level unlike VSS which was a point in time label. TFS
                    labels each file based on their changeset version. You can then get code as it was
                    when you labeled the source.
                </p>
                <p>
                    Labeling a release is a good way to go back to a version and generate a compiled
                    version. If you wanted to develop an older version then you would create a branch
                    instead (of course you can create a branch off a label)
                </p>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/tfslabel.jpg" width="610" height="413"></dt>
                    <dd>
                        Figure: Get a specific version in TFS based on a label</dd>
                </dl>
            </li>
            <li><a name="VersionNumbers"></a>
                <h2>
                    Do you know how to structure your version numbers?</h2>
                <p>
                    <ul>
                        <li>Major - rarely change - only with major upgrades, new platform - (e.g. office 2007)</li>
                        <li>Minor - new features / release (customer facing) - 3 months</li>
                        <li>Revision - starts at 0, in ideal world, we have 0. Emergency maintenance or security
                            patches to the customer</li>
                        <li>Build - internal build number for QA to differentiate (auto updating)</li>
                    </ul>
                    See <a href="/ssw/Standards/Rules/RulesToBetterCode.aspx">SSW Rules - Rules To Better
                        Code</a>
                </p>
            </li>
            <li>
                <h2>
                    <a name="CheckInAllFiles"></a>Do you check-in all files?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    When working on a task spanning multiple files, do not check-in only one or two
                    of the files, this leads to the problem of partial check-ins where references to
                    new classes or methods are unavailable because they are in the files that haven't
                    been checked in. So either, check-in all the files you are working on or none at
                    all if you aren't finished working on the task.</p>
                <ol>
                    <li>Make Visual Studio remind you to check code in
                        <p>
                            In Microsoft Visual Studio. NET sharing project code can be configured by ticking
                            the two checkboxes on top, in Options (from the Tools menu) as shows below.</p>
                        <dl class="image">
                            <dt>
                                <img src="Images/SourceControlVS.jpg" alt="VS.NET 2008 Source Settings" align="middle"
                                    width="757" height="438" /></dt>
                            <dd>
                                Figure: Check-in files automatically the 2nd checkbox is very important so you get
                                reminded to check-in your project when closing VS.NET. You know how frustrating
                                it is when you want to fix an application and all the files are checked out by some
                                one else!</dd>
                        </dl>
                        <p>
                            <b>What about VB6 applications ?</b><br />
                            In Visual Basic 6 this is done by going through Tools -&gt; Source Safe -&gt; Options
                            and setting it as shown in the diagram below.</p>
                        <dl class="image">
                            <dt>
                                <img src="Images/SourceSafeVB6.gif" alt="Source Safe VB6" align="middle" width="470"
                                    height="222"></dt>
                            <dd>
                                Figure: You can also check-in automatically in VB6
                            </dd>
                        </dl>
                        <p>
                            <b>What about Access applications ?</b><br />
                            We also use VSS for Access projects. Access 2000 had problems with MDBs (not ADPs)
                            but Access 2003 works fine with both. The only thing you have to be careful of is
                            that if a form is not checked out, it still lets you modify the form, but when you
                            close the form, it rolls back to the VSS version and you lose all of your changes.</p>
                        <dl class="image">
                            <dt>
                                <img src="Images/SourceSafeAccessOptions.gif" alt="Source Safe Access" width="482"
                                    height="237" /></dt>
                            <dd>
                                Figure: You can also check-in automatically in Access</dd>
                        </dl>
                        <dl class="image">
                            <dt>
                                <img src="Images/SourceSafeAccessMenu.gif" alt="Source Safe Access Menu" width="464"
                                    height="523" /></dt>
                            <dd>
                                Figure: All the basic functions are easily accessible.</dd>
                        </dl>
                        <p>
                            Note: Using VSS in Microsoft Access has a few limitations, most significant of which
                            is the inability to reattach to VSS projects.&nbsp; Once you have detached from
                            a VSS project, you will need to create a new VSS project in order to place the Access
                            application back into VSS.</p>
                        <b>What about SQL Server Databases?</b><br />
                        We save the scripts of every SQL Server schema change in Source Control. </li>
                </ol>
            </li>
            <li>
                <h2>
                    <a name="SharedCheckOuts"></a>Do you use shared check-outs?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    In conjunction with <a href="#CheckinRegularly">regular check-ins</a>, files in
                    source control should never be locked unless absolutely necessary. Use either 'Unchanged
                    - Keep any existing lock' - or 'None - Allow shared checkout'.</p>
                <p>
                    Only use 'Check Out - Prevent other users from checking out and checking in' when
                    checking out binary files e.g. Word documents or third party compiled dll&#8217;s.
                    (This will be the default this will be the selected option due to the inability
                    for binary files to be merged on check in.)</p>
                <dl class="image">
                    <dt>
                        <img src="Images/Check-outSettingsForFiles.jpg" alt="Check-out settings for files"
                            width="607" height="386" /></dt>
                    <dd>
                        Figure: Correct checkout settings at the file level - don't lock files</dd>
                </dl>
                <p>
                    Do not enforce single check-out at the project level - make sure the 'Enable multiple
                    check-out' option is ticked under Team Project Settings, Source Control.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/Check-outSettingsForTeamProjects.jpg" alt="check-out settings for team project"
                            width="666" height="170" /></dt>
                    <dd>
                        Figure: Correct check-out settings at the team project level - enable multiple check-out's.</dd>
                </dl>
            </li>
            <li><a name="CheckinReport"></a>
                <h2>
                    Do you have a report to see who has not checked in?</h2>
                <p>
                    Managers should regularly check to see if developers are committing their changes
                    into source control. In TFS you can only get a status by manually looking at each
                    project or running "tfs status" command. A great tool is <a href="/SSW/Redirect/Attrice.htm">
                        Attrice Team Foundation SideKicks</a> which can display the status of all users
                    and projects
                    <dl class="image">
                        <dt>
                            <img src="Images/SideKicksStatus.jpg" alt="Source Safe VS.NET" align="middle" width="816"
                                height="601" /></dt>
                        <dd>
                            Figure: Use TFS Sidekicks and search for files older than 48 hours to find the naughty
                            boys.
                        </dd>
                        <dd>
                            Suggestion for TFS Sidekicks: Add a button to &#8220;Email all people their shame
                            list&#8221;&#8230;. showing their files that are still checked out (until then I
                            do it manually)
                        </dd>
                    </dl>
                </p>
            </li>
            <li>
                <h2>
                    <a name="OnlyFilesNeeded"></a>Do you only check out the files that you need?</h2>
                <p>
                    Checking out files that you do not plan to modify could confuse other developers
                    on what is currently being worked on , as well as making it difficult at check-in
                    time to see what files you actually have modified.
                </p>
            </li>
            <li>
                <h2>
                    <a name="SetupSourceStandardLocation"></a>Do you avoid limiting source control to
                    just code?</h2>
                <p>
                    You can spend valuable developer time on every part of a project. The bulk of time
                    is normally spent on coding up .cs, .vb, .resx and .aspx files. However, you could
                    potentially have the following happen if you do not include other files in source
                    control:
                </p>
                <ul>
                    <li>lose work</li><li>lose old versions of work</li><li>have work overwritten</li></ul>
                <p>
                    In particular, you should make it as easy as possible to see who changed what and
                    who deleted what and allow a simple rollback to previous versions of non-code files.
                    Files you should put in source control include:
                </p>
                <ul>
                    <li>XSL files</li><li>Word documents</li><li>Excel Spreadsheets </li>
                    <li>Visio Diagrams</li><li>HTML files</li><li>Image files, Flash animations and psd
                        files &nbsp;(yes this takes room in your source control database - but we still
                        want to be able to revert to an old version easily) </li>
                </ul>
                <p>
                    Things you don't store are:
                </p>
                <ul>
                    <li>Video source files (e.g. *.avi) - Store your videos on a file server instead (e.g. \\fileserver\DataNorthwind\Videos)</li>
                    <li>Installers (e.g. *.msi)</li>
                </ul>
            </li>
            <li><a name="IncludeOriginalArtworks"></a>
                <h2>
                    Do you include original artworks in Source Control?</h2>
                <p>
                    Your original digital artworks are part of your asset and they also need to be managed
                    accordingly. However many organizations fail to realize this and issues starts to
                    arise when you need to roll back your images only to discover that the designer
                    has overwritten the old images or worse, the image was designed spontaneously and
                    the original design was exported to a .jpg or .gif without the original design being
                    saved! Including your original artworks in SourceSafe can be handy in case of hard
                    drive failures or accidental deletions.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/include_artworks_in_source.gif" height="162" width="178" alt="" /></dt>
                    <dd>
                        Figure: Include your original artworks in Source (eg .PSDs in Source Control)</dd>
                </dl>
                <p>
                    We chose to exempt uncompressed video files as they tend to have large footprints
                    and potentially cause delays in productivity. It is highly recommended that you
                    have a separate backup procedure for these files.
                </p>
            </li>
            <li><a name="RollbackChanges" id="RollbackChanges"></a>
                <h2>
                    Do you know how to rollback changes in TFS?</h2>
                <p>
                    Whilst working on a new feature all morning I&#8217;ve realised that this isn&#8217;t
                    going to work out. I need to revert back to what the code was this morning before
                    I touched it. But how?</p>
                <p>
                    There are two ways to do this:</p>
                <ol>
                    <li>If you haven&#8217;t checked in any files since you started modifying them then
                        the process is simple:
                        <ul>
                            <li>Right click your solution and <b>Undo Pending Changes</b></li>
                            <dl class="image">
                                <dt>
                                    <img alt="Undo Pending changes" src="Images/rollback1.gif" width="266" height="307" />
                                </dt>
                            </dl>
                        </ul>
                    </li>
                    <li>If you aren&#8217;t so lucky and have made some commits along the way then the only
                        option is to use the Rollback command.
                        <ul>
                            <li>To use this you will need to install <a href="/ssw/Redirect/TFSPowerToolsDownload.htm"
                                target="_blank">Team Foundation Server Power Tools v1.2</a></li>
                            <li>Find the revision before you started checking code in using the <b>History command</b></li>
                            <dl class="image">
                                <dt>
                                    <img alt="Revision List" src="Images/rollback2.gif" width="595" height="178" />
                                </dt>
                                <dd>
                                    Figure: The last revision before Tristan made changes was 5367</dd></dl>
                            <li>Open the Command Prompt in your current working directory and type <b>&#8220;c:\Program
                                Files\Microsoft Team Foundation Server Power Tools\tfpt.exe&#8221; rollback /changeset:5367</b></li>
                            <dl class="image">
                                <dt>
                                    <img alt="Rollback Changeset" src="Images/rollback3.gif" width="807" height="342" />
                                </dt>
                            </dl>
                            <li>Click <b>Yes</b> and the rollback will proceed</li>
                        </ul>
                    </li>
                </ol>
                <p>
                    It would be nice if there was a GUI for this tool so that I can just right click
                    and select rollback. See <a href="/ssw/Standards/BetterSoftwareSuggestions/TeamFoundationServer.aspx#RollbackGUI">
                        Better Software Suggestion &#8211; TFS</a></p>
            </li>
            <li><a name="TfsExternal"></a>
                <h2>
                    Do you configure your TFS to be accessible from outside the network?</h2>
                <p>
                    It is important to have source control available to you wherever you are, so that
                    means than VPN access is not enough. This is because sometimes when you are working
                    on-site, the client may have strict network policies that block VPN or even port
                    8080 is blocked.</p>
                <p>
                    Tip: You can slove this with TFS Extranet Support:</p>
                <ul>
                    <li>TFS SP1<br />
                        This feature called "Extranet Support" was added way back in TFS 2005 SP1 as per
                        <a href="/ssw/Redirect/StandardsRules/MSDNBlog.htm" class="external" target="_blank">Stuff in the pipe
                            for Team Foundation Server</a> </li>
                    <li>A domain name or IP address forwarded to TFS (eg: tfs.your-domain.com)</li>
                    <li>Port 8080 (this is port that TFS uses for source control)</li>
                    <li>Firewall/Router rule (ideally)</li>
                </ul>
                <p>
                    Yes Port 8080 will work in most cases but not on the strictest networks, where only
                    Port 80 is allowed.
                    <br />
                    Then you have to use port forwarding via a firewall/router rule (recommended) to
                    forward port 80 to the TFS port, while in this way, you would lose the TFS SharePoint
                    Portal and Reporting Services.
                </p>
                <dl class="image">
                    <dt>
                        <img alt="Rule to forward port 80 to the TFS port" src="Images/tfs-firewall-rule-80.gif"
                            width="681" height="339" />
                    </dt>
                    <dd>
                        Figure: Rule to forward port 80 to the TFS port</dd>
                </dl>
                <asp:Panel CssClass="interInfoBoxSide" Style="width: 50%;" ID="pnlInfo" runat="server">
                    <h1>
                        Attention: SSW Developers</h1>
                    <br />
                    If you are inside SSW Network, you can set you Visual Studio to connect TFS via http://unicorn:8080/.<br /><br />
                    When you are outside the network, you can connect to http://tfs.internal.ssw.com.au:8080/.
                </asp:Panel>
            </li>
             <li><a name="ConfigureTFSWA"></a>
                <h2>
                    Do you configure your Team System Web Access to be accessible from outside the network?
                </h2>
                <p>If you have <a href="/SSW/Redirect/Microsoft/TSWA.htm">Team System Web Access</a> installed and you need to access it from wherever you are, you can configure a port to be forwarded to the server where Team System Web Access is installed, eg: tfs.your-domain.com:8090.</p> 
       
                <dl class="image">
                    <dt>
                        <img alt="Visual Studio Team System Web Access Power Tool" src="Images/TSWA.gif"
                            width="730" height="364" />
                    </dt>
                    <dd>
                        Figure: Visual Studio Team System Web Access Power Tool</dd>
                </dl>
            </li>          
            
            <li><a name="Template"></a>
                <h2>Do you use SSW Agile Template for SSW project?</h2>
                <p>
                    We have developed a customized TFS team project template which includes customized reports like SSW Release Plan Report and SSW Project Progress Report.
                    You can get SSW Agile Template from here <a href="/ssw/Download/ProdBasket.aspx?ID=AT">SSW for Agile Development Template</a>
                </p>
                <p>
                    Follow the documents in the download package to create new team project or upgrade from existing team project in TFS.
                </p>
            </li>
            <li>
                <h2>
                    <a name="UseWE"></a>Do you use the Windows Explorer Integration
                </h2>
                <ol>
                    <li>Install the TFS Power Tools
                    </li>
                    <li>When you install this, make sure you do a 'Custom Install', and select the 'Shell Integration' option (this is off by default)</li>
                </ol>
                <dl class="image">
                    <dt>
                        <img alt="Use Windows Explorer" src="Images/TFS_WE_01.jpg" />
                    </dt>
                    <dd>
                        Figure: Using Windows Explorer for your source control is a dream (great for designers too - who don't want to use VS.NET)</dd>
                </dl>
                <p>
                    Suggestion to the TFS Team: I didn't see blame annotate in the drop down - which is a bit odd.
                    </p>
                    <p>

More reading from the prolific Brian Harry:<br />
<a href="http://blogs.msdn.com/bharry/archive/2008/11/08/oct-08-tfs-power-tools-are-available.aspx">http://blogs.msdn.com/bharry/archive/2008/11/08/oct-08-tfs-power-tools-are-available.aspx</a><br />
<a href="http://blogs.msdn.com/bharry/archive/2008/10/01/preview-of-the-next-tfs-power-tools-release.aspx">http://blogs.msdn.com/bharry/archive/2008/10/01/preview-of-the-next-tfs-power-tools-release.aspx</a> 

                </p>
            </li>
            <li><h2><a name="KeepingVSS"></a>Why are we still keeping VSS?</h2>
<p>
Because we still have some projects left over in VSS, they cannot be upgraded to .NET 2.0 and checked in to TFS.<br/>
<table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Projects in VSS" style="width:60%;">
				<tr>
					<th>Project</th>
					<th>Note</th>
				</tr>
				<tr>
					<td>SSWFramework</td>
					<td>For 1.1 apps and fix criticle bugs(if needed)</td>
				</tr>
				<tr>
					<td>SSWFrameworkSamples</td>
					<td>Framework samples</td>
				</tr>
				<tr>
					<td>SSWRegistration</td>
					<td>For 1.1 apps and fix criticle bugs(if needed)</td>
				</tr>
				<tr>
					<td><span class="highlight">SSWSQLTotalCompare</span></td>
					<td><span class="highlight">VB6</span></td>
				</tr>
				<tr>
					<td><span class="highlight">SSWTeamCalendar</span></td>
					<td><span class="highlight">Asp (will be upgraded to asp.net soon)</span></td>
				</tr>
			</table>
So, when you are working on SSWSQLTotalCompare and SSWTeamCalendar, you should still use old VSS database. These two projects are referencing SSWFramework and SSWRegistration, so they are kept as well; but only for critical bug fixing. <br/>
Also, if there is any client work (1.1 version) referencing these projects, you should still use these VSS versions. At the same time, keep in mind that we have already upgraded to TFS and you should try your best to convince the client to upgrade. 
</p>
</li>
<li>
<h2><a name="KeepingHistoryInVSS"></a>Do you need to migrate the history from VSS to TFS?</h2>
<p>
Suppose you are migrating from VSS to TFS, you need to consider if it's necessary to also migrate the history.</p>
<p>
We suggest that you don't migrate the history, because:<br/>
<ul>
<li>Normally, you don't need to check the history very often. If you do need sometimes, then get it from VSS.</li>
<li>Save much space for TFS. For example, we have a about 7G VSS history database, and we may only need a small bit of them every 3 months, so what's the point of coping about 7G file when we only need one line of code?</li>
</ul></p>
<p>
But there are also some considerations that you may want to migrate the history:<br/>
<ul>
<li>If the history of source changes will be checked very often, so you can check the old history with the recent together via TFS.</li>
<li>You are going to decommission the old VSS completely. Say you don't want to keep the old VSS database, and then it will be necessary to keep the information somewhere.</li>
<li>If the project is very active, then it will be worthy to migrate the history because your developers may need them every day.</li>
</ul></p>
<p>
If you are going to move the history, the links may help:<br/>
<ul>
<li><a href="/ssw/redirect/msdn/MigratingToTFS.htm">http://msdn2.microsoft.com/en-us/library/ms181247.aspx</a></li>
<li><a href="/ssw/redirect/MigratingToTFS.htm">http://blogs.msdn.com/buckh/archive/2004/06/10/152609.aspx</a></li>
<li><a href="/ssw/redirect/MigratingToTFS2.htm">http://blogger.xs4all.nl/tty1/archive/2006/04/09/85962.aspx</a></li>
</ul></p></li>

<li>
    <a name="CheckInPolicy"></a>
    <h2>Do you know which check-in policies to enable?</h2>
    <p>
        Check-in policies are a great tool to enforce quality code before it hits your source control repository. SSW recommends that the following check-in policies be enabled by default on your project:
    </p>
    <ol>
        <li>Changeset Comments Policy - To enforce that all check-in contain comments</li>
        <li>SSW Code Auditor - To enforce coding standards and best practices before check-in</li>
        <li>Testing Policy - To enforce that unit tests should all pass before code can be checked-in</li>
    </ol>
    <p>
        To enable these policies:
    </p>
    <ol>
        <li>Right click the <strong>Team Project in Team Explorer > Team Project Settings > Source Control</strong></li>
        <li>Select the check-in policies above</li>
        <li>Click <strong>OK</strong></li>
    </ol>
    <dl class="image">
        <dt>
            <img alt="Chose check in policy" src="Images/SC_TFSCI.jpg" />
        </dt>
        <dd>
            Figure: Chose check-in policies in TFS</dd>
    </dl>
</li>
        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DDK">David Klein</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TKK">Tristan Kurniawan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=RT">Ryan Tee</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JK">Justin King</a><br />
    </p>
</asp:Content>
