<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Visual Studio .NET (Windows Forms) Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#DataGridsFormattingonCopy">Neat format when copying Tables and Views (developers)
                and .NET Data Grids (end users)</a></li>
            <li><a href="#RightClickFilterBy">Right-Click/Filter-By Control for Tables and Views
                (developers) and .NET Data Grids (end users)</a></li>
            <li><a href="#MakeNETTreeViewTri-State">Make .NET TreeView Tri-State</a></li>
            <li><a href="#InvokingOLEBDataLinkPropertiesDialog">Invoking an OLE DB Data Link Properties
                Dialog Box</a></li>
            <li><a href="#MakeSeparateEventHandlersToolBarButtons">Make Separate Event Handlers
                for ToolBar Buttons</a></li>
            <li><a href="#DirtyProviderControl">Dirty Provider control</a></li>
            <li><a href="#MakeExtenderProviderPropertiesMoreVisible">Make Extender Provider Properties
                More Visible</a></li>
            <li><a href="#Subforms">Sub forms</a></li>
            <li><a href="#HideProperties">Hiding properties in inherited forms</a></li>
            <li><a href="#BreadCrumbControl">Would like a Bread crumb control for windows forms</a></li>
            <li><a href="#ListViewDoubleClick">ListView shouldn't change the checkbox's checkstate
                on double click</a></li>
            <li><a href="#ListViewStringTrimming">Need the ability to trim characters from a string
                that does not completely fit into a ListView column</a></li>
            <li><a href="#SortableComboBox">Make ComboBox control sortable</a></li>
            <li><a href="#CTRLAForTextBox">Ctrl+A to select all text for TextBox</a></li>
            <li><a href="#SelectAllCheckWindows">A top CheckBox to "select all" in windows forms</a></li>
            <li><a href="#TabHeaderErrorProvider">Adding an error provider on a tab header</a></li>
            <li><strike><a href="#TransparentImages">Transparent images don't get rendered correctly</a></strike></li>
            <li><a href="#PastingScreenshot">Add support for pasting in screenshots</a></li>
            <li><a href="#ImproveCheckedListBox">Have a CheckedListBox support Control+A and Control+C</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="DataGridsFormattingonCopy"></a>Neat format when copying Tables and Views
                    (developers) and .NET Data Grids (end users)</h2>
                <p>
                    When a row is copied to the clipboard from a table/view in Microsoft Access and
                    pasted into a word-processing document (e.g. WordPad, Word), the data is automatically
                    formatted as a table.
                    <br />
                    This doesn't work with .NET DataGrids; instead, when pasted into a document, the
                    row comes out as a string of characters and tabs that make up the row, not as a
                    formatted table.
                </p>
                    <dl class="image">
                      <dt>
                      <img src="Images/vs3.gif" alt="Contacts" width="588" height="66"></dt>
                      <dd>Figure: The pasted row turns out alright when copied from Access.</dd></dl>
                    <br />
                    
                    <dl class="image">
                     <dt>
                     <img src="Images/vs4.gif" alt="Contacts" width="576" height="20"></dt>
                    <dd>Figure: This is the same row copied from a Visual Studio DataGrid/DataGridView -
                        the formatting should be as good as Access was in 1992!</dd></dl>
                <p>
                    In addition, add the ability to copy from a list box. Once you have this, then I
                    won't have this <a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Controls.aspx#DatagridVSListview">
                        silly recommendation</a>.
                </p>
            </li>
            <li>
                <h2>
                    <a name="RightClickFilterBy"></a>Right-Click/Filter-By Control for Tables and Views
                    (developers) and .NET Data Grids (end users)</h2>
                <p>
                    This is exactly the same functionality I requested for <a href="Outlook.aspx#OutlookFilter">
                        Outlook</a>, but giving developers access to this Control would be very handy.</p>
            </li>
            <li>
                <h2>
                    <a name="MakeNETTreeViewTri-State"></a>Make .NET TreeView Tri-State</h2>
                <p>
                    The .NET TreeView control allows for the display of checkboxes beside each item.
                    If these checkboxes were tri-state; i.e. could be either checked, unchecked or gray,
                    it would make it easier for certain types of information to be represented.</p>
                <p>
                    For example, if the sub-items of a particular tree node were partially selected
                    and the node was collapsed, the checkbox for that node would fittingly be neither
                    checked nor unchecked but gray.</p>
                <p>
                    <img src="Images/vs5.gif" alt="treeview" width="352" height="216"><br />
                    <b>Figure: Here's an example of where a tri-state-checkbox TreeView could be implemented.</b></p>
            </li>
            <li>
                <h2>
                    <a name="InvokingOLEBDataLinkPropertiesDialog"></a>Invoking an OLE DB Data Link
                    Properties Dialog Box</h2>
                <p>
                    The OLE DB Data Link Properties Dialog Box (see screenshot) is a commonly used dialog
                    that allows a user to configure a connection to an OLE DB data source.
                </p>
                <p>
                    There are well documented methods of invoking this dialog box from a Visual Basic
                    6.0 application. (See Microsoft's <a href="/ssw/Redirect/Microsoft/MSHOWTOKB286189.htm">
                        HOWTO: Invoke the OLE DB Data Link Properties Dialog Box in Visual Basic Code</a>
                    page.) For .NET programmers, however, there will be a native .NET class for handling
                    this.
                </p>
                <p>
                    <img src="Images/vs6.gif" alt="Data link properties" width="367" height="467"><br />
                    <b>Figure: OLE DB Data Link Properties Dialog Box</b>
                </p>
                <p>
                    <img src="Images/VS2005DataLink.gif" width="382" height="573"><br />
                    <b>Figure: Visual Studio 2005 comes with a new Database Connection dialog, but it is
                        not publicly accessible from an API</b>
                </p>
                <p>
                    It would be a good thing for developers to use the <a href="/ssw/Standards/BetterSoftwareSuggestions/MSForm.aspx#InvokingOLEBDataLinkPropertiesDialog">
                        standard UDL control</a> to get database settings in their applications.</p>
                <p>
                    This functionality could be provided as part of the System.Windows.Forms as a standard
                    UI form (for example &quot;File Open&quot; functionality). You will be able to filter
                    out datasources based on their type (e.g. hide all OLE types) just as you might
                    filter out file extensions.<br />
                    <br />
                    PS: And please Scott Guthrie (from the ASP.NET team), give us the same thing in
                    a web control.
                </p>
            </li>
            <li>
                <h2>
                    <a name="MakeSeparateEventHandlersToolBarButtons"></a>Make Separate Event Handlers
                    for ToolBarButtons (this is total inconsistency)</h2>
                <p>
                    Visual Basic .NET has made the implementation of menus on forms quite simple and
                    straightforward. Each MenuBar has its own MenuItems, and each of these MenuItems
                    can be assigned a separate event handler, as in the following example.
                </p>
                <pre>
