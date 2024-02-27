<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="SolidQ - T-SQL Fundamentals" %>
<%--Do not change the title - we know it's long, but for SEO purposes--%>
<asp:Content ContentPlaceHolderID="title" runat="server">
        <h1>SolidQ - T&#8208;SQL Fundamentals</h1>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
<div id="eventsummary">

        <ul class="vitals conferenceprice">
            <li>Duration
                <ul>
                    <li>4 days</li>
                </ul>
            </li>
         </ul>

    </div>

        <div class="greybox">
        <h2>You can book this course as a private training for your development Team. Call Marlon on 02 9953 3000 to find out pricing.</h2>
    </div>

    <h2>Description</h2>
    <p>This course is intended for T-SQL developers, DBAs and SQL Server power users who work with SQL Server and need to write queries and develop code using Transact-SQL&#8212;SQL Server&#8217;s dialect of the standard ANSI-SQL language. The course covers querying, including retrieving and modifying data, and also provides an overview of programmable objects supported by SQL Server.<br />
    This course is intended both for people who just started working with SQL Server, as well as for people with some experience (for example, developers who are not SQL-focused). Even if you are a more experienced SQL Server practitioner, if you are self-taught and gained your knowledge &#8220;by the seat of your pants&#8221; and are looking for more organized training to cover gaps and holes in your knowledge, this course is for you. This course doesn&#8217;t get into performance discussions and advanced problems* rather focuses on the logical aspects of T-SQL. Note though that it is not merely a step-by-step course. It doesn&#8217;t just focus on syntactical elements of T-SQL, rather explains the logic behind the language and its elements.</p>
    <p>There are many aspects of SQL that are unique to this language, and are very different than other programming languages. This course will help students adopt the right state of mind and get a true understanding of the language elements. Students will learn how to think in terms of sets and follow good SQL programming practices.<br />
    The course is not version specific; it does, however, cover language elements that were introduced in recent versions of SQL Server. Throughout the course the instructor will specify the version in which the elements were introduced.<br />
    The topics covered in the course include: Background to T-SQL Querying and Programming; Single-Table Queries; Joins; Subqueries; Table Expressions; Set Operations; Pivot, Unpivot and Grouping Sets; Data Modification; Transactions; Overview of Programmable Objects.</p>
    <p>To complement the learning experience, students will be provided with exercises that will enable them to practice what they&#8217;ve learned.</p>
    <p><strong>Note:</strong> If you are a very experienced T-SQL practitioner and are looking for an Advanced T-SQL course that dives deeply into the complexities of T-SQL Querying and Programming including deep coverage of query and index tuning, please see the course Advanced T-SQL Querying Programming and Tuning for SQL Server.</p>
        
    <h2>Target Audience</h2>
    <p>This course is intended for:</p>
    <ul>
        <li>SQL Server administrators who are responsible for the performance of their database servers and installations</li>
        <li>SQL Server developers who are responsible for developing SQL Server queries and stored procedures</li>
    </ul>

    <h2>Prerequisites</h2>
    <p>Before attending this course, it is recommended that students have the following skills:</p>
    <ul>
        <li>Familiarity with basic relational database concepts and SQL</li>    
    </ul>

    <h2>Course Objectives</h2>
    <p>Upon completion of this course, the student will be able to:</p>
    <ul>
        <li>Understand the logic behind T-SQL and thinking in terms of sets</li>
        <li>Write T-SQL code to create tables and define data integrity</li>
        <li>Write queries against single and multiple tables</li>
        <li>Write T-SQL statements that modify data</li>
        <li>Get familiar with T-SQL programmable objects</li>
    </ul>

    <h2>Course Summary Outline</h2>
    <h3 class="accordionHeader">Module 01: Background to T-SQL Querying and Programming</h3>
        <ul>
            <li>Theoretical Background 
                <ul>
                    <li>SQL</li>
                    <li>Set Theory</li>
                    <li>Predicate Logic</li>
                    <li>Relational Model</li>
                    <li>Data Life Cycle</li>
                </ul>
            </li>
            <li>SQL Server Architecture
                <ul>
                    <li>SQL Server Instances</li>
                    <li>Databases</li>
                    <li>Schemas and Objects</li>
                </ul>
            </li>
            <li>Creating Tables and Defining Data Integrity 
                <ul>
                    <li>Creating Tables</li>
                    <li>Defining Data Integrity</li>
                </ul>
            </li>
        </ul>

    <h3 class="accordionHeader">Module 02: Single-Table Queries</h3>
        <ul>
            <li>Elements of SELECT Statement 
                <ul>
                    <li>The FROM Clause</li>
                    <li>The WHERE Clause</li>
                    <li>The GROUP BY Clause</li>
                    <li>The HAVING Clause</li>
                    <li>The SELECT Clause</li>
                    <li>The ORDER BY Clause</li>
                    <li>The TOP Option</li>
                    <li>The OVER Clause</li>
                </ul>
            </li>
            <li>Predicates and Operators</li>
            <li>CASE Expressions </li>
            <li>NULLs</li>
            <li>All-At-Once Operations</li>
            <li>Working with Character Data 
                <ul>
                    <li>Data Types</li>
                    <li>Collation</li>
                    <li>Operators and Functions</li>
                    <li>LIKE Predicate</li>
                </ul>
            </li>
            <li>Working with Date and Time Data
                <ul>
                    <li>Date and Time Data Types</li>
                    <li>Literals</li>
                    <li>Working with Date and Time Separately</li>
                    <li>Filtering Date Ranges</li>
                    <li>Date and Time Functions</li>
                </ul>
            </li>
            <li>Querying Metadata 
                <ul>
                    <li>Catalog Views</li>
                    <li>Information Schema Views</li>
                    <li>System Stored Procedures and Functions<br />
                    LAB 02A</li>
                </ul>
            </li>
        </ul>

    <h3 class="accordionHeader">Module 03: Joins</h3>
        <ul>
            <li>Cross Joins 
                <ul>
                    <li>ANSI SQL-92 Syntax</li>
                    <li>ANSI SQL-89 Syntax</li>
                    <li>Self Cross Join</li>
                    <li>Producing Tables of Numbers</li>
                </ul>
            </li>
            <li>Inner Joins
                <ul>
                    <li>ANSI SQL-92 Syntax</li>
                    <li>ANSI SQL-89 Syntax</li>
                    <li>Inner Join Safety</li>
                </ul>    
            </li>
            <li>Further Join Examples
                <ul>
                    <li>Composite Join</li>
                    <li>Non-Equi Join</li>
                    <li>Multi-Table Joins</li>
                </ul>
            </li>
            <li>Outer Joins
                <ul>
                    <li>Fundamentals of Outer Joins</li>
                    <li>Beyond the Fundamentals of Outer Joins<br />
                    LAB 03A</li>
                </ul>
            </li>
        </ul>

    <h3 class="accordionHeader">Module 04: Subqueries</h3>
        <ul>
            <li>
                <ul>Self-Contained Subqueries
                    <li>Self-Contained Scalar Subquery Examples</li>
                    <li>Self-Contained Multi-Valued Subquery Examples</li>
                </ul>
            </li>
            <li>Correlated Subqueries
                <ul>
                    <li>EXISTS</li>
                </ul>
            </li>
            <li>Beyond the Fundamentals of Subqueries 
                <ul>
                    <li>Returning Previous or Next Values</li>
                    <li>Running Aggregates</li>
                    <li>Misbehaving Subqueries<br />
                    LAB 04A</li>
                </ul>
            </li>
        </ul>
    
    <h3 class="accordionHeader">Module 05: Table Expressions</h3>
        <ul>
            <li>Derived Tables
                <ul>
                    <li>Assigning Column Aliases</li>
                    <li>Using Arguments</li>
                    <li>Nesting</li>
                    <li>Multiple References</li>
                </ul>
            </li>
            <li>Common Table Expressions
                <ul>
                    <li>Assigning Column Aliases</li>
                    <li>Using Arguments</li>
                    <li>Defining Multiple CTEs</li>
                    <li>Multiple References</li>
                    <li>Recursive CTEs</li>
                </ul>
            </li>
            <li>Views
                <ul>
                    <li>Views and ORDER BY</li>
                    <li>View Options</li>
                    <li>ENCRYPTION</li>
                    <li>SCHEMABINDING</li>
                    <li>CHECK OPTION</li>
                </ul>
            </li>
            <li>Inline User Defined Functions</li>
            <li>APPLY<br />
            LAB 05A</li>
        </ul>
    
    <h3 class="accordionHeader">Module 06: Set Operations</h3>
        <ul>
            <li>The UNION Set Operation
                <ul>
                    <li>The UNION ALL Set Operation</li>
                    <li>The UNION DISTINCT Set Operation</li>
                </ul>
            </li>
            <li>The INTERSECT Set Operation
                <ul>
                    <li>The INTERSECT ALL Set Operation</li>
                    <li>The INTERSECT DISTINCT Set Operation</li>
                </ul>
            </li>
            <li>The EXCEPT Set Operation 
                <ul>
                    <li>The EXCEPT ALL Set Operation</li>
                    <li>The EXCEPT DISTINCT Set Operation</li>
                </ul>
            </li>
            <li>Precedence</li>
            <li>Circumventing Unsupported Logical Phases<br />
            LAB 06A</li>
        </ul>

    <h3 class="accordionHeader">Module 07: Pivot, Unpivot and Grouping Sets </h3>
        <ul>
            <li>Pivoting Data
                <ul>
                    <li>Standard Solution to Pivoting</li>
                    <li>Pivoting with the T-SQL PIVOT Operator</li>
                </ul>
            </li>
            <li>Unpivoting Data
                <ul>
                    <li>Standard Solution to Unpivoting</li>
                    <li>Unpivoting with the T-SQL UNPIVOT Operator</li>
                </ul>
            </li>
            <li>Grouping Sets
                <ul>
                    <li>GROUPING SETS Subclause</li>
                    <li>CUBE Subclause</li>
                    <li>ROLLUP Subclause</li>
                    <li>GROUPING and GROUPING_ID Functions<br />
                    LAB 07A</li>
                </ul>
            </li>
        </ul>
    
    <h3 class="accordionHeader">Module 08: Data Modification</h3>
        <ul>
            <li>Inserting Data 
                <ul>
                    <li>The INSERT VALUES Statement</li>
                    <li>The INSERT SELECT Statement</li>
                    <li>The INSERT EXEC Statement</li>
                    <li>The SELECT INTO Statement</li>
                    <li>The BULK INSERT Statement</li>
                    <li>The IDENTITY Property</li>
                </ul>
            </li>
            <li>Deleting Data 
                <ul>
                    <li>The DELETE Statement</li>
                    <li>The TRUNCATE Statement</li>
                    <li>DELETE Based on Join</li>
                </ul>
            </li>
            <li>Updating Data 
                <ul>
                    <li>The UPDATE Statement</li>
                    <li>UPDATE Based on Join</li>
                    <li>Assignment UPDATE</li>
                </ul>
            </li>
            <li>Merging Data</li>
            <li>Modifying Data through Table Expressions</li>
            <li>Modifications with TOP</li>
            <li>OUTPUT
                <ul>
                    <li>INSERT with OUTPUT</li>
                    <li>DELETE with OUTPUT</li>
                    <li>UPDATE with OUTPUT</li>
                    <li>MERGE with OUTPUT</li>
                    <li>Composable DML<br />
                    LAB 08A</li>
                </ul>
            </li>
        </ul>

    <h3 class="accordionHeader">Module 09: Transactions and Concurrency</h3>
        <ul>
            <li>Transactions</li>
            <li>Locks and Blocking 
                <ul>
                    <li>Locks</li>
                    <li>Troubleshooting Blocking</li>
                </ul>
            </li>
            <li>Isolation Levels 
                <ul>
                    <li>Read Uncommitted</li>
                    <li>Read Committed</li>
                    <li>Repeatable Read</li>
                    <li>Serializable</li>
                    <li>Snapshot Isolation Levels</li>
                    <li>Summary of Isolation Levels</li>
                </ul>
            </li>
            <li>Deadlocks<br />
            LAB 09A</li>
        </ul>
    
    <h3 class="accordionHeader">Module 10: Programmable Objects</h3>
        <ul>
            <li>Variables</li>
            <li>Batches
                <ul>
                    <li>A Batch as a Unit of Parsing</li>
                    <li>Batches and Variables</li>
                    <li>Statements that Cannot be Combined in the same Batch</li>
                    <li>A Batch as a Unit of Resolution</li>
                    <li>The GO n Option </li>
                </ul>
            </li>
            <li>Flow Elements
                <ul>
                    <li>The IF ... ELSE Flow Element</li>
                    <li>The WHILE Flow Element</li>
                    <li>An Example of Using IF and WHILE</li>
                </ul>
            </li>
            <li>Cursors</li>
            <li>Temporary Tables
                <ul>
                    <li>Local Temporary Tables</li>
                    <li>Global Temporary Tables</li>
                    <li>Table Variables</li>
                    <li>Table Types</li>
                </ul>
            </li>
            <li>Dynamic SQL
                <ul>
                    <li>The EXEC Command</li>
                    <li>The sp_executesql Stored Procedure</li>
                    <li>Using PIVOT with Dynamic SQL</li>
                </ul>
            </li>
            <li>Routines
                <ul>
                    <li>User Defined Functions</li>
                    <li>Stored Procedures</li>
                    <li>Triggers</li>
                </ul>
            </li>
            <li>Error Handling</li>
        </ul>

    <h2>Location Details</h2>
<table class="outline" width="100%">
        <tr>
            <th scope="row">
                <a data-content="Level 8, 500 Collins Street, Melbourne  VIC   3000" rel="popover" class="bootstrap-tooltip" data-original-title="Saxons Training Facilities" href="#">Melbourne</a>
            </th>
            <td>
                Mentor <a>
                    Francisco A Gonz&aacute;lez D&iacute;az</a>
            </td>
        </tr>
        <tr>
            <th scope="row">
                <a data-content="Level 11, 300 Adelaide Street, Brisbane   QLD   4000" rel="popover" class="bootstrap-tooltip" data-original-title="Saxons Training Facilities" href="#">Brisbane</a>
            </th>
            <td>
                Mentor <a>
                    Francisco A Gonz&aacute;lez D&iacute;az</a>
            </td>
        </tr>
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
        <li><a href="Optimization-Performance.aspx">Optimization/Performance Tuning and Troubleshooting</a></li>
        <li><a href="SQL-Server-2012-Integration-Services.aspx">Accelerated SQL Server 2012 Integration Services</a></li>
    </ul>

</asp:Content>