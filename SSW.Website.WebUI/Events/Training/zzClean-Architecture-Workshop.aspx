<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="The Clean Architecture 2-day Workshop - In-person & Online Live Event" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">

    <!-- Twitter universal website tag code -->
    <script>
        !function (e, t, n, s, u, a) {
            e.twq || (s = e.twq = function () {
                s.exe ? s.exe.apply(s, arguments) : s.queue.push(arguments);
            }, s.version = '1.1', s.queue = [], u = t.createElement(n), u.async = !0, u.src = '//static.ads-twitter.com/uwt.js',
                a = t.getElementsByTagName(n)[0], a.parentNode.insertBefore(u, a))
        }(window, document, 'script');
        // Insert Twitter Pixel ID and Standard Event data below
        twq('init', 'nvmrl');
        twq('track', 'PageView');
    </script>
    <!-- End Twitter universal website tag code -->

    <!-- Open Graph for Social Media sharing -->
    <meta property="og:site_name" content="SSW" />
    <meta property="og:title" content="The Clean Architecture 2-day Workshop" />
    <meta property="og:url" content="https://www.ssw.com.au/ssw/Events/Training/Clean-Architecture-Workshop.aspx" />
    <meta property="og:type" content="events.event" />
    <meta property="og:image" content="https://ssw.com.au/ssw/Events/Training/Images/Workshop-CleanArchitecture-Website_online.jpg" />
    <meta property="og:description"
        content="In this hands-on workshop we will cover the best approach to building enterprise applications using Clean Architecture and .NET. You will be building your own application from scratch." />
    <meta name="twitter:card" content="summary_large_image" />
    <!-- End Open Graph for Social Media sharing -->

