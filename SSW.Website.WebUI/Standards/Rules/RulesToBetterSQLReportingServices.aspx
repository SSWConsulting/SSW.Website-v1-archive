<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better SQL Reporting Services"  %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:RandomTestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="1" />
    <div id="intro">
        <p>
            SQL Server Reporting Services is a comprehensive, server-based reporting  
            solution that can author, manage, and deliver both paper-oriented and 
            interactive, Web-based reports.
        </p>
    <p>Do you agree with them all? Are we missing some?<a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F25323042657474657225323053514C2532305265706F7274696E672532305365727669636573')">
        Let us know</a> what you think.</p>     
        
    </div>
    <div class="multimediaBox">
        <p>
            <strong><a href="/SSW/Redirect/Sqldownunder.htm" class="audio">Listen to Adam's 
            podcast on these rules with Greg Low</a></strong>
        </p>
        <p>
            <strong>Duration: </strong>50 minutes 39 seconds<br />
            <strong>Size: </strong>14.5MB
        </p>
    </div>
    <div class="multimediaBox" style="height:100px;">
        <p>
			<strong>Watch Adam's video on DNRTV on these rules:</strong></p>
        <p style="font-size:80%;">
			<strong><a href="/SSW/Redirect/Dnrtv.htm" class="wmv">Part A (53:13) - 181MB</a></strong><br />
			<strong><a href="/SSW/Redirect/Dnrtv1.htm" class="wmv">Part B (49:12) - 171MB</a></strong><br />
			<strong><a href="/SSW/Redirect/Dnrtv2.htm" class="wmv">Part C (42:19) - 158MB</a></strong><br />
		</p>
    </div>
    <div class="clear">
    </div>
    <div class="TableOfContents">
        <p><b>Rules to Better SQL Reporting Services</b></p>
        <ol>
                <li><a href="#userExperience">Do you know the 5 user experiences of Reporting Services: Vanilla, Website, Email, Windows?</a></li>
                <li><a href="#Use">Do you know when to use Reporting Services?</a></li>
                <li><a href="#GreenTicks">Do you check that &quot;RS Configuration Manager&quot; is all green ticks?</a></li>
                <li><a href="#CheckOutSampleReport">Do you check out the built-in samples?</a></li>
                <li><a href="#importreports">Do you know your 2 migration options to show your Access reports on the web?</a></li>
                <li><a href="#PageLayout">Layout - Does your report print and display on the web correctly?</a></li>
                <li><a href="#UsefulFooter">Layout - Do you include a useful footer at the bottom of your reports?</a></li>
                <li><a href="#BadWordInReport">Layout - Do you avoid using word 'Report' in your reports?</a></li>
                <li><a href="#underline4HyperlinkAction">Layout - Do you underline items with Hyperlink Action?</a></li>
                <li><a href="#ErrorsInRed">Layout - Do you show errors in Red?</a></li>
                <li><a href="#ReportName">Layout - Do you have consistent report name?</a></li>
                <li><a href="#Feedback">Layout - Do you include feedback information in the report?</a></li>
                <li><a href="#Version">Layout - Do you know which version of Reporting Services you are running?</a></li>
                <li><a href="#PageHeader">Layout - Do you put content as less as possible in page header?</a></li>
                <li><a href="#6months">Data Layout - Do you show the past 6 months of totals in a chart?</a></li>
                <li><a href="#datachartinone">Data Layout - Do you show data and chart in one?</a></li>
                <li><a href="#AvoidSingleChart">Data Layout - Do you avoid using a single chart when you need it to be scaled?</a></li>
                <li><a href="#maxminvalues">Data Layout - Do you use expressions to show the correct scale on charts?</a></li>
                <li><a href="#ShowChange">Data Layout - Do you show change in your reports? </a></li>
                <li><a href="#ChangePercent">Data Layout - Do you avoid showing change as a percentage?</a></li>
                <li><a href="#alternating">Data Layout - Do you use alternating row colors?</a></li>
                <li><a href="#NodeNumber">Data Layout - Do you have nodes count like Outlook?</a></li>
                <li><a href="#DecimailPlace">Data Layout - Do you avoid displaying decimal places?</a> [MOVED]</li>
                <li><a href="#TableRowHeight">Data Layout - Do you have consistent height of table row across all your reports?</a></li>
                <li><a href="#AvoidZeroNumber">Data Layout - Do you display zero number as blank in your reports?</a></li>
                <li><a href="#BestDataShow">Data Layout - Do you know the best way to show your  data?</a></li>
                <li><a href="#TimeFormat">Data Layout - Do you show time format clearly?</a></li>
                <li><a href="#ReportParameters">Data Layout - Do you show all of the report parameters in body?</a></li>
                <li><a href="#LogicalPageBreak">Data Layout - Do you know how to use logical page breaks?</a></li>
                <li><a href="#ChartInRow">Data Layout - Do you know how to prevent charts growing  with rows?</a></li>
                <li><a href="#VerticalText">Data Layout - Do you take advantage of vertical text (when lots of columns)?</a></li>            
                <li><a href="#PriorColor">Data Layout - Do you use gray color for past data?</a></li>    
                <li><a href="#3DCylinder">Data Layout - Do you use 3D cylinder in column chart?</a></li>
                <li><a href="#TitleCentered">Data Layout - Is title centered in chart?</a></li>
                <li><a href="#Denormalized">Data Logic - Do you use de-normalized database fields for calculated values?</a></li>
                <li><a href="#Rank">Data Logic - Do you use SQL Ranking functions to rank your data</a></li>
                <li><a href="#DefaultParameters">Parameters - Do you avoid showing empty reports by at least setting Default parameters?</a></li>
                <li><a href="#AvoidEmptyReport">Parameters - Do you avoid showing empty reports by  the most intelligent default?(especially for dates)</a></li>
                <li><a href="#UseDateTimeType">Parameters/Internationalization - Do you use the DateTime data type for date parameters?</a></li>
                <li><a href="#ParameterName">Parameters - Do you have consistent parameter names? </a></li>
                <li><a href="#Caching">Performance - Do you cache popular reports for better performance?</a></li>
                <li><a href="#Snapshots">Performance - Do you schedule snapshots of slow reports for quicker access?</a></li>
                <li><a href="#RegionalFormatting">Internationalization - Do you keep use regional friendly formatting?</a></li>
                <li><a href="#LanguageSetting">Internationalization - Do you make sure your language follows the user's regional settings?</a></li>
                <li><a href="#DateFormatParameterBar">Internationalization - Are you aware of your date format of parameter bar?</a></li>
                <li><a href="#CurrencySetting">Internationalization - Do you make sure your language rule has an exception for Currency Fields?</a></li>
                <li><a href="#SQLReportingServicesAuditor">Admin - Do you validate all your reports?</a></li>
                <li><a href="#AdminAccess">Admin - Do you create a separate virtual directory for Admin access?</a></li>
                <li><a href="#PayRollByUserID">Admin - Do you take advantage of 'Integrated Security' to do Payroll reports?</a></li>
                <li><a href="#RemoveTime">Admin - Do you remove @ExecutionTime in subject of subscription email?</a></li>
                <li><a href="#ReportViewer">Do you know to embed an RS report in ASP.NET page the right way (using Report Viewer instead of IFrame)?</a></li>
                <li><a href="#Subscription">Do you know how to get email list of report  subscription?</a></li>
				<li><a href="#ReportOwner">Do you add report owner in your report?</a></li>
				<li><a href="#SingleBox">Do you use single line box instead of double line box?</a></li>
				<li><a href="#SiteSetting">Do you change the name of site settings?</a></li>
				<li><a href="#CorrectAuthentication">Do you use the correct authentication for your report?</a></li>
				<li><a href="#URLAccess">Do you have URL Access link for your report?</a></li>
				<li><a href="#ClearOnGST">Do you have a clear labelling for including / excluding GST?</a></li>
				<li><a href="#SummaryAndDetailReport">Do you have a summary and a detailed version of your report?</a></li>
				<li><a href="#LiveDataFeed">Analyzing with Excel - Do you use a live data feed?</a></li>
				<li><a href="#NamingConvertion">Do you follow the naming converstion standards in Reporting Service?</a></li>
                <li><a href="#SharePointIntegrationMode">Do you use SharePoint Integration Reporting Mode over Normal(Native) Reporting Mode?</a></li>
                <li><a href="#FirefoxChromeReportDisplay20082012">Do you know how to display reports in Firefox, Chrome and Safari (SQL Reporting Services 2008R2/2012)?</a></li>
                <li><a href="#FirefoxChromeReportDisplay20052008">Do you know how to display reports properly in Firefox / Chrome (Reporting Services 2005/2008)?</a></li>
                <li><a href="#RefreshData">Do you have a report which refresh your data source?</a></li>
       </ol>
    </div>
    <div id="mainContent">
        <ol>
            <!-- General Items -->
            
            <li>
                <h2><a name="userExperience"></a>Do you know the 5 user experiences of Reporting 
                    Services: Vanilla, Website, Email, Windows and SharePoint?
            </h2>
           
                The 5 user experiences of Reporting services are...
            <ul>
            <li>Vanilla</li>
            <dl class="image"><dt><img src="/ssw/standards/rules/images/VanillaExample.jpg" /></dt>
            <dd>Figure: Example of Vanilla user experience</dd></dl>
            <li>Website</li>
            <dl class="image"><dt><img src="/ssw/standards/rules/images/WebsiteUExample.jpg" /></dt>
            <dd>Figure: Example of Website user experience</dd></dl>
            <li>Email</li>
            <dl class="image"><dt><img src="/ssw/standards/rules/images/EmailUExample.jpg" /></dt>
            <dd>Figure: Example of Email user experience</dd></dl>
            <li>Windows</li>
            <dl class="image"><dt><img src="/ssw/standards/rules/images/WindowsUExample.jpg" /></dt>
            <dd>Figure: Example of Wndows user experience</dd></dl>
            <li>SharePoint</li>
            <dl class="image"><dt><img src="/ssw/standards/rules/images/SharePointReportingServices.jpg" /></dt>
            <dd>Figure: Example of SharePoint user experience</dd></dl>
                
            </ul>
           
             </li>
            
            <li>
                <h2><a name="Use"></a>Do you know when to use Reporting Services?</h2>
                <p>
                    Like any solution, Reporting Services has its pros and cons. From our 
                    experience, we have discovered these things about Reporting Services:
                </p>
                <p><strong>Cons</strong></p>
                <ul>
                    <li>Parameters - you are forced to use built-in controls</li><li>Query string - 
                    when you change the parameters and refresh a report, the values do not appear 
                    directly in the query string, making it hard to copy/paste URLs</li><li>Can't 
                        separate SQL into a strongly-typed dataset or middle-tier object like in ASP.NET</li><li>
                        There are potential difficulties with the deployment of RS reports and the 
                        exposing of them. However, once we have the infrastructure...</li></ul>
                <p><strong>Pros</strong></p>
                <ul>
                    <li>You can develop <strong>read only</strong> reports faster in Reporting Services 
                        than ASP.NET</li><li>Maintenance with RS is easier than ASP .NET, as with most 
                        cases you don't have to write any code</li><li>Flexibility with groupings and 
                        totals is easier. In ASP.NET you would need to iterate through the DataSet, 
                        keeping variables with the totals</li><li>Parameters are built-in. In ASP.NET 
                        there is code</li><li>Drilldown interactivity. In ASP.NET you need to code up a 
                        treeview</li><li>Users can have reports automatically emailed to them on a 
                        schedule</li><li>Users can export natively to PDF and XLS, plus a variety of 
                        other popular formats</li></ul>
                <p>
                    So in conclusion, if you will only ever need 1 report, go with ASP.NET - it is 
                    easier to get up and running. If you plan to have more than one report, use 
                    Reporting Services - it's worth the time to configure.
                </p>
                <p>
                    For a more detailed comparison between reporting solutions, take a look at our 
                    <a href="/ssw/Standards/DeveloperDotNet/guidelinesforreportingwebclient.aspx">
                    Guidelines for Report Solutions - Web Clients</a>.
                </p>
                <dl class="image">
                    <dt><img src="Images/RSRulesUseRS1.gif" /></dt><dd>Figure: Reporting Services 
                    has built-in support for PDF/XLS export and can be embedded in your ASP.NET 
                    pages</dd></dl>
            </li>
            <li>
                <h2><a name="GreenTicks"></a>Do you check that &quot;Report Server Configuration Manager&quot; 
                    is all green ticks?</h2>
                <p>
                    To ensure your Reporting Services is running in a healthy state, you need to 
                    check if you have all the green ticks in your &quot;Report Server Configuration 
                    Manager&quot;.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/RsConfigRed.gif" /></dt><dd>Bad Example - Reporting Services is 
                        not running in a healthy state</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RsConfigAllGreen.gif" /></dt><dd>Good Example - Reporting 
                        Services is configured correctly</dd></dl>
                <p>Note: &quot;Report Server Configuration Manager&quot; is only available in SQL Server 2005.</p>
            </li>
            <li>
                <h2><a name="CheckOutSampleReport"></a>Do you check out the built-in samples?</h2>
                <p>
                    SQL Server 2008 R2 Reporting Services comes with some great samples that will help 
                    get you started. Unfortunately, they aren't installed by default.
                </p>
                <p>
                    These samples include:</p>
                <ol>
                    <li> Report Project based on the 
                    Adventure Works 2008 R2 database</li><li> Report Builder Model based on the Adventure Works 2008 R2 
                        database</li></ol>
                <p>
                    Upon installing the samples successfully, you should see 3 folders (shown below) 
                    in your Report Manager.
                </p>
                <dl class="image">
                    <dt><img src="Images/Folders2008R2.gif" /></dt><dd>Figure: A proper installation of 
                    the samples</dd></dl>
                <p>
                    To install previous version of Adventure Works sample reports, see our knowledge base article: <a href="/ssw/KB/KB.aspx?KBID=Q1286726">
                        How do I install SQL Server 2005 with the Adventure Works Samples?</a></p>
                <p>
                    <a target="_blank" href="/ssw/Standards/AdventureWorksSamples.aspx">
                        AdventureWorks Reports Sample</a>
                </p>
            </li>
            <li>
                <h2><a name="importreports"></a>Do you know your 2 migration options to show your 
                    Access reports on the web?</h2>
                <p>The greatest advantage for Access Developers is that with Reporting Services your 
                    reports can become available on the web. If you have a heap of Access reports, 
                    what are the choices for getting them on the web?</p>
                <ol>
                    <li>Keep the existing reports in Access and expose them on the web with <a href="/ssw/accessreporter">
                        SSW Access Reporter</a>. This is the least amount of work, as SSW Access 
                        Reporter is a utility that delivers existing Access reports online with minimal 
                        re-coding. <a href="/ssw/accessreporter">Download a free trial</a> today and try 
                        it out for yourself.
                        <dl class="goodImage">
                            <dt>
                                <img src="/ssw/AccessReporter/Images/ReportManager.gif" />
                            </dt>
                            <dd>
                                Good Example - If you want to avoid migrating then SSW Access Reporter delivers 
                                your Access reports online so you can view them anywhere
                            </dd>
                        </dl>
                    </li>
                    <li>Import the reports into Reporting Services. Reporting Services has built-in 
                        support for importing and converting reports from Access. We have had plenty of 
                        success with it, but you will need to re-code things like conditional formatting 
                        and any code behind.
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/rsrulesimportreports.gif" />
                            </dt>
                            <dd>
                                Good Example - Reporting Services has built-in support for importing your Access 
                                reports
                            </dd>
                        </dl>
                    </li>
                </ol>
            </li>
            
            <!-- Layout Items -->
            <li>
                <h2><a name="PageLayout"></a>Layout - Does your report print and display on the web 
                    correctly?</h2>
                <p>
                    A lot of the time, you will want a hard copy of your reports. Obviously reports 
                    are different sizes on screen and on paper, so you need to format your report so 
                    it exports to PDF and prints properly. Here's how.</p>
                <ol>
                    <li>
                        <p>
                            <b>Change the report's page width to 28cm (or 11in) and top and bottom margins 
                            to 0.5cm.</b>
                        </p>
                        <dl class="goodImage">
                            <dt><img src="Images/reportpagewidth.gif" width="450" height="403"></dt><dd>Good 
                            Example - For proper printing, first change the Report's Page Width to 28cm (or 
                            11in)<span
                                    style="font-size: 1em"> </span>and top and bottom margins to 0.5cm</dd></dl>
                    </li>
                    <li>
                        <p>
                            <b>Change the Body width to 25.4cm (or 10in)</b>
                        </p>
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/reportbodywidth.gif" width="330" height="240"></dt><dd>Good 
                                Example - Then change the Report's Body Width to 25.4cm (or 10in)</dd></dl>
                        <dl class="badImage">
                            <dt>
                                <img src="Images/RulesSQLRS7.jpg" width="600" height="376"></dt><dd>Bad Example 
                                - PDF page with 1cm margin (wasted much space on top and bottom)</dd></dl>
                         <dl class="goodImage">
                            <dt>
                                <img src="Images/RSRuleMoreTopBottomPDF.png" width="600" height="376"></dt><dd>Good Example 
                                - PDF page with 0.5cm margin (you have more room for content)</dd></dl>
                        <p style="background-color:yellow">
                            You can see the 0.5cm margin looks much better than 1cm, and you have more space 
                            to organize your content, especailly for a landscape print view.<br />
                        </p>
                    </li>
                    <li><b>Resize report items (tables and charts) to fit the page.</b> The easiest way 
                        to do this is to select (Ctrl+click) all report items that should span the whole 
                        width of the page, and set their <b>Width</b> property to <b>25.4cm</b> (or 
                        10in).
                    </li>
                </ol>
                <p style="background-color:yellow">
                    <b>Tip: </b>Export your report to PDF and do a print preview, so you don't have 
                    to print a lot of testing pages to find out the best page settings.<br />

                    <b>Tip: </b>Remove top and bottom paddings in header and footer text can also give you more space.
                </p>
                <p>
                    <strong>Note: Reporting Services reports accept both inches and cm, so you can 
                    use either.</strong></p>
		<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to 
                        check for this rule.
                    </td>
                </tr>
            </table>
            </li>
            <li>
                <h2><a name="UsefulFooter"></a>Layout - Do you include a useful footer at the bottom 
                    of your reports?</h2>
                <p align="left">
                    You should always include a useful and informative footer at the bottom of your 
                    reports. Include:</p>
                <ol>
                    <li>Date and Time Printed and User who printed it - see warning below (e.g. <strong>
                        Printed by SSW2000\JatinValabjee on 3/1/2006 3:16:30 PM</strong>)</li><li>
                        Execution Time (e.g. <strong>Execution time: 1 minute, 10 seconds</strong>)</li><li>
                        Page x of y (e.g. <strong>Page 3 of 10</strong>)</li><li>
                        Link to company website + slogan&nbsp; (e.g. <a href="/SSW/Redirect/SSW/SSW.htm" target="_blank">
                            <strong>www.ssw.com.au</strong></a><strong> - Writing software people 
                        understand</strong>)</li></ol>
               
                    <dl class="badImage">
                        <dt><img src="Images/RSRulesBadFooter.gif" alt="bad - useless footer" width="676" height="308" /></dt><dd>
                        Bad Example - This footer doesn't provide any useful information </dd>
                    </dl>
                
                    <dl class="goodImage">
                        <dt><img src="Images/RSRulesGoodFooter.gif" alt="good - useful footer" width="702" height="315" /></dt><dd>
                        Good Example - Useful and informative information should be displayed in your 
                        report footer</dd></dl>
                <p>Use these handy report expressions to show the above information.</p>
                <table class="clsSSWTable" border="0" cellspacing="0" cellpadding="5" ><%--width="800"--%>
                    <tr>
                        <th>Footer Item</th>
                        <th>Expression</th>
                        <th>Sample Output</th>
                    </tr>
                    <tr>
                        <td valign="top">Date and Time Printed / User ID</td>
                        <td valign="top">=&quot;Printed by &quot; + User!UserID + &quot; on &quot; + 
                            Globals!ExecutionTime.ToString()</td>
                        <td valign="top">Printed by SSW2000\JatinValabjee on 3/1/2006 3:16:30 PM</td>
                    </tr>
                    <tr style="background-color: white">
                        <td valign="top">Execution Time</td>
                        <td valign="top">
                            =&quot;Execution Time: &quot; +<br />
                            IIf(System.DateTime.Now.Subtract(Globals!ExecutionTime).TotalSeconds &lt; 1, &quot;0 
                            seconds&quot;,
                            <br />
                            (<br />
                            IIf(System.DateTime.Now.Subtract(Globals!ExecutionTime).Hours &gt; 0, 
                            System.DateTime.Now.Subtract(Globals!ExecutionTime).Hours &amp; &quot; hour(s), &quot;, &quot;&quot;) +<br />
                            IIf(System.DateTime.Now.Subtract(Globals!ExecutionTime).Minutes &gt; 0, 
                            System.DateTime.Now.Subtract(Globals!ExecutionTime).Minutes &amp; &quot; minute(s), &quot;, 
                            &quot;&quot;) +<br />
                            IIf(System.DateTime.Now.Subtract(Globals!ExecutionTime).Seconds &gt; 0, 
                            System.DateTime.Now.Subtract(Globals!ExecutionTime).Seconds &amp; &quot; second(s)&quot;, &quot;&quot;))<br />
                            )
                        </td>
                        <td valign="top">Execution time: 1 minute, 10 seconds</td>
                    </tr>
                    <tr>
                        <td valign="top">
                            Page x of y
                        </td>
                        <td valign="top">
                            =&quot;Page &quot; + Globals!PageNumber.ToString() + &quot; of &quot; + 
                            Globals!TotalPages.ToString()</td>
                        <td valign="top">
                            Page 3 of 10</td>
                    </tr>
                </table>
                
                    <dl class="goodImage">
                        <dt><img src="Images/footerInDesigner.gif" alt="Footer in visual studio designer" width="773" height="509" /></dt><dd>
                        Good Example - Footer in visual studio designer</dd></dl>
                    <br />
                    Tip: Copy and Paste this XML into 
                the &lt;PageFooter&gt; for the recommended footer of all your *.rdl files.
                    <br />
                    <pre>	                &lt;PageFooter&gt;

                                   Paste here

                          &lt;/PageFooter&gt;
	                </pre>
	                <br />
                    <p><b>Warning: Adding the User who printed it stops all data-driven subscriptions</b>
                    <br />
                        When you try to add the User your data-driven subscriptions will fail with the 
                        following error:<br />
                        <br />
                        'The '/GroupHealth' report has user profile dependencies and cannot be run 
                        unattended. (rsHasUserProfileDependencies)'.
                        <br />                        
                    </p>
                      
                   <p>
                   <br />
                    A quick workaround is to add a user function to fallback the error to a nice message, like: "SYSTEM",
                    <dl class="code">
                        <dt>
                        <pre>
    Public Function UserName()
    Try
    Return Report.User!UserID
    Catch
    Return "System"
    End Try
    End Function                                       
                        </pre>
                        </dt>
                    </dl>
                    <br />
                    Use above function to replace your reference to Report.User!UserID will allow the subscription to work correctly. 
                    </p>
            </li>
			<li><h2><a name="BadWordInReport"></a>Layout - Do you avoid using word 'Report' in 
                your reports?</h2>
                <p>We believe the word 'Report' is redundant in a report, so we avoid using this 
                    word in our reports.</p>
                <dl class="badImage">
                    <dt><img src="Images/BadWordinReport.jpg" alt="redundant word 'report' in a report" height="236" width="449"></dt><dd>
                    Bad Example - redundant use of the word 'report' in a report</dd></dl>
                <dl class="goodImage">
                    <dt><img src="Images/NoBadWordinReport.jpg" alt="avoid using word 'report' in a report" height="205" width="399"></dt><dd>
                    Good Example - avoidance of the word 'report' in a report</dd></dl>
            </li>
            <li>
                <h2><a name="underline4HyperlinkAction"></a>Layout - Do you underline items with 
                    Hyperlink Action?</h2>
                <p>
                    The Hyperlink Action allows users to navigate between reports smoothly, but 
                    users may ignore the navigation functionality in your reports.</p>
                <dl class="badImage">
                    <dt><img src="Images/NoUnderline4Hyperlink.jpg" alt="No underline for item with hyperlink "></dt><dd>
                    Bad Example - No underline for hyperlink item</dd></dl>
                <dl class="badImage">
                    <dt><img src="Images/NoUnderline4Hyperlink_designer.jpg" alt="No underline for the textbox with hyperlink action"></dt><dd>
                    Bad Example - No underline for the textbox with hyperlink action</dd></dl>
                <p>With the underline effect on your hyperlink items, it will be easy for users to 
                    find the navigation on your reports.</p>
                <dl class="goodImage">
                    <dt><img src="Images/Underline4Hyperlink.jpg"></dt><dd>Good Example - Underline 
                    for hyperlink item</dd></dl>
		<dl class="goodImage">
                    <dt><img src="Images/Underline4Hyperlink_designer.jpg"></dt><dd>Good Example - 
                    Underline for textbox with hyperlink action</dd></dl>
		<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to 
                        check for this rule.
                    </td>
                </tr>
            </table>
            </li>
            <li>
                <h2><a name="ErrorsInRed"></a>Layout - Do you show errors in <span style="color: red">
                    Red</span>?</h2>
                <p>
                    Errors on reports should not occur but when they do it is best to make it clear to 
                    the reader that they have just experienced an error.<br />
                    How evident are the error messages on the 1st report below?</p>
                <dl class="badImage">
                    <dt><img src="Images/RSErrorMessageT1.jpg" /></dt><dd>Bad Example - Using the 
                    default NoRows property of the table control - error message is not clear enough</dd></dl>
                <dl class="goodImage">
                    <dt><img src="Images/RSErrorMessageT2.jpg" /></dt><dd>Good Example - Use a 
                    customized textbox and icon to show the error message in red</dd></dl>
                <p>
                    Reporting Services allows you to set the 'NoRows' property of a table control to 
                    warn your user when there is no data available. This is similar to handle the 
                    'NoData event' in Access report but there is no advanced control on this 
                    message, not even a Color property - this has not been improved in RS2005, see 
                    our 
                    <a href="/ssw/Standards/BetterSoftwareSuggestions/ReportingServices.aspx#ShowErrorInRed">
                    Better Software Suggestions page</a>.
                </p>
                <dl class="image">
                    <dt><img src="Images/RSErrorMessageT3.jpg" /></dt><dd>Figure: NoRow property of 
                    Table control only allow simple string</dd></dl>
                <p>Here's how to add a custom &quot;NoData&quot; textbox with a red icon to your report:</p>
                <ol>
                    <li>Add a rectangle to the top of your report, above any report items in the body. 
                        Set its <b>BorderColor</b> to <b>Red</b></li><li>Drop a textbox into the 
                        rectangle and give it the value <b>No records were found matching your criteria. 
                        Please modify your parameters and try again.</b></li><li>Add an Image control 
                        next to it. Use <a href="/ssw/Images/ErrorMessage/fatal_error_info.gif"
                        target="_blank">this error icon</a> as the Image (add it to your Images folder 
                        in your solution and reference it like <b>Images/fatal_error_info.gif</b>). Your 
                        report will now look similar to the one below.
                        <dl class="image">
                            <dt>
                                <img src="Images/RSErrorMessageT4.gif" /></dt><dd>Figure: Adding a custom error 
                                message to your report</dd></dl>
                    </li>
                    <li>In the <b>Hidden</b> property of the <b>Rectangle</b>, add an expression to 
                        show/hide it depending on whether any rows were returned. Use the following 
                        expression, substituting the bold for your own values (e.g. checking if the sum 
                        of all orders is &lt; 0)
                        <pre><b>--Expression to set the visibility of the error message controls</b>

