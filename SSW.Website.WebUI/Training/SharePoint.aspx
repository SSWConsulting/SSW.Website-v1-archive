<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="Managing and Using SharePoint 2010" %>
<%@ Register TagPrefix="text" TagName="Training" Src="/ssw/components/TrainingSidebar.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <h1>Managing and Using SharePoint 2010</h1>
    <h2>Overview</h2>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div id="eventsummary">
        <ul class="vitals">
            <li>Duration
                <ul>
                    <li>3 hours x 10 weeks</li>
                </ul>
            </li>
            <li>Price (ex GST)
                <ul>
                    <li>$1,600</li>
                </ul>
            </li>
        </ul>
        <ul class="schedule">
            <li><strong>UTS Sydney</strong>
                <ul>
                    <li>8 Aug 2012<span>Enroll</span></li>
                </ul>
            </li>
        </ul>
    </div>
    <p>This course introduces SharePoint 2010 to IT professionals who need to install, design, configure and administer a Microsoft SharePoint Environment.</p>
    <p>This course has a particular emphasis on real world applications and skills. Topics covered include:</p>
    <ul>
        <li>What is SharePoint </li>
        <li>How to install SharePoint Server 2010 </li>
        <li>SharePoint Security </li>
        <li>SharePoint User Interface </li>
        <li>SharePoint Document management </li>
        <li>How to Create a Portal </li>
        <li>Setting up lists and documents libraries </li>
        <li>Advanced SharePoint features </li>
        <li>Migrating content into SharePoint </li>
        <li>Workflow </li>
        <li>SharePoint and Search </li>
        <li>SharePoint Business Data Catalogue </li>
        <li>SharePoint Administration </li>
        <li>Form and Excel services </li>
        <li>Web publishing</li>
    </ul>
    <br />
    <table class="outline">
<tr><th><b>Content</b></th><th><b>Speaker</b></th></tr>
<tr bordercolor="grey"><td>Overview</td><td>Adam Cogan</td></tr>
<tr bordercolor="grey"><td>Navigation and User Interface</td><td>Adam Stephenson</td></tr>
<tr bordercolor="grey"><td>Setting up Lists and Document Libraries<br />User and Permissions</td><td>Mehmet Ozdemir & Adam Stephenson</td></tr>
<tr bordercolor="grey"><td>Document Management<br /> Migrating Content into SharePoint </td><td>Mehmet Ozdemir & Adam Stephenson</td></tr>
<tr bordercolor="grey"><td>SharePoint and Search</td><td>Adam Stephenson & Daragh Bannigan</td></tr>
<tr bordercolor="grey"><td>Workflow <br />SharePoint Designer</td><td>Adam Cogan & Mehmet Ozdemir</td></tr>
<tr bordercolor="grey"><td><del>SharePoint Portal & Web Publishing </del><br /> **REPLACED WITH AN INSTALL NIGHT</td><td>Daragh Bannigan & Mehmet Ozdemir</td></tr>
<tr bordercolor="grey"><td>Business Data Connectivity Services</td><td>Mehmet Ozdemir & Adam Stephenson</td></tr>
<tr bordercolor="grey"><td>Form and Excel Services</td><td>Mehmet Ozdemir & Adam Stephenson</td></tr>
<tr bordercolor="grey"><td>Administration, Security, Deployment and Configuration</td><td>Daragh Bannigan & Mehmet Ozdemirn</td></tr>
    </table>
<br /><br /><br />
    <%--<p><b>Past Events</b><br />
     2007, 2008, 2009 courses were in SharePoint 2007 - Details are available via the <a href="http://it.uts.edu.au/course/shortcourse/programming/SharePoint.html" class="external">UTS Short Courses</a> page</p>--%>
    <table class="outline">
        <tr>
            <th scope="row">
                Course Times
            </th>
            <td>
                Every Wednesday, 6pm-9pm (Tentative)
            </td>
        </tr>
        <tr>
            <th scope="row">
                Venue
            </th>
            <td>
                City campus - Building 10
            </td>
        </tr>
        <tr>
            <th scope="row">
                Who should attend
            </th>
            <td>
                <ul>
                    <li>Information Technology Professionals who need to install implement and administrate
                        SharePoint 2010</li>
                    <li>Technical audience with an interest in SharePoint 2010 e.g. administrators, developers,
                        and web masters </li>
                </ul>
            </td>
        </tr>
    </table>
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
    <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','Custom Workshop - Managing and Using SharePoint 2010',this)" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer">
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
    </div>--%>
    <text:Training runat="server" />
</asp:Content>
