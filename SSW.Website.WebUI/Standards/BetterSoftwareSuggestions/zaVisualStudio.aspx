﻿<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Visual Studio .NET (General) Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
    <div class="TableOfContents">
        <h3>
            Assistance for Access Developers Migrating Apps to .NET</h3>
        <ol>
            <li><a href="#CodeGeneration">Improved Built-in Code Generation</a></li>
            <li><a href="#AutoDatasets">Automatically add referenced datasets a to a .NET Windows
                form</a></li>
            <li><a href="#CopyPasteUI">Copy and paste form controls from Access and VB6 Forms to
                .NET Windows Forms</a></li>
        </ol>
        <h3>
            Microsoft Visual Studio Suggestions</h3>
        <ol>
            <li><a href="#Setasstartup">Set as Startup for Windows Forms</a></li>
            <li><a href="#ComboControl">Combo Control</a></li>
            <li><a href="#AutoCodeAudit">Automatic Code Auditing</a></li>
            <li><a href="#datasets">Gracefully change and delete datasets from the designer</a></li>
            <li><a href="#LikeIE">Back and Forward Buttons will Look Like Internet Explorer</a></li>
            <li><a href="#FolderDeleteOption">Folder Delete Option</a></li>
            <li><a href="#NETReferencesList">.NET References List</a></li>
            <li><a href="#IntegrationwithVSS">VSS - Make Integration with Visual Source Safe more
                Efficient</a></li>
            <li><a href="#IntelligentRenames">VSS - Renames will be Intelligent</a></li>
            <li><a href="#VBtoCSharp">Visual Basic .NET to C# and Vice-Versa Language Converters</a></li>
            <li><a href="#UseManifest">Use Manifest Check Box</a></li>
            <li><a href="#FeedbackwithSound">Provide Feedback with Sound</a></li>
            <li><a href="#InvalidXMLTaskPane">Notify of Invalid XML in the Task Pane</a></li>
            <li><a href="#LoadLastLoadedSolutionBypass">&quot;Load Last Loaded Solution&quot; Bypass</a></li>
            <li><a href="#TabOrderingProblem">Tab Control ordering problem</a></li>
            <li><a href="#Linker">Need a Linker to make .exe's include required .NET components</a></li>
            <li><a href="#PropertyShortcut">Shortcut for generating properties</a></li>
            <li><a href="#FormsAfterCode">Designing forms after modifying code</a></li>
            <li><a href="#ReferencePaths">Need ticks and crosses on Reference Paths Page</a></li>
            <li><a href="#DataBindingSmartTasks">Need a DataBinding Smart Tasks shortcut</a></li>
            <li><a href="#ImproveDataSourceConfigurationWizard">Improve Data Source Configuration Wizard</a></li>
            <li><a href="#FileOpenDialogCurrentSolution">File Open dialog will have "Current Solution"</a></li>
            <li><a href="#DragDropXSD">will be able to drag and drop a typed dataset onto the form designer</a></li>
            <li><a href="#combolookup">Combo box with lookup button</a></li>
            <li><a href="#VersionNumbers">Modification of version numbers</a></li>
            <li><a href="#MRULists">Load MRU (Most Recently Used) lists as a background process during Save or Delete</a></li>
            <li><a href="#excludePre">Exclude &lt;pre&gt; tag when performing code auto-format</a></li>
            <li><a href="#FileAssociation">Need a file association for Web.Config</a></li>
            <li><a href="#DataDudeSchemaCompare">DataDude does not synchronise the Schema for Stored Procedures</a></li>
            <li><a href="#TwoItemsSameType">Compare two items of the same type</a></li>
            <li><a href="#DataDudeSelectAll">DataDude needs a "select all"</a></li>
            <li><a href="#DataDudeCompareScript">DataDude will explain the reason of droping constraints</a></li>
            <li><a href="#AddReference">Inform the developer when adding referrence</a></li>
            <li><a href="#AutoIncrement">Need "Auto increment the build number on each Compile" check box</a></li>
            <li><a href="#HTMLFormat">Add Shortcut Key to format HTML</a></li>
            <li><a href="#x64Support">Full 64 bit support</a></li>
            <li><a href="#NicerHelp">Lets give nicer help before dropping into Designer Files</a></li>
			<li><a href="#TrainingVideos">Provides "Training Videos" menu item in the help menu</a></li>
			<li><a href="#ReadUIContextMenu">Add a "Read UI/Show Me" menu item in right-click context menu</a></li>
			<li><a href="#FixErrorAutomatically">Rather than add a file to my project and get 600 compile errors, help me automatically fix it</a></li>
			<li><a href="#UIConvention">Is there a Windows standard UI convention against this?</a></li>
			<li><a href="#OutputType">VS 2010 - Help me know what to do when trying to solve 'Output Type of Class Library cannot be started directly'</a></li>
			<s><li><a href="#ScrollBarHorrible">Right click scroll bars are horrible to work with</a></li></s>
			<li><a href="#NiceURLs">Nice URLs for the Gallery</a></li>
			<li><a href="#ImproveSetupExp01">Improve the VS.NET 2010 setup experience #1</a></li>
			<li><a href="#ImproveSetupExp02">Improve the VS.NET 2010 setup experience #2</a></li>
			<li><a href="#AdditionalMenu">Additional Menus should indicate where they come from</a></li>
            <li><a href="#LastAnonymous">Help | About - Help me see what was the last thing I installed</a></li>
            <li><a href="#RCSetup">Setup.exe - Help me know not to install SQL Server 2008 Express Service Pack 1</a></li>
            <li><a href="#ClickAround">Let me click around (Little one) - without making me reach for the keyboard </a></li>
            <li><a href="#ViewClassDiagram">Dev11 Feature Request - 'View Class Diagram'</a></li>
            <li><a href="#SearchIntelligently">VS Extension Manager - help me intelligently on search </a></li>
            <li><a href="#TabOrder">Give me a sensible Default Tab Order </a></li>
        </ol>
        <h3>
            Creating Visual Studio Add-in with EnvDTE Suggestions</h3>
        <ol>
            <li><a href="#noerrormessage">Hard to debug No error message</a></li>
            <li><a href="#uselesserrormessages">Hard to debug Unhelpful or useless error messages</a></li>
            <li><a href="#notimplemented">EnvDTE is not completely implemented?</a></li>
            <li><a href="#unfinishabledte">Confusion for developers DTE.DTE.DTE?</a></li>
            <li><a href="#2dte">Confusion for developers EnvDTE._DTE and EnvDTE.DTE</a></li>
        </ol>
        <h3>
            Creating Add-In for Visual Studio 2005 Beta 2 Suggestions</h3>
        <ol>
            <li><a href="#AccessViolationException">AccessViolationException</a></li>
            <li><a href="#COMException">Throws COMException randomly</a></li>
        </ol>
        <h3>
            FxCop</h3>
        <ol>
            <li><a href="#FxCopAnalysisReport">FxCop report will contain more information</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <h2>
            Assistance for Access Developers Migrating Apps to .NET</h2>
        <ol>
            <li><a name="CodeGeneration"></a>
                <h2>
                    Improved Built-in Code Generation</h2>
                <p>
                    We need a built-in code generator that can create a series of DataAdapters and strongly-typed
                    DataSets based on the database schema. All the developer will have to do is select
                    the database. Visual Studio .NET 2003 will create DataSets but not DataAdapters.
                    Visual Studio 2005 is able to also create DataAdapters, but each table has to be
                    dragged onto the DataSet manually. We prefer to have only one DataTable per file,
                    but Visual Studio 2005 cannot do this automatically.</p>
                <p>
                    <img src="Images/VS2005DataSets.gif" width="582" height="580" alt="Visual Studio 2005 DataSet Designer" /><br />
                    <b>Figure: Visual Studio 2005 generates DataAdapters and DataTables if tables are dragged
                        on manually, but all DataTables are stored in the one file</b></p>
                <p>
                    <img src="Images/VisualStudioDataSets.gif" width="260" height="159" alt="DataSets in the Solution Explorer" /><br />
                    <b>Figure: One DataSet per file</b></p>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: Visual Studio .NET 2005 Beta 2 - Not done</b><br />
                                This has not been fixed in Visual Studio 2005 Beta 2.</p>
                        </td>
                    </tr>
                </table>
            </li>
            <li><a name="AutoDatasets"></a>
                <h2>
                    Automatically add referenced datasets a to a .NET Windows form</h2>
                <p>
                    When dragging a referenced dataset onto the form, we would like a checkbox that
                    will create instances of all of the datasets in the DataSets project on the form.
                    The current method of dragging a dataset on 5 times for a 5 tables (aka DataSets)
                    for a form that uses multiple tables is tedious.</p>
                <p>
                    <img src="Images/DataSetsAutoGenerate.gif" alt="DataSets AutoGenerate" width="600"
                        height="418" /><br />
                    <b>Figure - there will be a checkbox in this dialog which generates instances for all
                        datasets found</b></p>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: Visual Studio .NET 2005 Beta 2 - Not done</b><br />
                                This has not been fixed in Visual Studio 2005 Beta 2.</p>
                        </td>
                    </tr>
                </table>
                <br />
            </li>
            <li><a name="CopyPasteUI"></a>
                <h2>
                    Copy and paste form controls from Access and VB6 Forms to .NET Windows Forms</h2>
                <p>
                    It would be very useful to be able to Select All -&gt; Copy from an Access or Visual
                    Basic 6 Form and Edit -&gt; Paste onto a blank form in Visual Studio .NET. The code
                    behind does not need to be able to be converted with copy and paste, but the UI
                    elements will be.</p>
                <p>
                    <img src="Images/CopyPasteAccessForms1.gif" alt="Copy Paste from Access Forms" width="600"
                        height="439" /><br />
                    <b>Figure - We will be able to copy from here in Access...</b></p>
                <p>
                    <img src="Images/CopyPasteAccessForms2.gif" alt="Copy Paste from Access Forms" width="600"
                        height="513" /><br />
                    <b>Figure - and paste to here in .NET</b></p>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: Visual Studio .NET 2005 Beta 2 - Not done</b><br />
                                This has not been fixed in Visual Studio 2005 Beta 2.</p>
                        </td>
                    </tr>
                </table>
                <br />
            </li>
        </ol>
        <h2>
            Microsoft Visual Studio Suggestions</h2>
        <ol>
            <li>
                <h2>
                    <a name="Setasstartup"></a>Set as Startup for Windows Forms</h2>
                <p>
                    In .NET Windows Forms, there will be an option Set as Startup Form to be consistent
                    with Web forms.</p>
                <p>
                    <img border="0" src="Images/SetAsStartup.gif" width="255" height="324" /><br />
                    <b>Figure: Please add 'Set as Start Form' option</b></p>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: Visual Studio .NET 2005 Beta 2 - Not done</b><br />
                                This has not been fixed in Visual Studio 2005 Beta 2.</p>
                        </td>
                    </tr>
                </table>
            </li>
            <br />
            <li>
                <h2>
                    <a name="ComboControl"></a>Startup Object Property</h2>
                <p>
                    The combo box control in this property grid needs to be more visible. Sometimes
                    it is visible, sometimes not.</p>
                <p>
                    <img border="0" src="Images/ComboControl2.gif" width="644" height="440"><br />
                    <b>Figure: Now you see the combo... </b>
                    <br />
                    <br />
                    <img border="0" src="Images/ComboControl.gif" width="644" height="440"><br />
                    <b>Figure: Now you don't!</b>
                </p>
                <p>
                    The property is also inconsistent between C# and VB.NET. C# only lists classes which
                    have a Main method. VB.NET lists all forms as well as classes with a main method.
                    This is because VB.NET does not create a Main method if the Startup object is set
                    to a Form. Instead:</p>
                <ul>
                    <li>VB.NET will always create a Main method for consistency with C#.</li>
                    <li>All Forms will be listed in both languages. If a Main method does not exist and
                        a Form without one is selected, the Main method will be created.</li>
                </ul>
                <br />
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: Visual Studio .NET 2005 Beta 2 - Not done</b><br />
                                This has not been fixed in Visual Studio 2005 Beta 2.</p>
                        </td>
                    </tr>
                </table>
            </li>
            <br />
            <li>
                <h2>
                    <a name="AutoCodeAudit"></a>Automatic Code Auditing</h2>
                <p>
                    Certain coding practices will be able to be banned. e.g. empty catch blocks, variables
                    which do not follow naming conventions, etc. We have fixed this ourselves with a
                    combination of <a href="/ssw/CodeAuditor">Code Auditor</a> and Microsoft's FxCop
                    tool, which allows you to create custom rules.</p>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: Visual Studio .NET 2005 Beta 2 - Fixed</b><br />
                                FxCop is now integrated into Visual Studio .NET, and with Team Foundation Server,
                                you can run rules over source code before allowing pending checkins.</p>
                        </td>
                    </tr>
                </table>
            </li>
            <br />
            <li><a name="datasets"></a>
                <h2>
                    Gracefully change and delete datasets from the designer</h2>
                Have you ever deleted a dataset from the designer only to lose all your control
                bindings? We think a less frustrating and more useful solution is to:
                <ul>
                    <li>If you delete a dataset, a window pops up list all the controls that are bound to
                        this dataset. In this window you can choose to re-map the controls to an existing
                        or new dataset.</li>
                    <li>There will be an option to change the source of a dataset, e.g. if you have a data
                        set in the designer bound to "DataSets.Categories" and you want to change it to
                        bind it to "DataSets.SubCategories" without losing your form bindings.</li>
                </ul>
                <dl class="badImage">
                    <dt>
                        <img src="Images/vsdatasets1.gif" width="421" height="337" /><br />
                        <br />
                        <img src="Images/vsdatasets2.gif" width="400" height="335" /></dt>
                    <dd>
                        Figure: If I delete any dataset here I lose all my form designer bindings. A confirmation
                        dialog will pop up letting me know all controls that are bound to this dataset and
                        allow me to change the dataset the controls are bound to or cancel the operation</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="LikeIE"></a>Back and Forward Buttons will Look Like Internet Explorer</h2>
            </li>
            <p>
                The Backwards and Forwards buttons to move between different code locations and
                files in Visual Studio .NET are are hard to discover, because the icons do not resemble
                those in Internet Explorer.</p>
            <p>
                <img src="Images/BackForwardVS2003.gif" width="61" height="24"><br />
                <b>Figure: Did you know what these buttons were for?</b></p>
            <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                <tr>
                    <td valign="top">
                        <p>
                            <b>Update: Visual Studio .NET 2005 Beta 2 - Fixed</b><br />
                            The icons in Visual Studio .NET 2005 are an improvement on Visual Studio .NET 2003,
                            but still not quite as obvious as we would like.</p>
                        <p>
                            <img src="Images/BackForwardVS2005.gif" width="61" height="24"><br />
                            <b>Figure: The new icons are better, but still not like Internet Explorer.</b></p>
                    </td>
                </tr>
            </table>
            <br />
            <li>
                <h2>
                    <a name="FolderDeleteOption"></a>Folder Delete Option</h2>
                <p>
                    As shown in the screenshot, Visual Studio allows you to quickly and easily remove
                    a project from a solution, via the popup menu in Solution Explorer. It would be
                    good if there was also a command for removing the project file itself. This would
                    save the user having to close VS, remove the project manually then re-open VS, which
                    is what normally has to be done. And while we're on this topic, a command like 'Open
                    in Explorer' could also make manipulating files in a project more convenient.</p>
                <p>
                    <img src="Images/vs.gif" alt="Visual studio" width="332" height="400"><br />
                    <b>Figure: Right-clicking on a project in Solution Explorer.</b></p>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: Visual Studio .NET 2005 Beta 2 - Not done</b><br />
                                This has not been fixed in Visual Studio 2005 Beta 2, but Microsoft have acknowledged
                                it for a future release. Microsoft pointed out that it would be relatively easy
                                to write an add-in to achieve this functionality. However, we would have liked a
                                command where you could at least open the folder in Windows Explorer.
                                </p>
                        </td>
                    </tr>
                </table>
            </li>
            <br />
            <li>
                <h2>
                    <a name="NETReferencesList"></a>.NET References List</h2>
                <p>
                    The list box on the .NET tab of the Add Reference dialog in Visual Studio (Project
                    &gt; Add Reference...) lists all available .NET components. (See screenshot below.)
                    As .NET components are added to the system over time, this list box may end up containing
                    thousands of items</p>
                This is a bad idea for two reasons:<ol>
                    <li>It is difficult for users to find what they're looking for.</li>
                    <li>The list takes a long time to load; the user may be forced to wait for as long as
                        30 seconds before being able to interact with the dialog box.</li>
                </ol>
                <p>
                    A better idea may be to add a filter text box. Then the list can be filtered according
                    to the characters entered into the text box, and updated each time the filter text
                    changes.</p>
                <p>
                    <img src="Images/vs2.gif" alt="Add reference" width="566" height="446" /><br />
                    <b>Figure: Add Reference dialog box in Visual Studio.</b></p>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: Visual Studio .NET 2005 Beta 2 - Not done</b><br />
                                Visual Studio 2005 Beta 2 has a new Add Reference dialog box, but it is just as
                                slow, and if anything, makes it harder to reference multiple items simultaneously.
                                However, the Browse and Recent tabs are an improvement. Microsoft have acknowledged
                                this for a future release.</p>
                            <p>
                                <img src="Images/VS2005References.gif" width="556" height="423" /><br />
                                <b>Figure: New References Dialog in Visual Studio 2005 Beta 2</b></p>
                        </td>
                    </tr>
                </table>
            </li>
            <li>
                <h2>
                    <a name="IntegrationwithVSS"></a>VSS - Make Integration with Visual Source Safe
                    More Efficient</h2>
                <ul>
                    <li>A source safe project will be opened through &quot;File/Open/Project from Source
                        Safe&quot;</li>
                    <li>A VS project will be able to be shared by sending the URL or fileshare which can
                        be pasted into Start/Run (e.g. vss://Path/To/Database/ProjectName) - which would
                        then be automatically checked out of Source Safe</li>
                </ul>
                <br />
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: Visual Studio .NET 2005 and Visual SourceSafe 2005 Beta 2 - Partially done</b><br />
                                Visual Studio .NET 2005 has an option under the Open submenu to open a Team Foundation
                                Server project, but not a SourceSafe project. Microsoft have decided to keep the
                                SourceSafe option under the Source Control menu so that all source control options
                                remain grouped together.</p>
                            <p>
                                <img src="Images/VS2005OpenSubmenu.gif" width="413" height="143" /><b><br />
                                    Figure: Visual Studio .NET 2005 Open Menu for Team Foundation Server</b></p>
                            <p>
                                Our suggestion of adding a protocol handler has been acknowledged by the SourceSafe
                                team. 
                            </p>
                        </td>
                    </tr>
                </table>
            </li>
            <li>
                <h2>
                    <a name="IntelligentRenames"></a>VSS - Renames will be intelligent</h2>
            </li>
            <ul>
                <li>Why doesn't renames work the same as Windows Explorer? The history shouldn't be
                    lost when you rename an object and it shouldn't make a copy. A rename is a rename.</li>
                <li>When you create a file, it also creates a class of the same name. Therefore if I
                    rename the file, I want to class to be automatically renamed</li>
                <li>When a button which has only one event in the handle statement is renamed, the function
                    name will be automatically renamed</li>
            </ul>
            <br />
            <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                <tr>
                    <td valign="top">
                        <p>
                            <b>Update: Visual Studio .NET 2005 and Visual SourceSafe 2005 Beta 2 - Partially done</b><br />
                            Visual SourceSafe 2005 Beta 2 will now support rename/delete/move propagation from
                            the Solution Explorer to its database. This functionality is implemented in Visual
                            Studios Source Code Control Integration layer, which means that any third-party
                            SCM will be able to implement this as well.</p>
                        <p>
                            Visual Studio 2005 supports renaming the underlying class when the file name changes.
                            <a href="/ssw/Redirect/JetbrainsReSharper.htm">Resharper</a> can rename a file if
                            you rename a class, allowing you to have this functionality today in Visual Studio
                            .NET 2003.</p>
                        <p>
                            Event handler renaming is not present in Visual Studio .NET 2005, but the suggestion
                            has been acknowledged.</p>
                    </td>
                </tr>
            </table>
            <li>
                <h2>
                    <a name="VBtoCSharp"></a>Visual Basic .NET to C# and Vice-Versa Language Converters</h2>
                <p>
                    There needs to be an automatic and reliable way to transfer code between C# and
                    Visual Basic .NET languages. This would be particularly useful in an environment
                    where both languages are used, and some developers are more familiar in one language,
                    but need to know the correct way to exactly reproduce a set piece of code in the
                    other language. There are several web-based tools available, but they can only convert
                    about 80% of code. The functionality needs to be implemented in the compiler and
                    MSIL so that all language elements are converted with 100% accuracy.</p>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: Visual Studio .NET 2005 Beta 2 - Not done<br />
                                </b>Visual Studio .NET 2005 does not have this feature. Microsoft believe that the
                                total percentage of Visual Studio users who would use this would probably be fairly
                                low, not enough to justify adding the feature to Visual Studio.</p>
                        </td>
                    </tr>
                </table>
                <br />
            </li>
            <li>
                <h2>
                    <a name="UseManifest"></a>Use Manifest Check Box</h2>
                <p>
                    The Properties of a Project will have a &quot;Use Manifest&quot; check box rather
                    than having to copy files into directories.
                </p>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: Visual Studio .NET 2005 Beta 2 - Done<br />
                                </b>Visual Studio .NET 2003 added a feature where you could call <b>Application.EnableVisualStyles()</b>
                                to use themes in your application, however it did not work correctly.Visual Studio
                                2005 fixes this bug, and there is now a checkbox where you can enable or disable
                                themes.</p>
                            <p>
                                <img src="Images/VS2005ProjectPropertiesApplication.gif" width="660" height="406"><br />
                                <b>Figure: Enable XP visual styles check box in the project properties in Visual Studio
                                    2005 Beta 2</b></p>
                        </td>
                    </tr>
                </table>
                <br />
            </li>
            <li>
                <h2>
                    <a name="FeedbackwithSound"></a>Provide Feedback with Sound</h2>
                <p>
                    Both Word and Outlook have this fantastic option for those developers who like to
                    receive information aurally (yes this is correct spelling and means &quot;through
                    listening&quot;) as well as visually.
                </p>
                <p>
                    <img src="Images/VisualStudioFeedbackwithSound.gif" alt="Feedback with sound" width="169"
                        height="68"><br />
                    <b>Figure: Provide Feedback with Sound option in Office</b></p>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: Visual Studio .NET 2005 Beta 2 - Not done<br />
                                </b>Visual Studio .NET 2005 does not provide aural feedback, but Microsoft have
                                acknowledged our suggestion for a future version. </p>
                        </td>
                    </tr>
                </table>
                <br />
            </li>
            <li>
                <h2>
                    <a name="InvalidXMLTaskPane"></a>Notify of Invalid XML in the Task Pane
                </h2>
                <p>
                    Making the Task Pane notify the user that their XML schema (e.g. in App.config)
                    is invalid would save many users a lot of time. Because while you have this error
                    you can't copy and paste and it therefore takes you forever to find the problem.</p>
                <p>
                    <img src="Images/VisualStudio_InvalidXMLToShowUpInTaskPane.gif" alt="Invalid XML to show up in task pane"
                        width="557" height="138"><br />
                    <b>Figure: The Task Pane will notify users if their XML is invalid</b>
                </p>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: Visual Studio .NET 2005 Beta 2 - Fixed<br />
                                </b>Visual Studio .NET 2005 provides full Intellisense for XML, including showing
                                validation errors in the task list.</p>
                            <p>
                                <img src="Images/XmlErrors2005.gif" width="600" height="201"><br />
                                <b>Figure: Visual Studio 2005 highlights XML errors and shows them in the error list</b></p>
                        </td>
                    </tr>
                </table>
                <br />
            </li>
            <li>
                <h2>
                    <a name="LoadLastLoadedSolutionBypass"></a>"Load Last Loaded Solution" Bypass
                </h2>
                <p>
                    I like using the &quot;Load last loaded solution&quot; option. However sometimes
                    I know I don't want that solution to open when I open VS.NET. There will be a feature
                    &quot;Hold down shift to bypass&quot; as there is in access.</p>
                <p>
                    <img src="Images/VisualStudio_ShiftStartup.gif" alt="VS Shift startup" width="219"
                        height="99"><b><br />
                            Figure: Let me bypass the "Load Last Loaded Solution" - just like I could with Access</b></p>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: Visual Studio .NET 2005 Beta 2 - Not done<br />
                                </b>Microsoft have not added this feature this but our suggestion has been acknowledged
                                for a future release. </p>
                        </td>
                    </tr>
                </table>
                <br />
            </li>
            <li>
                <h2>
                    <a name="TabOrderingProblem"></a>Tab Control ordering problem
                </h2>
                <p>
                    This is a known issue about Tab control designer. When you load a tab control which
                    contains too many tabs, the designer will move the tabs around sometimes, not following
                    the initial order.&nbsp; A work around about this is to place some code in your
                    form constructor, right after InitializeComponent(), to clear all the tab pages
                    from your tab control and add them again in the order you want. See problem, <a target="_blank"
                        href="/ssw/Redirect/Syncfusion.htm">http://www.syncfusion.com/FAQ/WinForms/FAQ_c93c.asp#q959</a>
                    for more information regarding this problem.</p>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: Visual Studio .NET 2005 Beta 2 - Fixed</b><br />
                                Microsoft have fixed this bug in Visual Studio .NET 2005 Beta 2.</p>
                        </td>
                    </tr>
                </table>
                <br />
            </li>
            <li>
                <h2>
                    <a name="Linker"></a>Need a Linker to make .exe's include required .NET components</h2>
                <p>
                    I agree with <a href="/ssw/Redirect/Joelonsoftware.htm" target="_blank">Joel Spolsky</a>
                    <img src="Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17"
                        height="11">
                    when he says we need a Linker:
                </p>
                <p>
                    <i>"For some reason, Microsoft's brilliant and cutting-edge .NET development environment
                        left out one crucial tool... a tool that has been common in software development
                        environments since, oh, about 1950, and taken so much for granted that it's incredibly
                        strange that nobody noticed that .NET doesn't really have one." </i>
                    <br />
                    <br />
                    Source: Joel Spolsky, 2004, &quot;Joel On Software - Please Sir May I Have a Linker?&quot;,
                    Accessed 3 December 2004. URL: <a href="/ssw/Redirect/JoelonsoftwarePleaseLinker.htm"
                        target="_blank">http://www.joelonsoftware.com/articles/PleaseLinker.htmll</a>
                </p>
            </li>
            <li>
                <h2>
                    <a name="PropertyShortcut"></a>Shortcut for generating properties</h2>
                <p>
                    Public properties have a number of advantages to public fields (see <a href="/ssw/Standards/Rules/RulestoBetterCode.aspx#PropertiesNotFields">
                        Do you use Public/Protected Properties instead of Public/Protected Fields?</a>)
                    but the syntax for generating them is tedious, particularly if there is no logic
                    in the accessors:</p>
                <pre>
public int Count
<br />
{
<br />
&nbsp;&nbsp; get
<br />
&nbsp;&nbsp; {
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return _count;
<br />
&nbsp;&nbsp; }
<br />
&nbsp;&nbsp; set
<br />
&nbsp;&nbsp; {
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _count = value;
<br />
&nbsp;&nbsp; }
<br />
}</pre>
                <p>
                    Instead we will be able to write:</p>
                <pre>
                            public int Count : _count;</pre>
                <p>
                    Alternatively, it would be nice if when you right-clicked a private field, there
                    were two extra options, &quot;Generate Public Property&quot; and &quot;Generate
                    Protected Property&quot;, which would generate the block of code above.</p>
            </li>
            <li>
                <h2>
                    <a name="FormsAfterCode"></a>Designing forms after modifying code</h2>
                <p>
                    There is a bug in VS.NET!
                </p>
                <p>
                    This bug can put invalid entries in your project files, for example vbproj and csproj,
                    when you go back and modify the code in your forms (particularly if you touch the
                    initializer). The solution is to simply remove and re-add the forms to your project.
                    This will correct the entries in your VS.NET project file.
                    <br />
                    <br />
                    <img src="Images/VSDOTNETBUG.gif" alt="Visual.NET bug" align="middle" border="1"
                        width="708" height="567" />
                    <br />
                    <b>Figure: Code sample</b><br />
                    <br />
                    For more information on this bug, please go to our <a href="/ssw/KB/KB.aspx?KBID=Q1736876">
                        KB article</a>.
                </p>
                <br />
            </li>
            <li>
                <h2>
                    <a name="ReferencePaths"></a>Need ticks and crosses on Reference Paths Page</h2>
                <p>
                    When a project has an invalid Reference Path, the project tries to search for references
                    in that folder even though it does not exist. This adds substantial load time to
                    the project (one solution loaded in 1 min 53 sec with an invalid reference path).
                    When that invalid path was removed the time was now reduced to 12 seconds.</p>
                <p>
                    To prevent this problem:
                </p>
                <ol>
                    <li>ticks and crosses will appear on the page below to identify folders that do not
                        exist,</li>
                    <li>these problems will also appear in the Task List to make it more visible.</li>
                </ol>
                <img src="../Images/ReferencePaths.gif" width="644" height="440" /><br />
                <b>Figure: Reference Paths options screen with "D:\Dev" being the invalid path.</b>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                <b>Update: Visual Studio .NET 2005 - Not done</b><br />
                                This has not been fixed in Visual Studio 2005. However some improvements have been
                                made to point 1. For a path that is not valid the "Update" button becomes Enabled.<br />
                                We still need the ticks and crosses as suggested above.</p>
                            <img src="Images/References2005.gif" alt="References Page in Visual Studio 2005"
                                width="704" height="284" />
                        </td>
                    </tr>
                </table>
            </li>
            <li>
                <h2>
                    <a name="DataBindingSmartTasks"></a>Need a DataBinding Smart Tasks shortcut</h2>
                <p>
                    <img src="Images/TextBoxSmartTasks.gif" width="471" height="145" /><br />
                    <b>Figure: Smart Tasks menu</b><br />
                    Can you add to the Smart Task "DataBindings..." that would bring up this form
                    <br />
                    <img src="Images/FormattingAndAdvancedBinding.gif" width="597" height="434" /><br />
                    <b>Figure: Formatting And Advanced Binding dialog</b>
                </p>
            </li>
            <li>
                <h2>
                    <a name="ImproveDataSourceConfigurationWizard"></a>Improve Data Source Configuration
                    Wizard</h2>
                <ol>
                    <li>
                        <p>
                            <br />
                            <img src="Images/DataSourceConfigurationWizard.gif" width="575" height="451" /><br />
                            <b>Figure: Choose a Data Source Type</b><br />
                            I find most developers either have a plan to try using Objects or Datasets<br />
                            I find this bit unintuitive, when a developer uses data binding they either think
                            "business objects" or "datasets". Can we reword the description for "Objects" to:
                            <br />
                            "Lets you choose an object <span style="background-color: #FFFF00">or a dataset</span>
                            that can later be used to generate data-bound control."</p>
                    </li>
                    <li>
                        <p>
                            Maybe add a tip that shows this image...<br />
                            <img src="Images/DataProject.gif" width="291" height="517" /><br />
                            <b>Figure: If you are using Datasets it is good to organize all your datasets into one
                                project</b></p>
                    </li>
                    <li>
                        <p>
                            Add a tip: It is Best Practise is to connect to a project called "Business" (for
                            business objects) or "Data" (for data sets)<br />
                            <img src="Images/DataSourceConfigurationWizard2.gif" width="575" height="451" /><br />
                            <b>Figure: Add a tip here...</b></p>
                    </li>
                </ol>
            </li>
            <li>
                <h2>
                    <a name="FileOpenDialogCurrentSolution"></a>File Open dialog will have "Current
                    Solution"</h2>
                <p>
                    I usually want to add images that already exist in the solution.
                    <br />
                    It would be handy to add a 4th icon to the File Open dialog called "Current Solution"<br />
                    <img src="Images/BrowseCurrentSolution.gif" width="1037" height="653" /><br />
                    <b>Figure: It would be more convenient if we have a "Current Solution"</b>
                </p>
            </li>
            <li><a name="DragDropXSD"></a>
                <h2>
                    will be able to drag and drop a typed dataset onto the form designer</h2>
                <p>
                    To use a Dataset in a Windows or Web form, you have to create an instance of the
                    typed DataSet from your DataSets project. Currently you have to drag an instance
                    of the dataset from the toolbar then define its type, but wouldn't it be nice to
                    simply drag the .xsd onto the form designer and have Visual Studio figure out the
                    rest?
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/VSDragDropXSD.gif" width="234" height="390" alt="" /></dt><dd>Figure:
                            I will be able to drag this typed DataSet onto my form designer to create an instance
                            of it</dd></dl>
            </li>
            <li><a name="combolookup"></a>
                <h2>
                    Combo box with lookup button</h2>
                One of the problems that .NET developers have when they design in a bound environment
                is that they put combo boxes on forms which show a big list. This is not only hard
                to navigate once you start showing hundreds of records, it can also causes the form
                to take longer to load and put unnecessary strain on the database.
                <p>
                    A better option is to include next to the combo box an ellipsis button "..." which
                    pops up a lookup form.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/VSComboBoxLookup.gif" width="602" height="416" /></dt><dd>Figure: Developers
                            typically return all records for a data bound combobox field, which can increase
                            form load time and put unnecessary strain on the database</dd></dl>
            </li>
            <li><a name="VersionNumbers"></a><h2>
                Modification of version numbers</h2>
                <p>
                    Version Numbers will be consistent there are few exceptions e.g. for backward compilation,
                    you may have to keep Assembly Version unchanged and only increase File Verison for
                    each build. But Visual Studio .NET makes it too easy to let them get out of sync.</p>
                <br />
                <img src="Images/VersionNumbers.gif" width="398" height="386" /><br />
                Microsoft, please make these modifications to the labels and add this checkbox
                <br />
                Assembly Version (when increased it breaks compatibility for depended .dlls) [ ]
                [ ] [ ] [ ]
                <br />
                [x] Copy Assembly Version (disables below)
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;File Version (shown in Windows Explorer) [ ] [ ] [ ] [ ]
                <br />
                <p>
                    Once you have choosen to go ClickOnce then there is no point to have a Separate
                    Assembly and File Version and Published version
                    <br />
                    So Microsoft, my suggestion is to add a checkbox to below form<br />
                    [x] Copy Assembly Version
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;(to be disable the 4 version text boxes)<br />
                </p>
                <div class="quoteRightWrap">
                    <blockquote>
                        I agree with this suggestion, but have a different take. Once developers move to
                        ClickOnce deployment, the assembly and file versions become irrelevant. The Publish
                        Version is your point of Config Management because it drives the deployment and
                        update mechanisms. There will be an easy way to keep them in sync, but I would say
                        it will flow from Publish Version to Assembly and File Version, not the other way
                        around. Although bi-directional flow would be best let people manage whichever one
                        they prefer.
                    </blockquote>
                    <p>
                        Brian Noyes (Author of Smart Client Deployment with ClickOnce, Addison Wesley)</p>
                </div>
                <br />
                <img src="Images/PublishOptions.gif" width="699" height="487" /><br />
            </li>
            <li>
                <h2>
                    <a name="MRULists"></a>Load MRU (Most Recently Used) lists as a background process
                    during Save or Delete</h2>
                <p>
                    During the process of saving a file to a machine, Visual Studio tries to load recently
                    used files.
                    <br />
                    This can cause an unnecessary delay when the machine is not connected to the network
                    that a previous project was saved on; after a certain period it times out and goes
                    on to save the file.
                    <br />
                    The temporary fix to this is deleting all items in the registry under the key HKEY_CURRENT_USER\Software\Microsoft\VisualStudio\8.0\ProjectMRUList
                    and restart VS2005.
                </p>
                <dl class="image">
                    <dt>
                        <img src="/ssw/Standards/BetterSoftwareSuggestions/Images/MRUVisualStudio.jpg" width="906"
                            height="708" /></dt>
                    <dd>
                        Figure: Delete all items in the registry key HKEY_CURRENT_USER\Software\Microsoft\VisualStudio\8.0\ProjectMRUList</dd></dl>
                <p>
                    This is a common issue in a lot of applications; freezes are usually caused by trying
                    to access a network resource that is not available. MRU processes will be executed
                    as background threads so that they dont lock up the main UI and leave the developer
                    waiting.</p>
            </li>
            <li><a name="excludePre"></a>
                <h2>
                    Exclude &lt;pre&gt; tag when performing code auto-format</h2>
                <p>
                    Code auto-format (Ctrl-K, Ctrl-F) is very handy for developers to product a nicely
                    structured codes. Unfortunately this function also automatically formats the content
                    of a &lt;pre&gt; tag where whitespace is significant and formatting will be preserved.</p>
                <dl class="badCode">
                    <dt>
                        <pre>
&lt;pre&gt;
Try
   '' sample code
Catch
   '' sample code
End try
&lt;/pre&gt;</pre>
                    </dt>
                    <dd>
                        Figure: Nicely formatted html code</dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        <pre>
&lt;pre&gt;
Try   '' sample code Catch   '' sample code End try &lt;/pre&gt;</pre>
                    </dt>
                    <dd>
                        Figure: All formatting in &lt;pre&gt; code is destroyed</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="FileAssociation"></a>Need a file association for Web.Config</h2>
                <p>
                    When you first find an ASP.NET solution you are in Windows Explorer. The first step
                    is usually to have a look in web.config to look at some of the settings the project
                    uses. e.g. Connection string.
                </p>
                <p>
                    It would be good if we could double click that and we see a GUI instead of seeing
                    XML.<br />
                    Ideally the GUI would show bold settings for the stuff that is <b>not</b> default.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/FileAssociation.gif" width="828" height="689" /></dt>
                    <dd>
                        Figure: It would be nice to see a GUI for a web.config instead of XML</dd></dl>
                <p>
                    PS: This would be great for ".SLN" files too, so we can see stuff like the projects
                    that are in it (and even show red crosses for broken/moved projects).
                </p>
            </li>
            <li><a name="DataDudeSchemaCompare"></a>
                <h2>
                    DataDude does not synchronise the Schema for Stored Procedures</h2>
                <p>
                    The prefix of the stored procedure in the generated script is not the same as the
                    source. This is not fixed in the Service Release 1.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/VisualStudio_DataDude_SchemaCompare.gif" width="725" height="683" /></dt>
                    <dd>
                        Figure: Datadude recognizes the schema are different, but generates the incorrect
                        update script.</dd>
                </dl>
            </li>
            <li><a name="TwoItemsSameType"></a>
                <h2>
                    Compare two items of the same type</h2>
                <p>
                    Sometimes, I want to compare two items of the same type so that I can tell which
                    one is good. Please allow me to select two items of the same type in the designer
                    and to get differences of their properties.
                    <br />
                    E.g. these ListViews, they've got so many properties I can't tell them apart!
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/TwoItemsSelection.gif" alt="compare two items of the same type" /></dt>
                    <dd>
                        Figure: Compare two items of the same type.</dd>
                </dl>
            </li>
            <li><a name="DataDudeSelectAll"></a>
                <h2>
                    DataDude needs a "select all"</h2>
                <p>
                    A top checkbox to "select all" in the form.<br />
                    The header of checkbox column will contain a checkbox by default. This checkbox
                    can let users select or unselect all the checkboxes underneath it.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/DataDudeSelectAll_1.JPG" alt="SqlServer - 'Select all' checkbox"
                            width="250" height="246" /></dt>
                    <dd>
                        Figure: SqlServer Management Studio - "select all" checkbox</dd>
                </dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/DataDudeSelectAll_2.JPG" alt="DataDude - No 'select all' checkbox"
                            width="233" height="239" /></dt>
                    <dd>
                        Figure: These is no "select all" checkbox in the table list of DataDude.</dd>
                </dl>
            </li>
            <li><a name="DataDudeCompareScript"></a>
                <h2>
                    DataDude will explain the reason of droping constraints</h2>
                <p>
                    In the data compare, when you make a couple of changes to the customer table it
                    drops every constraint.<br />
                    Please add in the comments it creates at the top the reason for this - it seems unnecessary
                    and melodramatic!
                </p>
                <pre>
                               <span style="color: green">/*<br />
                                   This script was created by Visual Studio on 31/10/2006 at 5:02 PM.<br />
                                   Run this script on schnauzer.AdventureWorks_v1.dbo to make it the same as schnauzer.AdventureWorks_v2.dbo.<br />
                                   This script performs its actions in the following order:<br />
                                   1. Disable foreign-key constraints.<br />
                                   2. Perform DELETE commands.
                                   <br />
                                   3. Perform UPDATE commands.<br />
                                   4. Perform INSERT commands.<br />
                                   5. Re-enable foreign-key constraints.<br />
                                   Please back up your target database before running this script.<br />
                                   */<br />
                               </span>    
                            <span style="color: blue">SET </span>NUMERIC_ROUNDABORT <span style="color: blue">OFF</span><br />    
                            GO
<br />    
                            <span style="color: blue">SET </span>XACT_ABORT, ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL,
<span style="color: blue">ARITHABORT</span><b>, </b>
                            <span style="color: blue">QUOTED_IDENTIFIER</span><b>, ANSI_NULLS </b><span style="color: blue">
                                ON</span><br />    
                            GO
<br />
                            <span style="color: green">-- Pointer used for text / image updates. This might not
                                be needed, but is declared here just in case<br />
                            </span>
                            <span style="color: blue">DECLARE </span>@pv <span style="color: blue">binary</span><b>(16)</b><br />    
                            <span style="color: blue">BEGIN TRANSACTION<br />
                            </span>
                            <span style="color: blue">ALTER TABLE </span>[Sales].[Customer] <span style="color: blue">
                                DROP CONSTRAINT </span>[FK_Customer_SalesTerritory_TerritoryID]
<br />    
                            <span style="color: blue">ALTER TABLE </span>[Sales].[SalesPersonQuotaHistory]
<span style="color: blue">DROP CONSTRAINT </span>[FK_SalesPersonQuotaHistory_SalesPerson_SalesPersonID]
<br />
                            </pre>
                <b>Figure: The update script generated by Data Dude</b> </li>
            <li><a name="AddReference"></a>
                <h2>
                    Inform the developer when adding referrence</h2>
                <p>
                    When the wizard adds new reference to the project,developers will be informed. E.g.
                    If a programmer wants to add a LINQ to SQL class via wizard, the reference to System.Data.Linq.dll
                    will be added to the project.Actually, the programmer may don't know that.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/AddReference.jpg" alt="Add reference and inform programmers" /></dt>
                    <dd>
                        Figure: A reference is added automatically by wizard.</dd>
                </dl>
            </li>
            <li><a name="AutoIncrement"></a>
                <h2>
                    Need "Auto increment the build number on each Compile" check box</h2>
                <p>
                    Add a check box in below form: [x] Auto increment the build number on each Compile:
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/CompileVersionAdd.jpg" alt="Need a option" /></dt>
                    <dd>
                        Figure: In this form need a "Auto increment the build number on each Compile" check
                        box.</dd>
                </dl>
                <p>
                    you can get more from our rules:
                </p>
                <p>
                    <a href="/ssw/Standards/Rules/RulesToBetterSetups.aspx#MeaningfulVersionNumber">Is your
                        version number meaningful?</a><br />
                    <a href="/ssw/Standards/Rules/RulesToBetterSetups.aspx#DisplayVersion">Do you display
                        the version number publicly?</a><br />
                    <a href="/ssw/Standards/Rules/RulesToBetterSetups.aspx#UpdateVersion">Do you always
                        update the version number whenever a new build is made?</a>
                </p>
            </li>
            <li><a name="HTMLFormat"></a>
                <h2>
                    Add Shortcut Key to format HTML</h2>
                <p>
                    If we open a page using Word, we can use Control + Space to remove the style of
                    HTML and make the words with the same font and size. But in Visual Studio 2008,
                    there is no functionality like this. With this shortcut, designer can edit and re-format
                    pages easier.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/VSShortcut.gif" alt="Need a shortcut" /></dt>
                    <dd>
                        Figure: Need a shortcut to format HTML.</dd>
                </dl>
            </li>
            <li><a name="x64Support"></a>
                <h2>
                    Full 64 bit support</h2>
                <p>
                    eg. Edit-and-continue in VS is not supported on the 64-bit platforms
                </p>
                <p>
                    Note: There is a work around. If you need Edit and Continue in Visual Studio on
                    a 64 bit PC, you can temporarily run the debugging process with the &#8220;x86&#8221;
                    option, and then switch back to &#8220;Any CPU&#8221; when you terminate with debugging.
                </p>
                <p>
                    It work perfectly.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/x64Support_VS.jpg" alt="Need x64 support" /></dt>
                    <dd>
                        Figure: How to make Edit and Continue to work on 64 bit</dd>
                </dl>
            </li>
            <li><a name="NicerHelp"></a>
                <h2>
                    Lets give nicer help before dropping into Designer Files</h2>
                <p>
                    I have a dream...
                </p>
                <p>
                    Make it a goal that we don't let developers drop into these files?
                </p>
                <ul>
                    <li>Better 1: Tell the user to look in the app.config file.</li>
                    <li>Even Better 2: Tell me if the name of the Config element you are looking for.</li>
                    <li>Even Better 3: Drop into the config file.</li>
                    <li>Even Better 4: Check for a Connection String and then popup a nice connection form.</li>
                    <li>Even Better 5: Give a list of common mistakes with ticks and crosses (each team
                        would be responsible)</li>
                </ul>
                <table style="border: 1px black solid;">
                    <tr>
                        <td style="width: 200px; text-align: center;">
                            <img src="Images/Tick.gif" />
                        </td>
                        <td>
                            Valid Config Element
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 200px; text-align: center;">
                            <img src="Images/Tick.gif" />
                        </td>
                        <td>
                            Valid Connection String
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 200px; text-align: center;">
                            <img src="Images/Tick.gif" />
                        </td>
                        <td>
                            Ping to Server OK
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 200px; text-align: center;">
                            <img src="Images/Cross.gif" />
                        </td>
                        <td>
                            Database does not exist
                        </td>
                    </tr>
                </table>
                <dl class="image">
                    <dt>
                        <img src="Images/VS_Nicer_1.jpg" alt="Not helpful" /></dt>
                    <dd>
                        Figure: This is not helpful</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/VS_Nicer_2.jpg" alt="Good start" /></dt>
                    <dd>
                        Figure: This is a good start</dd>
                </dl>
                <p>
                    <strong>I have a dream.... Each team that works uses VS.NET eg. LINQ team, Reporting
                        Services team... would have to have the top 20 issues from beta testing.... entered
                        here before they ship</strong></p>
            </li>
			<li><a name="TrainingVideos"></a>
				<h2>Provides "Training Videos" menu item in the help menu</h2>
				<p>Training Videos provide a straitforward way to help the user look into your product and help them have a good understanding. It's better to have a "Training Videos..." item in the help menu. 
				</p>
				<dl class="goodImage">
                    <dt>
                        <img src="Images/TrainingVideos.jpg" alt="Training Videos menu item" />
                    </dt>
                    <dd>
                        Figure: It's better to provide such a "Training Videos..." menu item</dd>
                </dl>
                See our rules <a href="../Rules/RulestoBetterInterfaces-Windows-Applications.aspx#TrainingVideos">Menu - Do you have a Training Videos item?</a>
			</li>
			<li><a name="ReadUIContextMenu"></a>
				<h2>Add a "Read UI/Show Me" menu item in right-click context menu</h2>
				<p>I would love to see:</p>
				<ul>
					<li>A "Read UI/Show Me" option on all controls if they are using Visual Component</li>
					<li>Generally help to have people "read the UI" like they "read code"</li>
					<li>This would be useful for beginners</li>
					<li>This would be useful for managers reviewing code</li>
					<li>This would be useful for VB6 guys</li>
				</ul>
				<p>Eg. One way would to implement this would be:</p>
				<ul>
					<li>right-click ProductID Textbox and select "Read UI/Show Me" </li>
					<li>it would then filter out all irrelevant Component Tray icons (slowly fade out)</li>
					<li>it would then filter out all irrelevant Properties (slowly fade out)</li>
					<li>now it could then use some of Code Rush like big arrows, that would point first to the DataSet in the  left hand toolbox, then it would simulate it being dragged onto the form</li>
					<li>then they would see it moved automatically to the component tray</li>
					<li>then they would see the arrow pointing to the properties in the right hand property window</li>
				</ul>
				
				<dl class="goodImage">
                    <dt>
                        <img src="Images/ShowMeContextMenu.jpg" alt="Read UI/Show Me menu" />
                    </dt>
                    <dd>
                        Figure: I would like to see a "Read UI/Show Me" menu</dd>
                </dl>
			</li>
			<li><a name="FixErrorAutomatically"></a>
			<h2>Rather than add a file to my project and get 600 compile errors, help me automatically fix it</h2>
			<p>When there's a compiler error that is because of a missing assembly reference, VS.NET should be smart enough to offer me suggestions to add the Assembly.</p>
			<p>If there are multiple matching assemblies, show a list that lets me choose which one is the one I want.</p>
			<p>So instead of 600+ errors that says something to the effect of:
			  <pre>
			  The type or namespace name 'Linq' does not exist in the namespace 'Microsoft.SharePoint' (are you missing an assembly<br />
			   reference?) C:\Temp\AdamCogan01\VisualWebPartProject1\VisualWebPartProject1\TeamSite.cs 997 25 VisualWebPartProject1
			  </pre>
			</p>
			<p>
			Analyze the code and find the yellow
			<pre>
			namespace VisualWebPartProject1 {<br />
			using System;<br />
			public partial class TeamSiteDataContext : <span style="background-color: #FFFF00">Microsoft.SharePoint.Linq</span>.DataContext {
			</pre>
			</p>
			   <dl class="image">
                    <dt>
                        <img src="Images/ItemBelowSE.jpg" alt=" The item is the above yellow part." />
                    </dt>
                    <dd>
                        Figure: The yellow should be enough to ask the user if they want to that this .dll</dd>
                </dl>
			</li>
			<li>
			 <h2><a name="UIConvention"></a>Is there a Windows standard UI convention against this?</h2>
			 <p>
			  This is a little one, but the Project Menu in Visual Studio is reasonably prominent.<br />
			  I believe one dialog form, should get one menu item (on the same menu).<br />
              E.g. The TFS Team have done this correctly.
			 </p>
			   <dl class="image">
                    <dt>
                        <img src="Images/OneMenuTwoTabs.jpg" alt="One menu with two tabs" />
                    </dt>
                    <dd>
                        Figure: The TFS team gives one menu item for a form with 2 tabs</dd>
               </dl>
			   <dl class="image">
                    <dt>
                        <img src="Images/TwoTabs01.jpg" alt="Two tabs" />
                    </dt>
                    <dd>
                       Figure: Good - This is the resulting form (One improvement I think would be to rename the tabs, to be 'Areas' and 'Iterations') </dd>
               </dl>
              <p>
              Versus <br />
              The VS.NET team who did it incorrectly
              </p>
              <dl class="image">
                    <dt>
                        <img src="Images/TwoMenusOneTwoTabs.jpg" alt="Two menus two tabs" />
                    </dt>
                    <dd>
                       Figure: Bad - 2 menu items for one form (with 2 tabs) </dd>
               </dl>
               <dl class="image">
                    <dt>
                        <img src="Images/TwoTabs02.jpg" alt="Two tabs " />
                    </dt>
                    <dd>
                      Figure: This is the same form invoked </dd>
               </dl>
			</li>
			<li>
			  <h2><a name="OutputType"></a>VS 2010 - Help me know what to do when trying to solve 'Output Type of Class Library cannot be started directly'</h2>
			  <p>
			   My C++ guys are stuck.<br />
               I thought C++ guys were clever<br />
               See them work out how to use VS 2010 for the first time :)
			  </p>
			  <p>
			   I was very surprised they all had no idea how to click  the "Solution Explorer" tab.<br />
                Suggestions below...
			  </p>
			   <dl class="image">
                    <dt>
                        <img src="Images/AddExecutableProject.jpg" alt="Be told to add an executable project. " />
                    </dt>
                    <dd>
                      Figure:  Why is it telling them to 'Add an executable project'?  (There is already one)</dd>
               </dl>
			   <p>Now I think of it...this stupid dialog does my head in...</p>
			   <p>
			    Suggestion 1: Why is the 'Solution Explorer' tab not mentioned in this horrible message box?</p>
                <p>Suggestion 2: Even better, why not have the 'Solution Explorer' tab selected?</p>
                <p>Suggestion 3: Change this text from
                  <div class="greyBox">
                    <p>
                     ---------------------------<br />
                     Microsoft Visual Studio<br />
                     ---------------------------<br />
                     A project with an Output Type of Class Library cannot be started directly.<br />

                     In order to debug this project, add an executable project to this solution which references the library project. Set the executable project as the startup project.<br />
                    ---------------------------<br />
                     OK   <br />
                     ---------------------------

                    </p>
                  </div>
                  To
                  <div class="greyBox">
                   <p>
                    ---------------------------<br />
                    Microsoft Visual Studio<br />
                    ---------------------------<br />
                    <span style="background:yellow;">Your currently selected project is 'xxx'.</span> A project with an Output Type of Class Library cannot be started directly.<br />

                    <span style="background:yellow;">Select the 'Solution Explorer' tab and select any of these valid projects:<br />
                   - xxx  <br />
                   - yyy</span>

                    In order to debug this project, add an executable project to this solution which references the library project. Set the executable project as the startup project.<br />
                     ---------------------------<br />
                      OK   <br />
                     ---------------------------
                   </p>
                  </div></p>
                  <p>Suggestion 4: make the message boxes better by including an image like this
                    <dl class="image">
                    <dt>
                        <img src="Images/ShowNewbieAnImage.jpg" alt="Show a newbie an image " />
                    </dt>
                    <dd>
                      Figure: Show a newbie an image like this</dd>
                     </dl>            
                  </p>
                  <p>
                  Suggestion 5: Change the whole form from a dumb message box (with only text), to an intelligent form with the above message plus combo with valid projects they can select and press a "Continue" button
                  </p>			   
			</li>
			<li>
			  <h2><a name="ScrollBarHorrible"></a>Right click scroll bars are horrible to work with
			  <span style="font-weight: bold; color: red">*Fixed with <a href="http://weblogs.asp.net/scottgu/archive/2010/10/15/patch-for-vs-2010-scrolling-context-menu.aspx">Patch for VS 2010 "Scrolling Context Menu"*</a></span></h2>
			   <dl class="image">
                    <dt>
                        <img src="Images/MakeTheClickOnVisible.jpg" alt="Use the space and make the node visible" />
                    </dt>
                    <dd>
                      Figure: Can we use this space please + make the node I clicked on visible (in this case it says 'WebFrontEnd')</dd>
                </dl>          
			</li>
			<li>
			  <h2><a name="NiceURLs"></a>Nice URLs for the Gallery</h2>
			  <p>
			  Have I mentioned getting nice URLs would be great for the Gallery?  <br />
			  <br />
            Eg.<br />
            <a href="http://visualstudiogallery.msdn.microsoft.com/3d37ce86-05f1-4165-957c-26aaa5ea1010/">http://visualstudiogallery.msdn.microsoft.com/3d37ce86-05f1-4165-957c-26aaa5ea1010/</a><br />
            to<br />
            <!--SSW Link Auditor - Ignore begin-->http://visualstudiogallery.msdn.microsoft.com/Test-Attachment-Cleaner/<!--SSW Link Auditor - Ignore end-->
			  </p>
			</li>
			<li>
			 <h2><a name="ImproveSetupExp01"></a>Improve the VS.NET 2010 setup experience #1</h2>
			  <ol>
			   It is already great, so these are little ones:
			   <li>Can we have a 2nd status bar so we know the total time remaining?</li>
			   <li>Can you have the reboot any earlier (before the VC 9.0 and VC 10.0 Runtimes) and tell us specifically <br />
                    "There will be one reboot required in approximately 3 minutes"</li>
			   <li>Let me resize the window so it can go from the top to the bottom of the screen</li>			   
			  </ol>
			  <dl class="image">
                    <dt>
                        <img src="Images/AddThreeThings.jpg" alt="Add three things" />
                    </dt>
                    <dd>
                      Figure: 3 little things would make this form even greater</dd>
                </dl> 
			</li>
			<li>
			  <h2><a name="ImproveSetupExp02"></a>Improve the VS.NET 2010 setup experience #2</h2>
			  <dl class="badImage">
                    <dt>
                        <img src="Images/CancelClose.jpg" alt="Cancel the Close" />
                    </dt>
                    <dd>
                      Figure: Bad - It is currently running so "Close" should be "Cancel"</dd>
                </dl> 
    			<dl class="goodImage">
                    <dt>
                        <img src="Images/ThreeTrickyOption.jpg" alt="Three tricky option" />
                    </dt>
                    <dd>
                      Figure: Good - Now it shows "Close" now it is finished? But bad as I am not sure whether to "Next" or "Complete" or "Close" now</dd>
                </dl> 
			</li>
			<li>
			 <h2><a name="AdditionalMenu"></a>Additional Menus should indicate where they come from</h2>
			 <p>
			  If I am I am looking at an additional menu on someone elses PC, there should be a way to see where they came from.<br />
              2 ideas... add an additional "About" menu item... or add a tooltip with the assembly name
			 </p>
			 <dl class="image">
                    <dt>
                        <img src="Images/MenuIndication.jpg" alt="Menu indication " />
                    </dt>
                    <dd>
                      Figure:  The "Process Editor" menu should indicate that is comes from VS2010 PowerTools</dd>
                </dl> 
			</li>

            <li>
		        <h2><a name="LastAnonymous"></a>Help | About  -  Help me see what was the last thing I installed</h2>
		            <ol>
		              <li>Can I have a 2nd column in this grid "Date Installed"</li>
		              <li>And sort it descending, so I can see the most recent gear I have put on this VM</li>
		              <li>And be super cool and add a link "Tweet this extension"</li>		  
		            </ol>
		            <dl class="image">
				        <dt><img src="Images/DescendingOrder.JPG" alt="Put this in descending order "/></dt>
				        <dd>Figure: Put this in descending order of installation</dd>
                    </dl>
		            <dl class="image">
				         <dt><img src="Images/FullListOrder.JPG" alt="I need full list order "/></dt>
				         <dd>Figure: Give me something to read while waiting&#8230; While looking at this screen I would like to see the list (in descending order) of the last things installed (from Extensions to Service Packs)</dd>
                    </dl>
	        </li>
	        <li>
	         <h2><a name="RCSetup"></a>Setup.exe - Help me know not to install SQL Server 2008 Express Service Pack 1</h2>
	          <dl class="image">
				         <dt><img src="Images/AddText.JPG" alt="Add text"/></dt>
				         <dd>Figure: Just a little bit of text</dd>
                    </dl>
	        </li>
	        <li>
    	      <h2><a name="ClickAround"> </a>Let me click around (Little one) - without making me reach for the keyboard</h2>
    	      <p>
    	        I would love to be able to click around, when I am exploring... when I am demoing.... and not have to reach for the keyboard to hit F7 (I have never really used right click)<br />
                I believe this is the <b>*most*</b> common operation that is done from this window.<br />
                PS: I wish I could see stats on what the top operations from this form are?
    	      </p>
    	      <dl class="image">
				         <dt><img src="Images/ClickAroundIcon.JPG" alt="Click around icon or link "/></dt>
				         <dd>Figure: In the red square, add hyperlink 'View Code' (or maybe a smart tag icon)</dd>
                    </dl>
	        </li>
	        <li>
    	      <h2><a name="ViewClassDiagram"></a>Dev11 Feature Request - 'View Class Diagram'</h2>
    	         <dl class="image">
				         <dt><img src="Images/ViewClassDiagram.JPG" alt="View Class Diagram "/></dt>
				         <dd>Figure: "View Class Diagram" adds a file! Avoid surprises and rename it to 'Add'</dd>
                    </dl>	        
	        </li>
	        <li>
    	      <h2><a name="SearchIntelligently"> </a>VS Extension Manager - help me intelligently on search</h2>
    	        <dl class="image">
				         <dt><img src="Images/AddLink.JPG" alt="Add a link here "/></dt>
				         <dd>Figure: Add a link 'Try the Online Gallery' </dd>
                    </dl>	
                <dl class="image">
				         <dt><img src="Images/OutlookExample.JPG" alt="Outlook is a good example "/></dt>
				         <dd>Figure: A good example from Outlook </dd>
                    </dl>	
	        </li>
	        <li>
    	      <h2><a name="TabOrder"></a>Give me a sensible Default Tab Order</h2>
    	      <p>The tab order when you create a new form defaults to the order you add controls.  The default should be more sensible - from the top of the form to the bottom.</p>
    	      <dl class="badImage">
				         <dt><img src="Images/MessyOrderControl.JPG" alt="The messy order"/></dt>
				         <dd>Figure: Bad Example - The default tab order is based on the order controls were added and does not make sense </dd>
                    </dl>	
    	      <dl class="goodImage">
				         <dt><img src="Images/GoodTabOrder.JPG" alt="Clear tab order"/></dt>
				         <dd>Figure: Good Example - The default tab order is from top to bottom</dd>
                    </dl>	
	        </li>

        </ol>
        <h2>
            Creating Visual Studio Add-in with EnvDTE Suggestions</h2>
        <ol>
            <li>
                <h2>
                    <a name="noerrormessage"></a>Hard to debug No error message</h2>
                <p>
                    Debugging is a tough mission when working on Visual Studio Add-in projects.<br />
                    When a runtime error occurred, Visual Studio will keep itself quiet instead of throw
                    an exception and tell developers the details.
                </p>
                <p>
                    You need error handling code almost everywhere, otherwise it is hard to know if
                    there are any errors and where are the errors.
                </p>
            </li>
            <li>
                <h2>
                    <a name="uselesserrormessages"></a>Hard to debug Unhelpful or useless error messages</h2>
                <p>
                    Sometimes the error messages you get arent something that helpful.</p>
                <p>
                    Example:<br />
                    <img border="0" src="Images/UnknownError.gif" alt="Unknown Error" width="437" height="165"><br />
                    <b>Figure: An error message that actually tells you nothing useful.</b>
                </p>
                <p>
                    Visual Studio doesnt know what is wrong, how could we know then?
                    <br />
                    <br />
                    Apparently the only useful data in this message box is the error number 80131534.
                    But, try to do a search on MSDN for the error number 80131534, you actually get
                    no result. Google cant help on this too.
                </p>
                <br />
                <p>
                    *Visual Studio 2005 Beta 2:<br />
                    <img border="0" src="Images/VS2005UnknownError.gif" alt="Visual Studio 2005 Unknown Error"
                        width="539" height="178"><br />
                    <b>Figure: Visual Studio 2005 Beta 2 has a similar problem.</b>
                </p>
            </li>
            <li>
                <h2>
                    <a name="notimplemented"></a>EnvDTE is not completely implemented?</h2>
                <p>
                    <img border="0" src="Images/NotImplemented.gif" alt="Not Implemented" width="207"
                        height="100"><br />
                    <b>Figure: The exception message is "Not implemented".</b>
                </p>
                <p>
                    <pre>
try
<br />
{
<br />
&nbsp;&nbsp;// ** EnvDTE's starting index is 1, it is not Zero-Based
<br />
&nbsp;&nbsp;for (int i = 1; i <= applicationObject.Solution.Projects.Count; i++)
<br />
&nbsp;&nbsp;{
<br />
&nbsp;&nbsp;&nbsp;&nbsp;MessageBox.Show(applicationObject.Solution.Projects.Item(i).FileName);
<br />
&nbsp;&nbsp;}
<br />
}
<br />
catch(Exception ex)
<br />
{
<br />
&nbsp;&nbsp;MessageBox.Show(<span style="background-color: #FFFF00">"Exception Message:
    " + ex.Message</span>);<br />
}
<br /></pre>
                    <b>Figure: The code to reproduce this message box.</b>
                </p>
                <p>
                    When we loop through each project in a solution, if the project is an unmodeled
                    project, you will get the exception message "Not implemented".</p>
                <p>
                    Reference URL: <a href="/ssw/Redirect/Microsoft/MSDNConstants.htm" target="_blank">http://msdn.microsoft.com/library/default.asp?url=/library/en-us/vsintro7/html/vxlrfvsprojectkindconstants.asp</a></p>
                <p>
                    Database project (.dbp) is 1 of the unmodeled project we have discovered.<br />
                    Please let us know if you know any other unmodeled project types.
                </p>
            </li>
            <li>
                <h2>
                    <a name="unfinishabledte"></a>Confusion for developers - DTE.DTE.DTE?</h2>
                <p>
                    Why do we have something like this?</p>
                <p>
                    <img border="1" src="Images/UnfinishableDTE.gif" alt="Unfinishable DTE" width="600"
                        height="281"><br />
                    <b>Figure: Unfinishable DTE.DTE.DTE</b></p>
            </li>
            <li>
                <h2>
                    <a name="2dte"></a>Confusion for developers - EnvDTE._DTE and EnvDTE.DTE</h2>
                <p>
                    EnvDTE._DTE and EnvDTE.DTE seem like have no differences, why do we have both _DTE
                    and DTE?</p>
                <p>
                    <img border="1" src="Images/2DTE.gif" alt="DTE" width="640" height="260"><br />
                    <b>Figure: _DTE and DTE both look the same.</b></p>
                <br />
                <p>
                    *Visual Studio 2005 Beta 2:<br />
                    These _DTE and DTE still exist in Visual Studio 2005.<br />
                    However, we have something new known as EnvDTE80.DTE2 for Visual Studio 2005 add-in
                    projects, and there is no such thing as EnvDTE80._DTE2.<br />
                    <br />
                    <img border="1" src="Images/DTE2.gif" alt="DTE" width="268" height="53"><br />
                    <b>Figure: EnvDTE80.DTE2 will be used on creating add-in for Visual Studio 2005.</b>
                </p>
            </li>
        </ol>
        <h2>
            Creating Add-In for Visual Studio 2005 Beta 2 Suggestions</h2>
        <ol>
            <li>
                <h2>
                    <a name="AccessViolationException"></a>AccessViolationException</h2>
                <p>
                    <img src="Images/AccessViolationException.gif" width="402" height="246" alt="AccessViolationException">
                    <br />
                    <b>Figure: AccessViolationException was unhandled</b>
                </p>
                <p>
                    <b>When adding buttons to command bar:</b></p>
                <p>
                    If the first control that gets added to a new command bar is a command button, Visual
                    Studio throws an AccessViolationException.
                    <br />
                    <br />
                    How we overcome this:
                    <pre>
CommandBarComboBox dummyComboBox = (CommandBarComboBox)AddinCommandBar.Controls.Add(MsoControlType.msoControlComboBox, missing, missing, missing, missing);
<br />
dummyComboBox.Visible = false;</pre>
                    <br />
                    Using code above, add a dummy CommandBarComboBox first, set the Visible property
                    to false, then start adding the command bar button.
                </p>
                <p>
                    <b>When setting command button 'FaceId' and/or 'Style' properties values:</b></p>
                <p>
                    <pre>
CommandBarButton.FaceId = 620;
<br />
CommandBarButton.Style = MsoButtonStyle.msoButtonIconAndCaption;</pre>
                    <br />
                    Sometimes the code above throw AccessViolationException, sometimes they don't.
                </p>
            </li>
            <li>
                <h2>
                    <a name="COMException"></a>Throws COMException randomly</h2>
                <p>
                    <img src="Images/COMException.gif" width="558" height="233" alt="COMException">
                    <br />
                    <b>Figure: COMException was unhandled</b>
                </p>
                <p>
                    The exact same code, sometimes it works, and sometimes it doesn't work and throws
                    COMException. It mostly happens on the code that creates a command bar:
                    <br />
                    <pre>
EnvDTE80.DTE2.Commands.AddCommandBar("My command bar", EnvDTE.vsCommandBarType.vsCommandBarTypeToolbar, missing, 1);
                    </pre>
                </p>
            </li>
        </ol>
        <h2>
            FxCop</h2>
        <ol>
            <li>
                <h2>
                    <a name="FxCopAnalysisReport"></a>FxCop report will contain more information</h2>
                <p>
                    FxCop Analysis Report only contains the details of failed rules:
                    <br />
                    <img src="Images/FxCopAnalysisReport.gif" width="728" height="202" alt="FxCop Analysis Report"
                        border="1">
                    <br />
                    <b>Figure: FxCop Analysis Report doesn't have a summary.</b>
                </p>
                <p>
                    The report will show a summary like what Code Auditor report has:
                    <br />
                    <img src="Images/CodeAuditorReportSummary.gif" width="290" height="211" alt="Code Auditor Report Summary"
                        border="1">
                    <br />
                    <b>Figure: Code Auditor report has summary of scan result.</b>
                </p>
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