= iif( Sum(Fields!SaleTotal.Value, &quot;MyDataSet&quot;)&gt;0, True, False)</pre>
                        <dl class="image">
                            <dt><img border="0" src="Images/RSErrorMessageT5.gif" /></dt><dd>Figure: The 
                            Hidden property of the rectangle</dd></dl>
                    </li>
                    <li>Group all other report items into a rectangle - you want to be able to show and 
                        hide them dynamically</li><li><span style="font-size: 10pt">In the <b>Hidden</b> 
                        property of this <b>Rectangle</b>, add an expression to show/hide it depending 
                        on whether any rows were returned. Switch the True and False values around, so 
                        that it shows if it does have records, and hides if it does not have records 
                        (the opposite behaviour to the error box). So, in the example above, the 
                        expression would be:</span>
                        <pre><b>--Expression to set the visibility of the main report items</b>

= iif( Sum(Fields!SaleTotal.Value, &quot;MyDataSet&quot;)&gt;0, <b>False</b>, <b>True</b>)
                        </pre>
                    </li>
                </ol>
            </li>
            <li><a name="ReportName"></a><H2>Layout - Do you have consistent report name?</H2>
		    <p>A professional report should have consistent name.
		    </p>
		    <dl class="badImage">
                <dt>
                    <img src="Images/ReportNameConsistency_bad.gif"></dt>
                <dd>Bad Example - Inconsistent report name</dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img src="Images/ReportNameConsistency_good.gif"></dt>
                <dd>Good Example - Consistent report name</dd>
             </dl>
	        </li>
	        <li><a name="Feedback"></a><H2>Layout - Do you include feedback information in the 
                report?</H2>
		    <p>A professional report should have the feedback information, then users can give 
                suggestions directly to the designers.
		    </p>
            <dl class="goodImage">
                <dt>
                <img src="Images/ReportFeedback.gif"></dt>
                <dd>Good Example - Include feedback information</dd>
            </dl>
	        </li>
	                    <li>
                <h2>
                    <a name="Version"></a>Layout - Do you know which version of Reporting Services 
                    you are running?</h2>
                <p>
                    You can add the version number to the name of the reporting server by:<br />
                    <ol>
                        <li>Going to Site Settings</li>
                        <li>Add 2005 or 2008 to the name</li>
                    </ol>
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/ReportingServiceVersion.GIF" />
                    </dt>
                </dl>
                  <dl class="badImage">
                    <dt>
                        <img src="Images/VersionBad.GIF" alt="SSW - Report UI" /></dt>
                    <dd>
                        Bad Example - You can't tell what version of reporting services you are running</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/VersionGood.gif" alt="SSW - Report UI" /></dt>
                    <dd>
                        Good Example - We can clearly see that this is running Reporting Services 2005</dd></dl>
            </li>
            <li>
                <a name="PageHeader"></a><h2>Layout - Do you put content as less as possible in page header?</h2>
                <p>
                    Things in page header repeat on every page. To avoid duplicate and save paper when printing, we put content as less as possible in page header.
                </p>
                <dl class="badImage">
                    <dt><img src="Images/RS_PageHeader_Bad.gif" /></dt><dd>Bad Example - too many things in page header</dd></dl>
                <dl class="goodImage">
                    <dt><img src="Images/RS_PageHeader_Good.gif" /></dt><dd>Good Example - little in page header</dd></dl>
            </li>
            <!-- Data Layout Items -->
            <li>
                <h2><a name="6months"></a>Data Layout - Do you show the past 6 months of totals in a 
                    chart?</h2>
                <p>
                    When you are working with reports that use time-based data (sales figures, 
                    employee productivity etc.), it is handy to see how you went this month compared 
                    to the past 6 months. The best way to show this is on a bar chart.</p>
                <dl class="goodImage">
                    <dt><img src="Images/RSRules6MonthChart.gif" /></dt><dd>Good Example - Use of 
                    bar chart to show the past 6 months of totals at the end of your report for easy 
                    comparison</dd></dl>
                <p>To do this:</p>
                <ol>
                    <li>Create a new dataset in your report</li><li>Enter the following query, 
                    substituting &quot;MyDate&quot; for the name of the date field you are referencing, 
                    &quot;MyTable&quot; for the view or table you are selecting from, and &quot;@pEndDate&quot; for the 
                    name of the report parameter you are using for the data end date:
                        <pre>SELECT DISTINCT TOP 6
  CONVERT(varchar(12), Year(<strong>MyDate</strong>), 101) + '-' + RIGHT('0' + Convert(Varchar(2), <strong>MyDate</strong>, 101), 2) AS Y
  , Sum(PaidTotal) * -1 AS Total
