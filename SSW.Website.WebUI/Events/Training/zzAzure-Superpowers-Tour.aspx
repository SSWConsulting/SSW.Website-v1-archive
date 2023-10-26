<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="The Azure Superpowers Tour - In-person & Online Live Event" %>

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
    <meta property="og:title" content="The Azure Superpowers Tour"/>
    <meta property="og:url" content="https://www.ssw.com.au/ssw/Events/Training/Azure-Superpowers-Tour.aspx"/>
    <meta property="og:type" content="events.event"/>
    <meta property="og:image" content="https://ssw.com.au/ssw/Events/Training/Images/DevSuperPowers-Azure-Website_online.jpg"/>
    <meta property="og:description" content="This one-day online live event is designed to bring developers up-to-speed on the new features and benefits of using Microsoft Azure to build awesome cloud-based applications." />
    <meta name="twitter:card" content="summary_large_image"></meta>
    <!-- End Open Graph for Social Media sharing -->

</asp:Content>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <div class="carousel slide hidden-xs" data-ride="carousel">
        <img src="/ssw/Events/Training/Images/DevSuperPowers-Azure-Website.jpg" />
    </div>
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="/ssw/EventsCalendar/Images/SuperPower-Icon-Azure.jpg" alt="Azure icon" class="icon" /> 
    <h1>The Azure Superpowers Tour</h1>
    <h2>Learn to build Microsoft Azure cloud apps with real-world best practices from start to finish</h2>
    
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div id="eventsummary">
        <div class="row show-grid basicinfo"> 
            <div class="col-sm-12 ">
                <p>Duration<br />
                    <span>1 Day</span></p>
                <p>Price<br />
                    <span><del style="color:#9e9e9e;">$99</del> $44 (Early Bird) inc GST </span></p>
            </div>
        </div>

        <div class="row venueslist show-grid">
            <div class="col-sm-6 eventinfo">
                <p>
                    <strong>Brisbane</strong><br />
                    <span>6th (Tue) July 2021</span><br />
                    <span>9am - 5pm</span>
                </p>
                <p><a href="https://www.eventbrite.com.au/e/azure-superpowers-tour-in-person-brisbane-online-tickets-150657006161" target="_blank" class="btn bookNow ignore">Book Now</a></p>
                <!--<p><a class="map ignore" href="#Location">SSW Brisbane</a></p>-->
            </div>

            <!--<div class="col-sm-3 eventinfo">
                <p>
                    <strong>Melbourne</strong><br />
                    <span>7th (Wed) July 2021</span><br />
                    <span>9am - 5pm</span>
                </p>
                <p><a href="https://www.eventbrite.com.au/e/azure-superpowers-tour-in-person-melbourne-online-tickets-150657230833" target="_blank" class="btn bookNow ignore">Book Now</a></p>
                <p><a class="map ignore" href="#Location">SSW Melbourne</a></p>
            </div>

            <div class="col-sm-3 eventinfo">
                <p>
                    <strong>Newcastle</strong><br />
                    <span>8th (Thu) July 2021</span><br />
                    <span>9am - 5pm</span>
                </p>
                <p><a href="https://www.eventbrite.com.au/e/azure-superpowers-tour-in-person-newcastle-online-tickets-78873052423" target="_blank" class="btn bookNow ignore">Book Now</a></p>
                <p><a class="map ignore" href="#Location">SSW Newcastle</a></p>
            </div>-->

            <div class="col-sm-6 eventinfo">
                <p>
                    <strong>Sydney</strong><br />
                    <span>9th (Fri) July 2021</span><br />
                    <span>9am - 5pm</span>
                </p>
                <p><a href="https://www.eventbrite.com.au/e/azure-superpowers-tour-in-person-sydney-online-tickets-150658464523" target="_blank" class="btn bookNow ignore">Book Now</a></p>
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
        
        <p>This one-day workshop brings developers up-to-speed on the new features and benefits of using Microsoft Azure to build awesome cloud-based applications.</p>
        <p>At SSW we have already gone through the hard work of implementing these new and exciting technologies in our projects for everything from small start-ups to enterprises and government agencies. View our <a href="/ssw/Consulting/Azure.aspx">Azure consulting page</a>.</p>
        <p>Come watch our best Azure 2 devs build an Azure application from scratch and take it all the way to an enterprise application using all the best tools and practices we use.</p>
        <p>Don't waste weeks learning Azure, the Angular CLI, RxJS, TypeScript, ngrx, NPM, WebPack, end to end testing and unit testing. Get your head around all the core concepts and get jump started in just one day.</p>
       
    </div>

    <div class="section">
        <h2>Agenda</h2>
        <p><strong>Part 1: App Services</strong></p>
        <p>In this part we give you an overview of the services you need to build and host Enterprise Web Applications on Azure.</p>
        <p>You will learn about:</p>
            <ul>
                <li>App Service Plans</li>
                <li>Web Apps (also known as App Services)</li>
                <li>Mobile Apps</li>
                <li>API Apps</li>
                <li>Functions Apps</li>
            </ul>

        <p><strong>Part 2: Azure DevOps Projects</strong></p>
        <p>Using Azure DevOps Projects, we will show you how to easily build, test and deploy an application on any Azure service in a few simple steps.</p>
        <p>You will learn about:</p>
            <ul>
 	            <li>Source Repositories
                <li>Automated Cloud-powered CI/CD pipelines
                <li>Application Insights integration
                <li>Product Backlog</li>
            </ul>

        <p><strong>Part 3: Data</strong></p>
        <p>Azure has many different types of Storage services. We will show you how you can serve your data from Azure to be globally accessible and able to perform under high read & write loads.</p>
        <p>You will learn about:</p>
            <ul>
 	            <li>Azure Storage (Blob, File, Table, Queue)</li>
                <li>Azure SQL Server</li>
                <li>Azure CosmosDB</li>
            </ul>

        <p><strong>Part 4: Azure AD B2C</strong></p>
        <p>Using Azure Active Directory B2C (Business to Consumer) you can connect customers from around the globe to your application. We will show you how to securely connect your customers to your application using industry standard protocols to make identity management easy.</p>
        <p>You will learn about:</p>
            <ul>
                <li>Azure AD B2C</li>
                <li>Branded Sign-up and Sign-in Experiences</li>
                <li>Connect via Social Networks</li>
                <li>Enable Multifactor Authentication</li>
            </ul>

        <p><strong>Part 5: API Management</strong></p>
        <p>With Azure API Management you can take any backend system, hosted anywhere, and expose it through a modern API gateway.</p>
        <p>You will learn about:</p>
            <ul>
                <li>Azure API Management</li>
                <li>Publish your existing APIs for consumers</li>
                <li>Debug your API</li>
                <li>Monitor traffic through the API</li>
                <li>Protect your back-end services</li>
            </ul>

        <p><strong>Part 6: Logic Apps</strong></p>
        <p>Azure Logic Apps are used to automate business processes, complete tasks and orchestrate workflows. They are especially powerful when you are integrating with other applications, data sources and services.</p>
        <p>We will show you how to build a scalable integration solution that uses some of the available connectors to securely access and process data in real-time.</p>
        <p>You will learn about:</p>
            <ul>
                <li>Logic Apps</li>
                <li>Connectors</li>
            </ul>

        <p><strong>Part 7: Cognitive Services</strong></p>
        <p>Azure Cognitive Services enables your applications to harness the power of Artificial Intelligence and Machine Learning.</p>
        <p>You will learn how to make your applications see, hear, understand and speak using:</p>
            <ul>
                <li>Face Recognition</li>
                <li>Text Analytics</li>
            </ul>

        <p><strong>Part 8: Bots</strong></p>
        <p>Bots are front and centre of Application Modernization. Your employees demand to be empowered and they want to find information and if they are Gen-Y they don't want to have a conversation with anyone except a Bot. Many companies are finding that their Corporate Bots are quickly taking over the way users interact with their applications.</p>
        <p>Using Azure Bot Services you will learn about:</p>
            <ul>
                <li>Making a Question and Answer Bot (QnA Maker)</li>
                <li>Language Understanding (LUIS)</li>
            </ul>

        <p><strong>Part 9. Containers</strong></p>
        <p>Docker has become the de-facto standard for containerisation and microservices. In this section we will walk you through how we build scalable and maintainable enterprise applications using Docker and Azure Kubernetes Services.</p>
        <p>You will learn about:</p>
            <ul>
                <li>Docker</li>
                <li>Azure Kubernetes Services (AKS)</li>
            </ul>
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
                <h3>Sydney</h3>
                <ul>
                    <li>25th Oct 2019</li>
                    <li>21st Feb 2019</li>
                    <li>20th Sep 2018</li>
                    <li>25th May 2018</li>
                    <li>15th Sep 2017</li>
                    <li>18th May 2017</li>
                    <li>22nd Sep 2016</li>
                    <li>19th May 2016</li>
                </ul>
            </div>
            <div class="col-sm-4">
                <h3>Melbourne</h3>
                <ul>
                    <li>23rd Oct 2019</li>
                    <li>18th Feb 2019</li>
                    <li>18th Sep 2018</li>
                    <li>24th May 2018</li>
                    <li>8th Sep 2017</li>
                    <li>15th May 2017</li>
                    <li>19th Sep 2016</li>
                    <li>16th May 2016</li>
                </ul>
            </div>
            <div class="col-sm-4">
                <h3>Brisbane</h3>
                <ul>
				    <li>22nd Oct 2019</li>
                    <li>19th Feb 2019</li>
                    <li>17th Sep 2018</li>
                    <li>21st May 2018</li>
                    <li>13th Sep 2017</li>
                    <li>16th May 2017</li>
                    <li>20th Sep 2016</li>
                    <li>17th May 2016</li>
                </ul>
            </div>
            <div class="col-sm-4">
                <h3>Gold Coast</h3>
                <ul>
				    <li>15th Feb 2019</li>
                    <li>14th Sep 2018</li>
                    <li>18th May 2018</li>
                    <li>6th Sep 2017</li>
                    <li>12th May 2017</li>
                    <li>16th Sep 2016</li>
                    <li>13th May 2016</li>
                </ul>
            </div>
            <div class="col-sm-4">
                <h3>Online</h3>
                <ul>
				    <li>9th Oct 2020</li>
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
