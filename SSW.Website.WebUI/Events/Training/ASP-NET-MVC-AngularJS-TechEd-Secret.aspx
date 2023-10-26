<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master"
    Title="Modern Enterprise Best Practices with ASP.NET MVC and AngularJS" %>

<%--Do not change the title - we know it's long, but for SEO purposes--%>
<asp:Content ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="Images/thumbs/thumb-teched.jpg" alt="Enterprise MVC Apps" />
    <h1>Modern Enterprise Best Practices with AngularJS and ASP.NET MVC - secret page</h1>
    <h2>TechEd Satellite Workshop</h2>
</asp:Content>

<asp:Content ContentPlaceHolderID="index" runat="server">
    <h2>Course Details:</h2>
        
        <div class="details">
        
            <h3>Duration</h3>
            <p>2 days</p>

            <h3>Price</h3>
            <p><del>$599 + GST</del> $199 + GST - special discount for those in the know</p>

        </div>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <center><p>
        <img src="/ssw/events/training/images/Modern%20Enterprises%20Best%20Practices.png" border="0" alt="Modern Enterprise Best Practices with ASP.Net MVC and AngularJS" />
    </p></center>

    <h2>Abstract</h2>
    <p>If you're writing MVC applications for the enterprise (or want to start) you need to go beyond the simple technology demos. In this 2 day course you will learn proven tools and techniques for building enterprise-quality, maintainable, scalable, and robust applications.</p>
<%--    <p>The training doesn’t stop there, in addition to two jam-packed days on ASP.Net MVC, AngularJS, dependency injection, unit testing, loosely coupled architecture, SOLID principles, Windows Azure, continuous deployment and design patterns like Repository and Unit of Work, you'll leave with hands-on exercises you can take back to work and implement immediately. As an attendee you'll also have ongoing access to our comprehensive library of video training so that you can share your newfound knowledge inside your organisation.</p>--%>

    <h2>Agenda</h2>
    <h3>Day 1: The Enterprise Stuff Everyone Should Know - 9am – 5pm</h3>
    <ul>
        <li>Intro to Azure:
            <ul>
                <li>Azure Websites</li>
                <li>Azure SQL Database</li>
            </ul> 
        </li>
        <li>Intro to VisualStudio.com:
            <ul>
                <li>Source control using TFS-Git</li>
                <li>TFS Builds & Continuous Integration</li>
                <li>Continuous Deployment</li>
                <li>Application Insights</li>
            </ul>
<%--            <p><strong>Lab:</strong> Continuous Deployment from VisualStudio.com to Test and Prod Azure Websites using TFS-Git</p>--%>
        </li>
        <li>Intro to Unit Testing:
<%--            <p><strong>Lab: </strong> Unit Testing – The Easy Way</p>--%>

        <h4>Lunch</h4>

            <ul>
                <li>Enterprise Architecture Overview</li>
                <li>Dependency Injection</li>
                <li>Unit of Work and Repository Patterns</li>
            </ul>
<%--            <p><strong>Lab: </strong> Implementing the Unit of Work and Repository Patterns using a Dependency Injection Based Architecture</p>--%>
        </li>
    </ul>
    
    <h3>Day 2: Building an Enterprise Client: MVC (vs/+) AngularJs - 9am – 5pm</h3>
    <ul>
        <li>Writing Better Code using SOLID</li>
        <li>Intro to MVC</li>
        <li>Enterprise MVC Best Practices</li>
    </ul>
<%--    <p><strong>Lab: </strong> Building Enterprise ASP.Net MVC Applications</p>--%>

    <h4>Lunch</h4>
    <ul>
        <li>Intro to Angular</li>
        <li>Implementing SPAs in the Enterprise</li>
        <li>Leveraging Azure Mobile Services in your application</li>
        <li>MVC or Angular – What should I be building?</li>
    </ul>
<%--    <p><strong>Lab: </strong> Building Awesome Web Applications for the Enterprise</p>--%>

   <h2><a name="schedule"></a>Course Schedule</h2>
    <div id="eventsummary">
        <ul class="vitals conferenceprice">
            <li>Duration
                <ul>
                    <li>2 days</li>
                </ul>
            </li>
            <li>Price
                <ul>
                    <li style="width: 190px;"><del>$599</del> $199 + GST</li>
                </ul>
            </li>
        </ul>
    
        <ul class="schedule conference">
<%--                                   <li class="flag">
                <strong><img src="/ssw/events/images/flag_australia.png" class="flagicon" title="Melbourne" />Melbourne<br /><span>THU - FRI<br />9th - 10th OCT 2014</span></strong>
                    <ul>
 <li style="width: 100px;"><a href="/ssw/Shop/BasketInsert.aspx?ProductID=MEBPME"><span>
                            Book Now</span></a>&nbsp; &nbsp;Ended
                        </li>
                    </ul>
            </li>--%>
        
            <li class="flag">
                <strong><img src="/ssw/events/images/flag_australia.png" class="flagicon" title="Sydney" />Sydney<br /><span>WED - THU<br />29th - 30th OCT 2014</span></strong>
                    <ul>
<%--                        <li style="width: 100px;"><a href="/ssw/Shop/BasketInsert.aspx?ProductID=MEBPSC"><span>
                            Book Now</span></a>--%>&nbsp; &nbsp;Ended
                        </li>
                    </ul>
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
                            Gateway Court,<br />
                            Suite 13, 81-91 Military Road<br />
                            Neutral Bay, NSW 2089
                        </p>
                        <p><a href="/ssw/Company/Directions/NeutralBay/">View the map</a></p>
                    </td>
                </tr>

                        <p>
                            <a target="_blank" href="http://www.bing.com/maps/default.aspx?q=microsoft&amp;mkt=en-AU&amp;FORM=BYFD#JnE9LjQrRnJlc2h3YXRlcitQbCtTb3V0aGJhbmsrVklDKzMwNiU3ZXNzdC4wJTdlcGcuMSZiYj0tMzUuMzA5ODE2Nzk3MzkyOSU3ZTE0OS4xMzExNjA1NDY0MTQlN2UtMzUuMzE0MzY3Nzg3Nzk2MyU3ZTE0OS4xMjYxNzE2Mzc2NDY=">View the map</a>
                        </p>
                    </td>
                </tr>

               
            </tbody>
        </table>
    </div>

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
   <div class="section">
        <h3>
            About the presenter</h3>
            <p><img src="/ssw/events/Training/images/training_adams.jpg" width="75" class="thumbnail">

            <strong>Adam Stephensen</strong><br />
                Adam is a Solution Architect at SSW, and head mentor at <a href="http://FireBootCamp.com">http://FireBootCamp.com</a>, the gruelling 9 week boot camp for .NET developers. 
                He loves delivering high quality, scalable, enterprise solutions. He has a passion for Scrum, Continuous Delivery, and software craftsmanship. 
                This has led him to mentor and contribute to many .NET projects across a broad range of technologies. </p>
        <p>
                Adam is currently excited by the multitude of new tools and platforms coming from Microsoft, especially the combination of Visual Studio Online and Windows Azure.
            
            </p>    </div>
</asp:Content>
