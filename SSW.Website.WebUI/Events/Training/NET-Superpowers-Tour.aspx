<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="The .NET 8 Superpowers Tour - Online Live Event" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">

    <!-- Twitter universal website tag code -->
    <script>
    !function(e,t,n,s,u,a){e.twq||(s=e.twq=function(){s.exe?s.exe.apply(s,arguments):s.queue.push(arguments);
    },s.version='1.1',s.queue=[],u=t.createElement(n),u.async=!0,u.src='//static.ads-twitter.com/uwt.js',
    a=t.getElementsByTagName(n)[0],a.parentNode.insertBefore(u,a))}(window,document,'script');
    // Insert Twitter Pixel ID and Standard Event data below
    twq('init','nvmrl');
    twq('track','PageView');
    </script>
    <!-- End Twitter universal website tag code -->

    <!-- Open Graph for Social Media sharing -->
    <meta property="og:site_name" content="SSW"/>
    <meta property="og:title" content="The .NET Superpowers Tour"/>
    <meta property="og:url" content="https://www.ssw.com.au/ssw/Events/Training/NET-Superpowers-Tour.aspx"/>
    <meta property="og:type" content="events.event"/>
    <meta property="og:image" content="https://ssw.com.au/ssw/Events/Training/Images/DevSuperPowers-NET-Website_in-person.jpg"/>
    <meta property="og:description" content="There will be just one .NET going forward, and we can help you get ready to use the most powerful and flexible version ever! This one day superpowers covers the basics and numerous other topics" />
    <meta name="twitter:card" content="summary_large_image"></meta>
    <!-- End Open Graph for Social Media sharing -->

</asp:Content>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
<div class="carousel slide hidden-xs" data-ride="carousel">

<img src="/ssw/Events/Training/Images/DevSuperPowers-NET-Website.jpg" />

