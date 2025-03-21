﻿<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="SSW VOIP Phone System Usage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <p>
        We have a telephone exchange platform, which allows us to make a call through the
        Internet.
        <br />
        Setup Eyebeam on your computer. Ask the network administrator whether you need an
        IP phone. Create your own extension number and add it to the phone list.
    </p>
    <div class="TableOfContents">
        <ol>
            <h3>
                Prerequisite</h3>
            <li><a href="#Extension">Your extension</a></li>
            <li><a href="#AddUser">Add a new user</a></li>
            <li><a href="#RemoveUser">Remove user</a></li>
            <li><a href="#Software">Software/Phone</a></li>
            <h3>
                How to register your extension with</h3>
            <li><a href="#Eyebeam">Eyebeam</a></li>
            <li><a href="#CiscoPhone">Cisco 7940/7970</a></li>
            <h3>
                How to use HUD</h3>
            <li><a href="#HUDInstall">Installation</a></li>
            <li><a href="#HUDVoicemail">Adding your name to Voice Mail</a></li>
            <h3>
                How to use the phone to</h3>
            <li><a href="#MakeCall">Make a call</a></li>
            <li><a href="#TransferCall">Transfer a call</a></li>
            <li><a href="#HoldConference">Hold a conference</a></li>
            <li><a href="#SwitchCall">Switch between calls</a></li>
            <li><a href="#ForwardCall">Forward a call to another extension</a></li>
            <li><a href="#DND">Set DND (Do Not Disturb)</a></li>
            <li><a href="#Voicemail">Get your voice messages</a></li>
            <li><a href="#PickupAnywhere">Pick up any Extension from any Phone</a></li>
            <h3>
                Tips</h3>
            <li><a href="#HotKey">Hot keys</a></li>
        </ol>
    </div>
    <ol>
        <li>
            <h2>
                <a name="Extension"></a>Get your own extension
            </h2>
            <p>
                To use the phone system, at first you need to have your own extension.
                <ul style="list-style-type: none">
                    <li>a. If you get a physical phone from the network admin, your extension has been already
                        bound to the phone.</li>
                    <li>b. If you don't have, you have to create one by yourself so that you can use soft
                        phone to connect to the server.<br />
                        You could find the extensions already created via
                        <br />
                        <a href="\ssw\StandardsInternal\developernetworkphone\PhoneList.xlsx">\ssw\StandardsInternal\developernetworkphone\PhoneList.xlsx</a>
                       
                        <div class="infoBoxBeijing">
                            <h4>
                                Beijing Office</h4>
                            <p>
                                <a href="">\\giraffe\datassw\phonesystem\BeijingOfficePhoneList.xlsx</a>
                                or <a href="">http://192.168.20.3/xmlservices/LocalDirectory.php</a>
                            </p>
                        </div>
                    </li>
                </ul>
            </p>
            <dl class="image">
                <dt>
                    <img src="images/PhoneDirectory.jpg" alt="Phone List" />
                </dt>
            </dl>
            Your new extension number should follow the pattern of the list. After you have your own extension number, please update PhoneList.xlsx.
           </li>
        <li>
            <h2>
                <a name="AddUser"></a>Add a new user</h2>
            <ul style="list-style-type: none;">
                <li>1) If you are using a physical phone, you can skip this step.</li>
                <li>2) Go to http://cockatoo/admin or http://192.168.1.27/admin
                    <div class="infoBoxBeijing">
                        <h4>
                            Beijing Office</h4>
                        <p>
                            <a href="">http://192.168.20.3/admin</a>
                        </p>
                    </div>
                    Login with username: maint and password: SSW standard simple password</li>
                <li>3) Click "Users" on the LHS menu
                    <ul style="list-style-type: none">
                        <li>a. Create your user on the page
                            <ul style="list-style-type: none">
                                <li>Set your User Extension
                                    <ul style="list-style-type: none">
                                        <li>1. User Extension - your own extensioin number </li>
                                        <li>2. User Password - "2727" </li>
                                        <li>3. Display Name - Name of person </li>
                                    </ul>
                                    <dl class="image">
                                        <dt>
                                            <img src="images/User_1.gif" alt="Set your User Extension" />
                                        </dt>
                                    </dl>
                                </li>
                                <li>Extension Options
                                    <ul style="list-style-type: none">
                                        <li>4. Direct DID - Phone number </li>
                                        <li>5. Outbound CID - Phone number </li>
                                    </ul>
                                    <dl class="image">
                                        <dt>
                                            <img src="images/User_2.gif" alt="Extension Options" />
                                        </dt>
                                    </dl>
                                </li>
                                <li>Voicemail & Directory
                                    <ul style="list-style-type: none">
                                        <li>6. Status - "Enabled"</li>
                                        <li>7. Voicemail Password - "2727" </li>
                                        <li>8. Email Address - users email address </li>
                                        <li>9. Email Attachment - "yes" </li>
                                    </ul>
                                    <dl class="image">
                                        <dt>
                                            <img src="images/User_3.gif" alt="Voicemail & Directory " />
                                        </dt>
                                    </dl>
                                </li>
                                <li>
                                    <ul style="list-style-type: none">
                                        <li>10. Click “submit” to save your user record</li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>4) Click "Devices"
                    <ul style="list-style-type: none;">
                        <li>a. Choose "Generic SIP Device"</li>
                        <dl class="image">
                            <dt>
                                <img src="images/Device_1.gif" alt="Set your SIP Device" />
                            </dt>
                        </dl>
                        <li>b. Click Submit</li>
                        <li>c. Secret - "rating"</li>
                        <li>d. Device ID - same as the user ID </li>
                        <li>e. Description - name of person </li>
                        <li>f. Default User - same as the userID</li>
                        <li>g. Submit</li>
                        <dl class="image">
                            <dt>
                                <img src="images/Device_2.gif" alt="Set your SIP Device" />
                            </dt>
                        </dl>
                        <li>g. Click on the Device you just create</li>
                        <dl class="image">
                            <dt>
                                <img src="images/Device_3.gif" alt="Set your SIP Device" />
                            </dt>
                        </dl>
                        <li>h. Nat - "no"</li>
                        <li>i. Default User - same as the user ID </li>
                        <li>j. Submit</li>
                        <dl class="image">
                            <dt>
                                <img src="images/Device_4.gif" alt="Set your SIP Device" />
                            </dt>
                        </dl>
                    </ul>
                </li>
                <li>5) Setup HUD password
                    <ul style="list-style-type: none;">
                        <li>a. http://cockatoo/maint/index.php?hudManager
                            or http://192.168.1.27/maint/index.php?hudManager
                            <div class="infoBoxBeijing">
                                <h4>
                                    Beijing Office</h4>
                                <p>
                                    <a href="">http://192.168.20.3/maint/index.php?hudManager</a>
                                </p>
                            </div>
                        </li>
                        <li>b. Change password to "rating"</li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="RemoveUser"></a>Remove a user</h2>
            <ul style="list-style-type: none;">
                <li>1) Remove the Device</li>
                <li>2) Remove the User</li>
                <li>3) Remove out of any ring groups</li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="Software"></a>Software/Phone</h2>
            We currently use Cisco IP phone 7940G/7970 and eyebeam. </li>
        <li>
            <h2>
                <a name="Eyebeam"></a>How to add your account to Eyebeam</h2>
            <ul style="list-style-type: none;">
                <li>1) Go here
                    <br />
                    <a href="\\fileserver\SetupFiles\SetupNotMS\SetupProgram\Eyebeam Softphone">\\fileserver\SetupFiles\SetupNotMS\SetupProgram\Eyebeam Softphone</a>
                    <div class="infoBoxBeijing">
                        <h4>
                            Beijing Office</h4>
                        <p>
                            \\gerbil\setupfiles\SetupNotMS\Eyebeam Softphone
                        </p>
                    </div>
                    And install eyebeam </li>
                    <!--SSW Code Auditor - Ignore next line(HTML)-->
                <li>2) Enter in your login details
                    <dl class="image">
                        <dt>
                            <img src="images/EyebeamConfig.jpg" alt="Eyebeam account configuration" />
                        </dt>
                    </dl>
                </li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="CiscoPhone"></a>Assign your extension to Cisco 7940/7970</h2>
            You will need to edit the configuration file of the IP phone on Asterisk server.
            This is not recommended.
            <br />
            For details, you can view the setup documents of IP Phone. </li>
        <li>
            <h2>
                <a name="HUDInstall"></a>Install HUD on your machine</h2>
            Go here <a href="\\fileserver\setupfiles\SetupNotMS\SetupProgram\Hud">\\fileserver\setupfiles\SetupNotMS\SetupProgram\Hud</a>
            and install HUD, then run it.<br />
            <dl class="image">
                <dt>
                    <img src="images/HUDInstall_1.jpg" />
                </dt>
                <dd>
                    Replace xx with the last two numbers of your extension, for example, if your extension
                    is 425, xx should be 25. The password shouble be "rating".
                </dd>
            </dl>
            <dl class="image">
                <dt>
                    <img src="images/HUDInstall_2.jpg" /><br />
                    <img src="images/HUDInstall_3.jpg" /><br />
                    <img src="images/HUDInstall_4.jpg" />
                </dt>
                <dd>
                    Installation steps
                </dd>
            </dl>
            Other tips:
            <br />
            <dl class="image">
                <dt>
                    <img src="images/HUDInstall_5.jpg" />
                </dt>
                <dd>
                    Figure 1: If you want to dial from HUD, you need to change the prepend digit to
                    0
                </dd>
            </dl>
            <dl class="image">
                <dt>
                    <img src="images/HUDInstall_6.jpg" />
                </dt>
                <dd>
                    Figure 2: For proper Outlook integration make sure "Sync contacts on HUD startup"
                    is ticked
                </dd>
            </dl>
            <dl class="image">
                <dt>
                    <img src="images/HUDInstall_7.jpg" />
                </dt>
                <dd>
                    Figure 3: Click "Synchronize Outlook vCards" when you make changes to or add outlook
                    contacts to sync with HUD
                </dd>
            </dl>
        </li>
        <li>
            <h2>
                <a name="HUDVoicemail"></a>Adding your name to Voice Mail
            </h2>
            <ul style="list-style-type: none;">
                <li>1) Settings | Advanced Options | Select Internal | Account | Change RFC-2833 to
                    SIP INFO
                    <br />
                    <dl class="image">
                        <dt>
                            <img src="images/HUDVoicemail.jpg" />
                        </dt>
                    </dl>
                </li>
                <li>2) Dial *97</li>
                <li>3) Enter in your password (2727)</li>
                <li>4) Dial 0</li>
                <li>5) Dial 3 to set your name and follow the prompts</li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="MakeCall"></a>How to make a call
            </h2>
            As we have many outbound rules for dialling, here are some hints about how to make
            a call.<br />
            <ul style="list-style-type: none">
                <li>(Beijing office)
                    <ul style="list-style-type: none;">
                        <li>1) For internal calls, dial the number directly.</li>
                        <li>2) For external calls
                            <ul style="list-style-type: none;">
                                <li>a. Domestic: 9 + phone number</li>
                                <li>b. International: 8 + phone number</li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>(Sydney office)
                    <ul style="list-style-type: none;">
                        <li>Dial number directly.</li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="TransferCall"></a>How to transfer a call
            </h2>
            To transfer calls you need to know the SIP extension of the person you are transferring
            to.
            <br />
            Refer to:<br />
            <a href="\ssw\StandardsInternal\developernetworkphone\PhoneList.xlsx">\ssw\StandardsInternal\developernetworkphone\PhoneList.xlsx</a>
            
            <div class="infoBoxBeijing">
                <h4>
                    Beijing Office</h4>
                <p>
                    "\\giraffe\datassw\phonesystem\BeijingOfficePhoneList.xlsx" or "http://192.168.20.3/xmlservices/LocalDirectory.php"
                </p>
            </div>
            Make the URL a favourite or print off the xlsx file and keep it near your phone.<br />
            <br />
            <b>EyeBeam</b><br />
            <dl class="image">
                <dt>
                    <img src="images/EyebeamTransfer.jpg" />
                </dt>
                <dd>
                    <ol>
                        <li>While you are in a call, press the <b>XFER</b> button </li>
                        <li>Dial the <b>extension</b> of the person you want to transfer to</li>
                        <li>Press the <b>XFER</b> button again to complete transfer</li>
                    </ol>
                </dd>
            </dl>
            <br />
            <b>Cisco 7940 (Non-Colour)</b><br />
            <dl class="image">
                <dt>
                    <img src="images/7940Transfer.jpg" />
                </dt>
                <dd>
                    <ol>
                        <li>While in a call, click <b>more</b>, and then click <b>Trnsfer</b>. </li>
                        <li>Press <b>Dial</b> and dial the <b>extension</b> of the phone you want to transfer
                            to.</li>
                        <li>When you hear ringing, press <b>Trnsfer</b> again, or when the party answers, announce
                            the call and press <b>Trnsfer</b>.</li>
                        <li>Hang up to end your participation in the call.</li>
                    </ol>
                </dd>
            </dl>
            <br />
            <b>Cisco 7970 (Colour)</b><br />
            <dl class="image">
                <dt>
                    <img src="images/7970Transfer.jpg" />
                </dt>
                <dd>
                    <ol>
                        <li>While in a call click the <b>Transfer</b> softkey. </li>
                        <li>Press <b>Dial</b> and dial the <b>extension</b> of the phone you want to transfer
                            to.</li>
                        <li>When you hear ringing, press <b>Transfer</b> again; or when the party answers, announce
                            the call and press <b>Transfer</b>.</li>
                        <li><b>Note</b>: you cannot transfer a call that is on hold, take the call off hold
                            before transferring.</li>
                    </ol>
                </dd>
            </dl>
        </li>
        <li>
            <h2>
                <a name="HoldConference"></a>How to hold a conference</h2>
            You can hold a conference by calling other parties, or join the conference created
            by others.<br />
            <br />
            <table border="2" cellpadding="5" cellspacing="2">
                <tr align="center">
                    <td>
                        Action
                    </td>
                    <td>
                        7940
                    </td>
                    <td>
                        7970
                    </td>
                    <td>
                        EyeBeam
                    </td>
                </tr>
                <tr valign="top">
                    <td>
                        Hold a conference
                    </td>
                    <td>
                        1. From a connected call, press <b>Confrn</b>.<br />
                        2. Enter the participant's phone number.<br />
                        3. Wait for the call to connect.<br />
                        4. Press <b>Join</b> to add the other participant to your call.
                    </td>
                    <td>
                        1. From a connected call, press <b>Confrn</b>.<br />
                        2. Enter the participant's phone number.
                        <br />
                        3. Wait for the call to connect.<br />
                        4. Press <b>Confrn</b> again to add the participant to your call.<br />
                        5. Repeat to add additional participants
                    </td>
                    <td>
                        1. With one active call on one of the lines, select another line and dial a third
                        party<br />
                        2. To conference in all lines, click <b>CONF</b>. All lines will be part of the
                        conference.<br />
                        3. To suspend the conference, click <b>CONF</b> again. The other participants can't
                        speak to one another. To restart it, click <b>CONF</b> again.
                    </td>
                </tr>
                <tr valign="top">
                    <td>
                        Add another party to conference
                    </td>
                    <td>
                        Same as above
                    </td>
                    <td>
                        Same as above
                    </td>
                    <td>
                        1. From a connected call, press <b>Confrn</b>.
                        <br />
                        2. Enter the participant's phone number.
                        <br />
                        3. Wait for the call to connect.<br />
                        4. Press <b>Confrn</b> again to add the participant to your call.<br />
                        5. Repeat to add additional participants.
                    </td>
                </tr>
                <tr valign="top">
                    <td>
                        View conference list
                    </td>
                    <td>
                        1. Highlight an active conference.<br />
                        2. Press <b>ConfList</b>. Participants are listed in the order in which they join
                        the conference with the most recent additions at the top.
                    </td>
                    <td>
                        No such function
                    </td>
                    <td>
                        Click <b>Confrn</b> to pause the conference. Every active line has an active party.
                    </td>
                </tr>
                <tr valign="top">
                    <td>
                        Remove a party (only for the conference creator)
                    </td>
                    <td>
                        In the conference list,<br />
                        1. Highlight the participant's name.
                        <br />
                        2. Press <b>Remove</b>.
                    </td>
                    <td>
                        No such function
                    </td>
                    <td>
                        1. Suspend the conference by clicking <b>CONF</b>.<br />
                        2. Select the line of the participant to remove.<br />
                        3. Hang up the call.<br />
                        4. Click <b>CONF</b> to re-establish the conference.
                    </td>
                </tr>
            </table>
            <br />
            <b>Note</b>: if you initiate the conference, you will close it if you hang up the
            call. If you want to keep the conference active after you end up the call, you should
            transfer the call to another party first. </li>
        <li>
            <h2>
                <a name="SwitchCall"></a>How to switch between calls</h2>
            You can switch between multiple calls on one or more lines.
            <br />
            <br />
            <b>Cisco 7970/7940</b>
            <ol>
                To switch calls on the same line:
                <li>Make sure the call that you want to switch to is highlighted.</li>
                <li>Press <b>Resume</b>. Any active call is placed on hold and the selected call is
                    resumed.</li>
            </ol>
            <br />
            <ol>
                To switch between connected calls on different lines:
                <li>Press for the line that you are switching to. If a single call is holding on the
                    line, the call automatically resumes. If multiple calls are holding, highlight the
                    appropriate call and press <b>Resume</b>.</li>
            </ol>
            <br />
            <ol>
                To switch from a connected call to answer a ringing call
                <li>Press <b>Answer</b>, or if the call is ringing on a different line, press the line
                    button (flashing). Any active call is placed on hold and the selected call is resumed.</li>
            </ol>
            <br />
            <b>Eyebeam</b>
            <br />
            Select another line, and then the previous one is on hold automatically. </li>
        <li>
            <h2>
                <a name="ForwardCall"></a>How to forward a call to another extension</h2>
            <b>Cisco 7970/7940</b><br />
            To set up call forwarding on your primary line, press <b>CFwdALL</b> and enter a
            target phone number exactly as you would dial it from your phone. To cancel call
            forwarding on your primary line, press <b>CFwdALL</b>.
            <br />
            <br />
            <b>EyeBeam</b><br />
            You can set the forward number in SIP account setting.<br />
            1. Right click on the soft phone, then click "SIP account setting"<br />
            2. Choose you current account, open the "Properties"<br />
            3. Go to "Voicemail" tab, complete the "forwarding" section<br />
            <dl class="image">
                <dt>
                    <img src="images/EyebeamForward.jpg" />
                </dt>
            </dl>
            <br />
            Note: If you set the call forward number on <b>Cisco 7940</b>, <b>all lines</b>
            of the phone will be forwarded. But for <b>Cisco 7970</b>, the call forward is <b>line
                specific</b>, so the line which forward is not enabled will ring still when
            a call is coming. </li>
        <li>
            <h2>
                <a name="DND"></a>How to set DND ( Do Not Disturb )</h2>
            DND is a function to block any call to your phone. The caller will receive a busy
            tone.<br />
            <br />
            <b>Cisco 7970/7940, Eyebeam</b><br />
            To enable/disable DND, you just need to press the "DND" soft key.
            <br />
            <br />
            Note: DND will apply to all the lines. If the "Call Forward" is enabled, the calls
            will be forwarded directly. </li>
        <li>
            <h2>
                <a name="Voicemail"></a>How to get your voice message</h2>
            <p>
                IP phone/soft phone:<br />
                Press *97, then enter your password. Follow the instructions.<br />
                <br />
                Email:<br />
                The voice message will be sent to the owner's email box and deleted immediately.
                So be careful of some important messages, there is no backup in the system.</p>
        </li>
        <li>
            <h2>
                <a name="PickupAnywhere"></a>How to pick up any extension from any phone</h2>
            <p>
                When a call comes in on an extension which is not the phone you are currently at,
                you can type <b>**[extension of phone you want to take call from]</b> and dial.
                This will connect you to the call which is going to the extension you typed</p>
        </li>
        <li>
            <h2>
                <a name="HotKey"></a>Hot keys</h2>
            The hot keys of our phone are defined in "Feature Code" of Asterisk server.
            <br />
            Here are some common keys as default:<br />
            <b>*43</b> - Echo test; <b>*97</b> - Check voicemail; <b>*98</b> - Dial voicemail;
            <b>*99</b> - Check recording. </li>
    </ol>
</asp:Content>
