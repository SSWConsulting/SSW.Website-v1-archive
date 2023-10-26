<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="SolidQ - Microsoft BI Immersion: SQL Server 2012 and Office 2010" %>
<%--Do not change the title - we know it's long, but for SEO purposes--%>
<%@ Register Src="~/Components/Newsletter.ascx" TagName="Newsletter" TagPrefix="ssw" %>
<asp:Content ContentPlaceHolderID="title" runat="server">
<h1>SolidQ - Microsoft BI Immersion: SQL Server 2012 and Office 2010</h1>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    
    <div id="eventsummary">
        <ul class="vitals conferenceprice">
            <li>Duration
                <ul>
                    <li>5 days</li>
                </ul>
            </li>
            <li>Price
                <ul>
                    <li style="width:190px;">$3,500 + GST</li>
                </ul>
            </li>
        </ul>
        <ul class="schedule conference">
            <li class="flag">
                <strong>
                <img src="/ssw/events/images/flag_australia.png" style="float: left; margin-right: 10px;"
                    title="Melbourne" />Melbourne<br /><span>TBA</span></strong>
                <ul>
                    <li style="width: 100px;">
                        <p>COMING SOON</p><%--<a href="/ssw/Shop/BasketInsert.aspx?ProductID=SQBIME"><span>Book Now</span></a>--%>
                    </li>
                </ul>
            </li>

            <li class="flag">
                <strong><img src="/ssw/events/images/flag_australia.png" style="float: left; margin-right: 10px;"
                    title="Sydney" />Sydney<br /><span>TBA</span></strong>
                    <ul>
                        <li style="width: 100px;">
                        <p>COMING SOON</p><%--<a href="/ssw/Shop/BasketInsert.aspx?ProductID=SQBISY"><span>Book Now</span></a>--%>
                        </li>
                    </ul>
            </li>
        </ul>
    </div>
    <p><a href="http://www.ssw.com.au/ssw/Events/Training/BI-Bootcamp.aspx">See the SolidQ BI Bootcamp</a></p>
    <h2>Description</h2>
    <p>Written and presented by industry experts, this intensive five-day course gives professional developers the knowledge and hands-on experience they need to start producing state-of-the-art, integrated reporting and analytics solutions using Microsoft Business Intelligence (BI).</p>
    <p>Delivering the right information in the right format at the right time to all users in the organization&#8212;that is Microsoft&#8217;s BI strategy and vision. Microsoft&#8217;s integrated BI products enable developers to create effective solutions that information workers can use to find meaningful patterns in the vast sea of data they collect, and to use these insights to quickly respond to changing business conditions.</p>
    <p>On completion of this course attendees will be able to understand different types of BI solutions, from enterprise data warehousing to data marts to real-time operational reporting and analytics. Attendees will learn how to design and develop powerful integrated solutions that provide information workers with rich reporting, analysis, visualization and performance management capabilities.</p>
    <p>Attendees will have a unique opportunity to complete practical hands-on labs that build a complete end-to-end BI solution.</p>
        
    <h2>Target Audience</h2>
    <p>The presentations and hands-on labs have been specifically designed to provide professional developers the knowledge they need to produce integrated solutions based on the Microsoft BI platform.</p>
    <p>This course is also relevant and useful for those interested to understand and evaluate Microsoft&#8217;s BI products.</p>

    <h2>Prerequisites</h2>
    <p>Before attending this course, it is recommended that attendees have the following skills:</p>
    <ul>
        <li>T-SQL and database design knowledge</li>
        <li>Familiarized with Microsoft Office 2010.</li>    
    </ul>
    <p><strong>Note:</strong> This course is designed for professional developers with little or no experience building BI solutions. If you already have extensive experience building solutions on the Microsoft BI platform, you may find portions of this course to be a review of material that you are already familiar with.</p>
    <p>The course focuses on a specific scenario: supplementing an existing line-of-business application with integrated reporting and analytics functionality using SQL Server, Excel, PowerPivot, and SharePoint (Excel Services, Visio Services, PerformancePoint Services and Power View). Other scenarios, such as developing custom reporting and analytic tools, or implementing enterprise data warehouses, are not covered in depth.</p>
    
    <h2>Course Objectives</h2>
    <p>Upon completion of this course, students will know how to:</p>
    <ul>
        <li>Design and manage data marts to provide a consolidated view of organizational data.</li>
        <li>Populate data marts by developing SQL Server 2012 Integration Services solutions to extract, transform, and load business-critical information sourced from disparate data sources, such as business applications and corporate databases.</li>
        <li>Develop SQL Server 2012 Analysis Services data models that provide high query performance, encapsulate business rules, and simplify access to business data.</li>
        <li>Develop SQL Server 2012 Analysis Services data mining models to explore, discover and predict patterns in data.</li>
        <li>Develop, manage and deliver SQL Server 2012 Reporting Services reports.</li>
        <li>Create rich, interactive reports in Excel 2010, and publish these to SharePoint 2010.</li>
        <li>Create PowerPivot workbooks to relate local, ad hoc or corporate data stores.</li>
        <li>Publish and manage PowerPivot workbooks in SharePoint 2010.</li>
        <li>Create data-driven diagrams in SharePoint 2010 Visio Services.</li>
        <li>Create SharePoint 2010 dashboards to expose business-critical information in compelling ways.</li>
        <li>Create SharePoint 2010 PerformancePoint Services performance management solutions with scorecard and analytics functionality.</li>
        <li>Create rich, visually impressive reports using Power View.</li>
    </ul>

    <h2>Course Summary Outline</h2>
    <h3 class="special">DAY 1</h3>
    <h3 class="accordionHeader">A. Introduction to Microsoft Business Intelligence</h3>
        <h4>Module A01: Introduction to Microsoft Business Intelligence</h4>
        <ul>
            <li>Defining Business Intelligence (BI); Introducing the Microsoft BI platform; Introducing the BI developer&#8217;s toolset; Introducing Adventure Works</li>
        </ul>

    <h3 class="accordionHeader">B. Data Warehouse Design and ETL with Integration Services</h3>
        <h4>Module B01: Introducing Dimensional Modeling Techniques</h4>
        <ul>
            <li>Designing dimensional models; Introducing additional design concepts | Lab B01A &#8211; Exploring the Data Warehouse Schema with Visio</li>
        </ul>
        <h4>Module B02: Introducing Master Data Services</h4>
        <ul>
            <li>Introducing Master Data Services | Lab B02A &#8211; Creating a Master List</li>
        </ul>
        <h4>Module B03: Introducing Data Quality Services</h4>
        <ul>
            <li>Reviewing data quality concepts; Introducing Data Quality Services | Lab B03A &#8211; Creating a Knowledge Base</li>
        </ul>

    <h3 class="special">DAY 2</h3>
        <h4>Module B04: Designing ETL Solutions with Integration Services</h4>
        <ul>
            <li>Reviewing ETL Fundamentals; Introducing Integration Services components; Designing ETL packages | Lab B04A &#8211; Developing a Package Control Flow | Lab B04B &#8211; Developing a Data Flow</li>
        </ul>
        <h4>Module B05: Introducing Advanced Integration Services Design</h4>
        <ul>
            <li>Advanced data flow design; Introducing the manageability features; Deploying Integration Services solutions; Programming Integration Services | Lab B05A &#8211; Implementing Advanced Package Design</li>
        </ul>

    <h3 class="accordionHeader">C. Data Modeling with Analysis Services</h3>
        <h4>Module C01: Designing Analysis Services BI Semantic Models</h4>
        <ul>
            <li>Introducing the BI Semantic Model; Developing multidimensional projects; Developing tabular projects | Lab C01A &#8211; Developing a Tabular Project</li>
        </ul>
        <h4>Module C02: Processing and Deploying Analysis Services Solutions</h4>
        <ul>
            <li>Model processing; Model security; Project deployment; Programming Analysis Services | Lab C02A &#8211; Deploying and Managing a Tabular Database</li>
        </ul>

    <h3 class="special">DAY 3</h3>
    <h3 class="accordionHeader">D. Data Mining with Analysis Services</h3>
        <h4>Module D01: Designing Analysis Services Data Mining Models</h4>
        <ul>
            <li>Introducing data mining; Integration with SQL Server; Data Mining programming | Lab D01A &#8211; Developing and Querying Data Mining Models | Lab D01B &#8211; Integrating Data Mining with Integration Services</li>
        </ul>
    <h3 class="accordionHeader">E. Reporting Solutions with Reporting Services</h3>
        <h4>Module E01: Introducing Reporting Services</h4>
        <ul>
            <li>Reporting fundamentals; Introducing Reporting Services</li>
        </ul>
        <h4>Module E02: Authoring Reporting Services Reports</h4>
        <ul>
            <li>Introducing basic report design; Managing report deployment; Working with report parts; Introducing report interactivity; Extending reports with custom logic; Reporting from Analysis Services models | Lab E02A &#8211; Authoring Reports Based on Relational Data, Part 1 | Lab E02B &#8211; Authoring Reports Based on Relational Data, Part 2 |  Lab E02C &#8211; Authoring Reports Based on BI Semantic Models | Lab E02D &#8211; Authoring Reports Based on Data Mining Models</li>
        </ul>

    <h3 class="special">DAY 4</h3>
        <h4>Module E03: Managing and Delivering Reporting Services Reports</h4>
        <ul>
            <li>Optimizing report execution; Securing report server items and data; Working with data alerts; Delivering reports with subscriptions | Lab E03A &#8211; Working with Data Alerts | Lab E03B &#8211; Managing and Delivering Reports</li>
        </ul>
        <h4>Module E04: Programming Reporting Services</h4>
        <ul>
            <li>Defining URL access; Scripting with the RS Utility; Accessing reports programmatically; Embedding reports into .NET applications | Lab E04A &#8211; Managing Report Content with Script | Lab E04B &#8211; Embedding Reports with the ReportViewer Control</li>
        </ul>
    
    <h3 class="accordionHeader">F. Self-Service Business Intelligence</h3>
        <h4>Module F01: Creating and Sharing Reports with Excel</h4>
        <ul>
            <li>Creating reports with Excel; Introducing Excel Services; Publishing Excel workbooks to SharePoint | Lab F01A &#8211; Analyzing and Reporting with Excel | Lab F01B &#8211; Working with Excel Services</li>
        </ul>
        <h4>Module F02: Working with PowerPivot</h4>
        <ul>
            <li>Introducing PowerPivot; Creating PowerPivot data models; Creating PowerPivot reports; Introducing DAX; Working with PowerPivot in SharePoint | Lab F02A &#8211; Creating a PowerPivot Workbook | Lab F02B &#8211; Creating a Report Based on a PowerPivot Workbook | Lab F02C &#8211; Working with PowerPivot in SharePoint</li>
        </ul>

    <h3 class="special">DAY 5</h3>
        <h4>Module F03: Working with Visio Services</h4>
        <ul>
            <li>Introducing Visio Services in SharePoint | Lab F03A &#8211; Creating and Publishing a Data-Driven Process Diagram</li>
        </ul>
        <h4>Module F04: Creating SharePoint Dashboards</h4>
        <ul>
            <li>Reviewing dashboard fundamentals; Introducing the SharePoint BI web parts | Lab F04A &#8211; Creating a SharePoint Dashboard</li>
        </ul>
        <h4>Module F05: Creating PerformancePoint Services Dashboards</h4>
        <ul>
            <li>Introducing PerformancePoint Services (PPS); Building scorecards; Defining PPS elements | Lab F05A &#8211; Creating PerformancePoint KPIs and a Scorecard | Lab F05B &#8211; Creating PerformancePoint Reports and a Dashboard</li>
        </ul>
        <h4>Module F06: Working with Power View</h4>
        <ul>
            <li>Introducing Power View; Optimizing a tabular BI Semantic Model for Power View | Lab F06A &#8211; Optimizing a Tabular BI Semantic Model for Power View | Lab F06B &#8211; Working with Power View</li>
        </ul>

    <h2>Location Details</h2>
    <table class="outline" width="100%">
        <tr>
            <th scope="row">Melbourne</th>
            <td>TBC</td>
        </tr>
        <tr>
            <th scope="row">Sydney</th>
            <td>SSW Offices | <a class="directions" href="/ssw/Company/Directions/NeutralBay/">Directions</a></td>
        </tr>
    </table>

    <h2>Other SolidQ Courses</h2>
    <ul>
        <li><a href="Optimization-Performance.aspx">Optimization/Performance Tuning and Troubleshooting</a></li>
        <li><a href="SQL-Server-2012-Integration-Services.aspx">Accelerated SQL Server 2012 Integration Services</a></li>
        <li><a href="TSQL-Fundamentals.aspx">T-SQL Fundamentals</a></li>
    </ul>

</asp:Content>