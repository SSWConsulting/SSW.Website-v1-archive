<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="SolidQ - Optimization/Performance Tuning and Troubleshooting" %>
<%--Do not change the title - we know it's long, but for SEO purposes--%>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <h1>SolidQ - Optimization/Performance Tuning and Troubleshooting</h1>
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
                <strong><img src="/ssw/events/images/flag_australia.png" style="float: left; margin-right: 10px;"
                    title="Sydney" /><a data-content="Gateway Court, Suite 13, 81-91 Military Road, Neutral Bay, NSW, 2089" rel="popover" class="bootstrap-tooltip" data-original-title="SSW Training Facilities" href="#">Sydney</a><br /><span>Email to enquire</span></strong>
                    <ul>
                        <li style="width: 100px;"><a href="mailto:info@ssw.com.au?subject=SolidQ%20Optimization%20and%20Performance%20course"><span>
                            info@ssw.com.au</span></a>
                        </li>
                    </ul>
            </li>
        </ul>
    </div>

    <h2>Description</h2>
    <p>This five day intensive course is designed to give attendees a broad look at the performance tuning concepts and methods found in SQL Server 2005 and SQL Server 2008. This course is designed to prepare the SQL Server DBA for a transition to SQL Server 2005 or SQL Server 2008 while discussing best practices for a variety of performance topics that SQL Server DBAs will face in their day-to-day job functions.</p>
        
    <h2>Target Audience</h2>
    <p>This course is intended for:</p>
    <ul>
        <li>SQL Server administrators who are responsible for the performance of their database servers and installations</li>
        <li>SQL Server developers who are responsible for developing SQL Server queries and stored procedures</li>
    </ul>

    <h2>Prerequisites</h2>
    <p>Before attending this course, it is recommended that students have the following skills:</p>
    <ul>
        <li>Experience with SQL Server</li>
        <li>Understanding of database concepts </li>
        <li>Experience with SQL Server administration </li>
        <li>Experience with Transact-SQL programming </li>
        <li>Knowledge of SQL Server Performance Tuning concepts</li>    
    </ul>

    <h2>Course Objectives</h2>
    <p>This course has been designed with the objective of providing a classroom setting in which the attendee not only learns the topic concepts listed in the course outline, they have an opportunity to learn common SQL Server performance tuning best practices and knowledge gained from the experiences of the instructor.</p>

    <h2>Course Summary Outline</h2>
    <h3 class="accordionHeader">Module 01:  Introduction to SQL Server architecture </h3>
        <h3>Module 01: Introduction to SQL Server architecture </h3>
        <ul>
            <li>Architecture</li>
            <li>SQLOS
                <ul>
                    <li>Query Processor architecture</li>
                </ul>
            </li>
        </ul>

        <h3>Module 02: SQL Server CPU</h3>
        <ul>
            <li>Architecture of the CPU subsystem
                <ul>
                    <li>NUMA</li>
                    <li>Hyperthreading</li>
                    <li>L2 cache and SQL 2012</li>
                </ul>
            </li>

            <li>SQL Server configurations affecting CPU usage
                <ul>
                    <li>Affinity mask</li>
                    <li>Parallelism</li>
                </ul>
            </li>

            <li>Monitoring SQL Server CPU
                <ul>
                    <li>Monitoring and thresholds</li>
                    <li>Tuning methodology</li>
                </ul>
            </li>
        </ul>

        <h3>Module 03: Introduction of SQL Server memory architecture</h3>
        <ul>
            <li>Memory architecture</li>
            <li>Memory pools</li>
            <li>SQL Server configurations affecting memory usage
                <ul>
                    <li>AWE</li>
                    <li>MIN/MAX</li>
                    <li>Dynamic memory</li>
                </ul>
            </li>
            <li>Performance monitoring and tuning SQL Server memory
                <ul>
                    <li>Monitoring and thresholds</li>
                    <li>Tuning methodology</li>
                </ul>
            </li>
        </ul>

        <h3>Module 04:  Physical Storage</h3>
        <ul>
            <li>Introduction to disk subsystem terminology and architecture</li>   
            <li>Disk subsystem RAID levels</li>
            <li>Virtualization of SQL Server</li>
        </ul>

        <h3>Module 05:  SQL Server files and filegroups</h3>
        <ul>
            <li>Files and their usage</li>   
            <li>Filegroups and their usage</li>
            <li>Monitoring file activity and size</li>
        </ul>

        <h3>Module 06:  Physical Architecture of Databases</h3>
        <ul>
            <li>Database architecture
                <ul>
                    <li>Storage internals</li>
                </ul>
            </li>
        </ul>

        <h3>Module 07: Transaction log and tempdb</h3>
        <ul>
            <li>Working with SQL Server transaction log
                <ul>
                    <li>Transaction log architecture</li>
                    <li>Transaction log configuration (recovery models)</li>
                </ul>
            </li>
            <li>Working with SQL Server tempdb
                <ul>
                    <li>Configuration of tempdb</li>
                    <li>Monitoring tempdb</li>
                </ul>
            </li>
        </ul>

        <h3>Module 08:  Performance monitoring and tuning the SQL Server disk subsystem</h3>
        <ul>
            <li>Monitoring and thresholds</li>   
            <li>Tuning methodology</li>
        </ul>

        <h3>Module 09:  Introduction to SQL Server performance tuning tools</h3>
        <ul>
            <li>PerformanceStudio</li>
            <li>Profiler</li>
            <li>Sysmon</li>
            <li>DMVs and DMFs</li>
            <li>SQLDiag</li>
            <li>Trace Flags</li>
            <li>Error Logs</li>
            <li>Third Party Tools</li>
        </ul>

        <h3>Module 10:  SQL Server locking </h3>
        <ul>
            <li>Locks and latches
                <ul>
                    <li>Locking architecture</li>
                    <li>Locking basics</li>
                </ul>
            </li>
            <li>Monitoring
                <ul>
                    <li>Waits and Queues</li>
                    <li>Locking metadata</li>
                </ul>
            </li>
        </ul>

        <h3>Module 11: SQL Server concurrency</h3>
        <ul>
            <li>Blocking</li>
            <li>Deadlocks</li>
            <li>Isolation levels</li>
        </ul>

        <h3>Module 12: Data types</h3>
        <ul>
            <li>Native</li>
            <li>SQL CLR</li>
        </ul>

        <h3>Module 13: Uniderstanding statistics</h3>
        <ul>
            <li>Basics
                <ul>
                    <li>density</li>
                    <li>cardinality</li>
                    <li>selectivity</li>
                    <li>granularity</li>
                </ul>
            </li>
            <li>Showing</li>
            <li>Multicolumns statistics</li>
        </ul>

        <h3>Module 14:  SQL Server Indexing and index maintenance</h3>
        <ul>
            <li>Index basics</li>
            <li>Special indexes
                <ul>
                    <li>Columnstore</li>
                    <li>Xml</li>
                    <li>Spatial </li>
                    <li>FTS</li>
                    <li>Hierarchyid</li>
                </ul>
            </li>
            <li>Fragmentation</li>
            <li>Correcting fragmentation issues</li>
        </ul>

        <h3>Module 15:  Understanding SQL Server Execution Plans</h3>
        <ul>
            <li>Reading SQL Server execution plans</li>
        </ul>

        <h3>Module 16:  Review of common query coding which causes poor performance</h3>

        <h3>Module 17:  Plan Guides, query hints, UDFs, and Computed Columns</h3>
        <ul>
            <li>What are plan guides and how do you create them</li>
            <li>What are query hints and why they are used</li>
            <li>What are UDFs and do they cause performance issues</li>
            <li>What are computed columns</li>
        </ul>

        <h3>Module 18:  SQL Server partitioning (database and table)</h3>
        <ul>
            <li>Why partition at the database level or table level</li>
            <li>Creating table partitions</li>
            <li>Working with table partitions</li>
            <li>Monitoring table partitions</li>
            <li>Optimizing data loading using partitioning</li>
        </ul>

        <h3>Module 19: Optimizing data loading</h3>
        <ul>
            <li>Recovery modeling</li>
            <li>Trace flags</li>
            <li>Optimizing data loading using partitioning</li>
        </ul>

        <h3>Module 20:  SQL Server database maintenance</h3>
        <ul>
            <li>Database consistency checks</li>
            <li>Physical defragmentation</li>
        </ul>

    <h2>Location Details</h2>
    <table class="outline" width="100%">
        <%--<tr>
            <th scope="row">
                <a data-content="Level 8, 500 Collins Street, Melbourne  VIC   3000" rel="popover" class="bootstrap-tooltip" data-original-title="Saxons Training Facilities" href="#">Melbourne</a>
            </th>
            <td>
                Mentor <a href="http://www.solidq.com/squ/pages/trainer.aspx?name=Francisco+A+Gonz%C3%A1lez+D%C3%ADaz">
                    Francisco A Gonz&aacute;lez D&iacute;az</a>
            </td>
        </tr>--%>
