<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Interfaces - Wizards" Buffer="true" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230496E7465726661636573')">
            Let us know</a> what you think.
    </p>
    <div class="TableOfContents">
        <p>
            <strong>Rules To Better Interfaces - Wizards</strong></p>
        <ol>
            <li><a href="#Wizard">Wizards - Do you use a Wizard to help a user through a complicated set of steps?</a></li>
            <li><a href="#FirstPageTitle">Wizards - Does the first form provide the user product information?</a></li>
            <li><a href="#IntroScreen">Wizards - Do you add an useful introduction screen (with an image of where it is going) prior to settings?</a></li>
            <li><a href="#WizardStep">Wizards - Do you visually indicate the step where users are up to in the wizard?</a></li>
            <li><a href="#Finish">Wizards - Do you visually let the user know when they are finished?</a></li>
            <li><a href="#RememberLast">Wizards - Do you remember the user's last settings?</a></li>
            <li><a href="#Divider">Wizards - Do you use bold text and indentation, instead of dividing lines?</a></li>
            <li><a href="#CloseCancelDifference">Wizards - What's the difference between Close and Cancel?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="Wizard"></a>Wizards - Do you use a Wizard to help a user through a complicated
                    set of steps?
                </h2>
                <p>
                    Though all software should be intuitive there are still times when users need extra
                    guidance. Wizards are ideal especially for stepping through more complicated steps
                    or when an application isn't going to be used regularly. E.g. SSW Code Auditor may
                    only run once a month, during which time the user may forget all the steps involved.
                    You can see an example of all the relevant steps at <a href="/ssw/CodeAuditor/UserGuide.aspx">
                        Code Auditor User Guide</a>.</p>
                <p>
                    Most importantly when a first time a user tries your program, they should be able
                    to step through the setting up process. A wizard helps to show how your application
                    flows from beginning to end.</p>
                To ensure a consistent user experience, make sure to include these visual elements:
                <ol>
                    <li><strong>Page name.</strong> It is important for the user to know which page they
                        are currently on. </li>
                    <li><strong>Page description.</strong> You should provide a short description of the
                        task to be performed on the page. </li>
                    <li><strong>Instructions.</strong> Not required for every page, this is a short description
                        requesting the user to perform a task, for example, entering some values into a
                        text field. </li>
                    <li><strong>Company logo.</strong> This helps promote branding, however it should be
                        inconspicuous and should not move visual focus away from the body of your application.
                    </li>
                    <!--li><strong>Application logo.</strong> This should be included in the same place on 
		every page. This aids the user in identifying the active application, and 
		also promotes branding.&nbsp; </li-->
                </ol>
                <br />
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/GoodInformationFlow.gif" alt="SSW Link Auditor - Scan Target"
                            width="600" height="482" /></dt><dd>Figure: Good Example - SSW Link Auditor Wizard's
                                better flow of information</dd></dl>
                <p>
                    Technical Note: To ensure visual consistency across applications, create a base
                    form then set the properties in that form (application icon, menu structure, button
                    names etc.) Add any logic in for switching pages with the &quot;Next&quot; and &quot;Back&quot;
                    buttons. Then for all projects, add a reference to that one and inherit the customized
                    form.</p>
                <p>
                    In the forms in your application, instead of inheriting from <strong>System.Windows.Forms.Form</strong>
                    (the Default), inherit from your new base form class.
                </p>
                <dl class="code">
                    <dt>
                        <pre>public class MyForm : System.Windows.Form.Form</pre>
                    </dt>
                    <dd>
                        Figure: Default code in a Windows Form</dd></dl>
                <dl class="code">
                    <dt>
                        <pre>public class MyForm : Company.Framework.BaseCustomForm</pre>
                    </dt>
                    <dd>
                        Figure: Change the form so that it inherits from your new base form class</dd></dl>
                <p>
                    The &quot;finish&quot; button denotes the end of the Wizard; by clicking on it,
                    the user closes the Wizard.</p>
                <p>
                    For longer processes, the Wizard should implement &quot;Start&quot; and &quot;Skip&quot;
                    features to guide the user through from start to finish.</p>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/StartProcess.gif" alt="SSW Code Auditor - Start Process"
                            width="550" height="459" /></dt><dd>Figure: Good Example - SSW Code Auditor Wizard featuring
                                &quot;Start&quot; and &quot;Skip&quot; options</dd></dl>
                <p>
                    Here's some more information on the <a target="_blank" href="/ssw/Redirect/Microsoft/wizard.htm">
                        Microsoft Standard for Wizard Welcome and Completion Page art</a>
                    <img alt="You are going to a site outside of ssw" src="Images/LeaveSite.gif" width="17"
                        height="11" />
                    and <a target="_blank" href="/ssw/Redirect/Microsoft/wizard2.htm">Interior Page art</a>
                    <img alt="You are going to a site outside of ssw" src="Images/LeaveSite.gif" width="17"
                        height="11" />.</p>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesWizards/Pages/Do-you-use-a-Wizard-to-help-a-user-through-a-complicated-set-of-steps.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesWizards/Pages/Do-you-use-a-Wizard-to-help-a-user-through-a-complicated-set-of-steps.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="FirstPageTitle"></a>Wizards - Does the first form provide the user product
                    information?
                </h2>
                How you present the product information depends on the sort of application you are
                developing.<br />
                <br />
                <ul>
                    <li>
                        <p>
                            <i>If the application is wizard application :<br />
                                <br />
                            </i>The first page of the utility should introduce the user to the application.</p>
                        <p>
                            Because the first two paragraphs of this screen and the first few paragraphs of
                            the application's website often contain virtually identical information (i.e., describing
                            the product) it may be a good idea to make both the same. The first two paragraphs
                            of the screen can be copied from portions of the website.</p>
                        <p>
                            A &quot;More&quot; hyperlink can also be added at the bottom of the screen, which
                            will direct the user to the website where they can read further information about
                            the application.</p>
                        <dl class="goodImage">
                            <dt>
                                <img border="0" src="Images/CodeAuditorWelcome.gif" alt="ssw Code Auditor Welcome Screen"
                                    width="550" height="459" /></dt><dd>Figure: Good Example - This wizard has an information
                                        screen as the first screen</dd></dl>
                    </li>
                    <li><i>If the application is not a wizard application<br />
                    </i>
                        <br />
                        The main menu of the application should have a Help - About... menu item. When clicked,
                        a new form should open up containing similar information as the page in the wizard
                        application described above.<br />
                        <dl class="goodImage">
                            <dt>
                                <img border="0" src="Images/HelpAbout.jpg" alt="Help About" width="254" height="148" /></dt><dd>
                                    Figure: Good Example - Help - About... menu item opening the product information</dd></dl>
                    </li>
                </ul>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesWizards/Pages/Does-the-first-form-provide-the-user-product-information.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesWizards/Pages/Does-the-first-form-provide-the-user-product-information.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="IntroScreen"></a>Wizards - Do you add an useful introduction screen (with an image of where it is going) prior to settings?
                </h2>
                <p>
                    A brief introduction will give some idea about what will happen on this process and it may save user's time and effort. So, if you expect that not all users will be totally clear on what the settings do, add an introduction with a screen.</p>
                <ul>
                    <li>Add screen shot with red circle at the top of the screen </li>
                    <li>Put a description next to it </li>
                </ul>
                <dl class="badImage">
                    <dt>
                        <img src="Images/IntroScreenBad.gif" alt="ssw Exchange Manager - Report Publication" /></dt>
                        <dd>Figure: Bad Example - This screen has no product introduction... The user is thinking &#8216;What is this going to do?&#8217;</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/IntroScreenGood.gif" alt="ssw Exchange Manager - Report Publication" /></dt>
                        <dd>Figure: Good Example - This screen has product information before the settings... With a screen capture of where it ends up</dd></dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesWizards/Pages/Do-you-add-an-useful-introduction-screen-prior-to-settings.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesWizards/Pages/Do-you-add-an-useful-introduction-screen-prior-to-settings.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="WizardStep"></a>Wizards - Do you visually indicate the step where users are up to in the wizard?
                </h2>
                <p>In a wizard, a visual indication about the progress should be provided so users know where they are up to. It should also let the user know which steps have been completed and how far to go.</p>
                <p>A good way to do this is use a left navigation bar with <strong>bold</strong> on the step they are currently at.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/FrontPageWizard.gif" alt="Microsoft FrontPage - Corporate Presence Web Wizard" />
                    </dt>
                    <dd>Figure: Bad Example - The progress bar does not indicate completed nor next steps</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/Wizard_1.jpg" alt="Good Wizard example" /></dt>
                    <dd>Figure: Good Example - This wizard form shows all steps and indicates where the user is up to</dd>
                </dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesWizards/Pages/Do-you-visually-indicate-the-step-where-users-are-up-to-in-the-wizard.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesWizards/Pages/Do-you-visually-indicate-the-step-where-users-are-up-to-in-the-wizard.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="Finish"></a>Wizards - Do you visually let the user know when they are finished?
                </h2>
                <p>
                    When a user reaches the last page of a wizard, a visual indication should be provided
                    so that they know that the process has finished. We use a finish flag to do this.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadFinishedPage.gif" width="550" alt="ssw SQL Auditor - Results"
                            height="562" /></dt><dd>Figure: Bad Example - This is the last page of the wizard but
                                it is not obvious because the finish flag is small and the &quot;Next&quot; button
                                still enabled</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/GoodFlagImage.png" width="640" height="514" alt="SSW Link Auditor - Finished" /></dt>
                    <dd>
                        Figure: Good Example - Good quality Finish flag on the last page of a wizard.</dd></dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesWizards/Pages/Do-you-visually-let-the-user-know-when-they-are-finished.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesWizards/Pages/Do-you-visually-let-the-user-know-when-they-are-finished.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="RememberLast"></a>Wizards - Do you remember the user's last settings?
                </h2>
                <p>
                    The user's last settings should be saved and should be selected as the Default the
                    next time a form is opened in many instances. For example:<br />
                </p>
                <ul>
                    <!--SSW Code Auditor - Ignore next line(HTML)-->
                    <li>Login forms - the last login name should be the Default selected and the cursor
                        should be in the password box.
                        <dl class="badImage">
                            <dt>
                                <img border="0" src="Images/BadFormLogin.jpg" alt="SSW Time PRO .NET - Login" width="342"
                                    height="165" /></dt>
                            <dd>
                                Figure: Bad Example - Last Username is not saved</dd></dl>
                        <dl class="goodImage">
                            <dt>
                                <img border="0" src="Images/GoodFormLogin.jpg" width="342" height="165" alt="SSW Time PRO .NET - Login" /></dt>
                            <dd>
                                Figure: Good Example - Last Username is saved</dd></dl>
                    </li>
                    <li>Report criteria forms - e.g. date start and date end fields should be automatically
                        populated</li>
                </ul>
                <p>
                    How do I store the settings?
                </p>
                <ul>
                    <li>.NET: Use the <a href="http://rules.ssw.com.au/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ConfigurationManagementAppBlock.aspx">
                        Configuration Block</a> to store the settings.</li>
                    <li>Access: Use a local table called 'Control' with one record.</li>
                </ul>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesWizards/Pages/Do-you-remember-the-users-last-settings.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesWizards/Pages/Do-you-remember-the-users-last-settings.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="Divider"></a>Wizards - Do you use bold text and indentation, instead of
                    dividing lines?
                </h2>
                <p>
                    Many applications have a lot of content on each form. If this is the case there
                    needs to be some way to separate certain sections. To achieve this separation Microsoft
                    (and therefore most developers) uses separating lines, but this UI is not perfect
                    because:
                </p>
                <ul>
                    <li>It creates additional visual clutter</li>
                    <li>It is hard to maintain</li>
                </ul>
                <p>
                    Note: This rule is a rare one which is different from Microsoft.
                    <br />
                    Did they get it wrong? Well I think so?
                    <br />
                    Are they consistent with the separation lines? Nope so maybe they aren&#8217;t so
                    sure about it.
                </p>
                <p>
                    We recommend using bold instead of dividing lines because:
                </p>
                <ol>
                    <li>Bold stands out</li>
                    <li>Indentation is more important</li>
                    <li>Developers are not good at keeping the lines aligned - you could create a .NET custom
                        control to do this - but Microsoft do not provide one
                        <ul>
                            <li>The dividing lines create additional visual clutter (ever so slight)</li>
                            <li>Each line creates additional performance implications (ever so slight)</li>
                        </ul>
                    </li>
                </ol>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/ToolsOptionforIE.gif" alt="Internet options form of IE"
                            width="416" height="469" /></dt><dd>
                                Figure: Bad Example - This is the Tools - Options from Internet Explorer and it
                                groups each section in a groupbox - busy UI.
                            </dd>
                </dl>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/ToolsOptionforOutlook.gif" alt="Options form of Outlook"
                            width="449" height="519" /></dt>
                    <dd>
                        Figure: Bad Example - This is the Tools - Options from Outlook and it uses dividing
                        lines for each section.</dd></dl>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/BadDivider.gif" width="550" height="459" alt="SSW Code AUditor - Email and Schedule" /></dt><dd>
                            Figure: Bad Example - This is an old screen from Code Auditor - the dividing lines
                            are not required.
                        </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/GoodDivider.jpg" width="550" height="459" alt="SSW Code Auditor - Email and Schedule" /></dt>
                    <dd>
                        Figure: Good Example - This is the new screen from Code Auditor - the bold title
                        and indenting are the best way to show the sections.</dd></dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesWizards/Pages/Do-you-use-bold-text-and-indentation-instead-of-dividing-lines.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesWizards/Pages/Do-you-use-bold-text-and-indentation-instead-of-dividing-lines.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="CloseCancelDifference"></a>Wizards - What's the difference between Close
                    and Cancel?
                </h2>
                <p>Irrelevant of the type of application, "Close" should never be used in any wizard or form. 'Cancel' has a much clearer definition and should always be used to exit a process without starting it, saving it or changing it. </p>
                <p>See our rule <a href="http://www.ssw.com.au/ssw/Standards/Rules/RulestoBetterInterfaces-Forms.aspx#LabelButtons">Do you label your form buttons consistently?</a> on this.</p>
