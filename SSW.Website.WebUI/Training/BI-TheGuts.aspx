<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Training & Events - BI 2010 - The Guts" %>
<%@ Register TagPrefix="text" TagName="Training" Src="/ssw/components/TrainingSidebar.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <h1>Business Intelligence 2010 - The Guts</h1>
    <h2>SQL Server 2008, Office System 2010 and PerformancePoint Services</h2>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div id="eventsummary">
        
        <ul class="vitals">
            <li>Presenter
                <ul>
                    <li>Peter Myers</li>
                </ul>
            </li>
            <li>Duration
                <ul>
                    <li>5 days</li>
                </ul>
            </li>
            <li>Price (ex GST)
                <ul>
                    <li>$3,375</li>
                </ul>
            </li>
        </ul>
        <ul class="schedule">
            <li><strong>Sydney</strong>
                <ul>
                    <li>12 May 2008 <span>completed</span></li>
                    <li><a href="/ssw/Shop/BasketInsert.aspx?ProductID=BIWORK">
                        TBA<span>Book Now</span></a></li>
                </ul>
            </li>
        </ul>
    </div>
        <p>Written and presented by industry experts, this intensive five-day workshop gives professional developers the information and hands-on experience they need to deliver state-of-the-art, integrated reporting and analytics solutions using Microsoft Business Intelligence. </p>
        <p>Delivering the right information in the right format at the right time to all users in the organization - that is Microsoft's Business Intelligence (BI) strategy and vision for enterprise information management. Microsoft's integrated BI tools enable developers to create effective solutions that information workers use every day to find meaningful patterns in the vast sea of data they collect and to use that insight to quickly respond to changing business conditions. </p>
        <p>After this workshop, attendees will be able to position different types of business intelligence solutions, from enterprise data warehousing to data marts to real-time operational reporting and analytics. Attendees will learn how to design and build powerful integrated solutions that provide users with rich reporting, analysis, visualization and performance management capabilities by targeting operational data from an existing line-of-business application using the Microsoft Business Intelligence platform. </p>
        <p>Attendees will work through 25 practical hands-on labs to build a complete BI solution by the end of the workshop. </p>
        
     <table class="outline">
     <tbody>
        <tr>
        <th scope="row"> Course Location </th>
            <td>Saxons in Sydney CBD<br />
            Level 10, 10 Barrack St Sydney</td>
        </tr>
        <tr>
        <th scope="row"> Course Times </th>
            <td> 9am-5pm </td>
        </tr>
        <tr>
        <th scope="row"> Who should attend </th>
            <td>
                those who work for an ISV, SI, or enterprise customer
            </td>
        </tr>
        <tr>
        <th scope="row"> Pre Requisites </th>
            <td>
            <ul>
                <li>Active development experience with C# and/or VB.NET </li>
                <li>Basic understanding of SQL and relational database technology </li>
            </ul>
            </td>
        </tr>
        </tbody>
        </table>
        
        <h3>Please Note</h3>

        <p>This workshop is designed for professional developers with little or no experience building BI solutions. If you already have extensive experience building solutions on the Microsoft BI platform, you may find portions of this workshop to be a review of material that you are already familiar with.</p>
        <p>The workshop focuses on a specific scenario: supplementing an existing line-of-business application with integrated reporting and analytics functionality using SQL Server, Office, SharePoint and PerformancePoint. Other scenarios, such as developing custom reporting and analytic tools, or implementing enterprise data warehouses, are not covered in great detail. </p>
        <p>The workshop utilizes pre-release versions of Microsoft software, which may affect the accuracy, completeness or stability of portions of this workshop. Every effort will be made to insure that participants get the most recent information and the most stable environment possible in the workshop. </p>



        <h2>Course Objectives </h2>
        <p>Through interactive presentations and concrete hands-on labs, attendees will learn:</p>
        
        <ul>
            <li>How to use Microsoft SQL Server 2008 to build and manage data marts which provide a consolidated view of business intelligence information. </li>
            <li>How to use the 2007 Microsoft Office system, Office SharePoint Server 2007, and Office PerformancePoint Server 2007 to provide a rich data analysis, visualization and performance management experience for end users.</li>
            <li>How to use dimensional modeling techniques and Visio 2007 database modeling tools to create data models in SQL Server 2008 for hosting consolidated BI information. </li>
            <li>How to build consolidated data marts using SQL Server 2008 Integration Services to extract, transform, and load business-critical information into SQL Server 2008 databases from disparate sources such as business applications and corporate databases. </li>
            <li>How to use SQL Server 2008 Reporting Services to develop predefined and ad hoc relational reports that simplify access to business-critical information, and how to publish and share those reports using Office SharePoint Server 2007 report libraries. </li>
            <li>How to use SQL Server 2008 Analysis Services to create a unified dimensional model that simplifies analytical access to business-critical information stored in SQL Server 2008, and how to publish and collaborate on findings using SQL Server 2008 Reporting Services and Excel Services in Office SharePoint Server 2007. </li>
            <li>How to use SQL Server 2008 Analysis Services to create data mining models that explore, uncover and predict patterns in a BI solution. </li>
            <li>How to use Excel 2007, Visio 2007 and ProClarity Professional Desktop for advanced data analysis and visualization. </li>
            <li>How to build dashboards in Office SharePoint Server 2007 that expose business-critical information in compelling ways, and how to build and deploy custom dashboards by creating site templates and custom Web parts. </li>
            <li>How to use Office PerformancePoint Server 2007 to provide integrated performance-management solutions with scorecarding, planning and analysis functionality. </li>
        </ul>        
     <h2>
        Agenda</h2>
    <h3>
        Day 1</h3>
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
                Module 1<br /> 
                Microsoft BI Strategy Overview
            </td>
            <td>
                <ul>
                    <li>Defining Business Intelligence (BI)</li>
                    <li>Introducing the Microsoft BI Platform</li>
                    <li>Introducing the BI Developer's Toolset</li>
                    <li>Introducing Adventure Works Cycles Company</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Module 2<br />
                Introduction to Dimensional Modeling Techniques 
            </td>
            <td>
                <ul>
                    <li>Designing the Dimensional Model</li>
                    <li>Introducing Additional Design Concepts</li>
                    <li>Lab 02A - Database Modeling (Creating the Reseller Sales Database Diagram)</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Module 3<br />
                Introduction to ETL Techniques Using SSIS
            </td>
            <td>
                <ul>
                    <li>Reviewing ETL Fundamentals</li>
                    <li>Introducing SSIS Components</li>
                    <li>Designing ETL Packages</li>
                    <li>Lab 03A - Control Flow (Loading the Sales Quota Fact Table, Part 1)</li>
                    <li>Lab 03B - Data Flow (Loading the Sales Quota Fact Table, Part 2)</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Module 4<br />
                Advanced SSIS
            </td>
            <td>
                <ul>
                    <li>Advanced Data Flow</li>
                    <li>Manageability Features</li>
                    <li>Programmability</li>
                    <li>Lab 04A - Slowly Changing Dimensions (Loading the Employee Dimension) </li>
                </ul>
            </td>
        </tr>
        </table>
    
    <h3>
        Day 2</h3>
    <table class="outline">
        <tr>
            <td>
                Module 5<br />
                Introduction to SSRS
            </td>
            <td>
                <ul>
                    <li>Reporting Fundamentals</li>
                    <li>Introducing Reporting Services (SSRS)</li>
                    <li>Basic SSRS Report Design</li>
                    <li>Lab 05A - Creating Managed Reports (Developing a Report for Publication)</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Module 6<br />
                Advanced SSRS 
            </td>
            <td>
                <ul>
                    <li>Introducing Report Interactivity</li>
                    <li>Extending Reports with Custom Logic</li>
                    <li>Optimizing Report Execution</li>
                    <li>Managing the Report Server with Utilities</li>
                    <li>Lab 06A - Advanced Managed Reports (Enhancing the Report Design)</li>
                    <li>Lab 06B - Advanced SSRS Features (Managing and Distributing Reports)</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Module 7<br />
                Designing a Report Model for ad hoc Reporting
            </td>
            <td>
                <ul>
                    <li>Introducing Report Builder</li>
                    <li>Reviewing Report Models</li>
                    <li>Creating Reports with Report Builder</li>
                    <li>Lab 07A - Report Builder (Self-Service Reporting)</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Module 8<br />
                Publishing and Accessing Reports Using SSRS 
            </td>
            <td>
                <ul>
                    <li>Reviewing Report Deployment Options</li>
                    <li>Accessing Reports in SSRS</li>
                    <li>Accessing Reports Programmatically</li>
                    <li>Embedding Reports in .NET Applications</li>
                    <li>Lab 08A - Programmatic Report Deployment (Using the RS Utility)</li>
                    <li>Lab 08B - Using the ReportViewer Control (Smart Client Integrated Reporting)</li>
                </ul>
            </td>
        </tr>
        </table>
    
    <h3>
        Day 3</h3>
    <table class="outline">
        <tr>
            <td>
                Module 9<br />
                Introduction to the UDM 
            </td>
            <td>
                <ul>
                    <li>Reviewing OLAP Fundamentals</li>
                    <li>Understanding Database Components</li>
                    <li>Performance Tuning</li>
                    <li>Programming SSAS </li>
                    <li>Lab 09A - Building a Basic Cube (The Cube Wizard)</li>
                    <li>Lab 09B - Working with Dimensions (Enriching the Dimension Space)</li>
                    <li>Lab 09C - Calculations, KPIs and Actions (Enriching the Cube Space) </li>
                    <li>Lab 09D - Dimension and Cube Processing (Managing Data Processing)</li>
                    <li>Lab 09E - Cube Deployment (Developing an Installer Package)</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Module 10<br />
                Accessing the UDM from SSRS and Excel Services 
            </td>
            <td>
                <ul>
                    <li>Accessing the UDM from SSRS</li>
                    <li>Accessing the UDM from Excel 2007 </li>
                    <li>Lab 10A - UDM Reporting (Developing Reports for Reuse)</li>
                    <li>Lab 10B - UDM Reporting (Developing Excel Reports Based on the UDM)</li>
                </ul>
            </td>
        </tr>
        </table>
    
    <h3>
        Day 4</h3>
    <table class="outline">
        <tr>
            <td>
                Module 11<br />
                Advanced Data Analysis using Excel 2007 and ProClarity 6.3
            </td>
            <td>
                <ul>
                    <li>Analyzing Data with Excel 2007</li>
                    <li>Analyzing Data with ProClarity 6.3</li>
                    <li>Lab 11A - Advanced Data Analysis (Analyzing with Excel 2007)</li>
                    <li>Lab 11B - Advanced Data Analysis (Analyzing with ProClarity 6.3)</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Module 12<br />
                Introduction to SSAS Data Mining Models
            </td>
            <td>
                <ul>
                    <li>Introducing Data Mining</li>
                    <li>Integration with SQL Server 2008 Components</li>
                    <li>Data Mining Programmability</li>
                    <li>Lab 12A - Embedded Data Mining (Applied Mining for Meaning)</li>
                    <li>Lab 12B - Integrated Data Mining (Integrating Mining Results)</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Module 13<br />
                Building Dashboards in Office SharePoint Server 2007 
            </td>
            <td>
                <ul>
                    <li>Reviewing Dashboard Fundamentals</li>
                    <li>Understanding the BI Features</li>
                    <li>Lab 13A - Building SharePoint Dashboards (Creating a SharePoint Dashboard Page)</li>
                </ul>
            </td>
        </tr>
        </table>
    
    <h3>
        Day 5</h3>
    <table class="outline">
        <tr>
            <td>
                Module 14<br />
                Monitoring KPIs using PerformancePoint Server 2007 Scorecards
            </td>
            <td>
                <ul>
                    <li>Reviewing Performance Management Fundamentals</li>
                    <li>Introducing PerformancePoint Monitoring</li>
                    <li>Building a Scorecard</li>
                    <li>Deploying a Scorecard</li>
                    <li>Lab 14A - Designing a PerformancePoint 2007 Scorecard (Creating the Reseller Sales Scorecard)</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Module 15<br />
                Analyzing Performance using PerformancePoint Server 2007
            </td>
            <td>
                <ul>
                    <li>Configuring Reports</li>
                    <li>Building Dashboards</li>
                    <li>Deploying Dashboards </li>
                    <li>Lab 15A - Designing a PerformancePoint 2007 Dashboard (Creating the Reseller Sales Dashboard)</li>
                </ul>
            </td>
        </tr>
<%--        <tr>
            <td>
                Module 16<br />
                Planning, Budgeting, and Forecasting with PerformancePoint Server 2007
            </td>
            <td>
                <ul>
                    <li>Reviewing Planning</li>
                    <li>Budgeting and Financing Forecasting</li>
                    <li>PerformancePoint Planning</li>
                    <li>Building a Planning Application</li>
                    <li>Using a Planning Application</li>
                    <li>Lab 16A - Planning the Sales Quota Forecast (Planning with PerformancePoint Server)</li>
                </ul>
            </td>
        </tr>--%>
        </table>
        
        <h2>Acknowledgements</h2>
            <p>
            <a href="http://www.ssw.com.au/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
            </p>
     
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
<text:Training runat="server" />
<%--    <div class="rounded">
        <h3>
            Special Offer</h3>
    </div>
    <div class="section offer">
        <div class="onsite">
            <h4>
                Book with ssw</h4>
            <p>
                When you book with SSW, you will get 10% discount.</p>

            <p><strong>Special Price:</strong> $3375+GST.</p>
            
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
            <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','Custom Workhop - Microsoft BI Bootcamp',this)" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer">
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
