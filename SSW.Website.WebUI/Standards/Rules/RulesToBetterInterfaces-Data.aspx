<%@ Page Language="c#" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Interfaces" Buffer="true" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<script runat="server">
  protected override void OnLoad(EventArgs e)
  {
      Response.Redirect("/ssw/Standards/Rules/RulestoBetterInterfaces-Controls.aspx");
      base.OnLoad(e);
  }
</script>


    <%--<p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230496E7465726661636573')">
            Let us know</a> what you think.
    </p>
    <div class="TableOfContents">
        <p><strong>Rules To Better Interfaces - Data Entry Forms and Controls</strong></p>
        <ol>
            <li><a href="#AvoidIncorrectData">Validation - Do you avoid capturing incorrect data?</a></li>
            <li><a href="#CorrectValidationFocus">Validation - Do you focus to the correct control on validation error?</a></li>
            <li><a href="#UseMnemonic">Controls - Do your buttons have a mnemonic?</a></li>
            <li><a href="#DisableButtons">Controls - Do you disable buttons that are unavailable?</a></li>
            <li><a href="#OptionGroupCheckBoxSimple">Controls - Do you make Option Groups and CheckBoxes simple to understand?</a></li>
            <li><a href="#ListViewToolTip">Controls - Do you use a ToolTip to show the full text of hidden ListView data?</a></li>
            <li><a href="#Font">Controls - Do you use Microsoft Recommended Font in your Application?</a></li>
            <li><a href="#SelectAll">Controls - Do you have a top CheckBox for users to perform a &quot;select all&quot;?</a></li>
            <li><a href="#FullRowSelect">Controls - Do you set row select mode as &quot;FullRowSelect&quot; for DataGridView if it is read only?</a></li>
            <li><a href="#SelectedRows">Controls - Do you make the selected rows stand out in a datagrid?</a></li>
            <li><a href="#Tooltip">Controls - Do you use balloon tooltip?</a></li>
            <li><a href="#ConsistentLabel">Controls - Do you end labels text with &quot;:&quot;?</a></li>
            <li><a href="#ResultsInComboBoxes">Controls - Do you include the number of results in ComboBoxes?</a><img src="Images/RedStar.gif" alt="Star" width="18" height="14" /></li>
            <li><a href="#AllInComboBoxes">Controls - Do you have '-All-' option in your ComboBoxes?</a></li>
            <li><a href="#ExtendComboBoxes">Controls - Do you extend the size of ComboBoxes to show as many results as possible?</a><img src="Images/RedStar.gif" alt="Star" width="18" height="14" /></li>
            <li><a href="#txtBox4Data">Controls - Do you use Text Boxes for displaying data?</a></li>
            <li><a href="#GreyReadOnlyCalculated">Controls - Do you indicate when fields are Read Only or calculated?</a></li>
            <li><a href="#DatabaseSettingsUdl">Controls - Do you use a UDL when getting database settings?</a></li>
            <li><a href="#CheckedListBoxVSDatagrid">Control Choice - Do you use CheckedListBox and DataGrid appropriately?</a></li>
            <li><a href="#UseGridView">Control Choice - Do you use GridView instead of ListBox?</a></li>
            <li><a href="#DatagridVSListview">Control Choice - Do you use ListView and DataGrid appropriately?</a></li>
            <li><a href="#UseCheckBox">Control Choice - Do you know when to use CheckBoxes?</a></li>
            <li><a href="#ListBoxesAreEvil">Control Choice - Do you use ComboBoxes instead of single-select List Boxes?</a></li>
            <li><a href="#ListBoxesAreEvil2">Control Choice - Do you use Checked List Boxes instead of multi-select List Boxes?</a></li>
            <li><a href="#ConsistentButtonStyle">Control Choice - Do you have a consistent look on your buttons?</a></li>
            <li><a href="#AvoidGroupBox">Control Choice - Do you avoid using &quot;Group Box&quot; and use a line to organize your form?</a></li>
            <li><a href="#OptionsBold">Control Choice - Do you use bold on the main options to make them clearer?</a></li>
            <li><a href="#UseOptionsGroup">Control Choice - Do you know when to use options group (Radio Buttons) instead of ComboBox?</a></li>
            <li><a href="#Embedded">Forms - Do you avoid doing an embedded add?</a></li>
            <li><a href="#RichTextboxNotes">Forms - Do you avoid using plain textboxes for notes?</a></li>
            <li><a href="#LabelButtons">Forms - Do you label your form buttons consistently?</a></li>
            <li><a href="#DynamicallyLabelButtons">Forms - Do you avoid dynamically labelling your form buttons?</a></li>
            <li><a href="#SizeSpacing">Forms - Do you follow the control size and spacing standards?</a></li>
            <li><a href="#minisize">Forms - Windows Form should have a minimum size to avoid unexpected UI behavior?</a></li>
            <li><a href="#DataEntryForms">Forms - The way to develop Data Entry Forms</a></li>
            <li><a href="#DrillAround">Forms - Do you provide the user Drill-Downs Drill-Arounds?</a></li>
            <li><a href="#ComboBoxDrillDown">Forms - Do you avoid using menus for Combo Box maintenance?</a></li>
            <li><a href="#ButtonAlign">Forms - Do you align your Add/Edit/Delete buttons horizontal and bottom right?</a></li>
            <li><a href="#AvoidCombining">Forms - Do you avoid combining different entities?</a></li>
            <li><a href="#TwoFormsAreBetter">Forms - Do you avoid using one form for data entry and find navigation?</a></li>
            <li><a href="#PopupEditForm">Forms - Do you create a popup form for editing details?</a></li>
            <li><a href="#ConsistentField">Forms - Do you have consistent way to store a same field?</a></li>
            <li><a href="#MenuSelect">Forms - Do you save the last users selections?</a><img src="Images/RedStar.gif" alt="Star" width="18" height="14" /></li>
            <li><a href="#ElipsisForDialogs">Forms - Do you use ellipsis (...) to indicate an action requiring more user input?</a></li>
            <li><a href="#BorderProtection">Forms - Do your Windows Forms have border protection?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="AvoidIncorrectData"></a>
                    Validation - Do you avoid capturing incorrect data?
                </h2>
                <p>
                    When asking for an opinion do you give people the option of having no opinion at 
                    all? If you only provide &quot;Yes&quot; or &quot;No&quot; as answers to the question &quot;Do you like 
                    apples?&quot; then you force people to make a decision which may not be correct.</p>
                <div>
                    <table id="table1">
                        <tr>
                            <td>
                                Do you like apples?
                            </td>
                            <td>
                                <input type="radio" name="qu3" value="V1" checked="checked" />
                            </td>
                            <td>
                                Yes
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <input type="radio" name="qu4" value="V1" />
                            </td>
                            <td>
                                No
                            </td>
                        </tr>
                    </table>
                </div>
                <p>
                    Maybe they only like cooked apples not raw ones. When asking any question in 
                    which &quot;Don't know.&quot; or &quot;Don't care.&quot; is a valid response, always include an 
                    option to opt out of answering.&nbsp;
                </p>
                <p>
                    Additionally, were the user not to answer the question at all, the response you 
                    would get would be determined by the browser the user was using. Give them an 
                    answer they can agree with and you'll reduce the chance of bogus responses.
                </p>
                <div>
                    <table>
                        <tr>
                            <td>
                                Do you like apples?
                            </td>
                            <td>
                                <input type="radio" name="qu2" value="y" />
                            </td>
                            <td>
                                Yes
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <input type="radio" name="qu2" value="n" />
                            </td>
                            <td>
                                No
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <input type="radio" name="qu2" value="?" checked="checked" />
                            </td>
                            <td>
                                Cannot say</td>
                        </tr>
                    </table>
                </div>
                <br />
            </li>
            <li>
                <h2>
                    <a name="CorrectValidationFocus"></a>Validation - Do you focus to the correct control on 
                    validation error?</h2>
                <p>
                    Most fields required validation. There are three types of validations:</p>
                <ul>
                    <li>Required Field - the field should be filled in.</li>
                    <li>Formatting - the field must be in a correct format. e.g. currency or date. </li>
                    <li>Logical - the field needs to pass some validation tests in the business layer. </li>
                </ul>
                <p>
                    To show an error, display an error provider icon next to the field on the right. 
                    An example of this is shown in the figure below.<br />
                    Validation must not be done on TextChanged, this may chew the processor if it is 
                    a logical validation. It can also give unpleasant results, e.g. when entering 
                    -6.00, as soon as the '-' is entered the validation control would turn on.<br />
                    Validation for Required fields must be done in the validating event.<br />
                    Validation for format should be done in parse/format methods.<br />
                    Validation for Logic should be done in Validated, since it must be entered if 
                    required, and in correct format.</p>
                <p>
                    The reason for the above validation placement is that these events  
                    run in the following order:</p>
                <ul>
                    <li>Validating</li>
                    <li>Parse/Format</li>
                    <li>Validated</li>
                </ul>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/ErrorProviderIconExample.jpg" alt="Centrix - Error Provider"
                            width="229" height="79" /></dt>
                    <dd>
                        Figure: Good Example - Error Provider Icon next to a required field</dd></dl>
                <p>
                    Do <i>not</i> show a message box after every error in validation. You may show a 
                    message box as an error summary when an OK or Apply is clicked. Make sure you 
                    warn the user that there is an error on the form when they attempt to save.
                </p>
            </li>
            <li>
                <h2><a name="UseMnemonic"></a>
                    Control - Do your buttons have a mnemonic?
                </h2>
                <p>
                    A mnemonic for a button is the letter which has an underscore, and the user can 
                    press the button using Alt-&lt;char&gt;.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadMem.gif" alt="Browse Button" width="450" height="431" /></dt>
                    <dd>
                        Figure: Bad Example - All buttons without Mnemonic</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodMem.gif" alt="Browse Button" width="450" height="431" /></dt>
                    <dd>
                        Figure: Good Example - All buttons with Mnemonic - user can easily choose which 
                        button they want without a click</dd></dl>
                <p>
                    In Windows Applications, it is quite easy to assign a mnemonic to a button with 
                    the &quot;&amp;&quot; character.
                </p>
                <p>
                    So for the case above, the text would be</p>
                <dl class="code">
                    <dt>
                        <pre>btnAbout.Text = &quot;&amp;About&quot;</pre>
                    </dt>
                </dl>
                <p>
                    Tip: In Windows XP the mnemonic display effects can be hidden by Default and 
                    then shown every time the user presses the Alt key.</p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table3">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#UseMnemonic">SSW Code 
                            Auditor</a>
                            to check for this rule.<p>
                                Note: We have an exception for (OK, Cancel, Close, and Apply) buttons because 
                                they should be associate with <a href="#LabelButtons">Accept and Cancel buttons</a>.
                            </p>
                        </td>
                    </tr>
                </table>
            </li>
            <li>
                <h2><a name="DisableButtons"></a>
                    Controls - Do you disable buttons that are unavailable?
                </h2>
                <p>
                    If a button is unavailable, or clicking it will generate an error message or 
                    should have no effect, then the button should be disabled. However, buttons should 
                    not be hidden simply because they are unavailable as it confuses the user.</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/ReadytoScan.gif" alt="SSW Link Auditor - Ready to Scan" width="640"
                            height="504" /></dt><dd>Figure: Good Example - The Start button is disabled 
                        in SSW Link Auditor after the scan has started</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="OptionGroupCheckBoxSimple"></a>Controls - Do you make Option Groups and 
                    Check Boxes simple to understand?
                </h2>
                <p>
                    There are two aspects to this rule:
                </p>
                <ol>
                    <li><strong>Arrange Vertically</strong></li>
                    <li>
                        <p>
                            If your user must choose from a variety of responses, or select from a number of 
                            items, using either radio buttons or check boxes, arrange the items vertically 
                            rather than horizontally as it makes the association much clearer. NOTE: You 
                            might want to disregard this rule if screen real estate is at a crucial premium.
                        </p>
                        <div>
                            Do you like apples?
                            <input type="radio" name="q1" value="y" />Yes
                            <input type="radio" name="q1" value="n" />No
                            <input type="radio" name="q1" value="?" checked="checked" />Cannot say
                        </div>
                        <br />
                        <div>
                            <table id="table2">
                                <tr>
                                    <td>
                                        Do you like apples?
                                    </td>
                                    <td>
                                        <input type="radio" name="qu6" value="V1" checked />
                                    </td>
                                    <td>
                                        Yes
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <input type="radio" name="qu7" value="V1" />
                                    </td>
                                    <td>
                                        No
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <input type="radio" name="qu8" value="V1" />
                                    </td>
                                    <td>
                                        Cannot say
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </li>
                    <li><strong>Text on the Right</strong>
                        <p>
                            The Option Group or Check Box should always be on the left, with the text 
                            following on the right. Once again, this makes it easy for the User to work out 
                            what is going on.</p>
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/Interfaces_ActionThenText.gif" alt="Interfaces Action Then Text"
                                    width="292" height="110" /></dt>
                            <dd>
                                Figure: Good Example - Action on the left, text on the right</dd></dl>
                    </li>
                </ol>
            </li>
            <li>
                <h2>
                    <a name="ListViewToolTip"></a>Controls - Do you use a ToolTip to show the full 
                    text of hidden ListView data?
                </h2>
                <p>
                    When you can't see all the text for an item in a ListView you need to expose the 
                    full text via a ToolTip.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/ListViewWithoutToolTip.gif" alt="ListView control without Tooltip."
                            border="0" width="550" height="459" /></dt>
                    <dd>
                        Figure: Bad Example - Users can't see all the text and the ListView doesn't use 
                        a Tooltip</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/ListViewWithToolTip.gif" alt="ListView control with Tooltip." border="0"
                            width="550" height="459" /></dt>
                    <dd>
                        Figure: Good Example - Users can't see all the text, but the ListView shows all 
                        the text via a Tooltip</dd></dl>
                <p>
                    The code to do this is...
                </p>
                <dl class="code">
                    <dt>
                        <pre>
            private ListViewItem hoveredItem;
            private void listView1_MouseMove(object sender, MouseEventArgs e)
            { 
               ListView lv = (ListView) sender; 
               ListViewItem item = lv.GetItemAt(e.X, e.Y);
               int columnIndex = 1;
               if (item != hoveredItem)
               { 
                  hoveredItem = item; 
                  if (item == null) 
                  { 
                     toolTip1.SetToolTip(lv, &quot;&quot;); 
                  } 
                  else 
                  { 
                     // Make sure the mouse hovered row has the subitem 
                     if (item.SubItems.Count &gt; columnIndex)
                     { 
                        toolTip1.SetToolTip(lv, item.SubItems[columnIndex].Text);
                     } 
                     else 
                     { 
                        toolTip1.SetToolTip(lv,&quot;&quot;); 
                     } 
                  } 
                } 
             }</pre>
                    </dt>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="Font"></a>Controls - Do you use Microsoft Recommended Font in your 
                    Application?
                </h2>
                <p>
                    Some font are easier to read then others, at SSW we follow Microsoft's <a href="/ssw/Redirect/Microsoft/MSDNInterfaceText.htm">
                        Visual Design Guidelines</a>. This means we use Tahoma 8pt as our font of 
                    choice.</p>
                <p>
                    At SSW, we use Code Auditor to ensure all fonts on our forms are set to Tahoma 
                    but we allow controls to use a different font. This is because certain 
                    information is better displayed in a different font. For example a Textbox to 
                    show code should use Courier instead of Tahoma.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/FontBadArialNarrow.gif" alt="Form with Arial Narrow Font" width="344"
                            height="200" /></dt>
                    <dd>
                        Figure: Bad Example - This form uses a non-standard font, and it is hard to read</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/FontGoodTahoma.gif" alt="Form with Tahoma Font" width="344" height="200" /></dt>
                    <dd>
                        Figure: Good Example - This form uses Tahoma, and it is easy to read</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/FontCourierNew.gif" alt="Form with Tahoma Font, and a RichTextBox with Courier New Font"
                            width="512" height="344" /></dt>
                    <dd>
                        Figure: Good Example - This form uses Tahoma, and the RichTextBox displays 
                        source code using Courier New</dd></dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table18">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#VBFont">SSW Code Auditor</a>
                            to check for this rule.</td>
                    </tr>
                </table>
                <br />
            </li>
            <li>
                <h2>
                    <a name="SelectAll"></a>Controls - Do you have a top CheckBox for users to perform a 
                    &quot;select all&quot;?
                </h2>
                <p>
                    Do you have a top checkbox that lets users select or unselect all checkboxes 
                    underneath it? If you have a list of checkboxes, you are going to frustrate 
                    users unless you provide an easy way to select all. The best way to achieve this 
                    is to have a checkbox at the top is a good way to let user easily select all and 
                    it is clear.</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/HotmailSelectAll.gif" alt="Hotmail" width="288" height="105" /></dt>
                    <dd>
                        Figure: Good Example - FYI Hotmail does this by putting a CheckBox at the top 
                        that lets you select all CheckBoxes underneath it</dd></dl>
                <dl class="image">
                    <dt>
                        <img src="Images/GmailSelectAll.gif" alt="Gmail" width="317" height="91" /></dt>
                    <dd>
                        Figure: FYI Google have done it a different way to provide multiple methods 
                        (All, All Read, All Unread, All Starred, and All Unstarred)</dd></dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/SQLAuditorSelectAll_Bad.jpg" alt="SQL Auditor" width="658" height="549" /></dt>
                    <dd>
                        Figure: Bad Example - SQL Auditor - No CheckBox for users to perform a &quot;select 
                        all&quot;</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/SQLAuditorSelectAll_good.jpg" alt="SQL Auditor"/></dt>
                    <dd>
                        Figure: Good Example - SQL Auditor - CheckBox at the top of the column</dd></dl>
                <dl class="image">
                    <dt><a name="SelectAll_MoreDetails"></a>
                        <img src="Images/SQLAuditorSelectAll_All.jpg" alt="SQL Auditor"/></dt><dd>
                        Figure: FYI selecting all does this - selects all</dd></dl>
                <dl class="image">
                    <dt>
                        <img src="Images/SQLAuditorSelectAll_None.jpg" alt="SQL Auditor"/></dt>
                    <dd>
                        Figure: FYI deselecting all does this - selects none</dd></dl>
                <dl class="image">
                    <dt>
                        <img src="Images/SQLAuditorSelectAll_Customize.jpg" alt="SQL Auditor"/></dt>
                        <dd>Figure: FYI selecting some should show the 
                        Indeterminate check state - aka customized selection</dd></dl>
                <dl class="code">
                    <dt>
                        <pre>
        Private Sub CheckBoxSelectAll_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) _
            Handles CheckBoxSelectAll.CheckedChanged
            'Select checkbox in each row
            For Each sDataGridViewRow As DataGridViewRow In Me.DataGridViewCustomer.Rows
                sDataGridViewRow.Cells(0).Value = Me.CheckBoxSelectAll.Checked
            Next
        End Sub
