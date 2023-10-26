<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="Developing Window and Web Application with MVC 4.0 and Visual Studio 2012" %>
<%@ Register TagPrefix="text" TagName="Training" Src="/ssw/components/TrainingSidebar.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <h1>Developing Web Application with MVC 5.0 and Visual Studio 2013</h1>
    <h2>C# and VB.NET</h2>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div id="eventsummary">
        <ul class="vitals">
            <li>Duration
                <ul>
                    <li>3 hours x 10 weeks</li>
                </ul>
            </li>
            <li>Price (ex GST)
                <ul>
                    <li>$1,650</li>
                </ul>
            </li>
        </ul>
        <ul class="schedule">
            <li><strong>UTS Sydney</strong>
                <ul>
                    <li class="finished">Course has finished for the semester. It will be run again in 2014</li>
                </ul>
            </li>
        </ul>
    </div>

        <p>UTS has the proud distinction of being the first academic institution in the world to teach participants to develop on the .NET Framework with Visual Studio 2013. 
            The .NET Framework is one of the leading Microsoft development platforms for Web applications and this short course aims to introduce attendees to the latest 
            Microsoft Development platform Visual Studio 2013.</p>

        <p>Developing Web Applications with MVC 5.0 and Visual Studio 2013 introduces participants to the Microsoft .NET Framework through hands-on exercises. 
       Coding will be done in the C# language. The class examples can be completed in either C# or VB .NET.</p>

        <P>This course provides an introduction to the .NET framework for participants who want to pursue a career in Microsoft .NET development.</p>

        <p>At course completion students will be able to:</p>
    <ul>
        <li>Develop web applications using ASP.NET MVC</li>
        <li>Explain the main concepts behind the common language runtime </li>
        <li>Create Web Services using WebAPI </li>
        <li>Create and use classes, interfaces, delegates </li>
        <li>Handle system events and generate custom events </li>
    </ul>
    <p>
        Details are available via the <a href="https://shortcourses-bookings.uts.edu.au/Clientview/Schedules/ScheduleDetail.aspx?ScheduleID=1160&EventID=1065" target="_blank"
            class="external">UTS Programming Short Courses</a> page</p>
    <table class="outline">
        <tr>
            <th scope="row">
                Course Times
            </th>
            <td>
                To be confirmed
            </td>
        </tr>
        <tr>
            <th scope="row">
                Venue
            </th>
            <td>
                To be confirmed
            </td>
        </tr>
        <tr>
            <th scope="row">
                Who should attend
            </th>
            <td>
                <ul>

                   <li>Developers with a good understanding of object oriented programming and developers wanting to upgrade their skills on the Microsoft platform</li>
                    <li>Intermediate programmers who will design and build Web based applications using .NET framework</li>
                    <li>Programmers who are evaluating Microsoft .NET tools, such as Microsoft Visual Studio .NET 2013.</li>

                </ul>
            </td>
        </tr>
    </table>