Private Sub MenuItem6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
    Handles MenuItem6.Click
<br />
    &nbsp;&nbsp;&nbsp; ClientNew()
<br />
    End Sub
<br />
    <br />
    Private Sub MenuItem7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
    Handles MenuItem7.Click
<br />
    &nbsp;&nbsp;&nbsp; ApplyFilter()
<br />
    End Sub
<br />
    <br />
    Private Sub MenuItem9_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
    Handles MenuItem9.Click
<br />
    &nbsp;&nbsp;&nbsp; RemoveFilter()
<br />
    End Sub
<br />
</pre>
                <b>Figure: VB .NET menu example</b>
                <p>
                    There are similarities between creating MenuItems for a MenuBar and creating ToolBarButtons
                    for a ToolBar. It would be easy and convenient to handle each toolbar button's Click
                    event separately. However, this is not possible.</p>
                <p>
                    The only way to process such an event at all, currently, is to use the ToolBar's
                    ButtonClick event, as seen below.</p>
                <pre>
Private Sub ToolBar1_ButtonClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.ToolBarButtonClickEventArgs)
    Handles ToolBar1.ButtonClick
<br />
    &nbsp;&nbsp;&nbsp; If e.Button Is btnNewClient Then
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ClientNew()
<br />
    &nbsp;&nbsp;&nbsp; ElseIf e.Button Is btnApplyFilter Then
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ApplyFilter()
<br />
    &nbsp;&nbsp;&nbsp; ElseIf e.Button Is btnRemoveFilter Then
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RemoveFilter()
<br />
    &nbsp;&nbsp;&nbsp; Else
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MsgBox("Logic Error")
<br />
    &nbsp;&nbsp;&nbsp; End If