<%--        <tr>
            <th scope="row">
                <a data-content="Level 11, 300 Adelaide Street, Brisbane   QLD   4000" rel="popover" class="bootstrap-tooltip" data-original-title="Saxons Training Facilities" href="#">Brisbane</a>
            </th>
            <td>
                Mentor <a href="http://www.solidq.com/squ/pages/trainer.aspx?name=Francisco+A+Gonz%C3%A1lez+D%C3%ADaz">
                    Francisco A Gonz&aacute;lez D&iacute;az</a>
            </td>
        </tr>--%>
        <tr>
            <th scope="row">
                <a data-content="Gateway Court, Suite 13, 81-91 Military Road, Neutral Bay, NSW, 2089" rel="popover" class="bootstrap-tooltip" data-original-title="SSW Training Facilities" href="#">Sydney</a>
            </th>
            <td>
                Mentor <a>
                    Francisco A Gonz&aacute;lez D&iacute;az</a>
            </td>
        </tr>
    </table>

    <h2>Other SolidQ Courses</h2>
    <ul>
        <li><a href="BI-Immersion.aspx">BI Immersion</a></li>
        <li><a href="SQL-Server-2012-Integration-Services.aspx">Accelerated SQL Server 2012 Integration Services</a></li>
        <li><a href="TSQL-Fundamentals.aspx">T-SQL Fundamentals</a></li>
    </ul>

</asp:Content>