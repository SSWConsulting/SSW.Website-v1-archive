<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master"
    Title="Developing Windows and Web Applications using Visual Studio.NET (C# and VB.NET)" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <div id="Completed">
        <span style="color: Red;"><b>COMPLETED:</b></span> See the <a href="http://www.ssw.com.au/ssw/events/2009utssql/default.aspx">
            current UTS course</a>.</div>
    <div id="content-container">
        <div id="container">
            <div class="privateCourse">
                <h4>
                    Want a Private Course?</h4>
                <p>
                    The course on this page is a public course. We also provide an on-site "Private
                    Course" on this topic at your company for all your employees with two of our top
                    developers.</p>
                <p>
                    <strong>Price (ex. GST): </strong>$2,800 per company (1 day) or 2 days for $5,400
                </p>
                <p>
                    <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175','Booking - Expression Course')"
                        onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
                        onmouseout="javascript:clearStatus(); return true;">
                        <img border="0" src="/ssw/Images/Button_booknow.gif" width="131" height="48" alt="Book Now" /></a></p>
            </div>
         
            <div id="content">
                <p>
                    This course introduces students the Microsoft .NET 2.0 Framework through hands-on
                    exercises and live demos. Both C# and VB .NET code is provided side-by-side giving
                    the students a deeper understanding of the commonalities between the languages.
                    The class examples can be completed in either C# or VB .NET.</p>
                <p>
                    The course provides an introduction to the .NET Framework for students who want
                    to pursue Microsoft certification, specifically MCAD (Microsoft Certified Application
                    Developer).</p>
                <p>
                    At course completion students will be able to:</p>
                <ul>
                    <li>Explain the main concepts behind the common language runtime</li>
                    <li>Create Windows-based applications</li>
                    <li>Create Windows Forms with menus, system and user controls</li>
                    <li>Create Web Forms and Web Services</li>
                    <li>Create and use components in Windows Forms-based and ASP.NET-based applications
                    </li>
                    <li>Use XML Web services in an application</li>
                    <li>Create and use classes, interfaces, delegates</li>
                    <li>Handle system events and generate custom events</li>
                </ul>
            </div>
        </div>
    </div>
    <p>
        Registration and more details are available via the
        <% 'SSW Code Auditor - Ignore next line %>
        <a href="/ssw/Redirect/UTSBuilding10.htm" target="_blank">UTS Programming Short Courses</a>
        Page.</p>
    <p>
        <b>Schedule</b></p>
    <table cellspacing="0" cellpadding="0" border="0" id="table1" width="100%">
        <tr>
            <td style="width: 50%; border: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9" valign="top" width="395"
                bgcolor="#d9d9d9">
                <b>Part 1: Developing Windows Applications using Visual Studio.net (C# and VB.net)</b>
            </td>
            <td style="width: 50%; border-left: medium none; border-right: 1pt solid windowtext;
                border-top: 1pt solid windowtext; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9"
                valign="top" width="372" bgcolor="#d9d9d9">
                <b>Part 2: Developing ASP.net Web Applications using Visual Studio .net (C# and VB.net)
                </b>
            </td>
        </tr>
        <tr style="height: 74.5pt" height="99">
            <td style="width: 50%; height: 74.5pt; border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" valign="top" width="50%"
                height="99">
                <p>
                    Duration: 5 sessions - 15 hours over 5 weeks</p>
                <ul>
                    <li><b>Session 1: Overview</b>
                        <ul>
                            <li>Overview of .NET</li>
                            <li>Managed Objects in the CLR</li>
                            <li>Reviewing Object Orientation</li>
                            <ul>
                                <li>VB.NET concepts </li>
                                <li>C# concepts </li>
                                <li>Singleton</li>
                            </ul>
                            <li>The 4 projects</li>
                            <li>Creating Windows Forms (in VB.NET 2005)</li>
                            <li>Opening forms</li>
                            <li>Event Handlers</li>
                            <li>Menus</li>
                            <li>Make a user control</li>
                        </ul>
                        <p>
                            &nbsp;</p>
                    </li>
                    <li><b>Session 2: Data in Forms (in C# 2005) </b>
                        <ul>
                            <li>ADO.NET</li>
                            <li>DataBinding </li>
                            <li>DataGrid</li>
                            <li>Input Validation</li>
                        </ul>
                        <p>
                            &nbsp;</p>
                    </li>
                    <li><b>Session 3: Synchronous vs Asynchronous Programming (in C# 2005)</b>
                        <ul>
                            <li>Generate custom events </li>
                            <li>Delegates</li>
                            <li>Callbacks</li>
                            <li>Threadpool</li>
                            <li>App.Doevents</li>
                            <li>Thread.Start</li>
                            <li>Locking</li>
                            <li>Monitor.Enter</li>
                        </ul>
                    </li>
                    <p>
                        &nbsp;</p>
                    <li><b>Session 4: Usability - Rules to Better Windows Forms (in VB.NET 2005)</b>
                        <ul>
                            <li>Implement FxCop</li>
                            <li>Implement SSW Code Auditor</li>
                        </ul>
                        <p>
                            &nbsp;</p>
                    </li>
                    <li><b>Session 5: Deployment and Security of Windows Forms (in C# 2005) </b>
                        <ul>
                            <li>ClickOnce</li>
                            <li>Authentication and Authorisation</li>
                            <li>Impersonation</li>
                            <li>Security Attributes</li>
                            <li>Assembly Strong Naming</li>
                        </ul>
                    </li>
                </ul>
            </td>
            <td style="width: 50%; height: 74.5pt; border-left: medium none; border-right: 1pt solid windowtext;
                border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" valign="top" width="50%"
                height="99">
                <p>
                    Duration: 5 sessions - 15 hours over 5 weeks</p>
                <ul>
                    <li><b>Session 1: Overview</b>
                        <ul>
                            <li>Overview of .NET</li>
                            <li>Managed Objects in the CLR</li>
                            <li>Reviewing Object Orientation</li>
                            <ul>
                                <li>VB.NET concepts </li>
                                <li>C# concepts </li>
                                <li>Singleton</li>
                            </ul>
                            <li>The 4 projects</li>
                            <li>Creating Web Forms (in VB.NET 2005)</li>
                            <li>Opening pages</li>
                            <li>Event Handlers</li>
                            <li>Menus</li>
                            <li>Make a user control</li>
                        </ul>
                    </li>
                    <p>
                        &nbsp;</p>
                    <li><b>Session 2: Data in Forms (in VB.NET) </b>
                        <ul>
                            <li>ADO.NET</li>
                            <li>DataBinding </li>
                            <li>DataGrid</li><li>Input Validation</li></ul>
                        <p>
                            &nbsp;</p>
                    </li>
                    <li><b>Session 3: Usability - Rules to Better Web Forms </b>
                        <ul>
                            <li>Tracing Web Applications </li>
                            <li>Implement FXCop </li>
                            <li>Implement Code Auditor</li>
                        </ul>
                        <p>
                            &nbsp;</p>
                        \ </li>
                    <li><b>Session 4: Reporting Services </b>
                        <ul>
                            <li>Designing</li>
                            <li>Databinding</li>
                            <li>Parameters</li>
                            <li>Scheduling</li>
                        </ul>
                        <p>
                            &nbsp;</p>
                    </li>
                    <li><b>Session 5: Visual Studio Team System</b></li>
                </ul>
            </td>
        </tr>
    </table>
    <h2>
        Session Dates</h2>
    <b>&nbsp;Part 1: .NET Winforms</b><br />
    <br />
    <del>
        <table cellspacing="0" cellpadding="0" border="0" id="table2" width="70%">
            <tr>
                <td style="border: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9" bgcolor="#d9d9d9">
                    <b>Session</b>
                </td>
                <td style="border: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9" bgcolor="#d9d9d9">
                    <b>Date</b>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: 1pt solid windowtext;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9" bgcolor="#d9d9d9"
                    width="120">
                    <b>Time</b>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: 1pt solid windowtext;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9" bgcolor="#d9d9d9"
                    width="357">
                    <b>Topic</b>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" align="center">
                    <p align="center">
                        1</p>
                </td>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    31-08-2006
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="120">
                    18:00 - 21:00
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="357">
                    Overview of .NET
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" align="center">
                    2
                </td>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    07-09-2006
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="120">
                    18:00 - 21:00
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="357">
                    Data in Forms (in C# 2005)
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" align="center">
                    3
                </td>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    14-09-2006
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="120">
                    18:00 - 21:00
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="357">
                    Synchronous vs Asynchronous Programming (in C# 2005)
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" align="center">
                    4
                </td>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    21-09-2006
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="120">
                    18:00 - 21:00
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="357">
                    Usability - Rules to Better Windows Forms (in VB.NET 2005)
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" align="center">
                    5
                </td>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    28-09-2006
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="120">
                    18:00 - 21:00
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="357">
                    Deployment and Security of Windows Forms (in C# 2005)
                </td>
            </tr>
        </table>
    </del><b>&nbsp;</b><p>
        <b>Part 2: .NET Webforms</b></p>
    <del>
        <table cellspacing="0" cellpadding="0" border="0" id="table3" width="70%">
            <tr>
                <td style="border: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9" bgcolor="#d9d9d9">
                    <b>Session</b>
                </td>
                <td style="border: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9" bgcolor="#d9d9d9">
                    <b>Date</b>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: 1pt solid windowtext;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9" bgcolor="#d9d9d9"
                    width="120">
                    <b>Time</b>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: 1pt solid windowtext;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9" bgcolor="#d9d9d9"
                    width="357">
                    <b>Topic</b>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" align="center">
                    <p align="center">
                        1</p>
                </td>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    05-10-2006
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="120">
                    18:00 - 21:00
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="357">
                    Overview of .NET
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" align="center">
                    2
                </td>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    12-10-2006
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="120">
                    18:00 - 21:00
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="357">
                    Data in Webforms (in VB.NET 2005)
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" align="center">
                    3
                </td>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    19-10-2006
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="120">
                    18:00 - 21:00
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="357">
                    Usability - Rules to Better Web Forms
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" align="center">
                    4
                </td>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    26-10-2006
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="120">
                    18:00 - 21:00
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="357">
                    Reporting Services
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" align="center">
                    5
                </td>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    02-11-2006
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="120">
                    18:00 - 21:00
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm" width="357">
                    Visual Studio Team System
                </td>
            </tr>
        </table>
    </del>
    <h2>
        System Requirements*</h2>
    <p>
        * Systems will be provided during the demonstrations that have all necessary software
        installed.
    </p>
    <p>
        Note:</p>
    <div class="Section1">
        <ul>
            <li>We supply a Virtual PC image on DVD&nbsp; which is running Windows XP Pro, Visual
                Studio .NET 2005 and SQL Server 2005</li><li>You need a DVD ROM </li>
            <li>You need a Pentium 4 with 1GB RAM or more</li><li>You need Microsoft Virtual PC
                installed (Free 45 day trial is available from <a href="../../Redirect/Microsoft/VirtualPCHome.htm">
                    Microsoft Virtual PC Home</a>
                <img src="/ssw/Images/LeaveSite.gif" width="17" height="11" alt="Leaving SSW" />)
            </li>
            <li>You are welcome to install VS.NET 2005 and SQL Server 2005 but we don't provide
                any support (support is provided for the Virtual PC image)</li></ul>
    </div>
    <h2>
        Instructions for Students: How to log in</h2>
    <ol>
    <!--SSW Code Auditor - Ignore next line(HTML)-->
        <li>From the &quot;Session Menu&quot; on the login screen, choose the &quot;Windows
            XP.NET&quot; session</li>
        <li>Type in your username and password. Your vmware image (session) will start automatically.
            <span style="font-size: 9.0pt; font-family: Verdana">(You can also start it manually
                by running the command vmware from a terminal window.)</span></li>
    </ol>
    <h2>
        Resources (Presentations and Hands On Labs)</h2>
    <ul>
        <li><strike>Lecture Notes -</strike> FOR ATTENDEES ONLY</li>
    </ul>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JV">Jatin Valabjee</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=EP">Eric Phan</a><br />
    </p>
</asp:Content>
