<%@ Page Language="c#" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Interfaces" Buffer="true" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<script runat="server">
  protected override void OnLoad(EventArgs e)
  {      
      Response.StatusCode = 301;
      Response.AddHeader("Location", "/ssw/Standards/Rules/RulestoBetterInterfaces-Windows-Applications.aspx");
  }
</script>

    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230496E7465726661636573')"> Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <h3>Rules To Better Interfaces - Windows Applications</h3>
        <ol>
            <li><a href="#TitleBarCaption">Title Bar - Do you put the current document/project name as the first word of your title bar?</a></li>
            <li><a href="#CompanyURL">Title Bar - Do you put your company URL in the title bar?</a></li>
            <li><a href="#StandardHelpAboutForm">Menu - Do you have a standard &quot;Help About&quot; form?</a></li>
            <li><a href="#linktoUserGuide">Menu - Do you have a link to your application's user guide?</a></li>
            <li><a href="#HelpMenu">Menu - Do you know the seven items every "Help" menu needs?</a></li>
            <li><a href="#ValidateData">Menu - Do you have a standard "Tools" item that includes a way to validate data?</a></li>
            <li><a href="#TrainingVideos">Menu - Do you have a Training Videos item?</a></li>
            <li><a href="#MenuIcon">Menu - Do you use icons in menu?</a></li>
            <li><a href="#Checkbox-for-two-options">Do you use a checkbox instead of radio buttons when there are only two options?</a></li>
            <li><a href="#SoundsAreImportant">Sound - Do you realize the importance of sounds to User Interface?</a></li>
            <li><a href="#beepmsg">Sound - Did you know that a message box automatically plays a beep?</a></li>
            <li><a href="#LongProcessFriendly">Long Process - Do you know how to make long-running processes user-friendly?</a></li>
            <li><del><a href="#LongProcessSkip">Long Process - Do you know that long-running processes should allow to 'Skip' the processing (when appropriate)? </del></a></li>
            <li><del><a href="#LongProcessBar">Long Process - Do you know that you should show a progress bar and allow users to cancel</a></del></li>
            <li><del><a href="#LongProcessHideBar">Long Process - Do you know that you should provide a detailed summary, play a sound and hide the progress bar at the end </a></del></li>
            <li><a href="#ProgressStatus">Long Process - Do you show the status of progress bar on winform's title?</a></li>
            <li><del><a href="#LongProcessImage">Very Long Process - Do you know that long-running processes should show a coffee cup?</a></del></li>
            <li><a href="#SampleDatabase">Sample - Do you supply a sample database?</a></li>
            <li><a href="#DBNamingConventions">Sample - Do your sample databases have good Naming Conventions?</a></li>
            <li><a href="#CreateDatabase">Sample - Do you avoid dropping a user's database when you attempt to create a database?</a></li>
            <li><a href="#Affordances">Affordances - Do you intuitively know how to use something?</a></li>
            <li><a href="#ClearlyShowPassFailWarning">Affordances - Do you clearly show a pass, fail or warning?</a></li>
            <li><a href="#statusIcon">Affordances - Do you use green tick, red cross and spinning icon to show the status?</a></li>
            <li><a href="#InstictiveComplex">Affordances - Do you avoid complex mapping?</a></li>
            <li><a href="#NoOkbutton">Do you avoid 'OK' button when the action is clear? </a></li>
            <li><a href="#Resolutions">Does your application's interface fit in any screen resolution?</a></li>
            <li><a href="#ExitWarning">Do you provide a warning before a program exits?</a></li>
            <li><a href="#ShowInTaskBar">Do you know that popup/modal forms should never have ShowInTaskbar=True</a></li>
            <li><a href="#DataJunk">Do you avoid &quot;Data Junk&quot;?</a></li>
            <li><a href="#StrikeThroughCompletedItems">Do you strike-through completed items?</a></li>
            <li><a href="#Taskbar">Text - Do you use "Taskbar" instead of "Task bar"?</a></li>
            <li><a href="#TryAgain">Text - Do you use "Try Again" instead of "Retry"?</a></li>
            
            <%--<li><a href="#Wizard">Wizard - Do you use a Wizard to help a user through a complicated set of steps?</a></li>
            <li><a href="#FirstPageTitle">Wizard - Does the first form provide the user product information?</a></li>
            <li><a href="#IntroScreen">Wizard - Do you add an introduction screen prior to settings?</a></li>
            <li><a href="#WizardStep">Wizard - Do you visually indicate to the users the step where they are up to in the wizard?</a></li>
            <li><a href="#WizardForm">Wizard - Do you let the user know where they are up to?</a></li>
            <li><a href="#Finish">Wizard - Do you visually let the user know when they are finished?</a></li>
            <li><a href="#RememberLast">Wizard - Do you remember the user's last settings?</a></li>
            <li><a href="#Divider">Wizard - Do you use bold text and indentation, instead of dividing lines?</a></li>
            <li><a href="#CloseCancelDifference">Wizard - What's the difference between Close and Cancel?</a></li>
            <li><a href="#Graphs">Charts - Do you make graphs easy to digest?</a></li>
            <li><a href="#GraphSelection">Charts - Do you use bar graph rather than pie graph?</a></li>
            <li><a href="#StandardReportFooter">Reports - Do you have a standard Report footer?</a></li>
            <li><a href="#SimpleReportingCriteria">Reports - Do you keep Reporting criteria simple?</a></li>
            <li><a href="#TimePrecision">Dates - Do you keep Time Precision format consistent?</a></li>
            <li><a href="#DatePrecision">Dates - Do you keep Date Precision format consistent?</a></li>
            <li><a href="#CalendarControls">Dates - Do you use Calendar controls effectively?</a></li>
            <li><a href="#AvoidIncorrectData">Validation - Do you avoid capturing incorrect data?</a></li>
            <li><a href="#CorrectValidationFocus">Validation - Do you focus to the correct control on validation error?</a></li>
            <li><a href="#UseMnemonic">Controls - Do your buttons have a mnemonic?</a></li>
            <li><a href="#DisableButtons">Controls - Do you disable buttons that are unavailable?</a></li>
            <li><a href="#OptionGroupCheckBoxSimple">Controls - Do you make Option Groups and Check Boxes simple to understand?</a></li>
            <li><a href="#ListViewToolTip">Controls - Do you use a ToolTip to show the full text of hidden ListView data?</a></li>
            <li><a href="#Font">Controls - Do you use Microsoft Recommended Font in your Application?</a></li>
            <li><a href="#SelectAll">Controls - Do you have a top CheckBox for users to perform a &quot;select all&quot;?</a></li>
            <li><a href="#FullRowSelect">Controls - Do you set row select mode as &quot;FullRowSelect&quot; for  DataGridView if it is read only?</a></li>
            <li><a href="#SelectedRows">Controls - Do you make the selected rows standard out in a datagrid?</a></li>
            <li><a href="#Tooltip">Controls - Do you use balloon tooltip?</a></li>
            <li><a href="#ConsistentLabel">Controls - Do you end labels text with &quot;:&quot;?</a></li>
            <li><a href="#ResultsInComboBoxes">Controls - Do you include the number of results in ComboBoxes?</a></li>
            <li><a href="#AllInComboBoxes">Controls - Do you have '-All-' option in your ComboBoxes?</a></li>
            <li><a href="#ExtendComboBoxes">Controls - Do you extend the size of ComboBoxes to show as many results as possible?</a><img src="Images/RedStar.gif" alt="Star" width="18" height="14" /></li>
            <li><a href="#txtBox4Data">Controls - Do you use Text Boxes for displaying data?</a></li>
            <li><a href="#GreyReadOnlyCalculated">Controls - Do you indicate when fields are Read Only or calculated?</a></li>
            <li><a href="#CheckedListBoxVSDatagrid">Control Choice - Do you use CheckedListBox and DataGrid appropriately?</a></li>
            <li><a href="#UseGridView">Control Choice - Do you use GridView instead of ListBox?</a></li>
            <li><a href="#DatagridVSListview">Control Choice - Do you use ListView and DataGrid appropriately?</a></li>
            <li><a href="#UseCheckBox">Control Choice - Do you know when to use CheckBox?</a></li>
            <li><a href="#ListBoxesAreEvil">Control Choice - Do you use ComboBoxes instead of single-select List Boxes?</a></li>
            <li><a href="#ListBoxesAreEvil2">Control Choice - Do you use Checked List Boxes instead of multi-select List Boxes?</a></li>
            <li><a href="#ConsistentButtonStyle">Control Choice - Do you have a consistent look on your buttons?</a></li>
            <li><a href="#AvoidGroupBox">Control Choice - Do you avoid using &quot;Group Box&quot; and use a line to organize your form?</a></li>
            <li><a href="#OptionsBold">Control Choice - Do you use bold on the main options to make them clearer?</a></li>
            <li><a href="#UseOptionsGroup">Control Choice - Do you know when to use options group (Radio Buttons) instead of ComboBox?</a></li>
            <li><a href="#Embedded">Forms - Do you avoid doing an embedded add?</a></li>
            <li><a href="#RichTextboxNotes">Forms - Do you avoid using plain textboxes for notes?</a></li>
            <li><a href="#LabelButtons">Forms - Do you label your form buttons consistently?</a></li>
            <li><a href="#DynamicallyLabelButtons">Forms - Do you avoid dynamically labelling your form buttons?</a></li>
            <li><a href="#SizeSpacing">Forms - Do you follow the control size and spacing standards?</a></li>
            <li><a href="#minisize">Forms - Windows Form should have a minimum size to avoid unexpected UI behavior?</a></li>
            <li><a href="#DataEntryForms">Forms - The way to develop Data Entry Forms</a></li>
            <li><a href="#DrillAround">Forms - Do you provide the user Drill-Downs Drill-Arounds?</a></li>
            <li><a href="#ComboBoxDrillDown">Forms - Do you avoid using menus for Combo Box maintenance?</a></li>
            <li><a href="#ButtonAlign">Forms - Do you align your Add/Edit/Delete buttons horizontal and bottom right?</a></li>
            <li><a href="#AvoidCombining">Forms - Do you avoid combining different entities?</a></li>
            <li><a href="#TwoFormsAreBetter">Forms - Do you avoid using one form for data  entry and find navigation?</a></li>
            <li><a href="#PopupEditForm">Forms - Do you create a popup form for editing details?</a></li>
            <li><a href="#ConsistentField">Forms - Do you have consistent way to store a same field?</a></li>
            <li><a href="#MenuSelect">Forms - Do you save the last users selections?</a><img src="Images/RedStar.gif" alt="Star" width="18" height="14" /></li>
            <li><a href="#ElipsisForDialogs">Forms - Do you use ellipsis (...) to indicate an action requiring more user input?</a></li>
            <li><a href="#DatabaseSettingsUdl">Do you use a UDL when getting database settings?</a></li>
            <li><a href="#BorderProtection">Do your Windows Forms have border protection?</a></li>--%>
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
                <h2><a name="StandardHelpAboutForm"></a>Menu - Do you have a standard "Help About" form?</h2>
                <p>Every application you build should have the same "Help About" form. The form should always display the following information:</p>
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
                    <dd>Figure: The old SSW Standard "Help About" form across all our products (Better)</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/Rego9.png" alt="SSW Help About" border="1" width="600" height="504" /></dt>
                    <dd>Figure: Good Example - The new SSW Standard "Help About" form across all our products</dd>
                </dl>
            </li>

            <li>
                <h2><a name="linktoUserGuide"></a>Menu - Do you have a link to your application's user guide?</h2>
                <p>Users who are finding your application a little hard to use will always look for a user guide. The first thing they would do is to reach for the help menu. The "About" button can provide a link to the product website, but this is not very handy and obvious for a user who needs quick help. A link to the user guide must be in the "Help" menu.</p>
                <dl class="goodImage">
                    <dt><img src="Images/RulesT3.gif" alt="Help User Guide" width="300" height="182" /></dt>
                    <dd>Figure: Good Example - "User Guide" link in the "Help" menu</dd>
                </dl>
            </li>

            <li>
                <h2><a name="HelpMenu"></a>Menu - Do you know the seven items every "Help" menu needs?</h2>
                <p>A good help menu should have these seven items in it:</p>
                <ol>
                    <li>Online User Guide</li>
                    <li>Knowledge Base</li>
                    <li>Make a Suggestion</li>
                    <li>Report a Bug</li>
                    <li>Check for Updates? [Product Name]</li>
                    <li>Check for Updates - All Programs</li>
                    <li>Run Unit Tests...</li>
                    <li>About [Product Name]...</li>
                </ol>
                <dl class="badImage">
                    <dt><img src="Images/BadExampleForHelpMenu.gif" alt="Bad example of help menu" /></dt>
                    <dd>Figure: Bad Example - Example of a Help menu with only "About"</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/GoodExampleOfHelpMenu.gif" alt="Good example of help menu" /></dt>
                    <dd>Figure: Good Example - Example of a Help menu with all seven items</dd>
                </dl>
                <p class="productBox">You can see an example in <a href="/ssw/NETToolkit/">SSW.NET Toolkit</a>.</p>
            </li>

            <li>
                <h2><a name="ValidateData"></a>Menu - Do you have a standard "Tools" item that includes a way to validate data?</h2>
                <p>We always add a &quot;Tools &gt; Validate Data&quot; to our apps.</p>
                <p>When we add business rules to the middle tier, we are always worried about developers importing data and side stepping the business rules. Therefore we always make validate queries that if they return records, they must be fixed. Examples are:</p>
                <ul>
                    <li>For SQL Server we use <strong>vwValidateClient_MustHaveACategoryID</strong>, or <strong>procValidateClient_MustHaveACategoryID</strong></li>
                    <li>For Access we use <strong>qryValidateClient_MustHaveACategoryID</strong></li>
                </ul>
                <p>We then have a procedure that runs all these. The user should keep this list to 0.</p>
            </li>

            <li>
                <h2><a name="TrainingVideos"></a>Menu - Do you have a "Training Videos" item?</h2>
                <p>Training Videos provide a straightforward way to help the user look into your product and help them have a good understanding. It's better to have a "Training Videos" item in the help menu.</p>
                <dl class="goodImage">
                    <dt><img src="Images/TrainingVideos.jpg" alt="Training Videos menu item" /></dt>
                    <dd>Figure: It's better to provide such a "Training Videos..." menu item</dd>
                </dl>
                <p>See our suggestion to Visual Studio to<a href="../BetterSoftwareSuggestions/VisualStudio.aspx#TrainingVideos">provide "Training Videos" menu item in the help menu</a>.</p>
            </li>

            <li>
                <a name="MenuIcon"></a><h2>Menu - Do you use icons in menu?</h2>
                <p>Plain menu items make your application look normal and less expressive.</p>
                <dl class="badImage">
                    <dt><img " src="Images/BetterUI_PlainMenu.gif" alt="Plain Menu" /></dt>
                    <dd>Figure: Bad Example - Plain menu</dd>
                </dl>
                <p>While icons can make your application look good. <del>A brand new control MenuStrip is introduced in .NET 2.0 to support using icons in menu items without any manual code.</del></p>
                <dl class="goodImage">
                    <dt><img src="Images/BetterUI_MenuStrip.gif" alt="menu with icons" /></dt>
                    <dd>Figure: Good Example - Menu with icons</dd>
                </dl>
                <del>
                <dl class="image">
                    <dt><img border="0" src="Images/BetterUI_MenuStrip_DesignView.gif" alt="menu item properties" /></dt>
                    <dd>Figure: menu item properties</dd>
                </dl>
                <p><del>MenuStrip supersedes the previous MainMenu control in .NET 1.x which does not support icon. If you have to use this old control and want to add icon support with it <a href="/ssw/redirect/MenuExtender.htm">MenuExtender by Eugene</a> may help.</del> A sample looks like this:</p>
                <dl class="image">
                    <dt><img border="0" src="Images/BetterUI_MainMenu.gif" alt="MainMenu with MenuExtender" /></dt>
                    <dd>Figure: MainMenu with icons</dd>
                </dl>
                <dl class="code">
                        <dt><pre>
            Me.MenuExtender1.SetExtEnable(Me.mToolsOption, True)
            Me.MenuExtender1.SetImageIndex(Me.mToolsOption, 8)
            Me.MenuExtender1.SetExtEnable(Me.mProcessAll, True)
            Me.MenuExtender1.SetImageIndex(Me.mProcessAll, 9)
                        </pre></dt>
                        <dd>Code: Code for using MenuExtender with MainMenu</dd></dl></del>
            </li>

            <li>
                <h2><a name="Checkbox-for-two-options"></a>Do you use a checkbox instead of radio buttons when there are only two options?</h2>
                <p>If there are only two options available on the form (usually a yes/no answer), the use of a checkbox is more intuitive than radio buttons. Only use radio buttons if there are more than two options.</p>
                <dl class="badImage">
                    <dt><img src="Images/radio-for-two-options.jpg" alt="Radio buttons are not appropriate when there are only two options" /></dt>
                    <dd>Figure: Bad Example &#8211; Radio buttons are not appropriate when there are only two options</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/checkbox-for-two-options.jpg" alt="These yes/no questions have a better representation with checkboxes" /></dt>
                    <dd>Figure: Good Example &#8211; These yes/no questions have a better representation with checkboxes</dd>
                </dl>
            </li>

            <li>
                <h2><a name="SoundsAreImportant"></a>Sound - Do you realize the importance of sounds to User Interface?</h2>
                <p>Sounds are important to an interface. Sounds provide an extra level of feedback to the user. For example, in Outlook, you can enable sounds, which notify the user when text is copied or pasted, or mail items are received, moved or deleted. Important situations where sounds should be used include:</p>
                <ul>
                    <li><del>Message boxes - every message box should be accompanied with a sound, depending on the type of message box<br />
                        <a href="Sounds/WindowsXPCriticalStop.wav"><img src="Images/Sound.gif" alt="sound icon"  /></a> <a href="Sounds/WindowsXPCriticalStop.wav">Error</a> <a href="Sounds/WindowsXPExclamation.wav"><img src="Images/Sound.gif" alt="sound icon" /></a> <a href="Sounds/WindowsXPExclamation.wav">Warning</a> <a href="Sounds/WindowsXPError.wav"><img src="Images/Sound.gif" alt="sound icon" /></a> <a href="Sounds/WindowsXPError.wav">Information</a></del> (I'd still like to give  the apps their own personality)
                    </li>
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
                <p>There is no need to manually put a beep right before a message box pops up. A message box automatically provides this functionality.</p>
                <dl class="badCode">
                    <dt><pre>
        Dim Message As String = &quot;You did not enter a server name. Cancel this operation?&quot;
        Dim Caption As String = &quot;No Server Name Specified&quot;
        Dim Buttons As Integer = MessageBoxButtons.YesNo
        Beep()
        result = MessageBox.Show( Me, Message, Caption, Buttons)
                    </pre></dt>
                    <dd>Figure: The sound on the button is hardcoded in this code snippet</dd></dl>
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
                    <dd>Figure: Bad example of Progress bar (the user can't skip and the progress bar is stuck at 100%)</dd>
                </dl>
                <p>When you have a long-running process you have to allow the user to:</p>
                <ul>
                    <li><a href="#LongProcessSkip">Skip the processing (when appropriate)</a> </li>
                    <li><a href="#LongProcessBar">See a detailed description and the option to Cancel the process</a></li>
                    <li><a href="#LongProcessDetails">Hear a sound and see a detailed summary when the process is done</a></li>
                </ul>
                <h3><a name="LongProcessSkip"></a>Skip the processing (when appropriate)</h3>
                <p>Give users the chance to skip a lengthy process.</p>
                <p>When your wizard has a lot of processing, do you allow the user to skip that processing when appropriate? It may be that the user simply wants to see the results of the  last time the wizard was used, or is interested in seeing what comes after the processing step before deciding to run the process.</p>
                <dl class="goodImage">
                    <dt><img src="Images/SkipLongProcess.gif" alt="Skip Long Process" /></dt>
                    <dd>Figure: Good Example - Options for skipping a long process in SSW Diagnostics</dd>
                </dl>

                <h3><a name="LongProcessBar"></a>Detailed description and canceling the process</h3>
                <p>The <strong>last</strong> thing a user wants is to be stuck waiting around for a long-running process to finish that they accidentally started in the first place. This causes frustration with the application because:</p>
                <ul>
                    <li>They do not know how long the process will last (adds uncertainty to the user experience)</li>
                    <li>They cannot stop the process (creates lack of control in the user experience)</li>
                </ul>
                <p>Instead, keep users happy with your application by:</p>
                <ul>
                    <li>Showing status description information above the progress bar</li>
                    <li>Allowing the user to stop the process at any time by clicking &quot;Cancel&quot; (or as a minimum, prompt for confirmation before the long running process is started)</li>
                </ul>
                <dl class="goodImage">
                    <dt><img src="Images/AllowCancelAndShowProgressForLongRunningProcesses2.jpg" alt="Progress form with description and status&amp; Cancel Button" /></dt>
                    <dd>Figure: Good Example - Progress Bar with description and status, and Cancel Button</dd>
                </dl>
                <p class="productBox">We have a product called <a href="/ssw/NETToolKit/">SSW .NET Toolkit</a> which includes these controls. <a href="/ssw/NETToolKit/08ProgressbarsStatusforms.aspx">SSW .NET Toolkit - Using Progress bars/Status forms.</a></p>
            
                <h3><a name="LongProcessDetails"></a>Playing a sound and showing a detailed summary when the process is done</h3>
                <p>Whenever a long process is churning away (e.g. about 10 seconds) users will usuall tune out and do something else, either make a coffee or switch to another window. By playing a sound, hiding the progress bar and showing a message box at the end of the long process it will alert the user and flash the taskbar, reminding the user to go back and check on it.</p>
                <p>When using Message Box to indicate user a process is done, always includes detailed summary of the process. Don't just say &quot;Process completed.&quot;</p>
                <div class="greyBox">
                    <p><img src="images/bad.gif" />Bad:<br />
                        <strong>Process completed.</strong></p>
                    <p><img src="images/good.gif" />Good:<br />
                        <strong>Manual extraction process completed.<br /><br />
                        Mailboxes scanned: 8<br />
                        Mailboxes skipped: 2<br />
                        Total mailboxes: 10<br />
                        Time Taken: 10 minutes, 15 seconds</strong></p>
                </div>            
            </li>

            <li><del>
                <h2><a name="LongProcessDetails"></a>Long Process - Do you know that long-running processes should allow to 'Skip' the processing (when appropriate)?</h2>
                <p><strong>Give users the chance to skip a lengthy process.</strong></p>
                <p>When your wizard has a lot of processing, do you allow the user to skip that processing when appropriate? It may be that the user simply wants to see the results of the  last time the wizard was used, or is interested in seeing what comes after the processing step before deciding to run the process.</p>
                <dl class="goodImage">
                    <dt><img src="Images/SkipLongProcess.gif" alt="Skip Long Process" width="348" height="132" /></dt>
                    <dd>Figure: Good Example - Options for skipping a long process in SSW Diagnostics</dd>
                </dl></del>
            </li>

            <li><del>
                <h2><a name="LongProcessBar"></a>Long Process - Do you know that you should show a progress bar and allow users to cancel</h2>
                <p>The <strong>last</strong> thing a user wants is to be stuck waiting around for a long-running process to finish that they accidentally started in the first place. This heightens frustration with the application because</p>
                <ul>
                    <li>They do not know how long the process will last (adds uncertainty to the user experience)</li>
                    <li>They cannot stop the process (creates lack of control in the user experience)</li>
                </ul>
                <p>Instead, keep users happy with your application by</p>
                <ul>
                    <li>Showing status description information above the progress bar</li>
                    <li>Allowing the user to stop the process at any time by clicking &quot;Cancel&quot; (or as a minimum, prompt for confirmation before the long running process is started)</li>
                </ul>
                <dl class="goodImage">
                    <dt><img width="390" height="192" alt="Progress form with Description &amp; Cancel Button" src="Images/AllowCancelAndShowProgressForLongRunningProcesses.gif"></dt>
                    <dd>Figure: Good Example - Progress Bar with description and Cancel Button</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/AllowCancelAndShowProgressForLongRunningProcesses2.jpg" alt="Progress form with description and status&amp; Cancel Button" width="578" height="346" /></dt>
                    <dd>Figure: Good Example - Progress Bar with description and status, and Cancel Button</dd>
                </dl>
                <p class="productBox">We have a product called <a href="/ssw/NETToolKit/">SSW .NET Toolkit</a> which includes these controls. <a href="/ssw/NETToolKit/08ProgressbarsStatusforms.aspx">SSW .NET Toolkit - Using Progress bars/Status forms.</a></p>
                </del>
            </li>

            <li><del>
                <h2><a id="LongProcessHideBar"></a>Long Process - Do you know that you should provide a detailed summary, play a sound and hide the progress bar at the end</h2>
                <p>Whenever a long process is churning away (e.g. about 10 seconds) users will usuall tune out and do something else, either make a coffee or switch to another window. By playing a sound, hiding the progress bar and showing a message box at the end of the long process it will alert the user and flash the taskbar, reminding the user to go back and check on it.</p>
                <p>When using Message Box to indicate user a process is done, always includes detailed summary of the process. Don't just say &quot;Process completed.&quot;</p>
                <div class="greyBox">
                    <p><img src="images/bad.gif" />Bad:<br />
                        <strong>Process completed.</strong></p>
                    <p><img src="images/good.gif" />Good:<br />
                        <strong>Manual extraction process completed.<br /><br />
                        Mailboxes scanned: 8<br />
                        Mailboxes skipped: 2<br />
                        Total mailboxes: 10<br />
                        Time Taken: 10 minutes, 15 seconds</strong></p>
                </div>
                <p>This is just like standing at a set of traffic lights listening for the beep to speed up to know when to walk, rather than constantly looking at the red and green men.</p>
                <dl class="goodImage">
                    <dt><img src="Images/ProgressBarComplete.gif" alt="Completed Progress Form" width="369" height="178" /></dt>
                    <dd>Figure: Good Example - A completed progress form</dd>
                </dl>
                </del>
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
            </li>

            <li><del>
                <h2><a name="LongProcessImage"></a>Very Long Process - Do you know that long-running processes should show a coffee cup?</h2>
                <p>If a process is going to take a VERY long time, for example more than 3 minutes, let them know so they can get on with something else and check back later:</p>
                <dl class="badImage">
                    <dt><img src="Images/UnknownLengthTime.jpg" alt="An unknown length of time " /></dt>
                    <dd>Figure: Bad example - An unknown length of time. So let them know</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/CoffeeCup.jpg" alt="The coffee cup tells the user that they will be here a while" /></dt>
                    <dd>Figure: Good example &#8211; The coffee cup tells the user that they will be here a while</dd>
                </dl>
                <p>If the process is longer than 3 minutes then you should show a coffee cup.</p>
                </del>
            </li>

            <li>
                <h2><a name="SampleDatabase"></a>Sample - Do you supply a sample database?</h2>
                <p>If you are shipping a product that makes use of a database backend, then you should also supply and option to automatically populate the database with some sample database. This is particularly important if you are offering your software as a trial license and need to have data in the database to show off your application's ground breaking functionality.</p>
                <p>We typically script the data in our sample database to a .sql file with a lot of INSERT statements and then use a product such as <a href="/ssw/SQLDeploy">SSW SQL Deploy</a> to manage the safe execution of our .sql file.</p>
            </li>

            <li>
                <h2><a name="DBNamingConventions"></a>Sample - Do your sample databases have good Naming Conventions?</h2>
                <p> Sample databases should be named in the following way:</p>
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
                <dl class="image">
                    <dt><img src="Images/InterfacesDBAlreadyExists.gif" alt="Reporting Services Setup - Database Already Exists" width="600" height="97" /></dt>
                    <dd>Figure: Existing database alert</dd>
                </dl>
                <p>If you cannot be sure of the machine that the database is going to be installed on then you should make use of third party .sql script execution managers such as <a href="/ssw/SQLDeploy">SSW SQL Deploy</a> to ensure that when you attempt creation of databases where the database already exists then things will run smoothly.</p>
            </li>
            
            <li>
                <h2><a name="Affordances"></a>Affordances - Do you intuitively know how to use something?</h2>
                <ol>
                    <li>When we see a door, we immediately know that we can open it and go through it</li>
                    <li>Links in blue and underlined has an affordance of clickability</li>
                    <li>Buttons can be pressed</li>
                    <li>Scrollbar moves the document in the window</li>
                </ol>
                <dl class="badImage">
                    <dt><img src="Images/Bad-FalseAffordance.jpg" alt="False affordance" /></dt>
                    <dd>Figure: Bad Example - If this mop sink didn't look so much like a urinal and wasn't right next to the toilet, maybe the sign wouldn't be necessary.</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/Bad-Affordance2.jpg" alt="False affordance" /></dt>
                    <dd>Figure: The affordance of the checkbox makes this UI misleading</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/Bad-Affordance.jpg" alt="False affordance" /></dt>
                    <dd>Figure: Because of the UI, people never knew how to use styles</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/Good-Affordance.jpg" alt="" /></dt>
                    <dd>Figure: Because of the UI, people know intuitively how to use styles</dd>
                </dl>
            </li>
            <li>
                <h2><a name="ClearlyShowPassFailWarning"></a>Affordances - Do you clearly show a <span style="color: green">pass</span>, <span style="color: red">fail</span> or <span style="color: #FFCC00">warning</span>?</h2>
                <p>When a user looks at a test result, they want to be quickly informed. Therefore, you must make it clear weather the test has passed or failed, or is there any warning.</p>
                <ul>
                    <li>For a pass, the message should be green in colour, and a tick next to the message. <img border="0" src="Images/Success-lg.gif" alt="" width="25" height="25" /></li>
                    <li>For a fail, the message should be red in colour, and a cross next to the message. <img border="0" src="Images/Fail-lg.gif" alt="" width="25" height="25" /></li>
                    <li>For a warning, the message should be yellow/orange in colour, and an exclamation mark next to the message. <img border="0" src="Images/Warning-lg.gif" alt="" width="25" height="25" /></li>
                </ul>
                <dl class="badImage">
                    <dt><img src="Images/RulesT1.gif" alt="Pass and fail are not clear" width="446" height="93" /></dt>
                    <dd>
                        Figure: Bad Example - Pass and fail are not clear</dd></dl>
                <dl class="image">
                    <dt>
                        <img src="Images/RulesT2.gif" alt="Green text and tick for pass, red text and cross for fail (Better)" width="447" height="117" /></dt>
                    <dd>
                        Figure: Green text and tick for pass, red text and cross for fail (Better)</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RulesT4.gif" alt="Status on windows forms" width="396" height="69" /></dt>
                    <dd>
                        Figure: Good Example - Status on windows forms</dd></dl>
                <dl class="goodImage">
                    <dt><img src="Images/MicrosoftUpdate.gif" alt="Microsoft Update uses 3 icons to indicate different status, and good quality of Images too" width="496" height="311" /></dt>
                    <dd>Figure: Good Example - Microsoft Update uses 3 icons to indicate different status, and good quality of Images too</dd>
                </dl>
            </li>

            <li>
                <h2><a name="statusIcon"></a>Affordances - Do you use green tick, red cross and spinning icon to show the status?</h2>
                <p>It is very important to use a clear information icon to show the current status. The icon should be consistent with the actual status.</p>
                <dl class="badImage">
                    <dt><img src="Images/wrongIconStatus.gif" alt="inconsistent icon and actual status" /></dt>
                    <dd>Figure: Bad Example - The icon is not consistent with the actual status</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/spinningIconStatus.gif" alt="spinning icon to show status" /></dt>
                    <dd>Figure: Good Example - Use spinning icon to show the checking status</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/crossIconStatus.gif" alt="cross icon to show status" /></dt>
                    <dd>Figure: Good Example - Use red cross icon to show the wrong status</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/tickIconStatus.gif" alt="green tick icon to show status" /></dt>
                    <dd>Figure: Good Example - Use green tick icon to show the correct status</dd>
                </dl>
                <p>We have another similar rule for Web application - <a href="/ssw/standards/rules/RulesToBetterWebsitesLayout.aspx#StatusIcon"> Do you use icons in web pages to indicate status directly?</a></p>
                <p>You can get <a href="http://www.ssw.com.au/ssw/standards/images/OurTicksCrosses/browse.aspx">SSW's ticks and crosses here.</a></p>
            </li>

            <li><h2><a name="InstictiveComplex"></a>Affordances - Do you avoid complex mapping?</h2>
                <dl class="badImage">
                    <dt><img src="Images/Bad-Mapping.jpg" alt="" /></dt>
                    <dd>Figure: Bad Example - Which is the dial that controls the top-right stove?</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/Good-Mapping.jpg" alt="" /></dt>
                    <dd>Figure: Good Example - In this layout, it's easy to see which dial controls which stove</dd>
                </dl>
            </li>

            <li>
                <h2><a name="NoOkbutton"></a>Do you avoid 'OK' button when the action is clear?</h2>
                <p>Don't use &quot;OK&quot; if the button does one clear action. The button name must reflect the action that is going to happen by clicking the button. Examples of button names that are better than &quot;OK&quot; are:</p>
                <ul>
                    <li>Save</li>
                    <li>Move</li>
                    <li>Rename</li>
                    <li>Open</li>
                    <li>Select</li>
                    <li>Insert</li>
                    <li>Print</li>
                    <li>Process</li>
                    <li>Login</li>
                </ul>
                <dl class="image">
                    <dt><img src="Images/DontUseOpen.jpg" alt="Save button" width="579" height="495" /></dt>
                    <dd>Figure: Save button in action</dd>
                </dl>
                <p>However, there is an exception when there are multiple settings being changed. Typical examples are Properties and the Tools - Options dialog. There are often many tabs with many options. It would make no sense to have &quot;Save Settings&quot; or &quot;Save&quot;. This is where the &quot;OK&quot; &quot;Apply&quot; &quot;Cancel&quot; convention really applies.</p>
            </li>

            <li>
                <h2><a name="Resolutions"></a>Does your application's interface fit in any screen resolution?</h2>
                <p>Each user prefers to have their own resolution. You must check if your controls will fit on the user's screen. Think about on which computers your application will run, and what devices will display it. To be on the safe side, it is advisable to fit your controls on an 800x600px screen. Our projector has that resolution and it may well be used for presenting your application to the client.</p>
                <dl class="badImage">
                    <dt><img src="Images/InterfaceResBadExample.jpg" alt="Bad Interface Design Example" /></dt>
                    <dd>Figure: Bad Example - Form is too large to fit inside 800x600px resolution</dd></dl>
                <dl class="goodImage">
                    <dt><img src="Images/InterfaceResGoodExample.jpg" alt="Good Interface Design Example" /></dt>
                    <dd>Figure : Good Example - Form fits inside any screen resolution</dd>
                </dl>
                <p>The potential solutions for this problem are:</p>
                <ol>
                    <li>Reorder and move the controls around on the form.</li>
                    <li>Implement Tab pages.</li>
                    <li>Use a wizard type interface, with Next, Back and Finish.</li>
                    <li>Create multiple forms each containing a subset of the controls.</li>
                    <li>Create a menu based form where the items are categories that some form controls fall under.<br />
                        Similar to VS. Net's Tools -&gt; Options. </li>
                </ol>
                <p class="productBox">We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#Resolutions">SSW Code Auditor</a> to check for this rule.</p>
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

            <li>
                <h2><a name="ShowInTaskBar"></a>Do you know that popup/modal forms should never have ShowInTaskbar=True</h2>
                <p>Question: What is wrong with this Picture?</p>
                <dl class="image">
                    <dt><img src="Images/ShowInTaskBar.jpg" alt="Modal Form in Taskbar" width="319" height="30" /></dt>
                    <dd>Figure: Can you tell what is wrong with this Picture?</dd>
                </dl>
                <p>Answer: The 2 SSW SQL Auditor windows are bad, because one is just a modal form.</p>
                <p>Note: We don't check for this in Code Auditor because making a form display as popup, is done at runtime via the ShowDialog method.</p>
                <dl class="badCode">
                    <dt><pre>Dim frm as new frmCustomer frm.ShowDialog</pre></dt>
                    <dd>Figure: Bad Code</dd></dl>
                <p>If your form is designed to be used modally (and thus be called using ShowDialog) then ShowInTaskbar should be set to false in the form designer.</p>
                <dl class="badCode">
                    <dt><pre>Dim frm as new frmCustomer frm.ShowInTaskBar = False frm.ShowDialog</pre></dt>
                    <dd>Figure: Bad Code (because this should be set in the form designer)</dd></dl>
                <dl class="goodCode">
                    <dt><pre>Dim frm as new frmCustomer frm.ShowDialog</pre></dt>
                    <dd>Figure: Good Code (ShowInTaskbar is set in the form's InitializeComponents method instead)</dd>
                </dl>
            </li>

            <li>
                <h2><a name="DataJunk"></a>Do you avoid &quot;Data Junk&quot;?</h2>
                <p>When there are too many choices always Default to the most common ones. Then add a check box to allow the advanced users to turn off the common choices. E.g.</p>
                <div class="greyBox">
                    <p>[x] Only include common choices</p>
                </div>
                <p>Likewise in a contacts database where you have entries from all around the world it is good to add a check box on the search screen similar to the following:</p>
                <div class="greyBox">
                    [x] Only include customers that have been updated by employees (not directly entered
                    from the web)
                </div>
                <p>A good example on that the checkbox on the search screen of TimePRO.NET and the fact that when you search Google they default to remove PORN.</p>
                <dl class="goodImage">
                    <dt><img src="Images/DefaultSearch.gif" alt="Options Form - ComboBox without Result Count" /></dt>
                    <dd>Figure: Default search tick box in TimePRO.NET</dd>
                </dl>
            </li>

            <li>
                <h2><a name="StrikeThroughCompletedItems"></a>Do you strike-through completed items?</h2>
                <div class="infoBox" style="float:right; margin-left:20px;">
                    <h4>Learn how to <a href="/ssw/KB/KB.asp?KBID=Q803334">add &quot;Strike-Through&quot;</a> to your toolbar.</h4>
                </div>
                <p>When you're giving an update on progress on a task list or a schedule, <s>STRIKE OUT</s> the items that have been completed. Not only does it visually explain where you are, it also gives you a great sense of satisfaction...</p>
                <dl class="goodImage">
                    <dt><img src="Images/StrikeThrough.gif" alt="Strike Through" /></dt>
                    <dd>Figure: Good Example - Completed items are struck-through</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/OutlookTaskList.JPG" alt="Strike Through in Outlook" /></dt>
                    <dd>Figure: Good Example - Completed tasks are struck-through</dd>
                </dl>
            </li>

            <li>
                <h2><a name="Taskbar"></a>Text - Do you use "Taskbar" instead of "Task Bar"?</h2>
                <dl class="goodImage">
                    <dt><img src="Images/Taskbar.gif" alt="Good Taskbar example" /></dt>
                    <dd>Figure: use the spelling "taskbar" over "task bar"</dd>
                </dl>
            </li>

            <li>
                <h2><a name="TryAgain"></a>Text - Do you use "Try Again" instead of "Retry"?</h2>
                <p>They are similar but "Retry" is a more computer jargon like.</p>
                <dl class="goodImage">
                    <dt><img src="Images/TryAgain.gif" alt="Good Taskbar example" /></dt>
                    <dd>Figure: Internet Explorer uses "Try Again" instead of "Retry"</dd>
                </dl>
            </li>

        </ol>

        <h2>Related Rules</h2>
            <p>Read the specific rules below:</p>
            <ul>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces.aspx">Rules to Better Interfaces - General</a></li>
                <li>Rules to Better Interfaces - Windows Application</li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Controls.aspx">Rules to Better Interfaces - Controls</a></li>	
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Reports.aspx">Rules to Better Interfaces - Reports, Charts and Dates</a></li>
                <li><a href="/ssw/Standards/Rules/RulesToBetterInterfaces-Popups-and-Messages.aspx">Rules to Better Interfaces - Popups and Messages</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Wizard.aspx">Rules to Better Interfaces - Wizards</a></li>			
                <li><a href="/ssw/Standards/Rules/Rules/RulestoBetterInterfaces-Forms.aspx">Rules to Better Interfaces - Forms</a></li>
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
