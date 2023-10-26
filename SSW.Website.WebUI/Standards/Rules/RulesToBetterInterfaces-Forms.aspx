<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Interfaces - Data Entry Forms" Buffer="true" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230496E7465726661636573')"> Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <h4>Rules To Better Interfaces - Data Entry Forms</h4>
        <ol>
            <li><a href="#Embedded">Do you avoid doing an embedded 'Add'?</a></li>
            <li><a href="#RichTextboxNotes">Do you avoid using plain textboxes for notes?</a></li>
            <li><a href="#LabelButtons">Do you label your form buttons consistently?</a></li>
            <li><a href="#DynamicallyLabelButtons">Do you avoid dynamically labeling your form buttons?</a></li>
            <li><a href="#SizeSpacing">Do you follow the control size and spacing standards?</a></li>
            <li><a href="#Minimize">Do you know Windows Forms should have a minimum size to avoid unexpected UI behavior?</a></li>
            <li><a href="#DataEntryForms">Do you know the correct ways to develop Data Entry Forms?</a></li>
            <li><a href="#DrillAround">Do you provide the user Drill-Downs Drill-Arounds?</a></li>
            <li><a href="#ComboBoxDrillDown">Do you avoid using menus for Combo Box maintenance?</a></li>
            <li><a href="#ButtonAlign">Do you align your Add/Edit/Delete buttons horizontal and bottom right?</a></li>
            <li><a href="#DataJunk">Do you avoid &quot;Data Junk&quot; (data not manually entered by yourself)?</a></li>
            <li><a href="#AvoidCombining">Do you avoid combining different entities?</a></li>
            <li><a href="#TwoFormsAreBetter">Do you avoid using one form for data entry and find navigation?</a></li>
            <li><a href="#PopupEditForm">Do you create a popup form for editing details?</a></li>
            <li><a href="#ConsistentField">Do you have consistent way to store a same field?</a></li>
            <li><a href="#MenuSelect">Do you save the last users selections?</a><img src="Images/RedStar.gif" alt="Star" width="18" height="14" /></li>
            <li><a href="#BorderProtection">Do your Windows Forms have border protection?</a></li>
            <li><a href="#Drafts">Do you use the concept of drafts?</a></li>
            <li><a href="#OtherUIRules">Do you know other UI rules?</a></li>
        </ol>
    </div>

    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="Embedded"></a> Do you avoid doing an embedded 'Add'?</h2>
                <p>For any case of 'Add New', choose to open a new window (popup) for entering data.</p>
                <dl class="image">
                    <dt><img src="Images/EmbeddedAdd.jpg" alt="The 'Add New' button should open a new form" /></dt>
                    <dd>Figure: The 'Add New' button changes from a view into a data entry form</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/BadEmbeddedAdd.jpg" alt="The 'Add New' did not open a new form" /></dt>
                    <dd>Figure: Bad Example - The 'Add New' button, shown in Figure 1, opened the page in the same window</dd>
                </dl>
                <p>It is better to open in a new form, reasons being:</p>
                <ul>
                    <li>It is better for the user in terms of clarity. The change of view to data entry form can be a surprise</li>
                    <li>It is better to code e.g. if you are using this control in a couple of places you may need to show or hide 'Save' buttons etc. Otherwise, it is a pain to make it behave differently in different contexts.</li>
                </ul>
                <p>However, you do need to call back on save and requery it.<br />
                   Use a modal form and requery it (DON'T use JavaScriptinstead use the Modal Popup Form Example)<br />
                   An example of this is in Outlook with the 'New' button.</p>
                <dl class="goodImage">
                    <dt><img src="Images/GoodEmbeddedAdd.jpg" alt="The 'New' opens a new form" /></dt>
                    <dd>Figure: Good Example - the 'New' button in Outlook opens a new form for you to construct`your email</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/sharepoint-add-table.jpg" alt="Adding a new table in SharePoiny" /></dt>
                    <dd>Figure: Adding a table in SharePoint have a popup with dimmed background</dd>
                </dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-avoid-doing-an-embedded-Add.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-avoid-doing-an-embedded-Add.aspx</a></font>
            </li>

            <li>
                <h2><a name="RichTextboxNotes"></a>Do you avoid using plain textboxes for notes?</h2>
                <p>Instead of using plain textboxes for notes, use rich textboxes. It allows you to use links to URLs, formatting (including bold, underline, italics, font type and font size, etc.), bullet points and numbering.</p>
                <dl class="badImage">
                    <dt><img src="Images/BadNotes.jpg" alt="Use of a plain textbox for notes" /></dt>
                    <dd>Figure: Bad Example - use of a plain textbox limits the detail of the user's notes</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/GoodNotes.jpg" alt="Use of a rich textbox for notes" /></dt>
                    <dd>Figure: Good Example - with use of a rich textbox, you can use features such as bold, underline, highlighting and hyperlinks.</dd>
                </dl>
                <p>See our page on <a href="/ssw/Standards/DeveloperGeneral/WebdevelopmentToolsASPNET.aspx"> The Best 3rd Party Web Development Tools</a> and you will find the <a href="/SSW/Redirect/freetextbox1.htm" class="external">FreeTextBox Demo</a>.</p>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-avoid-using-plain-textboxes-for-notes.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-avoid-using-plain-textboxes-for-notes.aspx</a></font>
            </li>

            <li>
                <h2><a name="LabelButtons"></a> Do you label your form buttons consistently?</h2>
                <p>The buttons that a user will typically use to close a form should be named consistently across your applications.</p>
                <dl class="badImage">
                    <dt><img src="Images/ButtonLabels_Bad.gif" alt="Broker Details - Save &amp; Close Buttons" /></dt>
                    <dd>Figure: Bad Example - Unclear labels on the buttons</dd>
                </dl>
                <ul>
                    <li><strong>Save</strong> button could possibly update the fields but keep the form open.</li>
                    <li><strong>Close</strong> could save the fields, then close the form, when the <strong> Cancel</strong> button may be more appropriate.</li>
                </ul>
                <p>We recommend the age-old standards of:</p>
                <ul>
                    <li><strong>OK</strong>. Close the form and save any changed data. This should be referenced by the form's AcceptButton property.</li>
                    <li><strong>Cancel</strong>. Close the form without saving. This should be referenced by the form's CancelButton property.</li>
                    <li><strong>Apply</strong>. Save data without closing the form.</li>
                </ul>
                <dl class="goodImage">
                    <dt><img src="Images/OKCancelExampleDialog.jpg" alt="Outlook Contact Properties - OK, Cancel &amp; Apply Buttons" /></dt>
                    <dd>Figure: Good Example - This form uses the standard button naming standards (and has the Default buttons set!)</dd>
                </dl>
                <p class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</p>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-label-your-form-buttons-consistently.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-label-your-form-buttons-consistently.aspx</a></font>
            </li>

            <li>
                <h2><a name="DynamicallyLabelButtons"></a> Do you avoid dynamically labeling your form buttons?</h2>
                <p>The buttons that a user will typically use should not be dynamically labeled across your applications.</p>
                <dl class="badImage">
                    <dt><img src="Images/DynamicallyLabelingButtonBad.gif" alt="OLEDB Connection String" /></dt>
                    <dd>Figure: Bad Example - Buttons are dynamically labeled &quot;Build ...&quot; and &quot;Edit ...&quot; depending on text in the text box</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/DynamicallyLabelingButtonGood.gif" alt="OLEDB Connection String" /></dt>
                    <dd>Figure: Good Example - Buttons are not dynamically labelled</dd>
                </dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-avoid-dynamically-labeling-your-form-buttons.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-avoid-dynamically-labeling-your-form-buttons.aspx</a></font>
            </li>

            <li>
                <h2><a name="SizeSpacing"></a>Do you follow the control size and spacing standards?</h2>
                <h3>Introduction</h3>
                <p>Despite seeming trivial, the most subtle elements of your form can have the greatest impact on your users.</p>
                <dl class="badImage">
                    <dt><img src="Images/ScreenBadControls.gif" alt="SSW SQL Auditor - Choose Data Source" /></dt>
                    <dd>Figure: Bad Example - What's wrong with this form?</dd>
                </dl>
                <p>The form shown in this screenshot is an example of bad control placement:</p>
                <ol>
                    <li>The fonts used are non-standard (see: <a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Controls.aspx#Font"> Do you use Microsoft's Recommended Font in your Application?</a>)</li>
                    <li>The controls have <strong>no consistency</strong> in terms of margins, spacing or even control alignment. See, for example:
                        <ol>
                            <li type="a">The navigation buttons at the bottom of the screen having uneven margin space on the right and bottom sides. They're also the wrong size.</li>
                            <li type="a">The dimensions of all input controls and buttons do not follow standard convention (see below)</li>
                            <li type="a">The right side of the "Build..." button is not aligned with the right of the "Connection String" text box</li>
                            <li type="a">The left margins inside the two frames are inconsistent.</li>
                            <li type="a">The space surrounding the logo in the top right corner is uneven</li>
                        </ol>
                    </li>
                </ol>
                <p>This detracts from the visual appeal of the user interface, and results in an uneven user experience. After looking at all of this you may be thinking &quot;<strong>do I really need to work out exactly what spacing and dimensions I want to use for <strong>every</strong> detail of a form I make?</strong>&quot;</p>
                <p>The good news is that<strong> you don't need to</strong>: Microsoft have gone to a great deal of effort to <a href="/ssw/Redirect/Microsoft/MSDNVisualDesign.htm">define standards</a> for exactly how your form controls should be laid out, and these standards are worth taking into consideration. By all means, if you have disagreements with anything listed here then please discuss it with us and we'll consider changing our own standards (Microsoft have changed theirs over the years, after all), but we recommend using the following as a guide.</p>
                <p>These examples assume that you are using the standard system font as defined in the rule mentioned above. Please note that although Dialog Units (DLUs) are better suited for generic (font independent) use, they are not available in the Visual Studio designer.</p>
                <dl class="goodImage">
                    <dt><img src="Images/GoodStandardForm.jpg" alt="SSW SQL Auditor - Choose a Data Source" /></dt>
                    <dd>Figure: Good Example - The form follows Standards of good form design discussed below</dd>
                </dl>
                <h3>The Rules</h3>
                <ol>
                    <li><strong>Buttons must be...</strong>
                        <ul>
                            <li>Spaced apart by 6 pixels from other buttons <strong>except</strong> in the case of wizards where the <i>&lt; Back</i> and <i>Next &gt;</i> buttons may be closer together</li>
                            <li>Spaced 6 pixels from the inside border of a form on the sides closest to it</li>
                            <li>usually 75 pixels wide</li>
                            <li>23 pixels high</li>
                        </ul>
                    </li>
                    <li><strong>Single-line textboxes and most controls must be...</strong>
                        <ul>
                            <li>21 pixels high (width depends on content) </li>
                            <li>Aligned correctly with any related controls</li>
                        </ul>
                    </li>
                    <li><strong>In a form...</strong>
                        <ul>
                            <li>Margins must be consistent (see <a href="/ssw/Redirect/Microsoft/MSDNMargins.htm" class="external">Microsoft's diagram illustrating this</a>)</li>
                        </ul>
                    </li>
                </ol>
                <p>These are some of the more common examples. Please read Microsoft's <a href="/ssw/Redirect/Microsoft/MSDNLayout.htm" class="external">Visual Design Guidelines</a> for more information and greater detail.</p>
                <p><strong>Ultimately the goal of all of this is to ensure consistency</strong>. Keeping these ideas in mind at all times while doing user interface design will give users a better overall experience and will boost the professionalism of your products.</p>
                <h3>One From The Good Guys</h3>
                <p>Here's a good example for you to take inspiration from. This dialog is from Microsoft Outlook. Let's check out some points:</p>
                <ol>
                    <li>Consistency across wizard pages is very good</li>
                    <li>Spacing and sizing of buttons is precise</li>
                    <li>The logo has been positioned evenly</li>
                </ol>
                <dl class="goodImage">
                    <dt><img src="Images/ScreenGoodControls.gif" alt="Outlook - Email Accounts" /></dt>
                    <dd>Figure: Good Example - Microsoft have defined to exacting measures what spacing should be used in their Microsoft Outlook wizards</dd>
                </dl>
                <p>Read more about control size on the <a href="/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx#CommonControl"> Rules to Better Windows Forms</a> page</p>
                <p class="productBox">We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#SizeSpacing">SSW Code Auditor</a> to check for this rule.</p>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-follow-the-control-size-and-spacing-standards.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-follow-the-control-size-and-spacing-standards.aspx</a></font>
            </li>

            <li>
                <h2><a name="Minimize"></a>Do you know Windows Forms should have a minimum size to avoid unexpected UI behavior?</h2>
                <p>If windows form does not setup a minimum size, your users could have unpredictable form behavior as seen below:</p>
                <dl class="badImage">
                    <dt><img src="Images/Bugsize.gif" alt="Bad window form" /></dt>
                    <dd>Figure: Bad Example - Unexpected window form</dd>
                </dl>
                <p>Therefore, a standard has been built to ensure Windows forms have a minimum size.</p>
                <dl class="goodImage">
                    <dt><img src="Images/Minisize.gif" alt="Good window form" /></dt>
                    <dd>Figure: Good Example - User friendly window form</dd>
                </dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-know-Windows-Forms-should-have-a-minimum-size-to-avoid-unexpected-UI-behavior.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-know-Windows-Forms-should-have-a-minimum-size-to-avoid-unexpected-UI-behavior.aspx</a></font>
            </li>

            <li>
                <h2><a name="DataEntryForms"></a>Do you know the correct way to develop Data Entry Forms?</h2>
                <p>Data Entrees should be able to use your data entry form with ease. It should follow the flow that they are familiar with.</p>
                <dl class="badImage">
                    <dt><img src="Images/BadAddDeleteSubForm.gif" alt="Access - Clients Form" /></dt>
                    <dd>Figure: Bad Example - New button should open another form, and Delete button should be on that new form</dd>
                </dl>
                <ol style="list-style-type: lower-alpha;">
                    <li>
                        <h3>Multiple Form Instances</h3>
                        <p>Imagine, while the Sally is entering a Quote on the Quote Form, they receive a Phone call from a client needing a new Quote. The user will not want to close the current Quote, because they are 1/2 way through it.</p>
                        <p>As we saw in the example above, Sally needs to open multiple instances of the same form. A reputable example for this is Microsoft's Outlook. When you are 1/2 way through an email, and you chose to start writing another, Outlook makes it convenient by placing every email you open in the taskbar. The figure below illustrates this.</p>
                        <dl class="goodImage">
                            <dt><img src="Images/Outlookemails.jpg" alt="Outlook - Multiple Emails" /></dt>
                            <dd>Figure: Good Example - Outlook opens multiple instances of the data entry form (email message)</dd>
                        </dl>
                        <dl class="goodImage">
                            <dt><img src="Images/outlooktaskbar.jpg" alt="Outlook Taskbar" /></dt>
                            <dd>Figure: Good Example - Each form instance is shown in the taskbar, and easily opened again</dd>
                        </dl>
                        <p>A method of implementing this is through New and Delete buttons on the form.</p>
                        <p>New and Delete buttons should appear, in a toolbar for example, docked to the top.<br />
                           The figure in <a href="#DrillAround">Data Entry Drill Downs</a> below illustrates this.</p>
                        <dl class="goodImage">
                            <dt><img src="Images/GoodAddDeleteSubForm.jpg" alt="SSW Time PRO .NET -  Time Sheets" /></dt>
                            <dd>Figure: Good Example - New and Delete buttons docked in the Toolbar providing easy data entry for new Timesheets</dd>
                        </dl>
                        <p> The Delete button resides there to make sure that Sally has seen the record before she deletes it. The New button should instantiate a new data entry form in add mode (as compared to "edit"), leaving the current one in the background.</p>
                        <p>It can be argued that navigation is required in a data entry form. As an option, a good navigation system will navigate through a subset of records (ideally records which are search results). The idea of navigating through all records can be tedious, and most of the time useless.</p>
                        <h3>However there is a problem</h3>
                        <p>Do you open the same record with two different instances of the form? For example, if attempt to open a form instance for editing a Quote from the database, then while editing you open up another form instance for the same Quote. Besides the fact that there will be loss of data, and dirty reading, this is a very confusing interface.</p>
                        <p>A possible solution for this issue is to implement a form manager.</p>
                        <p>The "form manager" will keep track of every instance opened. So in our example, the second time we try to open the same Quote for editing, the "form manager" will recognize that there is a form currently being edited that Quote, and would select that form.</p>
                    </li>
                    <li>
                        <h3>Form states and how to respond to them</h3>
                        <p>The form is to be aware of the data state. If the data is dirty:</p>
                        <ul>
                            <li>The Apply button would be enabled until the record is saved</li>
                            <li>The OK button would simply save the record and close the Form</li>
                            <li>The Cancel button would pop up a dialog (shown in the figure below) asking to save
                                changes;<br />
                                If the user decides to save, it should save the record and close the form.<br />
                                If No, then close the form without saving.<br />
                                If Cancel, then return back to the dirty form.
                            </li>
                        </ul>
                        <dl class="goodImage">
                            <dt><img src="Images/SaveChangesDialog.jpg" alt="Centrix - Save Changes" /></dt>
                            <dd>Figure: Good Example - Save Changes Dialog must appear when form is dirty</dd>
                        </dl>
                    </li>
                    <li>
                        <p>Do not add buttons for searching on the data entry form, create a new form for search, through which you can open new instances of the form. The convenience of the search capability on the form will be overlooked as it makes the form more crowded. Another issue which can arise is if Sally searches for a criteria which returns multiple records, she cannot look at all those records. She can only open one at a time, navigating through them. The solution to the search dilemma is to create a new search form, which is shown in the figure below. The search form will allow multiple criteria, will not over crowd the data entry form, and will show you all the results that your search has retrieved.</p>
                        <dl class="badImage">
                            <dt><img src="Images/BadSearch.gif" alt="Integrated Search" /></dt>
                            <dd>Figure: Bad Example - This implementation of a search utility is on the same form</dd>
                        </dl>
                        <dl class="goodImage">
                            <dt><img src="Images/SearchForm.gif" alt="Separate Search" /></dt>
                            <dd>Figure: Good Example - This implementation of Search feature is on a separate form</dd>
                        </dl>
                    </li>
                    <li>
                        <h3>No Delete Button for sub forms</h3>
                        <p>When including a sub form in your main form (as shown in figure below), the only options the user should have are &quot;New&quot; and &quot;Edit&quot;. When &quot;Edit&quot; is clicked, another data entry form is opened to edit selected record. In this data entry form, you will have a &quot;Delete&quot; button on the toolbar. This saves the user from making mistakes and forcing them to see the record before deleting.</p>
                        <dl class="goodImage">
                            <dt><img src="Images/SubFormsExample.gif" alt="Centrix - Loan Estimate Details" /></dt>
                            <dd>Figure: Good Example - No Delete button for Sub forms</dd>
                        </dl>
                    </li>
                    <li>
                        <h3>Validation</h3>
                        <p>Most fields required validation. There are three types of validations:</p>
                        <ul>
                            <li>Required Field - the field should be filled in</li>
                            <li>Formatting - the field must be in a correct format. e.g. currency or date</li>
                            <li>Logical - the field needs to pass some validation tests in the business layer</li>
                        </ul>
                        <p>To show an error, display an error provider icon next to the field on the right. An example of this is shown in the figure below.<br />
                           Validation must not be done on TextChanged, this may chew the processor if it is a logical validation. It can also give unpleasant results, e.g. when entering -6.00, as soon as the '-' is entered the validation control would turn on.</p>
                        <p>Validation for Required fields must be done in the validating event.<br />
                           Validation for format should be done in parse/format methods.<br />
                           Validation for Logic should be done in Validated, since it must be entered if required, and in correct format.</p>
                        <p>The reason for the above validation placement is that these events run in the following order:</p>
                        <ul>
                            <li>Validating</li>
                            <li>Parse/Format</li>
                            <li>Validated</li>
                        </ul>
                        <dl class="goodImage">
                            <dt><img src="Images/ErrorProviderIconExample.jpg" alt="Centrix - Error Provider" /></dt>
                            <dd>Figure: Good Example - Error Provider Icon next to a required field</dd>
                        </dl>
                        <p><strong>Do not</strong> show a message box after every error in validation. You may show a message box as an error summary when an OK or Apply is clicked. Make sure you warn the user that there is an error on the form when they attempt to save.</p>
                    </li>
                    <li>
                        <h3>Relevant Menus</h3>
                        <p>Make sure that the menu items are relevant to the current form. The main idea is that we don't want to show the user any dummy menu items. However, this may become complex when a base form (containing the menu) is inherited. Access to menus in the base form must be granted (maybe through properties), so that each menu can be customized according to each child form.</p>
                        <dl class="badImage">
                            <dt><img src="Images/MenuBadExample.jpg" alt="Centrix - File, Action, Report, Tools &amp; Help Menus" /></dt>
                            <dd>Figure: Bad Example - Action and Tools are irrelevant on this form</dd>
                        </dl>
                        <dl class="goodImage">
                            <dt><img src="Images/MenuGoodExample.jpg" alt="Centrix - File, Report &amp; Help Menus" /></dt>
                            <dd>Figure: Good Example - Menus are relevant</dd>
                        </dl>
                        <p>In the above example, there are a couple of unused menus that have been inherited from the base form and not set to invisible.</p>
                    </li>
                    <li>
                        <h3>Field Formatting</h3>
                        <p>Ensure that the data is displayed in correct format. For example, when presenting a percentage data in a field, make sure it is displayed as '% xx.xx'.<br />
                           To accompany formatting, you must also create a parse function for putting the correct value back in the database.</p>
                        <p><strong>Note:</strong> This can be difficult for data bound fields, and in that case you will have to handle the parse and format event of the Field's Binding object. An example of handling these events is shown below.</p>
                        <dl class="Code">
                            <dt>
                                <pre>
            Dim controlBinding As Binding = New System.Windows.Forms.Binding(propertyName,dataSource, dataMember)
            AddHandler controlBinding.Format, AddressOf DecimalToCurrencyString
            AddHandler controlBinding.Parse, AddressOf CurrencyStringToDecimal
            controlToBeBound.DataBindings.Add(controlBinding)
            Private Sub DecimalToCurrencyString(sender As Object, cevent As ConvertEventArgs)
            ' The method converts only to string type. Test this using the DesiredType.
            If Not cevent.DesiredType Is GetType(String) 
            Then
                Exit Sub
            End If
            ' Use the ToString method to format the value as currency (&quot;c&quot;).
            cevent.Value = CType(cevent.Value, Decimal).ToString(&quot;c&quot;)
                End Sub
            Private Sub CurrencyStringToDecimal(sender As Object, cevent As ConvertEventArgs)
            ' The method converts back to decimal type only.
            If Not cevent.DesiredType Is GetType(Decimal) 
            Then
                Exit Sub
            End If
            ' Converts the string back to decimal using the static ToDecimal method.
            cevent.Value = Decimal.Parse(cevent.Value.ToString, NumberStyles.Currency, nothing)
            End Sub
            </pre>
                            </dt>
                            <dd>Code: Code for Handling Parse and Format Events for Data bound Controls</dd>
                        </dl>
                        <p>The Binding is created and added to the Data-Bindings of the Control all in one line in Visual Designer in VS.Net. Do not use Visual Designer to data-bind if you will be handling the Parse and Format events. You will have to create the handlers yourself.</p>
                    </li>
                    <li><a name="CreatedBy"></a>
                        <h3>Created/Last Updated By Fields</h3>
                        <p>With all database entries, there are always some fields that are used over and over again. For example, these fields may be created date, created by, last updated date, updated by, etc.</p>
                        <p>A common UI to use for these fields can be seen in the example below. What we do is create a user control that is identical across all projects/UI.</p>
                        <dl class="badImage">
                            <dt><img src="Images/BadCreatedUpdated.jpg" alt="SSW Time PRO .NET - Time Sheets" /></dt>
                            <dd>Figure: Bad Example - This form has no information to indicate who created this entry and who last modified it</dd>
                        </dl>
                        <dl class="goodImage">
                            <dt><img src="Images/GoodCreatedUpdated.jpg" alt="SSW Time PRO .NET - Time Sheets" /></dt>
                            <dd>Figure: Good Example - This form contains Created by/Updated by fields used in a standard control which is put into all forms</dd>
                        </dl>
                        <p>An example of how to set the values for this user control is shown below.</p>
                        <dl class="code">
                            <dt>
                                <pre>
            updatedBy.CreatedDate = .DateCreated
            updatedBy.CreatedBy = .EmpCreated
            updatedBy.UpdatedDate = .DateUpdated
            updatedBy.UpdatedBy = .EmpUpdated
            </pre>
                            </dt>
                            <dd>Code: Code for Setting values for User Control</dd>
                        </dl>
                        <p>Databinding is also available to be used with this user control.</p>
                        <dl class="image">
                            <dt><img src="Images/CommonFieldsDB.gif" alt="User Control - Data Binding in the Designer" /></dt>
                            <dd>Figure: Data Binding using the Designer</dd>
                        </dl>
                    </li>
                    <li>
                        <h3>Minimum Defaults</h3>
                        <p>In many situations, there is a need for field Defaults. These Defaults can be extracted from the Database for example. When a new form is opened ensure that only necessary Defaults are loaded. By Default some decimal fields will become 0.0, but make sure they are set to blank because they may be required fields.</p>
                    </li>
                    <li>
                        <h3>Resizing</h3>
                        <p>Is the form resizable? What happens if the user resizes and/or maximizes the form?</p>
                        <p>Data entry forms, and forms containing List View controls, should be resizable. Use either anchoring or docking, or a combination, to handle window resizing. Restricting the user from resizing or maximizing the form is not recommended.</p>
                    </li>
                </ol>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-know-the-correct-way-to-develop-Data-Entry-Forms.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-know-the-correct-way-to-develop-Data-Entry-Forms.aspx</a></font>
            </li>

            <li>
                <h2><a name="DrillAround"></a>Do you provide the user Drill-Downs and Drill-Arounds?</h2>
                <p>Users should be able to navigate around your application without having to return to the main menu to open a related form.</p>
                <p>Think about a summary report - users should always be able to &quot;drill-down&quot; to track a transaction to its original source.<br />
                   Think about a data entry form - users should always be able to &quot;drill-down&quot; to the look up table</p>
                <p>There are four ways to provide drill-downs:</p>
                <ol>
                    <li>Preferred - Use buttons to navigate around the application
                        <dl class="image">
                            <dt><img src="Images/DrillDownDrillAround.gif" alt="SSW Timesheets - Add Timesheet Entry"" /></dt>
                            <dd>Figure: Use named buttons to navigate around the application (Preferred)</dd>
                        </dl>
                    </li>
                    <li>Double click the control</li>
                    <li>Use buttons with three dots - an ellipsis (...) character
                        <dl class="goodImage">
                            <dt><img src="Images/CodeAuditorEllipses.gif" alt="SSW Code Auditor - Path to Scan" /></dt>
                            <dd>Figure: Good Example - Use ellipses to navigate around the application</dd>
                        </dl>
                    </li>
                    <li>Use hyperlinks
                        <dl class="image">
                            <dt><img src="Images/AssetForm.png" alt="Asset Form" /></dt>
                            <dd>Figure: Drill-downs implemented as links (an interesting alternative but a bit too much of a visual impact)</dd>
                        </dl>
                    </li>
                </ol>
                <p>Another handy thing to add for users is &quot;drill-around&quot;. This is implemented by using a right mouse-click to activate context-sensitive links between related screens.</p>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-provide-the-user-Drill-Downs-and-Drill-Arounds.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-provide-the-user-Drill-Downs-and-Drill-Arounds.aspx</a></font>
            </li>

            <li>
                <h2><a name="ComboBoxDrillDown"></a> Do you avoid using menus for ComboBox maintenance?</h2>
                <p>Using a separate menu to maintain ComboBoxes is never a good idea. A better solution is to use an ellipses button to drill down into the menu.</p>
                <dl class="badImage">
                    <dt><img src="Images/ComboBoxMenuBad.gif" alt="Menu driven ComboBox Maintenance System" /></dt>
                    <dd>Figure: Bad Example - Menu driven ComboBox maintenance form</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/Ellipses.gif" alt="SSW eXtreme Emails! - Add Incident" /></dt>
                    <dd>Figure: Good Example - Use ellipses to drill down into a ComboBox maintenance form</dd>
                </dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-avoid-using-menus-for-ComboBox-maintenance.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-avoid-using-menus-for-ComboBox-maintenance.aspx</a></font>
            </li>

            <li>
                <h2><a name="ButtonAlign"></a> Do you align your Add/Edit/Delete buttons horizontal and bottom right?</h2>
                <p>Usually there are problems fitting buttons next to datagrids or listboxes when trying to imply that those buttons add functionality to the datagrid or listbox.</p>
                <dl class="badImage">
                    <dt><img src="Images/BadButtonAlign.jpg" alt="SSW Code Auditor - Select Job" /></dt>
                    <dd>Figure: Bad Example - This form places the Add and Delete buttons in the top right.</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/BetterButtonAlign.jpg" alt="SSW Code Auditor - Rules Definition" /></dt>
                    <dd>Figure: Buttons aligned vertically, however they cut off useful information in the datagrid (Better)</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/GoodButtonAlign.jpg" alt="SSW Code Auditor - Select Files" /></dt>
                    <dd>Figure: Good Example - Buttons align horizontally at the bottom right of the grid which provides plenty of room for then needed information</dd>
                </dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-align-your-Add-Edit-Delete-buttons-horizontal-and-bottom-right.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-align-your-Add-Edit-Delete-buttons-horizontal-and-bottom-right.aspx</a></font>
            </li>

            <li>
                <h2><a name="DataJunk"></a>Do you avoid &quot;Data Junk&quot; (data not manually entered by yourself)?</h2>
                <p>When there are too many choices always Default to the most common ones. Then add a check box to allow the advanced users to turn off the common choices. E.g.</p>
                <div class="greyBox">
                    <p>[x] Only include common choices</p>
                </div>
                <p>Likewise in a contacts database where you have entries from all around the world it is good to add a check box on the search screen similar to the following:</p>
                <div class="greyBox">
                    [x] Only include customers that have been updated by employees (not directly entered
                    from the web)
                </div>
                <p>A good example on that the checkbox on the search screen of TimePRO.NET</p>
                <dl class="goodImage">
                    <dt><img src="Images/DefaultSearch.gif" alt="Options Form - ComboBox without Result Count" /></dt>
                    <dd>Figure: Default search tick box in TimePRO.NET</dd>
                </dl>
                <p>Read our rule on <a href="RulestoBetterInterfaces-Controls.aspx#AvoidIncorrectData">Validation - Do you avoid capturing incorrect data?</a></p>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-avoid-Data-Junk-data-not-manually-entered-by-yourself.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-avoid-Data-Junk-data-not-manually-entered-by-yourself.aspx</a></font>
            </li>

            <li>
                <h2><a name="AvoidCombining"></a> Do you avoid combining different entities?</h2>
                <p>If the form controls are different entities, they usually have different data and different validation, thus they should not be combined.<br />
                   Having the controls separated also make the form easier to read.</p>
                <dl class="badImage">
                    <dt><img src="Images/AvoidCombiningBad.gif" alt="Different entities are combined." /></dt>
                    <dd>Figure: Bad Example - Different entities are combined</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/AvoidCombiningGood.gif" alt="Different entities are separated." /></dt>
                    <dd>Figure: Good Example - Different entities are separated</dd>
                </dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-avoid-combining-different-entities.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-avoid-combining-different-entities.aspx</a></font>
            </li>

            <li>
                <h2><a name="TwoFormsAreBetter"></a> Do you avoid using one form for data entry?</h2>
                <p>Combining data entry and find navigation is a mistake. I think 2 forms are better than one. I prefer a list box on one form with &quot;Add&quot;, &quot;Edit&quot; and &quot;Delete&quot; buttons to a popup form. Rather than a listbox and the data entry fields on one form.</p>
                <dl class="badImage">
                    <dt><img src="Images/Rule-2formbetter-bad-1.jpg" alt="ListView with data entry fields in one form" /></dt>
                    <dd>Figure: Bad Example - ListView with data entry fields in one form</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/Rule-2formbetter-good-1.jpg" alt="ListView with only 'Add' 'Edit' 'Delete' buttons" /></dt>
                    <dd>Figure: Good Example - ListView with only 'Add' 'Edit' 'Delete' buttons</dd>
                </dl>
                <p>When you want to create a new entry or edit one, just click the buttons and open a new form with all the data entry fields.</p>
                <dl class="goodImage">
                    <dt><img src="Images/Rule-2formbetter-good-2.jpg" alt="ListView with only 'Add' 'Edit' 'Delete' buttons." /></dt>
                    <dd>Figure: Good Example - Separate form with all the data entry fields</dd>
                </dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-avoid-using-one-form-for-data-entry.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-avoid-using-one-form-for-data-entry.aspx</a></font>
            </li>

            <li>
                <h2><a name="PopupEditForm"></a> Do you create a popup form for editing details?</h2>
                <p>If you want to edit a single item in your form we suggest you use a popup form. This gives each form a definite function and neat UI design.</p>
                <dl class="badImage">
                    <dt><img src="Images/NonePopupEditForm.gif" alt="without popup form" /></dt>
                    <dd>Figure: Bad Example - Edit controls and main UI are messed up.</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/PopupEditForm.gif" alt="with popup edit form" /></dt>
                    <dd>Figure: Good Example - Use a popup form to do edit.</dd>
                </dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-create-a-popup-form-for-editing-details.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-create-a-popup-form-for-editing-details.aspx</a></font>
            </li>

            <li>
                <h2><a name="ConsistentField"></a> Do you have consistent way to store a same field?</h2>
                <p>In Outlook the Street Address is stored as 1 Multi-Line field (with an intelligent Address Checker - nice but not essential), yet in Microsoft CRM the Street Address is split out across 3 separate single line text fields, they should be consistent.</p>
                <dl class="goodImage">
                    <dt><img src="Images/GoodExample.jpg" alt="Street Address in Outlook" /></dt>
                    <dd>Figure: Street Address in Outlook.</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/BadExample.jpg" alt="Street Address in CRM" /></dt>
                    <dd>Figure: Street Address in CRM.</dd>
                </dl>
                <p> We consider Outlook is friendlier, because:</p>
                <ol>
                    <li>The wrong data is entered often when you have Street 1, Street 2, Street 3.</li>
                    <li>Often Street 2 and Street 3 is not needed so it is extra clutter for no reason.</li>
                    <li>What do you do when you have Street 4.</li>
                    <li>It is the same as <a href="/SSW/Redirect/Live.htm">http://local.live.com/</a></li>
                </ol>
                <p>Of course, we might be wrong, because:</p>
                <ol>
                    <li>Basically, it's not worth the effort - because it goes across multiple places inCRM like Leads and Opportunity (see test results from Adrian).</li>
                    <li>Printing labels might be simpler - sizes would be fixed.</li>
                </ol>
                <p class="productBox">We have a suggestion for CRM about this at <a href="../BetterSoftwareSuggestions/CRM.aspx#AddressConsistent"> CRM and Outlook should be consistent with regards to Addresses.</a></p>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-have-consistent-way-to-store-a-same-field.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-have-consistent-way-to-store-a-same-field.aspx</a></font>
            </li>

            <li>
                <h2><a name="MenuSelect"></a> Do you save the last user's selections? <img src="Images/RedStar.gif" alt="RedStar" /></h2>
                <p>Below is a report screen that is fairly common that developers create, they will make it so every time the page is loaded the user will have to reselect their options. To make it simpler the options should be stored in a cookie or database and be already pre-selected once the page is reloaded, as it is likely they will want to use the same or slightly modified query. If they don't then they can simply select what they are after anyway.</p>
                <dl class="badImage">
                    <dt><img src="Images/SampleSelect.jpg" alt="Sample Select" /></dt>
                    <dd>Figure: Bad Example - This is suitable for first view, but not for a return view</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/SampleSelect2.jpg" alt="Sample Select 2" /></dt>
                    <dd>Figure: Good Example - Instead, save the users last selection</dd>
                </dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-save-the-last-user%27s-selections.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-save-the-last-user%27s-selections.aspx</a></font>
            </li>

            <li>
                <h2><a name="BorderProtection"></a> Do your Windows Forms have border protection?</h2>
                <p>Border protection helps us design Windows Forms properly without placing controls too near to the border. Maintain a consistent alignment makes the Windows Forms look better, especially on designing wizard forms where all forms have the same size.</p>
                <dl class="goodImage">
                    <dt><img src="Images/BorderProtectionExample.gif" alt="Designing border protection." /></dt>
                    <dd>Figure: Good Example - Good border protection on a form at run time. The only problem is you would have to imagine these blue lines to get consistency</dd>
                </dl>
                <p><strong>Border protection in action:</strong></p>
                <dl class="badImage">
                    <dt><img src="Images/BorderProtectionBad.gif" alt="SSW Link Auditor - UI without border protection." /></dt>
                    <dd>Figure: Bad Example - Controls placed very near to the border and not aligned correctly</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/BorderProtectionGood.gif" alt="SSW Link Auditor - UI with border protection." /></dt>
                    <dd>Figure: Good Example - All controls are in the border protection area and aligned correctly</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/BorderProtectionDesign.gif" alt="SSW Link Auditor - UI with border protection." /></dt>
                    <dd>Figure: Design mode</dd>
                </dl>
                <p>The way to implement border protection (the 2 vertical red lines) is implement it in the base form or base user control, and all other forms and user controls inherit the base class to get consistent border protection lines.</p>
                <dl class="code">
                    <dt>
                        <pre>
            private void BaseForm_Paint(object sender, PaintEventArgs e)
            {
                // Draw border protection lines 
                if (this.DesignMode) 
                { 
                   Pen pen = new Pen(Color.Red); 
                   e.Graphics.DrawLine(pen,
                            23, 0, 23, this.Height); 
                            e.Graphics.DrawLine(pen, this.Width - 23, 0, this.Width - 23, this.Height); 
                } 
            }
            </pre>
                    </dt>
                </dl>
                <table class="clsSSWTable" id="table16">
                    <tr>
                        <td valign="top"><strong>Q:</strong></td>
                        <td><strong>Why don't we put a panel on the form and set the form DockPadding property which does a similar thing?</strong></td>
                    </tr>
                    <tr>
                        <td valign="top">A:</td>
                        <td>
                            <ol>
                                <li>Adding more panels docking to a form reduces the performance significantly because of the extra SuspendLayout and ResumeLayout calls.</li>
                                <li>In certain cases we might really want a control to stick at the border, if we use DockPadding Property, we can't make any exceptions. And still, these red lines actually just act like a ruler to help us easily see whether the controls are aligned nicely.</li>
                            </ol>
                        </td>
                    </tr>
                </table>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-your-Windows-Forms-have-border-protection.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-your-Windows-Forms-have-border-protection.aspx</a></font>
            </li>

            <li>
                <h2><a name="Drafts"></a> Do you use the concept of drafts?</h2>
                <p>Your form should prompt to save the record when the user leaves a page that has been modified. Alternatively, you can prompt the user when they log back on that they have drafts. E.g. mail.google.com</p>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-use-the-concept-of-drafts.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesForms/Pages/Do-you-use-the-concept-of-drafts.aspx</a></font>
            </li>

            <li>
                <h2><a name="OtherUIRules"></a>Do you know other UI rules? (that *only* work for Windows Forms)</h2>
                <ul>
                    <li><a href="RulesToBetterInterfaces-Windows-Applications.aspx">Rules to Better Interfaces - Data Entry Forms</a></li>
                    <li><a href="RulesToBetterWindowsForms.aspx">Rules To Better Windows Forms</a></li>
                </ul>
            </li>

        </ol>

        <h2>Related Rules</h2>
            <p>Read the specific rules below:</p>
            <ul>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces.aspx">Rules to Better Interfaces - General</a></li>
                <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Windows-Applications.aspx">Rules to Better Interfaces - Windows Application</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Controls.aspx">Rules to Better Interfaces - Controls</a></li>	
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Reports.aspx">Rules to Better Interfaces - Reports, Charts and Dates</a></li>
                <li><a href="/ssw/Standards/Rules/RulesToBetterInterfaces-Popups-and-Messages.aspx">Rules to Better Interfaces - Popups and Messages</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Wizard.aspx">Rules to Better Interfaces - Wizards</a></li>			
                <li>Rules to Better Interfaces - Forms</li>
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
