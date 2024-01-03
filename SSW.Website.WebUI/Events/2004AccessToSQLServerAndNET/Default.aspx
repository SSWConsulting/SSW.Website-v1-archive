<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master"
    Title="Microsoft Access: Upgrading and Migrating to SQL Server and .NET" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <SSW:RandomTestimonial runat="server" Display="SideBarRight" ProdID="ROAD3" ID="Testimonial" />
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
    <p>
        <b>The Goal:</b> To convert an Access application to .NET Windows Forms and Reporting
        Services powered by a SQL Server database.</p>
    <br>
    <p>
        The entire process of converting from Access to an enterprise level solution will
        be covered in two days, using a modified version of Northwind as an example. The
        attendees will approach the task as a real world problem where the entire project
        will be migrated in four steps (releases). Each step will be a logical extension
        of the last, allowing developers to stop their own development at a step where they
        will still have a functioning system, even though it may not necessarily be the
        best solution.</p>
    <!--br><p>Registrations for <b>Microsoft Access: Upgrading & Migrating to SQL Server & .NET</b> are now open at <a href="/ssw/Redirect/Microsoft/MSRoadshowRegistration.htm">http://www.microsoft.com/australia/Events/access/</a> <img alt="You are going to a site outside of SSW" src="/ssw/Images/leavesite.gif" width="17" height="11" /></p>
		<br><p><b>Schedule - </b>Microsoft Access: Upgrading and Migrating to SQL 
		Server and .NET</p-->
    <table cellspacing="0" cellpadding="0" border="0" id="table1" width="100%">
        <tr>
            <td style="width: 50%; border: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9" valign="top" width="395"
                bgcolor="#d9d9d9">
                <b><a href="#Day1">Day 1</a></b>
            </td>
            <td style="width: 50%; border-left: medium none; border-right: 1pt solid windowtext;
                border-top: 1pt solid windowtext; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9"
                valign="top" width="372" bgcolor="#d9d9d9">
                <b><a href="#Day2">Day 2</a></b>
            </td>
        </tr>
        <tr style="height: 74.5pt" height="99">
            <td style="width: 50%; height: 74.5pt; border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" valign="top" width="50%"
                height="99">
                <br />
                <b>1A: Making a Plan (2.5 hours)</b><ul>
                    <li>About Presenters</li>
                    <li>Development Methodology - Extreme Programming (XP)
                        <ul>
                            <li>Tool 1: Short Releases</li>
                            <li>Tool 2: Microsoft Word</li>
                            <li>Tool 3: Unit Testing</li>
                        </ul>
                </ul>
                <ul>
                    <li>Hands-on lab - Creating a release plan</li>
                </ul>
                <b>1B: Converting Access 97 to Access 2003 (1 hour)</b><ul>
                    <li>Converting to Access 2003
                        <ul>
                            <li>Why would you upgrade?
                                <li>The issues
                                    <ul>
                                        <li>Uncompiled mdbs</li>
                                        <li>Unused code blocks</li>
                                        <li>Using referenced .mdbs and .mdes</li>
                                        <li>Library mdes</li>
                                    </ul>
                                    <li>Demo - Using tools to find issues
                                        <ul>
                                            <li>FMS Total Access Analyzer</li>
                                        </ul>
                                    </li>
                        </ul>
                    </li>
                </ul>
                <p>
                    <b>Lunch (1 hour)</b></p>
                <b>2: Upsizing to SQL Server (3 hours)</b><ul>
                    <li>To Move or Not To Move?</li>
                    <li>Current Problems in Access
                        <ul>
                            <li>Corrupt data</li>
                            <li>Database users</li>
                            <li>Downtime during backups</li>
                            <li>Security</li>
                            <li>Missing records</li>
                        </ul>
                    </li>
                    <li>What's new and different in SQL Server?<ul>
                        <li>Architecture</li>
                        <li>Working with data</li>
                        <li>Scalability and performance</li>
                    </ul>
                    </li>
                    <li>Demos
                        <ul>
                            <li>SSW Upsizing PRO!</li>
                            <li>Microsoft Upsizing Wizard</li>
                            <li>SSW Performance Pro!</li>
                            <li>SSW SQL Deploy</li>
                            <li>SSW SQL Auditor</li>
                        </ul>
                    </li>
                </ul>
                <ul>
                    <li>Hands-on lab - Migrating Northwind from Access 2003 to SQL Server 2000</li></ul>
            </td>
            <td style="width: 50%; height: 74.5pt; border-left: medium none; border-right: 1pt solid windowtext;
                border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm" valign="top" width="50%"
                height="99">
                <br />
                <b>1: From Access to SQL Server Reporting Services (3 hours)</b><ul>
                    <li>History of reporting</li>
                    <li>Report life cycle</li>
                    <li>Installing Reporting Services</li>
                    <li>Building a report in Visual Studio .NET</li>
                    <li>Report on any data source</li>
                    <li>Deploying reports</li>
                </ul>
                <ul>
                    <li>Hands-on Lab - migrating 4 Northwind reports from Access into Reporting Services</li>
                </ul>
                <p>
                    <b>Lunch (1 hour)</b></p>
                <p class="MsoNormal" style="text-indent: -18.0pt; margin-left: 18.0pt">
                    <b>2: From Access Forms to Windows Forms .NET (3 hours)</b><ul>
                        <li>Current Problems with Access</li>
                        <ul>
                            <li>Office upgrades</li>
                            <li>Corrupt databases</li>
                            <li>Slow forms</li>
                            <li>Large applications</li>
                            <li>Scalability</li>
                            <li>Deployment</li></ul>
                        <li>What's new and different in .NET?</li>
                        <ul>
                            <li>Form design</li>
                            <li>Form inheritance</li>
                            <li>Application design</li>
                            <li>Deployment</li>
                            <li>Visual Studio .NET</li>
                            <li>Programming - VBA vs VB.NET</li></ul>
                        <li>Demos</li>
                        <ul>
                            <li>Creating the Northwind Main Form in .NET</li>
                            <li>Creating the Northwind Orders Form in .NET</li>
                            <li>Orders form - the correct way</li>
                            <li>Northwind Orders - Converting to .NET the easy way!</li>
                        </ul>
                    </ul>
                    <ul>
                        <li>Hands-on lab - Migrating Northwind forms to .NET</li></ul>
            </td>
        </tr>
    </table>
    <p>
        <p>
            Detailed Session Descriptions:</p>
    </p>
    <p>
        <h2>
            <a name="Day1"></a>Day 1</h2>
        <blockquote>
            <p>
                <b>Session 1</b><br>
                Learn how to target the areas of the systems that should be converted to achieve
                the best result. How should development of this type of project happen? How should
                a project be managed? What methodologies are in place?</p>
            <p>
                Upgrading an Access 97 database to Access 2003. What are the issues? With a demonstration
                using a modified version of the Northwind database.</p>
            <p>
                <b>Session 2<br>
                </b>Upsize an Access 2003 database to SQL Server. A modified version of Northwind
                will be used as an example and the backend will be moved over to SQL Server, correcting
                a number of known issues concerning the data itself as well the database schema.</p>
            <p>
        </blockquote>
        <h2>
            <a name="Day2"></a>Day 2</h2>
        <blockquote>
            <p>
                <b>Session 1<br>
                </b>The advantages of moving Access reports into Microsoft's new SQL Server Reporting
                Services will be described, along with the process for importing four of the key
                reports from Northwind. Issues related to importing will be handled to produce identical
                reports. The reports will then be deployed to a report server to demonstrate the
                power of online reports using Reporting Services.</p>
            <p>
                <b>Session 2<br>
                </b>Access Forms will be transformed into Windows Forms .NET in order to provide
                a more scalable and distributable application. The known issues during migration
                will be highlighted and the power of .NET will be leveraged to improve the interface
                performance.</p>
            <p>
                Having moved to a Windows Forms .NET environment you will be shown how to make the
                application more accessible. Web services will be used so that the client does not
                need to be within an intranet to access the corporate database.</p>
        </blockquote>
        <a href="#dates"></a><a name="dates"></a>
        <h2>
            Session Dates</h2>
        &nbsp;<br />
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
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Canberra</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Thursday 11th Friday 12th November 2003</strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Brisbane</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Monday 29th Tueday 30th November 2003</strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Sydney</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Thursday 2nd Friday 3rd December 2003 <span style="color: red;"><b>Sold Out</b></span></strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Adelaide</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Monday 6th Tuesday 7th December 2003</strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Perth</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Thursday 9th Friday 10th December 2003</strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Melbourne</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Monday 13th Tueday 14th December 2003 <span style="color: red;"><b>Sold Out</b></span></strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Melbourne</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <strike>(Goldman Sachs Session) Thursday 16th Friday 17th December 2003</strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Sydney</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <strike>(Repeated Session) Monday 7th Tuesday 8th March 2004 <span style="color: #FF0000">
                        <b>Sold Out</b></span></strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Melbourne</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <strike>(Repeated Session) Thursday 10th Friday 11th March 2004 <span style="color: #FF0000">
                        <b>Sold Out</b></span></strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Brisbane</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <strike>(Repeated Session) Monday 14th Tuesday 15th March 2004</strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Sydney</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Wednesday 20th - Thursday 21st July 2005</strike><span style="color: red;"></span>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    Los Angeles
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    Tuesday 20th - Wednesday 21st September 2005<span style="color: red;"><b> Strictly Limited
                        Numbers</b></span>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    Dallas
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    Tuesday 20th - Wednesday 21st September 2005<span style="color: red;"><b> Strictly Limited
                        Numbers</b></span>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext;
                    border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt;
                    padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    Melbourne
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none;
                    border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt;
                    padding-top: 0cm; padding-bottom: 0cm">
                    Tuesday 6th - Wednesday 7th December 2005<span style="color: red;"><b> Strictly Limited
                        Numbers</b></span>
                </td>
            </tr>
        </table>
        <br>
        <h2>
            System Requirements</h2>
        <ul>
            <li>Windows XP + SP2</li>
            <li>Access 97 + SP2</li>
            <li>Access 2003 + SP1</li>
            <li>SQL Server 2000 + SP3</li>
            <li>SQL Server 2000 Reporting Services + SP1</li>
            <li>Visual Studio 2003</li>
            <li>Visual Studio 2005 Beta</li>
        </ul>
        <p>
            * If you want this on your PC, you will require 1GB of RAM for Virtual PC.</p>
        <p>
            * Detailed Whitepapers will be provided</p>
        <p>
            * Cost of the course is $999 US</p>
        <p>
            * Information from the seminar will be available for $299.00</p>
        <p>
            ** For bookings or further information contact <a href="javascript:sendEmail('73636f74746d637068696c6c697073407373772e636f6d2e6175')"
                onmouseover="javascript:displayStatus('73636f74746d637068696c6c697073407373772e636f6d2e6175'); return true;"
                onmouseout="javascript:clearStatus(); return true;">scottmc phillips</a></p>
        <h2>
            Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JV">Jatin Valabjee</a><br>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AW">Andrew Weaver</a><br>
        </p>
        <p>
            <a href="resources.aspx">.</a></p>
</asp:Content>