FROM
  <strong>MyTable</strong>
WHERE
  <strong>MyDate</strong> BETWEEN DateAdd(Month,-5,convert(varchar(12), Month(<strong>@pEndDate</strong>)) + '/1/' + convert(varchar(12), Year(<strong>@pEndDate</strong>))) AND 
CASE WHEN datepart(d,<strong>@pEndDate</strong>) = 1 THEN DateAdd(d, 1, <strong>@pEndDate</strong>) ELSE <strong>@pEndDate</strong> END
GROUP BY
  CONVERT(varchar(12), Year(<strong>MyDate</strong>), 101) + '-' + RIGHT('0' + Convert(Varchar(2), <strong>MyDate</strong>, 101), 2)
ORDER BY
  CONVERT(varchar(12), Year(<strong>MyDate</strong>), 101) + '-' + RIGHT('0' + Convert(Varchar(2), <strong>MyDate</strong>, 101), 2)
                        </pre>
                    </li>
					<li>Configure the new added parameter 'pEndDate'</li><dl class="image"><dt><img src="Images/RSRules6MonthChart_AddParameter.gif" /></dt><dd>
                        Figure: Change Data Type to DateTime and assign to the proper default values</dd></dl>
                        
					
                    <li>Add a chart to your report in Layout view and change its type to &quot;Simple Column&quot;</li><li>
                        Drag the &quot;Total&quot; field from the Datasets window into the Data area on the chart, 
                        and the &quot;Y&quot; field into the Category area. Your chart will now look similar to 
                        the one below.
                        <dl class="image">
                            <dt><img src="Images/RSRules6MonthChart_Layout.gif" /></dt><dd>Figure: Build up 
                            the column chart in layout view</dd></dl>
                    </li>
                    <li>Now you need to set the last column to be a different color so it stands out. 
                        Right-click the chart and click Properties.</li><li>Click the &quot;Data&quot; tab, click 
                        &quot;Edit...&quot; next to the &quot;Values&quot; box, then go to the &quot;Appearance&quot; tab and click 
                        &quot;Series Style...&quot; then the &quot;Fill&quot; tab.
                    </li>
                    <li>In the &quot;Color&quot; textbox, enter this expression, then OK all dialogs to return to 
                        the report:
                        <pre>=iif(Right(Fields!Y.Value, 2)=Month(Parameters!pEndDate.Value), &quot;Blue&quot;, &quot;Green&quot;)</pre>
                    </li>
                </ol>
            </li>         
            
            <li>
                <h2><a name="datachartinone"></a>Data Layout - Do you show data and chart in one?</h2>
                <p>It is important to provide a chart, as well as the data which it is based on. 
                    Users of the report service will find the data easier to understand and compare. 
                    However, in order for the report to be understandable, the data and chart must 
                    be clear and uncluttered.</p>
                <dl class="badImage"><dt><img src="Images/BadDataReport.jpg" /></dt>
                <dd>Bad Example - there is no chart to visually represent the data</dd></dl>
                <dl class="badImage"><dt><img src="Images/BadDataChartReport.jpg" /></dt>
                <dd>Bad Example - there is a chart, however it is not clear</dd></dl>
                <dl class="goodImage"><dt><img src="Images/GoodDataChartReport.jpg" /></dt>
                <dd>Good Example - Data and chart are clearly integrated into one</dd></dl>
            </li>
            <li>
                <a name="AvoidSingleChart"></a><h2>Data Layout - Do you avoid using a single chart when 
                    you need it to be scaled?</h2>
                
               <dl class="badImage"><dt><img src="Images/RulesToBetterBusinessIntelligence_ChartBad1.gif" /></dt><dd>
                   Bad Example - Just a chart - poor scaling for only 1 record</dd></dl>
                   
              <dl class="badImage"><dt><img src="Images/RulesToBetterBusinessIntelligence_ChartBad2.gif" />
              </dt>
              <dd>Bad Example - Just a chart - poorly scaling when many records</dd></dl>
                    <p>
                        The reason for this problem is that the 'size' property of the chart control 
                        doesn't support expressions like 'Count(Rows) or queried values like 
                        'Fields!RowCount.Value', so the chart control cannot adjust its size according 
                        to the data.<br />                    
                        The solution for this problem is to use an embedded chart within the table - 
                        this will create a dynamic chart list similar to the list shown below.</p>
                    <dl class = "image"><dt><div class="greybox"><img src ="Images/ChartProperties_size.JPG" alt="" /></div></dt><dd>
                        Figure: Size property of the chart control</dd></dl>
                    <dl class="goodImage"><dt><img src="Images/RulesT12.gif" alt="" /></dt><dd>Good 
                        Example - A table with chart</dd></dl>
                    
                    To do this, you need to create a table in your report and add a chart into 
                each of the rows.
                    <dl class="image"><dt><img src="Images/RulesToRS-chart-1.gif" alt="" width="726" height="332"></dt><dd>
                        Figure: Embedded chart in a table will generate dynamic chart list</dd></dl>
                    
                <p>
                    <b>Note:</b> When rendering a report to your browser or an email, Reporting 
                    Services generates a separate image for every single image in the report, even 
                    if they are identical. When you are using graphs, images or charts in your 
                    report, this can cause a large number of images to be generated. Always include 
                    a red warning at the top of any emailed reports so that users do not try and 
                    forward or reply to them. Use a warning like this:
                </p>
                <p>
                    <span style="color: red"><strong>Warning: Do not reply to or forward this report 
                    in an email - Outlook may slow down or even hang</strong></span>
                </p>
            </li>
            <li>
                <h2><a name="maxminvalues"></a>Data Layout - Do you use expressions to show the 
                    correct scale on charts?</h2>
                <p>
                    In Reporting Services 2005 you can use an expression to specify the scale of 
                    your charts. If you do not specify a maximum value for your y axis, the bar 
                    charts become inaccurate, as you can see in this figure.
                </p>
                <dl class="badImage">
                    <dt><img src="Images/RSRulesChartBad.gif" /></dt><dd>Bad Example - With no scale 
                    value set, the charts do not display based on the correct scale</dd></dl>
                <p>Here's how to set the scale.</p>
                <ol>
                    <li>In Layout view, add a new row to the bottom of the table</li><li>At the 
                    bottom of the column with the chart, set the textbox value to 
                    =Max(Fields!MyTotal.Value), where &quot;MyTotal&quot; is the Data field you're using in 
                    the chart.
                        <dl class="image">
                            <dt><img src="Images/RSRulesChart01.gif" /></dt><dd>Figure: Add a new row to 
                            your table and set the max value</dd></dl>
                    </li>
                    <li>Set the textbox's Name property to MaxMyTotal (e.g. MaxCount)</li><li>Set 
                    the new row's Visibility/Hidden property to true - you don't want to show it in 
                    the report</li><li>Open the Chart properties and select the &quot;Y Axis&quot; tab</li><li>
                    Set the Maximum value to the value of the textbox, i.e. 
                    &quot;=ReportItems!MaxMyTotal.Value&quot;
                        <dl class="image">
                            <dt><img src="Images/RSRulesChart02.gif" /></dt><dd>Figure: Set the maximum 
                            value to the value of the textbox</dd></dl>
                    </li>
                    <li>If you expect to have negative values in the chart (e.g. when comparing 2 
                        values), set the Minimum to -1 multiplied by the max value, i.e. &quot;=-1 * 
                        ReportItems!MaxMyTotal.Value&quot;. Otherwise set it to 0 (zero). </li>
                    <li>If you expect to have negative values in the chart, select the chart value in 
                        the Data tab and click &quot;Edit...&quot; . Go to <b>Appearance-&gt;Series Style-&gt;Fill</b>
                        and enter the following expression:
                        <pre>=iif(Fields!Change.Value &gt; 0, &quot;Green&quot;, &quot;Red&quot;)</pre>
                        Where &quot;Change&quot; is the name of your data field. This sets the color of the bar to 
                        green if it is positive, and red if it is negative 
                    </li>
                    <li>Click OK and preview the report. The chart will now be using the maximum value 
                        across all the charts.
                        <dl class="goodImage">
                            <dt><img src="Images/RSRulesChart03.gif" /></dt><dd>Good Example - The scale is 
                            now correct</dd></dl>
                    </li>
                </ol>
                <div class="greyBox">
                    This way is tedious and a &quot;hack&quot;. We think that the scale should be automatically 
                    set with an option to customize it via an expression. See our suggestion about 
                    this on 
                    <a href="/ssw/Standards/BetterSoftwareSuggestions/ReportingServices.aspx#ChartExpressions">
                    Microsoft SQL Reporting Services Suggestions</a>.
                </div>
            </li>
            <li>
                <h2>
                    <a name="ShowChange"></a>Data Layout - Do you show change in your reports?</h2>
                <p>
                    It is important to show previous and current data, as well as the changes between
                    the two.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/badNoChange.jpg" /></dt>
                    <dd>
                        Bad example - does not show the change between the previous and current data</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/goodChangeVisible.jpg" /></dt>
                    <dd>
                        Good example - shows the change between the previous and current data</dd></dl>
                <p>
                    There will be cases in which the Change column has no meaning then you'd better
                    to make this column invisible in your reports. In one of our reports we use an expression
                    on Hidden property of this column to determine whether to show it based on the value
                    of a parameter.
                </p>
                <dl class="code">
                    <dt>
                        <pre>=iif(Parameters!ComparedExtractionID.Label = &quot;N/A&quot;,true,false)</pre>
                    </dt>
                    <dd>
                        Expression for Hidden property</dd></dl>
                    
            </li>
            <li>
                <h2><a name="ChangePercent"></a>Data Layout - Do you avoid showing change as a 
                    percentage?</h2>
                <p>
                    When comparing two sets of data in a report (for example, sales this month 
                    compared to last), showing the change as a percentage is a bad idea. For 
                    example, if you made 1 sale last month and 2 this month, you have had a 100% 
                    increase. If for another product you made 1000 sales last month and 2000 this 
                    month, that is also a 100% increase, but you've sold 1000 of that product 
                    compared to 1 of the other product.</p>
                <p>
                    For this reason, show the difference as an actual value, so you can compare all 
                    values easily. See the figures below for examples. To see how to create the 
                    negative/positive valued chart, see <a href="#maxminvalues">Do you use 
                    expressions to show the correct scale on charts?</a>
                </p>
                <p>
                    <strong>Bad</strong> 
                    <img src="/ssw/Images/IconPdf.gif" width="16" height="17" />&nbsp; - Notice how the 
                    &quot;change&quot; column in the report doesn't accurately reflect the difference in 
                    downloads - 1 download last month and 2 downloads this month will yield a 100% 
                    increase - which looks impressive as a percentage but really isn't.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/productdownloadgraph_rs2005_bad.gif" />
                    </dt>
                    <dd>
                        Bad Example - The percentage change column in this Reporting Services product 
                        downloads report is misleading
                    </dd>
                </dl>
                <p>
                    <strong>Good</strong> 
                    <img src="/ssw/Images/IconPdf.gif" width="16" height="17" />
                    - This works better just showing the difference between the two values over the 
                    2 months.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/productdownloadgraph_rs2005_good.gif" />
                    </dt>
                    <dd>
                        Good Example - The column works better as just a difference between the current 
                        and previous download totals
                    </dd>
                </dl>
            </li>
            <li>
                <h2><a name="alternating"></a>Data Layout - Do you use alternating row colors?</h2>
                <p>
                    For readability, always use alternating row colors. Use White and Gainsboro (a 
                    light shade of grey). Select the row, and enter this expression in the 
                    BackgroundColor property:</p>
                <pre>= iif(RowNumber(Nothing) Mod 2, &quot;White&quot;, &quot;Gainsboro&quot;)</pre>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RSRules_alternatingcolors.gif" width="570" height="348" />
                    </dt>
                    <dd>
                        Good Example - Alternating row colors greatly improve the readability of 
                        reports, and is very easy to do in Reporting Services
                    </dd>
                </dl>
            </li>
            <li>
                <h2><a name="NodeNumber"></a>Data Layout - Do you have nodes count like Outlook?</h2>
                <p>A report with drill through like this should have the number in nodes like Outlook.</p>
                <dl class="badImage"><dt> <img src="Images/No_number.jpg" /></dt>
                <dd>Bad Example - This does not have the nodes count</dd></dl>
                  <dl class="goodImage"><dt><img src="Images/number.jpg"></dt>
                  <dd>Good Example - This does have the nodes count</dd></dl>
                    
                <p>
                    Here's how to add nodes count to the textbox with &quot;collapsed(+)&quot; in your report:
                </p>
                <p>
					In the <b>Expression</b> property of the <b>Textbox</b>, add an expression to 
                    show nodes count. Use the following expression:</p>
                    <dl class="bad">
                    <dt>
                        <b>--Change the SQL ( or add a new DataSet )</b><br />
                        SELECT a.TerritoryID, <b>( CONVERT ( varchar,a.TerritoryDescription ) + ' (' + 
                        CONVERT ( varchar, count ( c.TerritoryID ) ) + ')' ) AS Number</b>, ... FROM 
                        Territories a INNER JOIN EmployeeTerritories b ON a.TerritoryID=b.TerritoryID, 
                        ... GROUP BY a.TerritoryID, a.TerritoryDescription,...<br /><br />
                      <b>--Expression to show nodes count</b><br /><br />
                                = Fields!Number.Value</dt>
                                <dd>Bad Example - Get the Outlook Node Count look by changing the SQL.</dd></dl>
                                <br/>
                  <dl class="good">
                  <dt>
                  <b>--Expression to show nodes count</b>
                                <br /><br />
                                = Fields!Name.Value <b>+ &quot;(&quot; + CStr ( CountRows( ) ) + &quot;)&quot;</b>
                  
                  
                    </dt>
                    <dd>
                        Good Example - Use the CountRows() function to get the Outlook Node Count look.</dd>
                </dl>
                <p>
                    Note: The <b>CountRows</b> function is one of the several native functions 
                    provided by Reporting Services and returns the count of rows within a specified 
                    scope. If no scope is specified, it defaults to the innermost scope, which in 
                    our case resolves to the static group that defines the values in the data cells.
                </p>
            </li>
            <li>
                <h2>
                    <a name="DecimailPlace"></a>Data Layout - Do you avoid displaying decimal places?</h2>

                <div class="greyBox">
                    <p>Moved to <a href="https://ssw.com.au/rules/avoid-using-too-many-decimals">Power BI � Do you avoid using too many decimal places in reports?</a></p>
                </div>
                <del><p>
                    Having decimal places is generally not required when the numbers are there to 
                    show a general indication. Only include decimal places on reports for 
                    accountants that will be used for reconcilations.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/decimal.jpg" /></dt><dd>Bad Example - This does display decimal 
                        place</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/No_decimal.jpg" /></dt>
                    <dd>
                        Good Example - This avoid displaying decimal place</dd></dl>
                <p>
                    Here's how to remove decimal place in your report:</p>
                <p>
                    In the <b>Expression</b> property of the <b>Textbox</b>, add an expression to 
                    format currency values. Use the following expression:</p>
                <div class="greyBox">
                    <b>--Expression to remove decimal place<br />
                    </b>
                    <br />
                    c0 = <b>FormatCurrency(</b> Sum(Fields!TotalDue.Value),<b> 0)</b>
                </div>
                <p>
                    Note: The <b>FormatCurrency</b> function is one of several native functions 
                    provided by Reporting Services and returns an expression formatted as a currency 
                    value using a currency symbol according to the language setting on the textbox.
                </p>
                <p>What is some managers don't want decimals and accountants do?</p>
                <p>
                    For some users (usually accountants) the number is critical to accurate reporting and reconciliation. In such cases, add a parameter to let the users choose.
                </p>
                <p>This workaround should not be necessary. See <a href="../BetterSoftwareSuggestions/ReportingServices.aspx#DecimalPlace">the suggestion to Reporting Services ?Give users a runtime option to increase or decrease decimals places</a>, so we don't need this workaround.</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/DecimalParameter.GIF" /></dt>
                    <dd>
                        Good Example - Add a parameter to set the decimal places format</dd></dl></del>
            </li>
            <li>
                <h2>
                    <a name="TableRowHeight"></a>Data Layout - Do you have consistent height of 
                    table row across all your reports?</h2>
                <p>
                    Same height of table row across all reports gives users consistent and 
                    professional impression. We use the default height of table row (0.63492cm) as a 
                    standard to make sure all tables in our reports have consistent row height.
                </p>
                <p>
                    This rule also applies to height of Textbox in all reports.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/RowHeight_Bad.gif" />
                    </dt>
                    <dd>
                        Bad Example - Bad Height</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RowHeight_Good.gif" />
                    </dt>
                    <dd>
                        Good Example - Good Height</dd></dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/RSRowHeight_NonStandard_design.JPG" />
                    </dt>
                    <dd>
                        Bad Example - Bad Height In Design View</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RSRowHeight_Standard_design.JPG" />
                    </dt>
                    <dd>
                        Good Example - Good Height In Design View</dd></dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor">
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
                    <a name="AvoidZeroNumber"></a>Data Layout - Do you display zero number as blank 
                    in your reports?</h2>
                <p>
                    It looks better to display zero numbers as blank than to leave lots of '0' in a 
                    report. It's easy to do with a simple format code '#,#'.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/AvoidZeroNum_Bad.gif" />
                    </dt>
                    <dd>
                        Bad Example - Bad Zero Number Format</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/AvoidZeroNum_good.gif" />
                    </dt>
                    <dd>
                        Good Example - Good Zero Number Format</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/AvoidZeroNum_format.gif" />
                    </dt>
                    <dd>
                        Good Example - Format Code</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="BestDataShow"></a>Data Layout - Do you know the best way to show your 
                    data?</h2>
                <dl class="badImage">
                    <dt>
                        <img src="images/Chart_PlainTable.GIF" />
                    </dt>
                    <dd>
                        Bad Example - Plain table</dd></dl>
                <dl class="goodImage">
                    <dt>&nbsp; </dt>
                    <dt>
                        <img src="images/Chart_PlainTableWithChart.GIF" />
                    </dt>
                    <dd>
                        Good Example - Plain table with separate chart</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="images/Chart_TableWithBarChart.GIF" />
                    </dt>
                    <dd>
                        Good Example - Table with bar chart embedded</dd></dl>
            </li>
            <li><a name="TimeFormat"></a>
                <h2>
                    Data Layout - Do you show time format clearly?</h2>
                <p>
                    It will give a professional look for your report to show time in a clear and 
                    consistant format.
                    <dl class="badImage">
                        <dt>
                            <img src="images/RSTimeFormat_bad.GIF" />
                        </dt>
                        <dd>
                            Bad Example - bad time format</dd></dl>
                    <dl class="goodImage">
                        <dt>&nbsp; </dt>
                        <dt>
                            <img src="images/RSTimeFormat_good.GIF" />
                        </dt>
                        <dd>
                            Good Example - clear time format</dd></dl>
                    A related rule about time format is <a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Reports.aspx#TimePrecision">
                        Do you keep Time formats consistent across your application?</a>
                </p>
            </li>
            <li><a name="ReportParameters"></a>
                <h2>
                    Data Layout - Do you show all of the report parameters in body?</h2>
                <p>
                    It is much better to display all of the report parameters in report body, 
                    because it will be clear for users to know what they search not only in IE but 
                    also in exported file (PDF, Excel).
                    <dl class="badImage">
                        <dt>
                            <img src="Images/RSReportParameters_bad.gif" />
                        </dt>
                        <dd>
                            Bad Example - not displaying all report parameters</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt>&nbsp;</dt>
                        <dt>
                            <img src="Images/RSReportParameters_good.gif" />
                        </dt>
                        <dd>
                            Good Example - displaying all report parameters</dd>
                    </dl>
                </p>
            </li>
            <li><a name="LogicalPageBreak"></a>
                <h2>
                    Data Layout - Do you know how to use logical page breaks?</h2>
                <p>
                    Sometime you want your report to break at somewhere to separate different part 
                    of content into individual pages. A logical page break is what you need.
                </p>
                <p>
                    Logical page breaks are defined in the report definition by using the 
                    PageBreakAtStart and PageBreakAtEnd properties in various report elements, 
                    including group, rectangle, list, table, matrix, and chart.
                </p>
                <p>
                    Here is an example of how we add logical page breaks in a report to make each 
                    subreport start showing at right beginning in a new page.
                    <dl class="image">
                        <dt>
                            <img src="Images/RSLogicalPageBreak.jpg" /></dt>
                        <dd>
                            Figure: Insert a logical page break before a rectangle containing a subreport</dd></dl>
                    <dl class="image">
                        <dt>
                            <img src="Images/RSLogicalPageBreak_Preview.jpg" /></dt>
                        <dd>
                            Figure: The subreport started in a new page</dd></dl>
                </p>
            </li>
            <li><a name="ChartInRow"></a>
                <h2>
                    Data Layout - Do you know how to prevent charts growing with rows?</h2>
                <p>
                    By default charts in table grow with rows. This makes height of charts 
                    inconsistent and the report ugly.
                    <dl class="badImage">
                        <dt>
                            <img src="Images/RS_ChartInRow_Bad.gif"></dt>
                        <dd>
                            Bad Example - inconsistent chart height</dd></dl>
                    Putting a rectangle in table cell and placing your chart in the rectangle 
                fixes this problem.
                    <dl class="goodImage">
                        <dt>
                            <img src="Images/RS_ChartInRow_Good.gif"></dt>
                        <dd>
                            Good Example - consistent chart height</dd></dl>
                </p>
            </li>
            <li><h2><a name="VerticalText"></a>Data Layout - Do you take advantage of vertical text (when there are lots of thin columns)?</h2>
                <p>When a report has many columns and each column contains small amount of data, it is a good idea to use vertical text for the column headers.<br />
