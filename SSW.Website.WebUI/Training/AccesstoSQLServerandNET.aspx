<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="Access: Upgrading and Migrating to SQL Server and .NET" %>
<%@ Register TagPrefix="text" TagName="Training" Src="/ssw/components/TrainingSidebar.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <h1>Microsoft Access</h1>
    <h2>Upgrading and Migrating to SQL Server and .NET</h2>
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
                    <li>2 days</li>
                </ul>
            </li>
            <li>Price (ex GST)
                <ul>
                    <li>AU$535</li>
                </ul>
            </li>
        </ul>
        <ul class="schedule">
            <li><strong>Sydney</strong>
                <ul>
                    <li>27 Feb 08 <span>completed</span></li>
                    <li>26 Oct 08 <span>completed</span></li>
                    <li><a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','Suggest - Access: Upgrading and Migrating to SQL Server and .NET',this)" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer">
                    696e666f72407373772e636f6d2e6175</a></li>
                </ul>
            </li>
            <li><strong>London</strong>
                <ul>
                    <li>14 Oct 05 <span>completed</span></li>
                </ul>
            </li>
            <li><strong>New York</strong>
                <ul>
                    <li>10 Oct 05 <span>completed</span></li>
                    <li>11 Oct 05 <span>completed</span></li>
                </ul>
            </li>
        </ul>
    </div>
    <p>
        The entire process of converting from Access to an enterprise level solution will
        be covered in two days, using a modified version of Northwind as an example. The
        attendees will approach the task as a real world problem where the entire project
        will be migrated in four steps (releases). Each step will be a logical extension
        of the last, allowing developers to stop their own development at a step where they
        will still have a functioning system, even though it may not necessarily be the
        best solution.
    </p>
    <table width="100%" border="0" class="outline">
        <tr>
            <th scope="row">
                Day 1
            </th>
            <td>
                <p>
                    <strong>Session 1</strong><br />
                    Learn how to target the areas of the systems that should be converted to achieve
                    the best result. How should development of this type of project happen? How should
                    a project be managed? What methodologies are in place?</p>
                <p>
                    Upgrading an Access 97 database to Access 2003. What are the issues? With a demonstration
                    using a modified version of the Northwind database.</p>
                <p>
                    <strong>Session 2</strong><br />
                    Upsize an Access 2003 database to SQL Server. A modified version of Northwind will
                    be used as an example and the backend will be moved over to SQL Server, correcting
                    a number of known issues concerning the data itself as well the database schema.</p>
            </td>
        </tr>
        <tr>
            <th scope="row">
                Day 2
            </th>
            <td>
                <p>
                    <strong>Session 1<br />
                    </strong>The advantages of moving Access reports into Microsoft's new SQL Server
                    Reporting Services will be described, along with the process for importing four
                    of the key reports from Northwind. Issues related to importing will be handled to
                    produce identical reports. The reports will then be deployed to a report server
                    to demonstrate the power of online reports using Reporting Services.</p>
                <p>
                    <strong>Session 2<br />
                    </strong>Access Forms will be transformed into Windows Forms .NET in order to provide
                    a more scalable and distributable application. The known issues during migration
                    will be highlighted and the power of .NET will be leveraged to improve the interface
                    performance.</p>
                <p>
                    Having moved to a Windows Forms .NET environment you will be shown how to make the
                    application more accessible. Web services will be used so that the client does not
                    need to be within an intranet to access the corporate database.</p>
            </td>
        </tr>
    </table>
    <h1>
        Agenda</h1>
    <h2 class="accordionHeader">
        Day 1</h2>
    <table width="100%" class="outline">
        <tr>
            <th scope="col">
                Topic
            </th>
            <th scope="col">
                Description
            </th>
        </tr>
        <tr>
            <td>
                Making a Plan
            </td>
            <td>
                <ul>
                    <li>About Presenters </li>
                    <li>Development Methodology - Extreme Programming (XP)
                        <ul>
                            <li>Tool 1: Short Releases </li>
                            <li>Tool 2: Microsoft Word </li>
                            <li>Tool 3: Unit Testing </li>
                        </ul>
                    </li>
                </ul>
                <ul>
                    <li>Hands-on lab - Creating a release plan </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Converting Access 97 to Access 2003
            </td>
            <td>
                <ul>
                    <li>Why would you upgrade? </li>
                    <li>The issues
                        <ul>
                            <li>Uncompiled mdbs </li>
                            <li>Unused code blocks </li>
                            <li>Using referenced .mdbs and .mdes </li>
                            <li>Library mdes </li>
                        </ul>
                    </li>
                    <li>Demo - Using tools to find issues
                        <ul>
                            <li>FMS Total Access Analyzer</li>
                        </ul>
                    </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Upsizing to SQL Server
            </td>
            <td>
                <ul>
                    <li>To Move or Not To Move? </li>
                    <li>Current Problems in Access
                        <ul>
                            <li>Corrupt data </li>
                            <li>Database users </li>
                            <li>Downtime during backups </li>
                            <li>Security </li>
                            <li>Missing records </li>
                        </ul>
                    </li>
                    <li>What's new and different in SQL Server?
                        <ul>
                            <li>Architecture </li>
                            <li>Working with data </li>
                            <li>Scalability and performance </li>
                        </ul>
                    </li>
                    <li>Demos
                        <ul>
                            <li>SSW Upsizing PRO! </li>
                            <li>Microsoft Upsizing Wizard </li>
                            <li>SSW Performance Pro! </li>
                            <li>SSW SQL Deploy </li>
                            <li>SSW SQL Auditor </li>
                        </ul>
                    </li>
                    <li>Hands-on lab - Migrating Northwind from Access 2003 to SQL Server 2000</li>
                </ul>
            </td>
        </tr>
    </table>
    <h2 class="accordionHeader">
        Day 2</h2>
    <table width="100%" class="outline">
        <tr>
            <th scope="col">
                Topic
            </th>
            <th scope="col">
                Description
            </th>
        </tr>
        <tr>
            <td>
                From Access to SQL Server Reporting Services
            </td>
            <td>
                <ul>
                    <li>History of reporting </li>
                    <li>Report life cycle </li>
                    <li>Installing Reporting Services </li>
                    <li>Building a report in Visual Studio .NET </li>
                    <li>Report on any data source </li>
                    <li>Deploying reports </li>
                    <li>Hands-on Lab - migrating 4 Northwind reports from Access into Reporting Services
                    </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                From Access Forms to Windows Forms .NET
            </td>
            <td>
                <ul>
                    <li>Current Problems with Access
                        <ul>
                            <li>Office upgrades </li>
                            <li>Corrupt databases </li>
                            <li>Slow forms </li>
                            <li>Large applications </li>
                            <li>Scalability </li>
                            <li>Deployment</li>
                        </ul>
                    </li>
                    <li>What's new and different in .NET?
                        <ul>
                            <li>Form design </li>
                            <li>Form inheritance </li>
                            <li>Application design </li>
                            <li>Deployment </li>
                            <li>Visual Studio .NET </li>
                            <li>Programming - VBA vs VB.NET</li>
                        </ul>
                    </li>
                    <li>Demos
                        <ul>
                            <li>Creating the Northwind Main Form in .NET </li>
                            <li>Creating the Northwind Orders Form in .NET </li>
                            <li>Orders form - the correct way </li>
                            <li>Northwind Orders - Converting to .NET the easy way! </li>
                        </ul>
                    </li>
                    <li>Hands-on lab - Migrating Northwind forms to .NET</li>
                </ul>
            </td>
        </tr>
    </table>
    <h2>
        System Requirements</h2>
    <ul>
        <li>Windows XP + SP2 </li>
        <li>Access 97 + SP2 </li>
        <li>Access 2003 + SP1 </li>
        <li>SQL Server 2000 + SP3 </li>
        <li>SQL Server 2000 Reporting Services + SP1 </li>
        <li>Visual Studio 2003 </li>
        <li>Visual Studio 2005 Beta </li>
    </ul>

    <h2>
        <a name="coursematerial" id="coursematerial"></a>DIY Course Materials</h2>
    <p>
        If you aren't able to make it to this seminar we have the complete set of course
        material used by the trainer, Adam Cogan, and the students.</p>
    <p>
        DIY Material for this course is available for AU$390. <a href="/ssw/Shop/BasketInsert.aspx?ProductID=2DMATN">
            Add to cart</a></p>
    <ul>
        <li>Step-by-step hands-on lab exercises for each part of the course. These are very
            practical and easy to follow. You will be able to go through these even if you have
            not attended the course </li>
        <li>The full set of 3 Microsoft-approved &quot;How to Migrate&quot; whitepapers which
            complement the hands-on lab exercises and include straightforward steps with lots
            of screen captures </li>
        <li>The full set of 3 Microsoft-approved &quot;Whats New and Different&quot; whitepapers,
            covering the key differences between Access and SQL Server, Reporting Services,
            and .NET </li>
        <li>The full set of PowerPoint slides used by the trainer </li>
        <li>Other course materials used throughout the seminar including sample code and databases
        </li>
        <li>Access to regular updates of the course content as we make improvements and updates
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="rounded">
        <h3>
            Special Offer</h3>
    </div>
    <div class="section offer">
        <div class="selfpaced">
            <h4>
                Self-paced option</h4>
            <p>
                If you are unable to attend any session, you can purchase the course material so
                you can learn at your own pace</p>
            <p>
                <a href="/ssw/Shop/BasketInsert.aspx?ProductID=2DMATN">Purchase material</a></p>
        </div>
<%--        <div class="onsite">
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
             <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','Custom Workshop - Upgrading and migrating to SQL Server and .NET',this)" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer">    
             696e666f407373772e636f6d2e6175</a>
           </div>--%>
    </div>
 <%--   <div class="section">
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
