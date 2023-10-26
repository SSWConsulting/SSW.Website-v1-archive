<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="The Ionic Superpowers Tour" %>

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
    <meta property="og:title" content="The Ionic Superpowers Tour"/>
    <meta property="og:url" content="https://www.ssw.com.au/ssw/Events/Training/Ionic-Superpowers-Tour.aspx"/>
    <meta property="og:type" content="events.event"/>
    <meta property="og:image" content="https://ssw.com.au/ssw/Images/SuperPower-Banner-Master-Ionic.jpg"/>
    <meta property="og:description" content="Building iOS and Android apps has always been challenging... but with the powerful combination of Angular and Ionic you can build and deploy awesome apps leveraging your familiar web development skills." />
    <meta name="twitter:card" content="summary_large_image"></meta>
    <!-- End Open Graph for Social Media sharing -->

</asp:Content>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
<img src="/ssw/Images/SuperPower-Banner-Master-Ionic.jpg" />
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="/ssw/EventsCalendar/Images/SuperPower-Icon-Ionic.jpg" alt="Ionic image" class="icon" /> 
    <h1>The Ionic Superpowers LUNCH</h1>
    <h2>Learn to build mobile apps for iOS and Android using web development skills and real-world best practices</h2>
    
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div id="eventsummary">
        <div class="row show-grid basicinfo"> 
            <div class="col-sm-12 ">
                <p>Duration<br />
                    <span>1 Day</span></p>
                <p>Price<br />
                    <span>$30 inc GST</span></p>
            </div>
        </div>

        <div class="row venueslist show-grid"> 
            <div class="col-sm-4 eventinfo">
                <p><strong>Melbourne</strong><br />
                   <span style="text-decoration: line-through;">JUNE 2017</span></p>
                <p><span><a href="http://www.eventbrite.com/e/angular-superpowers-tour-melbourne-apr-2017-tickets-29316080185?ref=ebtn" target="_blank" class="btn bookNow ignore">Book Now</a></span></p>
                <p><a class="map" href="#Melbourne">Microsoft Melbourne</a></p>
            </div>
            <div class="col-sm-4 eventinfo">
                <p><strong>Brisbane</strong><br />
                   <span>THU 28TH JUNE 2017</span></p>
                <p><span><a href="http://www.eventbrite.com/e/angular-superpowers-tour-brisbane-apr-2017-tickets-29462800028?ref=ebtn" target="_blank" class="btn bookNow ignore">Book Now</a></span></p>
                <p><a class="map" href="#Brisbane">Microsoft Brisbane</a></p>
            </div>
            <div class="col-sm-4 eventinfo">
                <p><strong>Sydney</strong><br />
                   <span>JUNE 2017</span></p>
                <p><span><a href="http://www.eventbrite.com/e/angular-superpowers-tour-sydney-apr-2017-tickets-29462410864?ref=ebtn" target="_blank" class="btn bookNow ignore">Book Now</a></span></p>
                <p><a class="map" href="#Sydney">SSW Sydney</a></p>
            </div>
        </div>

        <div class="row show-grid hostedbyinfo"> 
            <div class="col-sm-12">
                    <p>Hosted by <strong>SSW</strong></p>
            </div>
        </div>
    </div>

    <div class="section">
<p>Building iOS and Android apps has always been challenging... but with the powerful combination of Angular and Ionic you can build and deploy awesome apps leveraging your familiar web development skills.</p>
<p>This 2-hour over-lunch workshop will bring decision makers and developers up-to-speed on the new features and benefits of using Ionic and Angular to build awesome web applications.</p>
<p>At SSW we have already gone through the hard work of implementing these new and exciting technologies in our projects for everything from small start-ups to enterprises and government agencies. <a href="/ssw/Consulting/Angular.aspx">View our Angular consulting page</a>.</p>
<p>Come watch our best Angular and Ionic devs build an Ionic application from scratch and take it all the way to an enterprise application using all the best tools and practices we use on real-world projects.</p>
<p>Get your head around all the core concepts required to build a mobile app, and get lunch at the same time!</p>
    </div>
<div class="section">
    <h2>Agenda</h2>
    <strong>Stage 1: Understanding Angular and Ionic</strong>
        <ul>
            <li>An overview of Ionic</li>
            <li>Building your first components</li>
            <li>Getting your app onto your devices - in 2 minutes</li>
        </ul>

    <strong>Stage 2: Building A CRM Application</strong>
<ul>
            <li>Creating the companies list view</li>
            <li>Creating the companies detail view</li>
</ul>
    <strong>Stage 3: Enterprise patterns with redux and ngrx</strong>
    <ul>
        <li>Implementing redux with ngrx</li>
    </ul>

<strong>Stage 4: Shipping to Production</strong>
    <ul>
<li>Building, bundling and deploying your application to the Google Play Store and the App Store</li>
        </ul>

</div>
    <div class="section" id="eventlocations"><a name="Location"></a>
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
                <p><strong  class="map">SSW Chapel Brisbane</strong></p>
                <p>Level 1<br />
                   Unit 4/471 Adelaide Street<br />
                   Brisbane - QLD 4000<br /></p>
                <p><a href="/ssw/company/directions/brisbane/">Directions</a></p>
            </div>
            <div class="col-sm-4 eventinfo">
                <p><strong  class="map">SSW Chapel Sydney</strong></p>
                <p>Level 1<br />
                   81 - 91 Military Road<br />
                   Neutral Bay, Sydney - NSW 2089<br /></p>
                <p><a href="/ssw/company/directions/neutralbay/">Directions</a></p>
            </div>
        </div>
        <p><a class="red btn next ignore" href="http://sswchapel.com.au/">SSW Chapel Website</a></p>
    </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">

    <div class="section">
        <h4>About the presenters</h4>
        <p>
            <img src="https://sharepoint.ssw.com.au/AboutUs/Employees/PublishingImages/duncanhunters-profile-photo.jpg" class="thumbnail" /><a href="https://sharepoint.ssw.com.au/AboutUs/Employees/Pages/DuncanHunter.aspx">Duncan Hunter</a>
            <p>Duncan Hunter a Software Architect at SSW. Making sustainable software that solves real world issues is what makes Duncan tick. He is a full stack web developer specialising in making responsive frontend applications with AngularJS and TypeScript.</p>
            <p>With the current speed of change in frontend best practices Duncan helps teams learn and implement modern frontend build processes to produce scalable and maintainable applications quickly. </p>
    </div>
    <div class="section">
        <p>
            <img src="https://sharepoint.ssw.com.au/AboutUs/Employees/PublishingImages/adamS_info.jpg" class="thumbnail" /><a href="https://sharepoint.ssw.com.au/AboutUs/Employees/Pages/AdamS.aspx">Adam Stephensen</a>
            <p>Adam is a Solution Architect at SSW, QLD General Manager and head mentor at <a href="http://FireBootCamp.com">FireBootCamp</a>, the gruelling 9 week boot camp for .NET developers. He loves delivering high quality, scalable, enterprise solutions. He has a passion for Scrum, Continuous Delivery, and software craftsmanship. This has led him to mentor and contribute to many .NET projects across a broad range of technologies.</p>
            <p>Adam is currently excited by the multitude of new tools and platforms coming from Microsoft, especially the combination of Visual Studio Online and Windows Azure. </p>
    </div>
</asp:Content>