By changing the <b>WriteMode</b> of a text box from <br />
<pre>
    <b>lr-tb</b> (left to right, top to bottom)
    </pre>
to <br />
<pre>
    <b>tb-lr</b> (top to bottom, left to right) 
</pre>
your text will become vertical, and you save lots of space.
</p>
<dl class="badImage">
<dt><img src="Images/RS_VerticalText_1.GIF" width="600"/></dt>
<dd>Bad Example - Not using vertical text for headings, when you have lots of thin columns</dd>
</dl>
<dl class="badImage">
<dt><img src="Images/RS_VerticalText_2.GIF"/></dt>
<dd>Bad Example - Not using ticks and crosses</dd>
</dl>
<dl class="goodImage">
<dt><img src="Images/RS_VerticalText_3.GIF"/></dt>
<dd>Good Example - The report width has been reduced by clever use of the vertical text in the column headers</dd>
</dl>
<p>Note: Microsoft have not given us the option of having the vertical text bottom to top. It would be easier to read. This suggestion has been added to Suggestions for Microsoft RS</p>
            </li>
            <li><a name="PriorColor"></a><h2>Data Layout - Do you use gray color for past data?</h2>
                <p>
                    It's common that gray color means old, so we use gray  for past data in reports.                    
                </p>
                <dl class="badImage">
                <dt><img src="Images/RS_Color4Prior_Bad.gif"/></dt>
                <dd>Bad Example - old data not in gray</dd>
                </dl>
                <dl class="goodImage">
                <dt><img src="Images/RS_Color4Prior_Good.gif"/></dt>
                <dd>Good Example - old data in gray</dd>
                </dl>
            </li>
            <li>
                <a name="3DCylinder"></a><h2>Data Layout - Do you use 3D cylinder in column chart?</h2>
                <p>
                    3D cylinder chart will make your report cool. </p>
                     <dl class="badImage">
                    <dt><img src="Images/RS_3DCylinder_Bad.gif"/></dt>
                    <dd>Bad Example - normal 2D column</dd>
                    </dl>
                    <dl class="goodImage">
                    <dt><img src="Images/RS_3DCylinder_Good.gif"/></dt>
                    <dd>Good Example - cool 3D cylinder</dd>
                    </dl>                
            </li>
            <li>
                <a name="TitleCentered"></a><h2>Data Layout - Is title centered in chart?</h2>
                <p>
                    Title should be centered in chart.
                </p>
                <dl class="badImage">
                    <dt><img src="Images/RS_TitleCentered_Bad.gif"/></dt>
                    <dd>Bad Example - title not centered</dd>
                    </dl>
                    <dl class="goodImage">
                    <dt><img src="Images/RS_TitleCentered_Good.gif"/></dt>
                    <dd>Good Example - title centered</dd>
                    </dl>    
            </li>
            <!-- Data Logic Items -->
            <li><a name="Denormalized"></a>
                <h2>
                    Data Logic - Do you use de-normalized database fields for calculated values?</h2>
                <p>
                    Most reports contain some sort of calculation - order totals, freight costs and 
                    so on. You have 3 options on how to display this in your report:</p>
                <ol>
                    <li><b>Use an expression in the report (bad).</b> Avoid doing this because your 
                        logic is scattered throughout the report, and also because this logic cannot be 
                        shared around reports or with your other web and windows applications. </li>
                    <li><b>Call an assembly with the calculated logic (better).</b> This is better then 
                        using a calculation expression because the logic can be shared over multiple 
                        reports, and it is easy to find as all the logic is inside the one .NET project. 
                        It is not the best solution because there is an extra level of complexity as you 
                        have to build, compile and reference the assembly containing the logic. </li>
                    <li><b>Use a denormalised database field (best).</b> This is the best way because 
                        not only is the calculated value accessible directly from the report's data set, 
                        but the value is already pre-calculated which can provide a performance 
                        improvement (compared to calculating the value each time the report runs). </li>
                </ol>
                <dl class="badImage">
                    <dt>
                        <img src="Images/RSRulesCalculatedBad.gif" width="600" height="579" /></dt>
                    <dd>
                        &nbsp;Bad Example - Figure: Avoid using expressions for calculated values</dd>
                                </dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/RSRulesCalculatedBetter.gif" width="600" height="443" /></dt>
                    <dd>
                                                        Bad Example - Figure: Avoid using external assemblies for calculated values - it 
                        adds an unnecessary level of complexity</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RSRulesCalculatedBest.gif" width="560" height="609" /></dt>
                    <dd>
                            Good Example - Figure: Use a denormalised database field for calculated values</dd></dl>
            </li>
            <li>
                <a name="Rank"></a><h2>Data Logic - Do you use SQL Ranking functions to rank your data</h2>
                <p>
                SQL Ranking functions are introduced since SQL 2005. With these handy functions, you can easily rank your data. 
                </p>
                <pre>
                    <b>SQL Snippet</b>
                    SELECT Rank() Over(Order A.BillableTimeTotal Desc) As Rank
                </pre>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RS_SQLRank.gif" /></dt>
                    <dd>
                          Figure: Rank by SQL Ranking functions</dd></dl>
            </li>
            <!-- Parameters Items -->
            <li>
                <h2>
                    <a name="DefaultParameters"></a>Parameters - Do you avoid showing empty reports 
                    by at least setting Default parameters?</h2>
                <p>
                    When a user opens a report that has no default parameters, there is always a 
                    split-second of confusion as to why the page is blank. Default parameters allow 
                    the user to see what they expect... a report, and they also show users the 
                    expected format for parameters and make it easier to run validation tests to see 
                    if all the reports on your server are working correctly.</p>
                <p>
                    When you create reports, always set default parameters.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/DefaultParametersBad.gif" border="1" width="600" height="498"></dt>
                    <dd>
                        Bad Example - There are no Default Values set for the Parameter</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/DefaultParametersGood.gif" border="1" width="600" height="500"></dt>
                    <dd>
                        Good Example - Default Parameters can be specified manually (non-queried) or 
                        from a query</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="BadParameterlabel"></a>Parameters -  Do you avoid unnecessary words in the parameter?</h2>
                    <p>Words such as: "Select", "Enter" and "Type" used in the parameter names are always a bad practice and should avoided</p>
                    <dl class="badImage">
                        <dt><img src="Images/BadParameterlabelBad.png" border="1" width="600" height="500"></dt>
                        <dd>Bad Example - Parameters with unnecessary words</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt><img src="Images/BadParameterlabelGood.png" border="1" width="600" height="500"></dt>
                        <dd>Good Example -  Parameters without unnecessary words</dd>
                    </dl>
            </li>
            <li>
                <h2>
                    <a name="AvoidEmptyReport"></a>Parameters - Do you avoid showing empty reports 
                    by the most intelligent default?(espacially for dates)</h2>
                <p>
                    When user opens a report, they expect to see something. It is the developer's job 
                    to get the default values for parameters right. And of course you don't get it 
                    right by hard coding defaults.
                    <br />
                    <br />
                                  
                
                
                <dl class="badImage">
                    <dt>
                        <img src="Images/RSRulesNoEmptyReportT07.jpg" width="860" height="180" /></dt>
                    
                        <dd>Bad Example - making a user select the parameters before seeing the data</dd>
                </dl>
                <br />
                
                
                The following report shows nothing, because the parameters are using meaningless default values (in this case, old dates for the year 2006)
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/RSRulesNoEmptyReportT7.jpg" width="590" height="552" /></dt>
                    <dd>
                        Bad Example - Empty report caused by incorrect parameter default values (probably hard coded for when the developer wrote the report in 2006)</dd></dl>
                <br />
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RSRulesNoEmptyReportT8.gif" width="600" height="425"></dt>
                    <dd>
                        Good Example - This report shows initial data as the developer configure useful parameters (in this case default 
                        values for the entire month of October Note: in US date format)</dd></dl>
                <p>
                    In SQL Reporting Services, parameters can be:
                </p>
                <ul>
                    <li>hard coded</li><li>an expression, or</li><li>from a query</li></ul>
                <p>
                    Hard coded values should never be used. Expressions may be good for some 
                    instances, but because it's not linked with your data, it may not be good 
                    enough.</p>
                <dl class="bad">
                    <dt><span style="font-size: 10pt"><b>--Expression to get the 1st day of the previous 
                        month (aka Start Date)</b>
                        <br />
                         DateSerial(iif( Month(DateTime.Now)=1, Year(DateTime.Now)-1, 
                        Year(DateTime.Now)), iif( Month(DateTime.Now)=1, 12, Month(DateTime.Now) - 1), 
                        1)</span><br /><br /> 
                            
                            <b>--Expression to get the 1st day of the current month (aka End Date)</b><br />
                             DateSerial(Year(DateTime.Now), Month(DateTime.Now),1)<br /> <br /> 
                         
                            <span style="font-size: 10pt"><b>--Expression to get the 1st day of the next 
                            month</b><br />
                            DateSerial(iif( Month(DateTime.Now)=12, Year(DateTime.Now)+1, 
                            Year(DateTime.Now)), iif( Month(DateTime.Now)=12, 1, Month(DateTime.Now) + 1), 
                            1) </span> 
                    </dt>
                    <dd>
                        Bad Example - Expressions to set the date range to the current month</dd>
                </dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/RSRulesNoEmptyReportT11.jpg" width="600" height="354"></dt>
                    <dd>
                        Bad Example - Using an Expression to set the default values.(This will not be good enough 
                        if there is no data in the current month)</dd></dl>
                        <br /><p>The Solution:</p>
                        
                <p>
                    In order to give report parameters correct default values, you should always use 
                    query to generate these values from database. This will ensure your default 
                    values come from <b>your</b> data, so they won't fail to give some records.
                    <br />
                </p>
                <dl class="goodCode">
                    <dt><pre><b>--Query to generate valid date from existing data</b>
