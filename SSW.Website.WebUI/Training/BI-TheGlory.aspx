<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Training & Events - BI 2010 - The Glory" %>
<%@ Register TagPrefix="text" TagName="Training" Src="/ssw/components/TrainingSidebar.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <h1>Business Intelligence 2010 - The Glory</h1>
    <h2>Staring PerformancePoint Services, Power Pivot and Office 2010</h2>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div id="eventsummary">
        <ul class="vitals">
            <li>Presenter
                <ul>
                    <li>Adam Cogan<br />
                    </li>
                </ul>
            </li>
            <li>Duration
                <ul>
                    <li>1 day</li>
                </ul>
            </li>
            <li>Price (ex GST)
                <ul>
                    <li>$299</li>
                </ul>
            </li>
        </ul>
        <ul class="schedule">
            <li><strong>Sydney</strong>
                <ul>
                    <li>Ended - email to enquire</li>
                    <li><span>
                            <a href="mailto:info@ssw.com.au?subject=BI%20Intelligence%20-%20The%20Glory%20course"><span>info@ssw.com.au</span></a></li>
                </ul>
            </li>
        </ul>
    </div>
    <h2>
        About the Course</h2>
    <p>
        The release of SQL Server 2008 R2 and SharePoint 2010 delivers a new generation
        of data tools with a specific focus of self-service BI. In this one day seminar,
        learn how Excel 2010 has been enhanced to provide richer reporting and analytic
        features, and how PerformancePoint Services has evolved to become a feature-rich
        service that delivers rich KPI, Scorecard and Report definitions, and interactive
        dashboard experiences.</p>
    <p>
        The "jewel in the crown" of Excel 2010 is PowerPivot, a powerful data analysis tool
        that enables users to create and report from data models. Worksheets that store
        PowerPivot data models can be deployed to SharePoint 2010 to become data sources
        that can be managed by IT and consumed by user queries and reports. The first half
        of the seminar will cover how to load, prepare and report from PowerPivot models.
        The second half of the seminar will introduce PerformancePoint Services and demonstrate
        how to produce a library of data connections, indicators, KPIs, scorecards and reports
        to produce and deploy interactive dashboards to SharePoint. This seminar is suitable
        for IT professionals and business users, and equally to management who are interested
        to understand and evaluate Microsoft's upcoming product release. No prior understanding
        of the features products is required.</p>
    <table class="outline">
        <tbody>
            <tr>
                <th scope="row">
                    Course Location
                </th>
                <td>
                    <a href="/ssw/Company/Directions/NeutralBay/">SSW Sydney</a><br />
                Suite 10, 81-91 Military Rd - Neutral Bay - NSW
                </td>
            </tr>
            <tr>
                <th scope="row">
                    Course Times
                </th>
                <td>
                    9AM - 4PM
                </td>
            </tr>
            <tr>
                <th scope="row">
                    Who should attend
                </th>
                <td>
                    Anyone required to report, monitor and analyze data, and for those interested to understand and evaluate Microsoft's next generation data tools
                </td>
            </tr>
        </tbody>
    </table>
    <h2>
        Agenda</h2>
    <h3>
        9AM - 12PM</h3>
    <table class="outline">
        <tr>
            <th scope="col" class="topic">
                Topic
            </th>
            <th scope="col">
                Description
            </th>
        </tr>
        <tr>
            <td>
                Analysis and Reporting with the Excel 2010
            </td>
            <td>
                <ul>
                    <li>What's New in the Excel 2010 Client</li>
                    <li>Loading and Preparing Data in the Excel 2010 PowerPivot Client</li>
                    <li>Creating Excel 2010 PowerPivot Reports</li>
                    <li>Defining DAX Calculations with Excel 2010 PowerPivot</li>
                    <li>Managing Excel 2010 PowerPivot Solutions in SharePoint 2010</li>
                </ul>
            </td>
        </tr>
    </table>
    <h3>
        1PM - 4PM</h3>
    <table class="outline">
        <tr>
            <th scope="col" class="topic">
                Topic
            </th>
            <th scope="col">
                Description
            </th>
        </tr>
        <tr>
            <td>
                Monitoring and Analyzing with SharePoint 2010 PerformancePoint Services
            </td>
            <td>
                <ul>
                    <li>Introducing SharePoint 2010 PerformancePoint Services</li>
                    <li>Developing KPI's and Scorecards with SharePoint 2010 PerformancePoint Services</li>
                    <li>Developing Reports and Dashboards with SharePoint 2010 PerformancePoint Services</li>
                </ul>
            </td>
        </tr>
    </table>
    <h2>Acknowledgements</h2>
    <p><a href="http://www.ssw.com.au/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
<%--    <div class="rounded">
        <h3>
            Special Offer</h3>
    </div>
    <div class="section offer">
        <div class="onsite">
            <h4>
                Book with SSW</h4>
            <p>
                When you book with SSW, you will get 10% discount.</p>
            <p>
                <strong>Special Price:</strong> $299+GST.</p>
            <div class="clear">
            </div>
        </div>
        <div class="customworkshop">
            <h4>
                Custom Workshop</h4>
            <p>
                Customize this workshop to suit your company's needs.</p>
            <p>
                Do it your way - at our facility or your own premises; small group or for all employees.</p>
            <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','Custom Workhop - Microsoft BI Bootcamp',this)"
                category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;"
                onmouseout="self.status='';return true;" style="text-decoration: underline; cursor: pointer">
                696e666f72407373772e636f6d2e6175 </a>
        </div>
    </div>--%>
    <text:Training runat="server" />
    <div class="section">
        <h3>
            About the presenter</h3>
        <p>
            <img src="https://sharepoint.ssw.com.au/AboutUs/Employees/PublishingImages/adam_thumb.jpg"
                class="thumbnail" /><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
            is a Microsoft Regional Director, and Chief Architect at SSW. Adam has been developing
            custom solutions for businesses across a range of industries such as Government,
            banking, insurance and manufacturing since 1990 for clients such as Microsoft, Quicken,
            and the Fisheries Research and Development Corporation. His wealth of experience
            in the industry and unsurpassed technical knowledge will ensure attendees get the
            most out of these sessions.</p>
    </div>
</asp:Content>
