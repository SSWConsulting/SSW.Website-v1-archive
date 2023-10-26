<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Advanced T-SQL, Programming and Tuning for SQL Server 2005, 2008 and 2012" %>
<%--Do not change the title - we know it's long, but for SEO purposes--%>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <h1>Advanced T-SQL, Programming and Tuning for SQL Server 2005, 2008 and 2012</h1>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div id="eventsummary">
        <ul class="vitals conferenceprice">
            <li><br />Start date
                <ul>
                    <li>To be confirmed</li>
                </ul>
            </li>
            <li><br />Duration
                <ul>
                    <li>5 days</li>
                </ul>
            </li>
            <li style="width:130px;">Early bird price<br />
                Expires 3 weeks before course starts 
                <ul>
                    <li style="width:130px;">$2,765 + GST</li>
                </ul>
            </li>
            <li style="width:130px;"><br />Regular price
                <ul>
                    <li style="width:130px;">$3,250 + GST</li>
                </ul>
            </li>
        </ul>
        <ul class="schedule conference">
            <li class="flag">
                <strong><img src="/ssw/events/images/flag_australia.png" style="float: left; margin-right: 10px;"
                    title="Sydney" /><a data-content="Gateway Court, Suite 13, 81-91 Military Road, Neutral Bay, NSW, 2089" rel="popover" class="bootstrap-tooltip" data-original-title="SSW Training Facilities" href="#">Sydney</a><br /></strong>
                    <ul>
                        <li style="width: 100px;"><a href="/ssw/Shop/BasketInsert.aspx?ProductID=ATSQLI"><span>
                            Book Now</span></a>

                        </li>
                    </ul>
            </li>
        </ul>
    </div>

    <h2>Description<br></h2>
    <p>The course focuses on writing and <strong>tuning queries</strong> and programming with T-SQL in SQL Server 2005, 2008 and 2012. 
        Along the course, you will learn how to <strong>use T-SQL to solve practical problems.</strong></p>

<p>You will learn <strong>how to tune your queries</strong>, how to develop efficient routines including user defined functions, stored procedures and triggers, 
    work in multi-user environments with transactions and isolation levels, and use dynamic SQL securely and efficiently.</p>
    
<p>You will also learn <strong>how to maintain and query hierarchical data</strong>. 
    Moreover, query tuning is in the heart of this course and is incorporated in the different modules throughout the course. 
    With each querying/programming problem the discussions will revolve around logical aspects, set-based vs. procedural programming and optimization of the solutions.
</p>
    
    <p><strong>Language:</strong> English</p>


<h2>Early Bird Discount:</h2>
    <p><strong>2765 AUD + GST - discount expires 3 weeks before course start</strong></p>

    <p><strong>Interstate early birds:</strong> If you are from Melbourne or Brisbane and want to attend, we will fly you to Sydney for <strong>free</strong>. 
        You will be responsible for your own accommodation. </p>
 


    <h2>Audience</h2>
<p>This course is intended for:</p>
<ul>
<li>T-SQL programmers, DBAs, Architects and Analysts</li>
<li>Those that need to write or review T-SQL code in SQL Server 2005, 2008, and 2012</li>
</ul>

    <h2>Prerequisites</h2>
<p>Before attending this course, it is recommended that students have the following skills:</p>
<ul>
    <li>At least one year of T-SQL querying and programming experience in SQL Server</li>
