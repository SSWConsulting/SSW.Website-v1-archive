<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="Microsoft BI Bootcamp: SQL Server 2008 R2 and Office 2010 - Presented by SSW and SolidQ" %>

<%--Do not change the title - we know it's long, but for SEO purposes--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>Microsoft BI Bootcamp: SQL Server 2008 R2 and Office 2010</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <%--<div id="eventsummary">

        <ul class="vitals conferenceprice">
            <li>Duration
                <ul>
                    <li>5 days</li>
                </ul>
            </li>
            <li>Price
                <ul>
                    <li style="width: 500px">$3,500 + GST<br />
                        Promotional Price:  $3,150 + GST by 15 October</li>
                </ul>
            </li>
        </ul>
        <ul class="schedule conference">
            <li class="flag">
                <strong>
                    <img src="/ssw/events/images/flag_australia.png" style="float: left; margin-right: 10px;"
                        title="Melbourne" />Melbourne<br />
                    <span>TBA</span></strong>
                <ul>
                    <li style="width: 100px;">
                        <a href="/ssw/Shop/BasketInsert.aspx?ProductID=SQBIBM"><span>Book Now</span></a>
                    </li>
                </ul>
            </li>

            <li class="flag">
                <strong>
                <img src="/ssw/events/images/flag_australia.png" style="float: left; margin-right: 10px;"
                    title="Sydney" /><a data-content="Gateway Court, Suite 13, 81-91 Military Road, Neutral Bay, NSW, 2089" rel="popover" class="bootstrap-tooltip" data-original-title="SSW Training Facilities" href="#">Sydney</a><br /><span>30th July - 3rd Aug</span></strong>
                <ul>
                    <li style="width: 100px;">
                        <a href="/ssw/Shop/BasketInsert.aspx?ProductID=MSBISY"><span>Book Now</span></a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>

    <h4>This course is also available to groups of 5 or more by appointment. Please <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175')" onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
        onmouseout="javascript:clearStatus(); return true;">contact us</a> if you are interested in booking this course on another date.</h4>--%>

    <h2>Description</h2>
    <br />
    <p>Written and presented by industry experts, this intensive five-day workshop gives professional developers the information and hands-on experience they need to deliver state-of-the-art, integrated reporting and analytics solutions using Microsoft Business Intelligence.</p>
    <p>Delivering the right information in the right format at the right time to all users in the organization&#8212;that is Microsoft&#8217;s Business Intelligence (BI) strategy and vision for enterprise information management. Microsoft&#8217;s integrated BI tools enable developers to create effective solutions that information workers use every day to find meaningful patterns in the vast sea of data they collect and to use that insight to quickly respond to changing business conditions.</p>
    <p>On completion of this workshop attendees will be able to position different types of Business Intelligence solutions, from enterprise data warehousing to data marts to real-time operational reporting and analytics. Attendees will learn how to design and build powerful integrated solutions that provide users with rich reporting, analysis, visualization and performance management capabilities by targeting operational data from an existing line-of-business application using the Microsoft Business Intelligence platform.</p>
    <p>Attendees will work through 32 practical hands-on labs to build a complete BI solution by the end of the workshop.</p>

    <h2>Audience</h2>
    <p>
        The presentations and labs have been designed specifically to give professional developers&#8212;those who work for an ISV, SI, or enterprise customer&#8212;the information they need to deliver integrated solutions on the Microsoft BI platform.This course is also relevant and useful for those interested to understand and evaluate Microsoft&#8217;s Business Intelligence offerings.
    </p>


    <h2>Prerequisites</h2>
    <p>The following skills and knowledge will help attendees have a positive experience in the workshop: </p>
    <ul>
        <li>Active development experience with C# and/or VB.NET</li>
        <li>Basic understanding of Excel, SQL and relational database concepts</li>
    </ul>
    <p>**Please Note:</p>
    <p>This workshop is designed for professional developers with little or no experience building BI solutions. If you already have extensive experience building solutions on the Microsoft BI platform, you may find portions of this workshop to be a review of material that you are already familiar with.</p>
    <p>The workshop focuses on a specific scenario: supplementing an existing line-of-business application with integrated reporting and analytics functionality using SQL Server, Excel, PowerPivot, ProClarity, and SharePoint (Excel Services and PerformancePoint Services). Other scenarios, such as developing custom reporting and analytic tools, or implementing enterprise data warehouses, are not covered in great detail.</p>
    <h2>Course Objectives</h2>
    <p>
        Through interactive presentations and concrete hands-on labs, attendees will learn:
    </p>
    <ul>
        <li>How to use Microsoft SQL Server 2008 R2 to build and manage data marts which provide a consolidated view of organizational data.</li>
        <li>How to use dimensional modeling techniques and Visio 2010 database modeling tools to create data models in SQL Server 2008 R2 for hosting consolidated BI information.</li>
        <li>How to build consolidated data marts using SQL Server 2008 R2 Integration Services to extract, transform, and load business-critical information into SQL Server 2008 R2 databases from disparate sources such as business applications and corporate databases.</li>
        <li>How to use SQL Server 2008 R2 Analysis Services to create a Unified Dimensional Model (cube) that simplifies analytical access to business-critical data, and how to publish and collaborate on findings using SQL Server 2008 R2 Reporting Services and SharePoint 2010 Excel Services.</li>
        <li>How to use SQL Server 2008 R2 Reporting Services to develop predefined and ad hoc relational reports that simplify access to business-critical information.</li>
        <li>How to use SQL Server 2008 R2 Analysis Services to create data mining models that explore, discover and predict patterns in a data.</li>
        <li>How to use PowerPivot to load and prepare disparate data sources, and produce rich and responsive reports.</li>
        <li>How to share PowerPivot reports in SharePoint 2010.</li>
        <li>How to use SharePoint 2010 PerformancePoint Services to provide integrated performance management solutions with scorecard and analysis functionality.</li>
        <li>How to build custom dashboards in SharePoint 2010 that expose business-critical information in compelling ways.</li>
        <li>How to use ProClarity Desktop Professional for advanced data analysis and visualization.</li>
    </ul>



    <h2>Course Outline</h2>

    <h3 class="accordionHeading">Section A: Introduction to Microsoft Business Intelligence</h3>
    <ul>
        <li>Module A01: Introducing Microsoft Business IntelligenceDefining Business Intelligence (BI)Introducing the Microsoft BI PlatformIntroducing the BI Developer&#8217;s ToolsetIntroducing Adventure Works</li>
    </ul>

    <h3 class="accordionHeading">Section B: Data Warehouse Design and ETL with Integration Services</h3>
    <ul>
        <li>Module B01: Introducing Dimensional Modeling TechniquesDesigning the Dimensional ModelIntroducing Additional Design Concepts Lab B01A - Exploring the Data Warehouse Schema with Visio</li>
        <li>Module B02: Designing ETL Solutions with Integration ServicesReviewing ETL FundamentalsIntroducing IntegrationServices ComponentsDesigning ETL PackagesLab B02A - Developing Package Control FlowLab B02B - Developing Data Flow</li>
        <li>Module B03: Introducing Advanced Integration Services FeaturesAdvanced Data FlowManageability FeaturesProgrammabilityLab B03A - Using the Slowly Changing Dimension Component</li>
    </ul>
    <h3 class="accordionHeading">Section C: Cubes and Data Mining with Analysis Services;</h3>
    <ul>
        <li>Module C01: Developing Analysis Services Cubes and DimensionsReviewing OLAP FundamentalsUnderstanding Database ComponentsLab C01A - Creating a Basic CubeLab C01B - Configuring the Dimensions and Dimension UsageLab C01C - Enriching the Cube with Calculations and Actions </li>
        <li>Module C02: Processing and Deploying Analysis Services SolutionsPerformance Tuning; Programming Analysis ServicesLab C02A - Managing Dimension and Cube ProcessingLab C02B - Developing a Database Installer Package</li>
        <li>Module C03: Developing Analysis Services Data Mining Models Introducing Data MiningIntegration with SQL Server 2008 R2 ComponentsData Mining ProgrammabilityLab C03A - Developing and Querying Data Mining ModelsLab C03B - Integrating Data Mining with Integration Services</li>
    </ul>
    <h3 class="accordionHeading">Section D: Reporting Solutions with Reporting Services</h3>
    <ul>
        <li>Module D01: Introducing Reporting ServicesReporting Fundamentals; Introducing Reporting Services</li>
        <li>Module D02: Authoring Reporting Services ReportsBasic Report Design; Introducing Report InteractivityExtending Reports with Custom Logic; Introducing Report Builder 3.0Lab D02A - Authoring Reports Based on Relational Databases, Part 1Lab D02B - Authoring Reports Based on Relational Databases, Part 2Lab D02C - Authoring Reports Based on CubesLab D02D - Authoring Reports Based on Data Mining Models</li>
        <li>Module D03: Delivering Ad Hoc Reporting With Report Builder 1.0Developing Report Models; Introducing Report Builder 1.0Creating Reports with Report Builder 1.0Lab D03A - Developing a Report ModelLab D03B - Authoring Reports Based on Report Models</li>
        <li>Module D04: Managing and Delivering Reporting Services ReportsOptimizing Report ExecutionSecuring Report Server Items and DataDelivering Reports with SubscriptionsLab D04A - Managing and Delivering Reports</li>
        <li>Module D05: Programming Reporting ServicesAccessing Reports in Reporting ServicesAccessing Reports ProgrammaticallyEmbedding Reports into .NET ApplicationsLab D05A - Managing Report Content with ScriptLab D05B - Embedding Reports with the ReportViewer Control</li>
    </ul>

    <h3 class="accordionHeading">Section E: Self-Service Business Intelligence with Office and ProClarity</h3>
    <ul>
        <li>Module E01: Creating and Sharing Reports with ExcelCreating Reports in ExcelPublishing to Excel ServicesLab E01A - Analyzing and Reporting with ExcelLab E01B - Working with Excel Services</li>
        <li>Module E02: Working with PowerPivotIntroducing PowerPivotLoading Data into PowerPivotCreating PowerPivot ReportsIntroducing DAXWorking with PowerPivot in SharePointLab E02A &#8211; Creating a PowerPivot ModelLab E02B &#8211; Creating Reports Based on a PowerPivot ModelLab E02C - Enriching a PowerPivot Model with Calculations Lab E02D - Working with PowerPivot in SharePoint</li>
        <li>Module E03: Creating SharePoint DashboardsReviewing Dashboard FundamentalsIntroducing the SharePoint BI FeaturesLab E03A - Creating a SharePoint Dashboard</li>
        <li>Module E04: Advanced Cube Analysis with ProClarity Desktop ProfessionalIntroducing PerformancePoint Services (PPS)Building ScorecardsDefining PPS ElementsLab E04A - Creating PerformancePoint KPIs and a ScorecardLab E04B - Creating PerformancePoint Reports and Dashboards</li>
    </ul>

    <h2>Technologies</h2>
    <p>The workshop will empower developers to exploit the BI functionality in the following technologies: </p>
    <ul>
        <li>SQL Server 2008 R2 Database </li>
        <li>ServicesSQL Server 2008 R2 Integration </li>
        <li>ServicesSQL Server 2008 R2 Reporting Services</li>
        <li>SQL Server 2008 R2 Analysis Services (OLAP and Data Mining)Office Visio 2010</li>
        <li>Office Excel 2010SharePoint 2010</li>
        <li>SharePoint 2010 Excel Services</li>
        <li>SharePoint 2010 PerformancePoint Services</li>
        <li>PowerPivot for Excel 2010</li>
        <li>PowerPivot for SharePoint 2010</li>
        <li>ProClarity Professional Desktop 6.3</li>
    </ul>

    <h2>Location Details</h2>
    <table class="outline" width="100%">
        <tr>
            <th scope="row">
                <a data-content="Level 8, 500 Collins Street, Melbourne  VIC   3000" rel="popover" class="bootstrap-tooltip" data-original-title="Saxons Training Facilities" href="#">Melbourne</a>
            </th>
            <td>Mentor <a>Paco Gonzalez</a>
            </td>
        </tr>

    </table>
    <h2>Course Materials</h2>
    <ul>
        <li>Download a PDF of this outline</li>
    </ul>
    <%--<h2>
        What You Need To Bring</h2>
    <ul>
        <li>A laptop (4GB of RAM, Windows XP or higher, 20GB of free disk space)</li>
        <li>A mouse</li>
        <li>If you do not have access to a laptop you can use for the course you can rent one
            from SSW for $75 a day. Please contact sales on +61 2 9953 3000 to arrange this.</li>
    </ul>--%>
    <h2>Related Links</h2>
    <ul>
        <li><a href="http://rules.ssw.com.au/Management/RulesToBetterScrumUsingTFS/Pages/default.aspx">SSW's Rules to Better Scrum with TFS</a></li>
        <li><a href="http://www.accentient.com/psd/">Accentient Scrum Developer Training</a></li>
        <li><a href="http://msdn.microsoft.com/en-us/vstudio/ff433643.aspx">Microsoft - Professional Scrum Developer Program</a></li>
        <li><a href="http://www.scrum.org/">Scrum.org</a></li>
        <li><a href="/ssw/Consulting/Consulting-options.aspx">Book a SSW Scrum Master for your project</a></li>
        <li><a href="https://rules.ssw.com.au/Documents/8StepstoScrum.pdf">SSW 8 Steps to Scrum PDF</a></li>
    </ul>

</asp:Content>