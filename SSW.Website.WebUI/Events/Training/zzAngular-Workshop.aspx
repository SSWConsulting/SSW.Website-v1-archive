<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="The Angular 2-Day Workshop | Since 2017" %>

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
    <meta property="og:title" content="The Angular 2-Day Workshop | Since 2017"/>
    <meta property="og:url" content="https://www.ssw.com.au/ssw/Events/Training/Angular-Workshop.aspx"/>
    <meta property="og:type" content="events.event"/>
    <meta property="og:image" content="https://ssw.com.au/ssw/Events/Training/Images/Workshop-Angular-Website_in-person.jpg"/>
    <meta property="og:description" content="In this workshop we will build a CRM application with Angular using components, services, dependency injection, forms, Angular modules and lazy loaded routes." />
    <meta name="twitter:card" content="summary_large_image"></meta>
    <!-- End Open Graph for Social Media sharing -->

</asp:Content>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
<div class="carousel slide hidden-xs" data-ride="carousel">

<img src="/ssw/Events/Training/Images/Workshop-Angular-Website.jpg" />

</div>
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="/ssw/EventsCalendar/Images/Angular-2-0-logo.png" alt="Angular Workshop" class="icon" /> 
    <h1>The Angular 2-Day Workshop</h1>
    <h2>Now that you've seen what Angular is capable of, it's time to get into learning-by-doing</h2>
    
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div id="eventsummary">
        <div class="row show-grid basicinfo">
            <div class="col-sm-12 ">
                <p>
                    Duration<br />
                    <span>2 Days</span>
                </p>
                <p>
                    Price<br />
                    <span>$440 inc GST</span>
                </p>
            </div>
        </div>

        <div class="row venueslist show-grid">
            <div class="col-sm-4 eventinfo">
                <p>
                    <strong>Brisbane</strong><br />
                    <span>20th - 21st September 2022</span><br />
                    <span>(Wed - Thu)</span><br />
                    <span>9am - 5pm</span>  
                </p>
                <p><a href="https://www.eventbrite.com.au/e/159766360485" target="_blank" class="btn bookNow ignore">Book Now</a></p>
            </div>
            <div class="col-sm-4 eventinfo">
                <p>
                    <strong>Melbourne</strong><br />
                    <span>26th - 27th September 2022</span><br />
                    <span>(Mon - Tue)</span><br />
                    <span>9am - 5pm</span>  
                </p>
                <p><a href="https://www.eventbrite.com.au/e/80425553997" target="_blank" class="btn bookNow ignore">Book Now</a></p>
            </div>
            <div class="col-sm-4 eventinfo">
                <p>
                    <strong>Sydney</strong><br />
                    <span>28th - 29th September 2022</span><br />
                    <span>(Wed - Thu)</span><br />
                    <span>9am - 5pm</span>  
                </p>
                <p><a href="https://www.eventbrite.com.au/e/159774743559" target="_blank" class="btn bookNow ignore">Book Now</a></p>
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
        <h3>In this 2-Day Angular Workshop you will be building your own apps from scratch</h3>
            <p>In this workshop we will build a CRM application with Angular using components, services, dependency injection, forms, Angular modules and lazy loaded routes. We will then cover unit tests and using the redux pattern with the ngrx library.</p>
            <p>By the end of this workshop you will have built a working Angular applications you can extend into an enterprise application. You will also walk away with the source code and the course material. So join us to learn to build great enterprise applications with Angular.</p>
    
        <h3>What's included in this workshop?</h3>
        <ul>
            <li>Two days tuition with awesome experienced Angular developers</li>
            <li>Full course material which will be updated as Angular is updated</li>
            <li>Full source code for the apps you will build for later reference and to be used as best practice</li>
        </ul>
    </div>
    <div class="section">
        <h2>Agenda</h2>
        <div class="col-sm-6">
        <h3>Day 1</h3>
        <ul>
            <li>Setup and Tooling</li>
            <li>Introduction to Angular</li>
            <li>Getting Started with the Angular CLI</li>
            <li>Components and component communication</li>
            <li>Debugging an application</li>
            <li>Services and dependency injection</li>
            <li>Introduction to RxJs</li>
            <li>Angular template and reactive forms</li>
        </ul>
        </div>
        <div class="col-sm-6">
        <h3>Day 2</h3>
        <ul>
            <li>Using HTTP Requests to talk to the server</li>
            <li>State management</li>
            <li>Architecture and Angular modules</li>
            <li>Routing</li>
            <li>Lazy loading routes</li>
            <li>Bundling and deployment</li>
            <li>Unit and e2e testing</li>
            <li>Introduction to the Redux pattern</li>
            <li>Implementing Redux pattern with NgRx</li>
        </ul>
        </div>
    </div>

    <!--<div class="section" id="eventlocations">
        <a name="Location"></a>
        <h2>Location Venues</h2>
        <div class="row venueslist show-grid">
            <div class="col-sm-4 eventinfo">
                <p><strong class="map">SSW Chapel Melbourne</strong></p>
                <p>
                    Level 1<br />
                    370 Little Bourke Street<br />
                    Melbourne - VIC 3000<br />
                </p>
                <p><a href="/ssw/company/directions/melbourne/">Directions</a></p>
            </div>
            <div class="col-sm-4 eventinfo">
                <p><strong class="map">SSW Chapel Brisbane</strong></p>
                <p>
                    Level 1<br />
                    Unit 4/471 Adelaide Street<br />
                    Brisbane - QLD 4000<br />
                </p>
                <p><a href="/ssw/company/directions/brisbane/">Directions</a></p>
            </div>
            <div class="col-sm-4 eventinfo">
                <p><strong class="map">SSW Chapel Sydney</strong></p>
                <p>
                    Level 1<br />
                    81 - 91 Military Road<br />
                    Neutral Bay, Sydney - NSW 2089<br />
                </p>
                <p><a href="/ssw/company/directions/neutralbay/">Directions</a></p>
            </div>
        </div>
        <p><a class="red btn next ignore" href="http://sswchapel.com.au/">SSW Chapel Website</a></p>
    </div>-->

    <div class="section">
        <h2>Past Events</h2>
            <div class="col-sm-4">
                <h3>Sydney</h3>
                <ul>
                    <li>24th - 25th June 2021</li>
                    <li>27th – 28th Aug 2020</li>
                    <li>27th – 28th Nov 2019</li>
                    <li>16th – 17th May 2019</li>
                    <li>25th – 26th October 2018</li>
                    <li>8th – 9th March 2018</li>
                    <li>7th – 8th June 2017</li>
                    <li>16th – 17th March 2017</li>
                </ul>
            </div>
            <div class="col-sm-4">
                <h3>Melbourne</h3>
                <ul>
                    <li>17th - 18th June 2021</li>
                    <li>20th – 21th Aug 2020</li>
                    <li>19th – 20th Nov 2019</li>
                    <li>23th – 24th May 2019</li>
                    <li>18th – 19th October 2018</li>
                    <li>5th – 6th March 2018</li>
                    <li>5th – 6th June 2017</li>
                    <li>9th – 10th March 2017</li>
                </ul>
            </div>
            <div class="col-sm-4">
                <h3>Brisbane</h3>
                <ul>
                    <li>21th - 22th June 2021</li>
				    <li>18th – 19th Aug 2020</li>
                    <li>6th – 7th Nov 2019</li>
                    <li>21st – 22nd May 2019</li>
                    <li>22nd – 23rd October 2018</li>
                    <li>1st – 2nd March 2018</li>
                    <li>1st – 2nd June 2017</li>
                    <li>2nd – 3rd March 2017</li>
                </ul>
            </div>
    </div>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
<div class="rounded">
        <h3>Session</h3>
    </div>
    <div class="section offer">
        <div class="onsite">
            <h3>2-Day Workshop</h3>
            <h4>Getting your hands dirty with Angular</h4>
            <p>
                <strong>Price:</strong> $440 inc GST</p>
        </div>
    </div>
    
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
        <p>You can also check our <a href="https://www.ssw.com.au/ssw/Events/Training/Angular-Superpowers-Tour.aspx">1-Day Angular SuperPowers Tour</a>.</p>
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