</pre>
                    </dt>
                    <dd>Code: Code for selecting all checkboxes in a windows form</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/SelectAllCheckBox_Web.jpg" alt="Select all checkboxes in a web form" width="602" height="230" /></dt>
                    <dd>
                        Figure: Select all checkboxes in a web form</dd></dl>
                <dl class="code">
                    <dt>
                        <pre>
        &lt;script type=&quot;text/javascript&quot;&gt;
            function SeleteCheckBox()
            {                 
                for (var n=0; n &lt; document.form1.elements.length; n++) 
                {
                    if (document.form1.elements[n].type == &quot;checkbox&quot; &amp;&amp; document.form1.elements[n].name == &quot;gridview&quot;)
                    {
                        document.form1.elements[n].checked = document.getElementById(&quot;CheckBoxAll&quot;).checked; 
                    }
                }
            }    
        &lt;/script&gt;</pre>
                    </dt>
                    <dd>Code: Code for selecting all checkboxes in a web form</dd>
                </dl> 
                <p>We have suggestions for Visual Studio .NET about this at <a href="../BetterSoftwareSuggestions/MSForm.aspx#SelectAllCheckWindows">
                    A top CheckBox to &quot;select all&quot; in windows forms</a> and <a href="../BetterSoftwareSuggestions/MSAjax.aspx#SelectAllCheckWeb">
                    A top CheckBox to &quot;select all&quot; in web forms.</a></p>
            </li>
            <li>
                <h2>
                    <a name="FullRowSelect"></a>Controls - Do you set row select mode as &quot;FullRowSelect&quot; for 
                    DataGridView if it is read only?</h2>
                <p>
                    If you use the DataGridView control which is read only, you had better set row 
                    select mode as &quot;FullRowSelect&quot;. If the data cannot be modified we can 
                    let users select the whole row instead of one column.
                </p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/NoneFullRowSelect.gif" alt="without FullRowSelect" width="745" height="110" /></dt>
                    <dd>
                        Figure: Bad Example - Row select mode is not &quot;FullRowSelect&quot;.</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/FullRowSelect.gif" alt="with FullRowSelect" width="756" height="112" /></dt>
                    <dd>
                        Figure: Good Example - Row select mode is &quot;FullRowSelect&quot;.</dd></dl>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/setselectmodefull.gif" alt="Set select mode as FullRowSelect" width="390" height="42" /></dt>
                    <dd>
                        Figure: Changed row select mode to FullRowSelect.</dd>
                </dl>
                <p>What's the next step? It's even better if you enable mutiple row selection and copying, see 
                <a href="/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx#ListView">Do your List Views support multiple selection and copying</a> on 
                <a href="/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx">Rules to Better Windows Forms Applications</a>.</p>
            </li>
            <li>
                <h2>
                    <a name="SelectedRows"></a>Do you make the selected rows stand out in a 
                    datagrid?</h2>
                <p>
                    Many times you allow a multiple selection in a grid by using a checkbox. When 
                    you do this make it easy to see the distinction of a row that is selected and 
                    one that is not. Make it subtle by dimming the unselected text.</p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/Interface_Selected_Rows_Bad.JPG" alt="Seleted rows not standard out" width="560" height="460" /></dt>
                    <dd>
                        Figure: Bad Example - Selected rows are not separate from others.</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/Interface_Selected_Rows_Good.JPG" alt="Seleted rows standard out" width="558" height="458" /></dt>
                    <dd>
                        Figure: Good Example - Selected rows are separate from others.</dd></dl>
                <p>
                    To make this effect in datagrid, you may need to edit the <b>cellcontentclick</b>
                    event handler code. <br />
                    Example:</p>
                <dl class="goodCode">
                    <dt><pre>
        private void DatagridviewRules_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (DatagridviewRules.Columns[e.ColumnIndex] is DataGridViewCheckBoxColumn &amp;&amp; e.ColumnIndex == 0 &amp;&amp;
e.RowIndex != -1)
            {
                bool boolCheckBox = (bool)(DatagridviewRules.Rows[e.RowIndex].Cells[e.ColumnIndex].Value);
                <b>DatagridviewRules.Rows[e.RowIndex].DefaultCellStyle.ForeColor = boolCheckBox
                                                                                    ? SystemColors.WindowText
                                                                                    : SystemColors.ControlDark;</b>

                DataRowView objDataRowView = (DataRowView)DatagridviewRules.Rows[e.RowIndex].DataBoundItem;
                JobRule.DataTableJobRulesRow objDataRow = (JobRule.DataTableJobRulesRow)(objDataRowView.Row);
                updateRuleIsEnabled(objDataRow.RuleId, boolCheckBox);

                updateSelectAllCheckBox();
                updateRulesCount();
            }
        }
                        </pre></dt>
                    <dd>
                        Setting the ForeColor to different ones, like black and gray, can separate the 
                        selected rows from others.</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="Tooltip"></a>Controls - Do you use balloon tooltip?</h2>
                <p>
                    The standard tooltip is a rectangle, so the tool tip for the control can be misleading. 
                    While, the balloon tooltip has an arrow pointing to the destination 
                    control, which is clearer for users. 
                </p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/BadTooltip.gif" alt="Standard tooltip" width="303" height="237" /></dt>
                    <dd>Figure: Standard tooltip.</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/GoodTooltip.gif" alt="Balloon tooltip" width="303" height="237" /></dt>
                    <dd>Figure: Balloon tooltip.</dd>
                </dl>
                <p>
                    To implement you can:
                    <ol>
                        <li>Set the standard Tooltip's property IsBalloon true or</li>
                        <li>Use EdwardForgacs' balloon tooltip control.</li>
                    </ol>
	            </p>
            </li>
           <li>
            <h2><a name="ConsistentLabel"></a> 
                    Controls - Do you end your labels text with &quot;:&quot;?</h2>
                <p>
                    Labels provide an easy way to show text in a form. It is better to consistently 
                    label a field ending the text with a &quot;:&quot;.
                    </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/LabelBad.gif" alt="Bad Label"/>
                    </dt>
                    <dd>
                        Figure: Bad Example - Labels without &quot;:&quot;</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/LabelGood.gif" alt="Good Label" />
                    </dt>
                    <dd>
                        Figure: Good Example - Labels with &quot;:&quot;</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="ResultsInComboBoxes"></a>Controls - Do you include the number of results in 
                    ComboBoxes?
                    <img src="Images/RedStar.gif" alt="Star" width="18" height="14" />
                </h2>
                <p>
                    When designing your form, it's a good idea to help your user whenever it's 
                    possible. So it's a good idea to include the number of results in ComboBoxes.
                </p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/ComboWF-1.jpg" alt="Options Form - ComboBox without Result Count"
                            width="520" height="389" /></dt><dd>Figure: Bad Example - You can't tell the 
                        number of results and there is a scroll bar</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/ComboWF-2.jpg" alt="Options Form - ComboBox with Result Count"
                            width="520" height="394" /></dt><dd>Figure: Good Example - The number of 
                        results is clearly displayed. Long text boxes &gt; 30 entires, 
                        another approach cam be employed - putting the common ones at the top</dd></dl>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/Rule38LongTextCombobox.jpg" alt="Long Text ComboBox"
                            width="328" height="579" /></dt><dd>Figure: Bad Example - because it is 
                        manual and what about the 4th,5th etc most common used countries</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/rule38SortableCombobox.jpg" alt="Sortable ComboBox"
                            width="253" height="162" /></dt>
                    <dd>
                        Figure: Good Example - We prefer a combination of the sorting and counting above</dd></dl>
                <p>
                    We believe all combos should be able to be sorted ascending/descending and by popularity 
                    asc/desc.</p>
            </li>
            <li>
                <h2>
                    <a name="AllInComboBoxes"></a>Controls - Do you have '-All-' option in your ComboBoxes?
                    <img src="Images/RedStar.gif" alt="RedStar" width="18" height="14" />
                </h2>
                <p>
                    ComboBox is used for filtering data normally, it will be useful to have '-All-' 
                    option to give your user chances to select all data.
                </p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/Combo-ALL-1.jpg" alt="ComboBox without All" width="520"
                            height="283" /></dt><dd>Figure: Bad Example - No '-All-' option, user cannot 
                        select all data</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/Combo-ALL-2.jpg" alt="ComboBox without All" width="520"
                            height="294" /></dt><dd>Figure: Good Example - Having '-All-' option, user 
                        gets chance to select all data</dd></dl>
                        <p>Keep it simple!</p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/SelectAllBad.jpg" alt="All Stores" /></dt><dd>Figure: Bad Example - '-All Stores-' isn't needed</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/SelectAllGood.jpg" alt="All" /></dt><dd>Figure: Good Example - Keep it as a simple '-All-'</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="ExtendComboBoxes"></a>Controls - Do you extend the size of your ComboBoxes to show 
                    as many results as possible?
                    <img src="Images/RedStar.gif" alt="RedStar" width="18" height="14" />
                </h2>
                <p>
                    When designing your form, it's a good idea to help your user whenever it's 
                    possible. So it's a good idea to extend your ComboBoxes to show as many results 
                    as possible to save your user from scrolling. Also, you should extend the width 
                    of the dropdown in order to show the longest items.
                </p>
                <p>
                    However, you should not extend your ComboBox without limit, normally the maximum 
                    number of items should be under 10 and the maximum width of the drop-down should 
                    be smaller than your hosting form.
                </p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/ComboBox-Size-1.jpg" alt="Options Form - ComboBox with text cut off"
                            width="520" height="273" /></dt><dd>Figure: Bad Example - You have to scroll 
                        to see all the result, and the long results are cut off</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/ComboBox-Size-2.jpg" width="521" height="294" alt="Options Form - ComboBox with Extended Height and Width" /></dt><dd>
                        Figure: Good Example - The size of the drop down has been extended to allow user 
                        to see as much as possible</dd></dl>
                <p>
                    Changing the maximum items is easy, just include the following code in your 
                    form:</p>
                <dl class="code">
                    <dt>
                        <pre>cbxOUList.MaxDropDownItems = cbxOUList.Items.Count;</pre>
                    </dt>
                </dl>
                <p>
                    Changing the drop down size is a bit of tricky</p>
                <dl class="code">
                    <dt>
                        <pre>
            Graphics g = Graphics.FromHwnd(this.Handle);
            SizeF stringSize = new SizeF();
            stringSize = g.MeasureString(longString, cbx.Font, 600);
            int adjustedSize = cbx.DropDownWidth;
            if ( adjustedSize&lt;(int)stringSize.Width )
            {
               adjustedSize = (int)stringSize.Width;
            }
            cbx.DropDownWidth = adjustedSize;</pre>
                    </dt>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="txtBox4Data"></a>Controls - Do you use Text Boxes for displaying data?</h2>
                <p>
                    A Label control is always used to display static text. If your application is 
                    displaying data (results of calculations, information, records from a database, 
                    etc.), you should use a TextBox control.</p>
                
                <p>
                    Using TextBox controls is a better practise and setting the &quot;ReadOnly&quot; property 
                    and the &quot;BorderStyle&quot; property will make your Text boxes looks like a 
                    label. Also using Textbox makes copying data easier than using labels. </p>
                <dl class="image">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/BorderStyle_1.gif" 
                            alt="Using Textbox is better practice" 
                            style="height: 44px; width: 216px;" /></dt><dd>Figure: Border Style Property</dd></dl>
                <dl class="image">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/ReadOnly_1.gif" 
                            alt="Using Textbox is better practice" 
                            style="height: 44px; width: 216px;" /></dt><dd>Figure: Read-Only Property</dd></dl>
                <dl class="badImage">
                    <dt><img src="Images/BetterInterface_LabelCutOff.jpg" alt="Long string cut off when you are using label" /></dt>
                    <dd>Figure: Bad Example - Long message cut off when you are using label</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/GoodTextbox.gif" alt="Using Textbox is better practice"
                            width="550" height="459" /></dt><dd>Figure: Good Example - Using Textbox is better practice</dd></dl>
                <p>
                    As you can see you'll barely know the difference, so start using Textboxes for 
                    displaying data, that's good practise.</p>
            </li>
            <li>
                <h2><a name="GreyReadOnlyCalculated"></a>
                    Controls - Do you indicate when fields are Read Only or calculated?
                </h2>
                <p>
                    When you are not able to edit a field the field should be greyed out. This 
                    visually indicates to the user that the field cannot be changed. If you are 
                    using Word or Excel, actually locking cells or tables may not be what you 
                    require, but you still want to prevent people from directly editing 
                    calculations. So make the cells grey and the visual indication should prompt the 
                    users what to do.</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GreyField.gif" alt="Grey Field" width="439" height="509" /></dt>
                    <dd>
                        Figure: Good Example - Read only fields should be greyed out</dd></dl>
                <br />
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GreyField-Excel.gif" alt="Grey Field Excel" width="322" height="410" /></dt>
                    <dd>
                        Figure: Good Example - Calculated Fields in Excel should be in Grey</dd></dl>
                <p>
                    Of course you should follow the converse, which requires making all editable 
                    fields white.
                </p>
            </li>
            <li>
                <h2><a name="CheckedListBoxVSDatagrid"></a>
                    Control Choice - Do you use CheckedListBox and DataGrid appropriately?
                </h2>
                <p>
                    With a CheckedListBox you cannot:</p>
                <ul>
                    <li>Sort data - always useful when there are more than about 20 rows</li>
                    <li>Contain much information - can only show one field</li>
		            <li>DataBind - always costs heaps of code</li>
                </ul>
                <dl class="badImage">
                    <dt>
                        <img src="Images/UsingCheckedListBox.gif" alt="CheckedListBox" width="574" height="481" />
                    </dt>
                    <dd>
                        Figure: Bad Example - The CheckedListBox is limited
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/UsingDataGrid.gif" alt="DataGrid" width="571" height="476" />
                    </dt>
                    <dd>
                        Figure: Good Example - DataGrid can show much more information
                    </dd>
                </dl>
                <p>
                    Furthermore, the code of DataGrid databinding is easier than that of 
                    CheckedListBox.
                </p>
                <dl class="badCode">
                    <dt>
                        <pre>
	            ProductsService.Instance.GetAll(Me.ProductsDataSet1)
	            CheckedListBox1.DataSource = Me.ProductsDataSet1.Tables(0)
	            CheckedListBox1.ValueMember = &quot;ProductID&quot;
	            CheckedListBox1.DisplayMember = &quot;ProductName&quot;

	            For i As Integer = 0 To CheckedListBox1.Items.Count - 1
	                Dim checked As Boolean = CType(ProductsDataSet1.Tables(0).Rows(i)(&quot;Discontinued&quot;), Boolean)
	                CheckedListBox1.SetItemChecked(i,checked)
	            Next
			            </pre>
                    </dt>
                    <dd>
                        Figure: 8 lines of code to fill a CheckedListBox
                    </dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        <pre>
	            ProductsService.Instance.GetAll(Me.ProductsDataSet1)
			            </pre>
                    </dt>
                    <dd>
                        Figure: One line of code to fill a DataGrid
                    </dd>
                </dl>
                <p>
                    But the CheckedListBox is useful if only one field needs displaying.
                </p>
                
                <br />
            </li>
            <li>
                <h2><a name="UseGridView"></a>
                    Control Choice - Do you use GridView instead of ListBox?
                </h2>
                <p>
                    GridView provides much richer features than ListBox, you can easily add a 
                    checkbox onto the header to allow &quot;check all&quot; functionality, which is impossible 
                    for ListBox.
                    </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadUseListBox.jpg" alt="ListBox"/>
                    </dt>
                    <dd>
                        Figure: Bad Example - Use the ListBox.
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodUseGridView.jpg" alt="GridView" />
                    </dt>
                    <dd>
                        Figure: Good Example - Use GridView and add the enabled checkbox on the header.
                    </dd>
                </dl>
            </li>
            <li>
                <h2><a name="DatagridVSListview"></a>
                    Control Choice - Do you use ListView and DataGrid appropriately?
                </h2>
                <p>
                    Yes a ListView looks nicer than a DataGrid, but a Datagrid is better because it 
                    has more functionality (out of the box that is). With a ListView you cannot:</p>
                <ul>
                    <li>Copy and paste - although you can select a row of data in both controls, you 
                        can't copy and paste a whole row from the ListView</li>
                    <li>Sort data - always useful when there are more than about 20 rows</li>
                    <li>DataBind - always saves heaps of code</li>
                </ul>
                <p>
                    So our old rule was to always use the ugly DataGrid (although we were never 
                    happy about that).</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/UsingDataGridWhenNotNeeded.gif" alt="DataGrid" width="504" height="496" /></dt>
                    <dd>
                        Figure: Bad Example - The DataGrid is ugly</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/SortableListView.gif" alt="Sortable ListView" width="504" height="496" /></dt>
                    <dd>
                        Figure: Good Example - A beautiful ListView - a nicer look over the datagrid</dd></dl>
                <p>
                    So the listview looks nicer? If you are not convinced here is another one
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/DatagridVSListview.gif" alt="Datagrid and Listview" border="1" width="600"
                            height="92" /></dt>
                    <dd>
                        Figure: Good Example - The appearance of DataGrid and ListView</dd></dl>
                <p>
                    But another issue is how much code to write... For ListView you will need to 
                    write a bit of code to fill the list view...</p>
                <dl class="badCode">
                    <dt>
                        <pre>
            this.listView1.Items.Clear(); 
            // stops drawing to speed up the process, draw right at the end. 
            this.listView1.BeginUpdate(); 
            foreach(DataRow dr in this.dataSet11.Tables[0].Rows)
            { 
               ListViewItem lvi = new ListViewItem(new string[] {dr[0].ToString(),dr[1].ToString(),dr[2].ToString()});
               lvi.Tag = dr; this.listView1.Items.Add(lvi); 
            } 
            this.listView1.EndUpdate();</pre>
                    </dt>
                    <dd>
                        Figure: 8 lines of code to fill a ListView</dd></dl>
                <p>
                    But the datagrid is nicer to code... this is because it comes with data binding 
                    ability.
                </p>
                <dl class="badCode">
                    <dt>
                        <pre>
            // bind it in the designer first. 
            this.oleDbDataAdapter1.Fill(this.dataSet11);
            </pre>
                    </dt>
                    <dd>
                        Figure: One line of code to fill a DataGrid</dd></dl>
                <p>
                    But the SSW ListView (included in the <a href="/ssw/NETToolkit/">.NET Toolkit</a>) 
                    is nicer to code with as it comes with data binding ability.
                </p>
                <dl class="goodCode">
                    <dt>
                        <pre>
            // bind it in the designer first. 
            this.oleDbDataAdapter1.Fill(this.dataSet11);
            </pre>
                    </dt>
                    <dd>
                        Figure: One line of code to fill the SSW ListView</dd></dl>
                <p>
                    So what is this SSW ListView.
                </p>
                <p>
                    It is an inherited control that how we implemented the ListView to give us what 
                    MS left out.:
                </p>
                <ul>
                    <li>DataBinding</li>
                    <li>Sorting</li>
                </ul>
                <p>
                    So now the rules are:
                    <br />
                    Always use the SSW ListView.
                    <br />
                    Exception: Use the DataGrid when:
                </p>
                <ul>
                    <li>When not read only - i.e.. users will be editing data directly from the cells.</li>
                    <li>You need more than 1 column with checkboxes, or the column with checkboxes can't 
                        be the first column. Eg:
                        <dl class="image">
                            <dt>
                                <img src="Images/DataGrid2CheckBoxes.gif" alt="DataGrid" border="2" width="601" height="159" /></dt>
                            <dd>
                                Figure: One place when you choose a DataGrid over a ListView is when you have 2 
                                checkbox fields</dd></dl>
                    </li>
                </ul>
                <p>
                    So in summary, if you don't want users to edit the data directly from the cell, 
                    and only the first column need checkboxes, then the ListView is always the 
                    better choice.
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary=".NET Toolkit"
                    id="table4">
                    <tr>
                        <td>
                            We have an example of this in the <a href="/ssw/NETToolkit/">SSW .NET Toolkit</a>.</td>
                    </tr>
                </table>
                <br />
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table5">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to 
                            check for this rule.</td>
                    </tr>
                </table>
                <br />
                <p>Note: We have a suggestion for Microsoft to improve the <a href="/ssw/Standards/BetterSoftwareSuggestions/MSForm.aspx#DataGridsFormattingonCopy">copy and paste format from a gridview</a></p>
            </li>
            <li>
                <h2>
                    <a name="UseCheckBox"></a>Control Choice - Do you know when to use CheckBoxes?</h2>
                <p>
                    If the option only contains 2 choices, and the answer is a Boolean type value 
                    where the opposite value is clear (eg: Enabled/Disabled, True/False, Yes/No, 
                    On/Off), it should always be a checkbox.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/NotUsingCheckBox.gif" width="246" height="76" alt="Boolean options not using CheckBox." /></dt>
                    <dd>
                        Figure: Bad Example - Boolean options not using CheckBox</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/UsingCheckBox.gif" width="117" height="47" alt="A CheckBox is used for Boolean type value." /></dt>
                    <dd>
                        Figure: Good Example - A CheckBox is used for Boolean type value</dd></dl>
                <p>
                    Only 1 CheckBox is used as the opposite value is clear, such controls are often 
                    CheckBoxes in a ListView too. E.g.:</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/CheckBoxesInListView.gif" width="115" height="97" alt="CheckBoxes in a ListView." /></dt>
                    <dd>
                        Figure: Good Example - CheckBoxes in a ListView</dd></dl>
                <p>
                    CheckBoxes are also suitable to use for enable or disable sections and to tell 
                    the user that these sections do not need configuring for the application to run.</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/CheckBoxSection.gif" width="550" height="459" alt="CheckBoxes are used to enable/disable sections." /></dt>
                    <dd>
                        Figure: Good Example - CheckBoxes are used (although no opposite values), 
                        because they are clear when the CheckBoxes aren't ticked, the sections are 
                        disabled</dd></dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/UseCheckBoxBad.gif" width="640" height="572" alt="Not using checkboxes" /></dt>
                    <dd>
                        Figure: Bad Example - This screen implies that Configuring Credentials is 
                        required</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/UseCheckBoxGood.gif" width="640" height="572" alt="Good use of checkboxes" /></dt>
                    <dd>
                        Figure: Good Example - This screen uses a CheckBox to signify that Configure 
                        Credentials is optional</dd></dl>
            </li>
            <li>
                <h2><a name="ListBoxesAreEvil"></a>
                    Control Choice - Do you use ComboBoxes instead of single-select List Boxes?
                </h2>
                <p>
                    ComboBoxes are better than List Boxes <strong>for data entry</strong> because:</p>
                <ul>
                    <li>They occupy less screen space</li>
                    <li>They are less trouble to scroll through, owing to the fact that you can afford 
                        to have more room for the list (as it's collapsed most of the time)</li>
                    <li>
                        <p>
                            As you can see in the figures below, using a combo also makes the required field 
                            indicator (<span style="color: red">*</span>) easier to see.</p>
                    </li>
                </ul>
                <dl class="badImage">
                    <dt>
                        <img src="Images/ListBoxesAreEvil_SingleSelectBad.gif" alt="Web Page with ListBoxes"
                            border="1" width="509" height="162" /></dt>
                    <dd>
                        Figure: Bad Example - Using list boxes</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/ListBoxesAreEvil_SingleSelectGood.gif" alt="Web Page with ComboBox"
                            border="1" width="506" height="84" /></dt>
                    <dd>
                        Figure: Good Example - Using ComboBoxes - takes up less screen space and the 
                        required field indication is easy to see</dd></dl>
                <h3>
                    Note: When are single-select list boxes OK?</h3>
                <p>
                    As mentioned before, there are exceptions to this rule. It would be hard to 
                    imagine the Include/Exclude boxes in the SQL Server Enterprise Manager's Server 
                    Registration Wizard being handled with ComboBoxes, for example.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/ListBoxesAreEvil_ExceptForThisOne.gif" alt="Register SQL Server Wizard"
                            width="498" height="393" /></dt>
                    <dd>
                        Figure: Include/Exclude Listboxes are an example of a valid use for List Boxes</dd></dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table6">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to 
                            check for this rule.
                        </td>
                    </tr>
                </table>
            </li>
            <li>
                <h2><a name="ListBoxesAreEvil2"></a>
                    Control Choice - Do you use Checked List Boxes instead of multi-select List 
                    Boxes?
                </h2>
                <p>
                    Multi-select listboxes are the bane of a graphical user interface, they have a 
                    number of behavioural quirks that make it difficult for users to get used to 
                    them:</p>
                <ul>
                    <li>They require users to know that you select more than one entry by holding down 
                        the Ctrl key</li>
                    <li>They lose all selections if you click in the wrong place.</li>
                    <li>You can't tell if a Listbox is single-select or multi-select at first glance.</li>
                </ul>
                
                <dl class="badImage">
                    <dt> <% 'SSW Code Auditor - Ignore next line %>
                        <select size="8" multiple style="width: 200px">
                            <option selected>Item 1</option>
                            <option>Item 2</option>
                            <option>Item 3</option>
                            <option>Item 4</option>
                            <option selected>Item 5</option>
                            <option selected>Item 6</option>
                            <option>Item 7</option>
                            <option>Item 8</option>
                            <option>Item 9</option>
                            <option selected>Item 10</option>
                        </select>
                    </dt>
                    <dd>
                        Figure: Bad Example - List Boxes are impractical - try it and see</dd></dl>
                <p>
                    <strong>Checked Listboxes</strong> are the ideal alternative. They're much more 
                    pleasant to use and are a good deal more intuitive - compare to the list above. 
                    Checked Listboxes tell users immediately that they have the ability choose 
                    multiple options.</p>
                <ul>
                    <li>In ASP.NET, use <strong>System.Web.UI.WebControls.CheckBoxList</strong>. If 
                        you're having problems with there being too many items in the list, use a <strong>
                        scrolling DIV</strong></li>
                    <li>In Windows Forms, use <strong>System.Windows.Forms.CheckedListBox</strong></li>
                </ul>
                <dl class="goodImage">
                    <dt>
                        <div style="width: 200px; border: 1px inset #aaa">
                            <table id="cblList" border="0">
                                <tr>
                                    <td>
                                        <input id="cblList_0" type="checkbox" name="cblList:0" /><label for="cblList_0">Item 
                                        1</label></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input id="cblList_1" type="checkbox" name="cblList:1" /><label for="cblList_1">Item 
                                        2</label></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input id="cblList_2" type="checkbox" name="cblList:2" /><label for="cblList_2">Item 
                                        3</label></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input id="cblList_3" type="checkbox" name="cblList:3" /><label for="cblList_3">Item 
                                        4</label></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input id="cblList_4" type="checkbox" name="cblList:4" /><label for="cblList_4">Item 
                                        5</label></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input id="cblList_5" type="checkbox" name="cblList:5" /><label for="cblList_5">Item 
                                        6</label></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input id="cblList_6" type="checkbox" name="cblList:6" /><label for="cblList_6">Item 
                                        7</label></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input id="cblList_7" type="checkbox" name="cblList:7" /><label for="cblList_7">Item 
                                        8</label></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input id="cblList_8" type="checkbox" name="cblList:8" /><label for="cblList_8">Item 
                                        9</label></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input id="cblList_9" type="checkbox" name="cblList:9" /><label for="cblList_9">Item 
                                        10</label></td>
                                </tr>
                            </table>
                        </div>
                    </dt>
                    <dd>
                        Figure: Good Example - The beauty of the CheckListBox in ASP.NET</dd></dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table7">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to 
                            check for this rule.
                        </td>
                    </tr>
                </table>
            </li>
            <li>
                <h2>
                    <a name="ConsistentButtonStyle"></a>Control Choice - Do you have a consistent look 
                    on your buttons?
                </h2>
                <p>
                    Question: What is wrong with this Picture?</p>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/InconsistentButtonStyles.jpg" alt="Inconsistent Button FlatStyles"
                            width="191" height="385" /></dt>
                    <dd>
                        Figure: What is wrong?</dd></dl>
                <p>
                    <strong>Answer:</strong> There are three different types of buttons in the 
                    Application:</p>
                <ul>
                    <li><i>Next &gt;</i> - Default Window Style</li>
                    <li><i>Preview</i> - .NET Flat Style</li>
                    <li><i>Cancel</i> - Window XP Style</li>
                </ul>
                <dl class="image">
                    <dt>
                        <img src="Images/BadDivider.gif" width="550" height="459" /></dt>
                    <dd>
                        Figure: Even labels need to use FlatStyle.System. Can you spot the wrong label?</dd></dl>
                <p>
                    See our <a href="RulesToBetterWindowsForms.aspx#XPThemes">Rules to Better 
                    Windows Forms</a>
                    to implement XP Themes in .NET.</p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table8">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#ConsistentButtonStyle">SSW 
                            Code Auditor</a> to check for this rule.</td>
                    </tr>
                </table>
                <br />
            </li>
            <li>
                <h2>
                    <a name="AvoidGroupBox"></a>Control Choice - Do you avoid using &quot;Group Box&quot; and 
                    use a line to organize your form?
                </h2>
                <p>
                    Group box should only be used when you want to notify the user the controls 
                    within it are really related, such as radio buttons.
                </p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/RulesT8.jpg" alt="SSW Exchange Reporter Setup" width="506"
                            height="385" /></dt>
                    <dd>
                        Figure: Bad Example - Inappropriate use of 'Group Box', there is nothing to be 
                        grouped</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/RulesT4.jpg" alt="SSW Exchange Reporter Setup - Line for Grouping"
                            width="506" height="385" /></dt>
                    <dd>
                        Figure: Good Example - Use a line to organize different sections</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/RulesT6.gif" alt="VS.NET 2003 Options Form" width="599"
                            height="375" /></dt>
                    <dd>
                        figure: Good Example - VS.NET 2003 Options form, appropriate use of 'Group Box', 
                        the radio buttons are related to each other</dd></dl>
                <p>
                    In other cases, you should avoid using group box and replace it with a simple 
                    line, this will save you some space on the form and help you organize your form 
                    more easily.
                </p>
            </li>
            <li>
                <h2>
                    <a name="OptionsBold"></a>Control Choice - Do you use bold on the main options 
                    to make them clearer?
                </h2>
                <p>
                    Make the options clearer by using bold.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/OptionsTextNotInBold.gif" alt="SSW Link Auditor - Command Line"
                            border="0" width="550" height="459" /></dt>
                    <dd>
                        Figure: Bad Example - Main options text not in bold</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/OptionsTextInBold.gif" alt="SSW Link Auditor - Command Line" border="0"
                            width="640" height="514" /></dt>
                    <dd>
                        Figure: Good Example - Main options text in bold</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="UseOptionsGroup"></a>Control Choice - Do you know when to use options 
                    group (Radio Buttons) instead of ComboBox?
                </h2>
                <p>
                    When the options are static items (not database driven) and they can fit on the 
                    screen (about 2-5 items), they should be radio buttons.</p>
                <p>
                    For a ComboBox, user needs 2 clicks to change the value
                    <ol>
                        <li>Click the little &quot;v&quot; button to see the available options.</li>
                        <li>Then click the option to select.</li></ol>
                </p>
                <p>
                    For an options group, user can see all the available options without clicking, 
                    and select the option with just a click.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/NotUsingRadioButtons.gif" width="474" height="386" alt="ComboBox is used for " /></dt>
                    <dd>
                        Figure: Bad Example - ComboBox is used for &quot;Job Type&quot; where it contains only 2 
                        options</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/UsingRadioButtons.gif" width="544" height="362" alt="Radio Buttons are used and aligned vertically." /></dt>
                    <dd>
                        Figure: Good Example - Radio Buttons are used and aligned vertically.</dd></dl>
            </li>
            <li>
                <h2><a name="Embedded"></a>
                    Forms - Do you avoid doing an embedded add?</h2>
                <p>
                    For any case of 'Add New', choose to open a new window (popup) for entering data.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/EmbeddedAdd.jpg" alt="The 'Add New' button should open a new form" width="605" height="329" /></dt><dd>
                            Figure 1: The 'Add New' button changes from a view into a data entry form</dd></dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadEmbeddedAdd.jpg" alt="The 'Add New' did not open a new form" width="605" height="454" /></dt>
                    <dd>
                        Figure 2: Bad Example - the 'Add New' button, shown in Figure 1, opened the page in the same window.</dd></dl>
                <p>
                    You are better to open in a new form, reasons being:</p>
                <ul>
                    <li>It is better for user in terms of clarity the change of view to data entry form 
                        can be a surprise</li>
                    <li>It is better to code e.g. if you are using this control in a couple of places 
                        you may need to show or hide 'Save' buttons etc. Otherwise, it is a pain to make 
                        it behave differently in different contexts.</li>
                </ul>
                <p>
                    However, you do need to call back on save and requery it.<br />
                    Use a modal form and requery it (DON'T use javascript instead use the Modal Popup Form Example)
                    <br />
                    An example of this is in Outlook with the 'New' button.
                    <dl class="goodImage">
                        <dt>
                            <img src="Images/GoodEmbeddedAdd.jpg" alt="The 'New' opens a new form" width="604" height="232" /></dt>
                        <dd>
                            Figure: Good Example - the 'New' button in Outlook opens a new form for you to construct your email</dd></dl>
                    <dl class="image">
                        <dt>
                            <img src="Images/sharepoint-add-table.jpg" alt="Adding a new table in SharePoiny" /></dt>
                            <dd>Figure: Adding a table in SharePoint have a popup with dimmed background</dd>
                    </dl>
                </p>
            </li>
            <li>
                <h2><a name="RichTextboxNotes"></a>
                    Forms - Do you avoid using plain textboxes for notes?</h2>
                <p>
                    Instead of using plain textboxes for notes, use rich textboxes. The main reasons 
                    for this is that it allows you to use links to URLs, have variations in 
                    formatting (including bold, underline, italics, font type and font size, etc.), 
                    use bullet points and numbering, as well as other features of rich textboxes 
                    that plain text boxes do not provide.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadNotes.jpg" alt="Use of a plain textbox for notes" width="604" height="396" /></dt>
                    <dd>
                        Figure: Bad Example - use of a plain textbox limits the detail of the user's 
                        notes</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodNotes.jpg" alt="Use of a rich textbox for notes" width="604" height="743" /></dt>
                    <dd>
                        Figure: Good Example - with use of the rich textbox, the user is able to use 
                        added features such as bold, underline, highlighting and hyperlinks.</dd></dl>
                <p>
                    See our page on <a href="/ssw/Standards/DeveloperGeneral/WebdevelopmentToolsASPNET.aspx">
                        The Best 3rd Party Web Development Tools</a> and you will find the <a href="/SSW/Redirect/freetextbox1.htm"
                            class="external">FreeTextBox Demo</a></p>
            </li>
            <li>
                <h2><a name="DynamicallyLabelButtons"></a>
                    Forms - Do you avoid dynamically labelling your form buttons?
                </h2>
                <p>
                    The buttons that a user will typically use should not be dynamically labelled across 
                    your applications.</p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/DynamicallyLabelingButtonBad.gif" alt="OLEDB Connection String"
                            width="607" height="171" /></dt>
                    <dd>
                        Figure: Bad Example - Buttons are dynamically labelled &quot;Build ...&quot; and &quot;Edit 
                        ...&quot; depending on text in the text box</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/DynamicallyLabelingButtonGood.gif" alt="OLEDB Connection String"
                            width="598" height="175" /></dt><dd>Figure: Good Example - Buttons are not 
                        dynamically labelled</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="SizeSpacing"></a>Forms - Do you follow the control size and spacing standards?
                </h2>
                <p>
                    <strong>Introduction</strong></p>
                <p>
                    Despite seeming trivial to some developers, the most subtle elements of your 
                    form design can have the greatest impact on your users.</p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/ScreenBadControls.gif" alt="SSW SQL Auditor - Choose Data Source"
                            width="550" height="510" /></dt><dd>Figure: Bad Example - What's wrong with 
                        this form?</dd></dl>
                <p>
                    The form shown in this screenshot is an example of bad control placement:</p>
                <ol>
                    <li>The fonts used are non-standard (see: <a href="#Font">Do you use Microsoft's 
                        Recommended Font in your Application?</a>)</li>
                    <li>The controls have <strong>no consistency</strong> in terms of margins, spacing 
                        or even control alignment. See, for example:
                        <ol>
                            <li type="a">The navigation buttons at the bottom of the screen having uneven margin 
                                space on the right and bottom sides. They're also the wrong size.</li>
                            <li type="a">The dimensions of all input controls and buttons do not follow standard 
                                convention (see below)</li>
                            <li type="a">The right side of the <i>Build...</i> button is not aligned with the 
                                right of the <i>Connection String</i> text box</li>
                            <li type="a">The left margins inside the two frames are inconsistent.</li>
                            <li type="a">The space surrounding the logo in the top right corner is uneven</li>
                        </ol>
                    </li>
                </ol>
                <p>
                    This detracts from the visual appeal of the user interface, and results in an 
                    uneven user experience. After looking at all of this you may be thinking &quot;<strong>do 
                    I really need to work out exactly what spacing and dimensions I want to use for <i>
                    every</i>
                        detail of a form I make?</strong>&quot;</p>
                <p>
                    The good news is that<strong> you don't need to</strong>: Microsoft have gone to 
                    a great deal of effort to <a href="/ssw/Redirect/Microsoft/MSDNVisualDesign.htm">
                    define standards</a> for exactly how your form controls should be laid out, and 
                    these standards are worth taking into consideration. By all means, if you have 
                    disagreements with anything listed here then please discuss it with us and we'll 
                    consider changing our own standards (Microsoft have changed theirs over the 
                    years, after all), but we recommend using the following as a guide.</p>
                <p>
                    These examples assume that you are using the standard system font as defined in 
                    the rule mentioned above. Please note that although Dialog Units (DLUs) are 
                    better suited for generic (font independent) use, they are not available in the 
                    Visual Studio designer.</p>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/GoodStandardForm.jpg" width="551" height="484" alt="SSW SQL Auditor - Choose a Data Source" /></dt>
                    <dd>
                        Figure: Good Example - The form follows Standards of good form design discussed 
                        below</dd></dl>
                <p>
                    <strong>The Rules</strong></p>
                <ol>
                    <li><strong>Buttons must be...</strong><ul>
                        <li>Spaced apart by 6 pixels from other buttons <strong>except</strong> in the case 
                            of wizards where the <i>&lt; Back</i> and <i>Next &gt;</i> buttons may be closer 
                            together</li>
                        <li>Spaced 6 pixels from the inside border of a form on the sides closest to it</li>
                        <li>usually 75 pixels wide</li>
                        <li>23 pixels high</li>
                    </ul>
                    </li>
                    <li><strong>Single-line textboxes and most controls must be...</strong><ul>
                        <li>21 pixels high (width depends on content) </li>
                        <li>Aligned correctly with any related controls</li>
                    </ul>
                    </li>
                    <li><strong>In a form...</strong><ul>
                        <li>Margins must be consistent (see <a href="/ssw/Redirect/Microsoft/MSDNMargins.htm"
                            class="external">Microsoft's diagram illustrating this</a>)</li>
                    </ul>
                    </li>
                </ol>
                <p>
                    These are some of the more common examples. Please read Microsoft's <a href="/ssw/Redirect/Microsoft/MSDNLayout.htm"
                        class="external">Visual Design Guidelines</a> for more information and 
                    greater detail.</p>
                <p>
                    <strong>Ultimately the goal of all of this is to ensure consistency</strong>. 
                    Keeping these ideas in mind at all times while doing user interface design will 
                    give users a better overall experience and will boost the professionalism of 
                    your products.</p>
                <p>
                    <strong>One From The Good Guys</strong></p>
                <p>
                    Here's a good example for y'all to take inspiration from. This dialog is from 
                    Microsoft Outlook. Let's check out some points:</p>
                <ol>
                    <li>Consistency across wizard pages is very good</li>
                    <li>Spacing and sizing of buttons is precise</li>
                    <li>The logo has been positioned evenly</li>
                </ol>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/ScreenGoodControls.gif" alt="Outlook - Email Accounts"
                            width="575" height="444" /></dt>
                    <dd>
                        Figure: Good Example - Microsoft have defined to exacting measures what spacing 
                        should be used in their Microsoft Outlook wizards</dd></dl>
                <p>
                    Read more about control size on the <a href="/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx#CommonControl">
                        Rules to Better Interfaces</a> page</p>
                <br />
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table9">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#SizeSpacing">SSW Code 
                            Auditor</a>
                            to check for this rule.</td>
                    </tr>
                </table>
            </li>
            <li>
                <h2>
                    <a name="minisize"></a>Forms - Windows Form should have a minimum size to avoid 
                    unexpected UI behavior</h2>
                <p>
                    If windows form does not setup a minimum size, user could have unpredictable 
                    form behaviour as below image shown:</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/Bugsize.gif" alt="Bad window form" width="562" height="471" /></dt>
                    <dd>
                        Figure: Bad Example - Unexpected window form</dd></dl>
                <p>
                    Therefore, a standard has been built to ensure windows form have a minimum size. 
                    This will always keep application to have user friendly windows form(see below):</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/Minisize.gif" alt="Good window form" border="1" width="600" height="554" /></dt>
                    <dd>
                        Figure: Good Example - User friendly window form</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="DataEntryForms"></a>Forms - The way to develop Data Entry 
                    Forms.
                </h2>
                <p>
                    Data Entrees should be able to use your data entry form with ease. It should 
                    follow the flow that they are familiar with. This is a standard we adhere to 
                    when developing in SSW.</p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/BadAddDeleteSubForm.gif" alt="Access - Clients Form"
                            width="500" height="380" /></dt>
                    <dd>
                        Figure: Bad Example - New button should open another form, and Delete button 
                        should be on that new form</dd></dl>
                <ol>
                    <li>
                        <p>
                            <i>Multiple Form Instances</i></p>
                        <p>
                            Imagine, while the Sally is entering a Quote on the Quote Form, they receive a 
                            Phone call from a client needing a new Quote. The user will not want to close 
                            the current Quote, because they are 1/2 way through it.</p>
                        <p>
                            As we saw in the example above, Sally needs to open multiple instances of the 
                            same form. A reputable example for this Microsoft's Outlook. When you are 1/2 
                            way through an email, and you chose to start writing another, Outlook makes it 
                            convenient by placing every email you open in the taskbar. The figure below 
                            illustrates this.</p>
                        <dl class="goodImage">
                            <dt>
                                <img border="0" src="Images/Outlookemails.jpg" alt="Outlook - Multiple Emails" width="491"
                                    height="489" /></dt>
                            <dd>
                                Figure: Good Example - Outlook opens multiple instances of the data entry form 
                                (email message)</dd></dl>
                        <dl class="goodImage">
                            <dt>
                                <img border="0" src="Images/outlooktaskbar.jpg" alt="Outlook Taskbar" width="266"
                                    height="33" /></dt><dd>Figure: Good Example - Each form instance is shown in 
                                the taskbar, and easily opened again</dd></dl>
                        <p>
                            A method of implementing this is through New and Delete buttons on the form
                        </p>
                        <p>
                            New and Delete buttons should appear, in a toolbar for example, docked to the 
                            top.<br />
                            The figure in <a href="#DrillAround">Data Entry Forms - Drill Downs</a> below 
                            illustrates this.
                        </p>
                        <dl class="goodImage">
                            <dt>
                                <img border="0" src="Images/GoodAddDeleteSubForm.jpg" width="446" height="695" alt="SSW Time PRO .NET -  Time Sheets" /></dt>
                            <dd>
                                Figure: Good Example - New and Delete buttons docked in the Toolbar providing 
                                easy data entry for new Timesheets</dd></dl>
                        <p>
                            The Delete button resides there to make sure that sally has seen the record 
                            before she deletes it. The New button should instantiate a new data entry form 
                            in add mode (as compared to <i>edit</i>), leaving the current one in the 
                            background.</p>
                        <p>
                            It can be argued that navigation is required in a data entry form. As an option, 
                            a good navigation system will navigate through a subset of records (ideally 
                            records which are search results). The idea of navigating through all records 
                            can be tedious, and most of the time useless.</p>
                        <p>
                            <i>However there is a problem</i></p>
                        <p>
                            Do you open the same record with two different instances of the form. For 
                            example, if attempt to open a form instance for editing a Quote from the 
                            database, then while editing you open up another form instance for the same 
                            Quote. Besides the fact that there will be loss of data, and dirty reading, this 
                            is a very confusing interface.</p>
                        <p>
                            <i>A possible solution for this issue is to implement a form manager.</i></p>
                        <p>
                            The <i>form manager </i>will keep track of every instance opened. So in our 
                            example, the second time we try to open the same Quote for editing, the <i>form 
                            manager</i>
                            will recognize that there is a form currently being edited that Quote, and would 
                            select that form.
                        </p>
                    </li>
                    <li>
                        <p>
                            <i>Form states and how to respond to them</i></p>
                        <p>
                            The form is to be aware of the data state. If the data is dirty:
                        </p>
                        <ul>
                            <li>The Apply button would be enabled until the record is saved.</li>
                            <li>The OK button would simply save the record and close the Form. </li>
                            <li>The Cancel button would pop up a dialog (shown in the figure below) asking to 
                                save changes;<br />
                                If the user decides to save, it should save the record and close the form.<br />
                                If No, then close the form without saving.<br />
                                If Cancel, then return back to the dirty form.</li>
                        </ul>
                        <dl class="goodImage">
                            <dt>
                                <img border="0" src="Images/SaveChangesDialog.jpg" alt="Centrix - Save Changes" width="266"
                                    height="126" /></dt><dd>Figure: Good Example - Save Changes Dialog must 
                                appear when form is dirty</dd></dl>
                    </li>
                    <li>
                        <p>
                            Do not add buttons for searching on the data entry form, create a new form for 
                            search, through which you can open new instances of the form. The convenience of 
                            the search capability on the form will be overlooked as it makes the form more 
                            crowded. Another issue which can arise is if Sally searches for a criteria which 
                            returns multiple records, she cannot look at all those records. She can only 
                            open one at a time, navigating through them. The solution to the search dilemma 
                            is to create a new search form, which is shown in the figure below. The search 
                            form will allow multiple criteria, will not over crowd the data entry form, and 
                            will show you all the results that your search has retrieved.</p>
                        <dl class="badImage">
                            <dt>
                                <img border="0" src="Images/BadSearch.gif" alt="Integrated Search" width="448" height="495" /></dt>
                            <dd>
                                Figure: Bad Example - This implementation of a search utility is on the same 
                                form</dd>
                        </dl>
                        <dl class="goodImage">
                            <dt>
                                <img border="0" src="Images/SearchForm.gif" alt="Separate Search" width="592" height="680" /></dt>
                            <dd>
                                Figure: Good Example - This implementation of Search feature is on a separate 
                                form</dd>
                        </dl>
                    </li>
                    <li>
                        <p>
                            <i>No Delete Button for sub forms</i></p>
                        <p>
                            When including a sub form in your main form (as shown in figure below), the only 
                            options the user should have are&nbsp; &quot;New&quot; and &quot;Edit&quot;. When &quot;Edit&quot; is 
                            clicked, another data entry form is opened to edit selected record. In this data 
                            entry form, you will have a &quot;Delete&quot; button on the toolbar. This saves the user 
                            from making mistakes and forcing them to see the record before deleting.</p>
                        <dl class="goodImage">
                            <dt>
                                <img border="0" src="Images/SubFormsExample.gif" alt="Centrix - Loan Estimate Details"
                                    width="577" height="441" /></dt>
                            <dd>
                                Figure: Good Example - No Delete button for Sub forms</dd></dl>
                    </li>
                    <li>
                        <p>
                            <i>Validation</i></p>
                        <p>
                            Most fields required validation. There are three types of validations:
                        </p>
                        <ul>
                            <li>Required Field - the field should be filled in.</li>
                            <li>Formatting - the field must be in a correct format. e.g. currency or date. </li>
                            <li>Logical - the field needs to pass some validation tests in the business layer. </li>
                        </ul>
                        <p>
                            To show an error, display an error provider icon next to the field on the right. 
                            An example of this is shown in the figure below.<br />
                            Validation must not be done on TextChanged, this may chew the processor if it is 
                            a logical validation. It can also give unpleasant results, e.g. when entering 
                            -6.00, as soon as the '-' is entered the validation control would turn on.<br />
                            Validation for Required fields must be done in the validating event.<br />
                            Validation for format should be done in parse/format methods.<br />
                            Validation for Logic should be done in Validated, since it must be entered if 
                            required, and in correct format.</p>
                        <p>
                            The reason for the above validation placement is that these events  
                            run in the following order:</p>
                        <ul>
                            <li>Validating</li>
                            <li>Parse/Format</li>
                            <li>Validated</li>
                        </ul>
                        <dl class="goodImage">
                            <dt>
                                <img border="0" src="Images/ErrorProviderIconExample.jpg" alt="Centrix - Error Provider"
                                    width="229" height="79" /></dt>
                            <dd>
                                Figure: Good Example - Error Provider Icon next to a required field</dd></dl>
                        <p>
                            Do <i>not</i> show a message box after every error in validation. You may show a 
                            message box as an error summary when an OK or Apply is clicked. Make sure you 
                            warn the user that there is an error on the form when they attempt to save.
                        </p>
                    </li>
                    <li>
                        <p>
                            <i>Relevant Menus</i></p>
                        <p>
                            Make sure that the menu items are relevant to the current form. The main idea is 
                            that we don't want to show the user any dummy menu items. However, This may 
                            become complex when a base form (containing the menu) is inherited. Access to 
                            menus in the base form must be granted (maybe through properties), so that each 
                            menu can be customized according to each child form.</p>
                        <dl class="badImage">
                            <dt>
                                <img border="0" src="Images/MenuBadExample.jpg" alt="Centrix - File, Action, Report, Tools &amp; Help Menus"
                                    width="215" height="144" /></dt>
                            <dd>
                                Figure: Bad Example - Action and Tools are irrelevant on this form</dd></dl>
                        <dl class="goodImage">
                            <dt>
                                <img border="0" src="Images/MenuGoodExample.jpg" alt="Centrix - File, Report &amp; Help Menus"
                                    width="215" height="143" /></dt><dd>Figure: Good Example - Menus are 
                                relevant</dd></dl>
                        <p>
                            In the above example, there are a couple of unused menus that have been 
                            inherited from the base form and not set to invisible.</p>
                    </li>
                    <li>
                        <p>
                            <i>Field Formatting</i></p>
                        <p>
                            Ensure that the data is displayed in correct format. For example, when 
                            presenting a percentage data in a field, make sure it is displayed as '% xx.xx'.<br />
                            To accompany formatting, you must also create a parse function for putting the 
                            correct value back in the database.</p>
                        <p>
                            Note: This can be difficult for data bound fields, and in that case you will 
                            have to handle the parse and format event of the Field's Binding object. An 
                            example of handling these events is shown below.
                        </p>
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
                            <dd>
                                Code: Code for Handling Parse and Format Events for Data bound Controls</dd></dl>
                        <p>
                            the visual designer in VS.Net, the Binding is created and added to the 
                            Data-Bindings of the Control all in one line. Do not use the visual designer to 
                            data-bind if you will be handling the Parse and Format events. You will have to 
                            create the handlers yourself</p>
                    </li>
                    <li><a name="CreatedBy"></a>
                        <p>
                            <i>Created/Last Updated By Fields</i></p>
                        <p>
                            With all database entries, there is always some fields that are used over and 
                            over again. For example, these fields may be created date, created by, last 
                            updated date, updated by, etc.
                        </p>
                        <p>
                            A common UI to use for these fields can be seen in the example below. What we do 
                            is create a user control that is identical across all projects/UI.
                        </p>
                        <dl class="badImage">
                            <dt>
                                <img border="0" src="Images/BadCreatedUpdated.jpg" alt="SSW Time PRO .NET - Time Sheets"
                                    width="446" height="695" /></dt>
                            <dd>
                                Figure: Bad Example - This form has no information to indicate who created this 
                                entry and who last modified it</dd></dl>
                        <dl class="goodImage">
                            <dt>
                                <img border="0" src="Images/GoodCreatedUpdated.jpg" width="446" height="695" alt="SSW Time PRO .NET - Time Sheets" /></dt>
                            <dd>
                                Figure: Good Example - This form contains Created by/Updated by fields used in a 
                                standard control which is put into all forms</dd></dl>
                        <p>
                            An example of how to set the values for this user control is shown below.
                        </p>
                        <dl class="code">
                            <dt>
                                <pre>
            updatedBy.CreatedDate = .DateCreated
            updatedBy.CreatedBy = .EmpCreated
            updatedBy.UpdatedDate = .DateUpdated
            updatedBy.UpdatedBy = .EmpUpdated
            </pre>
                            </dt>
                            <dd>
                                Code: Code for Setting values for User Control</dd></dl>
                        <p>
                            Databinding is also available to be used with this user control.
                        </p>
                        <dl class="image">
                            <dt>
                                <img src="Images/CommonFieldsDB.gif" alt="User Control - Data Binding in the Designer" width="354" height="395" /></dt>
                            <dd>
                                Figure: Data Binding using the Designer</dd></dl>
                    </li>
                    <li>
                        <p>
                            <i>Minimum Defaults</i></p>
                        <p>
                            In many situations, there is a need for field Defaults. These Defaults can be 
                            extracted from the Database for example. When a new form is opened ensure that 
                            only necessary Defaults are loaded. By Default some decimal fields will become 
                            0.0, but make sure they are set to blank because they may be required fields.</p>
                    </li>
                    <li>
                        <p>
                            <i>Resizing</i></p>
                        <p>
                            Is the form resizable? What happens if the user resizes and/or maximizes the 
                            form?</p>
                        <p>
                            Data entry forms, and forms containing List View controls, should be resizable. 
                            Use either anchoring or docking, or a combination, to handle window resizing. 
                            Restricting the user from resizing or maximizing the form is not recommended.
                        </p>
                    </li>
                </ol>
            </li>
            <li>
                <h2><a name="ElipsisForDialogs"></a>
                    Forms - Do you use an ellipsis (...) to indicate an action requiring more user input?
                </h2>
                <p>
                    In menus (including context menus) or buttons, there are generally two types of 
                    actions: ones that carry out an action without any further user intervention 
                    upon clicking; and those that require further user input before the action is 
                    carried out.
                </p>
                <p>
                    Microsoft developed applications uses this technique to indicate whether or not 
                    the action will be carried out without any further user intervention. Your 
                    application should also follow this well-established standard, so users will not 
                    be caught off guard when an action carried out immediately after they click the 
                    menu item.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/Elipsis.gif" alt="Elipsis" border="1" width="236" height="60" /></dt>
                    <dd>
                        Figure: Good Example - Options menu in Outlook, with ellipsis</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RunDialog.gif" alt="Shows that it needs further input" width="347"
                            height="186" /></dt>
                    <dd>
                        Figure: Good Example - Ellipsis on buttons that require further input</dd></dl>
            </li>














            <li>
                <h2><a name="LabelButtons"></a>
                    Forms - Do you label your form buttons consistently?
                </h2>
                <p>
                    The buttons that a user will typically use to close a form should be named 
                    consistently across your applications.</p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/ButtonLabels_Bad.gif" alt="Broker Details - Save &amp; Close Buttons"
                            width="452" height="304" /></dt>
                    <dd>
                        Figure: Bad Example - Unclear labels on the buttons</dd></dl>
                <ul>
                    <li><strong>Save</strong> button could possibly update the fields but keep the form 
                        open.</li>
                    <li><strong>Close</strong> could save the fields, then close the form, when the <strong>
                        Cancel</strong> button may be more appropriate.</li>
                </ul>
                <p>
                    We recommend the age-old standards of:</p>
                <ul>
                    <li><strong>OK</strong>. Close the form and save any changed data. This should be 
                        referenced by the form's AcceptButton property.</li>
                    <li><strong>Cancel</strong>. Close the form without saving. This should be 
                        referenced by the form's CancelButton property.</li>
                    <li><strong>Close</strong>. This should only be displayed if no data has or will be 
                        changed in the form's current lifetime.</li>
                    <li><strong>Apply</strong>. Save data without closing the form.</li>
                </ul>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/OKCancelExampleDialog.jpg" alt="Outlook Contact Properties - OK, Cancel &amp; Apply Buttons"
                            width="578" height="374" /></dt><dd>Figure: Good Example - This form uses 
                        the standard button naming standards (and has the Default buttons set!)</dd></dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table17">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to 
                            check for this rule.
                        </td>
                    </tr>
                </table>
            </li>
            <li>
                <h2><a name="DrillAround"></a>
                    Forms - Do you provide the user Drill-Downs and Drill-Arounds?
                </h2>
                <p>
                    Users should be able to navigate around your application without having to 
                    return to the main menu to open a related form.</p>
                <p class="mystyle">
                    Think about a summary report - users should always be able to &quot;drill-down&quot; to 
                    track a transaction to its original source.<br />
                    Think about a data entry form - users should always be able to &quot;drill-down&quot; to 
                    the look up table</p>
                <p>
                    There are four ways to provide drill-downs:</p>
                <ol>
                    <li>Preferred - Use buttons to navigate around the application
                        <dl class="image">
                            <dt>
                                <img src="Images/DrillDownDrillAround.gif" alt="SSW Timesheets - Add Timesheet Entry"
                                    width="552" height="530" /></dt>
                            <dd>
                                Figure: Use named buttons to navigate around the application (Preferred)</dd></dl>
                    </li>
                    <li>Double click the control</li>
                    <li>Use buttons with three dots - an ellipsis (...) character
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/CodeAuditorEllipses.gif" alt="SSW Code Auditor - Path to Scan" width="614"
                                    height="519" /></dt>
                            <dd>
                                Figure: Good Example - Use ellipses to navigate around the application</dd></dl>
                    </li>
                    <li>Use hyperlinks<dl class="image">
                        <dt>
                            <img border="0" src="Images/AssetForm.png" alt="Asset Form" width="615" height="478" /></dt>
                        <dd>
                            Figure: Drill-downs implemented as links (an interesting alternative but a bit 
                            too much of a visual impact)</dd></dl>
                    </li>
                </ol>
                <p>
                    Another handy thing to add for users is &quot;drill-around&quot;. This is implemented by 
                    using a right mouse-click to activate context-sensitive links between related 
                    screens.</p>
            </li>
            <li>
                <h2><a name="ComboBoxDrillDown"></a>
                    Forms - Do you avoid using menus for ComboBox maintenance?
                </h2>
                <p class="mystyle">
                    Using a separate menu to maintain ComboBoxes is never a good idea. A better 
                    solution is to use an ellipses button to drill down into the menu.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/ComboBoxMenuBad.gif" alt="Menu driven ComboBox Maintenance System"
                            width="446" height="267" /></dt>
                    <dd>
                        Figure: Bad Example - Menu driven ComboBox maintenance form</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/Ellipses.gif" alt="SSW eXtreme Emails! - Add Incident" width="536"
                            height="560" /></dt>
                    <dd>
                        Figure: Good Example - Use ellipses to drill down into a ComboBox maintenance 
                        form</dd></dl>
            </li>
            <li>
                <h2><a name="ButtonAlign"></a>
                    Forms - Do you align your Add/Edit/Delete buttons horizontal and bottom 
                    right?
                </h2>
                <p>
                    Usually there are problems fitting buttons next to datagrids or listboxes when 
                    trying to imply that those buttons add functionality to the datagrid or listbox.</p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/BadButtonAlign.jpg" width="549" height="451" alt="SSW Code Auditor - Select Job" /></dt>
                    <dd>
                        Figure: Bad Example - This form places the Add and Delete buttons in one line</dd></dl>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/BetterButtonAlign.jpg" width="550" height="450" alt="SSW Code Auditor - Rules Definition" /></dt>
                    <dd>
                        Figure: Buttons aligned vertically, however they cut off useful information in 
                        the datagrid (Better)</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/GoodButtonAlign.jpg" width="586" height="479" alt="SSW Code Auditor - Select Files" /></dt>
                    <dd>
                        Figure: Good Example - Buttons align horizontally at the bottom right of the 
                        grid which provides plenty of room for then needed information</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="AvoidCombining"></a>Forms - Do you avoid combining different 
                    entities?
                </h2>
                <p>
                    If the form controls are different entities, they usually have different data 
                    and different validation, thus they should not be combined.
                    <br />
                    Having the controls separated also make the form easier to read.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/AvoidCombiningBad.gif" width="568" height="320" alt="Different entities are combined." /></dt>
                    <dd>
                        Figure: Bad Example - Different entities are combined</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/AvoidCombiningGood.gif" width="600" height="643" alt="Different entities are separated." /></dt>
                    <dd>
                        Figure: Good Example - Different entities are separated</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="TwoFormsAreBetter"></a>Forms - Do you avoid using one form for 
                    data entry and find navigation?
                </h2>
                <p>
                    Combining data entry and find navigation is a mistake. I think 2 forms are 
                    better than one. I prefer a list box on one form with &quot;Add&quot;, &quot;Edit&quot; and &quot;Delete&quot; 
                    buttons to a popup form. Rather than a listbox and the data entry fields on one 
                    form.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/Rule-2formbetter-bad-1.jpg" alt="ListView with data entry fields in one form. "
                            width="530" height="581" /></dt>
                    <dd>
                        Figure: Bad Example - ListView with data entry fields in one form</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/Rule-2formbetter-good-1.jpg" alt="ListView with only 'Add' 'Edit' 'Delete' buttons."
                            width="530" height="581" /></dt>
                    <dd>
                        Figure: Good Example - ListView with only 'Add' 'Edit' 'Delete' buttons</dd></dl>
                <p>
                    When you want to create a new entry or edit one, just click the buttons and 
                    open a new form with all the data entry fields.</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/Rule-2formbetter-good-2.jpg" alt="ListView with only 'Add' 'Edit' 'Delete' buttons."
                            width="544" height="370" /></dt>
                    <dd>
                        Figure: Good Example - Separate form with all the data entry fields</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="PopupEditForm"></a>Forms - Do you create a popup form for editing details?</h2>
                <p>
                    If you want to edit a single item in your form we suggest you use a popup form.
                    This gives each form a definite function and neat UI design.
                </p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/NonePopupEditForm.gif" alt="without popup form" width="450" height="450" /></dt>
                    <dd>
                        Figure: Bad Example - Edit controls and main UI are messed up.</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/PopupEditForm.gif" alt="with popup edit form" width="591" height="397" /></dt>
                    <dd>
                        Figure: Good Example - Use a popup form to do edit.</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="ConsistentField"></a>Forms - Do you have consistent way to store a same field?</h2>
                <p>
                    In Outlook the Street Address is stored as 1 Multi-Line field (with an 
                    intelligent Address Checker - nice but not essential), yet in Microsoft CRM the 
                    Street Address is split out across 3 separate single line text fields, they 
                    should be consistent.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/GoodExample.jpg" alt="Street Address in Outlook" width="767" height="330" /></dt>
                    <dd>Figure: Street Address in Outlook.</dd>
                </dl>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/BadExample.jpg" alt="Street Address in CRM" width="589" height="452" /></dt>
                    <dd>Figure: Street Address in CRM.</dd>
                </dl>
                <p>
                    We consider Outlook is friendlier, because:<br />
                <ol>
                    <li>The wrong data is entered often when you have Street 1, Street 2, Street 3.</li>
	    	        <li>Often Street 2 and Street 3 is not needed so it is extra clutter for no reason.</li>
	    	        <li>What do you do when you have Street 4.</li>
	    	        <li>It is the same as <a href="/SSW/Redirect/Live.htm">http://local.live.com/</a></li>
	    	    </ol>
	    	    Of course, we might be wrong, because:<br />
	    	    <ol>
	    	        <li>Basically, it's not worth the effort - because it goes across multiple places in 
                        CRM like Leads and Opportunity (see test results from Adrian).</li>
	    	        <li>Printing labels might be simpler - sizes would be fixed.</li>
	            </ol>
	            </p>
	            We have a suggestion for CRM about this at 
	            <a href="../BetterSoftwareSuggestions/CRM.aspx#AddressConsistent">CRM and 
                Outlook should be consistent with regards to Addresses.</a>
            </li>
            <li>
                <h2>
                    <a name="MenuSelect"></a>Forms - Do you save the last user's selections?
                    <img src="Images/RedStar.gif" alt="RedStar" width="18" height="14" />
                </h2>
                <p>
                    Below is a report screen that is fairly common that developers create, they will 
                    make it so every time the page is loaded the user will have to reselect their 
                    options. To make it simpler the options should be stored in a cookie or database 
                    and be already pre-selected once the page is reloaded, as it is likely they will 
                    want to use the same or slightly modified query. If they don't then they can 
                    simply select what they are after anyway.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/SampleSelect.jpg" alt="Sample Select" border="1" width="600" height="54" /></dt>
                    <dd>
                        Figure: Bad Example - This is suitable for first view, but not for a return view</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/SampleSelect2.jpg" alt="Sample Select 2" border="1" width="600"
                            height="54" /></dt>
                    <dd>
                        Figure: Good Example - Instead, save the users last selection</dd></dl>
            </li>
            <li>
                <h2><a name="DatabaseSettingsUdl"></a>
                    Do you use a UDL when getting database settings?
                </h2>
                <p>
                    Why do people always invent ways of getting the same old server name and a 
                    database name? Look at this image from <a href="/ssw/Standards/DeveloperGeneral/SQLservertools.aspx#SpeedFerret"
                        target="_blank">Speed Ferret</a> - one of my favourite SQL Server utilities
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/SpeedFerretUdl.gif" alt="Speed Ferret UDL" width="400" height="385" /></dt>
                    <dd>
                        Figure: Bad Example - Custom database connection screen in Speed Ferret.
                    </dd>
                </dl>
                <p>
                    While a nice form, it would have taken quite some developer time to get it 
                    right. Not only that it is a little bit different than what a user has seen 
                    before. Now look at this UDL from one of our utilities <a href="/ssw/SQLAuditor" target="_blank">
                        SSW SQL Auditor</a>:</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/StandardUdl.gif" alt="Standard UDL" width="367" height="460" /></dt>
                    <dd>
                        Figure: Good Example - Standard Microsoft UDL dialog</dd></dl>
                <p>
                    Every developer has seen this before - so use it. Better still, it is only a few 
                    lines of code:
                   
                    <a href="/ssw/KB/Codebase/05VB-Net/B-Open%20UDL%20Dialog-DH.txt" target="_blank">
                       
                        B-Open UDL Dialog-DH.txt</a>
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/VS2005Udl.gif" alt="VS 2005 UDL" width="382" height="573" /></dt>
                    <dd>
                        Figure: Coming in Visual Studio .NET 2005 Microsoft are yet to release an API to 
                        do this</dd></dl>
                <p>
                    <a href="/ssw/Standards/BetterSoftwareSuggestions/MSForm.aspx#InvokingOLEBDataLinkPropertiesDialog">
                        Need extra information?</a>
                </p>
            </li>
            <li>
                <h2>
                    <a name="BorderProtection"></a>Do your Windows Forms have border protection?
                </h2>
                <p>
                    Border protection helps us design Windows Forms properly without placing 
                    controls too near to the border. Maintain a consistent alignment makes the 
                    Windows Forms look better, especially on designing wizard forms where all forms 
                    have the same size.</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/BorderProtectionExample.gif" alt="Designing border protection."
                            border="0" width="663" height="566" /></dt><dd>Figure: Good Example - Good 
                        border protection on a form at run time. The only problem is you would have to 
                        imagine these blue lines to get consistency</dd></dl>
                <p>
                    <strong>Border protection in action:</strong>
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BorderProtectionBad.gif" alt="SSW Link Auditor - UI without border protection."
                            border="1" width="642" height="516" /></dt><dd>Figure: Bad Example - 
                        Controls placed very near to the border and not aligned correctly</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/BorderProtectionGood.gif" alt="SSW Link Auditor - UI with border protection."
                            border="1" width="642" height="516" /></dt><dd>Figure: Good Example - All 
                        controls are in the border protection area and aligned correctly</dd></dl>
                <dl class="image">
                    <dt>
                        <img src="Images/BorderProtectionDesign.gif" alt="SSW Link Auditor - UI with border protection."
                            border="1" width="600" height="438" /></dt>
                    <dd>
                        Figure: Design mode</dd></dl>
                <p>
                    The way to implement border protection (the 2 vertical red lines) is implement 
                    it in the base form or base user control, and all other forms and user controls 
                    inherit the base class to get consistent border protection lines.
                </p>
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
                        <td valign="top">
                            <p>
                                <strong>Q:\</strong></p>
                        </td>
                        <td>
                            <p>
                                <strong>Why don't we put a panel on the form and set the form DockPadding 
                                property which does a similar thing?</strong></p>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <p>
                                A:\</p>
                        </td>
                        <td>
                            <ol>
                                <li>Adding more panels docking to a form reduces the performance significantly 
                                    because of the extra SuspendLayout and ResumeLayout calls.</li>
                                <li>In certain cases we might really want a control to stick at the border, if we 
                                    use DockPadding Property, we can't make any exceptions. And still, these red 
                                    lines actually just act like a ruler to help us easily see whether the controls 
                                    are aligned nicely.</li>
                            </ol>
                        </td>
                    </tr>
                </table>
            </li>
        </ol>
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
    </div>--%>
</asp:Content>
