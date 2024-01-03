<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Windows VISTA Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
    <div class="TableOfContents">
        <ol>
            <li><a href="#RestartComputerUpdate">Restart Computer prompts after Automatic 
                Updates</a></li>
            <li><a href="#AddRemoveProgramsSortByDate">Add/Remove Programs Sort By Date</a></li>
            <li><a href="#WindowPoppingUpAndTakingTheFocus">Window Popping Up And Taking The 
                Focus</a></li>
            <li><a href="#CTRLNKeystrokeExplorer">Allow Use of CTRL+N Keystroke in Explorer</a></li>
            <li><a href="#FolderOptionsList">Folder Options List</a></li>
            <li><a href="#DateTimeProperties">Date and Time Properties</a></li>
            <li><a href="#WindowsScheduledTaskFailureNotification">Windows Scheduled Task 
                Failure Notification</a></li>
            <li><strike><a href="#VPNFail">Notification on VPN disconnect</a></strike>
                        <span style="font-weight: bold; color: red">* Fixed by Vista *</span></li>
            <li><a href="#XPStartup">The Interface for the Startup on Windows XP is very poor</a></li>
            <li><a href="#WirelessNetworkUI">Wireless Network List Needs Filter/Sort 
                Capabilities</a></li>
            <li><a href="#updatesoftware">Microsoft should Update Pirated Software</a></li>
            <li><a href="#URLColumn">Add an extra column &quot;URL for more information&quot; to 
                MsConfig.exe</a></li>
            <li><a href="#ScreenCapture">Why does the average worker not know how to do a screen 
                capture of the current window?</a></li>
            <li><a href="#BetterSecurityLog">The Security Event log should be able to filter by 
                Description </a></li>
            <li><a href="#BetterAuditEvents">Auditing and Event Log - There needs to be a new 
                event type in audit settings</a></li>
            <li><a href="#EventViewerDeleteAll">Event Viewer - Add a right-click menu &quot;Delete 
                all items of this type&quot;</a></li>
            <li><a href="#Assist">Assist the process of choosing the correct columns</a></li>
            <li><a href="#TaskManagerProcess">Task Manager - Show the process of threads to go 
                away</a></li>
            <li><a href="#TaskManagePrompt">Task Manager - Add some prompts for threads</a></li>
            <li><a href="#PowerMeterBalloon">Power Meter - Add a balloon when it reaches 100%</a></li>
            <li><a href="#ShutdownEventTracker">Shutdown Event Tracker - Add a link to discover 
                the event log</a></li>
            <li><strike> <a href="#Vista">Windows Vista? What?</a></strike><span style="font-weight: bold; color: red"> * Fixed with Windows 7 * </span> </li>
            <li><a href="#CommentField">Shortcuts - Encourage more applications to use the Comment Field</a></li>
            <li><a href="#PauseDownloadingOption">Windows Update - Give option to pause downloading when on a slow connection</a></li>
            <li><a href="#LocationField">Printers need the location field to show</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li><a name="RestartComputerUpdate"></a>
                <h2>
                    Restart Computer prompts after Automatic Updates </h2>       <p>
                    When an automatic update has been installed, I am prompted to restart my 
                    computer for the updates to take effect. In the circumstance of choosing 
                    'Restart Later', the automatic update initally accepts this but within a short 
                    period of time it asks me again. It will continue to ask me until I have chosen 
                    'Restart Now' or when the update automatically restarts my computer after the 
                    timer has run out. This has led to loss of valuable information and work in the 
                    past. Automatic Updates should run so that once I have chosen not to restart my 
                    computer, the update should accept my first response and not repeatedly ask me. 
                    Also, if I choose to ignore this prompt, the update should not automatically 
                    restart my computer after the timer has run out.</p>
                <dl class="image">
                    <dt>
                        <img src="/ssw/Standards/BetterSoftwareSuggestions/Images/AutomaticUpdateRestart.jpg"
                            width="436" height="139" /></dt><dd>Figure: I should not have to choose 
                        'Restart Later' again and again...
                            </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="/ssw/Standards/BetterSoftwareSuggestions/Images/AutomaticRestartDialog.jpg"
                            width="438" height="181" /></dt><dd>Figure: ...and the Automatic Update, by 
                        default, should not restart my computer unless I choose 'Restart Now'.</dd></dl>
                <dl class="image">
                    <dt>
                        <img src="/ssw/Standards/BetterSoftwareSuggestions/Images/AutomaticRestartTip.jpg"
                            width="1006" height="581" /></dt><dd>Figure: In the Task Manager, end the 
                        wuauclt.exe process - this should prevent the Automatic Update from asking you 
                        any further.</dd></dl>
            </li>
            <li><a name="AddRemoveProgramsSortByDate"></a>
                <h2>
                    Add/Remove Programs Sort By Date</h2>
                <p>
                    I frequently find it necessary to install new software. On occasion, something 
                    will go wrong and I need to uninstall some programs in an attempt to fix the 
                    problem.
                </p>
                <p>
                    It would be extremely useful to be able to sort the list of installed programs 
                    by the date of installation. This way, I would save time by having all the most 
                    recently installed programs at the top of the list.
                </p>
                <p>
                    It would make sense to have column headings for the various properties, then you 
                    could sort by any of them in the same way you can sort listed items in Windows 
                    explorer.
                </p>
                <dl class="image">
                    <dt>
                        <img src="/ssw/Standards/BetterSoftwareSuggestions/Images/AddRemoveSortByDate.gif"
                            alt="Add Remove Sort by date" width="600" height="198" /></dt><dd>Figure: I 
                        should be able to sort the Add/Remove programs list box by date of installation</dd></dl>
            </li>
            <li><a name="WindowPoppingUpAndTakingTheFocus"></a>
                <h2>
                    Window Popping Up And Taking The Focus</h2>
                <p>
                    I think that a window should NEVER be allowed to take the focus if you are 
                    typing (have typed something in the prior 2 seconds).
                </p>
                <p>
                    Eg. While I am typing an email this window pops up and takes the focus. This is 
                    INCREDIBLY frustrating.
                </p>
                <dl class="image">
                    <dt>
                        <img src="/ssw/Standards/BetterSoftwareSuggestions/Images/WindowPoppingUpAndTakingTheFocus.gif"
                            alt="Window popping up and taking the focus" width="390" height="443" /></dt><dd>
                        Figure: The Window should not pop up if I have typed anything in the last 2 
                        seconds</dd></dl>
            </li>
            <li><a name="CTRLNKeystrokeExplorer"></a>
                <h2>
                    Allow Use of CTRL+N Keystroke in Explorer</h2>
                <p>
                    Users of Internet Explorer may be familiar with the keystroke, CTRL+N, which 
                    opens a new browser window. While Windows Explorer shares many of the 
                    conveniences of Internet Explorer, unfortunately, it still lacks this handy 
                    feature.
                </p>
            </li>
            <li><a name="FolderOptionsList"></a>
                <h2>
                    Folder Options List</h2>
                <p>
                    The list box on the File Types tab of the Folder Options dialog (Start &gt; Control 
                    Panel; Folder Options) lists all of the current file associations on the system. 
                    (See screenshot below.) As a result we will almost inevitably be faced with many 
                    thousands of items in a single list box.
                </p>
                <p>
                    This is a bad idea for two reasons:
                </p>
                <ol>
                    <li>It is difficult for users to find what they're looking for.</li>
                    <li>The list takes a long time to load; the user may be forced to wait for as long 
                        as 30 seconds before being able to interact with the dialog box.</li>
                </ol>
                <p>
                    A better idea may be to add a filter text box. Then the list can be filtered 
                    according to the characters entered into the text box, and updated each time the 
                    filter text changes.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/windows1.gif" alt="Folder options" width="386" height="475" /></dt><dd>
                        Figure: Folder Options dialog takes long time to load the file type list</dd></dl>
            </li>
            <li><a name="DateTimeProperties"></a>
                <h2>
                    Date and Time Properties</h2>
                <p>
                    Sometimes it may be necessary to change the selected Time Zone under Date and 
                    Time Properties, such as when moving to a different location. (See screenshot 
                    below.)
                </p>
                <p>
                    Changing this setting is easy enough, but it would be more helpful if Windows 
                    could also offer to automatically adjust the system time to match the new time 
                    zone.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/windows2.gif" alt="Date and time properties" width="404" height="348" /></dt><dd>
                        Figure: Date and Time Properties dialog should add an option, &quot; automatically adjust the system time to match the new time zone&quot; </dd></dl>
            </li>
            <li><a name="WindowsScheduledTaskFailureNotification"></a>
                <h2>
                    Windows Scheduled Task Failure Notification</h2>
                <p>
                    Scheduled Windows Tasks require passwords. However, like all good users, I 
                    change my password reasonably regularly. Consequently, my scheduled tasks fails 
                    after each time I change my Windows password.
                </p>
                <p>
                    I don't mind updating the passwords (although automatic updating would make a 
                    lot of sense) - however as a minimum Windows should email me if the Scheduled 
                    Task fails (meaning I need a place to add an email address).
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/Windows_ScheduledTaskFailed.gif" alt="Windows scheduled task failed"
                            width="600" height="63" /></dt><dd>Figure: My Windows Task failed because I 
                        changed my password - and I wasn't told about it!</dd></dl>
                <dl class="image">
                    <dt>
                        <img src="/ssw/Standards/BetterSoftwareSuggestions/Images/Windows_ScheduledTaskEmailRequired.gif"
                            alt="Windows Schedules task email required" width="441" height="325" /></dt><dd>
                        Figure: I should be able to enter an email address &quot;When the Windows Scheduled 
                        Task fails, email this address&quot; - and then I can solve the problem</dd></dl>
            </li>
            <li><a name="VPNFail"></a>
                <h2>
                    <strike>Notification on VPN disconnect</strike> - <span style="color: #ff0000">* Fixed by Vista *</span></h2>
                <p>
                    When a VPN connection drops out it does it so silently. This is not a good way 
                    to do things. It would be better to have a setting 'Redial on disconnect' that 
                    is set to on by default. Also, have a balloon notification 'The VPN link 'SSW' 
                    has failed. Click here to reconnect'. This balloon should appear whether the 
                    default reconnect setting is on or not.
                </p>
            </li>
            <li><a name="XPStartup"></a>
                <h2>
                    The Interface for the Startup on Windows XP is very poor</h2>
                <p>
                    Does the Windows XP team realise that a good interface includes appropriate 
                    sounds (link to Rule)? Well when you restart your PC you stare at the screen for 
                    a minute or so waiting the boredom cause me to start doing something else nearly
                    <!--SSW Code Auditor - Ignore next line(HTML)--> 
                    every time and the logon box comes up No noise and it waits there until I 
                    remember what I was doing. Then this noise plays after logging on, but way too 
                    early even prior to the desktop icons showing. It should play at the very end, a 
                    audio indication that you are ready to start work. Please play a little <a href="WindowsXPStartup.wav">
                    .wav file</a>
                    at the end of every long process...
                </p>
                The suggestionstill suits for Windows Vista.                
             
                
            </li>
            <li><a name="WirelessNetworkUI"></a>
                <h2>
                    Wireless Network List Needs Filter/Sort Capabilities</h2>
                <p>
                    This is a nice looking UI, but who designs a screen these days where you cant 
                    filter or sort? Instead, it should be a ListView control with:</p>
                <ul>
                    <li>sortable headings (like Outlook)</li>
                    <li>customisable fields to display (like Outlooks Field Chooser)</li>
                    <li>filterable (eg. Only show non secured wireless networks</li>
                    <li>Change the Strength field from a graph to a percentage</li>
                </ul>
                More about ListView, please see <a href="/SSW/standards/rules/RulestoBetterInterfaces-Controls.aspx#DatagridVSListview">Suggestions to better ListView</a>
                <dl class="image">
                    <dt>
                        <img src="Images/WirelessNetworks.gif" alt="Wireless Networks" width="660" height="503" /></dt><dd>
                        Figure: It would be nice to sort the results</dd></dl>
            </li>
            <li><a name="updatesoftware"></a>
                <h2>
                    Hey Microsoft - Go ahead and patch pirated software - here's how to make it work</h2>
                <p>
                    I don't think it is a good idea to disallow updates for pirated copies of 
                    Windows. I don't think it is a good holistic solution.
                </p>
                <p>
                    I thought this solution was interesting&nbsp; <a href="/ssw/Redirect/GreyHughesLettertoMS.htm"
                        class="external">Greg Hughes solution</a>
                </p>
            </li>
            <li><a name="URLColumn"></a>
                <h2>In MSConfig.exe add an extra column called &quot;URL for more information&quot; to the Startup tab</h2>
                <p>
                    The System Configuration Utility (MsConfig.exe) needs improving, we have so many 
                    startup items, but we can't confirm that all of them are safe and how we got it. 
                    Ideally we need a button &quot;More Information&quot; that would take us to a website that 
                    gives us information to decide if we really need it.
                    <br>
                    eg. The highlighted one (jusched) would take us to a website that tells us the 
                    basic info like manufacturer and description of the file.
                </p>
                <p>
                    Even better if we can see how often we use it.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/SystemConfigurationUtility.gif" width="600" height="370" alt="System Configuration Utility" /></dt><dd>
                        Figure: System Configuration Utility needs one extra column to help you learn what it is</dd></dl>
            </li>
            <li><a name="ScreenCapture"></a>
                <h2>
                    Why does the average worker not know how to do a screen capture of the current 
                    window?</h2>
                <p>
                    Edit - Copy Screen<br>
                    On every application.
                </p>
            </li>
            <li><a name="BetterSecurityLog"></a>
                <h2>The Security Event log should be able to filter by Description</h2>
                <p>
                    The Event log does have filtering which is great - but you cannot filter by 
                    Description.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/Windows_DescriptionField.gif" alt="Description Field" width="414"
                            height="465" /></dt></dl>
                <dl class="image">
                    <dt>
                        <img src="Images/Windows_MissingDescriptionFilter.gif" alt="Description Field Filter Missing"
                            width="414" height="465" /></dt></dl>
            </li>
            <li><a name="BetterAuditEvents"></a>
                <h2>
                    Auditing and Event Log - There needs to be a new event type in audit settings</h2>
                <dl class="image">
                    <dt>
                        <img src="Images/Windows_NeedNewAuditEvent.gif" alt="Missing Audit Event" width="377"
                            height="485" /></dt>
                       <dd>
                       Figure: Need to separate &quot;List Folder /Read Data&quot;, so if I open a folder and then execute a file, I will only see 2 user-related events in the log - 1 open and one execute.
                       </dd>
                       
                       </dl>
                <p>
                    The Security Event log is very verbose and is hard to navigate. The &quot;List 
                    Folder/Read data&quot; audit event needs to be separated into 2 different events, and 
                    we need to see what process name (not just the process ID at the time) that 
                    actually performed the operation.
                </p>
                <p>
                    In particular - a traverse of a directory (e.g. a user clicked on a folder to 
                    open it) should be easily distinguisable from a read by another program. At 
                    present, you cannot differentiate between you opening a folder (through 
                    explorer.exe) and another application opening a folder or file. If you open a 
                    folder, there could be 20 or so events recorded in the event log - mostly 
                    &quot;ReadData&quot; events - and these could be by several applications. Ideally, if I 
                    open a folder and then execute a file, I should only see 2 user-related events 
                    in the log - 1 open and one execute.
                </p>
            </li>
            <li><a name="EventViewerDeleteAll"></a>
                <h2>
                    Event Viewer - Add a right-click menu &quot;Delete all items of this type&quot;</h2>
                <p>
                    With this menu it will be easy to clean up items of same type.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/EventViewer_DeleteAll.jpg" alt="Windows Event Viewer" width="834"
                            height="311" />
                    </dt>
                    <dd>
                        Figure: Windows Event Viewer needs a right-click menu item like &quot;Delete all 
                        items of this type&quot;</dd></dl>
            </li>
            <li><a name="Assist"></a>
                <h2>
                    Assist the process of choosing the correct columns</h2>
                <p>
                    It would be nice to add one sample record so you can see sample data</p>
                <dl class="image">
                    <dt>
                        <img src="Images/ChoosingColumns.gif" alt="choosing columns" width="697" height="508" />
                    </dt>
                    <dd>
                        Figure: choosing the display columns for a folder</dd></dl>
            </li>
            <li><a name="TaskManagerProcess"></a>
                <h2>
                    Task Manager - Show the process of threads to go away</h2>
                <p>
                    Some applications take long time for the process to go away , so we suggest to 
                    display some type of progress bar or hyperlink to types of reasons.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/TaskManagerProcess.gif" alt="show the process of threads going away"
                            width="605" height="613" />
                    </dt>
                    <dd>
                        Figure: without progress bar, it is hard to know why Outlook takes 15 minutes to 
                        go away</dd></dl>
            </li>
            <li><a name="TaskManagePrompt"></a>
                <h2>
                    Task Manager - Add some prompts for threads
                </h2>
                <p>
                    Sometimes you are watching the task manager window for minutes......<br />
                    When one dies have it:<br />
                    <ul>
                        <li>Play a little sound</li>
                        <li>Change to red</li>
                        <li>Move to the top for just one second with the text &quot;(gone)&quot;</li>
                        <li>Then disappear</li>
                    </ul>
                </p>
            </li>
            <li><a name="PowerMeterBalloon"></a>
                <h2>
                    Power Meter - Add a balloon when it reaches 100%
                </h2>
                <p>
                    Often I am recharging multiple batteries after being on the road. Please add a 
                    checkbox '[x] Show when battery hits 100%' in the Power Meter form.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/PowerMeter.gif" alt="Windows XP Power Meter" />
                    </dt>
                    <dd>
                        Figure: Charging in Power Meter (from Windows XP)
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/VistaPowerMeter.gif" alt="Vista Power Meter" />
                    </dt>
                    <dd>
                        Figure: Charging in Power Meter (from Windows Vista)
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/BatteryMonitor.gif" alt="Battery Monitor" />
                    </dt>
                    <dd>
                        Figure: Currently I use a great 3rd Party tool called Battery Monitor from <a href="http://www.exs-studios.com" target="_blank">http://www.exs-studios.com</a>
                    </dd>
                </dl>
            </li>
            <li><a name="ShutdownEventTracker"></a>
                <h2>
                    Shutdown Event Tracker - Add a link to discover the event log</h2>
                <p>
                    When trying to shut down the windows 2003 server, it will ask for the reason of 
                    shutdown.<br />
                    <dl class="image">
                        <dt>
                            <img src="images/Win2003ShutdownEvent.JPG" alt="Shutdown event tracker " />
                        </dt>
                        <dd>
                            Figure: The shutdown event tracker in Windows Server 2003
                        </dd>
                    </dl>
                    <dl>
                        <dt>
                            <img src="images/Win2008ShutdownEvent.JPG" border="0" /><br />
                        </dt>
                        <dd>
                            Figure: the shutdown event tracker in Windows Server 2008</dd></dl>
                    <br />
                    Asking server administrators for this information before shutting down is a 
                pain. They need to know what they get. So add a link to aid discoverability e.g. 
                &quot;See restart data&quot;.<br />
                    <dl class="image">
                        <dt>
                            <img src="images/Win2003ShutdownEvent2.JPG" alt="Event log " />
                        </dt>
                        <dd>
                        <!--SSW Code Auditor - Ignore next line(HTML)-->
                            Figure: The event log in windows server 2003
                        </dd>
                    </dl>
                    <dl>
                        <dt>
                            <img src="images/Win2008ShutdownEvent2.JPG" border="0" /><br />
                        </dt>
                        <dd>
                        <!--SSW Code Auditor - Ignore next line(HTML)-->
                            Figure: The event log in windows server 2008</dd></dl>
            </li>
            <li> <a name="Vista"></a>
                <h2>  <strike>Windows Vista? What?</strike> - <span style="font-weight: bold; color: red"> * Fixed with Windows 7 * </span></h2>
                            
        
                        <p>
                            Names should be chronological, just like software should be named v1, v2, v3 etc.</p>
                        <p>
                            I remember hearing that the Windows codename &quot;Chicago&quot; would actually be called 
                            Windows 95 and thinking that was great. And it worked well as we moved to 
                            Windows 98 ... And then it stopped.</p>
                        <p>
                           Note: 
                            We have the server versions sounding normal like Windows Server 2003, ISA 2004, 
                            Exchange 2003 etc. 
                        </p>
            </li> 
             <li> <a name="CommentField"></a>
               <h2>
                   Shortcuts - Encourage more applications to use the Comment Field</h2>
                
                 <p>Make the comment 2 or 3 lines high. </p>  
                 <p>Mention that it shows to the end user via a tooltip when you hover over it.</p>
                 <br/>
                 <p>PS: Media Center is one of the few programs to make good use of the Comment field.</p>
                  
                   <dl class="image">
                        <dt>
                            <img src="images/commentfield.JPG" alt="Make the Comment Field higher " />
                        </dt>
                        <dd>
                            Figure: Make the Comment field be 2 or 3 lines high
                        </dd>
                    </dl>   
            </li> 
             <li> <a name="PauseDownloadingOption"></a>
               <h2>
                   Windows Update - Give option to pause downloading when on a slow connection</h2>
                   <dl class="image">
                        <dt>
                            <img src="images/WindowsDownload.JPG" alt="They should have an option to pause the downloading process. " />
                        </dt>
                        <dd>
                            Figure: Need right click menu to "Pause for 1 hour", "Pause for 4 hours", etc
                        </dd>
                    </dl>   
            </li> 
            <li>
            <a name="LocationField"></a>
               <h2>Printers need the location field to show</h2>
               <dl class="image">
                     <dt>
                        <img src="images/LocationFieldForPrinter.JPG" alt=" Printer needs the location field to show " />
                     </dt>
                      <dd>
                        Figure: Windows 7 - Printers need the location field to show  
                      </dd>
                </dl>               
            </li>
                                 
    </ol>                       
        <h2>
            Acknowledgements</h2>            
    </div>    
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan </a>
       
    </p>
</asp:Content>