<br />
    End Sub
<br />
</pre>
                <b>Figure: Toolbar ButtonClick event</b>
                <p>
                    As you can see, it would be simpler and less messy if we had each menu item's Click
                    event handled in a separate event procedure.
                </p>
            </li>
            <li>
                <h2>
                    <a name="DirtyProviderControl"></a>DirtyProvider control</h2>
                <p>
                    Many intrinsic .NET controls could benefit from an IsDirty property (or equivalent)
                    that allows you to query whether or not the control has been changed by the user
                    in any way.
                    <br />
                    An IsDirty property could be provided by an extended provider in much the same way
                    as the Tooltip property is provided by the ToolTip control.</p>
                <p>
                    The code below demonstrates the use of an IsDirty property.</p>
                <pre>
If DirtyProvider1.GetIsDirty(Me) = True Then
<br />
    &nbsp;&nbsp;&nbsp;
<br />
    &nbsp;&nbsp;&nbsp;Dim result As MsgBoxResult = MsgBox("Do you want to save changes?",
    MsgBoxStyle.YesNoCancel, "Save")
<br />
    &nbsp;&nbsp;&nbsp;
<br />
    &nbsp;&nbsp;&nbsp;Select Case result
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Case MsgBoxResult.Yes
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Save()
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Case MsgBoxResult.Cancel
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;e.Cancel = True
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Case MsgBoxResult.No
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' Do nothing - the form will
    close
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Case Else
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MsgBox("Logic Error")
<br />
    &nbsp;&nbsp;&nbsp;End Select
<br />
    <br />
    End If
<br />
                                                                            </pre>
                <b>Figure: Example IsDirty code</b> </li>
            <li>
                <h2>
                    <a name="MakeExtenderProviderPropertiesMoreVisible"></a>Make Extender Provider Properties
                    More Visible</h2>
                <p>
                    Extender providers are objects that add properties to other controls. They are useful
                    in a number of areas. For example, the ErrorProvider control adds an Error property
                    to all controls, through which the developer can provide notification of errors
                    to the user.</p>
                <p>
                    However, properties specific to a particular extender provider are often difficult
                    to locate in the properties window because they're mixed in with other properties
                    belonging to a control. Extender provider properties will be separated from normal
                    properties; this could be done by:</p>
                <ul>
                    <li>Color-coding them in the properties window (using the background color)</li>
                    <li>Allowing the user to select an extender provider from the top combo (see figure)
                        <br />
                        <br />
                        <img src="Images/vs8.gif" alt="form" width="364" height="179" /><br />
                        <br />
                        <b>Figure: Extender provider could be selected from the top combo box</b> </li>
                </ul>
                <p>
                    Furthermore, when an extender provider and a normal control are selected simultaneously,
                    none of the extender properties are shown in the properties window, as seen below.</p>
                <p>
                    <img src="Images/vs7.gif" alt="Extended provider" width="471" height="542" /><br />
                    <br />
                    <b>Figure: Extender provider properties will be shown when extender provider and regular
                        control are selected.</b></p>
            </li>
            <li>
                <h2>
                    <a name="Subforms"></a>Sub forms</h2>
                <p>
                    Access sub forms were fantastic. So simply and so effective. Visual Studio needs
                    an out-of-the-box equivalent to manage Master/Child relationships.</p>
            </li>
            <li>
                <h2>
                    <a name="HideProperties"></a>Hiding properties in inherited forms</h2>
                <p>
                    Using special attributes, it is possible to hide properties from the designer in
                    inherited forms (see <a href="/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx#InheritedForms">
                        Rules to Better Windows Forms</a>). However, it would be better to be able to
                    disable properties (have them appear grayed out or with strikethrough).</p>
            </li>
            <li>
                <h2>
                    <a name="BreadCrumbControl"></a>Would like a Bread crumb control for windows forms</h2>
                <p>
                    This would be used in wizards this is too much work to do manually at the moment.</p>
                <p>
                    <img src="Images/vs9BreadCrumbControl.gif" alt="Extended provider" width="482" height="72"><br />
                    <b>Figure: Bread crumb control for SSW Upsizing PRO!.</b></p>
            </li>
            <li>
                <h2>
                    <a name="ListViewDoubleClick"></a>ListView shouldn't change the checkbox's checkstate
                    on double click</h2>
                <p>
                    By default, ListView with checkboxes will automatically check or uncheck the checkbox
                    on double click. This default behaviour somehow could be very annoying and make
                    your ListView looks bugged if you have a custom action for double click event.
                </p>
                <p>
                    Example of ListView that will have custom action on double click:<br />
                    <img src="Images/ListViewDoubleClick.gif" alt="This ListView needs custom action on double click."
                        width="550" height="459">
                    <br />
                    Users would expect to edit the value of "Path" on double click, not check/uncheck
                    the checkbox.
                    <br />
                    Double click will really just do 1 action (edit).
                </p>
                <p>
                    How we fix this:</p>
                <pre>
