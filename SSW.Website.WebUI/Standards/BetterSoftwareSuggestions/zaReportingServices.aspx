<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft SQL Reporting Services Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label><p>
        Every day there are little things that we find annoying with the programs we use.
        Sometimes we just can't quite do what we want or there may just be room for improvement.
        We could write books about it, like Annoyances.org, but we thought this would be
        more constructive. Here is what we would like Microsoft to change within SQL Server
        Reporting Services.</p>
    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
        style="width: 100%">
        <tr>
            <td>
                <b>Microsoft SQL Reporting Services Suggestions<br />
                </b>
                <ol>
                    <li><a href="#templates">ASP.NET 2 Master page style report templates</a></li>
                    <li><a href="#OutputCSS">Report output CSS for specific report format</a></li>
                    <li><a href="#InheritMaster">Add option to inherit a template (aka Master Page)</a></li>
                    <li><a href="#EditIntegration">Browser Integration for Editing Reports</a></li>
                    <li><a href="#QueryStrings">Query Strings</a></li>
                    <li><strike><a href="#ExpressionParser">Syntax Checker for Expression fields</a></strike>
                        <span style="font-weight: bold; color: red">* Fixed by Microsoft in Reporting Services
                            2005 *</span> </li>
                    <li><a href="#TaskList2">The Task List should be more interactive, add filtering and auto
                        shortcuts</a></li>
                    <li><strike><a href="#TimeTaken">Please add a Global!ExecutionTimeTaken</a></strike>
                        <strong><span style="color: #ff0000">* Fixed by Microsoft in Reporting Services 2005
                            *</span></strong> </li>
                    <li><strike><a href="#IntelliSense">Intellisense for Expression fields</a></strike>
                        <strong><span style="color: #ff0000">* Fixed by Microsoft in Reporting Services 2005
                            *</span></strong> </li>
                    <li><a href="#ParameterControl">Report Parameter Control - Date Pickers and Auto buttons</a></li>
                    <li><strike><a href="#SelectAll">Toggle "Select All" in multi-value parameter lists</a></strike>
                        <span style="color: #ff0000"><strong>* Fixed by Microsoft in Reporting Services 2005
                            Service Pack 2 (coming soon) *</strong></span> </li>
                    <li><strike><a href="#Diagnostics">SQL Reporting Services Diagnostics System</a></strike>
                        <span style="color: #ff0000"><strong>* Fixed by Microsoft in Reporting Services 2005
                            *</strong></span> </li>
                    <li><a href="#VisualNonDefaults">User Interface: A visual indication of which tabs are
                        not on their defaults (Updated!)</a></li>
                    <li><a href="#ListGroups">User Interface: List control grouping parameters</a></li>
                    <li><a href="#Charting">Charting - Flexibility to resize individual chart elements</a></li>
                    <li><a href="#ChartExpressions">Charting - Default maximum and minimum scale values
                        for charts</a></li>
                    <li><a href="#InternetContent">Add an Internet Content Control for embedding HTML</a></li>
                    <li><a href="#RichTexbox">Rich Textbox Control</a></li><li><strike><a href="#MultiSelect">
                        Multi Select in Parameters</a></strike> <strong><span style="color: #ff0000">* Fixed
                            by Microsoft in Reporting Services 2005 *</span></strong> </li>
                    <li><a href="#LongRunning">Long Running Reports - Delay reporting</a></li>
                    <li><a href="#ImportAccess">Select Reports to Import from Access</a></li>
                    <li><a href="#TaskList">The Task List is lost on restart of Visual Studio</a></li>
                    <li><a href="#tooltips">Tool tips on column headings</a></li>
                    <li><a href="#showhide">Show / hide columns</a></li>
                    <li><a href="#xmlsql">Get the XML and SQL behind a report</a></li>
                    <li><a href="#EmbeddedImages">Embedded Images</a></li>
                    <li><a href="#LinkedImages">Linked Images that are deployed to a relative path don't
                        show in Designer</a></li>
                    <li><a href="#DefaultZoomLevel">Set the default zoom level</a></li>
                    <li><a href="#ReportingService">Stop/start the Reporting Services service from service
                        manager</a></li>
                    <li><a href="#FormattingOptions">Show built-in formatting options for report controls</a></li>
                    <li><a href="#DynamicTitle">Add the ability to dynamically change the title of the report</a></li>
                    <li><a href="#VersionInfo">Version Info</a></li>
                    <li><a href="#RequiredParams">Add icon to denote Required Parameters</a></li>
                    <li><a href="#ExportWord">Add MS Word to the Export list</a></li>
                    <li><a href="#CalendarView">Add a Calendar View and Gantt Chart Control - Like MS Project</a></li>
                    <li><a href="#ParamLabels">Parameters - When you add a Parameter it should automatically
                        add a label to the designer</a></li>
                    <li><a href="#PostbackParams">Add an AutoPostback property for parameters</a></li>
                    <li><a href="#LinkedDataSources">Add option to select a Linked DataSource</a></li>
                    <li><a href="#BetterMatrix">A much better Matrix control - add pivot table interactivity
                        without OWC</a></li>
                    <li><a href="#HomeDirectory">Report builder should default to a home directory</a></li>
                     <li><a href="#ReportBuilder">Help me use Report Builder 2</a></li>
                    <li><a href="#StyleTemplates">The wizard should accept style templates (aka .css files)</a></li>
                    <li><a href="#AutoSizeCols">Auto-sizing columns</a></li>
                    <li><a href="#RecursiveData">Sample report showing Recursive Data</a></li>
                    <li><a href="#XPath">XML Data Sources should accept XPath</a></li>
                    <li><a href="#ShowErrorInRed">The NoRow property on table control should be improved to
                        allow more control.</a></li>
                    <li><a href="#PaginationBug">Pagination does not work with hidden items for HTML output</a></li>
                    <li><a href="#authenticate">Choose how IIS authenticates clients</a></li>
                    <li><a href="#PageBreakInWebArchive">No need of page break in the subscription email
                        with render format of Web Archive</a></li>
                    <li><a href="#SubscriptionWithUserInfo">Report subscriptions are disabled if a report
                        contains User information e.g. User!UserID</a></li>
                    <li><a href="#InconsistentNames">Fix all inconsistent names &#8211; where different
                        names have been used for the same properties</a></li>
                    <li><a href="#SchedulePrinting">Schedule printing a report directly to a printer</a></li>
                    <li><a href="#ImageDisplay">Image display</a></li><li><a href="#ImageSize">Image size
                        is not correct in subscription</a></li>
                    <li><a href="#ReEmail">Add trigger in report subscription email to resend report</a></li>
                    <li><a href="#MissedSP">Sample Reports for Report Execution Log doesn't work properly</a></li>
                    <li><a href="#CompatibleForBrowsers">Improve compatibility for Firefox</a></li>
                    <li><a href="#ProgressPrompt">Add progress prompt on the Exporting Progress Form</a></li>
                    <li><a href="#AccessWrapper">Add a special data source type wrapper for Access</a></li>
                    <li><a href="#IISService">Make the IIS service more visible</a></li>
                    <li><a href="#CalculatedValueIcon">Add back the different icon for calculated values</a></li>
                    <li><a href="#FriendlySQLErrorMessage">Make this error more friendly by making it visually
                        consistent with the SQL Server Configuration Manager</a></li>
                    <li><a href="#DescriptiveTitle">Make the title of the report more descriptive</a></li>
                    <li><a href="#DeployReportPath">Make every report has its own deployment path</a></li>
                    <li><a href="#AddDateFunction">Add built-in date function</a></li>
                    <li><a href="#ExpressionHelp">Help more on the expression builder</a></li>
                    <li><a href="#LookUpForm">Add a lookup form to search the big table</a></li>
                    <li><a href="#InsertDataset">Insert dataset as a table (with totals)</a></li>
                    <li><a href="#ReportWizard">Report wizard intelligence</a></li>
                    <li><a href="#LongRunningProcess">Make long-running processes user-friendly</a></li>
                    <li><a href="#ChangeNoBold">Change no bold</a></li>
                    <li><a href="#DSFromAnotherReport">Dataset from another report</a></li>
                    <li><a href="#LatestSP">Add tick to check if Reporting Service is the latest</a></li>
                    <li><a href="#SPWorkwithRS">Let SharePoint work with Reporting Service easily</a></li>
                    <li><a href="#SPIntegInfo">More information on SharePoint Integration</a></li>
                    <li><a href="#SPIntegSmpSite">Sample in the reports document library</a></li>
                    <li><a href="#SPIntegTstBtn">Test dTest data source connection</a></li>
                    <li><a href="#DescriptionName">The subscription needs an extra Name field</a></li>
                    <li><a href="#QryDesner">Highlight the current field in yellow in the &quot;Diagram
                        Pane&quot;</a> </li>
                    <li><a href="#FormatConfig">Add a page to configure the export format</a> </li>
                    <li><a href="#ConnectionString">Add a connection string builder</a></li>
                    <li><a href="#LINQDataSource">Allow me to report against both LINQ Data Sources (.edmx
                        and .dbml)</a></li>
					<li><a href="#SharePointDataSource">Report Builder 2.0 - Offer the ability to report against SharePoint</a></li>
					<li><a href="#VerticalText">Allow Vertical text writing mode to also have bottom to top</a></li>
					<li><a href="#CommonPeriod">Add parameter type for common periods</a></li>
					<li><a href="#InteractiveSort">Interactive Sort does not work well with chart</a></li>
		            <li><a href="#SendEmailOption">Reports should have an easy way to email to another person</a></li>
					<li><a href="#StrikethroughInPDF">Show strikethrough in exported PDF file</a></li>
                    <li><a href="#ReportSounds">Developing - Sounds</a></li>
                    <li><a href="#DecimalPlace">Give users a runtime option to increase or decrease decimals places</a></li>
                    <li><a href="#LinkedReports">Linked Reports - No hyperlink available to Linked Report on Property General page</a></li>
                </ol>
            </td>
        </tr>
    </table>
    <h2>
        Microsoft SQL Reporting Services Suggestions
    </h2>
    <ol>
        <li>
            <h2>
                <a name="templates"></a>ASP.NET 2 master page style report templates</h2>
            <p>
                We, like most of you, use letterheads and standard document templates to ensure
                that every document that leaves the company is the same. So why should this be any
                different with your reports? Reporting Services does not have this functionality,
                which causes a few big problems:</p>
            <ol>
                <li>You have to copy and paste your company logo into every single header of your existing
                    and new reTest data source connection</li>
                <li><a href="#DescriptionName">The subscription needs an extra Name field</a></li>
            </ol>
            Microsoft SQL Reporting Services suggests all this into every report, it is
            hard to make sure that everything is consistently aligned and sized for all reports;
            the designer is very flexible so it is easy to get this wrong.
            <img src="Images/RSsuggestion_templates.gif" width="600" height="343" /><br />
            <b>Figure: Reports should copy the concept of ASP.NET 2.0 master pages so that you can
                have a template master that all reports use</b>
            <li><a name="OutputCSS"></a>
                <h2>
                    Report output CSS for specific report format</h2>
                <p>
                    With web pages you define multiple .css to define styles for different output devices.
                    E.g. Screen.css, Print.css and Mobile.css. So when someone prints the page it will
                    say use a much smaller font.
                    <br />
                    Is there a way this can happen in Reporting Services reports &#8211; like when they
                    choose to export to Pdf it formats with a smaller font. Eg. Screen.css, Pdf.css,
                    Excel.css, Mobile.css.
                </p>
            </li>
            <li><a name="InheritMaster"></a>
                <h2>
                    Add option to inherit a template (aka Master Page)</h2>
                <p>
                    Like Master Pages in .NET 2.0, reports should be able to inherit from a master report.
                    When a report is added inheriting a Master Report, it can automatically have standard
                    header &amp; footer.</p>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/MasterPages.jpg" width="704" height="476" /></dt><dd>Figure:
                            When adding a new item in VS.NET 2005, you may choose a master page to inherit from</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="EditIntegration"></a>Browser Integration for Editing Reports</h2>
                <p>
                    Although perhaps rather difficult, when viewing a report from ReportManager I want
                    to be able to click a button (preferably like the one in IE for editing pages using
                    FrontPage) and the Report Definition File is automatically downloaded and then opened
                    in Visual Studio (providing the RS client is installed).</p>
                <p>
                    This is already possible for editing pages directly in Frontpage via a button in
                    the web browser. To see how to set this up, see our <a href="/ssw/Standards/Rules/RulesToBetterWebsitesDevelopment.aspx#MSExpressionWeb">
                        rule on Rules to Better Websites - Development</a>.</p>
                <dl class="image">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/FrontPage.gif" alt="Frontpage" width="600"
                            height="126" /></dt><dd>Figure: Quickly editing a webpage using the browser integration
                                for Frontpage. Can SQL Reporting Services developers be offered the same functionality?</dd></dl>
                <p>
                    In this way all employees (with sufficient privilege) can conveniently make changes
                    to the report when needed. To see why we think users will be able to efficiently
                    change web documents see our <a href="/ssw/Standards/Rules/RulesToBetterWebsitesDevelopment.aspx?HideLeftNav=True#MSExpressionWeb">
                        rules to better websites</a>
                </p>
                <p>
                    A possible solution would be to have the report server append a meta tag to the
                    output html source. A browser plugin would then detect the meta tag and allow editing
                    of the appropriate report.</p>
            </li>
            <li>
                <h2>
                    <a name="QueryStrings"></a>Query Strings</h2>
                <p>
                    When a report is viewed either directly from the ReportServer or via the ReportManager
                    the querystring for the report including the parameter values will automatically
                    be updated after the &quot;Preview Report&quot; button has been pressed.</p>
                <p>
                    In this way, a report with the given parameters can be easily bookmarked or passed
                    on using only the address in the address bar.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/rs_querystring.gif" alt="Report with incomplete query string" width="500"
                            height="213" /></dt><dd>Figure: This report has an incomplete query string - when you
                                view a report the query string should automatically get re-generated</dd></dl>
                <p>
                    For example, since I have used non-default parameter values, the query string will
                    read:</p>
                <p>
                    <u><span style="color: #0000FF">http://localhost/reportserver?%2fSSW+Exchange+Reporter%2fEmailSentItemByDate&amp;rs:Command=Render</span></u><span
                        style="color: #FF0000">&amp;DateStart=1/1/2004&amp;DateEnd=31/1/2004</span></p>
                <p>
                    This could be an option for either the report (specified at design time) or for
                    the entire report server (specified at install time / via server config files) so
                    that they can be turned on or off (for those with issues with privacy). See why
                    we think query strings are important on our <a href="/ssw/Standards/Rules/RulesToBetterWebsitesDevelopment.aspx?HideLeftNav=True#querystring">
                        rules to better websites</a></p>
                <p>
                    It is true that if there are a large number of parameters the query string method
                    may not work. All software has limitations - just put a warning messagebox when
                    you turn it on.</p>
            </li>
            <li>
                <h2>
                    <a name="ExpressionParser"></a><strike>Syntax Checker for Expression fields</strike>
                    - <span style="color: #ff0000">* Fixed by Microsoft in Reporting Services 2005 *</span></h2>
                <p>
                    After entering an expression into a field there should be a button to verify the syntax
                    within that expression. At the moment you have to run the page to see the error.
                    It is such a pain.</p>
                <p>
                    <p>
                        Figure below shows the expression box. Please add a button &quot;Check Syntax&quot;.</p>
                    <p>
                        &nbsp;</p>
                </p>
            </li>
            <li>
                <h2>
                    <a name="TaskList2"></a>The Task List should be more interactive, add filtering and
                    auto shortcuts</h2>
                <p>
                    When you use the task list to manage your SQL Reporting Services issues (such as
                    those generated during the import from Access) we would like to be able to:</p>
                <p>
                    <ol>
                        <li>click each warning and have it take us to the place in the report design (or at
                            least open the relevant report).</li><li>As issues are resolved they are automatically
                                removed from the task list</li><li>Filter on the current file only, so that we can see
                                    only the warnings for the report that we're working on. (If turned on).</li></ol>
                    <p>
                        This is the same functionality provided for coding in Visual Studio, but doesn't
                        work here.</p>
                    <p>
                        &nbsp;</p>
                </p>
            </li>
            <li>
                <h2>
                    <a name="TimeTaken"></a><strike>Please add a variable Global!ExecutionTimeTaken</strike>
                    - <span style="color: #ff0000">* Fixed by Microsoft in Reporting Services 2005 *</span></h2>
                <p>
                    <strong>NOTE:</strong> You can do this using an expression. See our <a href="/ssw/Standards/Rules/RulesToBetterSQLReportingServices.aspx#UsefulFooter">
                        rule on Rules to Better Reporting Services</a>.</p>
                <p>
                    We need an easy way to see how long a report takes to execute. Often when you add
                    controls and grouping to a complicated page you want a way to test the performance
                    impact of these changes.</p>
                <dl class="goodImage">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/RSRulesGoodFooter.gif" alt="good - useful footer"
                            width="702" height="315" /></dt><dd>Figure: It is useful to show the execution time
                                along with other information at the bottom of your report</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="IntelliSense"></a><strike>Intellisense for Expression fields</strike> -
                    <span style="color: #ff0000">* Fixed by Microsoft in Reporting Services 2005 *</span></h2>
            </li>
            <p>
                Use Intellisense inside expression fields to pre-empt what operation we want to
                perform. Because there is still a huge number of methods available other than what's
                in the pre-defined expressions panel this would be convenient. For example using
                controls inside another namespace such as System.String or a custom code function
                denoted with the Code.&lt;Function&gt; operations.</p>

            <li>
                <h2><a name="ParameterControl"></a>Report Parameter Control - Date Pickers and Auto buttons</h2>
            </li>
            <p>
                There is no control over the parameter input bar on the reports viewed through the
                browser other than type validation and drop down lists. We would like to see more
                customisation of these controls, such as:</p>
            <ul>
                <li>Next Month / Quarter / Year</li><li>Previous Month / Quarter / Year</li></ul>
            <p>
                We like <a href="/ssw/Redirect/PeterBlum.htm" target="_blank">Peter Blum's</a>
                <img src="/ssw/Images/LeaveSite.gif" width="17" height="11" />date picker control.</p>
            <dl class="image">
                <dt>
                    <img src="Images/rs_peterblumdatepicker1.gif" width="200" height="180" />
                    <img src="Images/rs_peterblumdatepicker2.gif" width="300" height="140" />
                </dt>
                <dd>]Figure: We would like to see better date navigation controls (like these) in Reporting
                    Services</dd></dl>
            <p>Besides, it would be great to have a DateRangePicker control. Instead of picking the start date and end date in two separate controls, we can pick the start date and end date easily in the same control.</p>
            <dl class="image">
                    <dt>
                        <img src="/ssw/standards/BetterSoftwareSuggestions/images/daterangepicker.gif"/></dt>
                        <dd>Figure: DateRangePicker</dd>
            </dl>
            <p>
             We would also like to have such controls in <a href="/ssw/Standards/BetterSoftwareSuggestions/MSAjax.aspx#DateTimePickerControl"
                    target="_blank">ASP.NET</a>.</p>
            <li>
                <h2>
                    <a name="SelectAll" /><strike>Toggle "Select All" in multi-value parameter lists</strike>&nbsp;
                    <span style="color: #ff0000">* Fixed by Microsoft in Reporting Services 2005 Service
                        Pack 2 (coming soon) as per Brian Welcker's blog, see below *</span></h2>
                <p>
                    The initial release of Reporting Services 2005 comes with a "Select All" option
                    for multi-valued parameter lists. With SP1 this has been removed because, according
                    to Microsoft, "the option affects performance when used with a multidimensional
                    data source". That's all well and good, but what if my parameter list only has 5
                    or 10 values? The solution is to give the user an option (in the form of a checkbox in the parameter
                    properties) to include a "Select All" option. There is a <a href="/ssw/Redirect/MSDN/rs_multivalue.htm"
                        target="_blank">workaround</a> which involves modifying your SQL query, but
                    this is quite tedious.
                </p>
                <p><span style="color: #ff0000">
                    UPDATE: This was fixed by Microsoft in Reporting Services 2005 Service Pack 2 as per
                    Brian Welcker's blog:</span><br />
                    <a href='http://blogs.msdn.com/bwelcker/archive/2006/08/14/700189.aspx'>http://blogs.msdn.com/bwelcker/archive/2006/08/14/700189.aspx</a>
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/rs_multivaluenoselectall.gif" width="321" height="283" /></dt><dd>Figure:
                            Microsoft added and then removed the "Select All" option from multi-valued parameter
                            lists, but we think it's more flexible to be given the option to show/hide this
                            property</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="Diagnostics" /><strike>A SQL Reporting Services Diagnostics System</strike>&nbsp;
                    <span style="color: #ff0000">* Fixed by Microsoft in Reporting Services 2005 *</span></h2>
                <p>
                    I believe that programs that have a lot of components should have a diagnostics system.
                    (e.g. Start | SQL Server 2000 | Reporting Services | Diagnostics). For example,
                    it should at least check that the page and system is working rather than giving a
                    security error when you actually attempt to run a page.</p>
                <p>
                    For example, we installed a Yukon Beta, with a Whidbey Beta, and the IIS settings
                    were reconfigured but there was no indication of a problem except by running an
                    actual report. But having fixed that problem, we cant be sure that it wont break
                    on some other functionality - a diagnostics system would tell us nothing is wrong.</p>
                <p>
                    In our products (for example <a href="/ssw/CodeAuditor">SSW Code Auditor</a>) we
                    implement a "Run Unit Tests" item on the help menu that will open NUnit and run
                    a number of tests to verify the configuration settings are functioning.</p>
            </li>
            <li>
                <h2>
                    <a name="VisualNonDefaults"></a>User Interface: Please give me a visual indication
                    of which tabs are not on their defaults</h2>
                For example, I should be able to see that Sorting has something in it before I get
                to it I would suggest a different colour background on the tab or even a little
                asterisk or marker to suggest fields of interest. As per David Leans' suggestion,
                this would best be done with the tab label being put in <b>bold</b>.
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/rs_highlightedtabs.gif" alt="High lighted tabs" width="350"
                        height="325">
                    </dt>
                    <dd>    
                        Figure 6. A value has been entered on the sorting tab so there should be some indication
                    </dd>
                </dl>
                <p>
                    This way editing a report that someone else has designed would be much easier as
                    I could quickly see what fields have non-empty / non-default properties assigned.
                </p>
                <p>&nbsp;</p>
            </li>
            <li>
                <h2>
                    <a name="ListGroups"></a>User Interface: List control grouping parameters (Inconsistency)</h2>
                <p>
                    The grouping controls for a table control are nice in that you can conveniently
                    manage them with a straight forward add, edit, and delete buttons. But why does
                    the list box control have such a horrible one?</p>
                <dl>
                    <dt>
                        <img border="0" src="Images/rs_groupinglistcontrols.gif" alt="Grouping list controls"
                             width="350" height="343">
                    </dt>
                    <dd>Figure 7. The good! Grouping on the table control.</dd>
                </dl>
                <p>
                    &nbsp;</p>
                <p>
                    whereas for the list box control we need to navigate to a similar screen through
                    the button.</p>
                <table border="0" align="center" id="table8">
                    <tr>
                        <td>
                            <p align="center">
                                <img border="0" src="Images/rs_editlistgroup.gif" alt="Edit list group" width="265"
                                    height="31" />
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Figure 8. The bad! Grouping on the list control</b>
                        </td>
                    </tr>
                </table>
                <p>
                    If this button is necessary, then tie it in with the idea above, so that you can
                    conveniently see whether groups are defined. Or this could be done by having the
                    &quot;Edit&quot; button disabled if no groups exist and an additional button for
                    &quot;New Detail Group&quot;.</p>
            </li>
            <li>
                <h2>
                    <a name="Charting"></a>Charting - Flexibility to resize individual chart elements</h2>
            </li>
            <p>
                Charting controls need to be more flexible. You cannot resize individual elements
                of the chart control such as the size of the key or the plot area. These are basic
                properties that we have in Excel charts but not in SQL Reporting Services charting
                components.</p>
            <p>
                &nbsp;</p>
            <li>
                <h2>
                    <a name="ChartExpressions"></a>Charting - Default maximum and minimum scale values
                    for charts<span style="color: #ff0000"></span></h2>
                <p>
                    Many of the properties of the charting component do not allow expressions for their
                    values. Some major examples include dynamic size (so that we could base it on the
                    number of items), the scale (so that we can make the max scale for multiple graphs
                    all appear the same).</p>
                <p>
                    The max and min scale properties have been partially fixed in Reporting Services
                    2005 - you can now use expressions in the Max Value and Min Value fields of your
                    charts. See our <a href="/ssw/Standards/Rules/RulesToBetterSQLReportingServices.aspx#maxminvalues">
                        rule on Rules to Better Reporting Services</a>.</p>
                <p>
                    I say partially, because you still have to manually set these values on a chart
                    and it requires a bit of a hack to do (see the above rule). Why can't a chart automatically
                    work out its maximum and minimum value based on the grouping level? There should be
                    a default value, and an option to enter an expression.</p>
                <dl class="badImage">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/RSRulesChart02.gif" width="570" height="555" /></dt><dd>Figure:
                            Reporting Services will work out the maximum and minimum values for the chart's
                            scale - currently you have to do it manually</dd></dl>
            </li>
            <li><a name="InternetContent"></a>
                <h2>
                    Add an Internet Content Control for embedding HTML</h2>
                <p>
                    Reporting Services is missing the ability to embed web pages into its reports. For
                    example, say you have some web pages that are updated regularly (e.g a project page)
                    and you want these pages to be emailed to you weekly. It would be great to take
                    advantage of the Reporting Services subscription engine, but we need to be able
                    to embed HTML pages into RS reports to get this done.</p>
                <p>
                    We think that an Internet Content Control will be introduced and it will have the
                    ability to:
                </p>
                <ul>
                    <li>Set the resulting HTML at the control level </li>
                    <li>Set the CSS property </li>
                    <li>Set the title property of the HTML page </li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="RichTexbox"></a>Rich Textbox Control</h2>
                <p>
                    We need a textbox control that you can format the internal content. For example
                    we might want to have text display like this:</p>
                <p>
                    &nbsp;&nbsp;&nbsp; This is a <b>bold</b> label with <i>italics</i> in it too.</p>
                <p>
                    This would be useful for building reports that are used for invoicing or contracts
                    that you use all the time but need to be tailored for a specific contact.</p>
                <p>
                    &nbsp;</p>
            </li>
            <li>
                <h2>
                    <a name="MultiSelect"></a><strike>Multiple Select in Parameters</strike> - <span
                        style="color: #ff0000">* Fixed by Microsoft in Reporting Services 2005 *</span></h2>
                <p>
                    We need a parameter type that will enable us to have a list of values (likely from
                    a query) such that you can select multiple values from the list and then use the
                    set of parameter values in your dataset queries or report items. For example, we
                    want to allow our users to report on set of suppliers all at once, rather than one
                    at a time.</p>
                <table border="0" align="center" id="table10">
                    <tr>
                        <td>
                            <p align="center">
                                <img border="0" src="Images/rs_NewParameter.gif" alt="New Parameter" width="600"
                                    height="428" />
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p align="center">
                                <b>Figure. Add a new datatype - MultipleSelect to allow selection of multiple parameter
                                    values from a list.</b>
                            </p>
                        </td>
                    </tr>
                </table>
                <p align="left">
                    The resulting control displayed on the parameter bar will be a checkbox list control.
                    <a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Controls.aspx#ListBoxesAreEvil2">See why</a>.</p>
                <p align="left">
                    The parameter value would then require restrictions put onto it so that it can only
                    be used in aggregate or set functions within the dataset. For example:</p>
                <div class="Section1">
                    <pre style="font-size: 10pt; font-family: Courier New; margin-left: 0cm; margin-right: 0cm;
                        margin-top: 0cm; margin-bottom: 0pt">
