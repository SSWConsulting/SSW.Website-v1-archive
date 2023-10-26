<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="The Angular Superpowers Tour - Live Event" %>

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
    <meta property="og:title" content="The Angular Superpowers Tour"/>
    <meta property="og:url" content="https://www.ssw.com.au/ssw/Events/Training/Angular-Superpowers-Tour.aspx"/>
    <meta property="og:type" content="events.event"/>
    <meta property="og:image" content="https://ssw.com.au/ssw/Events/Training/Images/DevSuperPowers-Angular-Website_person.jpg"/>
    <meta property="og:description" content="The Angular Superpowers Tour - Online Live Event" />
    <meta name="twitter:card" content="summary_large_image"></meta>
    <!-- End Open Graph for Social Media sharing -->

</asp:Content>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
<div class="carousel slide hidden-xs" data-ride="carousel">

<img src="/ssw/Events/Training/Images/DevSuperPowers-Angular-Website.jpg" />

</div>
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="/ssw/EventsCalendar/Images/SuperPower-Icon-Angular.jpg" alt="Angular image" class="icon" /> 
    <h1>The Angular Superpowers Tour</h1>
    <h2>Learn to build Angular apps with real-world best practices from start to finish</h2>
    
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div id="eventsummary">
        <div class="row show-grid basicinfo"> 
            <div class="col-sm-12 ">
                <p>Duration<br />
                    <span>1 Day</span></p>
                <p>Price<br />
                    <span>$99 inc GST</p>
            </div>
        </div>

        <div class="row venueslist show-grid">
            <div class="col-sm-4 eventinfo">
                <p>
                    <strong>Brisbane</strong><br />
                    <span>23rd (Wed) August 2023</span><br />
                    <span>9am - 5pm</span>
                </p>
                <p><a href="https://www.eventbrite.com.au/e/angular-superpowers-tour-brisbane-tickets-77590542401" target="_blank" class="btn bookNow ignore">Book Now</a></p>
                <p><a class="map ignore" href="#Location">SSW Brisbane</a></p>
            </div>

            <div class="col-sm-4 eventinfo">
                <p>
                    <strong>Melbourne</strong><br />
                    <span>24th (Thu) August 2023</span><br />
                    <span>9am - 5pm</span>
                </p>
                <p><a href="https://www.eventbrite.com.au/e/angular-superpowers-tour-melbourne-tickets-77590422041" target="_blank" class="btn bookNow ignore">Book Now</a></p>
                <p><a class="map ignore" href="#Location">SSW Melbourne</a></p>
            </div>

            <div class="col-sm-4 eventinfo">
                <p>
                    <strong>Sydney</strong><br />
                    <span>25th (Fri) August 2023</span><br />
                    <span>9am - 5pm</span>
                </p>
                <p><a href="https://www.eventbrite.com.au/e/angular-superpowers-tour-sydney-tickets-147451430197" target="_blank" class="btn bookNow ignore">Book Now</a></p>
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
        <iframe width="853" height="480" src="https://www.youtube.com/embed/X2ZQRz0YJqo?rel=0" frameborder="0" allowfullscreen></iframe>
        <h4>This 1-day course brings developers up-to-speed on the new features and benefits of using  Angular to build awesome web applications.</h4>
        <p><strong>Everything has changed!</strong>Angular and modern web best practices involve massive changes in how we build modern web applications.</p>
        <p>At SSW we have already gone through the hard work of implementing these new and exciting technologies in our projects for everything from small start-ups to enterprises and government agencies. View our <a href="/ssw/Consulting/Angular.aspx">Angular consulting page</a>.</p>
        <p>Come watch our best Angular devs build an Angular application from scratch and take it all the way to an enterprise application using all the best tools and practices.</p>
        <p>Don't waste weeks learning Angular, the Angular CLI, RxJS, TypeScript, ngrx, NPM, WebPack, end to end testing and unit testing. Get your head around all the core concepts and get jump started in just one day.</p>
    </div>
    <div class="section">
        <h2>Agenda</h2>
            <strong>Stage 1: Understanding Angular</strong>
                <ul>
                    <li>Angular in 20 minutes – the big picture</li>
                    <li>Intro to the Angular CLI</li>
                </ul>
            <strong>Stage 2: Building A CRM Application</strong>
                <ul>
 	                <li>Building your first components</li>
                    <li>Navigation and Routing</li>
                    <li>Creating the companies list view</li>
                    <li>Creating services and understanding Dependency Injection</li>
                    <li>Creating the companies detail view</li>
                    <li>Using Reactive Forms for the companies edit view</li>
                    <li>Adding validation</li>
                    <li>Simple State Management using RxJs</li>
                </ul>
            <strong>Stage 3: Testing</strong>
                <ul>
                    <li>Unit testing with Jasmine</li>
                    <li>End to end testing with Protractor</li>
                </ul>
            <strong>Stage 4: Enterprise patterns with redux and ngrx</strong>
                <ul>
                    <li>Implementing redux with ngrx</li>
                </ul>
            <strong>Stage 5: Shipping to Production</strong>
                <ul>
                    <li>Building, bundling and deploying your application</li>
                </ul>
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
                    <li>13th September 2019</li>
                    <li>15th March 2019</li>
                    <li>14th July 2018</li>
                    <li>24th November 2017</li>
                    <li>28th April 2017</li>
                    <li>25th November 2016</li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h3>Melbourne</h3>
                <ul>
                    <li>12th September 2019</li>
                    <li>14th March 2019</li>
                    <li>12th July 2018</li>
                    <li>23rd November 2017</li>
                    <li>21st April 2017</li>
                    <li>11th November 2016</li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h3>Brisbane</h3>
                <ul>
                    <li>10th September 2019</li>
                    <li>11th March 2019</li>
                    <li>11th July 2018</li>
                    <li>13th November 2017</li>
				    <li>27th April 2017</li>
                    <li>18th November 2016</li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h3>Online</h3>
                <ul>
                    <li>13th November 2020</li>
                    <li>19th March 2021</li>
                </ul>
            </div>
    </div>



