<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Live Messenger Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label><p>
        <div class="TableOfContents">
            <ol>
                <li><a href="#BlockGroup">Help me "Block" by group, not just by contact</a></li>
                <li><a href="#AdditionalColumns">Help me identify additional information about contacts easily</a></li>
                <li><strike><a href="#MSNImageSize">Image Size</a></strike><span style="font-weight: bold;
                    color: red"> * Fixed by Microsoft in Windows Live Messenger *</span></li>
                <li><a href="#MSNWorkOffline">Help me send messages to contacts even when I am offline</a></li>
                <li><a href="#MSNOutToDinner">Help me tell people I am "Out To Dinner"</a></li>
                <li><a href="#MSNAnimatedGIF">Help me use animated .gif's</a></li>
                <li><strike><a href="#PasteImages">Paste and send images from the clipboard</a></strike><span
                    style="font-weight: bold; color: red"> * Fixed by Microsoft in Windows Live Messenger
                    *</span></li>
                <li><a href="#ServerDisplayPicture">Store display pictures on MSN's server</a></li>
                <li><a href="#EmailSelectedText">Add "Email selected text" option</a></li>
                <li><a href="#BandwidthInform">Inform the user when not enough bandwidth to use it</a></li>
                <li><a href="#WorkOffine">Wish Live Messenger was a smart client</a></li>
                <li><a href="#TurnOffLiveToday">Turn off "Show Windows Live Today" by default please</a></li>
                <li><a href="#AutoReceive">Add a "Automatically receive attachments under 1 MB" (so you don't have to click confirm)</a></li>
                <li><a href="#Warn">Warn when you will lose data</a></li>
                <li><a href="#SortInMenu">Add sort right click menu</a></li>
                <li><a href="#SearchCategory">Add column "Categories" when search contacts</a></li>
                <li><a href="#IdentifyMultiSender">Help me simply identify the sender of a group conversation</a></li>
                <li><a href="#ShowOfflineContact">Show offline contacts by group</a></li>
                <li><a href="#LiveWriter2011">Live Writer 2011</a></li>
                <li><a href="#TargettedAds">Live Messenger - Targetted Ads Please </a></li>
                <li><a href="#RemoveCloseDialog">Windows Live - Help me avoid moving my mouse to close a dialog</a></li>
                <li><a href="#RespondOffline">I would love to be able to respond when I am offline E.g. in the plane</a></li>
            </ol>
        </div>
        <div id="mainContent">
            <ol>
                <li>
                    <h2>
                        <a name="BlockGroup"></a>Help me "Block" by group, not just by contact</h2>
                    <p>
                        We would really appreciate a "Block Group" feature.
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/messenger.gif" alt="Messenger" width="348" height="328"></dt>
                        <dd>
                            Figure: Current pop-up menu in Messenger; should include 'Block Group'</dd></dl>
                </li>
                <li>
                    <h2>
                        <a name="AdditionalColumns"></a>Help me identify additional information about contacts easily</h2>
                    <p>
                        It would be handy to have additional columns beside each contact so I can see more information about that Contact. 
                        For example, a
                        City column could show which city a person was in and a Time column could display
                        the current time for that city.
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/messenger2.gif" alt="Messenger 2" width="369" height="426"></dt>
                        <dd>
                            Figure: MSN Messenger; multiple columns would be nice</dd></dl>
                </li>
                <li>
                    <h2>
                        <a name="MSNImageSize"></a><strike>Size Of Images In MSN Messenger</strike> - <span
                            style="font-weight: bold; color: red">* Fixed by Microsoft in Windows Live Messenger
                            *</span></h2>
                    <p>
                        When I am having an MSN Messenger conversation with someone, the two images on the
                        right of the text field appear to be different sizes. The effect is apparently reversed
                        for the other member/s of the conversation.
                    </p>
                    <p>
                        The images should appear as the same size.</p>
                    <dl class="image">
                        <dt>
                            <img src="/ssw/Standards/BetterSoftwareSuggestions/Images/MSNImageSize.gif" alt="MSN Image Size"
                                width="491" height="440"></dt>
                        <dd>
                            Figure: The images appear to be different sizes</dd></dl>
                </li>
                <li>
                    <h2>
                        <a name="MSNWorkOffline"></a>Help me send messages to contacts even when I am offline</h2>
                    <p>
                        When I do not have a connection to the web, I would like to still be able to see
                        my contacts and, and to send them email. Please add an option under the file menu:
                        File Work Offline (just like IE)
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="/ssw/Standards/BetterSoftwareSuggestions/Images/MSNWorkOffline.gif" alt="MSN Work Offline"
                                width="318" height="367"></dt>
                        <dd>
                            Figure: I would like to be able to work offline</dd></dl>
                </li>
                <li>
                    <h2>
                        <a name="MSNOutToDinner"></a>Help me tell people I am "Out To Dinner"</h2>
                    <p>
                        There should be the option of having your status set as 'Out To Dinner'
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="/ssw/Standards/BetterSoftwareSuggestions/Images/MSNOutToDinner.gif" alt="MSN Work Offline"
                                width="305" height="285"></dt>
                        <dd>
                            Figure: There should be an 'Out To Dinner' consistent with 'Out To Lunch'</dd></dl>
                </li>
                <li>
                    <h2>
                        <a name="MSNAnimatedGIF"></a>Help me use animated .gif's
                    </h2>
                    <p>
                        The display picture will also be able to support animated GIF's as well as static
                        ones that MSN currently have.
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="/ssw/Standards/BetterSoftwareSuggestions/Images/MSNImages.gif" alt="MSN Images"
                                width="121" height="250" border="1"></dt><dd>Figure: MSN should allow animated images
                                    as well</dd></dl>
                </li>
                <li>
                    <h2>
                        <a name="PasteImages"></a><strike>Paste and send screenshots</strike> - <span style="font-weight: bold;
                            color: red">* Fixed by Microsoft in Windows Live Messenger *</span>
                    </h2>
                    <p>
                        It would be extremely useful if you could copy and paste images from the clipboard
                        into an MSN message window. Every day we need to send little screen captures to
                        colleagues to show what we're talking about, and currently we have to take the screenshot,
                        save it as an image and send it as a file - very tedious.
                    </p>
                </li>
                <li>
                    <h2>
                        <a name="ServerDisplayPicture"></a>Store display pictures on MSN's server</h2>
                    <p>
                        Currently, we have the hassle of storing and uploading display pictures on each
                        different computer we use for MSN Messenger. To eliminate this inconvenience, MSN
                        should offer to have display pictures stored on their server, so that the picture
                        is accessible anywhere and at anytime. This way, rather than getting it from the
                        local machine so that everytime a person logs onto MSN in a different location,
                        their display picture automatically displays.</p>
                    <dl class="image">
                        <dt>
                            <img src="/ssw/Standards/BetterSoftwareSuggestions/Images/ServerDisplayPicture.jpg"
                                width="543" height="634" /></dt><dd>Figure: Display pictures should be stored on the
                                    MSN server so they are accessible from anywhere</dd></dl>
                </li>
                <li>
                    <h2>
                        <a name="EmailSelectedText"></a>Add "Email selected text" option</h2>
                    <p>
                        Currently, we can send an email by choose the user and select the "Send other -->
                        Email".</p>
                    <dl class="image">
                        <dt>
                            <img src="/ssw/Standards/BetterSoftwareSuggestions/Images/sendEmail.gif" width="409"
                                height="302" /></dt>
                        <dd>
                            Figure: Send email by select the "Send other --> Email"</dd></dl>
                    <p>
                        It would be extremely useful if you could just copy the conversation history from
                        an MSN message window and select "Email selected text".</p>
                    <dl class="image">
                        <dt>
                            <img src="/ssw/Standards/BetterSoftwareSuggestions/Images/emailText.gif" width="585"
                                height="444" /></dt>
                        <dd>
                            Figure: Send email by select the "Email selected text"</dd></dl>
                </li>
                <li>
                    <h2>
                        <a name="BandwidthInform"></a>Inform the user when not enough bandwidth to use it</h2>
                    <p>
                        When you try and use Live Messenger over GPRS (a slow mobile phone connection) it signs in, then out, silently.... and continually.</p>
                    <p>
                        Then you get messages like:</p>
                    <div class="greyBox">
                          >Paul Andrew sent 22/05/2008 11:21 AM:<br />
                          >Hey Adam, why do you keep signing in and out?<br />
                          (Skype on the other hand works on this connection).
                    </div>
                    <p>
                    To be clear, it is OK that it doesnt work, it is not OK that it doesnt tell the user something like:
                    </p>
                    <div class="greyBox"> 
                    "Live Messenger signed you out because your connection strength was xxx and needs yyy to connect successfully"
                    </div>
                </li>
                <li>
                    <h2><a name="WorkOffine"></a>Wish Live Messenger was a smart client</h2>
                    <p>
                    I want to see the chat history for a contact.
                    </p>
                    <p>
                    Wish Messenger worked offline
                    </p>
                    <p>
                    PS: Other IM clients eg. Miranda work offline
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/MSN_1.jpg" alt="MSN need to work offline"></dt>
                                <dd>Figure: MSN should allow work offline</dd></dl>

                </li>
                <li>
                    <h2>
                        <a name="TurnOffLiveToday"></a>Turn off "Show Windows Live Today" by default please</h2>
                    <p>
                        Suggest turn the "Show Windows Live Today" off by default:
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/MSN_TurnOff_1.jpg" alt="MSN need turn of 'Show Windows Live Today' by default"></dt>
                        <dd>
                            Figure: Turn off "Show Windows Live Today" by default please</dd></dl>
                </li>
                <li>
                    <h2>
                        <a name="AutoReceive"></a>Add a "Automatically receive attachments under 1 MB" (so
                        you don't have to click confirm)</h2>
                    <p>
                        Need a "Automatically receive attachments under 1 MB" (so you don't have to click confirm) on below option form:
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/MSN_Auto_1.jpg" alt="Need Automatically receive attachments under 1 MB"></dt>
                        <dd>
                            Figure: Add a "Automatically receive attachments under 1 MB" on this form</dd></dl>
                </li>
                
                <li>
                    <h2>
                        <a name="Warn"></a>Warn when you will lose data</h2>
                    <p>
                        When you close the window with an unsent message, there should be a warning from Live Messenger telling you that you will lose data. 
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/ValidationInfoForUnsentMSG.jpg" alt="Warn to inform you that you may lose data"></dt>
                        <dd>
                            Figure: Skype will warn you if you are going to close a chat window with an unsent message</dd></dl>
                </li>
                <li>
                    <h2>
                        <a name="SortInMenu"></a>Add sort right click menu
                    </h2>
                    <p>
                        Need a sort in right click menu:
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/MSN_Menu_01.jpg" alt="Sort this menu"></dt>
                        <dd>
                            Figure: Need a sort in this menu</dd></dl>
                </li>
                <li>
                    <h2>
                        <a name="SearchCategory"></a>Add column "Categories" when search contacts
                    </h2>
                    <p>
                        Please add a "Categories" column when I search contacts in MSN, because some people have same name.
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/MSN_CG_01.jpg" alt="No category when search"></dt>
                        <dd>
                            Figure: Need a "Categories" column when search</dd></dl>
                </li>
                <li>
                    <h2><a name="IdentifyMultiSender"></a>Help me simply identify the sender of a group conversation</h2>
                    
                    <p>
                        When I receive an message which has been sent to a group it is impossible to read
                        from the task bar who the message was sent from. 
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/MSN_GroupConversation.gif" alt="Properly identify the sender of a group conversation"></dt>
                        <dd>
                            Figure: Properly identify the sender of a group conversation</dd></dl>
                    <p>
                        Help me identify the sender by stating that person first, and then listing all the 
                        participants alphabetically.
                    </p>    
                </li>
                <li>
                  <h2><a name="ShowOfflineContact"></a>Show offline contacts by group</h2>
                   <dl class="image">
                     <dt>
                        <img src="Images/OfflineGroup.jpg" alt="Right click menu - show offline contact in group "></dt>
                    <dd>
                            Figure: Add right click menu option "Show hidden contacts"</dd></dl>
                
                </li>
                <li><h2><a name="LiveWriter2011"></a>Live Writer 2011</h2>
                  <dl class="image">
                     <dt>
                        <img src="Images/RightClickAltOption.jpg" alt="Right Click Alt Option "></dt>
                    <dd>
                      Figure: Right click on image should have a 4th menu called 'Image Alt text'</dd></dl> 
                  <dl class="image">
                     <dt>
                        <img src="Images/AltTextForm.jpg" alt="Alt Text Form "></dt>
                    <dd>
                      Figure: Which takes you to this form</dd></dl> 
                </li> 
                <li>
                 <h2><a name="TargettedAds"></a>Live Messenger - Targetted Ads Please</h2>
                 <p>
                    I would never click on the ads that show on Live Messenger<br />
                    I am guessing asking for an option to remove the ads is not an option.:)<br />
                    So help me enjoy the ads, by giving me targeted ads.
                 </p>
                 <dl class="image">
                     <dt>
                        <img src="Images/RemoveAds.jpg" alt="Remove this ad."></dt>
                    <dd>
                      Figure: We need targeted ads. I would never click on this ad</dd></dl> 
                </li>    
                <li>
                 <h2><a name="RemoveCloseDialog"></a>Windows Live - Help me avoid moving my mouse to close a dialog</h2>
                  <p>
                    Not sure if everyone will agree with this, but since Facebook is now the standard, please make this dialog (an others go away) after 5 seconds.<br />
                    Lots of apps need this, so even better would be for the ASP.NET team to give developers a built in control on the toolbox, that does this (using the jQuery timer framework).<br />
                    PS: I have given up asking the Windows Live team to improve the URL. :)
                  </p>
                   <dl class="image">
                     <dt>
                        <img src="Images/AutoClose.jpg" alt="The dialog should auto close. "></dt>
                    <dd>
                      Figure: This dialog should auto close after 5 seconds, just like the wonderful facebook User Experience.</dd></dl>                  
                </li>  
                
                <li>
                    <a name="RespondOffline"></a><h2>I would love to be able to respond when I am offline E.g. in the plane</h2>
                    <p>Skype works better in this scenario.</p>
                    <dl class="image">
                        <dt><img src="Images/respond-offline.jpg" alt="Respond Offline"></dt>
                        <dd>Figure: The window is disabled, so I cannot type a response offline, I cannot search my contacts etc.</dd>
                    </dl>
                    <p>PS: Do we bother with suggestions like this... now that we have Microsoft Skype?</p>
                </li>
                
                
                                   
            </ol>
        </div>
        <h2>
            Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JV">Jatin Valabjee</a>
            <br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
        </p>
</asp:Content>
