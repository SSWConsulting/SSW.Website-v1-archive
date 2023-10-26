<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Interfaces - Reports, Charts and Dates" Buffer="true" %>

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
        <p><strong>Rules To Better Interfaces - Reports, Charts and Dates</strong></p>
        <ol>
            <li><a href="#StandardReportFooter">Reports - Do you have a standard Report footer?</a></li>
            <li><a href="#SimpleReportingCriteria">Reports - Do you keep Reporting criteria simple?</a></li>
            <li><a href="#AllCaptions">Reports - Do you always make sure the dimensions All Captions = All?</a></li>
            <li><a href="#Graphs">Charts - Do you make graphs easy to digest?</a></li>
            <li><a href="#GraphSelection">Charts - Do you use bar graph rather than pie graph?</a></li>
            <li><a href="#TimePrecision">Dates - Do you keep Time Precision format consistent?</a></li>
            <li><a href="#DatePrecision">Dates - Do you keep Date Precision format consistent?</a></li>
            <li><a href="#CalendarControls">Dates - Do you use Calendar controls effectively?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="StandardReportFooter"></a>Reports - Do you have a standard Report footer?
                </h2>
                <p>
                    When designing custom applications you want to include branding on reports. 
                    There are two ways to design a standard footer. As a minimum, you can have a 
                    line &quot;Generated from [e.g.] SSW SQL Deploy - www.ssw.com.au&quot;.</p>
                <p>
                    Or, even better, you can send or keep detailed information about the report for you and your company:</p>
                <dl class="image">
                    <dt>
                        <img src="Images/BetterInterface_ReportFooter.jpg" alt="ssw Report Footer" /></dt></dl>
                <p class="productBox">
                    For more details about how to generate a footer like this, check our 
                    <a href="/ssw/Standards/Rules/RulesToBetterSQLReportingServices.aspx#UsefulFooter">Rules to Better SQL Reporting Services</a>.
                </p>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesReports/Pages/Do-you-have-a-standard-Report-footer.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesReports/Pages/Do-you-have-a-standard-Report-footer.aspx</a></font>
            </li>
            <li>
                <h2><a name="SimpleReportingCriteria"></a>
                    Reports - Do you keep Reporting criteria simple?
                </h2>
                <ol>
                    <li>Have Selection for filters e.g. Date Ranges </li>
                    <li>Have Selection for chart options e.g. Show Legend </li>
                    <li>Don't have selection for chart groupings e.g. By Month or By Product
                        <ul>
                            <li>Crystal and Access these are built into the report and it is very complex to 
                                have a generic solution. </li>
                            <li>Also it is disorientating for the user to have this as a selection</li>
                        </ul>
                        <dl class="image">
                            <dt>
                                <img border="1" src="Images/GraphInterface.gif" alt="Reporting Criteria" width="600"
                                    height="404" /></dt></dl>
                        <p>
                            More <a href="../DeveloperDotNet/GuidelinesForReporting.aspx">Options for 
                            Reporting</a></p>
                    </li>
                </ol>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesReports/Pages/Do-you-keep-Reporting-criteria-simple.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesReports/Pages/Do-you-keep-Reporting-criteria-simple.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="AllCaptions"></a>Reports - Do you always make sure the dimensions All Captions = All?</h2>
                <p>
                    When you are carrying out reporting (using Reporting Services) based on some OLAP cube you should change the "All Caption" property of each dimension to be have the value "All". By default the caption for the dimension will be "All <dimension_name>" (e.g. All Products). This default is distracting when used in reporting solutions and doesn't particularly clarify anything anyway.
                </p>
                <p><a href="/ssw/Standards/Rules/RulesToBetterBusinessIntelligence.aspx#AllDimensionsTag">Read more</a></p>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesReports/Pages/Do-you-always-make-sure-the-dimensions-All-Captions-All.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesReports/Pages/Do-you-always-make-sure-the-dimensions-All-Captions-All.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="Graphs"></a>Charts - Do you make graphs easy to digest?</h2>
                <p>
                    Graphs are a great way to display data in an easy to follow visual format. Some 
                    graphs, however, are easier to read than others. We recommend staying away from 
                    3-D Graphs and keeping it simple! If you have complex data, it's also a good 
                    idea to display 2 or 3 simpler graphs rather than one complex one - the aim of 
                    the game is to make digesting the information as simple as possible for your 
                    audience.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images\Graph.jpg" border="1" alt="Understandable Graphs" /></dt><dd>
                        Figure: Good Example - Are your graphs simple to understand?</dd></dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images\badGraph.jpg" border="1" alt="Understandable Graphs" /></dt><dd>
                        Figure: Bad Example - When there's more than four preceptual units, a graph becomes hard to digest</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images\GoodGraph.jpg" border="1" alt="Understandable Graphs" /></dt><dd>
                        Figure: Good Example - You can split your graphs to make them easer to understand</dd></dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesReports/Pages/Do-you-make-graphs-easy-to-digest.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesReports/Pages/Do-you-make-graphs-easy-to-digest.aspx</a></font>
            </li>
            <li> 
            <h2><a name="GraphSelection"></a>
                    Charts - Do you use bar graph rather than pie graph?</h2>
                
                <blockquote>
