<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master"
    Title="Microsoft Access: Upgrading and Migrating to SQL Server and .NET" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <h2>About the speaker</h2>
    <div class="floatRight" style="width: 40%;">
        <div class="greyBox" style="margin: 4px;">
            Want to see more training topics?
            <p>
                See our variety of <a href="/ssw/Products/Training.aspx">training topics</a>
            </p>
        </div>
    </div>
    <table>
        <tr>
            <td>
                <img src="/ssw/Images/adamcogan.jpg" alt="AdamCogan" align="left" style="margin-right=30"
                    width="100" height="146">
            </td>
            <td style="margin-right=20">
                <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a> is a Microsoft
                Regional Director, and Chief Architect at SSW. Adam has been developing custom solutions
                for businesses across a range of industries such as Government, banking, insurance
                and manufacturing since 1990 for clients such as Microsoft, Quicken, and the Fisheries
                Research and Development Corporation. His wealth of experience in the industry and
                unsurpassed technical knowledge will ensure attendees get the most out of these
                sessions.
            </td>
        </tr>
    </table>
    <ssw:RandomTestimonial runat="server" Display="SideBarRight" ProdID="ROAD3" ID="Testimonial" />
    <br>
    <br>
    <p>
        <b>The Goal:</b> To convert an Access application to .NET Windows Forms and Reporting
        Services powered by a SQL Server database.
    </p>
    <br>
    <p>
        The entire process of converting from Access to an enterprise level solution will
        be covered in two days, using a modified version of Northwind as an example. The
        attendees will approach the task as a real world problem where the entire project
        will be migrated in four steps (releases). Each step will be a logical extension
        of the last, allowing developers to stop their own development at a step where they
        will still have a functioning system, even though it may not necessarily be the
        best solution.
    </p>
    <p>
        <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175','Migrating to SQL and .NET Course')"
            onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
            onmouseout="javascript:clearStatus(); return true;">
            <img src="/ssw/Images/Button_booknow.gif" alt="Book the course" width="131" height="48" /></a>
    </p>
    <!--br><p>Registrations for <b>Microsoft Access: Upgrading & Migrating to SQL Server & .NET</b> are now open at <a href="/ssw/Redirect/Microsoft/MSRoadshowRegistration.htm">http://www.microsoft.com/australia/Events/access/</a> <img alt="You are going to a site outside of ssw" src="/ssw/Images/leavesite.gif" width="17" height="11" /></p>
		<br><p><b>Schedule - </b>Microsoft Access: Upgrading and Migrating to SQL 
		Server and .NET</p-->
    <table cellspacing="0" cellpadding="0" border="0" id="table1" width="100%">
        <tr>
            <td style="width: 50%; border: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9"
                valign="top" width="395"
                bgcolor="#d9d9d9">
                <b><a href="#Day1">Day 1</a></b>
            </td>
            <td style="width: 50%; border-left: medium none; border-right: 1pt solid windowtext; border-top: 1pt solid windowtext; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9"
                valign="top" width="372" bgcolor="#d9d9d9">
                <b><a href="#Day2">Day 2</a></b>
            </td>
        </tr>
        <tr style="height: 74.5pt" height="99">
            <td style="width: 50%; height: 74.5pt; border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm"
                valign="top" width="50%"
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
                    <b>Lunch (1 hour)</b>
                </p>
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
                            <li>ssw Upsizing PRO!</li>
                            <li>Microsoft Upsizing Wizard</li>
                            <li>ssw Performance Pro!</li>
                            <li>ssw SQL Deploy</li>
                            <li>ssw SQL Auditor</li>
                        </ul>
                    </li>
                </ul>
                <ul>
                    <li>Hands-on lab - Migrating Northwind from Access 2003 to SQL Server 2000</li>
                </ul>
            </td>
            <td style="width: 50%; height: 74.5pt; border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm"
                valign="top" width="50%"
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
                    <b>Lunch (1 hour)</b>
                </p>
                <p class="MsoNormal" style="text-indent: -18.0pt; margin-left: 18.0pt">
                    <b>2: From Access Forms to Windows Forms .NET (3 hours)</b><ul>
                        <li>Current Problems with Access</li>
                        <ul>
                            <li>Office upgrades</li>
                            <li>Corrupt databases</li>
                            <li>Slow forms</li>
                            <li>Large applications</li>
                            <li>Scalability</li>
                            <li>Deployment</li>
                        </ul>
                        <li>What's new and different in .NET?</li>
                        <ul>
                            <li>Form design</li>
                            <li>Form inheritance</li>
                            <li>Application design</li>
                            <li>Deployment</li>
                            <li>Visual Studio .NET</li>
                            <li>Programming - VBA vs VB.NET</li>
                        </ul>
                        <li>Demos</li>
                        <ul>
                            <li>Creating the Northwind Main Form in .NET</li>
                            <li>Creating the Northwind Orders Form in .NET</li>
                            <li>Orders form - the correct way</li>
                            <li>Northwind Orders - Converting to .NET the easy way!</li>
                        </ul>
                    </ul>
                    <ul>
                        <li>Hands-on lab - Migrating Northwind forms to .NET</li>
                    </ul>
            </td>
        </tr>
    </table>
    <p>
        <p>
            Detailed Session Descriptions:
        </p>
    </p>
    <p>
        <h2>
            <a name="Day1"></a>Day 1</h2>
        <blockquote>
            <p>
                <b>Session 1</b><br>
                Learn how to target the areas of the systems that should be converted to achieve
                the best result. How should development of this type of project happen? How should
                a project be managed? What methodologies are in place?
            </p>
            <p>
                Upgrading an Access 97 database to Access 2003. What are the issues? With a demonstration
                using a modified version of the Northwind database.
            </p>
            <p>
                <b>Session 2<br>
                </b>Upsize an Access 2003 database to SQL Server. A modified version of Northwind
                will be used as an example and the backend will be moved over to SQL Server, correcting
                a number of known issues concerning the data itself as well the database schema.
            </p>
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
                power of online reports using Reporting Services.
            </p>
            <p>
                <b>Session 2<br>
                </b>Access Forms will be transformed into Windows Forms .NET in order to provide
                a more scalable and distributable application. The known issues during migration
                will be highlighted and the power of .NET will be leveraged to improve the interface
                performance.
            </p>
            <p>
                Having moved to a Windows Forms .NET environment you will be shown how to make the
                application more accessible. Web services will be used so that the client does not
                need to be within an intranet to access the corporate database.
            </p>
        </blockquote>
        <a href="#dates"></a><a name="dates"></a>
        <h2>Session Dates</h2>
        &nbsp;<br />
        <table cellspacing="0" cellpadding="0" border="0" id="table2">
            <tr>
                <td style="border: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9"
                    bgcolor="#d9d9d9">
                    <p align="left">
                        <b>City</b>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: 1pt solid windowtext; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm; background: #d9d9d9"
                    bgcolor="#d9d9d9">
                    <b>Dates</b>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>
                        <img alt="2Day.NET Training" src="/ssw/Images/australianflagtiny.gif" width="10"
                            height="6">
                        Canberra</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Thursday 11th Friday 12th November 2003</strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>
                        <img alt="2Day.NET Training" src="/ssw/Images/australianflagtiny.gif" width="10"
                            height="6">
                        Brisbane</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Monday 29th Tuesday 30th November 2003</strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>
                        <img alt="2Day.NET Training" src="/ssw/Images/australianflagtiny.gif" width="10"
                            height="6">
                        Sydney</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Thursday 2nd Friday 3rd December 2003 <span style="color: red;"><b>Sold Out</b></span></strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>
                        <img alt="2Day.NET Training" src="/ssw/Images/australianflagtiny.gif" width="10"
                            height="6">
                        Adelaide</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Monday 6th Tuesday 7th December 2003</strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>
                        <img alt="2Day.NET Training" src="/ssw/Images/australianflagtiny.gif" width="10"
                            height="6">
                        Perth</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Thursday 9th Friday 10th December 2003</strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>
                        <img alt="2Day.NET Training" src="/ssw/Images/australianflagtiny.gif" width="10"
                            height="6">
                        Melbourne</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Monday 13th Tuesday 14th December 2003 <span style="color: red;"><b>Sold Out</b></span></strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>
                        <img alt="2Day.NET Training" src="/ssw/Images/australianflagtiny.gif" width="10"
                            height="6">
                        Melbourne</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>(Goldman Sachs Session) Thursday 16th Friday 17th December 2003</strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>
                        <img alt="2Day.NET Training" src="/ssw/Images/australianflagtiny.gif" width="10"
                            height="6">
                        Sydney</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>(Repeated Session) Monday 7th Tuesday 8th March 2004 <span style="color: #FF0000">
                        <b>Sold Out</b></span></strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>
                        <img alt="2Day.NET Training" src="/ssw/Images/australianflagtiny.gif" width="10"
                            height="6">
                        Melbourne</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>(Repeated Session) Thursday 10th Friday 11th March 2004 <span style="color: #FF0000">
                        <b>Sold Out</b></span></strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>
                        <img alt="2Day.NET Training" src="/ssw/Images/australianflagtiny.gif" width="10"
                            height="6">
                        Brisbane</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>(Repeated Session) Monday 14th Tuesday 15th March 2004</strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>
                        <img alt="2Day.NET Training" src="/ssw/Images/australianflagtiny.gif" width="10"
                            height="6">
                        Sydney</strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Wednesday 20th - Thursday 21st July 2005</strike><span style="color: red;"></span>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>
                        <img alt="2Day.NET Training" src="/ssw/Images/USFlagTiny.jpg" width="10" height="7">&nbsp;<a
                            href="/ssw/Products/ProdCategory.aspx?CategoryID=ROAD3">Los Angeles</a></strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Thursday 22nd - Friday 23rd September 2005</strike><span style="color: red;"><b>
                        <strike>Sold Out</strike></b></span>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>
                        <img alt="2Day.NET Training" src="/ssw/Images/USFlagTiny.jpg" width="10" height="7">&nbsp;<a
                            href="/ssw/Products/ProdCategory.aspx?CategoryID=ROAD3">Seattle</strike></a>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Monday 3rd &amp; Tuesday 4th October 2005</strike><span style="color: red;"><b><strike>
                        Sold Out</strike></b></span>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>
                        <img alt="2Day.NET Training" src="/ssw/Images/USFlagTiny.jpg" width="10" height="7">&nbsp;</strike><a
                            href="/ssw/Products/ProdCategory.aspx?CategoryID=ROAD3"><strike>Dallas</strike></a>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Thursday 6th &amp; Friday 7th October 2005</strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>
                        <img alt="2Day.NET Training" src="/ssw/Images/USFlagTiny.jpg" width="10" height="7">&nbsp;<a
                            href="/ssw/Products/ProdCategory.aspx?CategoryID=ROAD3">New York</a></strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Monday 10th &amp; Tuesday 11th October 2005</strike>
                </td>
            </tr>
            <tr>
                <td style="border-left: 1pt solid windowtext; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>
                        <img alt="2Day.NET Training" src="/ssw/Images/BritishFlagTiny.gif" width="10" height="7">&nbsp;<a
                            href="/ssw/Products/ProdCategory.aspx?CategoryID=ROAD3">London</a></strike>
                </td>
                <td style="border-left: medium none; border-right: 1pt solid windowtext; border-top: medium none; border-bottom: 1pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
                    <strike>Friday 14th October 2005 (1 Day Course)</strike>
                </td>
            </tr>
        </table>
        &nbsp;<p>
            Did you know that if you are unable to attend any of the above sessions, you can
            still <a href="#materials">grab all of the course materials</a>?<br>
        </p>
        <p>
            <h2>Course Locations</h2>
            <strike><a target="_blank" href="/ssw/Redirect/MSNY.htm">New York, NY: Microsoft NY-NJ-CT
                District </a>
                <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif"
                    width="17" height="11"></strike><br>
            <strike><a target="_blank" href="/ssw/Redirect/London.htm">London, UK: QA St. James
                House, 10 Roseberry Ave, Holborn London EC1R 4TF</a>
                <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif"
                    width="17" height="11"></strike><br>
            <br>
            <br>
        </p>
        <h2>System Requirements</h2>
        <ul>
            <li>Windows XP + SP2</li>
            <li>Access 97 + SP2</li>
            <li>Access 2003 + SP1</li>
            <li>SQL Server 2000 + SP3</li>
            <li>SQL Server 2000 Reporting Services + SP1</li>
            <li>Visual Studio 2003</li>
            <li>Visual Studio 2005 Beta</li>
        </ul>
        Please note:
        <br>
        <ul>
            <li>If you want this on your PC, you will require 1GB of RAM for Virtual PC.</li>
            <li>Detailed Whitepapers will be provided</li>
            <li>Cost of the course is $535.00 AUS</li>
            <li>For Bookings simply click on the city of choice or for further information contact
                <a href="javascript:sendEmail('73636f74746d637068696c6c697073407373772e636f6d2e6175')"
                    onmouseover="javascript:displayStatus('73636f74746d637068696c6c697073407373772e636f6d2e6175'); return true;"
                    onmouseout="javascript:clearStatus(); return true;">Scott McPhillips</a></li>
        </ul>
        <h2>
            <a name="materials"></a>Course Materials</h2>
        If you aren't able to make it to this seminar we have the complete set of course
        material used by the trainer, Adam Cogan, and the students.<br>
        <br>
        For only $299.00US you receive:<br>
        <br>
        <ul>
            <li>Step-by-step hands-on lab exercises for each part of the course. These are very
                practical and easy to follow. You will be able to go through these even if you have
                not attended the course</li>
            <li>The full set of 3 Microsoft-approved how to migrate whitepapers which complement
                the hands-on lab exercises and include straightforward steps with lots of screen
                captures</li>
            <li>The full set of 3 Microsoft-approved whats new and different whitepapers, which
                cover the key differences between Access and SQL Server, Reporting Services, and
                .NET</li>
            <li>The full set of PowerPoint slides used by the trainer</li>
            <li>Other course materials used throughout the seminar, such as code samples and sample
                databases</li>
            <li>Access to regular updates of the course content as we make improvements and updates</li>
        </ul>
        <p>
            So why wait? <a href="/ssw/Shop/BasketInsert.aspx?ProductID=2DMATN">Order yours right
                now</a> to start migrating!
        </p>
        <a href="/ssw/Shop/BasketInsert.aspx?ProductID=2DMATN" class="red next">Order Course Materials</a>
        <h2>Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=SDM">Scott McPhillips</a><br>
        </p>
        <p>
            &nbsp;
        </p>
</asp:Content>
