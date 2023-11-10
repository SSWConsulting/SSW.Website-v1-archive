<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Interfaces - Controls" Buffer="true" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />

    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230496E7465726661636573')"> Let us know</a> what you think.</p>
    
    <div class="TableOfContents">
        <h3>Rules To Better Interfaces - Controls</h3>
        <ol>
            <li><a href="#GreyReadOnlyCalculated">Controls - Do you indicate when fields are "read only" or "calculated"?</a></li>
            <li><a href="#AllInComboBoxes">Controls - Do you include '-All-' option in your ComboBoxes?</a></li>
            <li><a href="#ResultsInComboBoxes">Controls - Do you include the number of results in ComboBoxes?</a><img src="Images/RedStar.gif" alt="Star" width="18" height="14" /></li>
            <li><a href="#SelectAll">Controls - Do you include a &quot;select all&quot; checkBox on the top?</a></li>
            <li><a href="#CheckedListBoxVSDatagrid">Control Choice - Do you use a GridView (over the CheckedListBox)?</a></li>
            <li><a href="#UseGridView">Control Choice - Do you use GridView (over the ListBox)?</a></li>
            <li><a href="#DatagridVSListview">Control Choice - Do you use ListView over GridView (was DataGrid) for ReadOnly? (Windows Forms only)</a></li>
            <li><a href="#UseCheckBox">Control Choice - Do you know when to use CheckBoxes?</a></li>
            <li><a href="#ListBoxesAreEvil">Control Choice - Do you use ComboBoxes instead of single-select List Boxes?</a></li>
            <li><a href="#ListBoxesAreEvil2">Control Choice - Do you use Checked List Boxes instead of multi-select List Boxes?</a></li>
            <li><a href="#ConsistentButtonStyle">Control Choice - Do you have a consistent look on your buttons? (Windows Forms Only)</a></li>
            <li><a href="#AvoidGroupBox">Control Choice - Do you avoid using &quot;Group Box&quot; and use a line to organize your form?</a></li>
            <li><a href="#OptionsBold">Control Choice - Do you use bold on the main options to make them clearer?</a></li>
            <li><a href="#UseOptionsGroup">Control Choice - Do you know when to use options group (Radio Buttons) instead of ComboBox?</a></li>
            <li><a href="#AvoidIncorrectData">Validation - Do you avoid capturing incorrect data?</a></li>
            <li><a href="#CorrectValidationFocus">Validation - Do you put focus to the correct control on validation error?</a></li>
            <li><a href="#FailValidation">Do you use SetFocusOnError on controls that fail validation?</a></li>
            <li><a href="#ElipsisForDialogs">Do you use ellipsis (...) to indicate an action requiring more user input?</a></li>
            <li><a href="#DisableButtons">Controls - Do you disable buttons that are unavailable?</a></li>
            <li><a href="#OptionGroupCheckBoxSimple">Controls - Do you make Option Groups and CheckBoxes simple to understand?</a></li>
            <li><a href="#Field-width">Do you know that the width of a control indicates what to enter?</a></li>
            <li><a href="#ListViewToolTip">Controls - Do you use a ToolTip to show the full text of hidden ListView data?</a></li>
            <li><a href="#Font">Controls - Do you use the fonts recommended by Microsoft in your application? (Windows Forms Only)</a></li>
            <li><a href="#FullRowSelect">Controls - Do you set row select mode as &quot;FullRowSelect&quot; for DataGridView if it is read only? (Windows Forms Only)</a></li>
            <li><a href="#SelectedRows">Controls - Do you make the selected/enabled rows stand out in a datagrid?</a></li>
            <li><a href="#ExtendComboBoxes">Controls - Do you extend the size of ComboBoxes to show as many results as possible? (Windows Forms Only) </a><img src="Images/RedStar.gif" alt="Star" width="18" height="14" /></li>
            <li><a href="#txtBox4Data">Controls - Do you use Text Boxes for displaying data?</a></li>
            <li><a href="#DatabaseSettingsUdl">Connection Stream - Do you use a UDL when getting database settings? </a></li>
            <li><a href="#Tooltip">Being Pedantic - Do you use balloon tooltip?</a></li>
            <li><a href="#ConsistentLabel">Being Pedantic - Do you end labels text with &quot;:&quot;?</a></li>
            <li><a href="#UseMnemonic">Being Pedantic - Do your buttons have a mnemonic?</a></li>
        </ol>
    </div>

    <div id="mainContent">
        <ol>
            <li><h2><a name="GreyReadOnlyCalculated"></a>Controls - Do you indicate when fields are "read only" or "calculated"?</h2>
                <p>When you are not able to edit a field the field should be greyed out. This visually indicates to the user that the field cannot be changed.</p>
                <p>If you are using Word or Excel, actually locking cells or tables may not be what you require, but you still want to prevent people from directly editing calculations. So make the cells grey and the visual indication should prompt the users what to do.</p>
                <dl class="goodImage">
                    <dt><img src="Images/GreyField.gif" alt="Grey Field" /></dt>
                    <dd>Figure: Good Example - Read only fields should be greyed out</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/GreyField-Excel.gif" alt="Grey Field Excel" /></dt>
                    <dd>Figure: Good Example - Calculated Fields in Excel should be in Grey</dd>
                </dl>
                <p>Of course you should follow the converse, which requires making all editable fields white.</p>
            </li>
            
            <li>
                <h2><a name="AllInComboBoxes"></a>Controls - Do you include '-All-' option in your ComboBoxes?<img src="Images/RedStar.gif" alt="RedStar" width="18" height="14" /></h2>
                <p>ComboBoxes often used for filtering data. It is best to have an '-All-' option to give your user chances to select all data.</p>
                <p>It is important to uderstand the idea of <strong>visual text</strong>. In a list you could see either:</p>
                <ul>
                    <li>-None-
                    or<br /></li>
                    <li>No activity assigned</li>
                </ul>
                <p>Same meaning, but for the first one we see it, instead of reading it.</p>
                <dl class="badImage">
                    <dt><img src="Images/Combo-ALL-1.jpg" alt="ComboBox without All" /></dt>
                    <dd>Figure: Bad Example - No '-All-' option so the user cannot select all data</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/Combo-ALL-2.jpg" alt="ComboBox without All" /></dt>
                    <dd>Figure: Good Example - Having an '-All-' option gives a user a chance to select all data</dd>
                </dl>
                <p>Also, keep it simple!</p>
                <dl class="badImage">
                    <dt><img src="Images/SelectAllBad.jpg" alt="All Stores" /></dt>
                    <dd>Figure: Bad Example - '-All Stores-' isn't needed</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/SelectAllGood.jpg" alt="All" /></dt>
                    <dd>Figure: Good Example - Keep it as a simple '-All-'</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/SelectAllVGood.gif" alt="All" /></dt>
                    <dd>Figure: Good Example - Keeping it simple makes it easy to spot (that there is no filter) when you have multiple fields.</dd>
                </dl>
                <p>Read our rule on <a href="RulesToBetterBusinessIntelligence.aspx#AllDimensionsTag">Always make sure the dimensions All Captions = All</a>.</p>
            </li>
            
            <li>
                <h2><a name="ResultsInComboBoxes"></a>Controls - Do you include the number of results in ComboBoxes?<img src="Images/RedStar.gif" alt="Star" width="18" height="14" /></h2>
                <p>When designing your form, you should try to help your user whenever it's possible. So it's a good idea to include the number of results in ComboBoxes.</p>
                <dl class="badImage">
                    <dt><img  src="Images/ComboWF-1.jpg" alt="Options Form - ComboBox without Result Count" /></dt>
                    <dd>Figure: Bad Example - You can't tell the number of results and there is a scroll bar</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/ComboWF-2.jpg" alt="Options Form - ComboBox with Result Count" /></dt>
                    <dd>Figure: Good Example - The number of results is clearly displayed. Long text boxes &gt; 30 entries, another approach can be employed - putting the common ones at the top</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/Rule38LongTextCombobox.jpg" alt="Long Text ComboBox" /></dt>
                    <dd>Figure: Bad Example - Firstly because it is manual, plus what about the 4th, 5th, etc most common used countries</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/rule38SortableCombobox.jpg" alt="Sortable ComboBox" /></dt>
                    <dd>Figure: Bad Example &#8211; This was a highly unpopular method of the sorting and counting above</dd>
                </dl>
                <p>We believe all combos should be able to be sorted ascending/descending and by popularity asc/desc.</p>
            </li>
            
            <li>
                <h2><a name="SelectAll"></a>Controls - Do you include a &quot;select all&quot; checkBox on the top?</h2>
                <p>Do you have checkbox (on the top) that let users select or unselect all checkboxes underneath it? If you have a list of checkboxes, you are going to frustrate users unless you provide an easy way to select all. The best way to achieve this is to have a checkbox at the top.</p>
                <dl class="goodImage">
                    <dt><img src="Images/HotmailSelectAll.gif" alt="Hotmail" /></dt>
                    <dd>Figure: Good Example - Hotmail does this</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/GmailSelectAll.gif" alt="Gmail" /></dt>
                    <dd>Figure: Google have done it a different way to provide multiple methods (All, All Read, All Unread, All Starred, and All Unstarred)</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/SQLAuditorSelectAll_Bad.jpg" alt="SQL Auditor" /></dt>
                    <dd>Figure: Bad Example - SQL Auditor - No CheckBox for users to perform a &quot;select all&quot;</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/SQLAuditorSelectAll_good.jpg" alt="SQL Auditor"/></dt>
                    <dd>Figure: Good Example - SQL Auditor - CheckBox at the top of the column</dd>
                </dl>
                <dl class="image">
                    <dt><a name="SelectAll_MoreDetails"></a>
                        <img src="Images/SQLAuditorSelectAll_All.jpg" alt="SQL Auditor"/></dt>
                    <dd>Figure: Selecting all does this - selects all</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/SQLAuditorSelectAll_None.jpg" alt="SQL Auditor"/></dt>
                    <dd>Figure: Deselecting all does this - selects none</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/SQLAuditorSelectAll_Customize.jpg" alt="SQL Auditor"/></dt>
                        <dd>Figure: Selecting some should show the Indeterminate check state - aka customized selection</dd>
                </dl>
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
                    <dt><img src="Images/SelectAllCheckBox_Web.jpg" alt="Select all checkboxes in a web form" /></dt>
                    <dd>Figure: Select all checkboxes in a web form</dd>
                </dl>
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
    &lt;/script&gt;
                        </pre>
                    </dt>
                    <dd>Code: Code for selecting all checkboxes in a web form</dd>
                </dl> 
                <p>We have suggestions for Visual Studio .NET about this at <a href="../BetterSoftwareSuggestions/MSForm.aspx#SelectAllCheckWindows">
                    A top CheckBox to &quot;select all&quot; in windows forms</a> and <a href="../BetterSoftwareSuggestions/MSAjax.aspx#SelectAllCheckWeb">
                    A top CheckBox to &quot;select all&quot; in web forms.</a></p>
            </li>
            
            <li>
                <h2><a name="CheckedListBoxVSDatagrid"></a>Control Choice - Do you use GridView (over the CheckedListBox)?</h2>
                <p>In Web we have:</p>
                <ul>
                    <li>Grids E.g. <a href="http://demos.kendoui.com/web/grid/selection.html"target="blank">http://demos.kendoui.com/web/grid/selection.html</a></li>
                </ul>
                <p>In Windows Forms we have a CheckedListBox. With a CheckedListBox you cannot:</p>
                <ul>
                    <li>Sort data - always useful when there are more than about 20 rows</li>
                    <li>Contain much information - can only show one field</li>
		            <li>DataBind - always costs heaps of code</li>
                </ul>
                <dl class="badImage">
                    <dt><img src="Images/UsingCheckedListBox.gif" alt="CheckedListBox" /></dt>
                    <dd>Figure: Bad Example - The CheckedListBox is limited</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/UsingDataGrid.gif" alt="DataGrid" width="571" height="476" /></dt>
                    <dd>Figure: Good Example - The DataGrid can show much more information (and if you use a 3rd Party eg. Telerik, then it can be pretty too)</dd>
                </dl>
                <p>In Windows Forms, the code of DataGrid databinding is easier than that of CheckedListBox.</p>
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
                    <dd>Figure: 8 lines of code to fill a CheckedListBox</dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        <pre>
    ProductsService.Instance.GetAll(Me.ProductsDataSet1)
			            </pre>
                    </dt>
                    <dd>Figure: One line of code to fill a DataGrid</dd>
                </dl>
                <p>But the CheckedListBox is useful if only one field needs displaying.</p>
            </li>
            
            <li>
                <h2><a name="UseGridView"></a>Control Choice - Do you use a GridView (over the ListBox)?</h2>
                <p>A GridView provides much richer features than ListBox, you can easily add a checkbox onto the header to allow &quot;check all&quot; functionality, which is impossible for ListBox.</p>
                <dl class="badImage">
                    <dt><img src="Images/BadUseListBox.jpg" alt="ListBox"/></dt>
                    <dd>Figure: Bad Example - Use the ListBox.</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/GoodUseGridView.jpg" alt="GridView" /></dt>
                    <dd>Figure: Good Example - Use GridView and add the enabled checkbox on the header</dd>
                </dl>
            </li>
            
            <li>
                <h2><a name="DatagridVSListview"></a>Control Choice - Do you use ListView over GridView (was DataGrid) for ReadOnly? (Windows Forms only)</h2>
                <p>Yes a ListView looks nicer than a DataGrid, but a Datagrid is better because it has more functionality (out of the box that is). With a ListView you cannot:</p>
                <ul>
                    <li>Copy and paste - although you can select a row of data in both controls, you can't copy and paste a whole row from the ListView</li>
                    <li>Sort data - always useful when there are more than about 20 rows</li>
                    <li>DataBind - always saves heaps of code</li>
                </ul>
                <p>So our old rule was to always use the ugly DataGrid (although we were never happy about that).</p>
                <dl class="badImage">
                    <dt><img src="Images/UsingDataGridWhenNotNeeded.gif" alt="DataGrid" width="504" height="496" /></dt>
                    <dd>Figure: Bad Example - The DataGrid is ugly</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/SortableListView.gif" alt="Sortable ListView" width="504" height="496" /></dt>
                    <dd>Figure: Good Example - A beautiful ListView - a nicer look over the datagrid</dd>
                </dl>
                <p>So the listview looks nicer? If you are not convinced here is another one:</p>
                <dl class="goodImage">
                    <dt><img src="Images/DatagridVSListview.gif" alt="Datagrid and Listview" /></dt>
                    <dd>Figure: Good Example - The appearance of DataGrid and ListView</dd>
                </dl>
                <p>But another issue is how much code to write... For ListView you will need to write a bit of code to fill the list view...</p>
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
    this.listView1.EndUpdate();
                        </pre>
                    </dt>
                    <dd>Figure: 8 lines of code to fill a ListView</dd>
                </dl>
                <p>But the datagrid is nicer to code... this is because it comes with data binding ability.</p>
                <dl class="badCode">
                    <dt>
                        <pre>
    // bind it in the designer first. 
    this.oleDbDataAdapter1.Fill(this.dataSet11);
                        </pre>
                    </dt>
                    <dd>Figure: One line of code to fill a DataGrid</dd>
                </dl>
                <p>But the SSW ListView (included in the <a href="/ssw/NETToolkit/">.NET Toolkit</a>) is nicer to code with as it comes with data binding ability.</p>
                <dl class="goodCode">
                    <dt>
                        <pre>
    // bind it in the designer first. 
    this.oleDbDataAdapter1.Fill(this.dataSet11);
                        </pre>
                    </dt>
                    <dd>Figure: One line of code to fill the SSW ListView</dd>
                </dl>
                <p>So what is this SSW ListView?</p>
                <p>It is an inherited control that how we implemented the ListView to give us what MS left out.</p>
                <ul>
                    <li>DataBinding</li>
                    <li>Sorting</li>
                </ul>
                <p>So now the rules are:
                    <br />
                    Always use the SSW ListView.
                    <br />
                    Exception: Use the DataGrid when:
                </p>
                <ul>
                    <li>When not read only - i.e.. users will be editing data directly from the cells.</li>
                    <li>You need more than 1 column with checkboxes, or the column with checkboxes can't be the first column. E.g.:
                        <dl class="image">
                            <dt><img src="Images/DataGrid2CheckBoxes.gif" alt="DataGrid" /></dt>
                            <dd>Figure: One place when you choose a DataGrid over a ListView is when you have 2 checkbox fields</dd></dl>
                    </li>
                </ul>
                <p>So in summary, if you don't want users to edit the data directly from the cell, and only the first column need checkboxes, then the ListView is always the better choice.</p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary=".NET Toolkit" id="table4">
                    <tr>
                        <td>We have an example of this in the <a href="/ssw/NETToolkit/">SSW .NET Toolkit</a>.</td>
                    </tr>
                </table>
                <br />
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table5">
                    <tr>
                        <td>We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</td>
                    </tr>
                </table>
                <br />
                <p>Note: We have a suggestion for Microsoft to improve the <a href="/ssw/Standards/BetterSoftwareSuggestions/MSForm.aspx#DataGridsFormattingonCopy">copy and paste format from a gridview</a></p>
            </li>

            <li>
                <h2><a name="UseCheckBox"></a>Control Choice - Do you know when to use CheckBoxes?</h2>
                <p>If the option only contains 2 choices, and the answer is a Boolean type value where the opposite value is clear (e.g. Enabled/Disabled, True/False, Yes/No, On/Off), it should always be a checkbox.</p>
                <dl class="badImage">
                    <dt><img src="Images/NotUsingCheckBox.gif" alt="Boolean options not using CheckBox." /></dt>
                    <dd>Figure: Bad Example - Boolean options not using CheckBox</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/UsingCheckBox.gif" alt="A CheckBox is used for Boolean type value." /></dt>
                    <dd>Figure: Good Example - A CheckBox is used for Boolean type value</dd>
                </dl>
                <p>Only 1 CheckBox is used as the opposite value is clear, such controls are often CheckBoxes in a ListView too. E.g.:</p>
                <dl class="goodImage">
                    <dt><img src="Images/CheckBoxesInListView.gif" alt="CheckBoxes in a ListView." /></dt>
                    <dd>Figure: Good Example - CheckBoxes in a ListView</dd>
                </dl>
                <p>CheckBoxes are also suitable to use for enable or disable sections and to tell the user that these sections do not need configuring for the application to run.</p>
                <dl class="goodImage">
                    <dt><img src="Images/CheckBoxSection.gif" alt="CheckBoxes are used to enable/disable sections." /></dt>
                    <dd>Figure: Good Example - CheckBoxes are used (although no opposite values), because they are clear when the CheckBoxes aren't ticked, the sections are disabled</dd></dl>
                <dl class="badImage">
                    <dt><img src="Images/UseCheckBoxBad.gif" alt="Not using checkboxes" /></dt>
                    <dd>Figure: Bad Example - This screen implies that Configuring Credentials is required</dd></dl>
                <dl class="goodImage">
                    <dt><img src="Images/UseCheckBoxGood.gif" alt="Good use of checkboxes" /></dt>
                    <dd>Figure: Good Example - This screen uses a CheckBox to signify that Configure Credentials is optional</dd>
                </dl>
                <p>If there are only two options available on the form (usually a yes/no answer), the use of a checkbox is more intuitive than radio buttons. Only use radio buttons if there are more than two options.</p>
                <dl class="badImage">
                    <dt><img src="Images/radio-for-two-options.jpg" alt="Radio buttons are not appropriate when there are only two options" /></dt>
                    <dd>Figure: Bad Example &#8211; Radio buttons are not appropriate when there are only two options</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/checkbox-for-two-options.jpg" alt="These yes/no questions have a better representation with checkboxes" /></dt>
                    <dd>Figure: Good Example &#8211; These yes/no questions have a better representation with checkboxes</dd>
                </dl>
            </li>
            
            <li>
                <h2><a name="ListBoxesAreEvil"></a>Control Choice - Do you use ComboBoxes instead of single-select List Boxes?</h2>
                <p>ComboBoxes are better than List Boxes <strong>for data entry</strong> because:</p>
                <ul>
                    <li>They occupy less screen space</li>
                    <li>They are less trouble to scroll through, owing to the fact that you can afford to have more room for the list (as it's collapsed most of the time)</li>
                    <li>As you can see in the figures below, using a combo also makes the required field indicator (<span style="color: red">*</span>) easier to see.</li>
                </ul>
                <dl class="badImage">
                    <dt><img src="Images/ListBoxesAreEvil_SingleSelectBad.gif" alt="Web Page with ListBoxes" /></dt>
                    <dd>Figure: Bad Example - Using list boxes</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/ListBoxesAreEvil_SingleSelectGood.gif" alt="Web Page with ComboBox" /></dt>
                    <dd>Figure: Good Example - Using ComboBoxes - takes up less screen space and the required field indication is easy to see</dd>
                </dl>
                
                <p><strong>Note: When are single-select list boxes OK?</strong></p>
                <p>As mentioned before, there are exceptions to this rule. It would be hard to imagine the Include/Exclude boxes in the SQL Server Enterprise Manager's Server Registration Wizard being handled with ComboBoxes, for example.</p>
                <dl class="image">
                    <dt><img src="Images/ListBoxesAreEvil_ExceptForThisOne.gif" alt="Register SQL Server Wizard" /></dt>
                    <dd>Figure: Include/Exclude Listboxes are an example of a valid use for List Boxes</dd>
                </dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table6">
                    <tr>
                        <td>We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</td>
                    </tr>
                </table>
            </li>
            <li>
                <h2><a name="ListBoxesAreEvil2"></a>Control Choice - Do you use Checked List Boxes instead of multi-select List Boxes?</h2>
                <p>Multi-select listboxes are the bane of a graphical user interface, they have a number of behavioral quirks that make it difficult for users to get used to them:</p>
                <ul>
                    <li>They require users to know that you select more than one entry by holding down the Ctrl key</li>
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
                    <dd>Figure: Bad Example - List Boxes are impractical - try it and see</dd>
                </dl>
                <p><strong>Checked Listboxes</strong> are the ideal alternative. They're much more pleasant to use and are a good deal more intuitive - compare to the list above. Checked Listboxes tell users immediately that they have the ability choose multiple options.</p>
                <ul>
                    <li>In ASP.NET, use <strong>System.Web.UI.WebControls.CheckBoxList</strong>. If you're having problems with there being too many items in the list, use a <strong>scrolling DIV</strong></li>
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
                    <dd>Figure: Good Example - The beauty of the CheckListBox in ASP.NET</dd>
                </dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table7">
                    <tr>
                        <td>We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</td>
                    </tr>
                </table>
            </li>

            <li>
                <h2><a name="ConsistentButtonStyle"></a>Control Choice - Do you have a consistent look on your buttons? (Windows Forms Only)</h2>
                <p>Question: What is wrong with this Picture?</p>
                <dl class="image">
                    <dt><img src="Images/InconsistentButtonStyles.jpg" alt="Inconsistent Button FlatStyles" /></dt>
                    <dd>Figure: What is wrong?</dd>
                </dl>
                <p><strong>Answer:</strong> There are three different types of buttons in the Application:</p>
                <ul>
                    <li><em>Next &gt;</em> - Default Window Style</li>
                    <li><em>Preview</em> - .NET Flat Style</li>
                    <li><em>Cancel</em> - Window XP Style</li>
                </ul>
                <dl class="image">
                    <dt><img src="Images/BadDivider.gif" alt="bad divider" /></dt>
                    <dd>Figure: Even labels need to use FlatStyle.System. Can you spot the wrong label?</dd>
                </dl>
                <p>See our <a href="RulesToBetterWindowsForms.aspx#XPThemes">Rules to Better Windows Forms</a> to implement XP Themes in .NET.</p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table8">
                    <tr>
                        <td>We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#ConsistentButtonStyle">SSW Code Auditor</a> to check for this rule.</td>
                    </tr>
                </table>
            </li>

            <li>
                <h2><a name="AvoidGroupBox"></a>Control Choice - Do you avoid using &quot;Group Box&quot; and use a line to organize your form?</h2>
                <p>Group box should only be used when you want to notify the user the controls within it are really related, such as radio buttons.</p>
                <dl class="badImage">
                    <dt><img src="Images/RulesT8.jpg" alt="SSW Exchange Reporter Setup" /></dt>
                    <dd>Figure: Bad Example - Inappropriate use of 'Group Box', there is nothing to be grouped</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/RulesT4.jpg" alt="SSW Exchange Reporter Setup - Line for Grouping" /></dt>
                    <dd>Figure: Good Example - Use a line to organize different sections</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/RulesT6.gif" alt="VS.NET 2003 Options Form" /></dt>
                    <dd>Figure: Good Example - VS.NET 2003 Options form, appropriate use of 'Group Box', the radio buttons are related to each other</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/vsnet-groupbox.jpg" alt="Figure: Good Example - VS.NET 2012 Options form, also appropriate use of 'Group Box'" /></dt>
                    <dd>Figure: Good Example - VS.NET 2012 Options form, also appropriate use of 'Group Box'</dd>
                </dl>
                <p>In other cases, you should avoid using group box and replace it with a simple line, this will save you some space on the form and help you organize your form more easily.</p>
            </li>

            <li>
                <h2><a name="OptionsBold"></a>Control Choice - Do you use bold on the main options to make them clearer?</h2>
                <p>Make the options clearer by using bold.</p>
                <dl class="badImage">
                    <dt><img src="Images/OptionsTextNotInBold.gif" alt="SSW Link Auditor - Command Line" /></dt>
                    <dd>Figure: Bad Example - Main options text not in bold</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/OptionsTextInBold.gif" alt="SSW Link Auditor - Command Line" /></dt>
                    <dd>Figure: Good Example - Main options text in bold</dd>
                </dl>
            </li>

            <li>
                <h2><a name="UseOptionsGroup"></a>Control Choice - Do you know when to use options group (Radio Buttons) instead of ComboBox?</h2>
                <p>When the options are static items (not database driven) and they can fit on the screen (about 2-5 items), they should be radio buttons.</p>
                <p>For a ComboBox, user needs 2 clicks to change the value</p>
                <ol>
                    <li>Click the little &quot;v&quot; button to see the available options.</li>
                    <li>Then click the option to select.</li>
                </ol>
                <p>For an options group, user can see all the available options without clicking, and select the option with just a click.</p>
                <dl class="badImage">
                    <dt><img src="Images/NotUsingRadioButtons.gif" alt="ComboBox is used for " /></dt>
                    <dd>Figure: Bad Example - ComboBox is used for &quot;Job Type&quot; where it contains only 2 options</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/UsingRadioButtons.gif" width="544" height="362" alt="Radio Buttons are used and aligned vertically." /></dt>
                    <dd>Figure: Good Example - Radio Buttons are used and aligned vertically</dd>
                </dl>
            </li>
            
            <li>
                <h2><a name="AvoidIncorrectData"></a>Validation - Do you avoid capturing incorrect data?</h2>
                <p>When asking for an opinion do you give people the option of having no opinion at all? If you only provide &quot;Yes&quot; or &quot;No&quot; as answers to the question &quot;Do you like apples?&quot; then you force people to make a decision which may not be correct.</p>
                <div>
                    <table id="table1">
                        <tr>
                            <td>Do you like apples?</td>
                            <td>
                                <input type="radio" name="qu3" value="V1" checked="checked" />
                            </td>
                            <td>Yes</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <input type="radio" name="qu4" value="V1" />
                            </td>
                            <td>No</td>
                        </tr>
                    </table>
                </div>
                <p>Maybe they only like cooked apples not raw ones. When asking any question in which &quot;Don't know.&quot; or &quot;Don't care.&quot; is a valid response, always include an option to opt out of answering.</p>
                <p>Additionally, when the user don't answer the question at all, the response you would get would be determined by the browser the user was using. Give them an answer they can agree with and you'll reduce the chance of bogus responses.</p>
                <div>
                    <table>
                        <tr>
                            <td>Do you like apples?</td>
                            <td>
                                <input type="radio" name="qu2" value="y" />
                            </td>
                            <td>Yes</td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <input type="radio" name="qu2" value="n" />
                            </td>
                            <td>No</td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <input type="radio" name="qu2" value="?" checked="checked" />
                            </td>
                            <td>Cannot say</td>
                        </tr>
                    </table>
                </div>
                <p>Read ou rule on <a href="RulestoBetterInterfaces-Forms.aspx#DataJunk">Do you avoid "Data Junk" (data not manually entered by yourself)?</a></p>
            </li>

            <li>
                <h2><a name="CorrectValidationFocus"></a>Validation - Do you put focus to the correct control on validation error?</h2>
                <p>Most fields required validation. There are three types of validations:</p>
                <ul>
                    <li>Required Field - the field should be filled in.</li>
                    <li>Formatting - the field must be in a correct format. e.g. currency or date. </li>
                    <li>Logical - the field needs to pass some validation tests in the business layer. </li>
                </ul>
                <p>To show an error, display an error provider icon next to the field on the right. 
                    An example of this is shown in the figure below.<br /></p>
                <ul>
                    <li>Validation must not be done on TextChanged, this may chew the processor if it is a logical validation. It can also give unpleasant results, e.g. when entering -6.00, as soon as the '-' is entered the validation control would turn on.</li>
                    <li>Validation for Required fields must be done in the validating event.</li>
                    <li>Validation for format should be done in parse/format methods.</li>
                    <li>Validation for Logic should be done in Validated, since it must be entered if required, and in correct format.</li>
                </ul>
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
                <p>Do <strong>not</strong> show a message box after every error in validation. You may show a message box as an error summary when an OK or Apply is clicked. Make sure you warn the user that there is an error on the form when they attempt to save.</p>
                <dl class="goodImage">
                    <dt><img src="Images/ValidationBalloon.png" alt="Centrix - Error Provider" /></dt>
                    <dd>Figure: Good Example - Balloon tooltips to indicate validation errors</dd>
                </dl>
            </li>

            <li>
                <h2><a name="FailValidation"></a> Do you use SetFocusOnError on controls that fail validation?</h2>
                <p>For Validation Errors, don&#8217;t rely on an error messagebox, instead automatically focus on the control.</p>
                <dl class="goodImage">
                    <dt><img src="Images/GoodValidation.jpg" alt="" /></dt><dd>Figure: Good Example - Balloons also direct the eye</dd>
                </dl>
            </li>
            <li>
                <h2><a name="ElipsisForDialogs"></a> Do you use an ellipsis (...) to indicate an action requiring more user input?</h2>
                <p>In menus (including context menus) or buttons, there are generally two types of actions:</p>
                <ol>
                    <li>ones that carry out an action without any further user intervention upon clicking;</li>
                    <li>and those that require further user input before the action is carried out</li>
                </ol>
                <p>Microsoft applications use this technique to indicate whether or not the action will be carried out without any further user intervention. Your application should also follow this well-established standard, so users will not be caught off guard when an action carried out immediately after they click the menu item.</p>
                <dl class="goodImage">
                    <dt><img src="Images/Elipsis.gif" alt="Elipsis" /></dt>
                    <dd>Figure: Good Example - Options menu in Outlook, with ellipsis</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/RunDialog.gif" alt="Shows that it needs further input" /></dt>
                    <dd>Figure: Good Example - Ellipsis on buttons that require further input</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/GoodElipsis3.png" alt="Elipsis" /></dt>
                    <dd>Figure: Good Example - Different ways of using the elipsis</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/GoodElipsis4.png" alt="Shows that it needs further input" /></dt>
                    <dd>Figure: Good Example - Elipsis being used on a button requiring user input</dd>
                </dl>
            </li>
            
            <li>
                <h2><a name="DisableButtons"></a>Controls - Do you disable buttons that are unavailable?</h2>
                <p>If a button is unavailable, or clicking it will generate an error message or should have no effect, then the button should be disabled. However, buttons should not be hidden simply because they are unavailable as it confuses the user.</p>
                <dl class="goodImage">
                    <dt><img src="Images/ReadytoScan.gif" alt="SSW Link Auditor - Ready to Scan" /></dt>
                    <dd>Figure: Good Example - The Start button is disabled in SSW Link Auditor after the scan has started</dd>
                </dl>
            </li>
            
            <li>
                <h2><a name="OptionGroupCheckBoxSimple"></a>Controls - Do you make Option Groups and Check Boxes simple to understand?</h2>
                <p>There are two aspects to this rule:</p>
                <ol>
                    <li><strong>Arrange Vertically</strong></li>
                    <li>
                        <p>If your user must choose from a variety of responses, or select from a number of 
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
                                    <td>Do you like apples?</td>
                                    <td><input type="radio" name="qu6" value="V1" checked /></td>
                                    <td>Yes</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><input type="radio" name="qu7" value="V1" />
                                    </td>
                                    <td>No</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><input type="radio" name="qu8" value="V1" /></td>
                                    <td>Cannot say</td>
                                </tr>
                            </table>
                        </div>
                    </li>
                    <li><strong>Text on the Right</strong>
                        <p>The Option Group or Check Box should always be on the left, with the text following on the right. Once again, this makes it easy for the User to work out what is going on.</p>
                        <dl class="goodImage">
                            <dt><img src="Images/Interfaces_ActionThenText.gif" alt="Interfaces Action Then Text" /></dt>
                            <dd>Figure: Good Example - Action on the left, text on the right</dd>
                        </dl>
                    </li>
                </ol>
            </li>

            <li>
                <h2><a name="Field-width"></a>Do you know that the width of a control indicates what to enter?</h2>
                    <p>The widths of the fields indicate to a user the data that goes in it. Do not use a large width field when you know the entry will have only few characters (the same for small fields and large entries)</p>
                    <dl class="badImage">
                        <dt><img src="Images/field-width.jpg" alt="Field width" /></dt>
                        <dd>Figure: Bad Example - The 'Data Retention Days' field should be reduced</dd>
                    </dl>
            
            </li>

            <li>
                <h2><a name="ListViewToolTip"></a>Controls - Do you use a ToolTip to show the full text of hidden ListView data?</h2>
                <p>When you can't see all the text for an item in a ListView you need to expose the full text via a ToolTip.</p>
                <dl class="badImage">
                    <dt><img src="Images/ListViewWithoutToolTip.gif" alt="ListView control without Tooltip." /></dt>
                    <dd>Figure: Bad Example - Users can't see all the text and the ListView doesn't use a Tooltip</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/ListViewWithToolTip.gif" alt="ListView control with Tooltip." /></dt>
                    <dd>Figure: Good Example - Users can't see all the text, but the ListView shows all the text via a Tooltip</dd>
                </dl>
                <p>The code to do this is:</p>
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
                <h2><a name="Font"></a>Controls - Do you use the fonts recommended by Microsoft in your application? (Windows Forms Only)</h2>
                <p>Some font are easier to read then others, at SSW we follow Microsoft's <a href="/ssw/Redirect/Microsoft/MSDNInterfaceText.htm"> Visual Design Guidelines</a>. This means we use Tahoma 8pt as our font of choice.</p>
                <p>At SSW, we use Code Auditor to ensure all fonts on our forms are set to Tahoma but we allow controls to use a different font. This is because certain information is better displayed in a different font. For example a Textbox to show code should use Courier instead of Tahoma.</p>
                <dl class="badImage">
                    <dt><img src="Images/FontBadArialNarrow.gif" alt="Form with Arial Narrow Font" /></dt>
                    <dd>Figure: Bad Example - This form uses a non-standard font, and it is hard to read</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/FontGoodTahoma.gif" alt="Form with Tahoma Font" /></dt>
                    <dd>Figure: Good Example - This form uses Tahoma, and it is easy to read</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/FontCourierNew.gif" alt="Form with Tahoma Font, and a RichTextBox with Courier New Font" /></dt>
                    <dd>Figure: Good Example - This form uses Tahoma, and the RichTextBox displays source code using Courier New</dd>
                </dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table18">
                    <tr>
                        <td>We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#VBFont">SSW Code Auditor</a> to check for this rule.</td>
                    </tr>
                </table>
            </li>
            
            <li>
                <h2><a name="FullRowSelect"></a>Controls - Do you set row select mode as &quot;FullRowSelect&quot; for DataGridView if it is read only? (Windows Forms Only)</h2>
                <p>If you use the DataGridView control which is read only, you had better set row select mode as &quot;FullRowSelect&quot;. If the data cannot be modified we can let users select the whole row instead of one column.</p>
                <dl class="badImage">
                    <dt><img src="Images/NoneFullRowSelect.gif" alt="without FullRowSelect" /></dt>
                    <dd>Figure: Bad Example - Row select mode is not &quot;FullRowSelect&quot;.</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/FullRowSelect.gif" alt="with FullRowSelect" /></dt>
                    <dd>Figure: Good Example - Row select mode is &quot;FullRowSelect&quot;.</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/setselectmodefull.gif" alt="Set select mode as FullRowSelect" /></dt>
                    <dd>Figure: Changed row select mode to FullRowSelect.</dd>
                </dl>
                <p>What's the next step? It's even better if you enable multiple row selection and copying, see 
                <a href="/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx#ListView">Do your List Views support multiple selection and copying</a> on 
                <a href="/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx">Rules to Better Windows Forms Applications</a>.</p>
            </li>

            <li>
                <h2><a name="SelectedRows"></a>Controls - Do you make the selected/enabled rows stand out in a datagrid?</h2>
                <p>Many times you allow a multiple selection in a grid by using a checkbox. When you do this make it easy to see the distinction of a row that is selected and one that is not. Make it subtle by dimming the unselected text.</p>
                <dl class="badImage">
                    <dt><img src="Images/Interface_Selected_Rows_Bad.JPG" alt="Seleted rows not standard out" /></dt>
                    <dd>Figure: Bad Example - Selected rows are not separate from others.</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/Interface_Selected_Rows_Good.JPG" alt="Seleted rows standard out" /></dt>
                    <dd>Figure: Good Example - Selected rows are separate from others.</dd>
                </dl>
                <p>To make this effect in datagrid, you may need to edit the <strong>cellcontentclick</strong> event handler code. <br />
                    Example:</p>
                <dl class="goodCode">
                    <dt><pre>
        private void DatagridviewRules_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (DatagridviewRules.Columns[e.ColumnIndex] is DataGridViewCheckBoxColumn &amp;&amp; e.ColumnIndex == 0 &amp;&amp;
e.RowIndex != -1)
            {
                bool boolCheckBox = (bool)(DatagridviewRules.Rows[e.RowIndex].Cells[e.ColumnIndex].Value);
                <strong>DatagridviewRules.Rows[e.RowIndex].DefaultCellStyle.ForeColor = boolCheckBox
                                                                                    ? SystemColors.WindowText
                                                                                    : SystemColors.ControlDark;</strong>

                DataRowView objDataRowView = (DataRowView)DatagridviewRules.Rows[e.RowIndex].DataBoundItem;
                JobRule.DataTableJobRulesRow objDataRow = (JobRule.DataTableJobRulesRow)(objDataRowView.Row);
                updateRuleIsEnabled(objDataRow.RuleId, boolCheckBox);

                updateSelectAllCheckBox();
                updateRulesCount();
            }
        }
                        </pre></dt>
                    <dd>Setting the ForeColor to different ones, like black and gray, can separate the selected rows from others.</dd>
                </dl>
            </li>
 
            <li>
                <h2><a name="ExtendComboBoxes"></a>Controls - Do you extend the size of your ComboBoxes to show as many results as possible? (Windows Forms Only) <img src="Images/RedStar.gif" alt="RedStar" width="18" height="14" /></h2>
                <p>When designing your form, it's a good idea to help your user whenever it's possible. So it's a good idea to extend your ComboBoxes to show as many results as possible to save your user from scrolling. Also, you should extend the width of the dropdown in order to show the longest items.</p>
                <p>However, you should not extend your ComboBox without limit, normally the maximum number of items should be under 10 and the maximum width of the drop-down should be smaller than your hosting form.</p>
                <dl class="badImage">
                    <dt><img src="Images/ComboBox-Size-1.jpg" alt="Options Form - ComboBox with text cut off" /></dt>
                    <dd>Figure: Bad Example - You have to scroll to see all the result, and the long results are cut off</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/ComboBox-Size-2.jpg" alt="Options Form - ComboBox with Extended Height and Width" /></dt>
                    <dd>Figure: Good Example - The size of the drop down has been extended to allow user to see as much as possible</dd>
                </dl>
                <p>Changing the maximum items is easy, just include the following code in your form:</p>
                <dl class="code">
                    <dt><pre>cbxOUList.MaxDropDownItems = cbxOUList.Items.Count;</pre></dt>
                </dl>
                <p>Changing the drop down size is a bit of tricky</p>
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
                <h2><a name="txtBox4Data"></a>Controls - Do you use Text Boxes for displaying data?</h2>
                <p>Use Label controls to display static text of the application. Eg. "Customer ID:"<br />
                   Use Text Box controls to display data (results of calculations,information, records from a database, etc.).</p>
                 <p>The reasons are:</p>
                 <ul>
                   <li>users know it is data, not a label of the application</li>
                   <li>users can copy and paste from the field</li>                   
                 </ul>
                 <p>PS: One reason web UI's are nice, is that the information is always selectable/copyable.</p>
                 <dl class="badImage">
                    <dt><img src="Images/BetterInterface_LabelCutOff.jpg" alt="Long string cut off when you are using label" /></dt>
                    <dd>Figure: Bad Example - Not only is the data cut off when you are using label, but you can't copy and paste the value</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="/ssw/Standards/Rules/Images/GoodTextbox.gif" alt="Using Textbox is better practice" /></dt>
                    <dd>Figure: Good Example - Using Textbox controls makes the data obvious to users</dd>
                </dl>
                <p>As you can see you'll barely know the difference, so start using Textboxes for displaying data, that's good practice.</p>
                <h4>More Information</h4>
                <p>When using TextBox controls in Windows Forms, set them up like this:</p>
                <dl class="image">
                    <dt><img src="/ssw/Standards/Rules/Images/BorderStyle_1.gif" alt="Using Textbox is better practice" /></dt>
                    <dd>Figure: Having the 'BorderStyle' Property set to Fixed3D is the best choice visually</dd>
                </dl>
                <dl class="image">
                    <dt><img src="/ssw/Standards/Rules/Images/ReadOnly_1.gif" alt="Using Textbox is better practice" /></dt>
                    <dd>Figure: Make the text box Read-Only (users copying data is OK, changing is silly)</dd>
                </dl>
            </li>

            <li>
                <h2><a name="DatabaseSettingsUdl"></a>Connection Stream - Do you use a UDL when getting database settings?</h2>
                <p>Why do people always invent ways of getting the same old server name and a database name? Look at this image from <a href="/ssw/Standards/DeveloperGeneral/SQLservertools.aspx#SpeedFerret">Speed Ferret</a> - one of my favorite SQL Server utilities.</p>
                <dl class="badImage">
                    <dt><img src="Images/CustomDatabaseConnectionScreen.jpg" alt="Custom database connection screen " /></dt>
                    <dd>Figure: Bad Example - Custom database connection screen in Speed Ferret</dd>
                </dl> 
                <p>While a nice form, it would have taken quite some developer time to get it right. Not only that it is a little bit different than what a user has seen before. Now look at this UDL from one of our utilities <a href="/ssw/SQLAuditor">SSW SQL Auditor</a>:</p>
                <dl class="goodImage">
                    <dt><img src="Images/StandardMSUDLDialog.jpg" alt="Standard Microsoft UDL dialog" /></dt>
                    <dd>Figure: Good Example - Standard Microsoft UDL dialog</dd>
                </dl> 
                <p>Every developer has seen this before - so use it. Better still, it is only a few lines of code: <a href="/ssw/KB/Codebase/05VB-Net/B-Open UDL Dialog-DH.txt">B-Open UDL Dialog-DH.txt</a> </p>
                <dl class="image">
                    <dt><img src="Images/ReleaseAPI.jpg" alt=" Visual Studio .NET 2005 Microsoft are yet to release an API" /></dt>
                    <dd>Figure: Coming in Visual Studio .NET 2005 Microsoft are yet to release an API to do this</dd>
                </dl> 
                <p><a href="/ssw/Standards/BetterSoftwareSuggestions/MSForm.aspx#InvokingOLEBDataLinkPropertiesDialog">Need extra information?</a></p>
                <h4>Exception</h4>
                <p>The above cannot be used when you want the user to create a new database. Microsoft does not supply an out of the box UI and there is no third party solution. Only in this case you have to create your own form.</p>
                <dl class="image">
                    <dt><img src="Images/SQLDeploy.jpg" alt="SQL Deploy uses its own custom form " /></dt>
                    <dd>Figure: SQL Deploy uses its own custom form for "selecting" a database name</dd>
                </dl> 
            </li>
            
            <li>
                <h2><a name="Tooltip"></a>Being Pedantic - Do you use balloon tooltip?</h2>
                <p>The standard tooltip is a rectangle, so the tool tip for the control can be misleading. While, the balloon tooltip has an arrow pointing to the destination control, which is clearer for users.</p>
                <dl class="badImage">
                    <dt><img src="Images/BadTooltip.gif" alt="Standard tooltip" /></dt>
                    <dd>Figure: Standard tooltip.</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/GoodTooltip.gif" alt="Balloon tooltip" /></dt>
                    <dd>Figure: Balloon tooltip.</dd>
                </dl>
                <p>To implement you can:</p>
                <ol>
                    <li>Set the standard Tooltip's property IsBalloon true or</li>
                    <li>Use EdwardForgacs' balloon tooltip control.</li>
                </ol>
            </li>
            
            <li>
            <h2><a name="ConsistentLabel"></a>Being Pedantic - Do you end labels text with &quot;:&quot;?</h2>
                <p>Labels provide an easy way to show text in a form. It is better to consistently label a field ending the text with a &quot;:&quot;.</p>
                <dl class="badImage">
                    <dt><img src="Images/LabelBad.gif" alt="Bad Label" /></dt>
                    <dd>Figure: Bad Example - Labels without &quot;:&quot;</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/LabelGood.gif" alt="Good Label" /></dt>
                    <dd>Figure: Good Example - Labels with &quot;:&quot;</dd>
                </dl>
            </li>
            
            <li>
                <h2><a name="UseMnemonic"></a>Being Pedantic - Do your buttons have a mnemonic?</h2>
                <p>A mnemonic for a button is the letter which has an underscore, and the user can press the button using Alt-&lt;char&gt;.</p>
                <dl class="badImage">
                    <dt><img src="Images/BadMem.gif" alt="Browse Button" /></dt>
                    <dd>Figure: Bad Example - All buttons without Mnemonic</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/GoodMem.gif" alt="Browse Button" /></dt>
                    <dd>Figure: Good Example - All buttons with Mnemonic - user can easily choose which button they want without a click</dd></dl>
                <p>In Windows Applications, it is quite easy to assign a mnemonic to a button with the &quot;&amp;&quot; character.</p>
                <p>So for the case above, the text would be:</p>
                <dl class="code">
                    <dt>
                        <pre>btnAbout.Text = &quot;&amp;About&quot;</pre>
                    </dt>
                </dl>
                <p>Tip: In Windows XP the mnemonic display effects can be hidden by Default and then shown every time the user presses the Alt key.</p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table3">
                    <tr>
                        <td>We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#UseMnemonic">SSW Code Auditor</a> to check for this rule.<br />
                            Note: We have an exception for (OK, Cancel, Close, and Apply) buttons because they should be associated with <a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Forms.aspx#LabelButtons">Accept and Cancel buttons</a>.
                        </td>
                    </tr>
                </table>
            </li>
            
        </ol>

        <h2>Related Rules</h2>
            <p>Read the specific rules below:</p>
            <ul>
                <li><a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx">Rules to Better Interfaces - General</a></li>
                <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Windows-Applications.aspx">Rules to Better Interfaces - Windows Application</a></li>
                <li><a href="/ssw/Standards/Rules/RulesToBetterInterfaces-Popups-and-Messages.aspx">Rules to Better Interfaces - Popups and Messages</a></li>
				<li>Rules to Better Interfaces - Controls</li>	
                <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Forms.aspx">Rules to Better Interfaces - Forms</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Wizard.aspx">Rules to Better Interfaces - Wizards</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Reports.aspx">Rules to Better Interfaces - Reports, Charts and Dates</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Mobile.aspx">Rules to Better Interfaces - Mobile UI</a></li>
            </ul>

        <h2>
            Links</h2>
        <ul>
            <li><a href="/ssw/Redirect/AskTog.htm" target="_blank">http://www.asktog.com/basics/firstPrinciples.html</a></li>
            <li><a href="/ssw/Redirect/Microsoft/MSDNMessageBoxes.htm" target="_blank">http://msdn.microsoft.com/library/Default.asp?url=/library/en-us/dnwue/html/ch09f.asp</a></li>
        </ul>
        <h2>Acknowledgements</h2>
        <p><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></p>
    </div>
</asp:Content>
