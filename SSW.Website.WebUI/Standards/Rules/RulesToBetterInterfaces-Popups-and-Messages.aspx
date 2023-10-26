<%@ Page Language="c#" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Interfaces &#8211; Popups and Messages" Buffer="true" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <SSW:RandomTestimonial ID="RandomTestimonial1" runat="server" Display="TopCommon" CategoryID="10" />
    <p>What is software? <em>From a technical perspective, a piece of software comprises forms for managing, collecting and transmitting data.</em> But that is not what a user thinks. <em>From the user's perspective software is a computer tool for performing tasks quickly, efficiently, accurately and with a minimum amount of cognitive demand.</em> Aim for the second one, there's a big difference.</p>
    <p>The whole point of a good GUI (Graphical User Interface) is being able to understand what is going on without reading every single detail. That is why we prefer big red crosses to say &quot;Don't do that you oaf!&quot; instead of a line of text that says &quot;I think you may want to reconsider your options.&quot;</p>
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230496E7465726661636573')"> Let us know</a> what you think.</p>
    
    <div class="TableOfContents">
        <h3>Rules To Better Interfaces &#8211; Popups and Messages</h3>
        <ol>
            <li><a href="#Evil">Popup - Do you know Pop-ups are evil?</a></li>
            <li><a href="#Popup">Popup - Do you know when Popup forms are good?</a></li>
            <li><a href="#ShowInTaskBar">Popup - Do you know that popup/modal forms should never have ShowInTaskbar=True?</a></li>
            <li><a href="#MessageBox">Messages - Do you avoid message boxes at all costs?</a></li>
            <li><a href="#ErrorMessages">Messages - Do you avoid giving an &quot;Error&quot; message for validation purposes?</a></li>
            <li><a href="#NoOkbutton">Messages - Do you avoid 'OK' button when the action is clear? </a></li>
            <li><a href="#MessageBoxGuidelines">Messages - Do you know how to make message boxes user friendly? (1/3 Titles)</a></li>
            <li><a href="#TechnicalInfo">Messages - Do you know how to put the technical info? (2/3 Description)</a></li>
            <li><a href="#MessageIcons">Messages - Do you know what icons to use? (3/3 Icons)</a></li>
            <li><a href="#ClearlyShowPassFailWarning">Messages - Do you clearly show a pass, fail or warning?</a></li>
            <li><a href="#statusIcon">Messages - Do you use green tick, red cross and spinning icon to show the status?</a></li>
            <li><a href="#ShortMessages">Messages - Do you use messages that are concise <strike>and informative and simple and straight to the point</strike>?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            
            <li>
                <h2><a name="Evil"></a>Popup - Do you know Pop-ups are evil?</h2>
                <p>Popups are intrusive and ugly.</p>
                <dl class="image">
                    <dt><img src="Images/popup-evil.jpg" alt="Pop-ups are evil" /></dt>
                    <dd>Figure: All popups are evil but this may be the most annoying one in history. How ironic that the popup is informing you that IE has blocked a popup.</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/iphone-popup.jpg" alt="Pop-up on iPhone" /></dt>
                    <dd>Figure: Bad Example &#8211; Even popups are bad on the iPhone. In iOS5 this style of alerts have been banned (or at least, made optional)</dd>
                </dl>
            </li>

            <li>
                <h2><a name="Popup"></a>Popup - Do you know when Popup forms are good?</h2>
                <p>Some people like popup forms. Some do not.</p>
                <p>Popup modal forms are no good:</p>
                <ul>
                    <li>as you can't read or edit something else in a window behind</li>
                    <li>as they take a lot of time to load in a browser (ask any CRM 4 user)</li>
                </ul>
                <p>Popup forms are good:</p>
                <ul>
                    <li>as it is obvious you have an action step to perform before continuing</li>
                    <li>as they simplify a form that has lots of fields </li>
                    <li>if they can't get lost behind another window</li>
                    <li>if you make them clear by dimming the background (see below)</li>
                </ul>
                <dl class="badImage">
                    <dt><img src="Images/Popup01.jpg" alt="Adobe Illustrator" /></dt>
                    <dd>Figure: Bad example - if this was a popup form it would be easier to focus on where to look (as a minimum you would be looking at half the screen)</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/Popup02.jpg" alt="Adobe Illustrator" /></dt>
                    <dd>Figure: Good example - the popup with the dimmed background is much more intuitive</dd>
                </dl>
                <p>For example, adding a webpart in SharePoint 2010 should use a popup form. <a href="/ssw/Standards/BetterSoftwareSuggestions/sharepoint2010.aspx#PopupForm">See our suggestion to Microsoft</a>.</p>
            </li>

            <li>
                <h2><a name="ShowInTaskBar"></a>Do you know that popup/modal forms should never have ShowInTaskbar=True?</h2>
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
                <h2><a name="MessageBox"></a>Messages - Do you avoid message boxes at all costs?</h2>
                <p>Now, if you can't get rid of message boxes; try again.</p>
                <p>There is nothing quite as annoying as persistent pop up message boxes, demanding your attention. Imagine you are working on a train, you are in between two fat people and your elbows are tucked in. Not only that the trackpad barely works and the user does not know that [spacebar] works on a message box.<br />
                Now think of that scenario every time you give a user a message box.</p>
                <p>Exception: Only use them in the following scenarios:</p>
                <ul>
                    <li>Confirming the deletion of a record</li>
                    <li>Kicking off a long running process that cannot be cancelled</li>
                </ul>
                <dl class="badImage">
                    <dt><img src="Images/MoveErrorMSG.jpg" alt="Move Error MSG to the right " /></dt>
                    <dd>Figure: Bad example - could the information in this message box be moved into thepanel on the right</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/oneplacemailerror.png" alt="Embedded message box" /></dt>
                    <dd>Figure: Good example - An error message that does not pop up and block your user</dd>
                </dl>
            </li>

            <li>
                <h2><a name="ErrorMessages"></a>Messages - Do you avoid giving an &quot;Error&quot; message for validation purposes?</h2>
                <p>If you do a search and no matches are found, display a message indicating zero results were returned rather than an error message.</p>
                <dl class="badImage">
                    <dt><img src="Images/InappropriateError.gif" alt="" height="232" /></dt>
                    <dd>Figure: Bad Example - No matches found on searching is not an &quot;Error&quot;</dd>
                </dl>
                <p>However, a user thinks that either:</p>
                <ol>
                    <li>They have done something wrong (i.e. they are incompetent) OR</li>
                    <li>The software is broken (i.e. your application is incompetent)</li>
                </ol>
                <p>Forcing the user into this opinion is a good way to make them avoid using your software in the future.</p>
                <p>Instead, use the term &quot;Information&quot; when validation is required.</p>
                <dl class="goodImage">
                    <dt><img src="Images/AppropriateMessage.gif" alt="Appro" /></dt>
                    <dd>Figure: Good Example - Only use &quot;Error&quot; when appropriate</dd>
                </dl>
            </li>

            <li>
                <h2><a name="NoOkbutton"></a>Messages - Do you avoid 'OK' button when the action is clear?</h2>
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
                <h2><a name="MessageBoxGuidelines"></a>Messages - Do you know how to make message boxes user friendly? (1/3 Titles)</h2>
                <p>Message boxes should have consistent and informative titles and descriptions, and icons should be used appropriately.</p>
                <h4>Title</h4>
                <p>The title should contain the application name, so the user knows what application generated the warning/error. This is especially important when developing add-ins (e.g. Outlook add-ins or Smart Tags) as it can be difficult to know what caused the message box to pop up. <strong>Application.ProductName</strong> and <strong>Application.ProductVersion</strong> should be used to retrieve the data from AssemblyInfo. There is no need for the title to contain a brief description of the error because that information is readily available in the message box itself.</p>
                <dl class="badImage">
                    <dt><img src="Images/BadMsgTitle.jpg" alt="Bad Title Example" /></dt>
                    <dd>Figure: Bad Example - Title contains brief description of error, which is already contained in the message box</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/GoodMsgTitle.jpg" alt="Good Title Example" /></dt>
                    <dd>Figure: Good Example - Title contains Product Name (&quot;SSW eXtreme Emails!&quot;) and Product Version (&quot;12.56&quot;)</dd>
                </dl>
                <p class="productBox">We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#TitleCS">SSW Code Auditor</a> to check for this rule.</p>
                <p><strong>Note</strong>: The Version Number in the title should only contain the Major and the Minor version numbers (e.g. 11.28) and not the complete Major.Minor.Revision.Build Numbers (e.g. 11.28.92.1198)</p>
            </li>

            <li>
                <h2><a name="TechnicalInfo"></a>Messages - Do you know how to put the technical info? (2/3 Description)</h2>
                <h4>Description</h4>
                <p>The description should explain <em>what the error was</em>, followed by the <em>why it occurred</em>. Information that is useful for debugging should be included with errors where possible in a &quot;Details&quot; section. You should also avoid making the text unnecessarily wide. e.g.</p>
                <dl class="badImage">
                    <dt><img src="Images/BadMessageBox.gif" alt="Centrix - Invalid Quote" /></dt>
                    <dd>Figure: Bad Example - A message box that does not intuitively alert the user</dd>
                </dl>
                <ul>
                    <li>This is confusing, because it uses different terminology to the title (&quot;estimate&quot; instead of &quot;quote&quot;)</li>
                    <li>There is no punctuation</li>
                    <li>The word &quot;Error&quot; is meaningless</li>
                    <li>Line breaks are not present, so the message box is too wide and the text may wrap in the wrong spot</li>
                </ul>
                <dl class="goodImage">
                    <dt><img src="Images/GoodMessageBox.gif" alt="Centrix - Invalid Quote Details" /></dt>
                    <dd>Figure: Good Example - A message box that is clear, consistent and intuitive</dd>
                </dl>
                <ul>
                    <li>Terminology is consistent</li>
                    <li>Punctuation is present</li>
                    <li>&quot;Details&quot; indicates that this information is useful for debugging</li>
                    <li>The text is split across three lines, and the technical information after Details is separated from the description of the error</li>
                </ul>
            </li>
            <li>
                <h2><a name="MessageIcons"></a>Messages - Do you know what icons to use? (3/3 Icons)</h2>
                <h4>Icon</h4>
                <p>Including an icon is important because not only does it give the user a visual indication of the type of message, but without it only the Default beep sound is used. The icon should reflect the type of information being presented:</p>
                <table class="clsSSWTable" cellpadding="3" cellspacing="0" border="0">
                    <tr>
                        <th>Icon</th>
                        <th>Name</th>
                        <th>When to use</th>
                    </tr>
                    <tr>
                        <td><img src="Images/Info.gif" alt="info" width="32" height="32" /></td>
                        <td><strong>MessageBoxIcon.Information</strong></td>
                        <td>Non-error information, e.g. Database connection test completed successfully</td>
                    </tr>
                    <tr>
                        <td><img src="Images/Warning.gif" alt="Warning" width="31" height="31" /></td>
                        <td><strong>MessageBoxIcon.Warning</strong></td>
                        <td>A non-critical error, e.g. The input was invalid</td>
                    </tr>
                    <tr>
                        <td><img src="Images/Error.gif" alt="error" width="32" height="32" /></td>
                        <td><strong>MessageBoxIcon.Error</strong></td>
                        <td>Critical error in the program, e.g. Program file was not found</td>
                    </tr>
                    <tr valign="top">
                        <td><img src="Images/Question.gif" alt="" width="32" height="32" /></td>
                        <td><strong>MessageBoxIcon.Question</strong></td>
                        <td><strong>NEVER</strong> use this.&nbsp;
                            <br />
                            According to Microsoft, the Question mark is being phased out, as any of the other
                            three: Error, Warning or Information can easily be reworded into a Question, and
                            Question does not show the user the severity of the issue that has just occurred.<br />
                            E.g.&nbsp; If you want to ask the user whether they want to save a file before closing,
                            you should use the Warning Icon.
                        </td>
                    </tr>
                </table>
                <br />
                <p class="productBox">We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#TitleVB">SSW Code Auditor</a>to check for this rule.</p>
            </li>

            <li>
                <h2><a name="ClearlyShowPassFailWarning"></a>Messages - Do you clearly show a <span style="color: green">pass</span>, <span style="color: red">fail</span> or <span style="color: #FFCC00">warning</span>?</h2>
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
                <h2><a name="statusIcon"></a>Messages - Do you use green tick, red cross and spinning icon to show the status?</h2>
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
            <li>
                <h2>
                    <a name="ShortMessages"></a>Messages - Do you use messages that are concise <strike>and informative and simple and straight to the point</strike>?</h2>
                <p>
                    It is important to use terminology that your users will understand. Do not to use
                    technical terms that may confuse your users. Use consistent words and phrasing for
                    similar situations. For example, the following phrases have the same meaning which
                    is the best one?</p>
                <ul>
                    <li>Not enough memory.</li>
                    <li>There is not enough memory.</li>
                    <li>There is not enough free memory.</li>
                    <li>Insufficient memory.</li>
                    <li>No memory was available.</li>
                    <li>Your computer does not have sufficient memory.</li>
                    <li>Memory resource is not enough.</li>
                    <li>Ran out of memory.</li>
                    <li>You may be out of memory.</li>
                </ul>
                <dl class="badImage">
                    <dt>
                        <img src="Images/Bad-MessageBoxZango.jpg" alt="" /></dt>
                    <dd>
                        Figure: Bad Example - Is it OK to Cancel?</dd>
                </dl>
                <p>
                    Microsoft uses this one:</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/NotEnoughMemory.gif" alt="Not Enough Memory" /></dt>
                    <dd>
                        Figure: Good Example - Microsoft error message is concise</dd>
                </dl>
                <p>
                    Some other message types that Microsoft uses are:</p>
                <table class="clsSSWTable" cellpadding="3" cellspacing="0" border="0">
                    <tr>
                        <th>Message type</th>
                        <th>Sample message</th>
                    </tr>
                    <tr>
                        <td>Not enough disk space</td>
                        <td>There is not enough disk space to complete the operation. Delete some unneeded files on your hard disk, and then try again</td>
                    </tr>
                    <tr>
                        <td>File not found</td>
                        <td>The program cannot find the file filename</td>
                    </tr>
                    <tr>
                        <td>Re-running setup</td>
                        <td>The filename file is missing. Run Setup again to reinstall the missing file. For more information about running Setup, press F1.
                        </td>
                    </tr>
                </table>
                <p>Consider using or adapting them in your application in similar scenarios. Only include the information that the user needs and will understand.</p>
                <p>This also applies to general design principles, read our rule on <a href="RulesToBetterInterfaces.aspx#InformationScan">Less is more: do you know people scan, not read?</a></p>
            
            </li>

        </ol>

        <h2>Related Rules</h2>
            <p>Read the specific rules below:</p>
            <ul>
                <li><a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx">Rules to Better Interfaces - General</a></li>
                <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Windows-Applications.aspx">Rules to Better Interfaces - Windows Application</a></li>
                <li>Rules to Better Interfaces - Popups and Messages</li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Controls.aspx">Rules to Better Interfaces - Controls</a></li>	
                <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Forms.aspx">Rules to Better Interfaces - Forms</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Wizard.aspx">Rules to Better Interfaces - Wizards</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Reports.aspx">Rules to Better Interfaces - Reports, Charts and Dates</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Mobile.aspx">Rules to Better Interfaces - Mobile UI</a></li>
            </ul>

        <h2>Links</h2>
            <ul>
                <li><a href="/ssw/Redirect/AskTog.htm" target="_blank">http://www.asktog.com/basics/firstPrinciples.html</a></li>
                <li><a href="/ssw/Redirect/Microsoft/MSDNMessageBoxes.htm" target="_blank">http://msdn.microsoft.com/library/Default.asp?url=/library/en-us/dnwue/html/ch09f.asp</a></li>
            </ul>

        <h2>Acknowledgements</h2>
            <p><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></p>

    </div>
</asp:Content>