<pre style="font-family: Courier New">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                SELECT au_lname, state</pre></pre>
                    <pre style="font-size: 10pt; font-family: Courier New; margin-left: 0cm; margin-right: 0cm;
                        margin-top: 0cm; margin-bottom: 0pt">
<pre style="font-family: Courier New">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                FROM authors</pre></pre>
                    <pre style="font-size: 10pt; font-family: Courier New; margin-left: 0cm; margin-right: 0cm;
                        margin-top: 0cm; margin-bottom: 0pt">
<pre style="font-family: Courier New">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                WHERE state IN ('CA', 'IN', 'MD')</pre></pre>
                </div>
            </li>
            <li>
                <h2>
                    <a name="LongRunning"></a>Long Running Reports - Delay reporting</h2>
                <p>
                    If you have a report which is known to run for a long time, an administrator will
                    be able to select an option for the report so that the user is notified that the
                    report is going to take a while to execute, and are forced to have the report returned
                    via email. The server can then complete processing on a background thread.</p>
                <p>
                    &nbsp;</p>
            </li>
            <li>
                <h2>
                    <a name="ImportAccess"></a>Select Reports to Import from Access</h2>
                <p>
                    When you use the &quot;Import Reports&quot; from Access functionality, it always
                    imports all the reports rather than allowing you to import just a few.</p>
                <p>
                    For example, the import feature within Access allows this. You should be able to select
                    only the reports you want.
                        <dl class="image">
                            <dd><img border="0" src="Images/rs_importreports.gif" alt="Import reports" width="450"
                                     height="250"></dd>
                            <dt>Figure 10. Importing reports from another Access database within Access. In SQL Reporting
                                        Services you should be able to selectively import reports also.</dt>
                        </dl>
                </p>
            </li>
            <li>
                <h2>
                    <a name="TaskList"></a>The Task List is lost on restart of Visual Studio</h2>
                <p>
                    The task list is a handy feature built into Visual Studio. It provides a single
                    point of reference for any user tasks, compile-time warnings and errors found in
                    your reports. In most cases you can double-click the task to jump to the offending
                    line of code or control. For some reason Reporting Services does not retain this
                    list of errors once you close Visual Studio, so you have to copy and paste the errors
                    into notepad, which can be annoying. (Note: this works for items manually created.)</p>
                <p>
                    When the report is first imported there are comments in the .RDL file for each warning;
                    however, after any changes to the reports these disappear. We would like to see
                    this task list retained, so that the developer can check off tasks in the task list
                    as they are done.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/rs_tasklist.gif" alt="Task list" width="600" height="435" /></dt><dd>Figure:
                            If I close down this solution, all the task list items related to the import process
                            are lost.</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="tooltips"></a>Tool tips on column headings</h2>
                <p>
                    It would be handy to show a descriptive tool tip when you move the cursor over a
                    column heading. This would be great because the user could see more information
                    about the data in a column.
                </p>
                <p>
                    <img src="Images/RSsuggestion_tooltips.gif" width="597" height="258" /><br />
                    <strong>Figure: it would be great to have descriptive tooltips like this when you mouse
                        over a heading </strong>
                </p>
            </li>
            <li>
                <h2>
                    <a name="showhide"></a>Show / hide columns</h2>
                <p>
                    Sometimes we want to print a report with certain columns shown or hiding. This would
                    be great for custom reporting without having to go back to the developers to make
                    the change.
                </p>
                <p>
                    <img src="Images/RSsuggestion_showhidecolumns.gif" width="271" height="414" /><br />
                    <strong>Figure: It would be great to have MS Access-style show/hide columns</strong></p>
            </li>
            <li>
                <h2>
                    <a name="xmlsql"></a>Get the XML and SQL behind a report</h2>
                <p>
                    When I run a report, sometimes the data doesn't look right. Instead of chasing the
                    developer to investigate, I want to be able to find out the SQL behind the report
                    and run it myself using SQL Server Management Studio. I would also like to be able
                    to see the XML (RDL) behind the report.</p>
            </li>
            <li>
                <h2>
                    <a name="EmbeddedImages"></a>Embedded Images</h2>
                <p>
                    If you create a report with an embedded image and then you delete that image, it
                    remains in the xml report definition, therefore unnecessarily increasing report
                    size. To get rid of the image, you need to either:</p>
                <ul>
                    <li>Manually delete &lt;EmbeddedImages&gt;&lt;/EmbeddedImages&gt; from xml.</li><li>
                        Understand that you deleting the image control &#8211; there is a 1:many relationship
                        between embedded images and image controls (you can reuse images in multiple places
                        on the report). To delete an embedded image, select &#8220;Report&#8221; &#8211;
                        &#8220;Embedded Images&#8221;.</li></ul>
                <p>
                    What should happen is - when you delete an image control it asks:</p>
                <blockquote>
                    <p>
                        <em>"Would you also like to delete the embedded image?"</em></p>
                    <p>
                        <em>Yes / No</em></p>
                </blockquote>
                <p>
                    If you select Yes it could open this "Embedded Images" form</p>
            </li>
            <li>
                <h2>
                    <a name="LinkedImages"></a>Linked Images that are deployed to a relative path don't
                    show in Designer</h2>
                <p>
                    When we use images in our reports we like to make a separate project to deploy the
                    images to a path relative to the report location (e.g. ./Images/logo.gif). This
                    process is detailed more in the <a href="/ssw/Redirect/Whitepapers/HowToMigrateSqlReportingServices.htm">
                        reporting services whitepaper</a> (under &quot;Tip 3 - Organizing Images&quot;
                    at the end of the paper).</p>
                <p>
                    The problem is that during design time, despite the images still being correctly
                    in the relative path to the .rdl files, they don't show up in the designer. Understandably
                    the relative path won't necessarily be correct for the deployed version to work,
                    but if the path is valid then the image should show.</p>
                <p>
                    <table border="0" align="center">
                        <tr>
                            <td>
                                <p align="center">
                                    <img src="Images/rs_linkedImages.gif" alt="Linked Images" border="0" width="585"
                                        height="280" />
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p align="center">
                                    <b>Figure 11. The path on the images is correct both for the deployed and non-deployed
                                        reports. It should show in the designer.</b>
                                </p>
                            </td>
                        </tr>
                    </table>
                </p>
            </li>
            <li>
                <h2>
                    <a name="DefaultZoomLevel"></a>Set the default zoom level</h2>
                <p>
                    We need to be able to set the default zoom level. For example, reports should open
                    with the zoom level set to "Page Width" rather than 100%.</p>
                <p>
                    <img src="Images/ReportingServicesZoom.gif" alt="Reporting Services Zoom" /></p>
            </li>
            <li>
                <h2>
                    <a name="ReportingService"></a>Stop/start the Reporting Services service from service
                    manager</h2>
                <p>
                    Since reporting services is part of SQL Server, we should be able to control the service
                    from SQL Server Services Manager.</p>
                <p>
                    <img src="Images/ServicesManager.gif" alt="Services Manager" width="291" height="254"></p>
            </li>
            <li>
                <h2>
                    <a name="FormattingOptions"></a>Show built-in formatting options for report controls</h2>
                <p>
                    When you select formatting for text in a textbox or other Reporting Services report
                    controls, the built in formatting options should be selectable from the list (such
                    as C for currency and P for percentage)</p>
                <p>
                    <img src="Images/FormattingControlInAccess.gif" alt="Formatting Control In Access"
                        width="600" height="452"><br>
                    <b>Figure: Just like when setting formatting for controls in Access...</b></p>
                <p>
                    <img src="Images/ReportingFormattingOptionsInDDL.gif" alt="Reporting formatting options in dll"
                        width="600" height="461"><br>
                    <b>Figure: ...there should be built-in formatting options in the Format property for a
                        report control</b></p>
            </li>
            <li>
                <h2>
                    <a name="DynamicTitle"></a>Add the ability to dynamically change the title of the
                    report</h2>
                <p>
                    Say you have a sales report that you generate once a month and export to a file.
                    You want to build an archive of these reports for comparison and to keep a history
                    of sales. You also want to expose this history for searching and browsing through
                    a content portal such as Plumtree or Microsoft SharePoint. Currently you cannot
                    do this with Reporting Services, as the report title is static.
                </p>
                <p>
                    <img src="Images/ReportingStaticTitle.gif" alt="Reporting Static Title" width="600"
                        height="449"><br>
                    <b>Figure: You cannot change the title in Report Manager, which makes it hard to index,
                        search and archive reports</b></p>
                Ideally there should be a <b>Page Title</b> attribute in the report properties dialog
                (shown below) which lets you enter a custom title to display with the report. You
                should also be able to enter an expression with parameters into the title, for example,
                <b>{ReportName} - {Month} {Year}</b>.
                <p>
                    <img src="Images/ReportingTitleTag.gif" alt="Reporting Title Tag" width="600" height="477"><br>
                    <b>Figure: Add a property to this table called <i>Title Tag</i></b></p>
                <p>
                    <img src="Images/ReportingTitleHTML.gif" alt="Reporting Title HTML" width="600" height="414"><br>
                    <b>Figure: This is the HTML Title Tag you need to be able to change</b></p>
                <p>
                    These parameters should appear in the report parameters dialog so that you can link
                    them to fields in your data source.</p>
                <p>
                    <img src="Images/ReportingReportParameters.gif" alt="ReportingReport Parameters"
                        width="600" height="186"><br>
                    <b>Figure: You should be able to add report parameters to your report which can then be
                        used in an expression for the page title</b></p>
            </li>
            <li>
                <h2>
                    <a name="VersionInfo"></a>Version Info</h2>
                <img src="Images/RSVersionInfo.gif" width="600" height="480"><br>
                <b>Figure: Reporting Services does not have explicit version information.</b>
                <p>
                    This needs:
                </p>
                <ul type="disc">
                    <li>a description like "Service Pack 2" and</li><li>a link to a page with all the version
                        numbers and what they are (eg, SP1 or SP2)</li><li>also a link to <a href="/ssw/Redirect/microloads.htm">
                            http://www.microsoft.com/downloads/details.aspx?FamilyId=502C0D89-1308-4662-8F58-CEC55EF1235B&displaylang=en</a></li></ul>
            </li>
            <li><a name="RequiredParams"></a>
                <h2>
                    Add icon to denote Required Parameters</h2>
                <p>
                    As there is the option to allow some parameters to be left blank, required parameters
                    should have an icon depicting that they are required. On reports that have many parameters,
                    this makes it easier for the users to distinguish between required and non required
                    parameters.</p>
                <p>
                    <img src="Images/blankparams.gif" border="1" width="600" height="182"><br>
                    <b>Figure: Blank and Null Parameters are allowed</b></p>
                <p>
                    <img src="Images/RequiredField.gif" border="1" width="552" height="36"><br>
                    <b>Figure: But what RS needs is the ability to show a Required Field Icon like in this
                        example</b></p>
            </li>
            <li><a name="ExportWord"></a>
                <h2>
                    Add MS Word to the Export list</h2>
                <p>
                    There should be an option in the Export to file list that allows a user to export
                    to a Word document.</p>
                <p>
                    <img src="Images/ExportList.gif" border="1" width="219" height="113"><br>
                    <b>Figure: Current RS Export List</b></p>
            </li>
            <li><a name="CalendarView"></a>
                <h2>
                    Add a Calender View and Gannt Chart Control - Like MS Project</h2>
                <p>
                    There should be a calendar control (similar to that in MS Project) that allows a user
                    to drop Calendar related data onto it which is automatically puts into the right
                    place. There should also be a Gantt chart control or a Gantt chart type option added
                    to the existing chart control.
                </p>
                <p>
                    <img src="Images/ProjectCalendar2.gif" border="1" width="597" height="416"><br>
                    <b>Figure: RS needs the Calendar Control like MS Project</b></p>
                <p>
                    <img src="Images/ProjectCalendar1.gif" border="1" width="597" height="450"><br>
                    <b>Figure: RS needs the Gantt Control like MS Project</b></p>
            </li>
            <li><a name="ParamLabels"></a>
                <h2>
                    Parameters - When you add a Parameter it should automatically add a label to the designer</h2>
                <p>
                    Too many developers forget to add their parameters to the design of a report. Then
                    when the user exports it to say a .pdf, they see the report, but they dont know
                    the parameters that gave the data they are looking at.
                </p>
                <p>
                    When a parameter is added to a report, the labels should be automatically added that
                    display the parameters being used on the report.
                </p>
            </li>
            <li><a name="PostbackParams"></a>
                <h2>
                    Add an AutoPostback property for parameters</h2>
                <p>
                    Especially when there is only one parameter people dont want to click View Report.
                </p>
                <p>
                    When a parameter is displayed (especially when using combo boxes and multi select
                    is not enabled), the report should automatically refresh upon selecting a new parameter
                    from the combo.
                </p>
                <p>
                    This would make it consistent with the ASP.NET.
                </p>
            </li>
            <li><a name="LinkedDataSources"></a>
                <h2>
                    Add option to select a Linked DataSource</h2>
                <p>
                    There should be an option Add Linked Data Source; that is, a way to add Linked Data
                    Sources so that the same Data Sources can be shared by many different report server
                    projects.
                </p>
            </li>
            <li><a name="BetterMatrix"></a>
                <h2>
                    A much better Matrix control</h2>
                <p>
                    There should be a Matrix control that has Pivot Table interactivity (like Cognos).
                    It should allow for Drag and Drop functionality and allow the user to drill through
                    automatically.
                    <br>
                    While drag and drop, and auto-drill through can be seen in the Reports Builder,
                    a similar control should be implemented for the Report Developers to use as well.</p>
            </li>
            <li><a name="HomeDirectory"></a>
                <h2>
                    Report builder should default to a home directory</h2>
                <p>
                    When a user creates a report using the Report Builder, the save path currently defaults
                    to the Report Server's root directory this seems to be the only place you would
                    not like users to save reports to.
                </p>
                <p>
                    Therefore, when saving the ad-hoc reports created by Report Builder, the save path
                    should default to a directory such as the Windows Username, Eg. \AdamCogan\Report1
                </p>
                <p>
                    <img src="Images/ReportBuilderSave.gif" border="1" width="512" height="416"><br>
                    <b>Figure: Saving currently defaults to the Root directory... it should default to a Username
                        folder instead</b></p>
            </li>
            <li><a name="ReportBuilder"></a>
                <h2>
                    Help me use Report Builder 2</h2>
                <p>
                  I have Report Builder 2 on my PC but when I click "Report Builder" it still opens version 1.  
                </p>
                <p>
                Why not automatically set the 'Custom Report Builder launch URL' field<br/> 
               (to http://SERVERNAME/ReportServer/ReportBuilder/ReportBuilder_2_0_0_0.application) when I install the latest SQL Server Service Pack?    
                </p>
                <p>
                PS: It should also happen when you install the stand alone download <a href="http://www.microsoft.com/downloads/details.aspx?FamilyID=9f783224-9871-4eea-b1d5-f3140a253db6&displaylang=en">http://www.microsoft.com/downloads/details.aspx?FamilyID=9f783224-9871-4eea-b1d5-f3140a253db6&displaylang=en</a> 
                </p>
                <p>
                PPS: and make that last text box wider.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/ReportBuilderVersion.jpg" alt="Set the 'Custom Report Builder launch URL' field"  /></dt>
                     <dd>Figure: Automatically set the 'Custom Report Builder launch URL' field so the users are using Report Builder 2 (instead of version 1)</dd>
                </dl>
                
            </li>
            <li><a name="StyleTemplates"></a>
                <h2>
                    The wizard should accept style templates (aka .css files)</h2>
                <p>
                    While using the New Report wizard, you should be able to add to the list of Styles
                    available in order to help to create reports that are consistent with a company's
                    color scheme.</p>
                <p>
                    I suggest adding an "Add Template" button to this wizard page and allowing you to
                    select an XSL Style Templates or CSS templates against a report (just like ASP.NET).
                </p>
                <p>
                    Note: At a form level an extra property Template File needs to be added.</p>
                <p>
                    <img src="Images/AddTemplate.gif" border="1" width="520" height="490"><br>
                    <b>Figure: This page of the wizard needs an Add Templates button to enable you to select
                        .xsl or .css file. </b>
                </p>
            </li>
            <li><a name="AutoSizeCols"></a>
                <h2>Auto-sizing columns</h2>
                <p>When you preview your report, sometimes it can take some time, switching back and
                    forth between layout and preview modes, in order to get the column widths the right
                    size to allow prevent your report from looking ugly. For this reason, there should
                    be some functionality added to help overcome this problem.</p>
                <p>A few implementation suggestions are:</p>
            </li>
            <blockquote>
                <ul>
                    <li>In design view there could be a smart task on the table/matrix that executes the
                        data and works out an intelligent width.</li><li>You could add a multi-line property,
                            to the cells of a table/matrix, that defaults to true. When it is set to false it
                            could force the data to be on one line, and not wrap down to another line, forcing
                            the column to widen to accommodate the single line of data. </li>
                    <li>In preview view there could be the ability to resize the columns (as you are seeing
                        the data) and when you switch back to design view, you could have a messagebox asking
                        if they would like to save the changed column widths - this would be like an Access
                        datasheet.</li></ul>
            </blockquote>
            <li><a name="RecursiveData"></a>
                <h2>
                    Sample report showing Recursive Data</h2>
                <p>
                    There should be a sample report added that demonstrates a report that uses recursive
                    data.
                </p>
                <p>
                    We suggest showing the Employees and Managers in Adventure Works, as managers are
                    employees too and can also have their own managers. This should be shown using padding
                    to achieve the visual nesting.
                </p>
            </li>
            <li><a name="XPath"></a>
                <h2>
                    XML Data Sources should accept XPath</h2>
                <p>
                    While working with XML Data sources, you really should be able to use XPath to
                    query the data that the .xml file or webservice returns.
                </p>
                <p>
                    This functionality would make it easier to work with XML data that contains multiple
                    data sets, and would make XML Datasources generally more usable.
                </p>
                <p>
                    <img src="Images/XMLDataSource.gif" border="1" width="464" height="384"><br>
                    <b>Figure: Entering a query into the &quot;Query string&quot; box for an XML data source
                        causes no data to be returned... it should accept XPath</b></p>
            </li>
            <li>
                <h2>
                    <a name="ShowErrorInRed"> </a>The NoRow property on table control should be improved to allow
                        more control.
                </h2>
                In Access, we have NoData event to handle when there is no data returned from data
                source, this feature has been migrated into a NoRow property of Table control, which
                allow you to set a message.
                <p>
                    <img border="0" src="Images/RSShowErrorInRed6.gif" width="600" height="235"><br>
                    <b>Figure: NoRows property of table control in Reporting Services</b></p>
                <p>
                    Compare to Access, this is much easier to use, but we lost our control over the
                    message, we cannot even set our error message to Red color. See our <a href="/ssw/Standards/Rules/RulesToBetterSQLReportingServices.aspx#ErrorsInRed">
                        Rules for Better Reporting Services. </a>
                </p>
                <p>
                    More advanced property should be allowed for this, such as changing color, font, etc.<br>
                    &nbsp;</p>
            </li>
            <li>
                <h2>
                    <a name="PaginationBug"></a>Pagination does not work with hidden items for HTML
                    output</h2>
                We have a report which has a table with some hidden items. These hidden items will
                be collapsed initially in the HTML output. Pagination does not work for this report
                - all the data show in one page. This is horrible for huge data report.
                <br>
                <br>
                <img border="0" src="Images/PagingBug_HiddenItem.jpg" alt="HiddenItem" width="471"
                    height="101"><br>
                <b>Figure: Hidden item in report</b><br>
                <br>
                <img border="0" src="Images/PagingBug_NotPaging.jpg" alt="Pagination doesn't work"
                    width="484" height="187"><br>
                <b>Figure: Pagination does not work with hidden item</b><br>
                <br>
                But the pagination works if we make those items visible initially<br>
                <br>
                <img border="0" src="Images/PagingBug_NoHiddenItem.jpg" alt="No Hidden Item" width="455"
                    height="98"><br>
                <b>Figure: No hidden item in report</b><br>
                <br>
                <img border="0" src="Images/PagingBug_Paging.jpg" alt="Pagination works" width="504"
                    height="220"><br>
                <b>Figure: Pagination works well with no hidden items </b>
                <br>
                <br>
                There's no way to have pagination and collapse work in same report.<br>
            </li>
            <li>
                <h2>
                    <a name="authenticate"></a>Choose how IIS authenticates clients</h2>
                We think that we should have the ability to choose how IIS authenticates clients -
                read our Reporting Services suggestion. IIS should be able to:
                <ol>
                    <li>Try Integrated authentication first</li><li>Then use the Anonymous username (if
                        specified)</li><li>Then prompt for a user name and password to use.</li></ol>
                <li><a name="PageBreakInWebArchive"></a>
                    <h2>
                        No need of page break in subscription email with render format of Web Archive</h2>
                    Page break is a useful feature for big report to avoid performance issue when viewed
                    in browsers. However for a report subscription email (select Web Archive as Render
                    Format in subscription settings), page break causes redundant headers and footers
                    and make the email difficult to read.
                    <br>
                    <br>
                    <img border="0" src="Images/PageBreakTop.gif" alt="Report in a subscription email"
                        width="724" height="547"><br>
                    <b>Figure: Report in a subscription email</b><br>
                    <br>
                    <img border="0" src="Images/PageBreakBottom.gif" alt="redundant report header following a page break"
                        width="717" height="430"><br>
                    <b>Figure: redundant report header following a page break</b><br>
                </li>
                <li><a name="SubscriptionWithUserInfo"></a>
                    <h2>
                        Report subscriptions are disabled if a report contains User information e.g. User!UserID</h2>
                    <img border="0" src="Images/FooterInDesigner.gif" alt="Report footer" width="693"
                        height="120"><br>
                    <b>Figure: This report footer with "User!UserID" will give problems later when setting
                        up subscriptions</b><br>
                    <table class="clsSSWTable" align="right" cellpadding="5" width="40%">
                        <tbody>
                            <tr>
                                <td>
                                    <p>
                                        <strong>From:</strong>Daniel Hyles www.ssw.com.au<br />
                                        <strong>To:</strong>James Zhou www.ssw.com.au<br />
                                        <strong>Cc:</strong>Adam Cogan www.ssw.com.au<br />
                                        <strong>Subject:</strong>RE:GroupHealth<br />
                                        <strong>Importance:</strong>High
                                    </p>
                                    <p>
                                        James,<br />
                                        Ever since you made changes to this report the data bound subscription does not
                                        work. When I attempt to fix it I get
                                        <br />
                                        The '/WhatsUp/GroupHealth' report has user profile dependencies and cannot be run
                                        unattended. (rsHasUserProfileDependencies)
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <p>
                        Best practise for reports is to have the User!UserID in footer as per rule <a href="/ssw/Standards/Rules/RulesToBetterSQLReportingServices.aspx#UsefulFooter">
                            Do you include a useful footer at the bottom of your reports?</a>
                    </p>
                    <p>
                        However later when dealing with subscriptions you may get this email:
                    </p>
                    <p>
                        <img border="0" src="Images/DisabledSubscription.gif" alt="Data-driven subscription cannot be created because the credentials used to run the report are not stored, the report is using user-defined parameter values, or if a linked report, the link is no longer valid."
                            width="694" height="188"><br>
                        <b>Figure: Disabled Subscription</b><br>
                        <br />
                        The fix is to remove the "User!UserID" from the footer to enable subscriptions.
                        In Reporting Services 2005, they have improved this - normal subscription is enabled,
                        but Data-driven subscription is still disabled in this case. The behaviour should
                        allow the report to work and a different value entered for UserID eg."N/A"
                    </p>
                </li>
                <li><a name="InconsistentNames"></a>
                    <h2>
                        Fix all inconsistent names &#8211; where different names have been used for the
                        same properties</h2>
                    <p>
                        I was very familiar with CanGrow and CanShrink but was not familiar with what &#8216;Can
                        increase to accommodate contents&#8217; was. Imagine my surprise when I find out
                        they are the same thing!<br>
                        <br>
                        <img border="0" src="Images/InconsistentNames.gif" alt="Inconsistent Names" width="777"
                            height="513"><br>
                        <b>Figure: &#8220;Can increase to accommodate contents&#8221; is the same as &#8220;Can
                            Grow&#8221; &#8211; they should be named the same </b>
                        <br>
                    </p>
                </li>
                <li><a name="SchedulePrinting"></a>
                    <h2>
                        Schedule printing a report directly to a printer</h2>
                    <p>
                        Some senior executives do not open their email. For this reason, it would be useful
                        to be able to schedule for a report to be printed directly to a printer.
                    </p>
                    <p>
                        <img src="Images/SchedulePrinting.gif" border="1" width="834" height="576" />
                        <br />
                        <b>Figure: Option to allow printing a report on a schedule</b>
                    </p>
                </li>
                <li><a name="ImageDisplay"></a>
                    <h2>
                        Image display</h2>
                    <p>
                        Reporting Services report doesn't support transparent image background. When you
                        use embedded images in the report, if the image file's background color is "transparent",
                        it will only display correctly in designer (VS2005), but if you view the report
                        in IE, the image will have a shadow background which is bad.
                    </p>
                    <p>
                        <img src="Images/Imageshadow.gif" border="1" width="134" height="54" />
                        <br />
                        <b>Figure: Image with transparent background</b>
                    </p>
                    <p>
                        Here is a workaround. You need to change the image's background to "white" in order
                        to remove the shadow.
                    </p>
                    <p>
                        <img src="Images/imagewithoutshadow.gif" border="1" width="134" height="54" />
                        <br />
                        <b>Figure: Image with white background</b>
                    </p>
                </li>
                <li><a name="ImageSize"></a>
                    <h2>
                        Image size is not correct in subscription
                    </h2>
                    <p>
                        Reporting Services subscription report doesn't support image resize. In designer
                        (VS2005), you can set the image box's "sizing" properties as "FitProportional" to
                        allow a large size image file displays correctly in image box, but when we use the
                        subscription to send the report as an email, images display incorrectly with its
                        original size.
                    </p>
                    <p>
                        <img src="Images/imageresize.gif" border="1" width="135" height="80" />
                        <br />
                        <b>Figure: Image can't be resized</b>
                    </p>
                    <p>
                        When you reply or forward the report email, images display as their original size,
                        report can&#8217;t apply the "sizing" properties of image box in here.
                    </p>
                    <p>
                        <img border="1" src="Images/imagenoresize.gif" width="229" height="205" />
                        <br />
                        <b>Figure: Image with original size</b>
                    </p>
                    <p>
                        Here is a workaround. In order to make the report look more consistently, you have
                        to change the image file size to a proper size to fit the image into the box.
                    </p>
                </li>
                <li><a name="ReEmail"></a>
                    <h2>
                        Add trigger in report subscription email to resend report
                    </h2>
                    <p>
                        Reporting Services 2005's subscription can be triggered by time, it can send a report
                        email at a preset time. After you receive the email, if you want RS to resend the
                        report, you have to wait until the subscription is triggered again.
                    </p>
                    <p>
                        Add a trigger in the report subscription email will make the Reporting Services
                        more convenient.
                    </p>
                </li>
                <li><a name="MissedSP"></a>
                    <h2>
                        Sample Reports for Report Execution Log doesn't work properly</h2>
                    Created a new job for Retrieving Report Execution Log Data successfully as per <a
                        href="/SSW/Redirect/MSDN2/ServerManagementReportSamples.htm">Configure Server Management
                        Report Samples</a>, then it was executed failed.
                    <p>
                        <img src="Images/rsExecuteLog1.gif" width="738" height="656" /><br>
                        Figure: executed failed for this job;</p>
                    <p>
                        <img src="Images/rsExecuteLog2.gif" width="746" height="658" /><br>
                        Figure: Could not find stored procedure 'msdb.dbo.xp_sqlagent_notify' for RSExecuteLog
                        which was created by running Createtables.sql (under C:\Program Files\Microsoft
                        SQL Server\90\Samples\Reporting Services\Report Samples\Server Management Sample
                        Reports\Execution Log Sample Reports by default);</p>
                    It is because of missing stored procedure "dbo.xp_sqlagent_notify" for "Report Execution
                    Log" Database, Microsoft should make sure all samples databases and reports works
                    properly! And it said that this error will be fixed in SQL Server 2005 SP2 - See
                    <a href="/SSW/Redirect/MicrosoftForum/MSForum.htm">Could not find stored procedure 'msdb.dbo.xp_sqlagent_notify'</a>
                    for more details. </li>
                <li><a name="CompatibleForBrowsers"></a>
                    <h2>
                        Improve compatibility for Firefox</h2>
                    Reporting Services Reports (2005) makes beautiful reports, well it does in IE, but
                    the HTML is not good for some non-IE browsers (aka Firefox). Reports are displayed
                    in an IFRAME that's deep in nested table land, and the IFRAME's height setting only
                    works in IE. This cause reports can't display correctly - the IFRAME's height defaults
                    to a few hundred pixels, so you only see the top 2 inches of the report. Like this:
                    <p>
                        <img src="images/RSinFirefox.JPG" width="571" height="576" /><br />
                        Figure: Reporting services report in Firefox looks terrible</p>
                    <p>
                        Workaround: though we can fix it by adding a min-height into ReportingServices.css
                        file (it's found in "C:\Program Files\Microsoft SQL Server\MSSQL.3\Reporting Services\ReportManager\Styles\"
                        by default):
                        <div class="greyBox">
                            <p>
                                <span style="color: rgb(0, 128, 0);">/* Fix report IFRAME height for Firefox */</span><br>
                                <span style="color: rgb(128, 0, 0);">.DocMapAndReportFrame<br>
                                </span>{<span style="color: rgb(255, 0, 0);"><br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;min-height</span>:<span style="color: rgb(0, 0, 255);"> 860px</span>;<br />
                                }
                            </p>
                        </div>
                        <br />
                        But the report still can't display in correct width even if you added a min-width
                        element, like this:
                        <p>
                            <img src="images/RSinFirefox_2.gif" width="816" height="714" /><br />
                            Figure: Reporting services report in Firefox still looks terrible after fixed height
                            problem</p>
                        <p>
                            This problem still has not been fixed in SQL Server Reporting Services 2008.
                            <img src="images/ReportingServiceFireFox.jpg" />
                        </p>
                        There are several ways to try to resolve this, but none can fix it completely.
                        (See <a href="/SSW/Redirect/Weblogs.htm" class="newWindow" target="_blank">Reporting
                            Services CSS-fix for Firefox</a> for more) 
                    </p>
                </li>
                <li><a name="ProgressPrompt"></a>
                    <h2>
                        Add progress prompt on the Exporting Progress Form</h2>
                    Sometimes exporting takes forever, it should give the progress prompt (e.g. xx% complete)
                    on the exporting progress form, so we can know where it is up to.
                    <p>
                        <img src="images/RSProgressPrompt.gif" width="994" height="620" /><br />
                        Figure: Exporting takes forever</p>
                </li>
            </li>
            <li><a name="AccessWrapper"></a>
                <h2>
                    Add a special data source type wrapper for Access</h2>
                Many Access developers think that Access is ODBC compliant &#8211; but not OLE DB...
                So we suggest:
                <ul>
                    <li>Add a special wrapper called Jet over ODBC (Access) to the list then you can just
                        select an MDB</li>
                </ul>
                <dl class="image">
                    <dt>
                        <img src="Images/DataSource.gif" alt="Choosing new Data Source type" width="476"
                            height="407" />
                    </dt>
                    <dd>
                        Figure: Choosing Data Source Type</dd>
                </dl>
            </li>
        </li>
        <li><a name="IISService"></a>
            <h2>
                Make the IIS service more visible</h2>
            <p>
                What is required for RS to work? Well you check both services (SQL Server and SQL
                Server Reporting Services) are running in SQL Server Configuration Manager, and
                then you check you have all green ticks in Reporting Services Configuration Manager.
                What if I check these and Reporting Service is still not working... what could it
                be?<br />
                <dl class="image">
                    <dt>
                        <img src="Images/RSNotWorking.gif" alt="What could it be?" width="1229" height="914" />
                    </dt>
                    <dd>
                        Figure: Both services are running in SS Configuration Manager and all green ticks
                        in RS Configuration Manager, but RS is still not working</dd>
                </dl>
            </p>
            <p>
                The answer is IIS is not running:
                <dl class="image">
                    <dt>
                        <img src="Images/IISNotRunning.gif" alt="IIS is not running." width="314" height="299" />
                    </dt>
                    <dd>
                        Figure: IIS is not running. This should be more visible on both the above pages</dd>
                </dl>
            </p>
            <p>
                We suggest:
                <ol>
                    <li>On SQL Server Configuration Manager add "SQL Server Required Service (IIS)"</li>
                    <li>On Reporting Services Configuration Manager add "IIS"</li>
                </ol>
                This makes this service more visible to users and makes it a true one stop shop
                (instead of finding and using Computer Management).
            </p>
        </li>
        <li><a name="CalculatedValueIcon"></a>
            <h2>
                Add back the different icon for calculated values</h2>
            <p>
                Unlike those in Visual Studio 2003, the icons of every kind of the fields are the
                same in Visual Studio 2005. It becomes not easy for the developers to separate the
                calculated values from the original ones.</p>
            <p>
                So we suggest adding back the special icon for calculated values</p>
            <p>
                <dl class="image">
                    <dt>
                        <img src="Images/ReportingService_CalculatedField_VS2003.gif" alt="Calculated Value's Icon in VS2003"
                            width="187" height="185" />
                    </dt>
                    <dd>
                        Figure: In VS2003, the icon of calculated values is different from others'.</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/ReportingService_CalculatedField_VS2005.gif" alt="Calculated Value's Icon in VS2005"
                            width="224" height="191" />
                    </dt>
                    <dd>
                        Figure: In VS2005, all the icons are the same.</dd>
                </dl>
            </p>
        </li>
        <li><a name="FriendlySQLErrorMessage"></a>
            <h2>
                Make this error more friendly by making it visually consistent with the SQL Server
                Configuration Manager</h2>
            <p>
                I would not normally comment on error messages, but these ones are commonly seen.
                <p>
                    Ideally you should not have to read the error message to be able to fix it
                </p>
                <p>
                    As a minimum I would add the same icon and text from the SQL Server Configuration
                    Manager
                </p>
                <p>
                    Slightly better would be an image with a circle around the missing reference
                </p>
                <p>
                    Ideally I would provide a link that opened the Microsoft Management Console (aka
                    MMC snap-ins) &#8211; I would not even mind if it required you to allow &#8220;Active
                    Content&#8221; inside IE (like Index.htm on MSDN Subscription DVD)
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/FriendlySQLErrorMessage_1.gif" alt="FriendlySQLErrorMessage" width="1079"
                            height="437" />
                    </dt>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/FriendlySQLErrorMessage_2.gif" alt="FriendlySQLErrorMessage" width="808"
                            height="452" />
                    </dt>
                    <dd>
                        Same for this error message</dd>
                </dl>
            </p>
        </li>
        <li><a name="DescriptiveTitle"></a>
            <h2>
                Make the title of the report more descriptive</h2>
            <p>
                The report &lt;title&gt; tag needs to be more descriptive, as non-descriptive title
                will reduce your Google rankings. See <a href="/ssw/Standards/Rules/RulesToBetterGoogleRankings.aspx#DescriptiveTags">
                    Are your &lt;title&gt;, &lt;h1&gt;, and &lt;h2&gt; tags descriptive?</a> for
                more information.
            </p>
            <p>
                <dl class="image">
                    <dt>
                        <img src="Images/ReportTitle.gif" alt="Non-descriptive report title" width="710"
                            height="329" />
                    </dt>
                    <dd>
                        Figure: Non-descriptive report title</dd>
                </dl>
            </p>
            <p>
                We have a suggestion to make the report title more descriptive, see <a href="#DynamicTitle">
                    Add the ability to dynamically change the title of the report</a>.</p>
        </li>
        <li><a name="DeployReportPath"></a>
            <h2>
                Make every report has its own deployment path</h2>
            <p>
                We should be able to choose the folder that a report deploys to, rather than having
                to create a separate project for each deployment path.
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/ReportService_DeployReport_1.gif" alt="Project Deploy Path" /><br />
                    <img src="Images/ReportService_DeployReport_2.gif" alt="Project Deploy Path" />
                </dt>
                <dd>
                    Each project has only one deployment folder</dd>
            </dl>
            <dl class="image">
                <dt>
                    <img src="Images/ReportService_DeployReport_3.gif" alt="Report Properties" /></dt>
                <dd>
                    Reports don't have their own deployment path property, so the reports in one project
                    can be deployed to the same folder only.</dd>
            </dl>
        </li>
        <li><a name="AddDateFunction"></a>
            <h2>
                Add built-in date function</h2>
            <p>
                There should be built-in date functions to calculate Week Ending, Month Ending and
                Year Ending for a date, like GetCurrentWeekEnding(), GetLastMonthEnding(), so we
                can get the report of weeks and months easily.
                <br />
                The week ending function needs to consider the local culture while calculating.
                In different countries, the weekend day may be not the same. So this function should
                accept a parameter to load the local information, such like User!Language or something
                like that. And of course it should have a parameter to let the user set which day
                of the week is the week ending day manually (e.g. Friday or Sunday)</p>
            <dl class="code">
                <dt>(SELECT CONVERT(char(10), DATEADD(day, - (1 * (DATEPART(weekday, Agreement.ProjectedDepositPaymentDate)
                    - 6)), Agreement.ProjectedDepositPaymentDate), 103) AS Expr1) AS ProjectedDepositPaymentDateWeekEnding
                </dt>
                <dd>
                    This is how we get the week ending now</dd>
            </dl>
            <dl class="code">
                <dt>(SELECT GetWeekEnding(Agreement.ProjectedDepositPaymentDate)) AS ProjectedDepositPaymentDateWeekEnding
                </dt>
                <dd>
                    using build-in functions would be efficient and more readable.</dd>
            </dl>
        </li>
        <li><a name="ExpressionHelp"></a>
            <h2>
                Help more on the expression builder</h2>
            <p>
                When user press OK on the expression builder:</p>
            <dl class="image">
                <dt>
                    <img src="Images/ExpressionBuilder.gif" alt="Expression builder" /></dt>
                <dd>
                    Figure: Expression builder</dd>
            </dl>
            <p>
                It should try to help more and more... E.g. Show a dialog like:<br />
                <br />
                Did you refer to a control instead of a dataset?<br />
                You have used the function CountRows("Scans") that refers to a control "Scans".<br />
                Did you instead mean the dataset "dsScans"?<br />
                <br />
                "Yes - Correct this"&nbsp;&nbsp;&nbsp;&nbsp;"No - Leave it"<br />
            </p>
        </li>
        <li><a id="LookUpForm"></a>
            <h2>
                Add a lookup form to search the big table</h2>
            <ol>
                <li>
                    <p>
                        It is confused for user to input an unknown value. Also, it isn't feasible to use
                        a combo to contain more than 30,000 records.</p>
                    <dl class="image">
                        <dt>
                            <img src="Images/LookUpForm_bad.JPG" alt="Lookup Search" width="737" height="580" /></dt>
                        <dd>
                            Figure: Bad Search</dd>
                    </dl>
                </li>
                <li>
                    <p>
                        What do you think of this suggestion<br />
                        Use a ellipse button with a popup search form (better than using a combo when you
                        have >100 records)<br />
                        <br />
                        One tab will do &#8211; but 4 tabs would be better <a href="/SSW/Redirect/SSW/SSWNettoolkit.htm">
                            http://www.ssw.com.au/ssw/nettoolkit/02WinSearch.aspx</a><br />
                    </p>
                    <dl class="image">
                        <dt>
                            <img src="Images/LookUpForm_good.JPG" alt="Good Search" width="550" height="544" /></dt>
                        <dd>
                            Figure: Good Search</dd>
                    </dl>
                </li>
            </ol>
        </li>
        <li><a id="InsertDataset"></a>
            <h2>
                Insert dataset as a table (with totals)</h2>
            <ol>
                <li>
                    <p>
                        Productivity Suggestion
                        <br />
                        Under &#8220;add&#8221; item, add right click menu &#8220;Insert dataset as a table
                        (with totals)&#8221;</p>
                    <ol>
                        <li>Auto generate the dataset&#8217;s name to the title at the top of table.</li>
                        <li>Auto generate every column of dataset.</li>
                        <li>Auto generate Totals row at the bottom of table.</li>
                    </ol>
                    <dl class="image">
                        <dt>
                            <img src="Images/rsInsertDatasetAsTable.JPG" alt="Insert Dataset as table" width="611"
                                height="316" /></dt>
                        <dd>
                            Figure: Insert Dataset as table</dd>
                    </dl>
                </li>
            </ol>
        </li>
        <li><a id="ReportWizard"></a>
            <h2>
                Report Wizard Intelligence</h2>
            <p>
                It is not convenient for developers to generate SQL without intelligence in Report
                Wizard. They have to look for the table name or the field name in SQL Server Management
                Studio and generate SQL. If there is an intelligence in textbox or table list in
                the left hand navigate, it will be much better.</p>
            <dl class="image">
                <dt>
                    <img src="Images/rsReportWizard.JPG" alt="Report Wizard without Intellisense" width="522"
                        height="485" /></dt>
                <dd>
                    Figure: Report Wizard without Intellisense</dd>
            </dl>
            <p>
                The goals are to help me get to this&#8230;</p>
            <dl class="image">
                <dt>
                    <img src="Images/rsReportWizard_autofill.JPG" alt="Report Wizard with Intellisense"
                        width="522" height="485" /></dt>
                <dd>
                    Figure: Report Wizard with Intellisense</dd>
            </dl>
        </li>
        <li><a id="LongRunningProcess"></a>
            <h2>
                Make long-running processes user-friendly</h2>
            <p>
                When your wizard has a lot of processing, allow the user to skip that processing
                when appropriate. Show a status description information above the progress bar and
                also allow users to cancel the process. After processing finished, it should jump
                to the next wizard.
            </p>
            <p>
                See our rule on Rules to Better Interfaces at <a href="../Rules/RulestoBetterInterfaces-Windows-Applications.aspx#LongProcessFriendly">
                    SSW Rules to Better Interfaces</a></p>
        </li>
        <li><a id="ChangeNoBold"></a>
            <h2>
                Change No Bold</h2>
            <p>
                UI problem &#8211; when Visibility is collapsed there is no bold (even though the
                setting is not at default). So we need to see bold when collapsed
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/rsChangeNoBold.JPG" alt="Change No Bold" width="273" height="350" /></dt><dd>Figure:
                        Change No Bold</dd></dl>
        </li>
        <li><a id="DSFromAnotherReport"></a>
            <h2>
                Dataset from another report</h2>
            <p>
                Often you want a dataset from another report (or another project)<br />
                <br />
                On the &#8220;Data&#8221; toolbar add some buttons
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&#8220;Copy dataset from&#8221;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&#8220;Import from XML&#8221;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&#8220;Save as XML&#8221;<br />
                <br />
                Note: Not only do I want to select a project, then report&#8230;. I want to be able
                to select a published report (select a server, then report, then dataset)
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/rsDSFromAnotherRpt.JPG" alt="Dataset from another report" width="604"
                        height="194" />
                </dt>
                <dd>
                    Figure: Selecting dataset from another report</dd>
            </dl>
        </li>
        <li><a id="LatestSP"></a>
            <h2>
                Add tick to check if Reporting Service is the latest</h2>
            <p>
                If the version of Reporting Service can't match that of Database, there will be
                a warning to let user upgrade. Can we have a tick to say Reporting Service is the
                latest or where we can download the latest version.
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/RSVersionCantMatch.JPG" alt="Version of Reporting Service can't match the Database"
                        width="576" height="499" />
                </dt>
                <dd>
                    Figure: Version of Reporting Service can't match the Database</dd>
            </dl>
        </li>
        <li><a id="SPWorkwithRS"></a>
            <h2>
                Let SharePoint work with Reporting Service easily</h2>
            <p>
                It is not easy for user to configurate SharePoint and Reporting Service working
                together. If is much better to click one button and they can run in the same box
                smoothly without knowing anything special.
            </p>
        </li>
        <li><a id="SPIntegInfo"></a>
            <h2>
                More information on SharePoint Integration</h2>
            <p>
                The &#8220;SharePoint Integration&#8221; page in Reporting Service Configuration
                Manager is too simple, we need more information on this page to tell our users:
                <ol>
                    <li>What will be the new functionality to add in SharePoint? </li>
                    <li>How to generate RS reports by using SharePoint Integrated mode? </li>
                    <li>How to manage reports in SharePoint? </li>
                </ol>
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/SPIntegInfo.gif" alt="Simple information in Reporting Services Manager"
                        width="561" height="148" />
                </dt>
                <dd>
                    Figure: Simple information in Reporting Services Manager</dd>
            </dl>
        </li>
        <li><a id="SPIntegSmpSite"></a>
            <h2>
                Sample in the reports document library</h2>
            <p>
                It is not easy for users to build report in SharePoint without tutorial. If there
                are some sample reports in SharePoint, users can refer to the samples and learn
                by themselves.
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/SPIntegSmpSite.gif" alt="Add sample in reports document library"
                        width="827" height="222" />
                </dt>
                <dd>
                    Figure: Add sample in reports document library</dd>
            </dl>
        </li>
        <li><a id="SPIntegTstBtn"></a>
            <h2>
                Test data source connection</h2>
            <p>
                Users can create a report data source in SharePoint, but they don't know the connection
                string is not correct until the report raises error. So there should be a test button
                to check the connection string.
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/SPIntegTstBtn.gif" alt="No button to test the connection string"
                        width="390" height="458" />
                </dt>
                <dd>
                    Figure: No button to test the connection string</dd>
            </dl>
        </li>
        <li><a id="DescriptionName"></a>
            <h2>
                The subscription needs an extra Name field</h2>
            <p>
                The current UI doesn&#8217;t have a name filed, make it impossible to tell the difference
                between each of the subscriptions.
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/AddName.gif" alt="Need to add a Name field" />
                </dt>
                <dd>
                    Figure: Need to add a Name field</dd>
            </dl>
        </li>
        <li><a name="QryDesner"></a>
            <h2 style="font-weight: bold">
                Highlight the current field in yellow in the &quot;Diagram Pane&quot;</h2>
            <p class="MsoNormal">
                Highlight the current field in yellow in the &quot;Diagram Pane&quot; (aka Query
                By Design window) when you select a row in the &quot;Grid Pane&quot; it would be
                so useful when you are working on an unfamiliar database schema</p>
            <dl class="image">
                <dt>
                    <img src="Images/QueryDesigner.JPG" alt="The message when loss network" style="width: 1186px" /></dt>
                <br />
                Figure: The Diagram Pane without any highlights</dl>
        </li>
        <li><a name="FormatConfig"></a>
            <h2 style="font-weight: bold">
                Add a page to configure the export format</h2>
            <p class="MsoNormal">
                Currently, if we want to configure the export format, we have to edit the .config
                file mannually. It is much better to add a configuration page and allow users to
                add or remove report export formats easily.
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/ExportFormat.gif" alt="Export Format List" />
                </dt>
                <dd>
                    Figure: Export Format List
                </dd>
            </dl>
        </li>
        <li><a name="ConnectionString"></a>
            <h2>
                Add a connection string builder</h2>
            <p>
                We really need a builder for a connection string
                <br />
                I can never remember the right syntax for the "Connection String" textbox<br />
                (As a minimum it would improve the demo experience for presenters)</p>
            <dl class="image">
                <dt>
                    <img src="images/RSConnStringBuilder.jpg" alt="Connection String Builder" /></dt>
                <dd>
                    Figure: Building a connection string is too hard &#8211; we need a builder</dd>
            </dl>
        </li>
        <li>
            <h2>
                <a name="LINQDataSource"></a>Allow me to report against both LINQ Data Sources (.edmx
                and .dbml)</h2>
            <p>
                Ideally I would love to do a report based on a .dbml or .edmx file<br />
                I just select a LINQ (.dbml or .edmx) file as the datasource of a report<br />
                Plus I would like some samples added so we have an instant demo.
            </p>
        </li>
		<li>
            <h2>
                <a name="SharePointDataSource"></a>Report Builder 2.0 - Offer the ability to report against SharePoint</h2>
            <p>A few new ones in this list... but when will be able to select a SharePoint list?</p>
			<p>PS: Back in 1992 Access would not have been as popular as quickly, without the ability for users to be able to query their data... SharePoint Lists are the new Access (for Power Users).</p>
			<dl class="image">
                <dt>
                    <img src="images/RS_DataSource.jpg" alt="" /></dt>
                <dd>
                    Figure: SharePoint list is not supported</dd>
            </dl>
        </li>
        <li><h2><a name="VerticalText"></a>Allow Vertical text writing mode to also have bottom to top</h2>
            <p>Text boxes at the moment only allow writing modes of top to bottom. This is not always the way report viewers want to read the report. There should be another option of bottom to top, i.e. bt-lr.</p>
            <p>See the images and explanation on <a href="/ssw/Standards/Rules/RulesToBetterSQLReportingServices.aspx#VerticalText">Rules to Better SQL Reporting Services - Use Vertical text for Columns</a></p>
        </li>
        <li><a name="CommonPeriod"></a><h2>Add parameter type for common periods</h2>
            <p>
                we look for common period parameter type like week, month or quarter instead of having to specify start and end parameters of datetime.
            </p>
        </li>
        <li><a name="InteractiveSort"></a><h2>Interactive Sort does not work well with chart</h2>
            <p>
                We found a problem of Interactive Sort column with chart within it:
            </p>
            <dl class="image">
                <dt>
                    <img src="images/RS_InteractiveSort_design.gif" alt="" /></dt>
                <dd>
                    Figure: design view</dd>
            </dl>
            <dl class="image">
                <dt>
                    <img src="images/RS_InteractiveSort_preview.gif" alt="" /></dt>
                <dd>
                    Figure: preview view</dd>
            </dl>
             <dl class="image">
                <dt>
                    <img src="images/RS_InteractiveSort_error.gif" alt="" /></dt>
                <dd>
                    Figure: error when sorting</dd>
            </dl>
        </li>
         <li><a name="SendEmailOption"></a><h2>Reports should have an easy way to email to another person</h2>
            <p>
                There should be an option which can make the users send the report by email directly.It's more convenient.
            </p>
             <dl class="image">
                <dt>
                    <img src="images/AnotherOption_SendEmail.jpg" alt="Send the report by email option" /></dt>
                <dd>
                    Figure: There should be an option "Send Email"</dd>
            </dl>
        </li>
        <li><a name="StrikethroughInPDF"></a><h2>Show strikethrough in exported PDF file</h2>
            <p>
                When report has strikethroughs(with the TextDecoration property set to "LineThrough"), it looks fine in Report Viewer.
				When export to PDF format, the resulting document does not have the strikethrough applied.
            </p>

             <dl class="image">
                <dt>
                    <img src="images/SSRS_Strikethroughs.jpg" alt="Strikethroughs in reoport" /></dt>
                <dd>
                    Figure: Strikethrough works fine in Report Viewer</dd>
            </dl>
			<dl class="image">
				<dt>
					<img src="images/SSRS_StrikethroughInPDF.jpg" alt="Stikethrough doesn't work in PDF" />
				</dt>
				<dd>
                    Figure: Strikethrough doesn't work in PDF</dd>
			</dl>
			<p>It is a known bug that you can check on Microsoft Connect.</p>
        </li>
        <li>
            <h2>
                <a name="ReportSounds"></a>Developing - Sounds</h2>
            <p>We need a "completed" sound after rendering a slow report. The problem is after 30 seconds of waiting you ALT+TAB to another window and forget when it finishes.</p>
			<p>A good example is the sound on the long process on <a href="http://www.ssw.com.au/SSW/Diagnostics/default.aspx"> SSW Diagnostics</a></p>
			<p>More info at <a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Windows-Applications.aspx#LongProcessFriendly"> Rules to Better Interfaces - Long Process - Do you know how to make long-running processes user-friendly?</a> </p>
			<dl class="badImage">
                <dt>
                    <img src="images/ReportEndingWithoutSounds.jpg" alt="This isn't a sound when the report finally generated." /></dt>
                <dd>
                    Figure: When Developing slow reports, please play a sound once the reports renders</dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img src="images/SSWDiagnosticReport.jpg" alt="SSW Diagnostic is a good example because it'll play a sound to inform the users that the report is accomplished." /></dt>
                <dd>
                    Figure: SSW Diagnostic will play a sound when the report successfully generated.</dd>
            </dl>
        </li>
        <li>
            <h2>
                <a name="DecimalPlace"></a>Give users a runtime option to increase or decrease decimals places
            </h2>
            <p>
                In some cases, the nubmers need to be accurate and reconciliations for the users, while in other cases, the decimal places are not required in the report.
            </p>
            <p>So we need a runtime option to add/remove decimal place.</p>
            <dl class="goodImage">
                <dt>
                    <img src="images/DecimalPlace.gif" alt="Give users the option to show decimal places." /></dt>
                <dd>
                    Figure: For some users, like accountants, the decimal place is necessary; for others, it might be not.</dd>
            </dl>
        </li>
        <li>
           <h2>
              <a name="LinkedReports"></a>Linked Reports - No hyperlink available to Linked Report on Property General page
           </h2>
           <p>Reporting Services 2005. Linked Reports, when you look at the Properties tab it shows the path of the "parent" report and a button to "Change Link" but there is no quick link to take you to that parent report. You have to navigate to all the folders to get to it.</p>           
        </li>
        
    </ol>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>

    </p>
</asp:Content>