</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">

   <div class="section">
        <h4>About the presenters</h4>
            <img src="../../training/images/Jean.jpg" class="thumbnail" />
            <p><a href="https://www.ssw.com.au/people/jean-thirion">Jean Thirion</a> is a software developer at SSW. His field of expertise is SharePoint Applications, both server-side and client-side, leveraging the latest technologies to deliver high-quality applications to clients. He is one of SSW's Angular trainer, delivering high quality applications. He has also been involved in various ASP.Net MVC / WebAPI projects.</p>
            <p>Highly motivated and with strong skills, he is able to understand and convert complex business requirements into software solutions. He is also able to use his expertise and experience to suggest the best practices for any given scenario.</p>
    </div>
    <div class="section">
            <img src="images/mattwicks_thumb.jpg" class="thumbnail" />
            <p><a href="https://www.ssw.com.au/people/matt-wicks">Matt Wicks</a> loves DevOps, DevOps, and DevOps. These days he prefers GitHub Actions and Azure DevOps Build Pipelines over Octopus and Bamboo. Matt likes clean architecture, using the right tool for the job, seeing developers push changes to production with confidence, automated tests, building solutions on Azure, and now he never has to reminisce about Webforms.</p>
    </div>
    <div class="section">
            <img src="images/luke-cook-thumb.jpg" class="thumbnail" />
            <p><a href="https://www.ssw.com.au/people/luke-cook">Luke Cook</a> has spent the last 15 years in the Fintech and Paytech industry, designing and building software solutions that are used by thousands of Australian businesses. He has worked closely with the ATO in many of their industry initiatives, including SuperStream and Single Touch Payroll. Luke enjoys solving complex business processes in ways that make things easy for everyday users.</p>
    </div>
    <div class="section">
        <p>You can also check our <a href="https://www.ssw.com.au/ssw/Events/Training/Angular-Workshop.aspx">2-Day Angular Workshop</a>.</p>
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