SELECT
CONVERT(
DATETIME, 
'1, ' + 
DATENAME(month, DATEADD(month, 1, MAX(OrderDate)))+ 
DATENAME(year, DATEADD(month, 1, MAX(OrderDate)))
) AS EndOfMonth,
CONVERT(
DATETIME, 
'1,'+ 
DATENAME(month, MAX(OrderDate))+ 
DATENAME(year, MAX(OrderDate)) 
) AS StartOfMonth
FROM Orders</pre>
                    </dt>
                    <dd>
                        Good Example - Using a query to retrieve the last month of available data</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RSRulesNoEmptyReportT10.jpg" width="600" height="354"></dt>
                    <dd>
                        Good Example - Using a query to set default values for report parameters</dd></dl>
                <p>
                    The dataset 'ValidDates' looks similar to this:</p>
                <dl class="image">
                    <dt>
                        <img src="Images/RSRulesNoEmptyReportT9.jpg" width="426" height="358"></dt>
                    <dd>
                        Figure: Create a dataset to query the data and provide useful default parameter values for your report</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="UseDateTimeType"></a>Parameters/Internationalization - Do you use the DateTime data type for 
                    date parameters?</h2>
                <p>
                    Use the DateTime data type for date parameters instead of using strings. There are 3 reasons to do this:<br />  
                    1) Stop the bug &quot;Cannot read the next data row for the data set&quot;<br />
                    Although a hardcoded string will work, it will not work for all users regional date/time settings.<br /> 
                    E.g. a string data type parameter with a value of &quot;26/01/2006&quot; is correct for &quot;dd/mm/yyyy&quot;, but it is wrong for &quot;mm/dd/yyyy&quot;<br />
                    
                    2) When SQL Reporting Services is using the DateTime data type parameter, it will get the datetime value on the users setting (aka the Culture DateTime format).<br /> 
                    3) Your users also get the advantage of a date/time picker control, which automatically works out the correct regional date format. This solves the US/Australian date problem. (i.e. 
                    DD and MM are reversed). <br />
               
              
                </p>
                
                
                <dl class="badImage">
                    <dt>
                        <img src="Images/RSRulesUseDateTimeType1.jpg" alt="An error has occurred during report processing.
