<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Better XDA II Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath SkipLinkText="" ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
    <div>
    <img src="Images/XDAII.gif" alt="XDA II" width="116" height="111" align="right"/>
    <p>
        As with every new electronic device I purchase, I have many ideas on how they can
        be improved to provide the user with more information, and an easier way to understand
        what the device is doing!</p>
    <p>
        Here is a list of some of the improvements I have come up with that would help me
        like the XDA II more!
    </p>
    </div>
    <div class="TableOfContents">
        <b>Better XDA II (Phone/PDA/Camera/Recorder) Suggestions</b>
        <ol>
            <li><a href="#CallWaiting">Bug with call waiting</a></li>
            <li><a href="#SyncIssues">Active sync issues</a></li>
            <li><a href="#AutoNum">Auto Suggest Numbers</a></li>
            <li><a href="#Sound">Increase Sound</a></li>
            <li><a href="#Power">UI on Settings</a></li>
            <li><a href="#UIphone">UI on the Phone</a></li>
            <li><a href="#CallHistory">Call History</a></li>
            <li><a href="#TodayPage">"Current Suburb" option</a> </li>
            <li><a href="#RecSub">Record the suburb</a></li>
            <li><a href="#NumPrograms">Show the number of running programs in title bar</a></li>
            <li><a href="#Time">Use of the "Country" field in Contacts</a></li>
            <li><a href="#TurningOff">Turning off the phone</a></li>
            <li><a href="#Help">UI needs to give more help</a></li>
            <li><a href="#Map">Add a world map and world time</a></li>
            <li><a href="#NoCancel">There's no cancel button</a></li>
            <li><a href="#SaveContacts">In "Contacts" there is no option to NOT save your changes</a></li>
            <li><a href="#WirelessModem">Make the device work like a wireless modem for your Laptop</a></li>
        </ol>
    </div>
    <ol>
        <li>
            <h2>
                <a name="CallWaiting"></a>Bug with call waiting</h2>
            <p>
                The XDA II has a bug when you try to switch between two callers.
                <br>
                <br>
                When you are one a call to John and another call comes in from Hannah, the XDA II
                automatically puts the first caller (John) on hold. However, the second call from
                Hannah is not picked up.<br>
                <br>
                You need to press 'Hold' and then 'Swap' to talk to the second caller (Hannah).
                This is a bug that needs to be fixed!
                <!-- Fix BUG when you are on a call and a 2nd call comes in, then it automatically puts the call on hold  
			it doesnt even pick up the new call. You need to press Hold, then Swap -->
            </p>
        </li>
        <li>
            <h2>
                <a name="SyncIssues"></a><strike>Active sync issues -</strike> <span class="smallredfont">
                    fixed with Active Sync 3.8</span></h2>
            <p>
                <strike>There are active sync issues with the XDA II that need to be fixed.
                    <!-- Fix the active sync issues (link to other page)  -->
                </strike>
            </p>
        </li>
        <li>
            <h2>
                <a name="AutoNum"></a>Auto Suggest Numbers</h2>
            <p>
                The Smart Phone has the ability to recognize phone numbers whilst you are typing
                in the number. It provides a list of phone numbers that match the current digits
                you have already entered. This capability is a nice feature that makes dialling
                easier in the XDA II also.
            </p>
        </li>
        <!--4-->
        <li>
            <h2>
                <a name="Sound"></a>Increase Sound</h2>
            <p>
                Even the loudest sound is not loud enough on the XDA II !
            </p>
        </li>
        <!--5-->
        <li>
            <h2>
                <a name="Power"></a>UI on &quot;Settings</h2>
            <p>
                Under 'Settings' on the UI there is no option to view the power remaining on the
                device.
                <br>
                <br>
                Add a Power check box that shows the meter on the title bar when it is less than
                40%.
            </p>
        </li>
        <!--6-->
        <li>
            <h2>
                <a name="UIphone"></a>UI on the Phone</h2>
            <p>
                The button Talk/End should change colour depending on the current function. For
                example:
                <ul>
                    <li>Green when Talk </li>
                    <li>Red when End </li>
                    <li>Grey when "Disabled"</li>
                </ul>
            </p>
        </li>
        <!--7-->
        <li>
            <h2>
                <a name="CallHistory"></a>Call History</h2>
            <p>
                In the Call History options, add a right click item to Lookup Contact.
            </p>
        </li>
        <!--8-->
        <li>
            <h2>
                <a name="TodayPage"></a>"Current Suburb" option</h2>
            <p>
                On the front Today page, add a section called Current Suburb eg. Chatswood.
                <br>
                <br>
                I cant believe a modern day phone doesnt have this! The phone should be able to
                pick this up easily from the nearest base station.
            </p>
        </li>
        <!--9-->
        <li>
            <h2>
                <a name="RecSub"></a>Record the suburb
            </h2>
            <p>
                On Call History record the suburb I was in when the call was made or taken.
            </p>
        </li>
        <!--10-->
        <li>
            <h2>
                <a name="NumPrograms"></a>Show the number of running programs in title bar</h2>
            <p>
                Too many programs open can mean problems when taking a call. So in Programs - Running
                Programs add a check box [x] Show Number of Running Programs in title bar
            </p>
        </li>
        <!--11-->
        <li>
            <h2>
                <a name="Time"></a>Use of the "Country" field in Contacts</h2>
            <p>
                When you are calling a contact in another country, what is the first thing you need
                to know? Their local time. Please display the current time when you open a contacts
                in a different time zone (use the Country field to show this)
            </p>
        </li>
        <!--12-->
        <li>
            <h2>
                <a name="TurningOff"></a>Turning off the phone</h2>
            <p>
                Sometime you need to turn off the phone sometime to conserve battery sometime because
                the Qantas staff dont believe the Flight Mode and want it completely off! The current
                method for turning off the phone is not obvious as the UI is unclear. There needs
                to be a clearer method to do this (say in a plane). I would add it to the Phone
                UI.
            </p>
            <p>
                Currently a user has to pull out the battery to turn off the phone. Later they learn
                they lost their contacts, songs etc.. I would add a Start / Shutdown option and
                then have a confirmation screen that confirms that they will lose all their data.
            </p>
        </li>
        <!--13-->
        <li>
            <h2>
                <a name="Help"></a>UI needs to give more help</h2>
            <p>
                The UI needs to give more help to understand Settings / System / Permanent Save.
                <br>
                Users need a text description to understand the different way a PDA works compared
                to a PC with a Hard Disk. Also why is the default not set to on for these checkboxes?
            </p>
        </li>
        <!--14-->
        <li>
            <h2>
                <a name="Map"></a>Add a world map and world time</h2>
            <p>
                The XDA II should have a world map! You should be able click anywhere on the
                world map and it will tell you the current time. Yes this utility is great: <a href="/ssw/Redirect/MobiMap.htm">
                    http://www.mobimate.com/ppc/worldmate/pro/index.shtml</a> but it should be built
                into in like it is with Palm Trios.
            </p>
        </li>
        <!-- 15 -->
        <li>
            <h2>
                <a name="NoCancel"></a>There should be a cancel button not just an ok button</h2>
            <p>
                I dont understand this UI at all. How does a user say I don't want to save any changes
                I just made.
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/cancel.gif" alt="Cancel" /></dt>
                <dd>
                    Figure: There shoud be a 'cancel' button</dd>
            </dl>
        </li>
        <!-- 16 -->
        <li>
            <h2>
                <a name="SaveContacts"></a>In "Contacts" there is no option to NOT save your changes</h2>
            <p>
                When you change a contacts record, then change your mind, how do you say I want
                to cancel these changes. I expect Outlook Contact behaviour, therefore there should
                be the standard question. Do you want to save changes? Or at least an option in
                "Contacts to turn it on.
            </p>
        </li>
        <!-- 17 -->
        <li>
            <h2>
                <a name="WirelessModem"></a>Make the device work like a wireless modem for your
                Laptop</h2>
            <p>
                It's a better way to make the device work like a wireless modem for your Laptop.
            </p>
            <p>
                Here is more info on that:
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/WirelessModem.jpg" alt="Modem" width="173" height="174" /></dt>
                <dd>
                    Figure: PDAnet for Windows Mobile
                </dd>
            </dl>
            <p>
                Software to drive your Windows Mobile Smartphone or PocketPC Phone as a Wireless
                Modem for your PC - PdaNet allows your PC to go online by connecting to your Windows
                Mobile Smartphone through the ActiveSync cable/dock. If you own a Treo 700w or PPC/XV
                6700 with any data plan, PdaNet will make it your high speed wireless Internet Service
                for your laptop/desktop computer instantly - no extra hardware or setup necessary,
                no need to kill ActiveSync or perform any tricky hacking to your device whatsoever.
                Check out <a href="/ssw/Redirect/Palmnet.htm">what Treo users say about PdaNet.</a>
            </p>
            <p>
                Due to the none-user-friendly nature of Bluetooth and the vast variety of Bluetooth
                devices/drivers, we only offer the Bluetooth DUN feature as a courtesy and cannot
                guarantee it will work for all users, though we are confident that it works for
                most users based on user feedbacks. Since most issues actually come from the Bluetooth
                devices or drivers, we will keep the feature under beta stage and will not provide
                support.
            </p>
            <p>
                Here is the home page <a href="/ssw/Redirect/PalmnetHomepage.htm">http://www.junefabrics.com/pdanet/</a>
            </p>
            <p>
                And here is the Bluetooth info <a href="/ssw/Redirect/PalmnetBluetooth.htm">http://www.junefabrics.com/pdanet/bluetooth.htm</a>
            </p>
        </li>
    </ol>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
        <br>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=RG">Rebecca Gardiner</a>
    </p>
</asp:Content>
