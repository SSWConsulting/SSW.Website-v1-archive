<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Interfaces - Windows Applications" Buffer="true" %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230496E7465726661636573')"> Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <h3>Rules To Better Interfaces - Windows Applications</h3>
        <ol>
            <li><a href="#TitleBarCaption">Title Bar - Do you put the current document/project name as the first word of your title bar?</a></li>
            <li><a href="#CompanyURL">Title Bar - Do you put your company URL in the title bar?</a></li>
            <li><a href="#StandardHelpAboutForm">Menu - Do you have a standard &quot;Help | About&quot; form?</a></li>
            <li><a href="#HelpMenu">Menu - Do you know the 8 items every "Help" menu needs?</a></li>
            <li><a href="#TrainingVideos">Menu - Do you have a "Help | Training Videos" item?</a></li>
            <li><a href="#linktoUserGuide">Menu - Do you have your "Help | User Guide" online?</a></li>
            <li><a href="#ValidateData">Menu - Do you include a "Tools | Validate Data"?</a></li>
            <li><a href="#MenuIcon">Menu - Do you use icons in menu?</a></li>
            <li><a href="#SoundsAreImportant">Sound - Do you realize the importance of sounds to User Interface?</a></li>
            <li><a href="#beepmsg">Sound - Did you know that a message box automatically plays a beep?</a></li>
            <li><a href="#LongProcessFriendly">Long Process - Do you know how to make long-running processes user-friendly?</a></li>
            <li><a href="#ProgressStatus">Long Process - Do you show the status of progress bar on winform's title?</a></li>
            <li><a href="#LongProcessSkip">Long Process - Do you know that long-running processes should allow to 'Skip' the processing (when appropriate)?</a></li>
            <li><a href="#Cancel-long-process">Long Process - Do you use the word 'Cancel' (instead of 'Stop') to halt processes?</a></li>
            <li><a href="#LongProcessBar">Long Process - Do you know that you should show a progress bar and allow users to cancel?</a></li>
            <li><a href="#LongProcessImage">Very Long Process - Do you know that long-running processes should show a coffee cup?</a></li>
            <li><a href="#LongProcessHideBar">Long Process - Do you know that you should provide a detailed summary, play a sound and hide the progress bar at the end?</a></li>
            <li><a href="#SampleDatabase">Sample - Do you supply a sample database?</a></li>
            <li><a href="#DBNamingConventions">Sample - Do your sample databases have good Naming Conventions?</a></li>
            <li><a href="#CreateDatabase">Sample - Do you avoid dropping a user's database when you attempt to create a database?</a></li>
<%--            <li><a href="#Affordances">Affordances - Do you intuitively know how to use something?</a></li>
            <li><a href="#ClearlyShowPassFailWarning">Affordances - Do you clearly show a pass, fail or warning?</a></li>
            <li><a href="#statusIcon">Affordances - Do you use green tick, red cross and spinning icon to show the status?</a></li>
            <li><a href="#InstictiveComplex">Affordances - Do you avoid complex mapping?</a></li>
            <li><a href="#NoOkbutton">Do you avoid 'OK' button when the action is clear? </a></li>--%>
            <li><a href="#ExitWarning">Do you provide a warning before a program exits?</a></li>
<%--            <li><a href="#DataJunk">Do you avoid &quot;Data Junk&quot; (data not manually entered by yourself)?</a></li>
            <li><a href="#StrikeThroughCompletedItems">Do you strike-through completed items?</a></li>
            <li><a href="#Taskbar">Text - Do you use "Taskbar" instead of "Task bar"?</a></li>
            <li><a href="#TryAgain">Text - Do you use "Try Again" instead of "Retry"?</a></li>
            

