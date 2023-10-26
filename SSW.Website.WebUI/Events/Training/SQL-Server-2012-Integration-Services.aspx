<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="SolidQ - Accelerated SQL Server 2012 Integration Services" %>
<%--Do not change the title - we know it's long, but for SEO purposes--%>

<asp:Content ContentPlaceHolderID="title" runat="server">
        <h1>SolidQ - Accelerated SQL Server 2012 Integration Services</h1>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div id="eventsummary">
        <ul class="vitals conferenceprice">
            <li>Duration
                <ul>
                    <li>4 Days</li>
                </ul>
            </li>
            <li>Price
                <ul>
                    <li style="width:190px;">AU $2,800 + GST*</li>
                </ul>
            </li>
        </ul>
        <ul class="schedule conference">
            <li class="flag">
                <strong>
                <img src="/ssw/events/images/flag_NewZealand.png" style="float: left; margin-right: 10px;"
                    title="Auckland" /><%--<a data-content="Gateway Court, Suite 13, 81-91 Military Road, Neutral Bay, NSW, 2089" rel="popover" class="bootstrap-tooltip" data-original-title="SSW Training Facilities" href="#">--%>Auckland</a><br /><span>Ended</span></strong>
                    <ul>
                            <li style="width: 100px;">
                                <a href="mailto:info@ssw.com.au?subject=SolidQ%20Accelerated%20SQL%20Server%202012%20course"><span>
                            info@ssw.com.au</span></a>

                        </li>
                    </ul>
            </li>
        </ul>
    </div>
    <p><strong>*NOTE: There is no GST charged for New Zealand businesses</strong></p>

    <h2>Description</h2>
    <p>This 4-day instructor led training focuses on developing and managing SSIS 2012 in the enterprise. In this course, you will understand how to design, develop, deploy, and operate SSIS extraction, transformation, and loading (ETL) solutions from source systems extractions, data integration, SSIS server administration and package execution.</p>
        
    <h2>Target Audience</h2>
    <p>This course is intended for database professionals that are responsible for ETL or DBA activities related to data processing, data architecture planning, or SSIS administration.</p>
    <p>The target audience for this session is IT professionals, DBAs and developers who want to learn the details of how to use SSIS to accomplish data integration, data warehouse loading, and how to administer SSIS through the development lifecycle to production.</p>

    <h2>Prerequisites</h2>
    <p>Before attending this course, it is recommended that students have the following skills:</p>
    <ul>
        <li>This course is targeted at database professionals and developers with some experience in business intelligence solutions and SQL Server. This workshop requires no prior experience with SQL Server SSIS</li>    
    </ul>

    <h2>Course Objectives</h2>
    <p>Upon completion of this course, the student will be able to:</p>
    <ul>
        <li>Create and develop new SSIS projects and packages</li>
        <li>Determine when to use project mode versus </li>
        <li>Apply SSIS to file and data management</li>
        <li>Understand and Apply ETL Concepts in SSIS including dimensions and fact table ETL and loading SSAS dimension and cubes</li>
        <li>Administer SSIS for server deployment and production execution</li>
    </ul>

    <h2>Course Summary Outline</h2>
    <h3 class="special">DAY 1</h3>
    <h2>Section A:  SSIS Overview and Core Features</h2>
        <h3>Module A-Overview: Course Introduction, Integration Services in SQL Server 2012 Features, Design Environment Overview</h3>
        <ul>
            <li>SQL Server 2012 installation and tools, SSIS features and architecture, the role of SSIS for the DBA, Working with and Deploying SSIS Projects, Properties windows and viewers, Data Sources, Data Source Views, Project Connections, Package variables and Project Parameters | Lab A-Overview:  Creating and Deploying an SSIS Project and Package</li>
        </ul>

        <h3>Module A-Control Flow:  SSIS Control Flow Objects and Features</h3>
        <ul>
            <li>Control Flow Task review, Execute SQL Task and Parameters, Sequence Container, Looping Containers, Standard and Expression based Constraints | Lab A-Control Flow:  Workflow Management in the Control Flow</li>
        </ul>

        <h3>Module A-Data Flow:  Applying Data Flow Transformations and Adapters</h3>
        <ul>
            <li>Data Flow source and destination adapters, Data expressions and conversion transformations, Data association and correlation transformations (IE: Lookup, Merge), Data Paths and Data Viewers | Lab A-Data Flow:  Working with Data in the Data Flow</li>
        </ul>

    <h3 class="special">DAY 2</h3>
    <h2>Section B:  Applying SSIS to Common Operations</h2>
        <h3>Module B-File Management:  Working with and Importing Files</h3>
        <ul>
            <li>Drilling into File manipulation components: FTP Task, XML Task, Bulk Insert Task, File System Task, For Each Loop Container | Lab B-File:  Building an FTP Solution</li>
        </ul>

        <h3>Module B-Extraction:  Data Source Extraction and Destination Optimization</h3>
        <ul>
            <li>Source Adapters, Data extraction practices, Destination Adapters, Data loading optimization | Lab B-Ext:  Data Sources and Destinations</li>
        </ul>

        <h3>Module B-Data Cleansing:  Data Quality and Cleansing</h3>
        <ul>
            <li>Using the Data Profile Task, Working with Data Quality Services, Applying the Fuzzy Lookup and Fuzzy Grouping transformations, Parsing words from text columns | Lab B-Data:  Data Quality and Cleansing</li>
        </ul>

        <h3>Module B-Event:  Notifications, Windows Management Instrumentation, Event Handlers and File watching</h3>
        <ul>
            <li>Leveraging the Send Mail Task, Introduction to WMI, Installing the custom file watcher component | Lab B-Event:  Notifications, WMI, and Event Handlers</li>
        </ul>
    
    <h3 class="special">DAY 3</h3>
    <h2>Section C:  Applying SSIS in BI and Data Warehouse Solutions</h2>
        <h3>Module C-Dim:  Dimension ETL with SSIS</h3>
        <ul>
            <li>Slowly Changing Dimension types and theory, Using the SCD wizard, Drilling into the SCD transformations, Customizing the SCD, Alternate SCD approaches, Inferred Members, Handling Snowflake and Parent-Child Hierarchies | LAB C-Dim:  Dimension Table ETL</li>
        </ul>

        <h3>Module C-Fact:  Fact Table ETL with SSIS</h3>
        <ul>
            <li>Fact types and theory, Aspects of the fact table processing, Dimension lookups with the Lookup transformation, Missing Dimension Members, Measures and Calculations, Handling fact inserts and updates, Changing data grain, Processing Analysis Services Measure Group Partitions | LAB C-Fact:  Fact Table ETL</li>
        </ul>

        <h3>Module C-SSAS Multi-Dimensional:  Processing Tabular and Multi-Dimensional SSAS Objects in SSIS</h3>
        <ul>
            <li>Analysis Services processing types, Analysis Services Processing Task and Execute DDL Task, Dynamically creating and processing partitions, ASCMD command line and AMO API usage | LAB C-SSAS:  Analysis Services Processing</li>
        </ul>

    <h3 class="accordionHeader">Section D:  Package Administration and Management</h3>
        <h3>Module D-Package Mode:  Legacy Package Deployment Mode and Logging</h3>
        <ul>
            <li>Planning your package configuration environment, SSIS Configuration types, Legacy Package Deployment Extending SSIS, Package Mode Logging, Executing and scheduling packages in Package Deployment Mode | Lab D-Package Mode:  SSIS Package Mode Logging and Configurations</li>
        </ul>

        <h3>Module D-Project Mode:  Project Deployment Mode and Server Reporting</h3>
        <ul>
            <li>Planning your SSIS server environment, Using the SSIS Server Logging, Executing Packages and Solutions in the SSIS Server, Executing Packages with SQL Agent,  SSIS Environments | Lab D-Server:  SSIS Project Mode Deployments</li>
        </ul>

        <h3>Module D-Dynamic Properties:  Project Parameters, Variables and Expressions</h3>
        <ul>
            <li>Planning your project environment, Variables and Dynamic Property Expressions, SSIS Server Reporting and Logging, Extending SSIS auditing with Event Handlers | Lab D-Admin:  SSIS Logging and Configurations</li>
        </ul>

    <h3 class="special">DAY 4</h3>
        <h3>Module D-Transactions and Security:  Understanding SSIS Transaction, Restartability, and Security</h3>
        <ul>
            <li>Built-in checkpoints, Managing RDBMS transactions, Rollback considerations, Integrating Checkpoints with Transactions | Lab D-Tran:  Using Transactions and Checkpoints</li>
        </ul>
    
    <h3 class="accordionHeader">Section E:  Optimization and Team Development</h3>
        <h3>Module E-Optimization:  Optimizing and Scaling SSIS Projects</h3>
        <ul>
            <li>Identifying package bottlenecks, Understanding the SSIS data flow architecture, Pipeline logging, Debugging Task with Breakpoints, SSIS Performance Monitor counters and tracking | Lab E-Scale:  Troubleshooting and Optimizing an SSIS Package</li>
        </ul>
    
        <h3>Module E-Team: Enterprise Development and Scaling</h3>
        <ul>
            <li>Working in a team environment, Enterprise solution considerations, Hardware planning, Partition Table management</li>
        </ul>
    
    <h2>Location Details</h2>
    <table class="outline" width="100%">
        <tr>
            <th scope="row">
                <p><%--<a data-content="Level 11, 300 Adelaide Street, Brisbane   QLD   4000" rel="popover" class="bootstrap-tooltip" data-original-title="Saxons Training Facilities" href="#">--%>Auckland</a></p>
            </th>
            <td>
                Mentor <a>
                    Paco Gonzalez</a>
            </td>
        </tr>
    </table>
    
    <h2>Other SolidQ Courses</h2>
    <ul>
        <li><a href="BI-Bootcamp.aspx">BI Immersion</a></li>
        <li><a href="Data-Mining-Seminar.aspx">Date Mining Seminar</a></li>
        <li><a href="SSIS-Seminar.aspx">SSIS Seminar</a></li>
    </ul>
       
</asp:Content>
