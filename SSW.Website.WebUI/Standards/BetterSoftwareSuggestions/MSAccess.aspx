<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="Software Suggestions for MS Access" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

    <p>
        <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14">
        Indicates important</p>
    <div class="TableOfContents">
        <h3>
            Software Suggestions Access</h3>
        <ol>
            <li><a href="#AccessLinkingXML">Linking Tables to XML Files</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14"></li>
            <li><a href="#AccessReference">Access should have an easy way to resolve Reference problems</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#AccessDeployment">Access applications should be easily deployed</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#AccessView">Access needs a Search View</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#DisconnectGracefully">Access should disconnect gracefully from SQL Server</a></li>
            <li><a href="#Trace">Forms should have a Trace property</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#ConvertToNET">Convert to Windows .NET Application</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
            <li><a href="#ConvertToRS">Easy way to convert Reports to Reporting Services reports</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14"></li>
            <li><a href="#FileExplorer">File Explorer needs to open the correct version of Access every time</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14"></li>
            <li><a href="#WindowsUpdate">Access 2003 Runtime and Windows Update</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14"></li>
            <li><a href="#LaunchesIssue">The 'Configuring' message is unacceptable (it should be a one time event - not every time you open a different Access version)</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14"></li>
            <li><a href="#combolookup">Combo box with lookup button</a></li>
            <li><a href="#AccessDialog">Access needs a GetFileDialog and GetFolderDialog</a></li>
            <li><a href="#ObjectSize">Object Sizes</a></li>
            <li><a href="#Decompile">Decompile in the Compare and Compact menu</a></li>
            <li><a href="#AccessSnapshot">Snapshot Viewer</a></li>
            <li><a href="#TestHarness">Access should support a test harness like nUnit</a></li>
            <li><a href="#LogStatements">Access should give a log of all statements that SQL Server could not process</a></li>
            <li><a href="#DataAnalyzer">What has happened to Data Analyzer?</a></li>
            <li><a href="#FullTextIndexes">Full Text Indexes in Jet 5.0 please</a></li>
            <li><a href="#Links">More From Allen Browne</a></li>
            <li><a href="#SSMA">SQL Server Migration Assistant for Access (SSMA Access)</a></li>
            <li><a href="#Compile">Compile to hide tables and queries</a> </li>
            <li><a href="#ImproveFind">Improve the "Find and Replace"</a> </li>
            <li><a href="#InstallIssue">Access 2003 Runtime - Error messages after running Access 2003 Runtime for the first time (when not an Adminstrator)</a></li>
            <li><a href="#Commandbars">Access 2003 Runtime and the Commandbars</a></li>
            <li><a href="#References">Access 2003 Runtime and changing References</a></li>
            <li><a href="#Associations">File Associations should not continually change</a></li>
            <li><a href="#XMLView">Suggestion for Access 2010 – Macro's should have XML view </a></li>
            <li><a href="#MacrosViaXML">Help me work with the Macros via XML</a></li>
        </ol>
    </div>
    <ol>
        <li><a name="AccessLinkingXML"></a>
            <h2>
                Linking Tables to XML Files<img src="/ssw/Images/Validation/redstar.gif" alt="Red star"
                    width="18" height="14"></h2>
        </li>
        <p>
            Microsoft Access should support the ability to use an XML file as a linked table,
            just like it supports linking a table to a SQL backend.
        </p>
        <p>
            Further, if they include an XML parser it would be easy to implement a web service
            linked table.
        </p>
        <p>
            For example, a supplier may publish their pricelist as a DataSet returned from a
            WebService. By entering the path to the WebService then selecting the function,
            Access could then import this as a linked table.
        </p>
        <p>
            <img src="Images/Access1.gif" alt="Access" width="600" height="162"><br>
            <span class="Caption">Figure: Access supports links to many data sources, but not XML.</span>
        </p>
        <li><a name="AccessReference"></a>
            <h2>
                Access should have an easy way to resolve Reference problems<img src="/ssw/Images/Validation/redstar.gif"
                    alt="Red star" width="18" height="14"></h2>
            <p>
                At the moment when there is a bad reference you get an unhelpful error message &quot;<span
                    class="largetext"> <span style="font-family: Courier;">Compile Error Can't find project
                        or library&quot;</span> <span style="font-family: Verdana;">and the code will break
                            on a line containing the LEFT function. </span></span>
            </p>
        </li>
        <li><a name="AccessDeployment"></a>
            <h2>
                Access applications should be easily deployed<img src="/ssw/Images/Validation/redstar.gif"
                    alt="Red star" width="18" height="14"></h2>
            <p>
                You should be able to put the runtime in the folder of the MDE and xcopy it to another
                machine and it should work.
            </p>
        </li>
        <li><a name="AccessView"></a>
            <h2>
                Access needs a Search View<img src="/ssw/Images/Validation/redstar.gif" alt="Red star"
                    width="18" height="14"></h2>
            <p>
                At the moment there are the Form and Continuous views. Access needs another view
                that doesn't have the navigation buttons at the bottom but instead should have a
                search form that is bound to table. This allows for easier and more intuitive navigation
                of large data sources.</p>
            <p>
                We know there is existing functionality to search fields, but the interface is not
                intuitive and robust enough.</p>
            <dl class="badImage">
                <dt>
                    <img src="Images/AccessFind.gif" width="600" height="369" alt="Find Dialog in Access" />
                </dt>
                <dd>
                    Figure: Access' built in Find Dialog - Not intuitive (Bad)
                </dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img src="Images/AccessSearch.gif" width="600" height="605" alt="A Search Form for Access" />
                </dt>
                <dd>
                    Figure: A Search Form to view data from a Table - Allows for better queries (Good)
                </dd>
            </dl>
        </li>
        <li><a name="DisconnectGracefully"></a>
            <h2>
                Access should disconnect gracefully from SQL Server</h2>
            <p>
                If your Access front-end is linked to a SQL backend, you will encounter a large
                number of errors and unsightly message boxes if the SQL Server connection is closed
                for whatever reason. Access should be able to recover gracefully from this common
                problem, rather than bombard the user with dialogs. Read <a href="resources/AccessRecoverGracefully.doc">
                    more information</a> about this issue.</p>
        </li>
        <li><a name="Trace"></a>
            <h2>
                Forms should have a Trace property<img src="/ssw/Images/Validation/redstar.gif" alt="Red star"
                    width="18" height="14"></h2>
            <p>
                The form designer should have a property to turn tracing on, similar to ASP.NET
                2 (see figure below). Tracing will log all the methods that are called as well as
                the time taken by each method. This is particularly useful identifying the causes
                of slow loading forms.</p>
            <img src="Images/AccessTrace.gif" width="239" height="300" alt="Tract Property"><br>
            <b>Figure: Turn tracing on through the properties window</b> </li>
        <li><a name="ConvertToNET"></a>
            <h2>
                Convert to Windows .NET Application<img src="/ssw/Images/Validation/redstar.gif"
                    alt="Red star" width="18" height="14"></h2>
            <p>
                On the Forms you want to have an option that allows you to convert to a One Click
                Windows .NET Form (which turns the Access form into a .NET Windows Form) and have
                people use that through the browser. This allows a Skilled access developer to deploy
                a basic data entry form to the browser, and have the enterprise entering data. We
                know that the conversion progress may be complicated and that every piece of functionality
                will not be available, so if you want this function you should be able to set a
                property on the form that says &quot;.NET Compatible&quot; (i.e. disables some of
                the features in access to increase compatibility)</p>
        </li>
        <li><a name="ConvertToRS"></a>
            <h2>
                Easy way to convert Reports to Reporting Services reports<img src="/ssw/Images/Validation/redstar.gif"
                    alt="Red star" width="18" height="14"></h2>
            <p>
                Access should have a button to deploy a report to reporting services, that turns
                it into an RDL file, deploys and opens it in a browser. We know that the conversion
                progress may be complicated and that every piece of functionality will not be available,
                so if you want this function you should be able to set a property on the form that
                says &quot;Reporting Services Compatible&quot; (i.e. disables some of the features
                in access to increase compatibility)</p>
        </li>
        <li><a name="FileExplorer"></a>
            <h2>
                File Explorer needs to open the correct version of Access every time<img src="/ssw/Images/Validation/redstar.gif"
                    alt="Red star" width="18" height="14"></h2>
            <p>
                Currently it opens the last version of Access that was opened! This is not a solution.
            </p>
            <p>
                It gets worse when the user has Access 2007 installed + a Access 2003 Runtime version. After using the runtime, double clicking on an .mdb makes it try to open a 2007 version in 2003.
            </p>
        </li>
        <li><a name="WindowsUpdate"></a>
            <h2>
                Access 2003 Runtime and Windows Update<img src="/ssw/Images/Validation/redstar.gif"
                    alt="Red star" width="18" height="14"></h2>
            <p>
                When you have an Access 2003 Runtime installed (only) + using Office 2007, Windows Updates recommends (aka gives end users grief) patching Word 2003 etc (which they don't even have). 
            </p>
            <p>
            PS: Times like this I wish Access was not tied in with Office.
            </p>
        </li>
        <li><a name="LaunchesIssue"></a>
            <h2>
                The 'Configuring' message is unacceptable (it should be a one time event - not every time you open a different Access version)<img src="/ssw/Images/Validation/redstar.gif"
                    alt="Red star" width="18" height="14"></h2>
            <p>
                When you have Access 2003 and 2007 you get a very long 'Configuring' message when you open them alternatively.
            </p>
            <p>
                This is not good, but I can live with it as a developer.
            </p>
            <p>
                It really impacts our customers, when we give them a runtime in 2003, and they use Access 2007. Those customers are getting this message all day long.
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/LaunchesIssue_1.jpg" alt="" /></dt>
                <dd>
                    Figures: This long message is caused only because they launched the Microsoft Access 2003 runtime prior </dd>
            </dl>
            <dl class="image">
                <dt>
                    <img src="Images/LaunchesIssue_2.jpg" alt="" /></dt>
                <dd>
                    Figures: If they exit Access 2007, then they open the Access 2003 runtime app, the penalty is the long message again</dd>
            </dl>
        </li>
        <li><a name="combolookup"></a>
            <h2>
                Combo box with lookup button</h2>
            One of the problems that Access developers have when they design in a bound environment
            is that they put combo boxes on forms which show a big list. This is not only hard
            to navigate once you start showing hundreds of records, it also causes the form
            to take longer to load, especially when you upsize to SQL Server.
            <p>
                A better option is to include next to the combo box an ellipsis button "..." which
                pops up a lookup form.</p>
            <dl class="badImage">
                <dt>
                    <img src="Images/AccessCombobox.gif" width="606" height="334" /></dt><dd>Figure: Developers
                        typically return all records for a data bound combobox field, which can increase
                        form load time and put unnecessary strain on the database</dd></dl>
        </li>
        <li><a name="AccessDialog"></a>
            <h2>
                Access needs a GetFileDialog and GetFolderDialog</h2>
            <p>
                Access needs to have a built in File and Folder dialog so that it doesn't need to
                be calling the Office API as it requires a lot of work. It should be as simple as
                one would use it in Visual Studio.</p>
            <pre>Dim MyOpenFileDialog As System.Windows.Forms.OpenFileDialog<br>
                MyOpenFileDialog.InitialDirectory = &quot;C:\&quot;<br>
                MyOpenFileDialog.OpenFile() </pre></li>
        <li><a name="ObjectSize"></a>
            <h2>
                Object Sizes</h2>
            <p>
                There should be a column in the Form designer that tells you the size of each object.</p>
        </li>
        <li><a name="Decompile"></a>
            <h2>
                Decompile in the Compare and Compact menu</h2>
            <p>
                Access should automatically build and decompile when the user selects the Compact
                and Repair menu.</p>
        </li>
        <li><a name="AccessSnapshot"></a>
            <h2>
                Snapshot Viewer</h2>
            <p>
                Microsoft's Access Snapshot Viewer is a useful tool for viewing and printing Snapshot
                files (*.snp). While we can use its graphical interface, it would be good if the
                program could also be operated using command-line switches, such as '/openfile'
                or '/print'.
            </p>
        </li>
        <li><a name="TestHarness"></a>
            <h2>
                Access should support a test harness like NUnit</h2>
        </li>
        <p>
            Encourage the use of writing Unit Tests.<br>
            Change Northwind to have a class of Unit Tests.<br>
            Make a way of calling nUnit as its test harness.
        </p>
        <li><a name="LogStatements"></a>
            <h2>
                Access should give a log of all statements that SQL Server could not process</h2>
        </li>
        <p>
            If you call<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SELECT * FROM Customers WHERE CustomVBA_BusinessDays(DateStart,
            DateEnd) > 200<br>
            This would be slower than<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SELECT * FROM Customers WHERE CustomerID='BOLID'<br>
            <br>
            Please log to a log table (or a trace file in the current directory).
        </p>
        <li><a name="DataAnalyzer"></a>
            <h2>
                What has happened to Data Analyzer?</h2>
            <p>
                I think it was a great tool I know it was discontinued I think it should reappear
                in Access!</p>
            <p>
                Users should be used to "discover" data... and only afterwards, go into Excel or
                Reporting Services.<br>
                If the cube is decent (Levels / AVG's, MAX's, etc), it's a really cool thing. I
                find it shocking that we don't promote it as real world tool for execs and I hope
                MS keeps upgrading it.<br>
                Note: I am not saying to show any MDX that is advanced and MDX can be done manually
                or in Proclarity (not Panorama).</p>
            <p>
                Maybe OLAP data is a bit of a move away from core stuff but then again so is SharePoint
                integration in Access 12 and that does not seem to be a bad thing.</p>
        </li>
        <li><a name="FullTextIndexes"></a>
            <h2>
                Full Text Indexes in Jet 5.0 please</h2>
        </li>
        <p>
            As per <a href="/ssw/Redirect/JoeyOnSoftwareMSJet.htm">http://www.joelonsoftware.com/items/2005/10/17.html</a></p>
        <li><a name="Links"></a>
            <h2>
                Links</h2>
        </li>
        <ul type="disc">
            <li><a href="/ssw/Redirect/Access/AccessFlaws.htm" target="_blank">Allen Browne has
                some Flaws in Access located on his</a>
                <img border="0" src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17" height="11">
            </li>
            <li><a href="/ssw/Redirect/Pinpub.htm" target="_blank">The Access community speaks up
                in Gary Robinsons article.</a>
                <img border="0" src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17" height="11">
            </li>
        </ul>
        <li><a name="SSMA"></a>
            <h2>
                Better SQL Server Migration Assistant for Access (SSMA Access)
            </h2>
            <p>
                This Microsoft utility is not ready <a href="/SSW/upsizingPRO/SQL_Server_Migration_Assistant_Wizard_for_Access.aspx">
                    SQL Server Migration Assistant Wizard for Access</a>
            </p>
        </li>
        <li><a name="Compile"></a>
            <h2>
                Compile to hide tables and queries</h2>
            <p>
                Microsoft Access should support the ability to compile an Access Database to an
                EXE so that the end user cannot see the tables and queries.
            </p>
        </li>
        <li><a name="ImproveFind"></a>
            <h2>
                Improve the "Find and Replace"</h2>
            <p>
                The "Find and Replace" can be improved a little by:
                <br />
                <ol>
                    <li>Change these dialogs to default to expanding the search</li>
                    <li>Move the dialog if it is covering the found text</li>
                    <li>Change the message box to say:
                        <br />
                        <ul>
                            <li>0 records found in the field 'SupplierID' for exactly 'Olive'. Would you like to
                                expand the search to try "like 'Olive'"? [Yes] [No]</li>
                            <li>0 records found in the field SupplierID? Would you like to expand the search to
                                all fields? [Yes] [No]</li>
                        </ul>
                    </li>
                </ol>
                <img src="Images/AccessFindReplace.gif" alt="Find and Replace" width="1004" height="550"><br>
                <b>Figure: The "Find and Replace" window</b>
            </p>
        </li>
        <li><a name="InstallIssue"></a>
            <h2>
                Access 2003 Runtime - Error messages after running Access 2003 Runtime for the first time (when not an Adminstrator)</h2>
            <p>
                You install the Access 2003 runtime as an administrator, then:
            </p>
            <ol>
                <li>
                    Running the Access 2003 runtime (for the first time and thereafter) as an Administrator is fine.
                </li>
                <li>
                    Running the Access 2003 runtime as an Non Administrator gives 3 error messages (only for the first time). Subsequent times are fine. This is a terrible first impression.
                </li>
            </ol>
            <dl class="image">
                <dt>
                    <img src="Images/InstallIssue_F1.jpg" alt="" /></dt>
                <dd>
                    Figure: Error message #1</dd>
            </dl>
            <dl class="image">
                <dt>
                    <img src="Images/InstallIssue_F2.jpg" alt="" /></dt>
                <dd>
                    Figure: Error message #2</dd>
            </dl>
            <dl class="image">
                <dt>
                    <img src="Images/InstallIssue_F3.jpg" alt="" /></dt>
                <dd>
                    Figures: Error message #3. Unacceptable warning message after installing Access 2003 runtime as a non administrator</dd>
            </dl>
            <p>
                    Note: None of this rubbish happened with the Access 97 runtime.
            </p>
            <p>
                    Note: This is a little harsh. Unfortunately the world of security requirements has dramatically changed since Access 97. You don't get these prompts if the file is digitally signed. That is how you work around this for Access 2003. <a href="/ssw/Redirect/Access/AccessHelp.htm">Digitally sign a file or macro project</a><img border="0" src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17" height="11">
            </p>
            <p>
                    Note: In Access 2007 this has been fixed (as it now uses Trusted Folders)... however the above bug with the runtime should be fixed.
            </p>
        </li>
        <li><a name="Commandbars"></a>
            <h2>
                Access 2003 Runtime and the Commandbars</h2>
            <p>
                When the user moves the location of the commandbar (aka Toolbar), the location is not saved when in runtime mode.
            </p>
            <p>
                This is a bug.
            </p>
            <p>
                Note: Access 2007 solves this by using a ribbon and the user cannot move them
            </p>
        </li>
        <li><a name="References"></a>
            <h2>
                Access 2003 Runtime and changing References</h2>
            <p>
                When you delete a reference it actually doesn't release the reference. You can see the reference is still there when you loop through the references in VBA.
            </p>
            <p>
                The problem is Access crashes happen after this (this is not consistent and we are fairly sure this is the issue).
            </p>
        </li>
        <li><a name="Associations"></a>
            <h2>
                File Associations should not continually change</h2>
            <p>
                Currently Microsoft makes this decision based on what was the last copy of Access opened. This is a mistake.
            </p>
            <p>
                A mdb should open in the version it was designed for.
            </p>
            <p>
                Note: A bootstapper application is needed (this is what the Visual Studio Team did).
            </p>
        </li>
        <li>
          <h2><a name="XMLView"></a>Suggestion for Access 2010 – Macro's should have XML view </h2>
           <dl class="image">
                <dt><img src="Images/XMLView.jpg" alt="XML View" /></dt>
                <dd>Figure: Wish I could copy this as text via a button 'Edit Macro XML' (like a SQL view in a query)</dd>
            </dl>
        </li>

        <li>
            <h2><a name="MacrosViaXML"></a>Help me work with the Macros via XML</h2>
            <p>I wish could copy the text via a button "Edit Macro XML"... And the XML was formatted nicely :-)</p>
            <dl class="image">
                <dt><img src="Images/MacrosViaXML.jpg" alt="Add a menu item 'View XML'" /></dt>
                <dd>Figure: Add a menu item "View XML"</dd>
            </dl>
            <dl class="code">
                <dt>
                <pre>
    < ?xml version="1.0" encoding="UTF-16" standalone="no"?>
    < DataMacros xmlns="http://schemas.microsoft.com/office/accessservices/2009/11/application">< DataMacro Event="AfterUpdate">
    < Statements>< ConditionalBlock>< If>< Condition>[Table1].[Salary]&gt;50000< /Condition>< Statements>< EditRecord>< Data/>
    < Statements>< Action Name="SetField">< Argument Name="Field">Table1.Notes< /Argument>< Argument Name="Value">
    "he is paid too much"
    < /Argument>< /Action>< /Statements>< /EditRecord>< /Statements>< /If>
    < Else>< Statements>< EditRecord>< Data/>< Statements>< Action Name="SetField">< Argument Name="Field">Table1.Notes
    < /Argument>< Argument Name="Value">"too little"< /Argument>< /Action>< /Statements>< /EditRecord>< /Statements>< /Else><
     /ConditionalBlock>< /Statements>
    < /DataMacro>< /DataMacros>
                </pre>
                </dt>
                <dd>Figure: This ugly URL should be changed to nicely formatted XML</dd>
            </dl>
        </li>

    </ol>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
    </p>
</asp:Content>