--%>            
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="TitleBarCaption"></a>Title Bar - Do you put the current document/project name as the first word of your title bar?</h2>
                <p>Too many developers never change the Title Bar. The Title Bar should reflect the current document in the same way that Microsoft Word, Notepad, etc do.</p>
                <p>Imagine if every email that Microsoft Outlook opened didn't change the title bar. When you were to open a few emails and then take a look in the Taskbar, they would all look the same.</p>
                <p>Therefore change the Title Bar to have the current document/customer/job/project/product name that the user is working on. It should be in the format &quot;Document - Program  Name&quot;, i.e. 'Northwind - SSW Data Renovator'</p>
                <dl class="goodImage">
                    <dt><img src="Images/imgTitleBarCaption.gif" alt="Title Bar Caption" /></dt>
                    <dd>Figure: Good Example - Application with a standard title bar caption</dd>
                </dl>
            </li>

            <li>
                <h2><a name="CompanyURL"></a>Title Bar - Do you put your company URL in the title bar?</h2>
                <p>When advertising and promoting your application using screenshots, you will want to have the URL for your company website displayed. This makes for good, free publicity.</p>
                <p>If you want the URL to be shown as often as possible, you can place it in the title-bar of your form. That way, your URL will be visible in all screenshots that show the title-bar.</p>
                <dl class="goodImage">
                    <dt><img src="Images/TitleBarURL.gif" alt="Title Bar URL" /></dt>
                    <dd>Figure: Good Example - The company URL appearing in SSW SQL Auditor</dd>
                </dl>
                <p>Note: Make sure the URL won't take other important information's place.</p>
                <p>Note 2: Through certain coding tricks, it is possible to have the URL on the title-bar right aligned. This isn't a good idea, however, as it can produce undesirable results under certain conditions. For example, when the user hovers the mouse pointer over the form's button on the taskbar, the resulting tool tip looks somewhat distorted.</p>
                <dl class="badImage">
                    <dt><img src="Images/UglyTooltipEffect.gif" alt="Ugly Tooltip Effect" /></dt>
                    <dd>Figure: Bad Example - Bad caption in SSW SQL Deploy</dd>
                </dl>
            </li>

            <li>
                <h2><a name="StandardHelpAboutForm"></a>Menu - Do you have a standard "Help | About" form?</h2>
                <p>Every application you build should have the same "Help | About" form. The form should always display the following information:</p>
                <ol>
                    <li>Version number</li>
                    <li>URL</li>
                    <li>Description of the product and what it does.<br />
                        Tip: This should be consistent with your standard description on the product box, website homepage, product page etc.
                    </li>
                    <li>Contact details (especially a phone number)</li>
                    <li>Branding (logo)</li>
                </ol>
                <dl class="badImage">
                    <dt><img src="Images/BadHelpAboutForm.jpg" alt="SSW Time PRO.NET About Form" width="335" height="126" /></dt>
                    <dd>Figure: Bad Example - This "About" dialog does not provide enough information about the product and/or company</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/SSWHelpAbout.gif" alt="SSW Code Auditor - Help About" width="600" height="375" /></dt>
                    <dd>Figure: This "Help | About" form contains all 5 elements, but has room for aesthetic improvements (old SSW design)</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/Rego9.png" alt="SSW Help About" border="1" width="600" height="504" /></dt>
                    <dd>Figure: Good Example - This "Help | About" has the 5 elements presented better,</dd>
                </dl>
            </li>
            <li>
                <h2><a name="HelpMenu"></a>Menu - Do you know the 8 items every "Help" menu needs?</h2>
                <p>A good help menu should have these 8 items in it:</p>
                <ol>
                    <li>Training Videos</li>
                    <li>Online User Guide</li>
                    <li>Knowledge Base</li>
                    <li>Make a Suggestion</li>
                    <li>Report a Bug</li>
                    <li>Check for Updates - [Product Name]
                    <ul>
                        <li>Check for Updates - All Programs</li>
                    </ul>
                    </li>
                    <li>Run Unit Tests...</li>
                    <li>About [Product Name]...</li>
                </ol>
                <dl class="badImage">
                    <dt><img src="Images/BadExampleForHelpMenu.gif" alt="Bad example of help menu" /></dt>
                    <dd>Figure: Bad Example - Example of a Help menu with only "About"</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/GoodExampleOfHelpMenu.gif" alt="Good example of help menu" /></dt>
                    <dd>Figure: Good Example - Example of a Help menu with all 8 items</dd>
                </dl>
                <p class="productBox">You can see an example in <a href="/ssw/NETToolkit/">SSW.NET Toolkit</a>.</p>
            </li>
            <li>
                <h2><a name="TrainingVideos"></a>Menu - Do you have a "Help | Training Videos" item?</h2>
                <p>Training Videos provide a straightforward way to help the user look into your product and help them have a good understanding. It's better to have a "Training Videos" item in the help menu.</p>
                <dl class="goodImage">
                    <dt><img src="Images/TrainingVideos.jpg" alt="Training Videos menu item" /></dt>
                    <dd>Figure: It's better to provide such a "Training Videos..." menu item</dd>
                </dl>
                <p>See our suggestion to Visual Studio to <a href="../BetterSoftwareSuggestions/VisualStudio.aspx#TrainingVideos">provide "Training Videos" menu item in the help menu</a>.</p>
            </li>
            <li>
                <h2><a name="linktoUserGuide"></a>Menu - Do you have your "Help | User Guide" online?</h2>
                <p>Users who are finding your application a little hard to use will always look for a user guide. The first thing they would do is to reach for the help menu. The "About" button can provide a link to the product website, but this is not very handy and obvious for a user who needs quick help. A link to the user guide must be in the "Help" menu.</p>
                <p>There are benefits of having your user guide online:</p>
                <ol>
                <li>Easier to keep up-to-date and maintain</li>
                <li>Stats on usage</li>
                <li>Allows community commenting</li>
                </ol>
                <dl class="goodImage">
                    <dt><img src="Images/RulesT3.gif" alt="Help User Guide" width="300" height="182" /></dt>
                    <dd>Figure: Good Example - "User Guide" link in the "Help" menu</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/TelerikUserGuide.png" alt="Online User Guide" /></dt>
                    <dd>Figure: Good Example - Telerik keeps their "User Guide" online</dd>
                </dl>
            </li>
            <li>
                <h2><a name="ValidateData"></a>Menu - Do you include a "Tools | Validate Data"?</h2>
                <p>A common oversight is applications don't check for invalid data. You should add "Tools | Validate Data" to your application.</p>
                <p>So when you add business rules to the middle tier, consider scenarios such as importing data and any other areas that side step business rules. Therefore we always make validate queries that if they return records, they must be fixed. Examples are:</p>
                <ul>
                    <li>For SQL Server we use <strong>vwValidateClient_MustHaveACategoryID</strong>, or <strong>procValidateClient_MustHaveACategoryID</strong></li>
                    <li>For Access we use <strong>qryValidateClient_MustHaveACategoryID</strong></li>
                </ul>
                 <dl class="goodImage">
                    <dt><img src="Images/TimeProValidateData.png" alt="Data Validation" /></dt>
                    <dd>Figure: Good Example - This application, while not the prettiest, has a handy validation tool to check for incorrect data</dd>
                </dl>
                <h1>Related Links</h1>
                <p><a href="http://rules.ssw.com.au/SoftwareDevelopment/RulesToBetterSQLServerSchemaDeployment/Pages/DoYouCheckYourDenormalizedFieldIsStillThereWithprocValidate.aspx">Do you validate each "Denormalized Field" with procValidate?</a></p>
            </li>
            <li>
                <a name="MenuIcon"></a><h2>Menu - Do you use icons in menu?</h2>
                <p>Plain menu items make your application look normal and less expressive.</p>
                <dl class="badImage">
                    <dt><img " src="Images/BetterUI_PlainMenu.gif" alt="Plain Menu" /></dt>
                    <dd>Figure: Bad Example - Plain menu</dd>
                </dl>
                <p>While icons can make your application look good.</p>
                <dl class="goodImage">
                    <dt><img src="Images/BetterUI_MenuStrip.gif" alt="menu with icons" /></dt>
                    <dd>Figure: Good Example - Menu with icons</dd>
                </dl>
                <h1>More information</h1>
                <p>You can use the MenuStrip control in .Net</p>
                <dl class="image">
                    <dt><img border="0" src="Images/BetterUI_MenuStrip_DesignView.gif" alt="menu item properties" /></dt>
                    <dd>Figure: the Menuitem has a simple image property</dd>
                </dl>
            </li>
            <li>
                <h2><a name="SoundsAreImportant"></a>Sound - Do you realize the importance of sounds to User Interface?</h2>
                <p>Sounds are important to an interface. Sounds provide an extra level of feedback to the user. For example, in Outlook, you can enable sounds, which notify the user when text is copied or pasted, or mail items are received, moved or deleted. Important situations where sounds should be used include:</p>
                <p>Out of the box, you'll get a sound with error messages. You'll still need to add your own for:</p>
                <ul>
                    <li>Long process - there should be a sound at the end of every long process to notify the user that it has finished <a href="Sounds/sswLongProcessFinished01_ChatWhsp.wav"><img src="Images/Sound.gif" alt="" border="0" width="15" height="16" /></a></li>
                    <li>Deleting records</li>
                    <li><a href="Sounds/SSWApplicationOpened_dooropen.wav">Application opening</a> <a href="Sounds/SSWApplicationOpened_dooropen.wav"><img src="Images/Sound.gif" alt="" border="0" width="15" height="16" /></a> / <a href="Sounds/SSWApplicationClosed_doorslam.wav">closing</a> <a href="Sounds/SSWApplicationClosed_doorslam.wav"><img src="Images/Sound.gif" alt="" border="0" width="15" height="16" /></a></li>
                    <li>Copying and pasting text</li>
                </ul>
                <p>However, not everyone likes sounds, so we think it is also important to have an option to disable sounds in your application.</p>
                <dl class="goodImage">
                    <dt><img border="0" src="Images/OutlookSounds.gif" alt="Outlook Sounds" width="208" height="114" /></dt>
                    <dd>Figure: Good Example - Turning on Feedback with sound in Outlook</dd>
                </dl>
            </li>

            <li>
                <h2><a name="beepmsg"></a>Sound - Did you know that a message box automatically plays a beep?</h2>
                <dl class="goodImage">
                    <dt><img border="0" src="Images/Win7SoundError.png" alt="Windows plays sounds for message boxes" /></dt>
                    <dd>Figure: Good Example - Windows message boxes plays a sound... which cannot be captured in screenshot form.</dd>
                </dl>
                <p>A message box automatically provides this functionality so there is no need to manually put a beep right before a message box pops up.</p>
                <dl class="badCode">
                    <dt><pre>
        Dim Message As String = &quot;You did not enter a server name. Cancel this operation?&quot;
        Dim Caption As String = &quot;No Server Name Specified&quot;
        Dim Buttons As Integer = MessageBoxButtons.YesNo
        Beep()
        result = MessageBox.Show( Me, Message, Caption, Buttons)
                    </pre></dt>
                    <dd>Figure: Bad example - The sound on the button is hardcoded in this code snippet</dd></dl>
                <dl class="goodCode">
                    <dt><pre>
        Dim Message As String = &quot;You did not enter a server name. Cancel this operation?&quot;
        Dim Caption As String = &quot;No Server Name Specified&quot;
        Dim Buttons As Integer = MessageBoxButtons.YesNo
        result = MessageBox.Show( Me, Message, Caption, Buttons)
                    </pre></dt>
                    <dd>Figure: The code is not present in this example as it is automatically done</dd></dl>
            </li>

            <li>
                <h2><a name="LongProcessFriendly"></a>Long Process - Do you know how to make long-running processes user-friendly?</h2>
                <p>Some processes might take a long time to be completed and this can fustrate the user. The best way to avoid this fustration is giving information and options.</p>
                <dl class="badImage">
                    <dt><img src="Images/ifaceLongProcess_bad.JPG" alt=" Bad example of Progress bar" /></dt>
                    <dd>Figure: Bad example &#8211; this progress bar looks like it is stuck at 99%. Ideally the progress bar should be hidden when completed and replaced by a green tick</dd>
                </dl>
            </li>

            <li>
                <h2><a name="ProgressStatus"></a>Long Process - Do you show the status of progress bar on winform's title?</h2>
                <p>The importance of having the status of progress bar on winform's title:</p>
                <ul>
                    <li>Users can clearly see the progress status.</li>
                    <li>If the winform is minimized to taskbar, users still can see the progress status.</li>
                </ul>
                <p>The form title should take the form of &quot;[XX]% Completed - [Task Description] - [Product Name]&quot;.<br />
                    There is another relevant rule about the <a href="#TitleBarCaption">winform title</a>.</p>
                <dl class="badImage">
                    <dt><img src="Images/BadProgressForm.gif" width="390" height="192" alt="Winform's title without progress status" /></dt>
                    <dd>Figure: Bad Example - The winform's title does not contain the progress status</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/GoodProgressForm.gif" width="550" height="459" alt="Winform's title with progress status" /></dt>
                    <dd>Figure: Good Example - The winform's title contains the status of progress bar</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/GoodProgressFormTaskbar.gif" width="466" height="30" alt="Winform's title with progress status (Taskbar)" /></dt>
                    <dd>Figure: Good Example - You can clearly see the progress status from taskbar when you have the windows minimized</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/TaskBarProgress.png" alt="Winform's title with progress status (Taskbar)" /></dt>
                    <dd>Figure: Good Example - Windows 7 shows the progress in the taskbar (which is visible even when the application is minimized)</dd>
                </dl>
            </li>
            <li>
                <h2><a name="LongProcessSkip"></a>Long Process - Do you know that long-running processes should allow to 'Skip' the processing (when appropriate)?</h2>
                <p><strong>Give users the chance to skip a lengthy process.</strong></p>
                <p>When your wizard has a lot of processing, do you allow the user to skip that processing when appropriate? It may be that the user simply wants to see the results of the  last time the wizard was used, or is interested in seeing what comes after the processing step before deciding to run the process.</p>
                <dl class="goodImage">
                    <dt><img src="Images/SkipLongProcess.gif" alt="Skip Long Process" width="348" height="132" /></dt>
                    <dd>Figure: Good Example - Here the user can skip a long process and see the last results (from SSW Diagnostics)</dd>
                </dl>
            </li>

             <li>
                <h2><a name="Cancel-long-process"></a>Long Process - Do you use the word 'Cancel' (instead of 'Stop') to halt processes?</h2>
                <p>When stopping processes, you should use 'Cancel'... Not 'Stop'. The meaning of 'Cancel' is clearer to users, as opposed to 'Stop' which might also mean 'Pause'.</p>
                <dl class="badImage">
                    <dt><img src="Images/cancel-long-process-bad.jpg" alt="Bad Image for Cancel" /></dt>
                    <dd>Figure: Bad Example - Stop is an ambiguous term and can be momentarily confusing</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/cancel-long-process-good.jpg" alt="Good Image for Cancel" /></dt>
                    <dd>Figure: Good Example - Cancel leaves little room for miscommunication</dd>
                </dl> 
            </li>

            <li>
                <h2><a name="LongProcessBar"></a>Long Process - Do you know that you should show a progress bar and allow users to cancel?</h2>
                <p>The <strong>last</strong> thing a user wants is to be stuck waiting around for a long-running process to finish that they accidentally started in the first place. This heightens frustration with the application because:</p>
                <ul>
                    <li>They do not know how long the process will last (adds uncertainty to the user experience)</li>
                    <li>They cannot stop the process (creates lack of control in the user experience)</li>
                </ul>
                <p>Instead, keep users happy with your application by:</p>
                <ul>
                    <li>Showing status description information above the progress bar</li>
                    <li>Allowing the user to stop the process at any time by clicking &quot;Cancel&quot; (or as a minimum, prompt for confirmation before the long running process starts)</li>
                </ul>
                <dl class="goodImage">
                    <dt><img width="390" height="192" alt="Progress form with Description &amp; Cancel Button" src="Images/AllowCancelAndShowProgressForLongRunningProcesses.gif" /></dt>
                    <dd>Figure: Good Example - Progress Bar with description and Cancel Button</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/AllowCancelAndShowProgressForLongRunningProcesses2.jpg" alt="Progress form with description and status&amp; Cancel Button" width="578" height="346" /></dt>
                    <dd>Figure: Good Example - Progress Bar with description and status, and Cancel Button</dd>
                </dl>
                <p class="productBox">We have a product called <a href="/ssw/NETToolKit/">SSW .NET Toolkit</a> which includes these controls. <a href="/ssw/NETToolKit/08ProgressbarsStatusforms.aspx">SSW .NET Toolkit - Using Progress bars/Status forms.</a></p>
                
            </li>
            <li>
                <h2><a name="LongProcessImage"></a>Very Long Process - Do you know that long-running processes should show a coffee cup?</h2>
                <p>If you are unable to show a progress bar, you should still indicate that it may take be a long process. For example, if installation takes more than 5 minutes, let your users know so they can get on with something else:</p>
                <dl class="badImage">
                    <dt><img src="Images/UnknownLengthTime.jpg" alt="An unknown length of time " /></dt>
                    <dd>Figure: Bad example - An unknown length of time. So let them know</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/CoffeeCup.jpg" alt="The coffee cup tells the user that they will be here a while" /></dt>
                    <dd>Figure: Good example &#8211; The coffee cup tells the user that they will be here a while</dd>
                </dl>
            </li>
            <li>
                <h2><a id="LongProcessHideBar"></a>Long Process - Do you know that you should provide a detailed summary, play a sound and hide the progress bar at the end?</h2>
                <p>Whenever a long process is churning away (e.g. about 10 seconds) users will usually do something else, either make a coffee or switch to another window.</p>
                <p>Your application should remind the user to go back and check on it by:</p>
                <ul>
                    <li>Playing a sound</li>
                    <li>Hiding the progress bar</li>
                    <li>Showing a message box at the end of the long process</li>
                </ul>
                <p>See rule on <a href="RulestoBetterInterfaces-Windows-Applications.aspx#LongProcessFriendly">Do you know how to make long-running processes user-friendly?</a></p>
                <p>When using Message Box to indicate user a process is done, always includes detailed summary of the process. Don't just say &quot;Process completed.&quot;</p>
                <dl class="badImage">
                    <dt>
                    <p class="greyBox" style="width:40%">
                        Process completed.
                    </p>
                    </dt>
                    <dd>Figure: Bad example &#8211; No detailed information</dd>
                </dl>
                <p>This is just like standing at a set of traffic lights listening for the beep to know when to walk, rather than constantly looking at the red and green lights.</p>
                <dl class="goodImage">
                    <dt><img src="Images/ProgressBarComplete.gif" alt="Completed Progress Form" /></dt>
                    <dd>Figure: OK Example - A completed progress form</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                    <p class="greyBox" style="width:40%">
                        Manual extraction process completed.<br /><br />
                        Mailboxes scanned: 8<br />
                        Mailboxes skipped: 2<br />
                        Total mailboxes: 10<br />
                        Time Taken: 10 minutes, 15 seconds
                    </p>
                    </dt>
                    <dd>Figure: Good example &#8211; The user can see what has been processed</dd>
                </dl>
            </li>

            <li>
                <h2><a name="SampleDatabase"></a>Sample - Do you supply a sample database?</h2>
                <p>If you are shipping a product that makes use of a database backend, then you should also supply and option to automatically populate the database with some sample database. This is particularly important if you are offering your software as a trial license and need to have data in the database to show off your application's ground breaking functionality.</p>
                <p>Tip: you can script your data in a sample database to a .sql file with a lot of INSERT statements and then use a product such as <a href="/ssw/SQLDeploy">SSW SQL Deploy</a> to manage the safe execution of your .sql file.</p>
            </li>

            <li>
                <h2><a name="DBNamingConventions"></a>Sample - Do your sample databases have good Naming Conventions?</h2>
                <p>You should prefix your sample databases with your company and products. This is so your users can tell easily at a glance what it is for. Sample databases should be named in the following way:</p>
                <ul>
                    <li>SSWSQLAuditorNorthwindSample</li>
                    <li>SSWSQLTotalCompareNorthwindSamplePub</li>
                    <li>SSWSQLTotalCompareNorthwindSampleSub</li>
                </ul>
                <p>Sample Access database are named similarly:</p>
                <ul>
                    <li>SSWLookOutNorthwindSample2000.mdb</li>
                </ul>
            </li>

            <li>
                <h2><a name="CreateDatabase"></a>Sample - Do you avoid dropping a user's database when you attempt to create a database?</h2>
                <p>If you have an SQL script that runs as part of your install you should always make sure that it does not drop the database first. When you typically auto-generate a script file from some of the SQL applications (such as Enterprise Manager) it will automatically attempt to drop a database if it already exists. This is bad practice as a company may already have a large investment in the data already in the database and dropping it may cause them to lose this investment.</p>
                <p>If you know which machine the database is going to be installed from within your application you should first check that it doesn't already exist and prompt the user accordingly to let them know that they should first manually delete the database. For example the install of the SQL Reporting Services setup handles this problem in an appropriate and simple manner (although some additional help could be provided).</p>
                <dl class="goodImage">
                    <dt><img src="Images/InterfacesDBAlreadyExists.gif" alt="Reporting Services Setup - Database Already Exists" width="600" height="97" /></dt>
                    <dd>Good example &#8211; an application should never automatically delete a database, not even a sample database</dd>
                </dl>
                <p>If you cannot be sure of the machine that the database is going to be installed on then you should make use of third party .sql script execution managers such as <a href="/ssw/SQLDeploy">SSW SQL Deploy</a> to ensure that when you attempt creation of databases where the database already exists then things will run smoothly.</p>
            </li>

            <li>
                <h2><a name="ExitWarning"></a>Do you provide a warning before the program exits?</h2>
                <p>A product should not close without providing a warning. We use the following message box to warn the user before closing a program:</p>
                <dl class="goodImage">
                    <dt><img src="Images/CloseWarning.gif" alt="SSW Exchange Reporter - Are you sure you want to exit?" /></dt>
                    <dd>Figure: Good Example - Standard warning before a program exits</dd>
                </dl>
                <dl class="code">
                    <dt>
                        <pre>
        private void OnExit(object sender) 
             { 
                EventHandler handler = ExitRequest; 
                if (handler!= null ) 
                { 
                   handler(sender, EventArgs.Empty);
                   return;
                } 
                string closeTitle = string.Format(&quot;Exiting{0}&quot;, Application.ProductName);
                string closeMessage = string.Format(&quot;Are you sure you want to exit {0}&quot;, Application.ProductName);
                DialogResult result = MessageBox.Show(closeMessage,closeTitle, MessageBoxButtons.YesNo,MessageBoxIcon.Warning);
                if (result == DialogResult.Yes)
                { 
                   Application.Exit();
                } 
             }
                        </pre>
                    </dt>
                </dl>
                <p class="productBox">We have an example of this in the <a href="/ssw/NETToolkit/">SSW .NET Toolkit</a>.</p>
            </li>

        </ol>

        <h2>Related Rules</h2>
            <p>Read the specific rules below:</p>
            <ul>
            	<li><a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx">Rules to Better Interfaces - General</a></li>
                <li>Rules to Better Interfaces - Windows Application</li>
                <li><a href="/ssw/Standards/Rules/RulesToBetterInterfaces-Popups-and-Messages.aspx">Rules to Better Interfaces - Popups and Messages</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Controls.aspx">Rules to Better Interfaces - Controls</a></li>	
                <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Forms.aspx">Rules to Better Interfaces - Forms</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Wizard.aspx">Rules to Better Interfaces - Wizards</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Reports.aspx">Rules to Better Interfaces - Reports, Charts and Dates</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Mobile.aspx">Rules to Better Interfaces - Mobile UI</a></li>
            </ul>

        <h2>
            Links</h2>
        <ul>
            <li><a href="/ssw/Redirect/AskTog.htm" target="_blank">http://www.asktog.com/basics/firstPrinciples.html</a>
            </li>
            <li><a href="/ssw/Redirect/Microsoft/MSDNMessageBoxes.htm" target="_blank">http://msdn.microsoft.com/library/Default.asp?url=/library/en-us/dnwue/html/ch09f.asp</a>
            </li>
        </ul>
        <h2>
            Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        </p>
    </div>
</asp:Content>