<%--                <p>
                    When it comes to wizards, there are basically two types of application you are likely
                    to design:</p>
                <ul>
                    <li>An application with its own user interface, which allows you to optionally begin
                        and end a wizard from within that interface</li>
                    <li>An application that is entirely composed of a wizard interface, where ending the
                        wizard also means ending the application</li>
                </ul>
                <p>
                    <s>This is where the difference between using Close and using Cancel buttons within
                    the wizard comes into play. The term 'cancel' is OK to use when the result will
                    simply be closing the wizard, without the rest of the application being shut down.</s></p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/CancelButtonInWizard.gif" alt="Cancel Button In Wizard"
                            width="511" height="437" /></dt>
                    <dd>
                        Figure: Bad Example - Cancel button for a wizard as part of a process</dd></dl>
                <p>
                    <s>The term 'close' is more appropriate when we are dealing with a wizard that, when
                    closed, ends the entire application.</s></p>
                <p>
                    Example:</p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/CloseButtonInWizard.gif" alt="Close Button In Wizard"
                            width="359" height="41" /></dt>
                    <dd>
                        Figure: Bad Example - Close button indicates the application will exit</dd></dl>--%>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesWizards/Pages/Whats-the-difference-between-Close-and-Cancel.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesWizards/Pages/Whats-the-difference-between-Close-and-Cancel.aspx</a></font>
            </li>
        </ol>

        <h2>Related Rules</h2>
            <p>Read the specific rules below:</p>
            <ul>
                <li><a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx">Rules to Better Interfaces - General</a></li>
                <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Windows-Applications.aspx">Rules to Better Interfaces - Windows Application</a></li>
                <li><a href="/ssw/Standards/Rules/RulesToBetterInterfaces-Popups-and-Messages.aspx">Rules to Better Interfaces - Popups and Messages</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Controls.aspx">Rules to Better Interfaces - Controls</a></li>		
                <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Forms.aspx">Rules to Better Interfaces - Forms</a></li>
				<li>Rules to Better Interfaces - Wizards</li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Reports.aspx">Rules to Better Interfaces - Reports, Charts and Dates</a></li>
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
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
        </p>
    </div>
</asp:Content>
