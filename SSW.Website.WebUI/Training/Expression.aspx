<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="Build a .NET App in 1 Day with Microsoft Silverlight and VS 2010 (Including Expression Blend and Workflow)" %>
<%@ Register TagPrefix="text" TagName="Training" Src="/ssw/components/TrainingSidebar.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <h1>Build a .NET App in 1 Day with Microsoft Silverlight and VS 2010</h1>
    <h2>Including Expression Blend and Workflow</h2>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div id="eventsummary">
        <ul class="vitals">
            <li>Presenter
                <ul>
                    <li>Adam Cogan</li>
                </ul>
            </li>
            <li>Duration
                <ul>
                    <li>1 day</li>
                </ul>
            </li>
            <li>Price (ex GST)
                <ul>
                    <li>Call</li>
                </ul>
            </li>
        </ul>
        <ul class="schedule">
            <li><strong>Sydney</strong>
                <ul>
                    <li><a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','Booking - Build .NET app in 1 day with Microsoft Expression',this)" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer">
            696e666f72407373772e636f6d2e6175 </a></li>
                </ul>
            </li>
        </ul>
    </div>
    <p>
        A practical course for the next generation of developers, exposing attendees to the ground breaking
        new suite of design tools, the <a href="/ssw/Redirect/Microsoft/MSExpression.htm"
            target="_blank" class="external"> Microsoft Expression Suite</a> and Visual Studio Team System 2010. The new <a href="/ssw/Redirect/Microsoft/WindowsWorkflow.htm"
                target="_blank" class="external"> Microsoft Windows Workflow Foundation</a>framework, OLAP
        with Reporting Services 2008  will also be covered.
    </p>
    <p>
        On completion of this course, students will have the skills to:</p>
    <ol>
        <li>Gather requirements </li>
        <li>Add a process template to Team Foundation Server (TFS)</li>
        <li>Make a release plan </li>
        <li>Build the UI and navigation in Expression Blend using Sketchflow</li>
        <li>Setup a deployment script for Dev, Test, Staging, Production</li>
        <li>Connect to a SQL Server 2008 database using LINQ to Entities in Visual Studio 2010</li>
        <li>Use RIA Services to avoid a web service layer in WCF</li>
        <li>Bind the data to the Silverlight UI</li>
        <li>Move the appropriate pieces to <a href="/ssw/Redirect/Microsoft/WindowsWorkflow.htm"
            target="_blank" class="external">Windows Workflow</a></li>
        <li>Add reports using Microsoft SQL Server 2008 Reporting Services </li>
        <li>Make an OLAP data cube </li>
        <li>Use the Reporting Services report builder 2.0 to report off the cube </li>
        <li>Setup Gated Checkins so that solution stays solid using Microsoft Team Foundation Server</li>
    </ol>
    <p>End of Day Discussion Points</p>
    <ul>
    <li>Building an alternative down level solution using ASP.NET 4.0</li>
    <li>Incorporating Microsoft AJAX 4 Live Data Binding functionality into your site</li>
    <li>Making nicer URL's</li>
    <li>Adding offline capabilities to your application</li>
    </ul>
    
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
<%--    <div class="rounded">
        <h3>
            Special Offer</h3>
    </div>
    <div class="section offer">
        <div class="onsite">
            <h4>
                On-Site Training</h4>
            <p>
                Get hands-on training on this topic for all your employees.</p>
            <p>
                Price include up to 10 attendees. Additional pro-rated.</p>
            <dl>
                <dt>1 Day</dt>
                <dd class="price">
                    $2,800</dd>
            </dl>
            <dl>
                <dt>2 Days </dt>
                <dd class="price">
                    $5,400</dd>
            </dl>
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
            <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','Custom Workshop - Build .NET App in 1 Day with Microsoft Expression and Workflow',this)" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer">
            696e666f72407373772e636f6d2e6175 </a></div>
    </div>
    <div class="section">
        <h3>
            Power Sessions</h3>
        <p>
            Power sessions are developer training presentations focusing on specific subject
            and are generally 1-2 hours long. They are packed with practical tips on .NET, SQL,
            Silverlight, Visual Studio and more.
        </p>
        <p>
            <a href="Sessions.aspx">See all Power Sessions topic</a></p>
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
