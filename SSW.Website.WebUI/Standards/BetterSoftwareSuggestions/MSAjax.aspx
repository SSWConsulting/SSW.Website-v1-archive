<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="Microsoft .NET (ASP.NET + AJAX) suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <div class="TableOfContents">
        <h3>
            Microsoft .NET ASP.NET suggestions</h3>
        <ol>
            <li><a href="#catchbrokenredirectlinks">Catch broken redirect statements</a></li>
            <li><a href="#AspNetTabControl">V2.0: No Tab Control in ASP.NET</a></li>
            <li><a href="#V2SortOrder">V2.0: No sort order indicator in GridView</a></li>
            <li><a href="#V2TreeViewNodeEditor">V2.0: TreeView Node Editor dialog needs to be resizable</a></li>
            <li><a href="#V2PlaceHolders">V2.0: PlaceHolders will be able to be resized</a></li>
            <li><a href="#V2WizardControl">V2.0: Wizard control default buttons text will be Back
                and Next</a></li>
            <li><a href="#BlinqTimestamp">BLINQ does not work with Timestamp</a></li>
            <li><a href="#DateTimePickerControl">Date/Time Picker Control</a></li>
            <li><a href="#SchemaAndIntelliSense">Update Schema to Include Intrinsic Client-Side
                Events for ASP.NET Controls</a></li>
            <li><a href="#SelectAllCheckWeb">A top CheckBox to "select all" in web forms</a></li>
            <li><a href="#PastingScreenshot">Add support for pasting in screenshots</a></li>
        </ol>
        <h3>
            Microsoft .NET AJAX suggestions</h3>
        <ol>
            <li><a href="#accordion">Have a different icon for currently expanded pane in the ASP.NET
                AJAX toolkit</a></li>
            <li><a href="#Watermark">Add a function to WaterMake to check the value changed by scripts.</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <h2>
            Microsoft .NET ASP.NET suggestions</h2>
        <ol>
            <li>
                <h2>
                    <a name="catchbrokenredirectlinks"></a>Catch broken redirect statements</h2>
                <p>
                    When programming today it is common to use code like:
                </p>
                <ul>
                    <li>Response.Redirect("ScottGu.aspx");</li>
                </ul>
                <p>
                    The problem here is that if 'ScottGu.aspx' is moved or deleted, Visual Studio doesn't
                    pick it up. We want it to be strongly typed. A way to achieve this is to use a class
                    name:
                </p>
                <ul>
                    <li>Response.Redirect(ScottGu); // 'ScottGu' is a class.</li>
                </ul>
                <p>
                    Now, when this file is deleted or renamed, it will generate a compile error (like
                    winforms)
                </p>
                <p>
                    Note we would also need the following overloads:</p>
                <ul>
                    <li>void Redirect(System.Type RedirectPage);</li>
                    <li>void Redirect(System.Type RedirectPage, string QueryString);</li>
                    <li>void Redirect(string URL);</li>
                </ul>
                <p>
                    Sample usage:
                </p>
                <ul>
                    <li>Redirect(ScottGu);</li>
                    <li>Redirect(ScottGu, CustomerID=BOLID);</li>
                    <li>Redirect(www.google.com.au);</li>
                </ul>
                <br />
            </li>
            <li>
                <h2>
                    <a name="AspNetTabControl"></a>V2.0: No Tab Control in ASP.NET</h2>
                <p>
                    There is no Tab Control in ASP.NET. There are plenty of 3rd party controls but we
                    believe that this important functionality will be built into ASP.NET. We need a
                    tab control like the one used on <a href="/ssw/Redirect/Microsoft/AspNet.asp" target="_blank">
                        www.asp.net</a>.<br />
                    &nbsp;</p>
            </li>
            <li>
                <h2>
                    <a name="V2SortOrder"></a>V2.0: No sort order indicator in GridView</h2>
                <p>
                    When you enable Column Sorting in a GridView you will automatically have arrows
                    like this:</p>
                <p>
                    <img border="0" src="../Images/ScreenSortOrderGood.jpg" alt="Screen Sort Order Good"
                        width="167" height="119"></p>
                <p>
                    Unlike now, which has no indication of which column is sorting and what order it's
                    ordered in.</p>
                <p>
                    <img border="0" src="../Images/ScreenSortOrderBad.gif" alt="Screen Sort Order Bad"
                        width="555" height="154"></p>
            </li>
            <li>
                <h2>
                    <a name="V2TreeViewNodeEditor"></a>V2.0: TreeView Node Editor dialog needs to be
                    resizable</h2>
                <p>
                    The TreeView Node Editor dialog needs to be resizable, or at least a bit larger,
                    so you can view the text on the left and the properties on the right without scrolling
                    up and down continually.</p>
                <p>
                    <img src="Images/TreeViewNodeEditor.gif" alt="Tree View Node Editor" width="484"
                        height="349"><br />
                    <b>Figure: This dialog is far too small, but there is no way to resize it!</b></p>
            </li>
            <li>
                <h2>
                    <a name="V2PlaceHolders"></a>V2.0: PlaceHolders will be able to be resized</h2>
                <p>
                    ASP.NET ContentPlaceHolders need be able to be able to be resized. Clearly the "Title"
                    and "Description" below are far too big.</p>
                <p>
                    <img src="Images/ContentPlaceHolders.gif" alt="Content Place Holders" width="600"
                        height="587"><br />
                    <b>Figure: The "Title" and "Description" ContentPlaceHolders are much too big, but there
                        is no way to resize them.</b></p>
            </li>
            <li>
                <h2>
                    <a name="V2WizardControl"></a>V2.0: Wizard control default buttons text will be
                    Back and Next</h2>
                <p>
                    According to <a href="/ssw/Redirect/Microsoft/microch13.htm">http://msdn.microsoft.com/library/en-us/dnwue/html/ch13h.asp?frame=true</a>,
                    the commands for navigating through a wizard will be &quot;< Back&quot; and &quot;Next
                    >&quot;.
                </p>
                <p>
                    <img src="Images/WizardControlNext.gif" width="731" height="457"><br />
                    <b>Figure: Wizard Control in ASP .NET 2.0, the button text will be "Next >"</b>
                </p>
                <p>
                    <img src="Images/WizardControlPrevious.gif" width="731" height="439"><br />
                    <b>Figure: Wizard Control in ASP .NET 2.0, the button text will be "< Back"</b>
                </p>
                <p>
                    <b>Tip:</b> You can change the default buttons text by adding the following text
                    (highlighted) to your &lt;asp:Wizard&gt; tag:
                    <br />
                    <br />
                    &lt;asp:Wizard ID=&quot;Wizard1&quot; runat=&quot;server&quot; ActiveStepIndex=&quot;0&quot;
                    <span style="background-color: #FFFF00">FinishPreviousButtonText=&quot;&lt; Back&quot;</span><br />
                    <span style="background-color: #FFFF00">StartNextButtonText=&quot;Next &gt;&quot;</span>
                    <span style="background-color: #FFFF00">StepNextButtonText=&quot;Next &gt;&quot;</span>
                    <span style="background-color: #FFFF00">StepPreviousButtonText=&quot;&lt; Back&quot;</span>&gt;</p>
                <p>
                    Read more about this on our <a href="/ssw/Standards/Rules/RulesToBetterWebsitesLayout.aspx#BackLink">
                        Rules to Better Websites</a>.
                </p>
            </li>
            <li>
                <h2>
                    <a name="BlinqTimestamp"></a>BLINQ does not work with Timestamp</h2>
                <p>
                    The reason that Blinq does not work with Timestamps in ASP.NET 2.0 is because the
                    ASP.NET 2.0 datasource does not support byte array serialization, even though Blinq
                    correctly identifies timestamps as a version field. As a result, the timestamp value
                    is null during post back, and fails the concurrency checking. Ultimately, it throws
                    the following exception:
                    <img src="Images/Blinq.gif" width="650" height="250"><br />
                </p>
                <p>
                    <h3>
                        <b>The recommended workaround to current users</b></h3>
                    <ul>
                        <li>The following code changes will be rquired in YourDatabase.cs, which is located
                            in App_Code folder of the BLINQ generated website:<br />
                            <b>[Column(Storage="_SSWTimestamp", DBType="rowversion NOT NULL", IsVersion=true)]</b><br />
                            To<br />
                            <b>[Column(Storage="_SSWTimestamp", DBType="rowversion NOT NULL", UpdateCheck=System.Data.DLink.UpdateCheck.Never)]</b>
                        </li>
                    </ul>
                </p>
                <p>
                    <h3>
                        <b>The recommended solution to Microsoft</b></h3>
                    <ul>
                        <li>Add functionality to asp.net datasource, so that, it supports byte array serialization
                            to recognize timestamp as a version field. </li>
                    </ul>
                </p>
            </li>
            <li>
                <h2>
                    <a name="DateTimePickerControl"></a>Date/Time Picker Control</h2>
                <div class="quoteRightWrap">
                    <blockquote>
                        Yep - this would be a great control to include in the box. You can simulate it today
                        using a Calendar control with an PopUpExtender Atlas control - but I agree having
                        one completely integrated one would be best.
                    </blockquote>
                    <p>
                        Scott Guthrie, Microsoft</p>
                </div>
                <p>
                    Please provide us with a Date/Time Picker Control. Rather than having Reporting
                    Services teams find or create their own, they could use this built-in ASP .NET control.
                    An additional benefit is that developers, like us, can have standard controls in
                    their applications.</p>
                <p>
                    <dl class="image">
                        <dt>
                            <img src="/ssw/standards/bettersoftwaresuggestions/images/DragonDatePickerExample.jpg"
                                width="584" height="355" /></dt>
                        <dd>
                            Figure: Example of SSW's use of the Date Picker Control</dd></dl>
                </p>
                <p>
                    Tip: I find myself always using RJS - a free one.<br />
                    See <a href="/ssw/Standards/DeveloperGeneral/WebdevelopmentToolsASPNET.aspx#PopupCalendar">
                        http://www.ssw.com.au/ssw/Standards/DeveloperGeneral/WebdevelopmentToolsASPNET.aspx#PopupCalendar</a>
                </p>
                <dl class="image">
                    <dt>
                        <img src="/ssw/standards/bettersoftwaresuggestions/Images/RJSDatePickerControl.jpg"
                            width="341" height="484" /></dt><dd>Figure: It would be beneficial to have a built-in
                                Date/Time Picker control like the RJS Popup Calendar</dd></dl>
                <p>Moreover, it would be great to have a DateRangePicker control. Instead of picking the start date and end date in two separate controls, we can pick the start date and end date easily in the same control.</p>
                <dl class="image">
                        <dt>
                            <img src="/ssw/standards/BetterSoftwareSuggestions/images/daterangepicker.gif"/></dt>
                            <dd>Figure: DateRangePicker</dd>
                </dl>
                <p>
                    We also wish to see these types of controls in <a href="/ssw/Standards/BetterSoftwareSuggestions/ReportingServices.aspx#ParameterControl"
                        target="_blank">Microsoft SQL Reporting Services</a>.</p>
            </li>
            <li>
                <h2>
                    <a name="SchemaAndIntelliSense"></a>Update Schema to Include Intrinsic Client-Side
                    Events for ASP.NET Controls</h2>
                <p>
                    ASP.NET Server-side controls which render elements on the client-side will have
                    the same intrinsic events as normal HTML elements.
                    <br />
                    Currently there is no intellisense / schema support for these events:
                </p>
                <p>
                    <dl class="image">
                        <dt>
                            <img src="/ssw/standards/bettersoftwaresuggestions/images/VSIntelligence1.jpg" width="565"
                                height="52" /></dt>
                        <dd>
                            Figure: No intellisense / schema support for ondblclick event for ASP.NET ListBox
                            control.</dd></dl>
                </p>
                <p>
                    Any ASP.NET control that renders to the client will include the same core events
                    as a normal HTML element, such as this input button:</p>
                <dl class="image">
                    <dt>
                        <img src="/ssw/standards/bettersoftwaresuggestions/Images/VSIntelligence2.jpg" width="326"
                            height="38" /></dt>
                    <dd>
                        Figure: Intelligence / schema support for "Input" html element.</dd>
                </dl>
                <p>
                    The schema for ASP.NET controls rendering to the client will include the following,
                    where applicable, as per the W3C-Defined <a href="/SSW/Redirect/W3HTMLScripts.htm">Intrinsic
                        Events</a>:</p>
                <table border="0" cellpadding="4px" cellspacing="4px">
                    <tr>
                        <td>
                            onload
                        </td>
                        <td>
                            The onload event occurs when the user agent finishes loading a window or all frames
                            within a FRAMESET. This attribute may be used with BODY and FRAMESET elements.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            onunload
                        </td>
                        <td>
                            The onunload event occurs when the user agent removes a document from a window or
                            frame. This attribute may be used with BODY and FRAMESET elements.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            onclick
                        </td>
                        <td>
                            The onclick event occurs when the pointing device button is clicked over an element.
                            This attribute may be used with most elements.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ondblclick
                        </td>
                        <td>
                            The ondblclick event occurs when the pointing device button is double clicked over
                            an element. This attribute may be used with most elements.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            onmousedown
                        </td>
                        <td>
                            The onmousedown event occurs when the pointing device button is pressed over an
                            element. This attribute may be used with most elements.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            onmouseup
                        </td>
                        <td>
                            The onmouseup event occurs when the pointing device button is released over an element.
                            This attribute may be used with most elements.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            onmouseover
                        </td>
                        <td>
                            The onmouseover event occurs when the pointing device is moved onto an element.
                            This attribute may be used with most elements.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            onmousemove
                        </td>
                        <td>
                            The onmousemove event occurs when the pointing device is moved while it is over
                            an element. This attribute may be used with most elements.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            onmouseout
                        </td>
                        <td>
                            The onmouseout event occurs when the pointing device is moved away from an element.
                            This attribute may be used with most elements.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            onfocus
                        </td>
                        <td>
                            The onfocus event occurs when an element receives focus either by the pointing device
                            or by tabbing navigation. This attribute may be used with the following elements:
                            A, AREA, LABEL, INPUT, SELECT, TEXTAREA, and BUTTON.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            onblur
                        </td>
                        <td>
                            The onblur event occurs when an element loses focus either by the pointing device
                            or by tabbing navigation. It may be used with the same elements as onfocus.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            onkeypress
                        </td>
                        <td>
                            The onkeypress event occurs when a key is pressed and released over an element.
                            This attribute may be used with most elements.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            onkeydown
                        </td>
                        <td>
                            The onkeydown event occurs when a key is pressed down over an element. This attribute
                            may be used with most elements.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            onkeyup
                        </td>
                        <td>
                            The onkeyup event occurs when a key is released over an element. This attribute
                            may be used with most elements.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            onsubmit
                        </td>
                        <td>
                            The onsubmit event occurs when a form is submitted. It only applies to the FORM
                            element.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            onselect
                        </td>
                        <td>
                            The onselect event occurs when a user selects some text in a text field. This attribute
                            may be used with the INPUT and TEXTAREA elements.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            onchange
                        </td>
                        <td>
                            The onchange event occurs when a control loses the input focus and its value has
                            been modified since gaining focus. This attribute applies to the following elements:
                            INPUT, SELECT, and TEXTAREA.
                        </td>
                    </tr>
                </table>
            </li>
            <li><a name="SelectAllCheckWeb"></a>
                <h2>
                    A top CheckBox to "select all" in web forms</h2>
                <p>
                    The header of a checkbox column (e.g. in GridView) will contain a checkbox by default.
                    When this checkbox is checked, all checkboxes below are checked too. This checkbox
                    is more than a check box with all things (e.g. properties, methods and events) applied
                    to a CheckBox control.</p>
                <img src="Images/SelectAllCheckBox_Web.jpg" alt="A top checkbox to select all checkboxes"
                    width="602" height="230" />
                <br />
                <b>Figure: A top checkbox to select all checkboxes underneath it in a web form</b>
            </li>
                        <li>
                <h2>
                    <a name="PastingScreenshot"></a>Add support for pasting in screenshots in OWA</h2>
                <p>
                    Outlook supports pasting an image into the content (when we create an email like
                    this one)...... It has for more than 10 years.<br />
                    But I am yet to see this in any other application (correct me if I am wrong).<br />
                    Eg. The developers of an application I was reviewing recently wanted to improve
                    their feedback form to allow users to include screen captures.</p>
                <p>
                    Q:\ How did they do it?<br />
                    A:\ By adding an 'Attachment' button. This allows the user to save the image to
                    their PC, click the 'Attachment' button, then browse to the file they wish to attach.
                    <br />
                    This is a pain in the neck for the users.</p>
                <p>
                    I would like both the Windows Forms and Web Forms teams to provide a form (out of
                    the box) that will support pasting in an image from the clipboard...... like you can
                    using Outlook<br />
                    PS: Do we need an new XHTML datatype field in SQL Server 2008?</p>
                <dl class="image">
                    <dt>
                        <img src="images/PasteScreenShot.JPG" alt="Add support of pasting screenshots" />
                    </dt>
                    <dd>
                        Figure: The Attachment button will not be needed.
                    </dd>
                </dl>
                <p>Note: We need the same on Windows forms</p>
            </li>
        </ol>
        <h2>
            Microsoft .NET AJAX suggestions</h2>
        <ol>
            <li>
                <h2>
                    <a name="accordion"></a>Have a different icon for currently expanded pane in the
                    ASP.NET AJAX toolkit please</h2>
                <p>
                    The accordion control in the <a href="/ssw/Redirect/MSAjax.htm">ASP.NET AJAX toolkit
                        (on CodePlex)</a><img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif"
                            width="17" height="11" />
                    needs to indicate visually which Panel is currently expanded. The current version
                    of the accordion control has no distinguishing icon when expanded.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/AjaxBadExample.GIF" alt="ASP.NET Ajax - bad example" border="0"></dt>
                    <dd>
                        Bad example - icons are all the same regardless. The current version of Microsoft
                        Ajax Accodion control doesn't have properties for setting those icons.
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/AjaxgoodExample.GIF" alt="ASP.NET Ajax - recommended example" border="0"></dt>
                    <dd>
                        Recommended example - Different icon indicates which Panel is currently expanded
                    </dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        <pre>
    &lt;ajaxToolkit:Accordion 
        ID="MyAccordion" 
        runat="server" 
        SelectedIndex="0" 
        HeaderCssClass="accordionHeader"
        ContentCssClass="accordionContent" 
        FadeTransitions="false" 
        FramesPerSecond="40"
        TransitionDuration="250" 
        <span style="background-color: #FFFF00">ExpandedImage="~/images/collapse_blue.jpg" CollapsedImage="~/images/expand_blue.jpg"</span>        
        AutoSize="None"&gt;</pre>
                    </dt>
                    <dd>
                        Recommended code example - ExpandedImage and CollapsedImage properties are required.
                        These properties are not available in the Accordion control of the current version
                        of ASP.NET AJAX toolkit.</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="Watermark"></a>Add a function to WaterMark to check the value changed by
                    scripts.</h2>
                <p>
                    Watermark is an ASP.NET AJAX extender. It can be attached to an input control to
                    get the "watermark" behaviour.<br />
                    But this can not handle the value changes made by other conrols, so that the input
                    control's value will be lost when submitting the page.<br />
                    A better wartermark entender should check the text every time it changes.
                </p>
            </li>
        </ol>
    </div>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=PA">Peter Ahn</a><br>
    </p>
</asp:Content>
