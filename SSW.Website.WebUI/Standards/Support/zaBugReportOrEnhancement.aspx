
<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Report Bug/Enhancement" %>

<asp:Content ContentPlaceHolderID="index" runat="server">
    <div class="TableOfContents">
    <h2>SSW Product Support</h2>
        <ul>
           
            <li><a href="#ConsultSupport">SSW Consulting Support</a></li>
            <li><a href="#Screenshots">Screen captures are always good</a></li>
            <li><a href="#StepsofBug">Give us steps to reproduce the bug</a></li>
            <li><a href="#BugReportNet">Bug Reporting with .NET Applications</a></li>
            <li><a href="#related">Related rules</a></li>
        </ul>
    </div>
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
<h1>Product Support</h1>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <div class="greybox">
        Thank you for taking the time to report a bug or to request an enhancement to either
        an SSW product, or custom designed software (Please read the <a href="../../Standards/Forms/ConsultingOrderTermsConditions.aspx">
            Terms and Conditions</a>). We manage projects using <a href="/ssw/EXtremeEmails/Default.aspx">
                SSW eXtreme Emails!</a> hence we would appreciate feedback in the form of
        a simple email. Whilst sending your support email could you please use the following
        guidelines.</div>

    <p>
        At SSW we endeavour to provide you with the best support we can. Before answering
        your support questions we require that you perform some simple tasks:
    </p>
    <ol>
        <li>Have you checked that you're able to meet the system requirements? (e.g. does the
            product require the .NET Framework installed?) </li>
        <li>If you're not sure if you meet the system requirements we've created software that
            will check that you've got the most current service packs installed on your machine.
            SSW Diagnostics will check for and also provide links to the updates. Before sending
            support emails please install and run <a href="/ssw/Diagnostics/Default.aspx">SSW Diagnostics</a>.
        </li>
        <li>Email us the SSW Diagnostics report and a description of the errors you are receiving
            and <a href="#Screenshots">screen shots</a> of the error messages you are getting,
            and <a href="#StepsofBug">the steps you followed</a> before the bug happened. A
            great screen capture utility that we use is <a href="/ssw/Standards/DeveloperGeneral/WindowsTools.aspx#Snagit">
                Fullshot</a> which gives you a great range of capture options.</li>
        <li>Subject &lt;Application Name&gt; &lt;Version&gt; &lt;Category&gt; (But why are email
            <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/ImportanceOfAGoodSubject.aspx">subjects</a>
            so important?)
            <dl class="badCode">
                <dt class="greybox">
                                From: Ulysses Maclaren<br />
                                Subject: <span class="highlight">Possible Bug: IStopWatch: Weekly report negative number</span>
                                <p>
                                    Hi Frank,</p>
                                I got a negative number as the total for the 13th of Oct in the weekly report.<br />
                                ...
                </dt>
                <dd>
                    Figure: Bad Example</dd>
            </dl>
            <dl class="goodCode">
                <dt class="greybox">
                                From: Ulysses Maclaren<br />
                                Subject: <span class="highlight">Possible Bug - IStopWatch 1.15 - Weekly report negative
                                    number</span>
                                <p>
                                    Hi Frank,</p>
                                I got a negative number as the total for the 13th of Oct in the weekly report.<br />
                                ...
                </dt>
                <dd>
                    Figure: Good Example - there is a version number next to the applicaiton name, and
                    the developers can go to this version directly.</dd>
            </dl>
        </li>
        <li>We also provide remote support if needed as per our <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/RemoteSupport.aspx"
            class="newWindow" target="_blank">Remote Support Standard</a> </li>
    </ol>
    <h3>
        <a name="ConsultSupport"></a>SSW Consulting Support</h3>
    <ol>
        <li>Address the email to <a href="javascript:var e1='%73s%77.%63%6fm&#046;&#097;&#117;',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='%69%6e&#102;%6f';var e0=e2+e3+'@'+e1;(window.location?window.location.replace(e0):document.write(e0));"
            title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">
            info@s*w.com.au</a></li><li>Subject &lt;Application Name&gt; &lt;Version&gt; &lt;Category&gt;
                (But why are email subjects so important?)</li><li>Use one of the following Categories to determine
                        when the work will be completed:</li><ul>
                            <li>BUG (if the application crashes to code) - Completed in the current Release</li><li>
                                IMPORTANT (for new issues) - Completed as part of the next Release with a high priority</li><li>
                                    INCOMPLETE (if a requested item has not been completed) - Completed in the current
                                    Release
                                    <br />
                                    <p>
                                        Note: If a Category isn't assigned the issue will be added to the next Release with
                                        a standard priority
                                    </p>
                                </li>
                        </ul>
        <li>Describe your request, and include a <a href="#Screenshots">screen shot</a> if possible.
            The best way to do this is by using a fantastic utility called <a href="/ssw/Standards/DeveloperGeneral/WindowsTools.aspx#Snagit">
                Fullshot</a>. To minimise the size of your attachments, here are some <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/AvoidLargeAttachment.aspx">
                    simple rules</a>.</li><li>Your Name and Phone</li><li>Please also run <a href="/ssw/Diagnostics/Default.aspx">
                        SSW Diagnostics</a> which automatically emails us an analysis of software on a machine.
                        Diagnostics requires the .NET Framework. <a href="/ssw/KB/KB.asp?KBID=Q504278">If you
                            cannot install the .NET Framework</a></li></ol>
    <table class="clsSSWTable" width="100%">
        <tr>
            <td>
                From: Gary Hanley<b><br />
                    Subject: Access Reporter - Version 6.9 - BUG </b>
                <p>
                    Dear SSW Support,</p>
                I installed SSW Access Reporter for .NET and I got this error message (Screen Shot
                attached). SSW Diagnostics has already emailed you its analysis of the software
                on my server.<br />
                <br />
                Thanks,<br />
                Gary<br />
            </td>
        </tr>
    </table>
    <h3>
        <a name="StepsofBug"></a>Give us steps to reproduce the bug</h3>
    <p>
        It'll be easier and more efficient to reproduce the bug with your steps than without
        any instruction. Then we can investigate it and reply to you much quickly.</p>
    <p>
        Here's a good example.</p>
    <ol>
        <li>I clicked 'Configure' button to configure the sample database.
            <dl class="image">
                <dt>
                    <img src="Images/ReproduceStep1.GIF" alt="Step 1 to reproduce the bug" width="631"
                        height="301" /></dt>
                <dd>
                    Figure: Step 1 to reproduce the bug
                </dd>
            </dl>
        </li>
        <li>In the following window, I clicked 'Select' button.
            <dl class="image">
                <dt>
                    <img src="Images/ReproduceStep2.GIF" alt="Step 2 to reproduce the bug" width="524"
                        height="569" /></dt>
                <dd>
                    Figure: Step 2 to reproduce the bug
                </dd>
            </dl>
        </li>
        <li>Then I made settings for the New Database, and clicked 'Test' button. It showed
            me 'Connection Successful'.
            <dl class="image">
                <dt>
                    <img src="Images/ReproduceStep3.GIF" alt="Step 3 to reproduce the bug" width="415"
                        height="533" /></dt>
                <dd>
                    Figure: Step 3 to reproduce the bug
                </dd>
            </dl>
        </li>
        <li>After that, I clicked 'Create' button and the error happened.
            <dl class="image">
                <dt>
                    <img src="Images/ReproduceStep4.GIF" alt="the bug happened" width="760" height="346" /></dt>
                <dd>
                    Figure: The bug happened
                </dd>
            </dl>
        </li>
    </ol>
    <h2>
        <a name="Screenshots"></a>Screen captures are always good</h2>
    <p>
        An image is worth a thousand words, that's true. So please add some screen captures
        in your Bug or Suggestion email.</p>
    <ul>
        <li>An email of reporting a bug
            <dl class="badImage">
                <dt>
                    <img src="Images/BadBugEmail.GIF" alt="Bad bug email" width="669" height="488" /></dt>
                <dd>
                    Figure: Bad Example - Reporting a bug without screen capture
                </dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img src="Images/GoodBugEmail.JPG" alt="Good bug email" width="804" height="718" /></dt>
                <dd>
                    Figure: Good Example - Reporting a bug with a screen capture
                </dd>
            </dl>
        </li>
        <li>An email of making a suggestion
    <dl class="badImage">
        <dt>
            <img src="Images/BadSuggestionEmail.GIF" alt="bad suggestion email" /></dt>
        <dd>
            Figure: Bad Example - Making a suggestion with no screen capture
        </dd>
    </dl>
    <dl class="goodImage">
        <dt>
            <img src="Images/GoodSuggestionEmail.JPG" alt="Good suggestion email" /></dt>
        <dd>
            Figure: Good Example - Making a suggestion with a screen capture
        </dd>
      
        <p><a name ="HowToUseBalloons"></a>See our rule on <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/HowToUseBalloons.aspx">How To Use Balloons</a> and configure your Fullshot.</p>
    </dl></li>
    </ul>
    <p>Better than a written description with screenshot is a <strong>screen recording</strong>. This should be followed for a more detailed bug report. Use Snagit (preferred) or Jing to record your screen.

    <h2>
        <a name="BugReportNet"></a>More Info... Bug Reporting with .NET Applications</h2>
    <p>
        .NET applications can sometimes produce a stack trace of an error, these error messages
        are all we need to figure out what has happened.&nbsp; <b>Please do not send us this
            screen shot</b>, instead, select the top section of what's within this box and
        paste it in an email that you can send back to us.<br />
        <br />
        The text within the 'Details' button is more useful for debugging and locating the
        problem.</p>
    <dl class="image">
        <dt>
            <img src="Images/DotNetDebug2.GIF" alt="the bug happened" width="440" height="321" /></dt>
        <dd>
            Figure: Bug details window
        </dd>
    </dl>
    <div class="greybox">
                See the end of this message for details on invoking
                <br />
                just-in-time (JIT) debugging instead of this dialog box.<br />
                <br />
                <span style="background-color: #FFFF00">We really want this part:</span><br />
                ************** Exception Text **************<br />
                System.ArgumentException: invalid sender parameter<br />
                Parameter name: sender<br />
                at WindowsApplication3.FormStart.button5_Click(Object sender, EventArgs e) in c:\datajohnliu\datavs7projects\windowsapplication3\formstart.cs:line
                143<br />
                at System.Windows.Forms.Control.OnClick(EventArgs e)<br />
                at System.Windows.Forms.Button.OnClick(EventArgs e)<br />
                at System.Windows.Forms.Button.OnMouseUp(MouseEventArgs mevent)<br />
                at System.Windows.Forms.Control.WmMouseUp(Message&amp; m, MouseButtons button, Int32
                clicks)<br />
                at System.Windows.Forms.Control.WndProc(Message&amp; m)<br />
                at System.Windows.Forms.ButtonBase.WndProc(Message&amp; m)<br />
                at System.Windows.Forms.Button.WndProc(Message&amp; m)<br />
                at System.Windows.Forms.ControlNativeWindow.OnMessage(Message&amp; m)<br />
                at System.Windows.Forms.ControlNativeWindow.WndProc(Message&amp; m)<br />
                at System.Windows.Forms.NativeWindow.Callback(IntPtr hWnd, Int32 msg, IntPtr wparam,
                IntPtr lparam)<br />
                <br />
                <span style="background-color: #FFFF00">This part is quite useful sometimes too.</span><br />
                ************** Loaded Assemblies **************<br />
                mscorlib<br />
                Assembly Version: 1.0.3300.0<br />
                Win32 Version: 1.0.3705.288<br />
                CodeBase: file:///c:/windows/microsoft.net/framework/ v1.0.3705/mscorlib.dll<br />
                ----------------------------------------<br />
                WindowsApplication3<br />
                Assembly Version: 1.0.1129.31301<br />
                Win32 Version: 1.0.1129.31301<br />
                CodeBase: file:///C:/DataJohnLiu/DataVS7Projects/ WindowsApplication3/bin/Debug/WindowsApplication3.exe<br />
                ----------------------------------------<br />
                System.Windows.Forms<br />
                Assembly Version: 1.0.3300.0<br />
                Win32 Version: 1.0.3705.288<br />
                CodeBase: file:///c:/windows/assembly/gac/system.windows.forms/ 1.0.3300.0__b77a5c561934e089/system.windows.forms.dll<br />
                ----------------------------------------<br />
                System<br />
                Assembly Version: 1.0.3300.0<br />
                Win32 Version: 1.0.3705.288<br />
                CodeBase: file:///c:/windows/assembly/gac/system/ 1.0.3300.0__b77a5c561934e089/system.dll<br />
                ----------------------------------------<br />
                System.Drawing<br />
                Assembly Version: 1.0.3300.0<br />
                Win32 Version: 1.0.3705.288<br />
                CodeBase: file:///c:/windows/assembly/gac/system.drawing/ 1.0.3300.0__b03f5f7f11d50a3a/system.drawing.dll<br />
                ----------------------------------------<br />
                System.Xml<br />
                Assembly Version: 1.0.3300.0<br />
                Win32 Version: 1.0.3705.288<br />
                CodeBase: file:///c:/windows/assembly/gac/system.xml/ 1.0.3300.0__b77a5c561934e089/system.xml.dll<br />
                ----------------------------------------<br />
                <br />
                <span style="background-color: #FFFF00">These are not really useful</span><br />
                ************** JIT Debugging **************<br />
                To enable just in time (JIT) debugging, the config file for this<br />
                application or machine (machine.config) must have the<br />
                jitDebugging value set in the system.windows.forms section.<br />
                The application must also be compiled with debugging<br />
                enabled.<br />
                <br />
                For example:<br />
                <br />
                &lt;configuration&gt;<br />
                &lt;system.windows.forms jitDebugging=&quot;true&quot; /&gt;<br />
                &lt;/configuration&gt;<br />
                <br />
                When JIT debugging is enabled, any unhandled exception<br />
                will be sent to the JIT debugger registered on the machine<br />
                rather than being handled by this dialog.<br />
</div>
    <h2><a name="related"></a>Related rules</h2>
       <ul>
           <li><a href="https://rules.ssw.com.au/do-you-know-the-right-way-to-report-bugs">Do you know the right way to report bugs?</a></li>
       </ul>

</asp:Content>