</div>
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="/ssw/EventsCalendar/Images/SuperPower-Icon-DotNet.jpg" alt=".NET image" class="icon" /> 
    <h1>The .NET 8 Superpowers Tour</h1>
    <h2>.NET - A Unified Platform</h2>
    
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div id="eventsummary">
        <div class="row show-grid basicinfo"> 
            <div class="col-sm-12 ">
                <p>Duration<br />
                    <span>1 Day</span></p>
                <p>Price<br />
                    <span>$99 inc GST </span></p>
            </div>
        </div>

            <div class="col-sm-4 eventinfo">
                <p>
                    <strong>Brisbane</strong><br />
                    <span>4th (Mon) Dec 2023</span><br />
                    <span>9am - 5pm</span>
                </p>
                <p><a href="https://www.eventbrite.com.au/e/net-8-superpowers-brisbane-tickets-618622325027" target="_blank" class="btn bookNow ignore">Book Now</a></p>
            </div>

        <div class="row venueslist show-grid">
            <div class="col-sm-4 eventinfo">
                <p>
                    <strong>Melbourne</strong><br />
                    <span>5th (Tue) Dec 2023</span><br />
                    <span>9am - 5pm</span>
                </p>
                <p><a href="https://www.eventbrite.com.au/e/net-8-superpowers-melbourne-tickets-618621923827" target="_blank" class="btn bookNow ignore">Book Now</a></p>
            </div>
       
            <div class="col-sm-4 eventinfo">
                <p>
                    <strong>Sydney + Online</strong><br />
                    <span>7th (Thur) Dec 2023</span><br />
                    <span>9am - 5pm</span>
                </p>
                <p><a href="https://www.eventbrite.com.au/e/net-8-superpowers-sydneyonline-tickets-618815322287" target="_blank" class="btn bookNow ignore">Book Now</a></p>
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
        <p>.NET 8 has replaced .NET 7, .NET 6, and .NET Core 3.1, and is the current standard in .NET.</p>
        <p>This is the only .NET going forward, and our experts can get you ready to use the most powerful version ever! This fast-paced one-day course covers many topics, such as web development with ASP.NET Core, data access with EF Core, automated testing, and many other enterprise topics.</p>
        <p>You will finish the day with a solid understanding of why you should be using .NET and the enterprise capabilities using the new platform.</p>
        
        <div class="eric-video">
            <div class="video-player" data-id="HH58FP6icCA" data-youkuid=""></div>
        </div>

    </div>

    <div class="section">
        <h2>Agenda</h2>
        <p>There will be 8 sessions in total:</p>
            <p><strong>1. Getting Started with .NET 8</strong> - Learn how to get up and running quickly with .NET.</p>
            <p><strong>2. Minimal APIs with ASP.NET Core </strong> - Build web APIs without the boilerplate. With .NET, you can build a fully functioning REST API with just a few lines of code.</p>
            <p><strong>3. Working with Entity Framework Core</strong> - Enterprise data access with Entity Framework Core.</p>
            <p><strong>4. Communication with Backend APIs in .NET</strong> - REST, Web API, Minimal APIs, gRPC, GraphQL, SignalR.</p>
            <p><strong>5. Modern Web Dev with Blazor</strong> - Building an interactive UI with clean and simple C# from the comfort of your preferred development environment.</p>
            <p><strong>6. Cloudy with a Chance of Mobile </strong> - With .NET, you can write once and run anywhere; from the cloud to your pocket, and even your beer fridge!</p>
            <p><strong>7. Simplified Automated Testing - No surprises or disappointments</strong> - Learn how to write automated tests using the latest tools and techniques with .NET.</p>
            <p><strong>8. Source Generators</strong> - .NET developers have relied on reflection for a long time, but it has a runtime impact. In this session you will learn how to leverage source generators to add code at compile time and enhance your applications without losing performance.</p>
    </div>

    <div class="section" id="eventlocations">
        <a name="InPerson"></a>
        
        <a name="Location"></a>
        <h2>Location Venues</h2>
        <div class="row venueslist show-grid">
            <div class="col-sm-3 eventinfo">
                <p><strong class="map">SSW Chapel Brisbane</strong></p>
                <p>
                    Level 1<br />
                    Unit 4/471 Adelaide Street<br />
                    Brisbane - QLD 4000<br />
                </p>
                <p><a href="/ssw/Company/Offices/Brisbane/Directions/">Directions</a></p>
            </div>
            <div class="col-sm-3 eventinfo">
                <p><strong class="map">SSW Chapel Melbourne</strong></p>
                <p>
                    Level 1<br />
                    370 Little Bourke Street<br />
                    Melbourne - VIC 3000<br />
                </p>
                <p><a href="/ssw/Company/Offices/Melbourne/Directions/">Directions</a></p>
            </div>
            <div class="col-sm-3 eventinfo">
                <p><strong class="map">SSW Chapel Newcastle</strong></p>
                <p>
                    Level 1<br />
                    432 Hunter Street<br />
                    Newcastle - NSW 2300<br />
                </p>
                <p><a href="/ssw/Company/Offices/Newcastle/Directions/">Directions</a></p>
            </div>
            <div class="col-sm-3 eventinfo">
                <p><strong class="map">SSW Chapel Sydney</strong></p>
                <p>
                    Level 1<br />
                    81 - 91 Military Road<br />
                    Neutral Bay - NSW 2089<br />
                </p>
                <p><a href="/ssw/Company/Offices/Sydney/Directions/">Directions</a></p>
            </div>
            
        </div>
        <p><a class="red btn next ignore" href="http://sswchapel.com.au/">SSW Chapel Website</a></p>
    </div>


    <div class="section">
        <h2>Past Events</h2>
            <div class="col-sm-3">
                <h3>Sydney</h3>
                <ul>
                    <li>5th April 2019</li>
                    <li>30th October 2018</li>
                    <li>20th April 2018</li>
                    <li>20th October 2017</li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h3>Melbourne</h3>
                <ul>
                    <li>4th April 2019</li>
                    <li>29th October 2018</li>
                    <li>19th April 2018</li>
                    <li>19th October 2017</li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h3>Brisbane</h3>
                <ul>
                    <li>2nd April 2019</li>
                    <li>26th October 2018</li>
                    <li>16th April 2018</li>
				    <li>16th October 2017</li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h3>Online</h3>
                <ul>
				    <li>25th February 2022</li>
                    <li>30th October 2020</li>
                </ul>
            </div>
    </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">

    <div class="section">
        <h4>About the presenters</h4>
        <img src="images/mattgoldman_thumb.jpg" class="thumbnail" alt="Matt Goldman SSW" />
        <a href="https://www.ssw.com.au/people/matt-goldman">Matt Goldman</a>
        <p>Since joining SSW, Matt has worked on a number of projects for a range of clients, including government agencies and multinational organisations. Matt loves making things, and at SSW uses that passion to fuel his work with .NET, EF / EF Core, Xamarin (and soon MAUI), Azure and Blazor.</p>
     </div>
     <div class="section">
        <img src="images/William-Liebenberg.jpg" class="thumbnail" alt="William Liebenberg" />
        <a href="https://ssw.com.au/people/william-liebenberg/">William Liebenberg</a>
        <p>One of the core engineers at SSW and specializes in developing Enterprise Applications hosted on Azure. With his many years of experience, William has learnt how to adapt to new industries, and this gives him a unique talent for synchronizing with his clients' business languages and processes to successfully build their solutions.</p>
     </div>
     <div class="section">
        <img src="images/danielmackay_thumb.jpg" class="thumbnail" alt="Daniel Mackay" />
        <a href="https://ssw.com.au/people/daniel-mackay/">Daniel Mackay</a>
        <p>Daniel is a Solution Architect at SSW, and specialises in Cloud Architecture, Software Architecture, and DevOps. He has over 20+ years of professional experience. He has worked with .NET since 2009, and is passionate about web-based technologies such as .NET Core, ASP.NET Core, EF Core, React, Next.js and Azure.</p>
     </div>
      <div class="section">
        <img src="images/gertmarx_thumb.jpg" class="thumbnail" alt="Gert Marx" />
        <a href="https://ssw.com.au/people/gert-marx/">Gert Marx</a>
        <p>Gert is an SSW Solution Architect with over 18 years of experience, specializing in .NET technologies. He has worked across various industries, including telecommunications, finance, and government agencies, and has designed and implemented high-performance systems that can handle large data sets and complex data relationships.</p>
     </div>
      <div class="section">
        <img src="images/mattwicks_thumb.jpg" class="thumbnail" alt="Matt Wicks" />
        <a href="https://www.ssw.com.au/people/matt-wicks/">Matt Wicks</a>
        <p>Matt is an SSW Solution Architect, Certified Scrum Master and one of four Microsoft certified DevOps fast track partner consultants in Australia. He has been developing solutions using the full Microsoft stack since .NET 2 was in beta.</p>
     </div>
    
    <br />
    <br />
    <div class="rounded">
        <h3>Follow us on Twitter</h3>
    </div>
    <div>
        <a class="twitter-timeline" data-height="300" data-link-color="#cc4141" href="https://twitter.com/SSW_TV?ref_src=twsrc%5Etfw">Tweets by SSW_TV</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
    </div>
    
</asp:Content>