Cannot read the next data row for the data set TotalUser.
For more information about this error navigate to the report server on the local server machine, or enable remote errors" /></dt><dd>
                        Bad Example - Using the String data type for date parameter</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RSRulesUseDateTimeType2.jpg" /></dt><dd>Good Example - Use 
                        DateTime data type for the date parameter - you will not get internationalization bugs and it gives users a calendar control</dd></dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor">
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
                    <a name="ParameterName"></a>Do you have consistent parameter names?</h2>
                <p>
                    All display names referring to the same parameter should be consistent in 
                    everywhere of your reports. In addition, the parameter name and value should be in 
                    the same line if possible.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/ParameterName_Bad.gif"></dt><dd>Bad Example - Inconsistent 
                        parameter names
                        </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/ParameterName_Good.gif"></dt><dd>Good Example - consistent 
                        parameter names
                        </dd>
                </dl>
                <br />
                <div class="greyBox">
                    <p>
                        <b>Note: If your data is not live, but based on ETL/SSIS</b>
                        <br />
                        Then each time log each import to a table Eg. Once a week. Then on the report 
                        parameters show this - so users know how old the data is.</p>
                </div>
            </li>
            <!-- Performance Items -->
            <li>
                <h2>
                    <a name="Caching"></a>Performance - Do you cache popular reports for better 
                    performance?</h2>
                <p>
                    When you have a large number of users all trying to access the same reports, the 
                    performance of your report server can suffer dramatically. Caching reports for a 
                    certain period of time can drastically reduce the load placed on the report 
                    server, leaving it ready to handle other requests.</p>
                <p>
                    When a report has caching enabled it only needs to be processed once within the 
                    expiry period. This means that when the first of your eager users hits that 
                    report, the report server will keep a copy until it expires, and will serve up 
                    this copy to any users that request the report within that period. This leaves 
                    the report server ready to process other reports quicker as it is not busy 
                    processing the popular reports over and over again.</p>
                <p>
                    For more information on setting up report caching please see the following KB 
                    article:
                    <a href="/ssw/KB/KB.aspx?KBID=Q1668240">
                    http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q1668240</a></p>
                <dl class="image">
                    <dt>
                        <img src="Images/RSCachedSnapshot.gif" width="600" height="422" /></dt>
                    <dd>
                        Figure: Enable caching for frequently used reports to improve performance</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="Snapshots"></a>Performance - Do you schedule snapshots of slow reports for 
                    quicker access?</h2>
                <p>
                    A report should never take more than 30 seconds to run. Slow reports frustrate 
                    users, and also take valuable server performance away from the report server.
                </p>
                <p>
                    When dealing with slow reports, it is a good idea to setup scheduled snapshots. 
                    As an example,&nbsp; you would schedule a long running report to create a snapshot at 
                    night when the server is idle and not under a lot of stress. We recommend 
                    creating new snapshots every night so that the information displayed in the 
                    reports is never more than 24 hours old.</p>
                <p>
                    As an example:</p>
                <p>
                    <span class="green"><b>Do </b></span>create a snapshot for a sales summary<br />
                    <b><span class="red">Do not</span> </b>create a snapshot for an invoice report</p>
                <p>
                    For information on setting up scheduled snapshots see the following KB article:
                    <a href="/ssw/KB/KB.aspx?KBID=Q1119699">
                    http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q1119699</a></p>
                <dl class="image">
                    <dt>
                        <img src="/ssw/KB/Images/KBQ1119699_2.gif" width="586" height="543" /></dt>
                    <dd>
                        Figure: Create a scheduled snapshot of slow reports to improve performance</dd></dl>
               </li>
            <!-- Internationalization Items -->
            <li>
                <h2>
                    <a name="RegionalFormatting"></a>Internationalization - Do you keep use regional 
                    friendly formatting?</h2>
                <p>
                    You know how we write one million like $1,000,000.00, well when I was in Brazil 
                    I discovered they did it wrong and display it like $1.000.000,00
                </p>
                <p>
                    I tried to correct many but they didn't listen :-)</p>
                <p>
                    So, be culturally sensitive and use regional friendly formatting.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/RSNumberFormatBad.jpg" />
                    </dt>
                    <dd>
                        Bad Example - Bad Number Format</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RSNumberFormatGood.jpg" />
                    </dt>
                    <dd>
                        Good Example - Good Number Format</dd></dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/RSCurrencyFormatBad.jpg" />
                    </dt>
                    <dd>
                        Bad Example - Bad Currency Format</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RSCurrencyFormatGood.jpg" />
                    </dt>
                    <dd>
                        Good Example - Good Currency Format</dd></dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/RSPercentageFormatBad.jpg" />
                    </dt>
                    <dd>
                        Bad Example - Bad Percentage Format</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RSPercentageFormatGood.jpg" />
                    </dt>
                    <dd>
                        Good Example - Good Percentage Format</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="LanguageSetting"></a>Internationalization - Do you make sure your 
                    language follows the user's regional settings?</h2>
                <p>
                    Developers too often change the 'Language' settings on reports in order to make 
                    it look ok for how they want to see it. Without realizing that they are now not 
                    supporting multiple cultures. To do this, you need to set the 'Language' to <b>
                    &quot;=User!Language&quot;</b>. Then the report will recognize user client's culture settings, 
                    e.g. IE's languages settings.
                </p>
                <p>
                    Now you can specify this on either the culture sensitive controls or the whole 
                    report. Generally, is better specify this property on the whole 
                    report.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/RSRulesLanguage4.jpg"></dt>
                    <dd>
                        Bad Example - Here the 'Language' setting is set to a specific culture</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RSRulesLanguage3.jpg"></dt>
                    <dd>
                        Good Example - Here the 'Language' setting is set to '=User!Language' to detect 
                        user's culture automatically</dd></dl>
                <dl class="image">
                    <dt>
                        <img src="Images/RSRulesLanguage1.jpg"></dt>
                    <dd>
                        Figure: Good Example - Now the data respects user's Language preference of IE in this case English (Australia)</dd></dl>
                <dl class="image">
                    <dt>
                        <img src="Images/RSRulesLanguage2.jpg"></dt>
                    <dd>
                        Figure: Good Example - Likewise the data also respects user's Language 
                        preference of IE in this case Chinese (China) </dd></dl>
                 <p><b>Warning: Adding the 'User' who printed the report, stops all data-driven subscriptions</b><br /> 
                       When you try to add the 'User' your data-driven subscriptions fail with the following error: <br />
                       'The '/GroupHealth' report has user profile dependencies and cannot be run unattended. (rsHasUserProfileDependencies)'.<br />
                       The reason is the report doesn't know which language to choose<br />
                       the workaround is to add a user function to fallback the error to a default language, like: "en-AU"
                 </p>
                 <pre>
Public Function Language()
    Try
        Return Report.User!Language
    Catch
        Return "en-AU"
    End Try
