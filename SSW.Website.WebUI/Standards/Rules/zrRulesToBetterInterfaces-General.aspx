<%@ Page Language="c#" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Interfaces" Buffer="true" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

<script runat="server">
  protected override void OnLoad(EventArgs e)
  {      
      Response.StatusCode = 301;
      Response.AddHeader("Location", "/ssw/Standards/Rules/RulestoBetterInterfaces.aspx");
  }
</script>
<%--
<p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>
        What is software? <i>From a technical perspective, a piece of software comprises forms
            for managing, collecting and transmitting data.</i> But that is not what a user
        thinks. <i>From the user's perspective software is a computer tool for performing tasks
            quickly, efficiently, accurately and with a minimum amount of cognitive demand.</i>
        Aim for the second one, there's a big difference.
    </p>
    <p>
        The whole point of a good GUI (Graphical User Interface) is being able to understand
        what is going on without reading every single detail. That is why we prefer big
        red crosses to say &quot;Don't do that you oaf!&quot; instead of a line of text
        that says &quot;I think you may want to reconsider your options.&quot;
    </p>
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230496E7465726661636573')">
            Let us know</a> what you think.
    </p>
    <div class="TableOfContents">
        <p><strong>Rules To Better Interfaces - General</strong></p>
        <ol>
            <li><a href="#SelfEvident">Do you realize that a good interface should not require instructions?</a></li>
            <li><a href="#IntelligentDesign">Do you realize that when it comes to interface design
                &quot;less is more&quot;?</a></li>
            <li><a href="#ErrorMessages">Do you avoid giving an Error&quot; message for validation
                purposes?</a></li>
            <li><a href="#MessageBoxGuidelines">Do you know how to make message boxes user friendly?</a></li>
            <li><a href="#ShortMessages">Do you use messages that are concise and informative?</a></li>
            <li><a href="#LoginState">Do you make login state clear?</a></li>
            <li><a href="#HomePagePortal">Do you make the homepage a portal?</a></li>
            <li><a href="#LogUsage">Do you log usage?</a></li>
            <li><a href="#Popup">Do you know to use Popup forms?</a></li>
            <li><a href="#EasySearch">Do you make your data easy to search?</a></li>
            <li><a href="#MessageBox">Do you avoid using message boxes?</a></li>
            <li>Do you know the specific Rules for:
                <ul>
                    <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-WinApp.aspx">Windows Applications</a></li>
                    <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Reports.aspx">Reports, Charts and Dates</a></li>
                    <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Wizard.aspx">Wizards</a></li>
                    <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Data.aspx">Data Entry Forms and Controls</a></li>
                    <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Mobile.aspx">Mobile UI</a></li>
                </ul>
            </li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="SelfEvident"></a>
                    Do you realize that a good interface should not require instructions?</h2>
                <p>
                    The corner stone of good user interface design is that if your users need instructions,
                    you haven't done a good job. Of course with particularly complex applications there
                    will be exceptions to this rule, but all developers should aim to make your designs
                    as self evident as possible.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images\SelfEvident.gif" alt="" border="1" /></dt><dd>Figure: A good interface
                            does not need instructions!</dd></dl>
            </li>
            <li>
                <h2><a name="IntelligentDesign"></a>
                    Do you realize that when it comes to interface design 'less is more'?</h2>
                <p>
                    How to make a user interface great:
                </p>
                <ul>
                    <li>Less is more - keep your design as simple and uncluttered as possible</li>
                    <li>Understand the importance of Defaults - Aim for 'Next', 'Next', 'Next'</li>
                    <li>Hide advanced options, but make them easy to find!</li>
                </ul>
                <p>
                    Most developers think about user interface last. They spend their time worrying
                    about class design, threading, and system architecture. All this is important, of
                    course. But the user only experiences software on the surface level. It might be
                    fantastic under the covers, but if the user interface is not intuitive the user
                    will think the application is just hopeless. If the user interface doesn't afford
                    an easy and simple understanding of how to operate the application, you'll get a
                    lot of unhappy customers and unnecessary support calls. Do yourself a favour, take
                    some time to think about UI first.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/badui2.jpg" width="411" alt="Bad UI Example" height="307" /></dt><dd>
                            Figure: Bad Example - An example of a poor UI</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/FlyInUrinal.jpg" alt="Fly in a Urinal" width="412" height="411" /></dt><dd>
                            Figure: Good Example - See the fly? (an example of excellent usability) Dutch manufacturers
                            realized that a fly painted on the porcelain of a urinal nearly always became a
                            &quot;target&quot; for men using the facility. And the fly is positioned in precisely
                            the right place for minimal spillage or splashback. Clever people those Dutch!</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="MessageBoxGuidelines"></a>Do you know how to make message boxes user friendly?
                </h2>
                <p>
                    Message boxes should have consistent and informative titles and descriptions, and
                    icons should be used appropriately.</p>
                <p>
                    <strong>Title<br />
                    </strong>The title should contain the application name, so the user knows what application
                    generated the warning/error. This is especially important when developing add-ins
                    (e.g. Outlook add-ins or Smart Tags) as it can be difficult to know what caused
                    the message box to pop up. <strong>Application.ProductName</strong> and <strong>Application.ProductVersion</strong>
                    should be used to retrieve the data from AssemblyInfo. There is no need for the
                    title to contain a brief description of the error because that information is readily
                    available in the message box itself.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadMsgTitle.jpg" alt="Bad Title Example" width="380" height="126" /></dt>
                    <dd>
                        Figure: Bad Example - Title contains brief description of error, which is already
                        contained in the message box</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodMsgTitle.jpg" alt="Good Title Example" width="719" height="126" /></dt>
                    <dd>
                        Figure: Good Example - Title contains Product Name (&quot;SSW eXtreme Emails!&quot;)
                        and Product Version (&quot;12.56&quot;)</dd></dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table21">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#TitleCS">SSW Code Auditor</a>
                            to check for this rule.<br />
                            <br />
                            <font face="Verdana" size="1"><span style="font-size: 9pt; font-family: Verdana"><strong>
                                Note</strong>: The Version Number in the title should only contain the Major and
                                the Minor version numbers (e.g. 11.28) and not the complete Major.Minor.Revision.Build
                                Numbers (e.g. 11.28.92.1198)</span></font>
                        </td>
                    </tr>
                </table>
                <br />
                <font face="Verdana" size="1"><span style="font-size: 9pt; font-family: Verdana">&nbsp;</span></font><strong>Description</strong><p>
                    The description should explain <i>what the error was</i>, followed by the <i>why it
                        occurred</i>. Information that is useful for debugging should be included with
                    errors where possible be in a &quot;Details&quot; section. You should also avoid
                    making the text unnecessarily wide. e.g.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadMessageBox.gif" alt="Centrix - Invalid Quote" width="584" height="120" /></dt>
                    <dd>
                        Figure: Bad Example - A message box that does not intuitively alert the user</dd></dl>
                <br />
                <ul>
                    <li>This is confusing, because it uses different terminology to the title (&quot;estimate&quot;
                        instead of &quot;quote&quot;)</li>
                    <li>There is no punctuation</li>
                    <li>The word &quot;Error&quot; is meaningless</li>
                    <li>Line breaks are not present, so the message box is too wide and the text may wrap
                        in the wrong spot</li>
                </ul>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/GoodMessageBox.gif" alt="Centrix - Invalid Quote Details"
                            width="395" height="146" /></dt>
                    <dd>
                        Figure: Good Example - A message box that is clear, consistent and intuitive</dd></dl>
                <br />
                <ul>
                    <li>Terminology is consistent</li>
                    <li>Punctuation is present</li>
                    <li>&quot;Details&quot; indicates that this information is useful for debugging</li>
                    <li>The text is split across three lines, and the technical information after Details
                        is separated from the description of the error.</li>
                </ul>
                <p>
                    <strong>Icon</strong><br />
                    Including an icon is important because not only does it give the user a visual indication
                    of the type of message, but without it only the Default beep sound is used. The
                    icon should reflect the type of information being presented:</p>
                <table border="0" class="data" cellpadding="3" cellspacing="0">
                    <tr>
                        <td style="padding-right: 5px">
                            <strong>Icon</strong>
                        </td>
                        <td>
                            <strong>Name</strong>
                        </td>
                        <td>
                            <strong>When to use</strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="Images/Info.gif" alt="" width="32" height="32" />
                        </td>
                        <td>
                            <strong>MessageBoxIcon.Information</strong>
                        </td>
                        <td>
                            Non-error information, e.g. Database connection test completed successfully.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="Images/Warning.gif" alt="Warning" width="31" height="31" />
                        </td>
                        <td>
                            <strong>MessageBoxIcon.Warning</strong>
                        </td>
                        <td>
                            A non-critical error, e.g. The input was invalid.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="Images/Error.gif" alt="error" width="32" height="32" />
                        </td>
                        <td>
                            <strong>MessageBoxIcon.Error</strong>
                        </td>
                        <td>
                            Critical error in the program, e.g. Program file was not found
                        </td>
                    </tr>
                    <tr valign="top">
                        <td>
                            <img src="Images/Question.gif" alt="" width="32" height="32" />
                        </td>
                        <td>
                            <strong>MessageBoxIcon.Question</strong>
                        </td>
                        <td>
                            <strong>NEVER</strong> use this.&nbsp;
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
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table17">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#TitleVB">SSW Code Auditor</a>
                            to check for this rule.
                        </td>
                    </tr>
                </table>
            </li>
            <li>
                <h2>
                    <a name="ErrorMessages">Do you avoid giving an Error message for validation purposes?</a>
                </h2>
                <p>
                    If you do a search and no matches are found diaplay a message indicating zero results
                    were returned rather than an error message.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/InappropriateError.gif" alt="" height="232" /></dt></dl>
                <p>
                    However, a user thinks that either:
                </p>
                <ol>
                    <li>They have done something wrong (i.e. they are incompetent) OR</li>
                    <li>The software is broken (i.e. your application is incompetent)</li>
                </ol>
                <p>
                    Forcing the user into this opinion is a good way to make them avoid using your software
                    in the future.
                </p>
                <p>
                    Instead, use the term Information&quot; when validation is required.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/AppropriateMessage.gif" alt="" height="126" /></dt>
                    <dd>
                        Figure: Only use &quot;Error&quot; when appropriate</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="ShortMessages"></a>Do you use messages that are concise and informative?
                </h2>
                <p>
                    It is important to use terminology that your users will understand. Do not to use
                    technical terms that may confuse your users. Use consistent words and phrasing for
                    similar situations. For example, the following phrases have the same meaning which
                    is the best one?
                </p>
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
                <p>
                    Microsoft use this one:
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/NotEnoughMemory.gif" alt="Not Enough Memory" border="1" width="500"
                            height="104" /></dt>
                    <dd>
                        Figure: Good Example - Microsoft error message is concise</dd></dl>
                <p>
                    Some other message types that Microsoft use are:
                </p>
                <table border="1" width="36%">
                    <tr bgcolor="#D8D8D8">
                        <td>
                            Message type
                        </td>
                        <td>
                            Sample message
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Not enough disk space
                        </td>
                        <td>
                            There is not enough disk space to complete the operation. Delete some unneeded files
                            on your hard disk, and then try again.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            File not found
                        </td>
                        <td>
                            The program cannot find the file filename.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Re-running setup
                        </td>
                        <td>
                            The filename file is missing. Run Setup again to reinstall the missing file. For
                            more information about running Setup, press F1.
                        </td>
                    </tr>
                </table>
                <p>
                    Consider using or adapting them in your application in similar scenarios. Only include
                    the information that the user needs and will understand.
                </p>
            </li>
            <li>
                <h2><a name="LoginState"></a>
                    <!--SSW Code Auditor - Ignore next line(HTML)-->
                    Do you make login state clear?</h2>
                <p>
                    <!--SSW Code Auditor - Ignore next line(HTML)-->
                    Make login state clear to help the user know the current state.
                    <dl class="badImage">
                        <dt>
                            <img border="0" src="Images/weblogin_bad.gif" alt="sample of logged in page" width="980"
                                height="317" /></dt>
                        <dd>
                            Figure: Bad Example - Logged in state - web form.</dd>
                    </dl>
                    <dl class="badImage">
                        <dt>
                            <img border="0" src="Images/winlogin_bad.gif" alt="sample of logged in form" width="468"
                                height="387" /></dt>
                        <dd>
                            Figure: Bad Example - Logged in state - win form.</dd>
                    </dl>
                </p>
                <p>
                    <dl class="goodImage">
                        <dt>
                            <img border="0" src="Images/weblogin_good.gif" alt="sample of logged in page" width="988"
                                height="295" /></dt>
                        <dd>
                            Figure: Good Example - Logged in state - web form.</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt>
                            <img border="0" src="Images/BetterInterface_sqlAuditorLogin.jpg" alt="sample of logged in form" /></dt>
                        <dd>
                            Figure: Good Example - Logged in state - win form.</dd>
                    </dl>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/weblogoff.gif" alt="sample of logged off page" width="989"
                                height="246" /></dt>
                        <dd>
                            Figure: Good Example - Logged off state - web form.</dd>
                    </dl>
                </p>
            </li>
            <li>
            <h2>
            <a name="HomePagePortal"></a>Do you make the homepage a portal?
            </h2>
            <p>Do you put useful current information on the homepage? Do you make it easy to use your core functions?</p>
