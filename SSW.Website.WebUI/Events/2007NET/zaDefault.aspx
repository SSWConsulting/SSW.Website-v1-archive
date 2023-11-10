<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master"
    Title=".NET Developer Training" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <h2>
        About the speaker</h2>
    <table>
        <tr>
            <td valign="top">
                <img border="1" src="/ssw/Images/justinking.jpg" alt="Justin King" align="left" style="margin-right=30"
                    width="100" height="100">
            </td>
            <td valign="top">
                <div class="privateCourse">
                    <h4>
                        Want a Private Course?</h4>
                    <p>
                        The course on this page is a public course. We also provide an on-site "Private
                        Course" on this topic at your company <b>for all your employees</b> with two of
                        our top developers.</p>
                    <p>
                        <strong>Price (ex. GST): </strong>$2,800 per company (1 day) or 2 days for $5,400
                    </p>
                    <p>
                        <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175','Booking - Expression Course')"
                            onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
                            onmouseout="javascript:clearStatus(); return true;">
                            <img border="0" src="/ssw/Images/Button_booknow.gif" width="131" height="48" alt="Book Now" /></a></p>
                </div>
                <p>
                    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JK">Justin King</a> is a Senior
                    Software Architect at SSW, a Microsoft Certified Professional specialising in SQL
                    Server .NET Solutions. With over 10 years of Software Development experience, Justin
                    has worked with many different technologies across varied platforms.<br>
                    <br>
                    A background in Java and C# for last 6 years he has also started working with Windows
                    Communcation Foundation, Windows Presentation Foundation and Windows Workflow.
                </p>
                <p>
                    <strong>Price (ex. GST): </strong>
                    <br />
                    $900 per person (1 day)<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- or -<br />
                    $1,600 per person (2 days)</p>
            </td>
        </tr>
    </table>
    <b>The Goal:</b> To provide attendees the knowledge and skills to develop applications
    in ASP.Net 2.0 and Window Applications </P>
    <p>
        <table cellspacing="0" cellpadding="10" border="1" bordercolor="#000000" id="table1"
            width="90%">
            <tr>
                <td style="width: 50%; border: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9" valign="top" width="395"
                    bgcolor="#d9d9d9">
                    <b>Day 1</b>
                </td>
                <td style="width: 50%; border-left: medium none; border-right: 1pt solid windowtext;
                    border-top: 1pt solid windowtext; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9"
                    valign="top" width="372" bgcolor="#d9d9d9">
                    <b>Day 2</b>
                </td>
            </tr>
            <tr>
                <td valign="top" width="50%" height="99">
                    <br>
                    <b>Introduction</b>
                    <br>
                    <br>
                    <b>Introduction to Microsoft.NET</b>
                    <ul>
                        <li>What is Microsoft.NET / Overview of Architecture</li>
                        <li>A lap around Visual Studio and Tools</li>
                        <li>Web services</li>
                        <li>.Net and XML</li>
                    </ul>
                    <b>Lesson 1:</b>
                    <br>
                    <br>
                    <b>Building Web Applications with ASP.NET</b>
                    <br>
                    <br>
                    <ul>
                        <li>Introduction to ASP.NET 2.0</li>
                        <li>Website or Web Project</li>
                        <li>Web.config</li>
                        <li>Page Lifecycle / Postbacks</li>
                        <li>State Management</li>
                        <li>Server Controls / User Controls</li>
                        <li>Master Pages</li>
                        <li>Validation</li>
                        <li>Databinding</li>
                        <li>GridView / Details View / ListView / DatePicker</li>
                        <li>Advanced ASP.NET 2.0 features</li>
                        <li>Global Error Handling</li>
                        <li>3rd Party Controls</li>
                        <li>AJAX Control toolkit</li>
                    </ul>
                    <br>
                    <br>
                    <b>Lesson 2:</b><br>
                    <br>
                    <b>Building Windows Applications with C#</b>
                    <br>
                    <br>
                    <ul>
                        <li>Window Forms Introduction</li>
                        <li>Architecture - EXE, Service and Class Libraries</li>
                        <li>Separation of UI, Business layer</li>
                        <li>Layout, docking, anchor</li>
                        <li>User Controls</li>
                        <li>DataBinding in WinForms</li>
                        <li>Events</li>
                        <li>Multi Threading</li>
                        <li>3rd party controls</li>
                        <li>Click Once</li>
                    </ul>
                </td>
                <td valign="top">
                    <br />
                    <b>Lesson 3:</b>
                    <br>
                    <br>
                    <b>LINQ - DataAccess</b>
                    <br>
                    <br>
                    <ul>
                        <li>History of Data Access</li>
                        <li>What is LINQ?</li>
                        <li>LINQ to SQL</li>
                        <li>LINQ to Entities</li>
                        <li>Using LINQ</li>
                        <li>Profiling / Debugging LINQ</li>
                        <li>Extension Methods</li>
                        <li>Lambda Functions</li>
                        <li>Projections</li>
                        <li>Working with Stored Procs</li>
                        <li>LINQ and ASP.NET</li>
                        <li>LINQ to Objects</li>
                        <li>LINQ to XML</li>
                    </ul>
                    <br>
                    <br>
                    <b>Lesson 4:</b>
                    <br>
                    <br>
                    <b>Component Based Design in .NET</b>
                    <br>
                    <br>
                    <ul>
                        <li>.NET Component Design and Architecture</li>
                        <li>Extending existing components</li>
                        <li>Working with external components</li>
                        <li>Wrapping and using Unmanaged code</li>
                        <li>Introduction to Windows Communication Foundation</li>
                        <li>Introduction to Windows Presentation Foundation</li>
                        <li>Introduction to Windows Workflow</li>
                    </ul>
                </td>
            </tr>
        </table>
    </p>
    <h2>
        Session Dates</h2>
    <br />
    <table cellspacing="0" cellpadding="0" border="0" id="table2">
        <tr>
            <td style="border: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9" bgcolor="#d9d9d9">
                <p align="left">
                    <b>City</b>
            </td>
            <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: 1pt solid windowtext;
                border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9" bgcolor="#d9d9d9">
                <b>Dates</b>
            </td>
        </tr>
    </table>
    &nbsp;<p>
        <h2>
            Course Location</h2>
        <a href="/ssw/Company/directions/neutralbay/">SSW Neutral Bay</a><br>
    </p>
    <h2>
        About the Course</h2>
    <p>
        <b>Course Times:<br>
        </b>Commencing at 09:00 and concluding at 17:00 each day.</p>
    <p>
        <b>Course Outline:<br>
        </b>.NET Developer Training in ASP.NET / Windows Applications and LINQ<br>
        <br>
        <b>Overview:<br>
        </b>This course is a 2 day course designed to provide existing programmers looking
        to move from older/other technologies to work with the .NET Framework
        <br>
        <b>
            <br>
            Who Should Attend:</b>
        <br>
        <ul>
            <li>Developers</li>
            <li>IT Professionals</li>
            <li>Partners with a minimum 6 months of programming experience and basic Microsoft Visual
                Studio .NET navigation skills.</li></ul>
        <br>
        <br>
        <b>Pre-requisites:<br>
            <br>
            <p>
                <b>After completing this course, students will be able to:</b><br>
                <ul>
                    <li>Author .NET Applications in ASP.NET and Windows Smart Clients</li>
                    <li>Create Database aware applications using ADO.NET and LINQ</li>
                </ul>
                <br>
                <br>
            </p>
            <p>
                <h2>
                    Acknowledgements</h2>
                <p>
                    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
                    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JK">Justin King</a></p>
                <p>
                    <a href="resources.aspx">.</a><br>
                </p>
</asp:Content>
