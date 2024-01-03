<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SQL Server 2012 for Developers" %>
<%@ Register TagPrefix="text" TagName="Training" Src="/ssw/components/TrainingSidebar.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <h1>SQL Server 2012 for Developers</h1>
    <h2>Overview</h2>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div id="eventsummary">
        <ul class="vitals">
            <li>Duration
                <ul>
                    <li>3 hrs x 5 weeks</li>
                </ul>
            </li>
            <li>Fees
                <ul>
                    <li>$850</li>
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
    <p>This is a practical course for the ICT Industry utilising the latest SQL Server 2012 developed by Microsoft. SQL Server 2012 provides much anticipated improvements to the management studio with the move to Visual Studio shell, as well as new data quality tools and a wealth of programming enhancements. This course provides attendees with the knowledge necessary to take advantage of new features provided by SQL Server 2012. It provides a comprehensive overview of technologies, security and design best practices with particular emphasis on hands-on skills.</p>
    <p>On completion of this course, students should have the skills to:</p>
    <ul>

        <li>Learn to administer SQL Server 2012 databases </li>
        <li>Decide whether to migrate to SQL Server 2012 </li>
        <li>Develop and write code for SQL Server 2012 </li>
        <li>Use SQL Server 2012 reporting services </li>
        <li>Design a Service Oriented Architecture (SOA) </li>

     </ul>
     
     <p>This course has a particular emphasis on real world applications and skills. Topics covered include:</p>
     <ul>

         The major topics covered are:

         <li>SQL Server 2012 Architecture and Components </li>
        <li>Programming SQL Server 2012 with .NET </li>
        <li>Enhancements to Transact-SQL </li>
        <li>Data Quality Services </li>
        <li>Security features </li>
        <li>Geospatial data </li>
       
    </ul>
       
    <table class="outline">
     <tbody>
        <tr>
        <th scope="row"> Course Times </th>
            <td>Every Tuesday, 6pm-9pm</td>
        </tr>
        <tr>
        <th scope="row"> Course Location </th>
            <td>City campus - Building 10</td>
        </tr>
        <tr>
        <th scope="row">Requirements *<br /><small>* Systems will be provided during the demonstrations that have all necessary software installed.</small></th>
            <td>
            <ul>
                <li>USB Key so you can back up your solution to take home from the labs </li>
                <li>DVD ROM </li>
                <li>Pentium 4 with 1GB RAM or more</li>
                <li>VMWare player (Free from <a href="/ssw/Redirect/vmwareplayer.htm"> VMWare Player Home</a> <img width="17" height="11" alt="" src="/ssw/Images/LeaveSite.gif"/>). You are welcome to install VS.NET 2012 and SQL Server 2012 but we don't provide any support - support is provided for the VMWare image.</li>
            </ul>
            </td>
        </tr>
        </tbody>
        </table>
        
    <%--<h1>
        Session Dates </h1>
    <h2 class="accordionHeader">
        Part A: SQL Server 2008 for Developers</h2>
    <table class="outline">
        <tr>
            <th scope="col" class="topic">
                Session
            </th>
            <th scope="col">
                Topic
            </th>
            <th scope="col">
                Presenter
            </th>
        </tr>
        <tr>
            <td>1 - Tuesday 09/08/2011</td>
            <td>SQL Server 2008 Management Studio</td>
            <td>Adam Stephensen and Eric Phan</td>
        </tr>
        <tr>
            <td>2 - Tuesday 16/08/2011</td>
            <td>T-SQL Enhancements</td>
            <td>Adam Stephensen and Eric Phan</td>
        </tr>
         <tr>
            <td>3 -Tuesday 23/08/2011</td>
            <td>High Availability</td>
            <td>Adam Stephensen and Eric Phan</td>
        </tr>
         <tr>
            <td>4 - Tuesday 30/08/2011</td>
            <td>CLR Integration</td>
            <td>Adam Stephensen and Eric Phan</td>
        </tr>
         <tr>
            <td>5 - Tuesday 06/09/2011</td>
            <td>Full-Text Search</td>
            <td>Adam Stephensen and Eric Phan</td>
        </tr>
    </table> 
    
      <h2 class="accordionHeader">
        Part B: SQL Server 2008 for Business Intelligence (BI)</h2>
    <table class="outline">
        <tr>
            <th scope="col" class="topic">
                Session
            </th>
            <th scope="col">
                Topic
            </th>
            <th scope="col">
                Presenter
            </th>
        </tr>
        <tr>
            <td>1 - Tuesday 20/09/2011</td>
            <td>SQL Server Integration Services (SSIS) and creating a Data Warehouse</td>
            <td>Eric Phan</td>
        </tr>
        <tr>
            <td>2 - Tuesday 27/09/2011</td>
            <td>Analysis Services (OLAP)Creating a Cube + Cube Issues</td>
            <td>Eric Phan</td>
        </tr>
         <tr>
            <td>3 - Tuesday 04/10/2011</td>
            <td>Reporting Services</td>
            <td>Eric Phan</td>
        </tr>
         <tr>
            <td>4 - Tuesday 11/10/2011</td>
            <td>The Best 3rd Party Cube Browsers</td>
            <td>Eric Phan</td>
        </tr>
         <tr>
            <td>5 - Tuesday 18/10/2011</td>
            <td>Data Mining</td>
            <td>Eric Phan</td>
        </tr>
    </table> --%>
    
    <h2>  Instructions for Students: How to log in</h2>
        <ol>
        <!--SSW Code Auditor - Ignore next line(HTML)-->
            <li>From the "Session Menu" on the login screen, choose the "Windows XP.NET" session</li>
            <li>Type in your username and password. Your vmware image (session) will start automatically.
            <span style="font-size: 9pt; font-family: Verdana;">(You can also start it manually by running the command vmware from a terminal window)</span>
            </li>
        </ol>
    <br />
   <%-- <h2>Resources</h2>
    <p><a href="https://sharepoint.ssw.com.au/Training/UTSSQL/Pages/default.aspx">Lecture Notes</a></p>
    
    <h2>Previous Year's Courses</h2>
        <p><a href="/ssw/events/2008UTSSQL/default.aspx">2008</a><br />
           <a href="/ssw/events/2007SQL/default.aspx">2007</a></p>
    --%>
    <h2>Acknowledgements</h2>
        <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
        <br/>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JV">Jatin Valabjee</a>
        <br/>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=EP">Eric Phan</a>
        <br/>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JK">Justin King</a>
        <br/>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=PGG">Adam Stephensen</a>
        </p>   
     
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
<text:Training runat="server" />
    <div class="section">
        <h3>
            About the presenters</h3>
        <p>
            <img src="https://sharepoint.ssw.com.au/AboutUs/Employees/PublishingImages/peter_thumb.jpg"
             class="thumbnail" /><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=PGG">Adam Stephensen</a>
             is a Senior Software Architect at SSW, a Microsoft Certified Professional specializing in SQL Server .NET Solutions.</p>
    
        <p>
            <img src="https://sharepoint.ssw.com.au/AboutUs/Employees/PublishingImages/eric_thumb.jpg"
             class="thumbnail" /><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=EP">Eric Phan</a>
             Eric Phan is keen Solution Architect who doesn't mind a challenge. He has a in-depth knowledge of most aspects of .NET as well as experience with Java (J2SE & J2ME). He is also up to date with the latest developments in .NET world and an advocate of coding standards compliance and unit testing.</p>
    </div>
</asp:Content>
