<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/SubPage.master"
    Title="SSW Sydney Training - SharePoint,.NET, Visual Studio & TFS, SQL Server and BI" %>

<asp:Content ID="Content2" ContentPlaceHolderID="featureimage" runat="server">
    <img src="/ssw/Training/images/header_courses.jpg" height="200" width="799" alt="SSW Training Courses - Learn from the experts." />
<div style="font-size: 11px; color: #777;"><!-- this is a once off only hence, no explicit style in css file -TKK -->
<span style="padding-left: 30px;">Joe</span>
<span style="padding-left: 300px;">Paul</span>
<span style="padding-left: 100px;">Peter</span>
<span style="padding-left: 180px;">Eric</span>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>
        SSW Training:</h2>
    <ul>
        <li><a href="#sharepoint">SharePoint</a></li>
        <li><a href="#net">.NET</a></li>
        <li><a href="#sql">SQL Server</a></li>
        <li><a href="#tfs">Visual Studio &amp; TFS</a></li>
        <li><a href="#BI">other courses</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="title" runat="server">
    <h1 style="padding-left: 50px;">
        SSW Training Courses</h1>
    <h2 style="padding-left: 50px;">
        Code smarter, not harder</h2>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <asp:sitemappath id="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider"
        currentnodestyle-cssclass="current" pathseparator=" &raquo; " pathseparatorstyle-cssclass="separator"></asp:sitemappath>
    <h1>
        Keep up with the latest developments on Microsoft Technologies</h1>
    <p>
        Whether you want to improve your skills, project or resume, SSW can help you achieve
        your goals. Our courses cover a broad range of topics in various formats from full-day
        workshops to evening courses that spans accross ten weeks. Small group size guarantees
        close individual attention given by our knowledgable and passionate trainers.<br />
        &nbsp;</p>
    <h2 class="accordionHeader">
        <a name="sharepoint" id="sharepoint"></a>SharePoint</h2>
    <ul class="events">
        <li class="course"><a href="SharePointForBusiness.aspx" class="title">
            <img src="/ssw/EventsCalendar/Images/workshopSmall65x65.jpg" alt="" class="thumbnail" />SharePoint
            Business 101</a><br />
            This workshop presents the features and business case to use SharePoint in terms
            that all business people can understand. <a href="SharePointForBusiness.aspx" class="more">
                View Details</a></li>
        <li class="course"><a href="SharePoint.aspx" class="title">
            <img src="images/thumb_sharepoint.jpg" alt="" class="thumbnail" />
            Managing and Using SharePoint 2010</a><br />
            This course introduces SharePoint 2010 to IT professionals who need to install,
            design, configure and administer a Microsoft SharePoint Environment. <a href="SharePoint.aspx"
                class="more">View Details</a></li>
    </ul>
    <h2 class="accordionHeader">
        <a name="net" id="net"></a>.NET</h2>
    <ul class="events">
        <li class="course"><a href="VisualStudio.aspx" class="title">
            <img src="images/thumb_vsNet.jpg" alt="" class="thumbnail" />
            Developing Windows and Web Applications using Visual Studio.NET (C# and VB.NET)</a><br />
            This course introduces students the Microsoft .NET 3.5 Framework through hands-on
            exercises and live demos. Both C# and VB .NET code is provided side-by-side giving
            the students a deeper understanding of the commonalities between the languages.<a
                href="VisualStudio.aspx" class="more">View Details</a></li>
        <li class="course"><a href="Expression.aspx" class="title">
            <img src="images/thumb_expression.jpg" alt="" class="thumbnail" />Build a .NET App
            in 1 Day with Microsoft Expression and Workflow</a><br />
            A practical course for the ICT Industry exposing attendees to the groundbreaking
            new suite of design tools, the Microsoft Expression Suite.<a href="Expression.aspx"
                class="more">View Details</a></li>
    </ul>
    <h2 class="accordionHeader">
        <a name="tfs" id="tfs"></a>Visual Studio &amp; Team Foundation Server (TFS)</h2>
    <ul class="events">
        <li class="course"><a href="VSTS.aspx" class="title">
            <img src="images/thumb_vsTeam.jpg" alt="" class="thumbnail" />
            Visual Studio 2007 Team System (Overview)</a><br />
            In this session you will see an overview of the Visual Studio Team System suite
            of tools and how they can improve your software development cycle. <a href="VSTS.aspx"
                class="more">View Details</a></li>
        <li class="course"><a href="VSTSCustomization.aspx" class="title">
            <img src="images/thumb_vsTeambug.jpg" alt="" class="thumbnail" />
            Visual Studio Team System 2007: Drilling into Work Items and Customization</a><br />
            In this session you will be taken through everything you need to know to optimize
            your software development cycle using VSTS<a href="VSTSCustomization.aspx" class="more">
                View Details</a></li>
    </ul>
    <h2 class="accordionHeader">
        <a name="sql" id="sql"></a>SQL Server</h2>
    <ul class="events">
        <li class="course"><a href="SQLServer.aspx" class="title">
            <img src="images/thumb_sql2008.jpg" alt="" class="thumbnail" />
            SQL Server for Developers</a><br />
            This course provides attendees with the knowledge necessary to take advantage of
            new features provided by SQL Server 2008. It provides a comprehensive overview of
            technologies, security, and design best practices with particular emphasis on hands-on
            skills. <a href="SQLServer.aspx" class="more">View Details</a></li>
        <li class="course"><a href="AccesstoSQLServerandNET.aspx" class="title">
            <img src="images/thumb_accessUpsize.jpg" alt="" class="thumbnail" />
            Microsoft Access: Upgrading and Migrating to SQL Server and .NET</a>&nbsp;<br />
            The entire process of converting from Access to an enterprise level solution will
            be covered in two days, using a modified version of Northwind as an example. The
            attendees will approach the task as a real world problem where the entire project
            will be migrated in four steps (releases).<a href="AccesstoSQLServerandNET.aspx"
                class="more">View Details</a></li>
    </ul>
    <h2 class="accordionHeader">
        <a name="BI" id="other"></a>BI</h2>
    <ul class="events">
        <li class="course"><a href="ReportingServices.aspx" class="title">
            <img src="images/thumb_sqlReporting.jpg" alt="" class="thumbnail" />Creating Reporting
            Solutions Using Microsoft SQL Server 2008 Reporting Services</a><br />
            This course provides attendees with the knowledge and skills to author, deploy,
            and manage reports using Microsoft Reporting Services. <a href="ReportingServices.aspx"
                class="more">View Details</a></li>
        <li class="course"><a href="BI.aspx" class="title">
            <img src="images/thumb_bi.jpg" alt="" class="thumbnail" />
            Microsoft BI Bootcamp: SQL Server 2008, Office System 2007 and PerformancePoint
            Server 2007</a><br />
            Written and presented by industry experts, this intensive five-day workshop gives
            professional developers the information and hands-on experience they need to deliver
            state-of-the-art, integrated reporting and analytics solutions using Microsoft Business
            Intelligence.<a href="BI.aspx" class="more">View Details</a></li>
    </ul>
    <h1>I'm Sold... What's next?</h1>
        <div class="download narrowDownload">
             <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','SSW Training Course',this)" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer">
            696e666f72407373772e636f6d2e6175 </a>       
           <br />
                or<br /><strong> call +61 2 9953 3000</strong>
        </div>

    <script type="text/javascript">
        $("li.course").click(function() {
            window.location = $(this).find("a.title").attr("href");
            return false;
        });
    </script>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="rounded">
        <h3>
            Special Offer</h3>
    </div>
    <div class="section offer">
        <div class="onsite">
            <h4>
                On-Site Training</h4>
            <p>
                Get hands-on training on these topics for all your employees.</p>
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
                Create your own training course</h4>
            <p>
                Customize these workshops to suit your company's needs.</p>
            <p>
                Do it your way - at our facility or your own premises; small group or for all employees.</p>
              <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','SSW Training Course',this)" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer">
            696e666f72407373772e636f6d2e6175 </a>   
           </div>
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
    </div>
    <div class="section">
        <h3>
            Suggest a course</h3>
        <p>
            If you think we should offer a course on a particular topic, feel free to send an email to <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','Training Course Suggestion',this)" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer">
            696e666f72407373772e636f6d2e6175 </a>.
        </p>
    </div>
    <div class="section">
        <h3>
            About SSW</h3>
        <p>
            SSW Consulting has 16 years experience implementing best of breed solutions that
            improve your operating efficiency and competitive advantage. We deliver scalable
            and extensible custom solutions on top of the latest Microsoft technologies. Our
            consultants are Microsoft Certified Professionals, continually trained in Best Practices.</p>
        <p>
            <a href="/ssw/Company/">Learn more about SSW</a></p>
    </div>
</asp:Content>
