<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Windows 7 Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
    <div class="TableOfContents">
        <ol>
            <!--SSW Code Auditor - Ignore next line(HTML)-->
            <li><a href="#Reboot">Help me save time - reboot and log on as the same user </a></li>
            <li><a href="#RestoreExplorer">Restore explorer windows after crash </a></li>
            <li><a href="#EventViewer">Event Viewer usability suggestions</a></li>
            <li><a href="#DelayIssue">Windows 7 should tell me what is causing the delay</a></li>
            <li><a href="#EventLog">Event Viewer - Provide a drill through to the event log (aka Allow me to 'watch a service')</a></li>
            <li><a href="#IISFeaturesOn">Windows 7 - turning IIS features on... I don't get this UI </a></li>
            <li><a href="#RebootAndLogin">Help me save time - reboot and login as the same user</a></li>
            <li><a href="#ShutdownUI">Unexpected Shutdown UI - Suggestions for Windows 2008 R2 (2 little UI ones) </a></li>
            <li><a href="#StickyMenus">Sticky menus - A general change for all menu items - my suggestion when invoking a dialog</a></li>
            <li><a href="#SizeOfWin7SP1">Help me know the Size of Windows 7 SP1 </a></li>
            <li><a href="#FrontCamera">Suggestion &#8211; Give us a front camera on the WP7</a></li>
            <li><a href="#DifferentKeyboard">Would you like to try a different Win8 keyboard?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="Reboot"></a>
                    <!--SSW Code Auditor - Ignore next line(HTML)-->
                    Help me save time - reboot and log on as the same user</h2>
                <dl class="image">
                    <dt>
                        <img src="images/Reboot.JPG" alt=" Restart and login as current user " />
                    </dt>
                    <dd>
                        <!--SSW Code Auditor - Ignore next line(HTML)-->
                        Figure: Add one more choice "Restart and Log on as current user". I would use this for 90% of my reboots. 
                    </dd>
                </dl>
            </li>
            <li>
                <h2><a name="RestoreExplorer"></a>Restore explorer windows after crash </h2>
                <p>
                    IE does a good job at restoring your windows after a crash.<br />
                    The 'Restore previous folder windows at logon' should also work when Windows crashes.<br />
                    Bottom line... Design for failure.<br />
                    PS: Also you should not be turning on and off options when you click in the red circle area. That is selecting an option, not enabling and disabling the option.
                </p>
                <dl class="image">
                    <dt>
                        <img src="images/FolderOption.JPG" alt="Folder Option " />
                    </dt>
                    <dd>Figure: This option doesn't do enough
                    </dd>
                </dl>
            </li>
            <li>
                <h2><a name="EventViewer"></a>Event Viewer usability suggestions</h2>
                <p>I wonder if we should make the Event Viewer more like an inbox with a "read" and "unread" status for events</p>
                <p>I would like to see a count in the left navigation (like Outlook)</p>
                <ul>
                    Other suggestions:
               <li>I personally would only like them on "errors"</li>
                    <li>I would like a balloon in the task tray "You have 18 unread errors in your event viewer"</li>
                    <li>I would like an extra menu.  View | Show Only Errors</li>
                </ul>
                <dl class="image">
                    <dt>
                        <img src="images/EventViewer.JPG" alt="Event Viewer" />
                    </dt>
                    <dd>Figure: I would like to see a count in the left navigation (like Outlook)
                    </dd>
                </dl>
            </li>
            <li>
                <h2><a name="DelayIssue"></a>Windows 7 should tell me what is causing the delay</h2>
                <p>
                    I am really not sure who is at fault here.<br />
                    All I know outlook is super slow... but my processor seems idle... and I expect that Windows 7 should give me some indication what 'thing' is causing the delays.
                </p>
                <dl class="image">
                    <dt>
                        <img src="images/CPUIdle.JPG" alt="CPU Idle" />
                    </dt>
                    <dd>Figure: If my CPU is idle, why is Outlook super slow?
                    </dd>
                </dl>
            </li>
            <li>
                <h2><a name="EventLog"></a>Event Viewer - Provide a drill through to the event log (aka Allow me to 'watch a service') </h2>
                <p>Today I was assuming things were going wrong with my search (in this case they were not), but here are some suggestions.</p>
                <ol>
                    Assuming I am looking at this service list, I should be able:
               <li>to filter to the ones that recently restarted</li>
                </ol>
                <ol>
                    Then on the Services Properties Dialog I should be able to:
                <li>See I have '531 events' for this service - add a "View History (531 events)"</li>
                    <li>Drill through to the event log (to see the '531 events') - automatically 'Create custom view'</li>
                    <li>Create an alert (aka 'Display a message') - provide a shortcut to the 'Attach task to this custom view'</li>
                </ol>
                <dl class="image">
                    <dt>
                        <img src="images/ServiceProperties.JPG" alt="Service Properties" />
                    </dt>
                    <dd>Figure: This Service Properties Dialog needs 3 things added to it
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="images/ViewHistory.JPG" alt="View History" />
                    </dt>
                    <dd>Figure: Add "View History (531 events)"
                    </dd>
                </dl>
                <p><b>More information </b></p>
                <p>You can do the above manually, but not a developer I asked knew it was possible</p>
                <dl class="image">
                    <dt>
                        <img src="images/CreateCustomView.JPG" alt="Create custom view" />
                    </dt>
                    <dd>Figure: Create Custom View
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="images/SelectSearch.JPG" alt="Select Search" />
                    </dt>
                    <dd>Figure: Select 'Search'
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="images/531Events.JPG" alt="531 events" />
                    </dt>
                    <dd>Figure: See 531 events
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="images/AttachTaskToThisCustomView.JPG" alt="Attach Task To This Custom View" />
                    </dt>
                    <dd>Figure: In the right navigation select 'Attach Task To This Custom View'
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="images/DisplayAMessage.JPG" alt="Display A Message" />
                    </dt>
                    <dd>Figure: 'Display a message'
                    </dd>
                </dl>
                <p><b>For Reference</b></p>
                <p>It would be nice to see some consistency with the 'View History' experience that you get in SQL 2008 R2 Management Studio jobs</p>
                <dl class="image">
                    <dt>
                        <img src="images/SQLManagementJob.JPG" alt="SQL Management Job - view history" />
                    </dt>
                    <dd>Figure: SQL Management Jobs have a View History 
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="images/LogFileSummary.JPG" alt="Log File Summary" />
                    </dt>
                    <dd>Figure: ...that shows you the problems 
                    </dd>
                </dl>
            </li>
            <li>
                <h2><a name="IISFeaturesOn">Windows 7 - turning IIS features on... I don't get this UI</a></h2>
                <dl class="image">
                    <dt>
                        <img src="images/ColorWithoutSelection.JPG" alt="The color of the checkbox changes without selection. " />
                    </dt>
                    <dd>Figure: checking this, changes the checkbox color, but selects nothing. 
                    </dd>
                </dl>
                <p>
                    I check things... sometimes I get all, sometimes I get a few.... and sometimes I get none.<br />
                    Is this a bug or intentional?
                </p>
            </li>
            <li>
                <h2><a name="RebootAndLogin">Help me save time - reboot and login as the same user</a></h2>
                <dl class="image">
                    <dt>
                        <img src="images/RestartAndLogin.JPG" alt="Restart and login as the same user " />
                    </dt>
                    <dd>Figure: Add one more choice "Restart and Login as current user". I would use this for 90% of my reboots. 
                    </dd>
                </dl>
            </li>
            <li>
                <h2><a name="ShutdownUI">Unexpected Shutdown UI - Suggestions for Windows 2008 R2 (2 little UI ones)</a></h2>
                <p>
                    Give us a "Retry" button on here.<br />
                    And a hyperlink to "Community Suggestions for this problem".  (because Windows never has given me any help after submitting my problem)
                </p>
                <dl class="image">
                    <dt>
                        <img src="images/RetryButtonMissing.JPG" alt="Missing the Retry Button " />
                    </dt>
                    <dd>Figure: Missing a "Retry" button (I didn't have internet when it first popped up)  
                    </dd>
                </dl>
                <p>PS: I assume these 2 suggestions both apply for Windows 7</p>
            </li>
            <li>
                <h2><a name="StickyMenus">Sticky menus - A general change for all menu items - my suggestion when invoking a dialog </a></h2>
                <p>Probably a Windows suggestions, but here goes...</p>
                <dl class="image">
                    <dt>
                        <img src="images/InvokeDialog.JPG" alt="When you invoke a dialog " />
                    </dt>
                    <dd>Figure: Currently when you invoke a dialog from a menu item 
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="images/MenuMissing.JPG" alt="The menu were missing when the form appears. " />
                    </dt>
                    <dd>Figure: The form appears, but the menu it came from disappears
                    </dd>
                </dl>
                <ul>
                    Does anyone think it would be an improvement, to have the original menu item still visible in the background? (until they continue or cancel the dialog)
                <li>It could be dimmed in the background</li>
                    <li>It could fade away after 3 seconds</li>
                </ul>
                <p>I don't mind - you can tell me if I have gone troppo :)</p>
                <dl class="image">
                    <dt>
                        <img src="images/StartAtWin8.JPG" alt="It's better to start at Windows 8 " />
                    </dt>
                    <dd>Figure: Obviously it would be preferable to start at Windows 8, with the Office and VS teams following suite
                    </dd>
                </dl>
            </li>
            <li>
                <h2><a name="SizeOfWin7SP1">Help me know the Size of Windows 7 SP1 </a></h2>
                <p>I understand the download size is different, depending on the specific needs of the PC. However the range is very large and plenty of users want to know more information, in order to decide if they have time *<b>right now</b>* to download.</p>
                <p>What is the biggest factor that will influence the size?</p>
                <ul>
                    A few suggestions:
                 <li>Give me some idea that helps me know if I am at the lower end (73 MB) or the higher end (892 MB)</li>
                    <li>Add something to one of the 2 links at the bottom right</li>
                    <li>Don't change measuring size ?that is from KB to MB. Really annoying. I would much prefer to see 0.3 MB (than the current 391 KB)</li>
                </ul>
                <dl class="image">
                    <dt>
                        <img src="images/SizeOfWin7SP1.JPG" alt="The size of Windows 7 SP1" />
                    </dt>
                    <dd>Figure: Help me know the size of Windows 7 SP1 
                    </dd>
                </dl>
            </li>
            <li>
                <h2><a name="FrontCamera">Suggestion &#8211; Give us a front camera on the WP7</a></h2>
                <p>
                    Mmmm I wonder if I will get others agreeing with this request.<br />
                    <br />
                    When I first got my iPhone4 I didn't use this feature, so I didn't consider it a front camera important. Whether the WinPhone7 had it, or not, I just didn't care. 
                    <br />
                    <br />
                    But things have changed for me, and these days I am doing more and more recordings (mainly when I am a scrum master), so I don't want a Windows Phone 7 now, since they are missing it this thing I have grown to love.<br />
                    (Interestingly I don't think I care about making facetime phone calls).
                    <br />
                    <br />
                    So I would like to see Microsoft change the minimum specs for the Windows Phone 7 so they force the hardware to have a front camera.<br />
                    FYI this is the current minimum specs - <a href="http://www.windowsmobile7.com/minimum-specs-for-windows-phone-7">http://www.windowsmobile7.com/minimum-specs-for-windows-phone-7</a><br />
                    <br />
                    And I guess for others especially the young kids, video calls are already important and sure to become bigger in the future&#8230;.. bandwidth and traffic are getting cheaper and cheaper you know.
                </p>

                <p>
                    So I am sad there is no front camera on the WP7 and I would love to know what the logic was when the team said "Let's cut the requirement for a front camera."<br />
                    And I am sure there were other things that also got cut, that were *even* higher up the list too... I would love to know what those were too.
                </p>
                <dl class="image">
                    <dt>
                        <img src="images/FacetimeCamera.JPG" alt="Facetime camera " />
                    </dt>
                    <dd>Figure: iPhone has a front camera for "facetime", the WP7 hardware is missing this :-( 
                    </dd>
                </dl>
            </li>

            <li>
                <h2>Would you like to try a different Win8 keyboard?</h2>
                <a name="DifferentKeyboard"></a>
                <p>This is not important today, but it is worth investigating because it could be a cool differentiator from Apple and Google (who lock you out of changing the keyboard).</p>
                <p>We know the QWERTY keyboard was designed to slow typing down... surely one day a large company will fix this obvious inefficiency.</p>
                <p>
                    This guy John Lambie sounds a bit quirky, but he could be onto a winner <a href="http://www.smh.com.au/digital-life/digital-life-news/new-keyboard-layout-easy-as-abc-20120710-21tns.html">New keyboard layout easy as ABC</a>
                </p>
                <dl class="image">
                    <dt>
                        <img src="images/3rd-party-keyboard.jpg" alt="3rd party keyboard" /></dt>
                    <dd>Figure: Allow swapping out the keyboard and give an option (Settings | Keyboard | Choose 3rd Party) to choose a 3rd party keyboard</dd>
                </dl>
            </li>

        </ol>
        <h2>Acknowledgements</h2>
    </div>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan </a>

    </p>
</asp:Content>