</ul>

    <h2>Course Objectives</h2>
    <p>Upon completion of this course, the student will:</p>
    <ul>
        <li>Understand logical query processing</li>
        <li>Understand SQL Server’s internal data structures</li>
        <li>Be able to analyze and tune query performance</li>
        <li>Be able to analyze query execution plans</li>
        <li>Be able to solve complex querying and programming problems</li>
        <li>Think in terms of sets</li>
        <li>Be able to compare set based and cursor based solutions</li>
        <li>Use window functions to improve solutions</li>
        <li>Handle date and time data including intervals</li>
        <li>Describe performance problems related to use of user defined functions and possible workarounds</li>
        <li>Understand execution plan caching and reuse</li>
        <li>Understand transactions and concurrency aspects of database programming</li>
        <li>Know how to handle hierarchical data and write recursive queries</li>
        <li>Describe T-SQL enhancements in SQL Server 2008 and 2012</li>
    </ul>

    <h2>Course Outline</h2>  
    <h3>Module 01: Logical Query Processing</h3>  
    <ul> 
        <li>Logical Query Processing Order </li>
        <li>Logical Query Processing Example </li>
        <li>Phase Details </li>
        <li>Set Operations </li>
    </ul>

    <h3>Module 02: Query Tuning</h3>
    <ul>
        <li>Internals and Index Tuning</li>
        <li>Temporary Tables </li>
        <li>Sets vs. Cursors</li>
        <li>Query Tuning with Query Revisions </li>
    </ul>

    <h3>Module 03: Multi-Table Queries, Ranking and Offset Functions </h3>
    <ul>
        <li>Subqueries and Table Expressions </li>
        <li>Window Ranking and Offset Functions </li>
        <li>Joins </li>
        <li>Set Operators</li> 
    </ul>
    <blockquote><strong>LAB 03A</strong></blockquote>

    <h3>Module 04: Aggregating and Pivoting Data</h3>	  
    <ul>
        <li>Window Aggregate Functions</li>
        <li>Pivoting and Unpivoting Data </li>
        <li>Custom Aggregations </li>
        <li>Grouping Sets</li> 
    </ul>
    <blockquote><strong>LAB 04A</strong></blockquote>

    <h3>Module 05: TOP, OFFSET-FETCH and APPLY </h3>
    <ul>
        <li>TOP and OFFSET-FETCH</li>
        <li>APPLY</li>
    </ul>
    <blockquote><strong>LAB 05A</strong></blockquote>
 
    <h3>Module 06: Data Modification  </h3>
    <ul>
        <li>Inserting Data </li>
        <li>Sequences </li>
        <li>Deleting Data </li>
        <li>Updating Data </li>
        <li>Merging Data</li>
        <li>The OUTPUT Clause</li>
    </ul>
    <blockquote><strong>LAB 06A</strong></blockquote>


    <h3>Module 07: Working with Date and Time </h3>
    <ul>
        <li>Date and Time Datatypes</li>
        <li>Date and Time Functions </li>
        <li>Date and Time Challenges</li>
        <li>Date and Time Querying Problems </li>
    </ul>
    <blockquote><strong>LAB 07A</strong></blockquote>

    <h3>Module 08: Programmable Objects  </h3>
    <ul>
        <li>Dynamic SQL </li>
        <li>Views and Inline Table Functions </li>
        <li>User Defined Functions</li>
        <li>Stored Procedures</li>
        <li>Triggers </li>
        <li>Transactions and Concurrency</li>
        <li>Exception Handling</li>
    </ul>
    <blockquote><strong>LAB 08A</strong></blockquote>

    <h3>Module 09: Graphs, Trees and Hierarchies  </h3>
    <ul>
        <li>Graphs, Described </li>
        <li>Materialized Paths</li>
            <ul>
                <li>Custom</li>
                <li>Using the HIERARCHYID datatype</li>
            </ul>
        <li>Nested Sets</li>
        <li>Nested Iterations</li>
            <ul>
                <li>Loops</li>
                <li>Recursive Queries</li>
            </ul>
    </ul>
    <blockquote><strong>LAB 09A</strong></blockquote>
 


    <h2>Location Details</h2>
    <table class="outline" width="100%">

        <tr>
            <th scope="row">
                <a data-content="Gateway Court, Suite 13, 81-91 Military Road, Neutral Bay, NSW, 2089" rel="popover" class="bootstrap-tooltip" data-original-title="SSW Training Facilities" href="#">Sydney</a>
            </th>
            <td>
                Mentor <a>
                    Itzik Ben-Gan</a>
            </td>
        </tr>
    </table>

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="section">
        <h3>
            About the presenter</h3>
            <p><img src="Images/training_ben-gan.png" class="thumbnail" />

            <strong>Itzik Ben-Gan</strong> is a Mentor and Co-Founder of SolidQ. A SQL Server Microsoft MVP (Most Valuable Professional) since 1999, Itzik has delivered numerous training events around the world focused on T-SQL Querying, Query Tuning and Programming. Itzik is the author of several books including Microsoft SQL Server 2012 T-SQL Fundamentals and Microsoft SQL Server 2012 High-Performance T-SQL Using Window Functions. He has written many articles for SQL Server Pro as well as articles and whitepapers for MSDN. Itzik's speaking activities include TechEd, DevWeek, SQLPASS, SQL Server Magazine Connections, various user groups around the world, and SolidQ's events to name a few. Itzik is the author of SolidQ's Advanced T-SQL Querying, Programming and Tuning and T-SQL Fundamentals courses along with being a primary resource within the company for their T-SQL related activities.</p>    </div>
</asp:Content>