private bool isDoubleClick = false; 
private void listView1_MouseDown(object sender, System.Windows.Forms.MouseEventArgs e) 
{ if ((e.Button == MouseButtons.Left) && (e.Clicks >= 2) ) 
    { isDoubleClick = true; } 
} 
private void listView1_ItemCheck(object sender, System.Windows.Forms.ItemCheckEventArgs e) 
{ if (isDoubleClick) 
    { e.NewValue = e.CurrentValue; isDoubleClick = false; } 
} 
private void listView1_DoubleClick(object sender, System.EventArgs e) 
{ // Your custom action for double click goes here. :) 
}</pre>
                <p>
                    Suggestion:<br />
                    Make a boolean property "Automatically check/uncheck checkbox on double click".<br />
                    Automatically check/uncheck the checkbox is good (and needed) if the ListView doesn't
                    have any action on double click.
                </p>
            </li>
            <li>
                <h2>
                    <a name="ListViewStringTrimming"></a>Need the ability to trim characters from a
                    string that does not completely fit into a ListView column</h2>
                <p>
                    To implement a custom <a href="/ssw/Redirect/Microsoft/MSDN1.htm">string trimming</a>
                    in ListView, we need to override the Paint event of the ListView. However, the ListView
                    in .NET 1.x is not really a .NET control, it is just wrapper around the control
                    in ComCtl. It doesn't have the OwnerDraw property and Paint Event like other .NET
                    controls.
                    <br />
                    There are a few workarounds like generating Paint Event for ListView on CodeProject.com,
                    but they don't work out really good.
                </p>
                <table id="table16" style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: .NET Framework 2.0</b><br />
                                <br />
                                This can be implemented easily in .NET Framework 2.0.<br />
                                <br />
                                E.g:<br />
                                <img src="Images/PathEllipsis.gif" width="197" height="117" border="1"><br />
                                <b>Figure: This can be implemented easily in .NET Framework 2.0</b>
                            </p>
                            <p>
                                Steps:<br />
                            </p>
                            <ol>
                                <li>Set OwnerDraw of ListView to True.</li>
                                <li>ListView in .NET 2.0 has DrawColumnHeader, DrawItem, and DrawSubItem event handlers.
                                    In this case, DrawSubItem is what we need, add the code like below:
                                    <br />
                                    <pre>