End Function                        
                 </pre>
                  <dl class="goodImage">
                  <dd>
                        Good Example - Use above function to replace your reference to Report.User!Language it allow the subscription to work correctly.</dd></dl>
                
            </li>
            <li><a name="DateFormatParameterBar"></a>
                <h2>
                    Internationalization - Are you aware of your date format of parameter bar?</h2>
                <p>
                    The format in parameter bar is always decided by the Language settings of client
                    browser regardless of the Language property of your report.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/DateFormat_Parameter.jpg"></dt>
                    <dd>
                        Figure: Date in English(AU) format in parameter bar</dd></dl>
                <dl class="image">
                    <dt>
                        <img src="Images/DateFormat_Parameter_2.gif"></dt>
                    <dd>
                        Figure: Date in French(Canada) format in parameter bar</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="CurrencySetting"></a>Internationalization - Do you make sure your 
                    language rule has an exception for Currency Fields?</h2>
                <p>
                    Although we can make the report support multiple cultures (as per <a href="/ssw/Standards/Rules/RulesToBetterSQLReportingServices.aspx#LanguageSetting">
                        Do you make sure your language follows the users regional settings?</a>), we 
                    suggest you don't do this for currency fields. Instead:
                    <ol>
                        <li>Have the Language set specifically to the culture you want.
                            <p>
                                e.g. If you do a report for Australian Dollars, then it should be 
                                &quot;English(Australia)&quot;; if for Chinese Yuan, it should be &quot;Chinese(People's Republic 
                                of China)&quot;. Because the format of currency should not change as per user's culture 
                                setting as $100 AUD &lt;&gt; 100 CNY !</p>
                        </li>
                        <li>Have the currency column header set include the currency.
                            <p>
                                Because $100 USD &lt;&gt; $100 AUD !</p>
                        </li>
                    </ol>
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/RSCurrency_bad.gif"></dt>
                    <dd>
                        Bad Example - using default language for currency field</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RSCurrency_good_au.gif"></dt>
                    <dd>
                        Good Example - This currency field stores Australian Dollars and will always 
                        display it that way</dd></dl>
                <dl class="image">
                    <dt>
                        <img src="Images/RSCurrency_sample_au.gif"></dt>
                    <dd>
                        Figure: AUD currency</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RSCurrency_good_cn.gif"></dt>
                    <dd>
                        Good Example - This currency field stores Chinese Yuan and will always display 
                        it that way</dd></dl>
                <dl class="image">
                    <dt>
                        <img src="Images/RSCurrency_sample_cn.gif"></dt>
                    <dd>
                        Figure: Chinese Yuan currency</dd></dl>
                <p>
                    If you don't want to get currency fields hard coded in reports, you can use an 
                    expression to read settings from your database.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RSCurrency_good_expression.gif"></dt>
                    <dd>
                        Good Example - using specified language as per value of column CurrencyType in 
                        table SystemValue</dd></dl>
            </li>
            <!-- Admin Items -->
            <li>
                <h2>
                    <a name="SQLReportingServicesAuditor"></a>Admin - Do you validate all your 
                    reports?</h2>
                <p>
                    Reporting Services does not have a build button, and thus, there is no way to 
                    verify that every single report is error free.<br />
                    Every Reporting Services installation should include this validator to check that 
                    all the reports are good.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/ValidatorLink.gif" />
                    </dt>
                    <dd>
                        Figure: SSW SQL Reporting Services Auditor
                    </dd>
                </dl>
                <p>
                    SSW SQL Reporting Services Auditor is Web-Application that iterates through all 
                    the reports on a report server and shows whether they have rendered correctly or 
                    if any errors occurred.
                </p>
                <p>
                    The SSW SQL Reporting Services Auditor web application returns an XML dataset 
                    that can be consumed natively by SQL 2005 Reporting Services. The XML dataset 
                    can also be consumed by SQL 2000 Reporting Services; however, this requires you 
                    to write a custom Data Processing Extension as SQL 2000 Reporting Services does 
                    not natively support XML data sources.<br />
                    For more information read Microsoft's guide on <a href="/ssw/Redirect/Microsoft/MSReportingServicesDataSet.htm">
                        Using an External Dataset with SQL 2000 Reporting Services</a><img src="../../Images/LeaveSite.gif"
                            width="17" height="11"></p>
                <dl class="image">
                    <dt>
                        <img src="Images/ReportsValidator.gif" />
                    </dt>
                    <dd>
                        Figure: SSW SQL Reporting Services Auditor in Action!
                    </dd>
                </dl>
                <p>
                    Download <a href="/SSW/Redirect/SSW/SQLReportingServicesAuditor.htm">SSW SQL 
                    Reporting Services Auditor</a> (Requires SQL Server 2005 Reporting Services).</p>
            </li>
            <li>
                <h2>
                    <a name="AdminAccess"></a>Admin - Do you create a separate virtual directory for 
                    Admin access?</h2>
                <p>
                    When going public with Reporting Services, you should have 2 ports:</p>
                <ol>
                    <li><strong>A public access port. </strong>This allows your public users to access 
                        their reports normally on a port which has been configured for anonymous users. </li>
                    <li><strong>An admin access port on your web site. </strong>This allows 
                        authenticated internal users to administer the report server via the Report 
                        Manager. </li>
                </ol>
                <p>
                    &nbsp;</p>
                <p>
                    To set this up you need to perform the following:</p>
                <p>
                    &nbsp;</p>
                <p>
                    <strong>In Windows Explorer:</strong></p>
                <ol>
                    <li>Create a Windows User account for the anonymous reporting services site to run 
                        as. e.g. IUSR_ReportViewer</li><li>Open up the ReportingServices directory (<span style="font-family: Arial">C:\Program 
                        Files\Microsoft SQL Server\MSSQL.3\Reporting Services)</span></li><li><span style="font-family: Arial">
                            </span>Duplicate the <span style="font-family: Arial">ReportServer and <span style="font-family: Verdana, Sans-Serif">
                                the </span>ReportManager folders then rename postfix them with _External 
                        e.g. ReportServer_External and <span style="font-family: Verdana, Sans-Serif"></span>
                        ReportManager_External</span></li><li>
                                    Set the file access security on the new folders so that &quot;Everyone&quot; has full 
                                    permissions.</li><li>
                                        <span style="font-family: Arial">Edit the 
                                        ReportServer_External/rsreportserver.config file. Update the URL node 
                                        &lt;UrlRoot&gt;http://xxxx:81/ReportServer&lt;/URlRoot&gt;
                                        </span></li>
                    <li><span style="font-family: Arial">the 
                        ReportManager_External/RSWebApplication.config file. Update the URL node 
                        &lt;ReportServerUrl&gt;http://xxxx:81/ReportServer&lt;/ReportServerUrl&gt;</span></li></ol>
                <p>
                    <br />
                    <strong>In IIS Manager: </strong>
                </p>
                <ol>
                    <li>Create another website on another port (i.e. port 81) </li>
                    <li>Create Virtual Direcoties for ReportServer and Reports then point them to the 
                        new folders we just made. Make sure they are setup as applications.</li><li>
                        Change the Authentication of these 2 virtual directorys to use the user we have 
                        already created &quot;USR_ReportViewer&quot;. Ensure that all other Authenticated access 
                        is unchecked.</li><li>In the Reports Virtual Direcotry, make sure that it is 
                        running the same version of ASP.NET. Set the Applicaiton to execute Scripts and 
                        Executables. Add Home.aspx into the Default Documents.
                    </li>
                    <li>In the ReportServer Virtual Directory, make sure that it is running the same 
                        version of ASP.NET. Remove all the Application Mappings in the Application 
                        Confguration. Then add a wildcard mapping to the Executable 
                        C:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\aspnet_isapi.dll</li></ol>
                <p>
                    <strong>In SQL Management Studio:</strong></p>
                <ol>
                    <li>Add the user for these folders to have access in SQL</li></ol>
                <p>
                    &nbsp;</p>
                <p>
                    <strong>In Reporting Services:</strong></p>
                <ol>
                    <li>Go to http://localhost/reports</li><li>Click Properties -&gt; New Role 
                    Assignment</li><li>
                        Enter in IUSR_ReportViewer and click Browser then click OK</li></ol>
                <p>
                    &nbsp;</p>
                <p>
                    <strong>Note #1:</strong> The default website will be used for internal Admin 
                    (secure) use, and a website on a different port (in this example we use port 81) 
                    will be used for external anonymous access.</p>
                <p>
                    <strong>Note #2: </strong>Do these steps again every time you install a 
                    Reporting Services service pack</p>
                <p>
                    Once complete, you should now have authenticated access available on the standard 
                    port (80) and public access available on the new port (81).</p>
                <p>
                    We think that we should have the ability to choose how IIS authenticates clients - 
                    read our <a href="/ssw/Standards/BetterSoftwareSuggestions/ReportingServices.aspx#authenticate">
                        Reporting Services suggestion</a>.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/RSVirtualDirectory.gif" width="561" height="474" /></dt><dd>
                        Figure: Create a separate virtual directory for admin access</dd></dl>
                <p>
                    The process is a little simpler in SQL 2000:</p>
                <p>
                    &nbsp;</p>
                <p>
                    <strong>In Windows Explorer:</strong></p>
                <ol>
                    <li>Open up the ReportingServices directory (typically c:\Program Files\Microsoft 
                        SQL Server\MSSQL\Reporting Services\) </li>
                    <li>Make a copy of the ReportManager folder and call it ReportManagerPublicAccess</li><li>
                        Duplicate the file access security settings on ReportManager in 
                        ReportManagerPublicAccess</li><li>
                            Edit the RSWebApplication.config in the ReportManagerPublicAccessfolder to point 
                            to http://server:81/ReportServer </li>
                </ol>
                <p>
                    <br />
                    <strong>In IIS Manager: </strong>
                </p>
                <ol>
                    <li>Configure the default website's ReportsServer virtual directory to give access 
                        to IUSR_ServerName (for public access) </li>
                    <li>Export the Report and ReportServer virtual directory to an XML file </li>
                    <li>Create another website on another port (i.e. port 81) </li>
                    <li>Add the Report and ReportServer virtual directories using the XML files created 
                        in step 2</li><li>Set the Reports virtual directory to point to the 
                        ReportsManagerSecure directory instead of just ReportsManager </li>
                    <li>Set the directory security on the ReportServer on port 81 to use windows 
                        integrated security </li>
                </ol>
                <p>
                    &nbsp;</p>
            </li>
            <li>
                <h2>
                    <a name="PayRollByUserID"></a>Admin - Do you take advantage of 'Integrated Security' 
                    to do Payroll reports?</h2>
                <p>
                    Payroll report should only show the records of the current user, Reporting 
                    Services support &quot;Integrated Security&quot; which you can use to identify the user 
                    who is running the report and only return relevant result for the current user.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/RSRulesPayRollByUserIDT1.jpg" width="600" height="397"></dt>
                    <dd>
                        Bad Example - Everyone can see others' rate changing history (maybe useful for 
                        administrative, but not for your employees)</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RSRulesPayRollByUserIDT2.jpg" width="600" height="344"></dt>
                    <dd>
                        Good Example - The current employee can only see his own record</dd></dl>
                <p>
                    To generate such a report, you need to use the filter on the data table:</p>
                <dl class="image">
                    <dt>
                        <img src="Images/RSRulesPayRollByUserIDT3.jpg" width="600" height="572"></dt>
                    <dd>
                        Figure: Specify the filters on your data table and select Globals-&gt;User!UserID</dd></dl>
                <p>
                    Note: 'Edit Expression' dialog is only available on RS 2005, but the UserID 
                    global variable is available on RS 2000.</p>
            </li>
            <li>
                <h2>
                    <a name="RemoveTime"></a>Admin - Do you remove @ExecutionTime in subject of 
                    subscription email?</h2>
                <p>
                    In subscription settings, @ExecutionTime should be removed from subject, because 
                    it ruins conversation threading in Outlook - You cannot sort them by subject.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/RSRulesRemoveTimeOld.gif"></dt>
                    <dd>
                        Bad Example - Keep @ExecutionTime in subject</dd></dl>
                <p>
                    So we always make subject of subscription exactly same as report name.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/RSRulesRemoveTimeNew.gif" width="472" height="264"></dt>
                    <dd>
                        Good Example - Subject same as report name</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="ReportViewer"></a>Do you know to embed an RS report in ASP.NET page the 
                    right way (using Report Viewer instead of IFrame)?</h2>
                <p><em>This rule is obsolete and has been replaced with <a href="http://rules.ssw.com.au/SoftwareDevelopment/RulesToBetterMVC/Pages/Do-you-know-the-best-way-to-do-printable-reports.aspx">http://rules.ssw.com.au/SoftwareDevelopment/RulesToBetterMVC/Pages/Do-you-know-the-best-way-to-do-printable-reports.aspx</a>
                    using MVC 5.</em>
                </p>
                <p>
                    Visual Studio provides a Report Viewer control for WebForms, so use it instead of the old IFrame method. The report viewer control is super easy to use 
                    - just drag the control into your page designer and select the properties you like.
                </p>
                <p>
                    The bad old way was to use an IFrame and point it to the report's URL (including 
                    parameters). This is bad because you might encounter a typing error. If you want 
                    to disable vertical scrollbar, you need to adjust the height of IFrame manually. 
                    Furthermore, you can't configure the report's authentication separately.
                </p>
                <dl class="badCode">
                    <pre>
&lt;IFRAME width=&quot;100%&quot; height=&quot;700&quot; TITLE=&quot;Report&quot; src=&quot;http://reports.internal.ssw.com.au/ReportServer?
    %2fTimeProOnlineReports%2fClientRegisteredProductsByDate
    &amp;rs:Command=Render&amp;ClientContactID=&lt;%=mintClientContactID%&gt;&amp;ClientExInfo=&lt;%=clientInfo%&gt;&amp;rc:Parameters=false&quot;&gt;
&lt;/IFRAME&gt;
                        </pre>
                    <dd>
                        Bad Example - Embed report using IFrame
                    </dd>
                </dl>
                <dl class="goodCode">
                    <pre>
&lt;rsweb:ReportViewer ID=&quot;ReportViewer1&quot; runat=&quot;server&quot; SizeToReportContent=&quot;True&quot; ProcessingMode=&quot;Remote&quot; Width=&quot;100%&quot; AsyncRendering=&quot;false&quot;&gt;
    &lt;ServerReport ReportServerUrl=&quot;http://reports.internal.ssw.com.au/reportserver&quot;
    ReportPath=&quot;/TimeProOnlineReports/ClientRegisteredProductsByDate&quot; /&gt;
&lt;/rsweb:ReportViewer&gt;
                        </pre>
                    <dd>
                        Good Example - Embed report using Report Viewer
                    </dd>
                </dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/IFrame.gif" />
                    </dt>
                    <dd>
                        Bad example - IFrame with vertical scrollbar</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/ReportViewer.gif" />
                    </dt>
                    <dd>
                        Good example - Report Viewer without vertical scrollbar</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="Subscription"></a>Do you know how to get email list of report 
                    subscription?</h2>
                <p>
                    You can get email list in ExtensionSettings, which is an XML column in 
                    Subscriptions table in database of reporting services. Subscriptions table has a 
                    FK with Catalog table, which contains report name and report path information. 
                    Then we can XQuery the ExtensionSettings to get TO and CC fields according to 
                    report name and report path.
                </p>
                <p>
                    See the following example. You need to fill report name and report path 
                    parameters(@mReportName and @mReportPath). Then this example will return the 
                    email dataset of the report's subscriptions.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/GlobalParam.gif" />
                    </dt>
                    <dd>
                        Figure: Report parameters</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/DatasetParam.gif" />
                    </dt>
                    <dd>
                        Figure: Transfer parameters to dataset</dd>
                </dl>
                <dl class="goodImage">
                    <pre>
DECLARE xmlCursor CURSOR FOR 
SELECT       ExtensionSettings
FROM         SubScriptions, [Catalog]
WHERE        SubScriptions.Report_OID = [Catalog].ItemID AND 
             [Catalog].Name = @mReportName AND 
             [Catalog].Path = @mReportPath 
DECLARE @settingsXML AS XML 
DECLARE @toEmail AS XML DECLARE @ccEmail AS XML
DECLARE @comment AS XML 
CREATE TABLE #subscrpt(toEmail XML, ccEmail XML, Comment XML) 
OPEN xmlCursor 
/* Perform the first fetch.*/ 
FETCH NEXT FROM xmlCursor INTO @settingsXML 
/* Check @@FETCH_STATUS to see if there are any more rows to fetch.*/ 
WHILE @@FETCH_STATUS = 0 BEGIN
    SELECT @toEmail = @settingsXML .query('data(/ParameterValues/ParameterValue [Name = &quot;TO&quot;]/Value)')
    SELECT @ccEmail = @settingsXML .query('data(/ParameterValues/ParameterValue [Name = &quot;CC&quot;]/Value)')
    SELECT @comment = @settingsXML .query('data(/ParameterValues/ParameterValue [Name = &quot;Comment&quot;]/Value)')
    INSERT INTO #subscrpt VALUES (@toEmail,@ccEmail,@comment) 
    /* This is executed as long as the previous fetch succeeds.*/ 
    FETCH NEXT FROM xmlCursor INTO @settingsXML 