<p>E.g. Top billing customers for the month and a button under it for adding an invoice</p>
<p>E.g. See the number of bugs counted by the most common</p>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/HomepagePortal.png" alt="TWA" /></dt>
                        <dd>
                            Figure: The homepage of TWA is a portal.</dd>
                    </dl>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/HomepagePortalSoftware.jpg" alt="Adobe Illustrator" /></dt>
                        <dd>
                            Figure: Adobe's Creative Suite also opens a portal 'homepage'.</dd>
                    </dl>
            </li>
            <li>
            <h2>
            <a name="LogUsage"></a>Do you log usage?
            </h2>
            <p>So you san see what functions are being used more often (e.g. reports, menu items)</p>
            <p>To work out what fields to show on search pages (standard and advanced tabs) and which parameters are being used.</p>

            </li>
            <li>
            <h2><a name="Popup"></a>Do you know to use Popup forms?</h2>
            <p>Some people like popup forms. Some do not.</p>

<p>Popup modal forms are no good:</p>
<ul>
<li>as you can’t read or edit something else in a window behind</li>
<li>as they take a lot of time to load in a browser (ask any CRM 4 user)</li>
</ul>

<p>Popup forms are good:</p>
<ul>
<li>as it is obvious you have an action step to perform before continuing</li>
<li>as they simplify a form that has lots of fields </li>
<li>if they can’t get lost behind another window</li>
<li>if you make them clear by dimming the background (see below)</li>
</ul>
                    <dl class="badImage">
                        <dt>
                            <img border="0" src="Images/Popup01.jpg" alt="Adobe Illustrator" /></dt>
                        <dd>
                            Bad example: if this was a popup form it would be easier to focus on where to look (as a minimum you would be looking at half the screen)</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt>
                            <img border="0" src="Images/Popup02.jpg" alt="Adobe Illustrator" /></dt>
                        <dd>
                            Good example: the popup with the dimmed background is much more intuitive</dd>
                    </dl>
            </li>
            <li>
            <h2>
            <a name="EasySearch"></a>Do you make your data easy to search?
            </h2>
                    <dl class="goodImage">
                        <dt>
                            <img border="0" src="Images/EasySearch.png" alt="Easy to search" /></dt>
                        <dd>
                            Good example: search box makes it easy to find data</dd>
                    </dl>
            </li>
            <li>
            <h2>
            <a name="MessageBox"></a>Do you avoid using message boxes?
            </h2>
                    <p>
                    There is nothing quite so annoying as persistant pop up message boxes, demanding your attention.
                    </p>
                    <p>Only use them in the following scenarios:</p>
<ul>
<li>Confirming the deletion of a record</li>
<li>Kicking off a long running process</li>
</ul>
            </li>
        </ol>--%>
        
       
        
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
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=EF">Edward Forgacs</a><br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DDK">David Klein</a><br />
        </p>
    </div>
</asp:Content>