Private Sub ListView1_DrawSubItem(ByVal sender As Object, ByVal e As System.Windows.Forms.DrawListViewSubItemEventArgs)
Handles ListView1.DrawSubItem e.DrawText(TextFormatFlags.PathEllipsis) 
End Sub</pre>
                                </li>
                            </ol>
                        </td>
                    </tr>
                </table>
            </li>
            <li><a name="SortableComboBox"></a>
                <h2>
                    Make ComboBox control sortable
                </h2>
                We believe ComboBox control will have a property to make it sortable, which may
                be called 'SortMember' like the existing properties of 'DisplayMember' and 'ValueMember'.<br />
                &nbsp; </li>
            <li><a name="CTRLAForTextBox"></a>
                <h2>
                    Ctrl+A to select all text for TextBox</h2>
                We believe TextBox control will have a property to enable Ctrl+A to select all text
                for TextBox, which may be called 'AcceptsCtrlA' like the existing properties 'AcceptsReturn'
                and 'AcceptsTab"; It will make us easy to copy all text by CTRL+A and then CTRL+C
                - especially for copy long text in multiple-lines TextBox;<br />
                <br />
                <pre>
Private Sub txtScript_KeyDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles txtScript.KeyDown 
If e.Control And Also e.KeyCode = Keys.A Then
    Me.txtScript.SelectAll()
End If 
End Sub </pre>
                <p>
                    <b>Figure: Get CTRL+A to select all text in TextBox.</b></p>
            </li>
            <li><a name="SelectAllCheckWindows"></a>
                <h2>
                    A top CheckBox to "select all" in windows forms</h2>
                <p>
                    The header of a checkbox column (e.g. in DataGridView) will contain a checkbox by
                    default. When this checkbox is checked, all checkboxes below are checked too. This
                    checkbox is more than a check box with all things (e.g. properties, methods and
                    events) applied to a CheckBox control.</p>
                <img src="Images/SelectAllCheckBox_Window.jpg" alt="A top checkbox to select all checkboxes"
                    />
                <br />
                <b>Figure: A top checkbox to select all checkboxes underneath it in a windows form</b>
            </li>
            <li><a name="TabHeaderErrorProvider"></a>
                <h2>
                    Adding an error provider on a tab header</h2>
                <p>
                    According to our experience, the error provider icon will be able to show on a tab
                    header to indicate the tabpage contains errors.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/TabHeaderErrorProvider.gif" alt="Add an error provider on a tab"
                            width="206" height="106" /></dt>
                    <dd>
                        Figure: Add an error provider on an Tab Header.
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <strike><a name="TransparentImages"></a>Transparent images don't get rendered correctly</strike></h2>
                <p>
                    <strike>
                        <img src="Images/TransparencePurple.gif" width="542" height="527" alt="Transparent images don't get rendered correctly" />
                        <br />
                        <b>Figure: Transparent images don't get rendered correctly.</b> </strike>
                </p>
                <p>
                    <strike>
                        <img src="Images/CodeAnalysisTab.gif" width="600" height="419" alt="Transparent images don't get rendered correctly" />
                        <br />
                        <b>Figure: Transparent images don't get rendered correctly in project properties form
                            as well.</b> </strike>
                </p>
                <p>
                    <strike>The purple area will be rendered as transparent.</strike></p>
            </li>
            <li><h2><a name="PastingScreenshot"></a>Add support for pasting in screenshots</h2>
                <p>We can always paste images into the content in Outlook, but we don't have any control to support this feature. Sometimes images are more expressive than words, especially when we want to describe a kind of state or result. Why can't we just paste in the sceenshots from the clipboard?  </p>
                <p><a href="MSAjax.aspx#PastingScreenshot">See the similar suggestion to web forms</a></p>
            </li>
            <li>
            <h2><a name="ImproveCheckedListBox"></a>Have a CheckedListBox support Control+A and Control+C</h2>
             <p>Add support for Control+A to select all items.<br/>
                Add support for Control+C to copy all items to the clipboard.<br/>
             </p>
            <dl class="image">
             <dt>
             <img src="Images/ImproveCheckedListBox.jpg" alt="These functionalities should be default in Windows Forms" /></dt>
             <dd>Figure: Windows Forms should have the same functionality</dd></dl><br/>
             <p>See the same suggestion at <a href="/ssw/Standards/BetterSoftwareSuggestions/WPF.aspx#ImproveCheckedListBox">Microsoft WPF Suggestions </a>. </p>
           </li>

            
        </ol>
    </div>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JV">Jatin Valabjee</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        Edward Forgacs<br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=RT">Ryan Tee</a></p>
</asp:Content>
