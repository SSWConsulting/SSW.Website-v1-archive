<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="The Azure Super Skills - In-person & Online Live Event" %>

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
    <meta property="og:title" content="The Azure Super Skills"/>
    <meta property="og:url" content="https://www.ssw.com.au/ssw/Events/Training/Azure-Superskills.aspx"/>
    <meta property="og:type" content="events.event"/>
    <meta property="og:image" content="https://ssw.com.au/ssw/Events/Training/Images/DevSuperPowers-Azure-Website_online.jpg"/>
    <meta property="og:description" content="This one-day online live event is designed to bring developers up-to-speed on the new features and benefits of using Microsoft Azure to build awesome cloud-based applications." />
    <meta name="twitter:card" content="summary_large_image"></meta>
    <!-- End Open Graph for Social Media sharing -->

</asp:Content>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <div class="carousel slide hidden-xs" data-ride="carousel">
        <img src="/ssw/Events/Training/Images/SuperSkills-Azure-Website.jpg" />
    </div>
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="/ssw/EventsCalendar/Images/SuperSkills-Icon-Azure.jpg" alt="Azure icon" class="icon" /> 
    <h1>The Azure Super Skills</h1>
    <h2>Learn all the Microsoft Azure fundamentals from our top Azure experts.</h2>
    
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div id="eventsummary">
        <div class="row show-grid basicinfo"> 
            <div class="col-sm-12 ">
                <p>Duration<br />
                    <span>1 Day</span></p>
                <p>Price<br />
                    <span>$299 inc GST</span></p>
            </div>
        </div>

        <div class="row venueslist show-grid">
            
            <div class="col-sm-6 eventinfo">
                <p>
                    <strong>Sydney</strong><br />
                    <span>21st (Fri) April 2023</span><br />
                    <span>9am - 5pm</span>
                </p>
                <p><a href="https://www.eventbrite.com.au/e/azure-super-skills-sydney-tickets-503122060627" target="_blank" class="btn bookNow ignore">Book Now</a></p>
                <!--<p><a class="map ignore" href="#Location">SSW Sydney</a></p>-->
            </div>
            <div class="col-sm-6 eventinfo">
                <p>
                    <strong>Melbourne</strong><br />
                    <span>TBA</span><br />
                    <!--<span>9am - 5pm</span>-->
                </p>
                <!--<p><a href="https://www.eventbrite.com.au/e/azure-super-skills-melbourne-tickets-494491506407" target="_blank" class="btn bookNow ignore">Book Now</a></p>-->
                <!--<p><a class="map ignore" href="#Location">SSW Sydney</a></p>-->
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
        
        <p>In this 1-day course, you will learn all the Microsoft Azure fundamentals. Get up to speed with cloud concepts, Azure services, Azure workloads, security & privacy in Azure, and Azure pricing and support.</p>
         <p>Join our top Azure experts who will walk you through all the Azure basics and beyond, using all the best tools and practices we use at SSW and for our clients.</p>
        <p>By the end of this course, you will be ready to take the <a href="https://learn.microsoft.com/en-us/certifications/exams/az-900">Exam AZ-900: Microsoft Azure Fundamentals</a>.</p>
    </div>

    <div class="section" id="eventlocations">
        <a name="InPerson"></a>
        
        <a name="Location"></a>
        <h2>Location Venues</h2>
        <div class="row venueslist show-grid">
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
                <p><strong class="map">SSW Chapel Brisbane</strong></p>
                <p>
                    Level 1<br />
                    Unit 4/471 Adelaide Street<br />
                    Brisbane - QLD 4000<br />
                </p>
                <p><a href="/ssw/Company/Offices/Brisbane/Directions/">Directions</a></p>
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
            <div class="col-sm-3 eventinfo">
                <p><strong class="map">SSW Chapel Newcastle</strong></p>
                <p>
                    Level 1<br />
                    432 Hunter Street<br />
                    Newcastle - NSW 2300<br />
                </p>
                <p><a href="/ssw/Company/Offices/Newcastle/Directions/">Directions</a></p>
            </div>
        </div>
        <p><a class="red btn next ignore" href="http://sswchapel.com.au/">SSW Chapel Website</a></p>
    </div>

    <div class="section">
        <h2>Past Events</h2>
            <div class="col-sm-4">
                <h3>Brisbane</h3>
                <ul>
				    <li>2nd Dec 2022</li>
                </ul>
            </div>
            <div class="col-sm-4">
                <h3>Melbourne</h3>
                <ul>
				    <li>17th Feb 2023</li>
                </ul>
            </div>
    </div>


</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">

    <div class="section">
        <h4>About the presenters</h4>
        <img src="images/WilliamLiebenberg-thumb.jpg" class="thumbnail" alt="William Liebenberg SSW" />
        <a href="https://ssw.com.au/people/William-Liebenberg">William Liebenberg</a>
        <p>is a <strong>SSW Solution Architect</strong> and <strong>Superpowers Trainer</strong>. William has over 16 years of professional experience spanning multiple industries such as Heavy Engineering, Real-time 3D Graphics, Education and Finance.</p>
        <p>William is one of the core engineers at SSW and specializes in developing Enterprise Cloud Applications with <strong>Azure</strong>. He loves <strong>ASP.NET</strong>, <strong>Serverless</strong>, <strong>CosmosDB</strong>, <strong>Containers</strong>, <strong>Cognitive Services</strong>, <strong>Clean Code</strong>, and more.</p>
        <p>William is a motivated <strong>Scrum</strong> practitioner, strong team player and thinks outside of the box!</p>
        <p>You can find him on twitter at <a href="https://twitter.com/William_DotNet" target="_blank" rel="noopener">@William_DotNet</a> and read his blog at <a href="https://azuregems.io" target="_blank" rel="noopener">azuregems.io</a></p>
    </div>

     <div class="section">
        <img src="images/mattwicks_thumb.jpg" class="thumbnail" alt="Matt Wicks SSW" />
        <a href="https://ssw.com.au/people/Matt-Wicks">Matt Wicks</a>
        <p>is a <strong>SSW Solution Architect</strong>, <strong>Certified ScrumMaster</strong> and one of four <strong>Microsoft certified DevOps fast track partner consultants</strong> in Australia. He specializes in <strong>Azure DevOps (was TFS)</strong>, <strong>.Net Core</strong>, and <strong>Azure</strong>.</p>
        <p>He has been developing solutions using the full Microsoft stack since .NET 2 was in beta and has had experience with companies ranging from small businesses to large ASX listed companies in the finance, engineering and HR sectors.</p>
        <p>Matt loves DevOps, DevOps and DevOps. These days he prefers Azure DevOps Build Pipelines over Octopus and Bamboo. Matt likes Clean Architecture, using the right tool for the job, seeing developers push changes to production with confidence, automated tests, building solutions on Azure, and now he never has to reminisce about Webforms.</p>
        <p>You can find him on twitter at <a href="https://twitter.com/matteightyate" target="_blank" rel="noopener">@matteightyate</a> and read his blog at <a href="https://wicksipedia.com" target="_blank" rel="noopener">wicksipedia.com</a></p>
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