</asp:Content>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <div class="carousel slide hidden-xs" data-ride="carousel">
        <img src="/ssw/Events/Training/Images/Workshop-CleanArchitecture-Website.jpg" />
    </div>
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="/ssw/EventsCalendar/Images/Workshop-Icon-CleanArchitecture.jpg" alt="Clean Architecture icon"
        class="icon" />
    <h1>The Clean Architecture 2-day Workshop</h1>
    <h2>The best approach to building enterprise applications using Clean Architecture and .NET</h2>

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div id="eventsummary">
        <div class="row show-grid basicinfo">
            <div class="col-sm-12 ">
                <p>Duration<br />
                    <span>2 Days</span></p>
                <p>Price<br />
                    <span>$440 inc GST</span></p>
            </div>
        </div>

        <div class="row venueslist show-grid"> 
            <div class="col-sm-4 eventinfo">
                <p>
                    <strong>Brisbane</strong><br />
                    <span>24th (Mon) - 25th (Tue) JUL 2023</span><br />
                    <span>9am - 5pm</span>
                </p>
                <p><a href=" https://www.eventbrite.com.au/e/clean-architecture-2-day-workshop-brisbane-tickets-632508980387" target="_blank" class="btn bookNow ignore">Book Now</a></p>
                <p><a class="map ignore" href="#Location">SSW Brisbane</a></p>
            </div>
 
            <div class="col-sm-4 eventinfo">
                <p>
                    <strong>Melbourne</strong><br />
                    <span>1st (Tue) - 2nd (Wed) AUG 2023</span><br />
                    <span>9am - 5pm</span>
                </p>
                <p><a href="https://www.eventbrite.com.au/e/clean-architecture-2-day-workshop-melbourne-tickets-632510504947" target="_blank" class="btn bookNow ignore">Book Now</a></p>
                <p><a class="map ignore" href="#Location">SSW Melbourne</a></p>
            </div>

            <div class="col-sm-4 eventinfo">
                <p>
                    <strong>Sydney + Online</strong><br />
                    <span>7th (Mon) - 8th (Tue) AUG 2023</span><br />
                    <span>9am - 5pm</span>
                </p>
                <p><a href="https://www.eventbrite.com.au/e/clean-architecture-2-day-workshop-sydney-online-tickets-632511417677" target="_blank" class="btn bookNow ignore">Book Now</a></p>
                <p><a class="map ignore" href="#Location">SSW Sydney</a></p>
            </div>
        </div>

        <div class="row show-grid hostedbyinfo">
            <div class="col-sm-12">
                <p>Hosted by <strong>SSW</strong></p>
            </div>
        </div>
    </div>

    <div class="section">
        <p><strong>All of our SSW offices are a COVID safe environment and guests will be required to wash their hands on arrival and use hand sanitizer to keep everyone healthy.</strong></p>
        <p>We will be running this course <strong>in-person</strong> from SSW Chapel venues, <strong>as well as ONLINE</strong> for those who can't physically join us.</p>

        <p>In this hands-on workshop we will cover the best approach to building enterprise applications using Clean
            Architecture and .NET 7. You will be building your own application from scratch.</p>

        <p class="greybox">PLEASE ENSURE YOU PURCHASE THE CORRECT TICKET - THERE IS <strong>1 FOR IN-PERSON</strong> & <strong>1 FOR ONLINE ATTENDANCE</strong>.</p>

        <h2>Introduction</h2>
        <p>The explosive growth of web frameworks and the demands of users have changed the approach to building
            enterprise applications. Many challenges exist and just getting started can be a daunting prospect. Let's
            change that now.</p>
        <p>This hands-on workshop will provide practical guidance and recommendations. We will cover architecture,
            technologies, tools and frameworks. We will examine strategies for organizing your projects, folders and
            files. We will design a system that is simple to build and maintain - now and well into the future.</p>
        <p>You will leave this hands-on workshop having developed the foundation and structure for your next enterprise
            application, along with the knowledge to take your enterprise application development to the next level.</p>

        <dl class="image">
            <dt><img src="images/cloud-architecture-diagram.png" /></dt>
        </dl>

        <h2>Who Should Attend</h2>
        <p>All developers who would like to learn more about Clean Architecture and/or .NET.</p>
        <p>Experience: Knows C#</p>

        <h2>Computer Setup</h2>
        <p>You will need a computer with the latest versions of the following tools installed:</p>
        <ul>
            <li>.NET 7 SDK (latest)</li>
            <li>WSL2</li>
            <li>Docker Desktop</li>
            <li>Visual Studio 2022 / JetBrains Rider / VS Code</li>
        </ul>
    </div>

    <div class="section">
        <h2>Agenda</h2>
        <p><strong>Part 1: Clean Architecture Basics</strong></p>
        <ul>
            <li>See the pain of a badly architected solution</li>
            <li>Hands-on Refactor to Clean Architecture</li>
            <li>Learn the core principles of Clean Architecture</li>
        </ul>

        <p><strong>Part 2: Clean Architecture Applied</strong></p>
        <ul>
            <li>Introduction to the SSW.Clean Architecture Template</li>
            <li>Build a .NET Web API using: 
            <ul>
                <li>Minimal APIs</li>
                <li>Strongly Typed IDs</li>
                <li>MediatR and CQRS</li>
                <li>Application & Integration Events</li>
                <li>Domain Driven Design</li>
                <li>Specifications</li>
            </ul>
            </li>            
            <li>Discuss trade-offs when building an application</li>
            <li>Add a GraphQL Presentation Layer</li>
        </ul>

        <p><strong>Part 3: Clean Testing</strong></p>
        <ul>
            <li>Introduction to Testing in the SSW.CleanArchitecture template</li>
            <li>Unit Tests
                <ul>
                    <li>xUnit</li>
                    <li>FluentAssertions</li>
                    <li>NSubstitute</li>
                </ul>
            </li>
            <li>Integration Tests
                <ul>
                    <li>Easily create Databases using Test Containers</li>
                </ul>
            </li>
            <li>Architecture Tests</li>
        </ul>
    </div>

    <div class="section" id="eventlocations">
        <a name="Location"></a>
        <h2>Location Venues</h2>
        <div class="row venueslist show-grid">
            <div class="col-sm-4 eventinfo">
                <p><strong class="map">SSW Chapel Melbourne</strong></p>
                <p>Level 1<br />
                    370 Little Bourke Street<br />
                    Melbourne - VIC 3000<br /></p>
                <p><a href="/ssw/company/directions/melbourne/">Directions</a></p>
            </div>
            <div class="col-sm-4 eventinfo">
                <p><strong class="map">SSW Chapel Brisbane</strong></p>
                <p>Level 1<br />
                    Unit 4/471 Adelaide Street<br />
                    Brisbane - QLD 4000<br /></p>
                <p><a href="/ssw/company/directions/brisbane/">Directions</a></p>
            </div>
            <div class="col-sm-4 eventinfo">
                <p><strong class="map">SSW Chapel Sydney</strong></p>
                <p>Level 1<br />
                    81 - 91 Military Road<br />
                    Neutral Bay, Sydney - NSW 2089<br /></p>
                <p><a href="/ssw/company/directions/neutralbay/">Directions</a></p>
            </div>
        </div>
        <p><a class="red btn next ignore" href="http://sswchapel.com.au/">SSW Chapel Website</a></p>
    </div>

    <div class="section">
        <h2>Past Events</h2>
           
           <div class="col-sm-3">
                <h3>Sydney</h3>
                <ul>
                    <li>24th – 25th Aug 2022</li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h3>Melbourne</h3>
                <ul>
                    <li>22nd – 23rd Aug 2022</li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h3>Brisbane</h3>
                <ul>
				    <li>14th – 15th Jul 2022</li>
                </ul>
            </div>
             <div class="col-sm-3">
                <h3>Online</h3>
                <ul>
                    <li>9th – 10th Jul 2020</li>
                </ul>
            </div>
    </div>

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">

    <div class="section">
        <h3>About the presenters</h3>
            <p><img src="images/danielmackay_thumb.jpg" class="thumbnail" alt="Daniel Mackay" />
            <p><a href="https://www.ssw.com.au/people/daniel-mackay">Daniel Mackay</a> is a Solution Architect at SSW, and specialises in Cloud Architecture, Software Architecture, and DevOps. He has over 20+ years of professional experience. He has worked with .NET since 2009, and is passionate about web-based technologies such as .NET Core, ASP.NET Core, EF Core, React, Next.js and Azure.</p>
            <hr />
            <p><img src="images/lukeparker_thumb.jpg" class="thumbnail" alt="Luke Parker" />
            <p><a href="https://www.ssw.com.au/people/luke-parker">Luke Parker</a> is a Software Engineer at SSW, an expert in .NET and Clean Architecture. With a passion for sharing knowledge, he loves educating the developer community with thought-provoking blogs at lukeparker.dev, covering hot topics for the modern Microsoft developer. As a local Brisbane Full Stack User Group organizer and presenter, he's all about creating thriving tech communities.</p>
    </div>
    <div class="section">
        <p>You can also check our <a href="https://www.ssw.com.au/ssw/Events/Training/Clean-Architecture-Superpowers-Tour.aspx">1-Day Clean Architecture Superpowers Tour</a>.</p>
    </div>


    <br />
    <br />
    <div class="rounded">
        <h3>Follow us on Twitter</h3>
    </div>
    <div>
        <a class="twitter-timeline" data-height="300" data-link-color="#cc4141" href="https://twitter.com/SSW_TV?ref_src=twsrc%5Etfw">Tweets by SSW_TV</a>
        <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
    </div>

</asp:Content>