<%--    <h2 class="accordionHeader">
        Course Schedule</h2>
    <table width="100%" class="outline">
        <caption>
            Part 1
        </caption>
        <tr>
            <th scope="col">
                Session
            </th>
            <th scope="col">
                Description
            </th>
        </tr>
        <tr>
            <td>
                Overview
            </td>
            <td>
                <ul>
                    <li>Overview of .NET </li>
                    <li>Managed Objects in the CLR </li>
                    <li>Reviewing Object Orientation
                        <ul>
                            <li>VB.NET concepts </li>
                            <li>C# concepts </li>
                            <li>Singleton </li>
                        </ul>
                    </li>
                    <li>The 4 projects </li>
                    <li>Creating Windows Forms </li>
                    <li>Opening forms </li>
                    <li>Event Handlers </li>
                    <li>Menus </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Data in Forms
            </td>
            <td>
                <ul>
                    <li>LINQ to SQL </li>
                    <li>DataBinding </li>
                    <li>DataGrid </li>
                    <li>Input Validation </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Usability - AJAX and other ASP.NET Features
            </td>
            <td>
                <ul>
                    <li>Implement FxCop </li>
                    <li>Implement SSW Code Auditor </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Deployment and Security on Windows Forms
            </td>
            <td>
                <ul>
                    <li>Setting files </li>
                    <li>ClickOnce </li>
                    <li>Authentication and Authorization </li>
                    <li>Impersonation </li>
                    <li>Security Attributes </li>
                    <li>Assembly Strong Naming </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Web Services and Threading
            </td>
            <td>
                <ul>
                    <li>Creating Web Services </li>
                    <li>Consuming Web Services </li>
                    <li>Background Worker process and Asynchronous programming </li>
                </ul>
            </td>
        </tr>
    </table>
    <table width="100%" class="outline">
        <caption>
            Part 2
        </caption>
        <tr>
            <th scope="col">
                Session
            </th>
            <th scope="col">
                Description
            </th>
        </tr>
        <tr>
            <td>
                Overview
            </td>
            <td>
                <ul>
                    <li>Creating Web Forms </li>
                    <li>Opening pages </li>
                    <li>Event Handlers </li>
                    <li>Menus </li>
                    <li>Make a user control </li>
                    <li>Master Pages </li>
                    <li>Web.config </li>
                    <li>Session/View State </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Data in Forms
            </td>
            <td>
                <ul>
                    <li>LINQ to SQL </li>
                    <li>DataBinding </li>
                    <li>DataGrid </li>
                    <li>Input Validation </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Usability - Rules to Better Windows Forms
            </td>
            <td>
                <ul>
                    <li>Cross Page Post Backs </li>
                    <li>Validation Groups </li>
                    <li>XML Databinding </li>
                    <li>URL Rewriting </li>
                    <li>Implement AJAX using Microsoft AJAX (formerly ATLAS)</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Reporting Services and Web Security
            </td>
            <td>
                <ul>
                    <li>RS Capabities </li>
                    <li>RS Architecture </li>
                    <li>RS Configuration </li>
                    <li>Security and authentication in web forms </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                Advanced Topics &amp; Future Technology
            </td>
            <td>
                <ul>
                    <li>Generics </li>
                    <li>Unit Tests </li>
                    <li>Logging </li>
                    <li>Profiling </li>
                    <li>Visual Studio Team System </li>
                    <li>WPF, WCF, WWF, Silverlight</li>
                </ul>
            </td>
        </tr>
    </table>
    <h2 class="accordionHeader">
        System Requirements</h2>
    <p>
        Systems will be provided during the demonstrations that have all necessary software
        installed.
    </p>
    <p>
        Note:</p>
    <ul>
        <li>Bring a USB Key so you can back up your solution to take home from the labs</li>
        <li>You are welcome to install VS.NET 2008 and SQL Server 2008, but we don&#39;t provide
            any support </li>
    </ul>
    <br />
    <h2 class="accordionHeader">
        Instructions for Students: How to log in</h2>
    <ol>
    <!--SSW Code Auditor - Ignore next line(HTML)-->
        <li>From the &quot;Session Menu&quot; on the login screen, choose the &quot;Windows
            XP.NET&quot;session</li>
        <li>
         Type in your username and password and your VMware image (session) will start automatically. Or you can also start it manually by running the command VMware from a terminal window.
        </li>
    </ol>
    <h2 class="accordionHeader">
        Resources</h2>   
    <ul> Books:
        <li><a href="/ssw/Redirect/ProCSharp2008.htm" target="_blank"
            class="external">Professional C# 2008 (Wrox Professional Guides) </a>(Recommended)</li>
        <li><a href="/ssw/Redirect/BeginningCSharp2008.htm" target="_blank"
            class="external">Beginning Microsoft Visual C# 2008 (Wrox Beginning Guides) </a>(Recommended)</li>
        <li><a href="/ssw/Redirect/ProVB2008.htm" target="_blank"
            class="external">Professional Visual Basic 2008 (Programmer to Programmer) </a></li>
        <li><a href="/ssw/Redirect/BeginningVB2008.htm" target="_blank"
            class="external">Beginning Microsoft Visual Basic 2008 (Wrox Beginning Guides)</a></li>
        
    </ul>
    
    <h2 class="accordionHeader">
        Course Resources
    </h2>
    <ul>
        <li><a href="resources.aspx">Lecture Notes</a></li>
    </ul>
    <h2 class="accordionHeader">
        Previous Year's Courses</h2>
    <ul>
        <li><a href="/ssw/events/2008UTSNET/default.aspx">2008</a></li>
        <li><a href="/ssw/events/2007UTSNET/default.aspx">2007</a></li>
        <li><a href="/ssw/events/2006UTSNET/default.aspx">2006</a></li>
        <li><a href="/ssw/events/2005UTSNET/default.aspx">2005</a></li>
    </ul>
    <h2 class="accordionHeader">
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=EP">Eric Phan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=GMH">Greg Harris</a><br>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JV">Jatin Valabjee</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=PGG">Peter Gfader</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TK">Tim Kremer</a><br />
    </p>--%>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
<text:Training runat="server" />
<%--    <div class="rounded">
        <h3>
            Special Offer</h3>
    </div>
    <div class="section offer">
        <div class="onsite">
            <h4>
                On-Site Training</h4>
            <p>
                Get hands-on training on this topic for all your employees.</p>
            <p>
                Price include up to 10 attendees. Additional pro-rated.</p>
            <dl>
                <dt>1 Day</dt>
                <dd class="price">
                    $2,800</dd>
            </dl>
            <dl>
                <dt>2 Days </dt>
                <dd class="price">
                    $5,400</dd>
            </dl>
            <div class="clear">
            </div>
        </div>
        <div class="customworkshop">
            <h4>
                Custom Workshop</h4>
            <p>
                Customize this workshop to suit your company's needs.</p>
            <p>
                Do it your way - at our facility or your own premises; small group or for all employees.</p>
                <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','Custom Workshop - Visual Studio .NET',this)" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer">
            696e666f72407373772e636f6d2e6175 </a>
          </div>
    </div>
    <div class="section">
        <h3>
            Power Sessions</h3>
        <p>
            Power sessions are developer training presentations focusing on specific subject
            and are generally 1-2 hours long. They are packed with practical tips on .NET, SQL,
            Silverlight, Visual Studio and more.
        </p>
        <p>
            <a href="Sessions.aspx">See all Power Sessions topic</a></p>
    </div>--%>
</asp:Content>
