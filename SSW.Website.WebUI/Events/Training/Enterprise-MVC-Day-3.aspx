<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Enterprise MVC Apps Day III: MVC Advanced: Going Beyond the Demos" %>
<%--Do not change the title - we know it's long, but for SEO purposes--%>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="description" content="Day 3 of a Complete overview of building enterprise MVC applications using ASP.NET <http://ASP.NET> MVC 4, including architecture best practices, data planning and UI implementation guildelines" />
</asp:Content>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <a href="#Schedule"><img src="/ssw/images/raven/Metro-Banner-MVC.jpg" alt="Banner for Enterprise MVC courses" /></a>
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
        <img class="icon" src="Images/thumbs/thumb-enterprise-mvc-course.png" alt="Enterprise MVC Apps" />
        <h1>Enterprise MVC Apps Day III</h1>
        <h2>MVC Advanced: Going Beyond the Demos</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server"> 
    <%--<h2>MVC Apps Day III:</h2>
    <ul>
        <li><a href="#Description">Description</a></li>
        <li><a href="#WhatYouWilllearn">What you'll learn</a></li>
        <li><a href="#CourseOutline">Course Outline</a></li>
        <li><a href="#TargetAudience">Target Audience</a></li>
        <li><a href="#Prerequisites">Prerequisites</a></li>
        <li><a href="#CourseIncludes">Course Includes</a></li>
        <li><a href="#ExtraInfo">Extra Info</a></li>
        <li><a href="#Trainers">Your Trainers</a></li>
        <li><a href="#Schedule">Course Schedule</a></li>
    </ul>--%>

    <h2>Course Details:</h2>
        
        <div class="details">
        
            <h3>Duration</h3>
            <p>1 day</p>

            <h3>Price</h3>
            <p>$400 + GST</p>

        </div>

    <div class="rounded">
        <h3>About the Trainers</h3>
    </div>
    <div class="section" style="padding-top: 20px;">
        <div class="clearfix tooltip">
            <img src="https://sharepoint.ssw.com.au/AboutUs/Employees/PublishingImages/Damian_profile_thumb.JPG"
                class="thumbnail" style="width:65px;" />
            <a data-content="With over ten years of experience both in software development and business analysis roles, Damian has had exposure to a large number of industries including government and finance. A software architect with a wide skillset, he is able to use his excellent technical skills and knowledge of business process to deliver the most effective solutions to our clients." 
            rel="popover" class="bootstrap-tooltip" data-original-title="Damian Brady" href="https://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Damian.aspx">
            Damian Brady
            </a><br />
            SSW<br />
        </div>

        <div class="clearfix tooltip">
        <img src="http://tv.ssw.com/wp-content/uploads/2012/02/AdamS.jpg"
                class="thumbnail" />
        <a data-content="Adam S is a senior developer with a decade of experience performing needs analysis, designing and building scalable, database-driven, distributed enterprise solutions incorporating web and windows interfaces." 
            rel="popover" class="bootstrap-tooltip" href="https://sharepoint.ssw.com.au/AboutUs/Employees/Pages/AdamS.aspx" 
            data-original-title="Adam Stephensen">
            Adam Stephensen</a><br />
            SSW<br />
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    
    <div class="scrum-greybox">
        <p><a href="Enterprise-MVC-Day-2.aspx">&lt;&lt; Day II – MVC Essentials: From Dependency Injection to Smoking Unit Tests</a></p>
        <p><a href="Enterprise-MVC-Day-4.aspx">&gt;&gt; Day IV – MVC Hard-core: Enterprise Data Access</a></p>
        <p>Attend the <a href="http://www.ssw.com.au/ssw/Events/Webinars/MVC-Apps.aspx">ASP.NET MVC 4 Webinar</a> for a FREE taster!</p>
    </div>

    <h2><a name="Description"></a>Description</h2>
        <div>
            <p>Hi, 
            <a 
            data-content="With over ten years of experience both in software development and business analysis roles, Damian has had exposure to a large number of industries including government and finance. A software architect with a wide skillset, he is able to use his excellent technical skills and knowledge of business process to deliver the most effective solutions to our clients." 
            rel="popover" class="bootstrap-tooltip" href="#Trainers" 
            data-original-title="Damian Brady">Damo</a> 
            and 
            <a 
            data-content="Adam S is a senior developer with a decade of experience performing needs analysis, designing and building scalable, database-driven, distributed enterprise solutions incorporating web and windows interfaces." 
            rel="popover" class="bootstrap-tooltip" href="#Trainers" 
            data-original-title="Adam Stephensen">Stevo</a> here,</p>
        </div>
        <p>Rick is a developer who has written one or two MVC web apps in his time.</p>
        <p>He knows how to get them off the ground and get everything working, but he wants to improve his skills so he can do it in a more "enterprisey" way.</p>
        <p>His employer is constantly pushing for "best practices" but he's not completely sure what that means in the context of MVC.</p>
        <p>Rick is also keen to learn some new techniques to get fantastic performance from the browser.</p>
        <p>In this course, we'll look at the best practices SSW developers use to produce enterprise-quality MVC web applications, as well as some new client-framework techniques for creating very responsive apps.</p>

    <h2><a name="WhatYouWilllearn"></a>What you'll learn</h2>
    <p>This course covers advanced ASP.NET MVC topics that are not covered in most MVC training. By the end of the course, attendees will know:</p>
    <ul>
        <li><b>Best Practices</b> - With MVC it's easier than ever to write well-architected code - if you know how. Discover how to build great solutions - it's not how the demos do it!</li>
        <li><b>Logging and Error Reporting</b> - Find out the best tools for including application-wide logging and error reporting with minimal work</li>
        <li><b>Advanced UI topics</b> - Learn how to take your UI to a new level of usefulness with advanced data binding techniques and client-side JavaScript frameworks</li>
    </ul>

    <h2><a name="CourseOutline"></a>Course Outline</h2>
    <h3 class="accordionHeader">Section 1 - Patterns, Principles, and Practices</h3>
        <ul>
            <li>SOLID Principles</li>
            <li>Key patterns for working with MVC</li>
            <li>MVC Best Practices</li>
        </ul>
    
    <h3 class="accordionHeader">Section 2 - Working with Cross-cutting concerns</h3>
        <ul>
            <li>Aspect Oriented Programming</li>
            <li>Enterprise Logging - using Log4Net</li>
            <li>Enterprise Exception handling - using Elmah</li>
        </ul>

    <h3 class="accordionHeader">Section 3 - Leveraging Client Frameworks</h3>
        <ul>
            <li>Client-side JavaScript frameworks</li>
        </ul>
    
    <h3 class="accordionHeader">Section 4 - Advanced Data Access</h3>
    <ul>
        <li>Advanced Data Binding</li>
        <li>Single Page Applications</li>
    </ul>
       
    <h2><a name="Bonus"></a>Bonus</h2>
        <img class="right" src="/ssw/Images/telerik-logo.jpg" alt="Telerik logo" />
        <p>Each attendee receives for free:</p>
        <ul class="good">
            <li>1 x <a href="http://www.telerik.com/products/justcode.aspx" target="_blank">JustCode </a> (valued $249)</li>
        </ul>
        <p>If you book more than one day of our Enterprise MVC course (Day 1, Day 2, Day 3, Day 4), you can also receive:</p>
        <ul class="good">
            <li><b>Book 2 courses:</b> JustCode + 1 x <a href="http://www.telerik.com/products/mocking.aspx" target="_blank">JustMock</a> (valued $399)</li>
            <li><b>Book 3 courses:</b> JustCode, JustMock and 1 x <a href="http://www.kendoui.com/web.aspx" target="_blank">KendoUI Web</a> (valued $399)</li>
            <li><b>Book 4 courses:</b> JustCode, JustMock, KendoUI Web, and 1 x <a href="http://www.telerik.com/products/memory-performance-profiler.aspx" target="_blank">JustTrace</a> (valued $399)</li>
        </ul>
        <p>That's up to <b style="font-size:larger;">$1,446</b> in extra value!</p>

    <h2><a name="TargetAudience"></a>Target Audience</h2>
        <p>This course is intended for:</p>
        <ul>
            <li>.Net developers looking to master ASP.NET MVC development</li>
        </ul>

    <h2><a name="Prerequisites"></a>Prerequisites</h2>
        <p>Before attending this course, it is recommended that students have the following skills:</p>
        <ul>
            <li>C#</li>
            <li>ASP .NET Web development skills</li>
            <li>Basic familiarity with the web, HTML, CSS, and JavaScript</li>
        </ul>

    <h2><a name="CourseIncludes"></a>Course Materials</h2>
        <ul>
            <li>After the course you will receive an email with links to the PowerPoint slides, the source code, and the hands on lab exercises.</li>
        </ul>

    <h2><a name="ExtraInfo"></a>Lab Requirements</h2>
        <ul>
            <li>If you wish to complete the hands on lab, you will need to bring a laptop with Visual Studio 2012 (any edition) installed.</li>
            <li>(If you don’t have a suitable laptop you can <a href="/ssw/Events/Venues/Hire-Conference-Room.aspx#laptop-hire">hire a laptop</a> from SSW, or share a laptop with another attendee.)</li>
        </ul>

    <h2><a name="Trainers"></a>Your trainers</h2>
        <table class="normal">
            <tr>
                <td><img src="https://sharepoint.ssw.com.au/AboutUs/Employees/PublishingImages/Damian_profile_thumb.JPG" style="width: 150px;"/></td>
                <td><h3>Damian</h3>
                <p>With over ten years of experience both in software development and business analysis roles, Damian has had exposure to a large number of industries including government and finance. A software architect with a wide skillset, he is able to use his excellent technical skills and knowledge of business process to deliver the most effective solutions to our clients.</p>
                <p><a href="https://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Damian.aspx">Link to Damian's profile</a></p>
                <p><a href="http://www.damianbrady.com.au">Link to Damian's blog</a></p>
                </td>
            </tr>
            <tr>
                <td><img src="images/training_adams.jpg" style="width: 150px;"/></td>
                <td><h3>Adam Stephensen</h3>
                <p>Adam S is a senior developer with a decade of experience performing needs analysis, designing and building scalable, database-driven, distributed enterprise solutions incorporating web and windows interfaces.</p>
                <p><a href="https://sharepoint.ssw.com.au/AboutUs/Employees/Pages/AdamS.aspx">Link to Adam's profile</a></p>
                <p><a href="http://adamstephensen.wordpress.com/">Link to Adam's blog</a></p>
                </td>
            </tr>
        </table>  
    <div class="greybox">
        <p>Attend the Online GoToWebinar session of the full day MVC course if you are unable to attend a location.
        <p>Only $80 + GST for 8 hours of training!</p>
    </div>
    <h2><a name="Schedule"></a>Course Schedule</h2>
    <div id="eventsummary">

        <ul class="vitals conferenceprice">
            <li>Duration
                <ul>
                    <li>1 day</li>
                </ul>
            </li>
            <li>Price
                <ul>
                    <li style="width:190px;">$400 + GST</li>
                </ul>
            </li>
        </ul>
        <ul class="schedule conference">
            <li class="flag">
                <strong><img src="/ssw/events/images/flag_australia.png" class="flagicon"
                    title="Perth" />Perth<br /><span>12th June 2013</span></strong>
                    <span class="completed">COMPLETED</span>
            </li>
            <li class="flag">
                <strong><img src="/ssw/events/images/flag_australia.png" class="flagicon"
                    title="Adelaide" />Adelaide<br /><span>18th June 2013</span></strong>
                    <span class="completed">COMPLETED</span>
            </li>
            <li class="flag">
                <strong><img src="/ssw/events/images/flag_australia.png" class="flagicon"
                    title="Melbourne" />Melbourne<br /><span>20th June 2013</span></strong>
                    <span class="completed">COMPLETED</span>
            </li>
            <li class="flag">
                <strong><img src="/ssw/events/images/flag_australia.png" class="flagicon"
                    title="Brisbane" />Brisbane<br /><span>24th June 2013</span></strong>
                    <span class="completed">COMPLETED</span>
            </li>
                        
            <li class="flag">
                <strong><img src="/ssw/events/images/flag_australia.png" class="flagicon"
                    title="Sydney" />Sydney<br /><span>27th June 2013</span></strong>
                    <span class="completed">COMPLETED</span>
            </li>
            <li class="flag">
                <strong><img src="/ssw/events/images/flag_australia.png" class="flagicon"
                    title="Sydney" /><span style="red">*NEW*</span>Online<br /><span>27th June 2013</span></strong>
                    <span class="completed">COMPLETED</span>
            </li>
        </ul>
    </div>

    <div class="section">
        <h2>Location Details</h2>
        <table class="outline" style="width: 100%;" cellpadding="2">
            <tbody>
                <tr>
                    <th style="width: 20%;">Sydney (SSW)
                    </th>
                    <td>
                        <p>
                            Gateway Court,</br>
                            Suite 13, 81-91 Military Road</br>
                            Neutral Bay, NSW 2089
                        </p>
                        <p><a href="/ssw/Company/Directions/NeutralBay/">View the map</a></p>
                    </td>
                </tr>
                <tr>
                    <th>Adelaide
                    </th>
                    <td>
                        <p>
                            Level 12, Aurora Building<br>
                            147 Pirie Street<br>
                            Adelaide SA 5000
                        </p>
                        <p>
                            <a target="_blank" href="http://www.bing.com/maps/?v=2&amp;where1=147%20Pirie%20St%2c%20Adelaide%2c%20SA%205000&amp;q=147%20Pirie%20Street%2c%20ADELAIDE%20SA%205000&amp;form=LMLTSN&amp;cp=-34.92549965091965~138.60503917&amp;lvl=16&amp;sty=r&amp;encType=1">View the map</a>
                        </p>
                    </td>
                </tr>
                <tr>
                    <th>Brisbane
                    </th>
                    <td>
                        <p>
                            Level 28, 400 George Street<br>
                            Brisbane QLD 4000
                        </p>
                        <p>
                            <a target="_blank" href="http://www.bing.com/maps/?v=2&amp;where1=400%20George%20St%2c%20Brisbane%20City%2c%20QLD%204000&amp;q=400%20George%20Street%2c%20Brisbane%20QLD%204000&amp;form=LMLTSN&amp;cp=-27.468273257689716~153.02087421999997&amp;lvl=17&amp;sty=r&amp;encType=1">View the map</a>
                        </p>
                    </td>
                </tr>
                <tr>
                    <th>Canberra
                    </th>
                    <td>
                        <p>
                            Walter Turnbull Building<br>
                            Level 2, 44 Sydney Ave<br>
                            Barton ACT 2600
                        </p>
                        <p>
                            <a target="_blank" href="http://www.bing.com/maps/default.aspx?q=microsoft&amp;mkt=en-AU&amp;FORM=BYFD#JnE9LjQ0K1N5ZG5leStBdmUrQmFydG9uK0FDVCsyNjAwJTdlc3N0LjAlN2VwZy4xJmJiPS0yNy40NjQ0OTE5NDk0MjA2JTdlMTUzLjAzNjc1MjQ2MjM4NyU3ZS0yNy40NzQzODg1Njg5NTMzJTdlMTUzLjAyNjc3NDY0NDg1Mg==">View the map</a>
                        </p>
                    </td>
                </tr>
                <tr>
                    <th>Melbourne
                    </th>
                    <td>
                        <p>
                            Level 5, 4 Freshwater Pl<br>
                            Southbank VIC 3006
                        </p>
                        <p>
                            <a target="_blank" href="http://www.bing.com/maps/default.aspx?q=microsoft&amp;mkt=en-AU&amp;FORM=BYFD#JnE9LjQrRnJlc2h3YXRlcitQbCtTb3V0aGJhbmsrVklDKzMwNiU3ZXNzdC4wJTdlcGcuMSZiYj0tMzUuMzA5ODE2Nzk3MzkyOSU3ZTE0OS4xMzExNjA1NDY0MTQlN2UtMzUuMzE0MzY3Nzg3Nzk2MyU3ZTE0OS4xMjYxNzE2Mzc2NDY=">View the map</a>
                        </p>
                    </td>
                </tr>
                <tr>
                    <th>Perth
                    </th>
                    <td>
                        <p>
                            Level 3, 100 St Georges Terrace<br>
                            Perth WA 6000
                        </p>
                        <p>
                            <a target="_blank" href="http://www.bing.com/maps/default.aspx?q=microsoft&amp;mkt=en-AU&amp;FORM=BYFD#JnE9LjEwMCtTdCtHZW9yZ2VzK1RlcnJhY2UrUGVydGgrV0ErNjAwMCU3ZXNzdC4wJTdlcGcuMSZiYj0tMzcuODEzMTg3NjczNjA3MSU3ZTE0NC45NzI5Mjk4MTc1MzUlN2UtMzcuODMwODA5NDc2NzIyNSU3ZTE0NC45NTI5NzQxODI0NjU=">View the map</a>
                        </p>
                    </td>
                </tr>
                <%--<tr>
                    <th>Darwin
                    </th>
                    <td>
                        <p>
                            Paspalis Centrepoint<br>
                            Office 12, Level 1, 48-50 Smith St<br>
                            Darwin NT 0800
                        </p>
                        <p>
                            <a target="_blank" href="http://www.bing.com/maps/default.aspx?q=microsoft&amp;mkt=en-AU&amp;FORM=BYFD#JnE9LjQ4LTUwK1NtaXRoK1N0K0RhcndpbitOVCswODAwJTdlc3N0LjAlN2VwZy4xJmJiPS0zMS45NDU1MDM5ODkyMjg0JTdlMTE1Ljg2NzI4MDE3OTkzJTdlLTMxLjk2NDQzMTgyNzk0OSU3ZTExNS44NDczMjQ1NDQ4NTk=">View the map</a>
                        </p>
                    </td>
                </tr>
                <tr>
                    <th>Hobart
                    </th>
                    <td>
                        <p>
                            85 Macquarie St<br>
                            Hobart TAS 7000
                        </p>
                        <p>
                            <a target="_blank" href="http://www.bing.com/maps/default.aspx?q=microsoft&amp;mkt=en-AU&amp;FORM=BYFD#JnE9Ljg1K01hY3F1YXJpZStTdCtIb2JhcnQrVEFTKzcwMDAlN2Vzc3QuMCU3ZXBnLjEmYmI9LTEyLjQ1MTU4NDMwMjY4NjclN2UxMzAuODUwOTk0MDExMjY3JTdlLTEyLjQ3MzM2NzAxMjc1OTMlN2UxMzAuODMxMDM4Mzc2MTk2">View the map</a>
                        </p>
                    </td>
                </tr>--%>
            </tbody>
        </table>
    </div>

<%--    <h2>Location Details</h2>
    <table class="outline" width="100%">
        <tr>
            <th scope="row">Melbourne</th>
            <td>TBC</td>
        </tr>
        <tr>
            <th scope="row">Brisbane</th>
            <td>TBC</td>
        </tr>
        <tr>
            <th scope="row">Sydney</th>
            <td>SSW Offices | <a class="directions" href="/ssw/Company/Directions/NeutralBay/">Directions</a></td>
        </tr>
    </table>

    <h2>Other SolidQ Courses</h2>
    <ul>
        <li><a href="BI-Immersion.aspx">BI Immersion</a></li>
        <li><a href="Optimization-Performance.aspx">Optimization/Performance Tuning and Troubleshooting</a></li>
        <li><a href="SQL-Server-2012-Integration-Services.aspx">Accelerated SQL Server 2012 Integration Services</a></li>
    </ul>--%>

</asp:Content>
