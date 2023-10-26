<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Vista Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <p>
        <p>
            <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
                style="{width: 100%}">
                <tr>
                    <td>
                        <ol>
                            <li><a href="#UpdateProgress">The processes form should show the percentage complete status</a></li>
                            <li><a href="#FolderIcon">The folder's icon should be different if it contains subfolders</a></li>
                            <li><strike><a href="#CopyFile">Copy a large file on Vista is very slow</a></strike><strong><span
                                style="color: #ff0000"> * Fixed by Vista Service Pack 1 *</span></strong></li>
                            <li><a href="#NetworkUsage">This should add a button "Usage Meter" and show the stats
                                by hour, by day, by month...</a></li>
                            <li><a href="#CheckNow">This should add a button "Check Now" on the problem recovered
                                form.</a></li>
								<!--SSW Code Auditor - Ignore next line(HTML)-->  
                            <li><a href="#Retry">Need a "Retry" button</a></li>
                            <li><a href="#Extension">Explorer is missing the "Extension" option in the right click</a></li>
                            <li><a href="#SaveFormSize">Add option "Save Current Window Size"</a></li>
                            <li><a href="#PauseUpdate">Add "Pause" and "Resume" buttons on Windows Update form.</a></li>
                            <li><a href="#BatteryMonitor">Add sound alerts in Battery Monitor.</a></li>
                            <li><a href="#InternetShare">Internet connection sharing should be easy.</a></li>
                            <li><a href="#BlueOne">Help me get rid of blue screens and computer freezes #1</a></li>
                            <li><a href="#BlueTwo">Help me get rid of blue screens and computer freezes #2</a></li>
                            <li><a href="#ReturnToGrid">When I click "OK" I want to return to a grid with all columns
                                of data</a></li>
							<li><a href="#Search">All Vista's Grids should have search textbox</a></li>
							<li><a href="#Reliability">Show icons in Reliability and Performance Monitor</a></li>
							<li><a href="#IPConfig">IP - Alternate Configuration</a></li>
							<li><a href="#ShowMoreInfo">Show me why my PC slow</a></li>
                        </ol>
                    </td>
                </tr>
            </table>
            <ol>
                <li>
                    <h2>
                        <a name="UpdateProgress"></a>The processes form should show the percentage complete
                        status</h2>
                    <p>
                        The processes form should show the percentage complete status in the taskbar
                    </p>
                    <p>
                        We have a rule better to interfaces about this, please see <a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Windows-Applications.aspx#ProgressStatus">
                            Long Process - Do you show the status of progress bar on winform's title?</a>
                    </p>
                    <dl class="badImage">
                        <dt>
                            <img src="images/UpdateProgress.gif" border="0" width="953" height="646" /></dt>
                        <dd>
                            Figure: Progress form without the percentage complete status</dd>
                    </dl>
                </li>
                <li>
                    <h2>
                        <a name="FolderIcon"></a>The folder's icon should be different if it contains subfolders</h2>
                    <p>
                        In the vista, when you browse folders by extra large/large/medium icons, you will
                        find the icons is different from others if the folders contain subfolders.<br />
                        <img src="images/VistaFolder2.jpg" border="0" /><br />
                        <img src="images/VistaFolder1.jpg" border="0" />
                    </p>
                    <p>
                        But when you choose small size icons, they become the same. The icon should be different
                        too.<br />
                        <img src="images/VistaFolder3.jpg" border="0" />
                    </p>
                </li>
                <li>
                    <h2>
                        <a name="CopyFile"></a><strike>Copy a large file on Vista is very slow</strike>
                        - <span style="color: #ff0000">* Fixed by Vista Service Pack 1 *</span></h2>
                    <p>
                        When you need to copy a large file, you will find file operations on Vista are much
                        slower than XP. It might due to the "Calculating time remaining..." operation that
                        occurs before the file copy/move happens. Eg. Copy a 500MB file from a PC to a server
                        on a Gigabit connection, and it's about 2 minutes as the thing keeps trying to calculate
                        the time it will take to do the job!!! And to make matters worse, If you click the
                        "More Info" button you'll notice that it knows how much data needs to be transferred,
                        it also knows the transfer rate. So there is some very inefficient code here.
                    </p>
                    <p>
                        Note: An XP box can move the file off the Vista machine onto the network, in about
                        25 seconds.
                    </p>
                    <p>
                        Question: Is there a hack to turn off this "Calculating..." thing? It's a killer
                        on large file operations...
                    </p>
                    <p>
                        It is unbelievably fast to transfer files using <a href="/ssw/Redirect/BeyondCompare.htm">
                            Beyond Compare</a>. Maybe see if it works on Vista.
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images\CopyFile.gif" /></dt>
                        <dd>
                            Figure: Copy file on Vista</dd>
                    </dl>
                </li>
                <li>
                    <h2>
                        <a name="NetworkUsage"></a>This should add a button "Usage Meter" and show the stats
                        by hour, by day, by month...</h2>
                    <p>
                        This should add a button "Usage Meter" and show the stats by hour, by day, by month
                        - essentially so I don't need install the <a href="/ssw/Standards/DeveloperGeneral/WindowsTools.aspx#DUMeter"
                            target="_blank">DUMeter</a><br />
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images\NetworkUsage.jpg" alt="Network usage button should be there" /></dt>
                        <dd>
                            Figure: The network usage button should be in this form.</dd>
                    </dl>
                </li>
                <li>
                    <h2>
                        <a name="CheckNow"></a>This should add a button "Check Now" on the problem recovered
                        form.</h2>
                    <p>
                        This form needs another button "Check Now" for when your Internet connection comes
                        back:
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images\AddCheckNow.jpg" alt="Should add 'Check Now' button" /></dt>
                        <dd>
                            Figure: The 'Check Now' button should be added on this form.</dd>
                    </dl>
                </li>
                <li>
                    <h2>
					<!--SSW Code Auditor - Ignore next line(HTML)-->  
                        <a name="Retry"></a>Need a "Retry" button</h2>
                    <p>
                        For when your Internet connection comes back.
                    </p>
                    <dl class="image">
                        <dt>
						<!--SSW Code Auditor - Ignore next line(HTML)-->  
                            <img src="Images/Retry.jpg" /></dt>
                        <dd>
						<!--SSW Code Auditor - Ignore next line(HTML)-->  
                            Figure: The place that The "Retry" button be added
                        </dd>
                    </dl>
                </li>
                <li>
                    <h2>
                        <a name="Extension"></a>Explorer is missing the "Extension" option in the right
                        click</h2>
                    <p>
                        I find every time I reinstall Vista, I seem to need to change lots of defaults to
                        the other way eg. Show Hidden Files etc.
                    </p>
                    <p>
                        Anyway the feature from Windows XP I miss the most almost every day is using the
                        file extension.<br />
                        The problem with Vista is that sometimes 'Type' groups together File Extensions,
                        but I don't want BMP, GIF, JPEG and MIDI's grouped together.
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/VistaExtension.jpg" /></dt>
                        <dd>
                            Figure: Please add 'Extension' to the right click, I don't need Vista's intelligent
                            grouping of similar file types!</dd>
                    </dl>
                </li>
                <li>
                    <h2>
                        <a name="SaveFormSize"></a>Add option "Save Current Window Size"</h2>
                    <p>
                        The size of window should be able to save, so need add a option in menu:
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/Vista_SaveFormSize.jpg" alt="Should add option in menu" /></dt>
                        <dd>
                            Figure: Should add a option to save window size</dd>
                    </dl>
                </li>
                <li>
                    <h2>
                        <a name="PauseUpdate"></a>Add "Pause" and "Resume" buttons on Windows Update form.</h2>
                    <p>
                        On a GPRS connection, I don't want to "Stop" the download, I would prefer a "Pause"
                        and a "Resume" button:
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/PauseUpdate.jpg" alt="Should add Pause and Resume buttons" /></dt>
                        <dd>
                            Figure: Should add Pause and Resume buttons on this form.</dd>
                    </dl>
                </li>
                <li>
                    <h2>
                        <a name="BatteryMonitor"></a>Add sound alerts in Battery Monitor.</h2>
                    <p>
                        There is a battery icon in system tray to display the percentage of charge, but
                        it isn't enough.
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/Battery.gif" alt="Display the status of battery" /></dt>
                        <dd>
                            Figure: Display the status of battery.</dd>
                    </dl>
                    <p>
                        I would prefer sound alerts when charging starts/stops, battery is full charged,
                        or battery charge drops under a predefined percentage. If so, I don't need to worry
                        about when will my laptop auto sleep.
                    </p>
                    <a href="../DeveloperGeneral/LaptopTools.aspx#BatteryMonitor">The Best 3rd Party Laptop
                        Tools - Laptop Battery Monitor</a> supplies this functionality.
                </li>
                <li>
                    <h2>
                        <a name="InternetShare"></a>Internet connection sharing should be easy.</h2>
                    <p>
                        It's too hard to share my Internet with another computer, eg. when in a hotel. On
                        XP it is hard, on Vista it is harder!
                        <br />
                        Currently on XP, the way to share your Internet is to:
                        <ul>
                            <li>Share your LAN connection.</li>
                            <li>Go to Wireless Network Connection properties, second tab, and add a "Wireless Network
                                Properties" (Remember to check the last checkbox - Ad Hoc network). </li>
                            <li>Connect to the Wireless Network you just added.</li>
                        </ul>
                        Note: Many advanced users I would expect to be able to get the above going, end
                        up needing to read this XP article <a href="/SSW/Redirect/Microsoft/WinXPWirelessNetwork.htm">
                            Making the Wireless Home Network Connection in Windows XP Without a Router</a>
                        on share the Internet connection using Windows XP, so really it is not simple enough.
                    </p>
                    <p>
                        <strong>Currently on Vista</strong> I was unable to get it going. More information
                        on sharing the Internet on Vista is at <a href="/SSW/Redirect/Microsoft/InternetConnectionSharing.htm">
                            Using ICS (Internet Connection Sharing)</a>.
                        <br />
                        Following these steps, did not work because I got the error message "An error occurred
                        while Internet connection sharing was being enabled (null)".
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/InternetShareError.gif" alt="Share Internet Error" /></dt>
                        <dd>
                            Figure: Share Internet Error.</dd>
                    </dl>
                    <p>
                        <strong>How it should work</strong>
                        <br />
                        Basically you should just need to right click the connection you want to share and
                        select an option: "Share my Internet with Others via my wireless".
                        <br />
                        Which takes you through a wizard to:
                        <ul>
                            <li>Turn on the option in LANs properties.</li>
                            <li>Add a new Wireless connection and give it a name.</li>
                            <li>View wireless connections and connect to yourself.</li>
                        </ul>
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/InternetShareOption.gif" alt="Share Internet Option" /></dt>
                        <dd>
                            Figure: Need a new option here called "Share my Internet with Others via my wireless".</dd>
                    </dl>
                </li>
                <li>
                    <h2>
                        <a name="BlueOne"></a>Help me get rid of blue screens and computer freezes #1</h2>
                    <p>
                        When I am working on frustrating PC problems... I am wondering "How can I get rid of blue screens and computer freezes?"
                    </p>
                    <p>
                        So then I need to go through all my devices and manually updating drivers for everything...
                    </p>
                    <p>
                        Instead I want to allow multiple selection in device manager and "Update Driver Software" for all selected items... that would have saved me a bunch of time and annoyance.
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/Vista_BlueOne_1.jpg" /></dt>
                        <dd>
                            Figure: I should not be forced to click "Update Driver" one by one...</dd>
                    </dl>
                </li>
                <li>
                    <h2>
                        <a name="BlueTwo"></a>Help me get rid of blue screens and computer freezes #2</h2>
                    <p>
                        Currently looking at 'Device Manager' does not help you see what Device is having problems.
                    </p>
                    <p>
                        Eg. A colleague told me he looked in the 'Reliability and Performance Monitor' in Vista, and discovered that the vast majority of blue screens had implicated the AuthentTec driver for the fingerprint reader on his HPQ nc8430 laptop. 
                    </p>
                    <p>
                        Disabling the fingerprint reader (which he never used anyway) caused 98% of my blue screen problems to immediately vanish.
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/Vista_BlueOne_2.jpg" /></dt>
                        <dd>
                            Figure: Need a column "Errors in Reliability Monitor" with a hyperlink to the below form</dd>
                    </dl>
                    <dl class="image">
                        <dt>
                            <img src="Images/Vista_BlueOne_3.jpg" /></dt>
                        <dd>
                            Figure: Add a filter eg. combo box with Device Drivers "Dell Wireless 360 Bluetooth Module"</dd>
                    </dl>
                </li>
                <li>
                    <h2>
                        <a name="ReturnToGrid"></a>When I click "OK" I want to return to a grid with all columns of data</h2>
                    <p>
                        Eg. 'Driver Provider', 'Driver Date', 'Driver Version', 'Digital Signer'
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/Vista_BlueOne_1.jpg" /></dt>
                        <dd>
                            Figure: After click 'OK', let me return to a grid with all columns of data </dd>
                    </dl>
                </li>
				<li>
                    <h2>
                        <a name="Search"></a>All Vista's Grids should have search textbox</h2>
                    <p>
                        Any grid of data should have a "search box" - Outlook is a good example.
                    </p>
					<p>
						Ideally it should also support specific searching eg. "DNS Status: Started" 
					</p>
                    <dl class="image">
                        <dt>
                            <img src="Images/VistaSearch_01.jpg" /></dt>
                        <dd>
                            Figure: I want to find any services that have DNS in their name or description - give me a search box like Outlook </dd>
                    </dl>
                </li>
                <li>
                    <h2>
                        <a name="Reliability">&nbsp;</a>Show icons in Reliability and Performance Monitor</h2>
                    <p>
                        Icons used in the graph, should also be shown in each record of the bottom grid.
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/ReliabilityMonitor.jpg" /></dt>
                        <dd>
                            Figure: Icons should be show the bottom grid </dd>
                    </dl>
                </li>
                <li>
                    <h2>
                        <a name="IPConfig"></a>IP - Alternate Configuration
                    </h2>
                    <p>
                        Add a notes field eg. "I needed this because xxxx"
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/IP_01.jpg" /></dt>
                        <dd>
                            Figure: No note field for the configuration </dd>
                    </dl>
                </li>
                <li>
                    <h2>
                        <a name="ShowMoreInfo"></a>Show me why my PC slow
                    </h2>
                    <p>
                        This is my problem with Vista, it is sometimes slow and I don't know what is going on.
                    </p>
                    <p>
                        For example, my PC might be slow and I want to fix it. How do I see:
                    </p>
                    <ul>
                        <li>Search index is running</li>
                        <li>Disk Defrag is running</li>
                        <li>Outlook is cleaning up free space</li>
                        <li>Outlook is syncing (even though I was told it to 'work offline'!)</li>
                        <li>The power cable is out and the power save has told the processer to drop down in speed</li>
                        <li>etc</li>
                    </ul>
                </li>
            </ol>
            <h2>
                Acknowledgements</h2>
            <p>
                <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>

            </p>
    </p>
    </p>
</asp:Content>