END
SELECT toEmail, ccEmail, Comment FROM #subscrpt 
DROP TABLE #subscrpt 
CLOSE xmlCursor 
DEALLOCATE xmlCursor
                    </pre>
                    <dd>
                        Good Example - Get email list
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="ReportOwner"></a>Do you add report owner in your report?</h2>
                <p>
                    Report owner is the person who looks after this report. It's a good way to put 
                    the owner on the report in order to get any response or suggestion on time.</p>
                <p>There're four things you have to take care of.</p>
                <ol>
                <li>Please make sure you use a group (or a team) as the report owner rather than individual names. We do this to reduce maintenance work - whenever a person comes or leaves we do not need to modify the report.</li>
                <li>Make the report owner a hyperlink which links to the definition of the group (or the team).
                    <dl class="goodImage">
                        <dt>
                            <img src="Images/ReportOwner.gif" alt="Show report owner in the report" /></dt>
                        <dd>
                            Good Example - Show report owner in the report</dd>
                    </dl>
                </li>
                <li>When you cannot refer to a group, refer to the person</li>
                <li>Use the same idea for web pages, however in that case use the term "Page Owner"</li>
                </ol>
                <p>
                    In CRM, the report can read from the CRM database since the report owner is stored by CRM against the report:
                    <dl class="goodImage">
                        <dt>
                            <img src="Images/ReportOwnerCRM.gif" alt="Show the CRM report owner in a CRM report" /></dt>
                        <dd>
                            CRM - you already have a report owner so display this in your report</dd>
                    </dl>
                </p>
            </li>
            <li>
                <h2>
                    <a name="SingleBox"></a>Do you use single line box instead of double line box?</h2>
                <p>
                    Double line box makes reports look messy and inelegant, so it is better to use 
                    single line box.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/Bad_DoubleBox.gif" alt="SSW - Report UI" /></dt>
                    <dd>
                        Bad Example - Double line box makes the report above look messy</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/Good_Report.gif" alt="SSW - Report UI" /></dt>
                    <dd>
                        Good Example - Single line box makes the report above look clean and elegant</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="SiteSetting"></a>Do you change the name of site settings?</h2>
                <p>
                    The default site settings name of SSRS is "SQL Server Reporting Services" regardless of version 2005 or 2008.
                    So we'd better add the version to the site settings name then users can find the version of SSRS here.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadSiteSetting.gif" alt="Site settings without SSRS version" /></dt>
                    <dd>
                        Bad Example - Site settings without SSRS version</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodSiteSetting2005.gif" alt="Site settings with version of SSRS 2005" /></dt>
                    <dd>
                        Good Example - Site settings with version of SSRS 2005</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodSiteSetting2008.gif" alt="Site settings with version of SSRS 2008" /></dt>
                    <dd>
                        Good Example - Site settings with version of SSRS 2008</dd>
                </dl>
            </li>
            <li><a name="CorrectAuthentication"></a><h2>Do you use the correct authentication for your report?</h2>
            <p>Using anonymous authentication is not recommended because of security reasons.</p>
            <ul><li>Anonymous accounts (the IUSER_* and IWAM_* accounts) are managed by windows security system. We do not want to use these accounts because we have to manually configure our report server security settings.</li>
            <li>We do not want everyone on the Internet update or overwrite stuffs on the report server.</li></ul>
            <p>Besides, anonymous authentication is no longer supported in RS 2008.</p>
            <p>The best way to expose your report is to use ReportViewer and setup the credentials on it using ReportViewerCredentials.
            </p>
            <dl class="code">
                <dt>Dim userName As String = ConfigurationManager.AppSettings("ReportViewer_UserName")<br />
                Dim password As String = ConfigurationManager.AppSettings("ReportViewer_Password")<br />
                Dim domain As String = ConfigurationManager.AppSettings("ReportViewer_UserDomain")<br />
                reportViewer.ServerReport.ReportServerCredentials = New ReportViewerCredential(userName, password, domain)<br /><br />
                Dim paramList As List(Of ReportParameter) = New List(Of ReportParameter)<br />
                paramList.Add(New ReportParameter("ClientContactID", mintClientContactID, False))<br />
                reportViewer.ServerReport.SetParameters(paramList)</dt>
            </dl>
            </li>
            <li><a name="URLAccess"></a><h2>Do you have URL Access link for your report?</h2>
            <p>Reporting Service makes buliding, generating, managing and publishing report very easy, however sometime you want to refer to your report by URL from somewhere else. 
            You will find that you can only link to the report default status, but not when you have changed the parameters. It should be as easy as using QueryString in ASP.NET application, but 
            Microsoft didn't do that. See our <a href="/ssw/Standards/BetterSoftwareSuggestions/ReportingServices.aspx#QueryStrings">Better Software Suggestions for Reporting Service.</a></p>
            <p>A workaround for this is to use URL Access to bulid up a link by yourself then put it at the bottom of the report, so any time you want to refer to your current report 
            status, you can just copy this link and put into your emails. </p>
            
            <p>At SSW, we have "URL Access" at the bottom of reports for easy reference.</p>
            <dl class="goodImage">
                <dt>
                    <img src="./images/BetterRS_URLAccess.jpg" />
                </dt>
                <dd>Figure: URL Access link for quick reference at the bottom of report</dd>
            </dl>
            
            <dl class="badCode">
                <dt>http://localhost/ReportServer/Pages/ReportViewer.aspx?%2fSSWTimePRO_CompanyPerformance%2f01+-+BillableTimeSummary&rs:Command=Render</dt>
                <dd>Bad Example - Only refer to the default report URL, parameters on the report will be lost</dd>
            </dl>
            <dl class="goodCode">
                <dt>http://localhost/ReportServer/Pages/ReportViewer.aspx?/SSWTimePRO_CompanyPerformance/01%20-%20BillableTimeSummary&rs:Command=Render&rs:ParameterLanguage=en-AU&pStartDate=1/06/2009&pEndDate=7/06/2009&pEmpID=ALZ</dt>
                <dd>Good Example - Refer to the report with all parameters ready</dd>
            </dl>
            
            <p>Please note "rs:ParameterLanguage=en-AU" in the query string, this is very important espeically when you are passing culture sensitive data (DateTime) over URL. The server may not know your intended culture so you have to 
            specify this together with the actual data in the URL.</p>
            
            Refer to the following MSDN references for more details:
            <ul>
                <li>URL Access for Reporting Services : <a href="http://msdn.microsoft.com/en-us/library/ms153586.aspx">http://msdn.microsoft.com/en-us/library/ms153586.aspx</a></li>
            </ul>
            
            
            
            </li>
            
            
            
            
            <li><a name="ClearOnGST"></a><h2>Do you have a clear labelling for including / excluding GST?</h2>
            <p>In reporting, total sales / revenue amount can be categorised as two types, which are include GST or exclude GST. It is very important to have clear labelling to avoid the user guessing on whether it includes GST or exclude GST.</p>
            
            <dl class="badImage">
                        <dt><img src="./Images/UnclearText.jpg" width="1000" height="200"/></dt><dd>
                        Figure: Bad Example - Unclear labelling</dd>
                    </dl>
            <dl class="goodImage">
                <dt>
                    <img src="./Images/ClearText.jpg" width="1000" height="200"/>
                </dt>
                <dd>Figure: Good Example - Clear labelling</dd>
            </dl>
            </li>
            
            <li>
                <h2>
                    <a name="SummaryAndDetailReport"></a>Do you have a summary and a detailed version of your report?</h2>
                <p>
                    In the vast majority of cases where the readership of the report is wide, some viewers like or need great detail while others just need a quick summary.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/DetailReport.jpg" alt="Detail report" /></dt>
                    <dd>
                        Bad Example &#8211; Only one version of the report with too many columns for most readers to digest</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/SummaryReport.jpg" alt="Summary report" /></dt>
                    <dd>
                        Good Example &#8211; Only the most important columns included for the summary version and the detailed version can be left as in the "Bad Example" above.</dd>
                </dl>
            </li>
            <li>
              <h2><a name="LiveDataFeed"></a>Analyzing with Excel - Do you use a live data feed?</h2>
               <dl class="badImage">
                    <dt>
                        <img src="Images/ExcelData.jpg" alt="Excel Data " /></dt>
                    <dd>
                      Figure: Bad example - static data that will need to be re-exported </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/LiveData.jpg" alt="Live Data" /></dt>
                    <dd>
                      Figure: Good example - as the data is always live </dd>
                </dl>
                <p>This is a great feature as it take advanatages of Excel 2010 PowerPivot together with Reporting Services 2008 R2 to allow end users to subscribe to live data from a report.<br /> 
                   See what the experts said below:</p>
                <p>
                 
                 "And that, by the way, makes it very useful, as it means that PowerPivot models can get data from Essbase and SAP BW (aka Netweaver BI) (via SSRS), which standard Analysis Services cannot do.  But it also means that developers can write LINQ queries against reports and that whatever OData clients sprout up can get at that data as well.  In general, it means that reports in SQL R2 support a RESTful interface."<br />
                  - Andrew Brust
                </p>
                <p>
                  "Using atomsvc feeds and loving it :)<br />
                   We've used this feature in our last 4-5 BI projects and the clients are all applauding this feature. It is a very nice way of surfacing information to users that want to use the information as a starting point for doing more analysis. It does indeed take a lot of the burden off the IT dept that previously had to build custom reports for everything."<br />
                   - Trond Brande
                </p>
            </li>
           
            <li><h2><a name="NamingConvertion"></a>Do you follow the naming converstion standards in Reporting Service?</h2>
                <p>We use SQL Server naming standards in Reporting Service management.</p>
                <ul>
                <li><a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#NamingConventions">Don't use plurals in folder names</a></li>
                <li><a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#ZSPrefix">Add zs prefix to system folders</a></li>
                </ul>
                
            </li>
            
            
            <li>
                <h2>
                    <a name="SharePointIntegrationMode"></a>Do you use SharePoint Integration Reporting Mode over Normal(Native) Reporting Mode?</h2>
                <p>
                    With the use of SharePoint 2010 Integration mode of Reporting, users can have following advantages: </p>

                    <ul>
                        <li>The users Can easily deploy data sources, reports to sharePoint document libraries instead of Report Manager.</li>
                        <li>The users can be much more self-sufficient with SharePoint.</li>
                        <li>Very easy one step configuration of the add-in</li>
                        <li>37 languages supported including bi-directional languages.</li>
                        <li>Accessing Reporting in local mode when Access Services is enabled.</li>
                        <li>Improved Report Preview experience with Report Builder 3.0 and edit sessions and deploy their reports to SharePoint document libraries, leveraging SharePoint for security.</li>
                        <li>The users can take advantage of the new version of Report Builder that came with SQL Server 2008 R2 and deploy their reports to SharePoint document libraries, leveraging SharePoint for security.</li>
                    </ul>

    
                <dl class="badImage">
                    <dt>
                        <img src="Images/NativeMode.jpg" alt="NativeMode of Reporting" /></dt>
                    <dd>
                        Bad Example &#8211; SQL Report Manager (which requires Visual Studio and TFS if you want source control).</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/SharePointIntegratedMode.jpg" alt="SharePoint Integrated Mode of Reporting" /></dt>
                    <dd>
                        Good Example &#8211; SharePoint Integration (you get nice source control via SharePoint and you can use the nice Report Builder 3).</dd>
                </dl>
            </li>

            <li>
                <h2><a name="FirefoxChromeReportDisplay20082012"></a>Do you know how to display reports in Firefox, Chrome and Safari (SQL Reporting Services 2008R2/2012)?</h2>
                <p>SQL Reporting Services works great with Internet Explorer but other browsers sometimes don�t work correctly, Here�s the solution.</p>
                <dl class="badImage">
                    <dt><img src="Images/report-display-bad.jpg" alt="report-display-bad" /></dt>
                    <dd>Figure: Bad Example � SQL RS does not work in Chrome by default</dd>
                </dl>
                <p>This issue is caused by Reporting Services emitting Quirks Mode HTML, to fix this make the following changes to the ReportingServices.js file the full path to this file is:</p>
                <p class="greyBox">C:\Program Files\Microsoft SQL Server\MSRS10_50.MSSQLSERVER\Reporting Services\ReportManager\js\ReportingServices.js</p>

                <p>Add the following java script:</p>

                <div class="greyBox">
                    <pre>
function pageLoad() {    
var element = document.getElementById("ctl31_ctl10");
if (element) 
{
       element.style.overflow = "visible"; 
} }</pre>
                </div>

                <p>Once this change is made reports will be visible.</p>
                <dl class="goodImage">
                    <dt><img src="Images/report-display-good.jpg" alt="report-display-good" /></dt>
                    <dd>Figure: Good Example � SQL RS fixed to correctly display in Chrome</dd>
                </dl>
                <p>More information at:<a href="http://stackoverflow.com/questions/5968082/ssrs-2008-r2-reports-are-blank-in-safari-and-chrome">stackoverflow.com/questions/5968082/ssrs-2008-r2-reports-are-blank-in-safari-and-chrome</a></p>
                <p>Read <a href="#FirefoxChromeReportDisplay20052008">how to display reports properly for Reporting Services 2005/2008</a>.</p>
            </li>


            <li>
                <h2>
                    <a name="FirefoxChromeReportDisplay20052008"></a>Do you know how to display reports properly in Firefox / Chrome (Reporting Services 2005/2008)?</h2>
                <p>
                    Sometimes users try to view SQL Server Reports in Firefox or Chrome Browser, it does not display at all or displays in a half screen. </p>
                    <p> They found it strange when the same report works absolutely fine in Internet Explorer.  </p>

    
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadImageInFirefox.jpg" alt="Bad Image of Firefox displaying report in half screen" /></dt>
                    <dd>
                        Bad Example &#8211; SQL Report viewed in Firefox / Chrome (which does not display report properly or display only half the screen.)</dd>
                </dl>


                <p>The Solution:</p>
                <p>Add the code below to &quot;%ProgramFiles%\Microsoft SQL Server\MSSQL.3\ReportingServices\ReportManager\Styles\ReportingServevices.css&quot;</p>
                
                <pre>
                .DocMapAndReportFrame
                {
                    min-height: 860px;
                    min-width: 2000px;
                }
                </pre>
                
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodImageInFirefox.jpg" alt="Good Image where Report works fine in Firefox or Chrome " /></dt>
                    <dd>
                        Good Example &#8211; SQL Report viewed in Firefox / Chrome (which displays properly in Firefox and Chrome ).</dd>
                </dl>
                <p>Read <a href="#FirefoxChromeReportDisplay20082012">how to display reports properly for Reporting Services 2008R2/2012</a>.</p>
            </li>
                <li>
                <h2>
                    <a name="RefreshData"></a>Do you have a report which refresh your data source?</h2>
                <p>
                    If you have a SQL database data source with data coming from an external source (i.e. MYOB), then you should create a report which allows user to manually refresh data. Your report should have:
                     </p>
                    <ul>
                    <li>A checkbox/radio button which allows user to trigger the refresh.</li>
                    <li>A table display the history of previous refresh including start time, duration and status...</li>
                    </ul>

    
                <dl class="goodImage">
                    <dt>
                        <img src="Images/ReportRefreshData.jpg" alt="A report which allow you to refresh data from external source" /></dt>
                    <dd>
                       Good Example: A report with a radio button allows you to refresh data and a table showing the history.</dd>
                </dl>



            </li>  
        </ol>
    </div>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=LX">Lei Xu</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=MM">Michael Mileos</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DDK">David Klein</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JZ">James Zhou</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=MA">Marten Ataalla</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=FW">Frank Wang</a>
    </p>
</asp:Content>