<p><b>Line graph</b><br />Line graphs are used to track changes over short and long periods of time. When smaller changes exist, line graphs are better to use than bar graphs. Line graphs can also be used to compare changes over the same period of time for more than one group.</p>
<p><b>Pie Chart</b><br />Pie charts are best to use when you are trying to compare parts of a whole. They do not show changes over time.</p>
<p><b>Bar Graph</b><br />Bar graphs are used to compare things between different groups or to track changes over time. However, when trying to measure change over time, bar graphs are best when the changes are larger.</p>

                    <span><a href="https://nces.ed.gov/nceskids/help/user_guide/graph/whentouse.asp">https://nces.ed.gov/nceskids/help/user_guide/graph/whentouse.asp</a></span>
                </blockquote>
                <p>This is a fancy way of saying use the right graph for the right purpose. Pie graphs fulfill a specific requirement, unlike a bar graph which is more multi-purpose.</p>
                <p>Pie graphs are used to show the general composition of an element. It's good for seeing at a glance what section is dominating, but it doesn't handle details very well.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/PieGraph.gif" alt="Bad Label"/>
                    </dt>
                    <dd>
                        Figure: Bad Example - This Pie Graph is too complicated and difficult to understand.</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/PieGraph-Good.jpg" alt="Good Label"/>
                    </dt>
                    <dd>
                        Figure: Good Example - This Pie Graph has been simplified and it is easy to see at a glance that Nike sold the most sneakers this month compared to others.</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/BarGraph.gif" alt="Good Label" />
                    </dt>
                    <dd>
                        Figure: Goodd Example - This Bar Graph data hasn't even been processed but it's still readable.</dd>
                </dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesReports/Pages/Do-you-use-bar-graph-rather-than-pie-graph.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesReports/Pages/Do-you-use-bar-graph-rather-than-pie-graph.aspx</a></font>
            </li>
            <li>
                <h2><a name="CalendarControls"></a>
                    Dates - Do you use Calendar controls effectively?
                </h2>
                <p>
                    In Outlook, the Calendar control has a number of important features:</p>
                <ul>
                    <li>Saturday and Sunday are displayed at the <i>end</i>.</li>
                    <li>Days that have data associated with them are <strong>bold</strong></li>
                    <li>The current day is highlighted with a box</li>
                </ul>
                <p>
                    Users are familiar with the Outlook calendar control. When the calendar control 
                    is used it should incorporate all of these features of the Outlook calendar 
                    control.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/CalendarControlBad.gif" alt="Calendar Control" width="171" height="156" /></dt>
                    <dd>
                        Figure: Bad Example - Calendar Control - Sunday is at the front, today's date is 
                        not highlighted, and items with data are not bolded</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/CalendarControlGood.gif" alt="Calendar Control" width="171" height="155" /></dt>
                    <dd>
                        Figure: Good Example - Calendar Control - Monday is at the front, today's date 
                        is highlighted, and items with data are bolded</dd></dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table13">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to 
                            check for this rule.</td>
                    </tr>
                </table>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesReports/Pages/Do-you-use-Calendar-controls-effectively.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesReports/Pages/Do-you-use-Calendar-controls-effectively.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="TimePrecision"></a>Dates - Do you keep Time formats consistent across your 
                    application?</h2>
                <p>
                    Time formats should be consistent across your application, to give the 
                    application a very professional and consistent look.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadExampleTP.gif" alt="Bad Example" width="550" height="623" /></dt>
                    <dd>
                        Figure: Bad Example - Three screens with inconsistent time formats</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodExampleTP.gif" alt="Good Example" /></dt>
                    <dd>
                        Figure: Good Example - Three screens with consistent formats</dd></dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesReports/Pages/Do-you-keep-Time-formats-consistent-across-your-application.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesReports/Pages/Do-you-keep-Time-formats-consistent-across-your-application.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="DatePrecision"></a>Dates - Do you keep Date formats consistent across your 
                    application?</h2>
                <p>
                    Date formats should always be kept consistent across your application, more importantly, 
                    it should be kept consistent with the operating system's regional settings otherwise 
                    this will cause significant confusion for your users.</p>
                    
                    <dl class="image">
                        <dt>
                        <img src="Images/BetterInterface_RegionalSettings.jpg" alt="OS Regional Settings" /></dt>
                        <dd>
                            Figure: Operating System's Regional Settings
                        </dd>
                    </dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadExampleDP.gif" alt="Bad Example" width="582" height="493" /></dt>
                    <dd>
                        Figure: Bad Example - Two screens with inconsistent date formats</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodExampleDP.gif" alt="Good Example" width="582" height="493" /></dt>
                    <dd>
                        Figure: Good Example - Two screens with consistent date formats</dd></dl>
                <p>
                    The best way to do this in your code is to grab the culture information from the application 
                    thread and use it to automatically format your Datetime data type. Do not use hard coded 
                    datetime formatting strings unless it's absolutely necessary. 
                </p>
                <dl class="badCode">
                    <dt> 
                    <pre>
startTimeTextBox.Text = resultResults.StartTime.ToString("dd/MM/yyyy hh:mm:ss");
                    </pre>
                    </dt>
                    <dd>Figure: Bad Example - using hard coded formatting string</dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                    <pre>
'VB.NET
'Initial CultureInfo settings for the application
Public initialCulture As CultureInfo
...
...
txtDateCreate.Text = CType(txtDateCreate.Tag, System.DateTime).ToString(initialCulture.DateTimeFormat)
                    </pre>
                    </dt>
                    <dd>Figure: Good Example - Using culture info to format datetime</dd>
                </dl>
<font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesReports/Pages/Do-you-keep-Date-formats-consistent-across-your-application.aspx">http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesReports/Pages/Do-you-keep-Date-formats-consistent-across-your-application.aspx</a></font>
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
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Wizard.aspx">Rules to Better Interfaces - Wizards</a></li>
				<li>Rules to Better Interfaces - Reports, Charts and Dates</li>
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
