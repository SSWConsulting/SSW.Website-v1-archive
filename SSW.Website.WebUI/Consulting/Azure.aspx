<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Microsoft Azure | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/SSW/Consulting/Images/open-graph/SSW-Consulting-Azure-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/SSW/Consulting/Images/open-graph/SSW-Consulting-Azure-og.jpgg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="SSW Microsoft Azure Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="SSW Microsoft Azure Consulting - Enterprise Software Development">
    <meta property="og:description" content="Microsoft Azure provides on-demand infrastructure that scales and adapts to your changing business needs. Whether you are creating new applications or running existing applications, we provide the best price-performance and end-to-end support."/>
</asp:Content>

<asp:Content ID="JsonLd" ContentPlaceHolderID="JsonLd" runat="server">
<script type="application/ld+json">
{
    "@context": "http://schema.org",
    "@type": "Service",
    "provider": {
        "@type": "Organization",
        "name": "SSW",
        "additionalType": "https://www.wikidata.org/wiki/Q638608",
        "address": {
            "@type": "PostalAddress",
            "streetAddress": "Level 1, 81-91 Military Road",
            "postalCode": "2089",
            "addressRegion": "NSW",
            "addressLocality": "Neutral Bay",
            "addressCountry": "http://www.wikidata.org/entity/Q408",
            "name": "Postal Address",
            "@id": "https://www.ssw.com.au/#PostalAddress"
        },
        "description": "SSW software developers have delivered best of breed Microsoft solutions for more than 1,400 clients in 15 countries. SSW Consulting has over 30 years of experience developing awesome Microsoft solutions that today build on top of Angular, React, Azure, TFS, SharePoint, Office 365, .NET, WebAPI, Dynamics 365 and SQL Server.",
        "@id": "https://www.ssw.com.au/",
        "logo": "https://www.ssw.com.au/SSW/images/Raven/SSWLogo.svg"
    },
    "image": {
        "@type": "ImageObject",
        "url": "https://www.ssw.com.au/SSW/Consulting/images/thumbs/thumb-azure.jpg",
        "height": "115",
        "width": "115",
        "@id": "https://www.ssw.com.au/SSW/Consulting/images/thumbs/thumb-azure.jpg"
    },
    "brand": {
        "@id": "https://www.ssw.com.au/"
    },
    "additionalType": "https://www.wikidata.org/wiki/Q725967",
    "url": "https://www.ssw.com.au/ssw/Consulting/Azure.aspx",
    "areaServed": "http://www.wikidata.org/entity/Q13780930",
    "description": "Microsoft Azure provides on-demand infrastructure and services that can scale and adapt to the business needs. Whether a business is creating new applications or running existing applications, SSW provide the best price-performance and end-to-end support.",
    "name": "Azure",
    "@id": "https://www.ssw.com.au/ssw/Consulting/Azure.aspx"
}
</script>

</asp:Content>


<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>
<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">


    <div class="Consulting-Hero employement-video">


        <div class="container hero">
            <h1>Need help with Microsoft Azure?</h1>
            <h2>Australia’s leading cloud developers and consultants</h2>
            <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal"><div class="anim"></div>
                Book a FREE Initial Meeting
            </button>
            <h2>or call us on +61 2 9953 3000</h2>
            <!-- CTA button-->
        </div>

    </div>

    <div id="videocontainer">
    <video autoplay muted loop>
      <source src="/ssw/include/consulting/img/MVC_background.mp4" type="video/mp4">
      Your browser does not support HTML5 video.
    </video>
    </div>

    <!-- benefits-section -->

	<div class="benefits-section">
		<div class="container">
            <h1>The Benefits of Azure</h1>
                <div class="eric-video"><div class="video-player" data-id="-p1XoBWolLQ" data-youkuid=""></div></div>
            <h5>Microsoft Azure provides on-demand infrastructure and services that can scale and adapt to the business needs. Whether a business is creating new applications or running existing applications, SSW provide the best price-performance and end-to-end support. SSW consultants can provide advice on:</h5>
            <h2>1. How to modernize your existing applications</h2>
            <h2>2. Architecting and developing new cloud-first solutions on Azure</h2>
            <h2>3. Migrate your on-premise SQL Server to Azure SQL Server</h2>
            <h2>4. How to leverage Artificial Intelligence and Machine Learning</h2>
            
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/sharing-and-collaboration.png" />
                    <h4>No local infrastructure</h4>
                    <p>You no longer need to keep patching, maintaining, or replacing server racks</p>
                </div>
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/speedup_db.png" />
                    <h4>Infinite scalability</h4>
                    <p>If your application suddenly takes off, you can scale instantly to service the increased demand</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/pay-for-what-you-use.png" />
                    <h4>Pay for what you use</h4>
                    <p>Instead of over-engineering from the start and paying for what you don’t need, you only pay for what you use</p>
                </div>
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/years-of-expereince.png" />
                    <h4>BI and Analytics</h4>
                    <p>Built in support for digging deeper into your data</p>
                </div>
            </div>
            <h5>Utilizing the latest <a href="https://rules.ssw.com.au/rules-to-better-azure">best practices</a>, SSW's developers can build any custom cloud based solution for businesses.</h5>
        </div>

	</div>
<!-- //benefits-section -->



    <!-- testimonials section -->

	<div class="testimonials-section">
        <div class="container">
            <div class="col-md-4 testimonialCol">
                <div class="callout top-left" data-aos="flip-right">
                    <p>It was a pleasure to have you in the office again.</p>
                    <p>I continue to be impressed by the quality of work and advice you provide.</p>
                
                </div>
                 <img src="/SSW/images/consulting/mark_p.jpg"/><div class="tName"> Mark Pigram</div><div class="tCompany">Contracts Online</div>
            </div>
           
            <div class="col-md-4 testimonialCol">
                <div class="callout top-left" data-aos="flip-right">
                <p>We have dealt with several people at SSW from a network tech helping us with a domain issue, to a couple of graphic designers and several programmers and they have ALL been first rate. </p>
                </div>
                <img src="/SSW/images/consulting/peter-dimaridis.jpg"/><div class="tName"> Peter Dimaridis</div><div class="tCompany">AuctionsPlus</div>
            </div>

            <div class="col-md-4 testimonialCol">
                <div class="callout top-left" data-aos="flip-right">
                <p>... out of all the developers I have used in the past [SSW] provide the most complete solutions and best outcomes.</p>
                <p>Thanks for your attention to detail once again.</p>
                
                </div>
                <img src="/SSW/images/consulting/peter-m.jpg"/><div class="tName"> Peter McCurdy</div><div class="tCompany">PDS</div>
            </div>
            
    <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal" data-aos="fade-up"><div class="anim"></div>
                Book a FREE Initial Meeting
            </button>
                <h2>or call us on +61 2 9953 3000</h2>
    <!-- CTA button-->
        </div>
          
	</div>

<!-- //testimonials section -->
    <!-- about SSW section -->

	<div class="about-section">
		<div class="container">
            <h1>About SSW</h1>
            <div class="col-md-6">
                <div class="video-player" data-id="Jveq6VFjWTA" data-youkuid=""></div>
            </div>
            <div class="col-md-6">
                <p data-aos="fade-up">SSW's Consulting Services have delivered best of breed Microsoft solutions for more than 1,000 clients in 15 countries. With 40+ consultants in five countries, SSW's developers are some of the best in the business. We have many Microsoft Certifications, three MVPs, and a Microsoft Regional Director.</p>
            </div>
        </div>
	</div>
<!-- //about SSW section -->

    <!-- clients section -->

	<div class="clients-section">
		<div class="container">
            <h1>Companies we have worked with</h1>
            <div class="row no-gutters">
                <div class="col-sm-4"><img src="/SSW/images/consulting/clients1.png" alt="SSW Clients" class="center-block"></div>
                <div class="col-sm-4"><img src="/SSW/images/consulting/clients2.png" alt="SSW Clients" class="center-block"></div>
                <div class="col-sm-4"><img src="/SSW/images/consulting/clients3.png" alt="SSW Clients" class="center-block"></div>   
            </div>
        </div>
	</div>
<!-- //clients section -->

    <!-- modules section -->

	<div class="technologies-section MSection">
		<div class="container">
            <h1>Technologies</h1>

            <div class="col-md-4">
                <div class="greyTBox azure CModule" data-aos="flip-left">
                    <div class="svgTechIcon"><svg id="svg-virtual-machines" viewBox="0 0 51 47" width="100%" height="100%"> <path fill="#7A7A7A" d="M32.9,36.9h-1.2H19.9h-0.6c1.6,5.7-0.6,6.6-10.2,6.6v3h12.2h8.9h11.5v-3 C32.2,43.5,31.3,42.7,32.9,36.9z"></path> <path fill="#3E3E3E" d="M47.5,0.5H3.2c-1.5,0-2.7,1.3-2.7,2.8v30.8c0,1.5,1.2,2.8,2.7,2.8h44.3c1.5,0,3-1.3,3-2.8V3.3 C50.5,1.8,49,0.5,47.5,0.5z M46.7,4.3v28.7H4.3V4.3l42.4-0.1L46.7,4.3z"></path> <polygon fill="#00BBF1" points="46.6,4.3 46.6,33.1 4.3,33.1 4.3,4.3 46.7,4.3"></polygon> <path fill="#7A7A7A" d="M4.3,33.1L4.3,33.1L4.3,4.3L43,4.3l4.5-3.8c0,0,0,0,0,0H3.2c-1.5,0-2.7,1.3-2.7,2.8v30.8 c0,1.5,1.2,2.8,2.7,2.8h1.1l4.6-3.8H4.3z"></path> <polygon fill="#59B4D9" points="4.3,33.1 4.3,33.1 4.3,4.3 43,4.3 43,4.3 4.3,4.3"></polygon> <rect x="9.2" y="43.5" fill="#B0B0B0" width="32.7" height="3"></rect> <circle fill="#BAC84A" cx="25.3" cy="2.6" r="0.7"></circle> <path opacity="0.9" fill="#FFFFFF" d="M25.5,18.2c0,0-0.1,0-0.1,0l-8.8-5.1c-0.1,0-0.1-0.1-0.1-0.2c0-0.1,0.1-0.2,0.1-0.2l8.7-5 c0.1,0,0.2,0,0.3,0l8.8,5.1c0.1,0,0.1,0.1,0.1,0.2c0,0.1,0,0.2-0.1,0.2l-8.7,5C25.6,18.2,25.5,18.2,25.5,18.2z"></path> <path opacity="0.8" fill="#FFFFFF" d="M24.2,30.5c0,0-0.1,0-0.1,0l-8.8-5c-0.1,0-0.1-0.1-0.1-0.2V15.1c0-0.1,0-0.2,0.1-0.2 c0.1,0,0.2,0,0.3,0l8.8,5c0.1,0,0.1,0.1,0.1,0.2v10.1c0,0.1-0.1,0.2-0.1,0.2C24.3,30.5,24.3,30.5,24.2,30.5z"></path> <path opacity="0.5" fill="#FFFFFF" d="M26.7,30.5c0,0-0.1,0-0.1,0c-0.1,0-0.1-0.1-0.1-0.2V20.2c0-0.1,0.1-0.2,0.1-0.2l8.8-5 c0.1,0,0.2,0,0.3,0c0.1,0,0.1,0.1,0.1,0.2v10.1c0,0.1-0.1,0.2-0.1,0.2l-8.8,5C26.8,30.5,26.7,30.5,26.7,30.5z"></path> </svg></div>
                    <p class="h3">Virtual Machines</p>
                    <p>Provision Windows or Linux virtual machines in seconds</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="greyTBox azure CModule" data-aos="flip-left">
                    <div class="svgTechIcon"><svg id="svg-app-service" viewBox="0 0 50 50" width="100%" height="100%"> <path fill="#A0A1A2" d="M20.1,46.5H3.5V30h3.4c-0.4-1-0.6-2.1-0.6-3.3c0,0,0-0.1,0-0.2H0V50h23.6V36h-3.5V46.5z"></path> <path fill="#A0A1A2" d="M43.5,30h3v16.6H29.9V36.1h-3.5V50H50V26.5h-7.4c0.5,1,0.9,2,0.9,3.3C43.5,29.8,43.5,29.9,43.5,30z"></path> <path fill="#A0A1A2" d="M3.5,20V3.5h16.6v9.6c1-0.8,2.3-1.3,3.5-1.6V0H0v23.5h6.8C7.3,22.3,8,21,9,20.1L3.5,20L3.5,20z"></path> <path fill="#A0A1A2" d="M29.9,11.1V3.5h16.6v16.6h-7.3c0.3,1,0.5,2.2,0.5,3.4c0,0,0,0.1,0,0.1H50V0H26.4v10.9c0.3,0,0.5-0.1,0.8-0.1 C28.1,10.9,29,10.9,29.9,11.1z"></path> <path fill="#59B4D9" d="M40.8,29.7c0-2.1-1.7-3.7-3.7-3.7c-0.2,0-0.3,0-0.5,0c0.2-0.8,0.4-1.7,0.4-2.6c0-5.5-4.4-9.9-9.9-9.9 c-4.3,0-8,2.8-9.3,6.8c-0.7-0.2-1.4-0.4-2.2-0.4c-3.7,0-6.7,3-6.7,6.8c0,3.8,3,6.8,6.7,6.8c0,0,0,0,0,0v0h21.8l0,0 C39.3,33.3,40.8,31.7,40.8,29.7"></path> <path opacity="0.2" fill="#FFFFFF" d="M19.2,33.5c-0.9-0.9-1.5-2-1.8-3.3c-0.8-3.7,1.4-7.3,5.1-8.1c0.8-0.2,1.5-0.2,2.2-0.1 c0.3-3.4,2.4-6.5,5.5-8c-0.9-0.3-1.9-0.5-3-0.5c-4.3,0-8,2.8-9.3,6.8c-0.7-0.2-1.4-0.4-2.2-0.4c-3.7,0-6.7,3-6.7,6.8 c0,3.8,3,6.8,6.7,6.8c0,0,0,0,0,0v0H19.2z"></path> </svg></div>
                    <p class="h3">App Service</p>
                    <p>Create powerful cloud apps for web and mobile</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="greyTBox azure CModule" data-aos="flip-left">
                    <div class="svgTechIcon"><svg id="svg-sql-database" viewBox="-0.5 0.5 50 50" width="100%" height="100%"> <path fill="#0072C6" d="M5.757,7.288v36.111c0,3.749,8.392,6.789,18.743,6.789v-42.9C24.5,7.288,5.757,7.288,5.757,7.288z"></path> <path fill="#0072C6" d="M24.243,50.187H24.5c10.351,0,18.743-3.038,18.743-6.788V7.288h-19V50.187z"></path> <path opacity="0.15" fill="#FFFFFF" d="M24.243,50.187H24.5c10.351,0,18.743-3.038,18.743-6.788V7.288h-19V50.187z"></path> <path fill="#FFFFFF" d="M43.243,7.288c0,3.749-8.392,6.788-18.743,6.788S5.757,11.037,5.757,7.288S14.149,0.5,24.5,0.5S43.243,3.539,43.243,7.288"></path> <path fill="#7FBA00" d="M39.411,6.897c0,2.475-6.676,4.479-14.911,4.479S9.588,9.372,9.588,6.897c0-2.474,6.677-4.479,14.912-4.479S39.411,4.423,39.411,6.897"></path> <path fill="#B8D432" d="M36.287,9.634c1.952-0.757,3.125-1.705,3.125-2.735c0-2.475-6.676-4.48-14.912-4.48c-8.235,0-14.911,2.005-14.911,4.48c0,1.03,1.173,1.978,3.125,2.735C15.44,8.576,19.7,7.893,24.5,7.893C29.301,7.893,33.559,8.576,36.287,9.634"></path> <path fill="#FFFFFF" d="M18.547,32.354c0,1.122-0.407,1.991-1.221,2.607c-0.814,0.616-1.938,0.924-3.373,0.924c-1.221,0-2.241-0.22-3.061-0.66v-2.64c0.946,0.803,1.988,1.205,3.126,1.205c0.55,0,0.975-0.11,1.275-0.33s0.45-0.511,0.45-0.875c0-0.357-0.144-0.668-0.433-0.932s-0.876-0.605-1.761-1.023c-1.804-0.846-2.706-2.002-2.706-3.464c0-1.061,0.393-1.912,1.18-2.553c0.786-0.64,1.831-0.961,3.134-0.961c1.155,0,2.111,0.152,2.871,0.454v2.466c-0.797-0.55-1.705-0.825-2.722-0.825c-0.511,0-0.915,0.108-1.212,0.325c-0.297,0.218-0.445,0.508-0.445,0.87c0,0.374,0.119,0.681,0.359,0.92c0.239,0.239,0.73,0.535,1.472,0.887c1.106,0.523,1.893,1.053,2.364,1.592C18.312,30.881,18.547,31.552,18.547,32.354z"></path> <path fill="#FFFFFF" d="M31.274,29.682c0,1.391-0.317,2.599-0.949,3.621c-0.633,1.023-1.523,1.74-2.672,2.153l3.431,3.176H27.62l-2.45-2.747c-1.05-0.038-1.998-0.316-2.842-0.833c-0.844-0.516-1.496-1.225-1.955-2.124s-0.689-1.902-0.689-3.007c0-1.226,0.249-2.319,0.746-3.279c0.498-0.96,1.197-1.698,2.099-2.215c0.902-0.516,1.935-0.775,3.102-0.775c1.088,0,2.063,0.25,2.924,0.751c0.86,0.5,1.528,1.212,2.004,2.136C31.036,27.463,31.274,28.511,31.274,29.682z M28.47,29.831c0-1.199-0.261-2.146-0.784-2.842s-1.237-1.044-2.145-1.044c-0.924,0-1.663,0.349-2.219,1.047c-0.555,0.699-0.833,1.628-0.833,2.788c0,1.155,0.272,2.077,0.816,2.767c0.545,0.69,1.267,1.035,2.169,1.035c0.919,0,1.647-0.334,2.186-1.002C28.2,31.913,28.47,30.996,28.47,29.831z"></path> <polygon fill="#FFFFFF" points="40.273,35.679 33.229,35.679 33.229,23.851 35.893,23.851 35.893,33.518 40.273,33.518 "></polygon> </svg></div>
                    <p class="h3">SQL Database</p>
                    <p>Managed, relational SQL Database as a service</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="greyTBox azure CModule" data-aos="flip-left">
                    <div class="svgTechIcon"><svg id="svg-storage" viewBox="0 0 50 50" width="100%" height="100%"> <path fill="#A0A1A2" d="M0,44.4c0,1,0.7,1.9,1.9,1.9h46.2c1,0,1.9-0.7,1.9-1.9V11.3H0V44.4z"></path> <path fill="#7A7A7A" d="M48.1,3.7H1.9C0.7,3.7,0,4.6,0,5.6v5.7h50V5.6C50,4.6,49.3,3.7,48.1,3.7"></path> <rect x="18.8" y="14.6" fill="#FFFFFF" width="12.6" height="7.6"></rect> <rect x="18.8" y="24.9" fill="#FCD116" width="12.6" height="7.6"></rect> <rect x="33.8" y="24.9" fill="#FCD116" width="12.6" height="7.6"></rect> <rect x="33.8" y="14.6" fill="#FFFFFF" width="12.6" height="7.6"></rect> <rect x="3.8" y="14.6" fill="#FFFFFF" width="12.6" height="7.6"></rect> <rect x="3.8" y="24.9" fill="#FFFFFF" width="12.6" height="7.6"></rect> <rect x="3.8" y="35.1" fill="#FCD116" width="12.6" height="7.6"></rect> <rect x="18.8" y="35.1" fill="#FCD116" width="12.6" height="7.6"></rect> <rect x="33.8" y="35.1" fill="#FCD116" width="12.6" height="7.6"></rect> <path opacity="0.2" fill="#FFFFFF" d="M1.9,3.7C1,3.7,0,4.6,0,5.6V13v3.3v28.1c0,1,1,1.9,1.9,1.9H4 	L43.6,3.7H1.9z"></path> </svg></div>
                    <p class="h3">Storage</p>
                    <p>Durable, highly available, and massively scalable storage</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="greyTBox azure CModule" data-aos="flip-left">
                    <div class="svgTechIcon"><svg id="svg-functions" viewBox="7 -7 64 64" width="100%" height="100%"> <path fill="#3999C6" d="M70.6,25.4c0.6-0.6,0.5-1.7,0-2.3L67.5,20L53.7,6.6c-0.6-0.6-1.5-0.6-2.2,0l0,0c-0.6,0.6-0.8,1.7,0,2.3 L66,23.1c0.6,0.6,0.6,1.7,0,2.3L51.2,40.1c-0.6,0.6-0.6,1.7,0,2.3l0,0c0.6,0.6,1.7,0.5,2.2,0l13.7-13.6c0,0,0,0,0.1-0.1L70.6,25.4z"></path> <path fill="#3999C6" d="M7.4,25.4c-0.6-0.6-0.5-1.7,0-2.3l3.1-3.1L24.3,6.6c0.6-0.6,1.5-0.6,2.2,0l0,0c0.6,0.6,0.8,1.7,0,2.3 L12.3,23.1c-0.6,0.6-0.6,1.7,0,2.3l14.5,14.7c0.6,0.6,0.6,1.7,0,2.3l0,0c-0.6,0.6-1.7,0.5-2.2,0L10.6,29c0,0,0,0-0.1-0.1L7.4,25.4z"></path> <polygon fill="#FCD116" points="54.6,-4.5 35.1,-4.5 24.6,25.1 37.4,25.2 27.4,54.5 55,15.4 41.6,15.4 "></polygon> <polygon opacity="0.3" fill="#FF8C00" points="41.6,15.4 54.6,-4.5 44.4,-4.5 33.6,20.1 46.4,20.2  27.4,54.5 55,15.4 "></polygon> </svg></div>
                    <p class="h3">Azure Functions</p>
                    <p>Process events with serverless code</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="greyTBox azure CModule" data-aos="flip-left">
                    <div class="svgTechIcon"><svg id="svg-container-service" viewBox="-454 256 50 50" width="100%" height="100%"> <polygon fill="#804998" points="-431.1,271.9 -438.8,274.9 -438.8,262.5 -431.1,265.2"></polygon> <path fill="#804998" d="M-445.7,264.6v8.1l5.7,2.2v-12.3L-445.7,264.6z M-445.1,272.1l-0.3-0.1v-6.7l0.3-0.1l0.3-0.1l0.3-0.1v7.3 l-0.3-0.1L-445.1,272.1z M-443.6,272.5l-0.4-0.1v-7.5l0.4-0.1l0.4-0.1l0.4-0.1v8.2l-0.4-0.1L-443.6,272.5z M-441.8,273.1l-0.5-0.2 v-8.5l0.5-0.1l0.5-0.2l0.6-0.2v9.5l-0.6-0.2L-441.8,273.1z"></path> <polygon fill="#804998" points="-413.2,271.9 -420.9,274.9 -420.9,262.5 -413.2,265.2"></polygon> <path fill="#804998" d="M-427.8,264.6v8.1l5.7,2.2v-12.3L-427.8,264.6z M-427.2,272.1l-0.3-0.1v-6.7l0.3-0.1l0.3-0.1l0.3-0.1v7.3 l-0.3-0.1L-427.2,272.1z M-425.7,272.5l-0.4-0.1v-7.5l0.4-0.1l0.4-0.1l0.4-0.1v8.2l-0.4-0.1L-425.7,272.5z M-423.9,273.1l-0.5-0.2 v-8.5l0.5-0.1l0.5-0.2l0.6-0.2v9.5l-0.6-0.2L-423.9,273.1z"></path> <polygon fill="#804998" points="-431.1,296.5 -438.8,299.5 -438.8,287.1 -431.1,289.8"></polygon> <path fill="#804998" d="M-445.7,289.2v8.1l5.7,2.2v-12.3L-445.7,289.2z M-445.1,296.7l-0.3-0.1v-6.7l0.3-0.1l0.3-0.1l0.3-0.1v7.3 l-0.3-0.1L-445.1,296.7z M-443.6,297.1l-0.4-0.1v-7.5l0.4-0.1l0.4-0.1l0.4-0.1v8.2l-0.4-0.1L-443.6,297.1z M-441.8,297.7l-0.5-0.2 V289l0.5-0.1l0.5-0.2l0.6-0.2v9.5l-0.6-0.2L-441.8,297.7z"></path> <polygon fill="#804998" points="-413.2,296.5 -420.9,299.5 -420.9,287.1 -413.2,289.8"></polygon> <path fill="#804998" d="M-427.8,289.2v8.1l5.7,2.2v-12.3L-427.8,289.2z M-427.2,296.7l-0.3-0.1v-6.7l0.3-0.1l0.3-0.1l0.3-0.1v7.3 l-0.3-0.1L-427.2,296.7z M-425.7,297.1l-0.4-0.1v-7.5l0.4-0.1l0.4-0.1l0.4-0.1v8.2l-0.4-0.1L-425.7,297.1z M-423.9,297.7l-0.5-0.2 V289l0.5-0.1l0.5-0.2l0.6-0.2v9.5l-0.6-0.2L-423.9,297.7z"></path> <polygon fill="#804998" points="-421.6,284.2 -429.2,287.1 -429.2,274.8 -421.6,277.5"></polygon> <path fill="#804998" d="M-436.2,276.8v8.1l5.7,2.2v-12.3L-436.2,276.8z M-435.6,284.3l-0.3-0.1v-6.7l0.3-0.1l0.3-0.1l0.3-0.1v7.3 l-0.3-0.1L-435.6,284.3z M-434.1,284.8l-0.4-0.1v-7.5l0.4-0.1l0.4-0.1l0.4-0.1v8.2l-0.4-0.1L-434.1,284.8z M-432.3,285.4l-0.5-0.2 v-8.5l0.5-0.1l0.5-0.2l0.6-0.2v9.5l-0.6-0.2L-432.3,285.4z"></path> <polygon fill="#804998" points="-439.4,284.2 -447,287.1 -447,274.8 -439.4,277.5"></polygon> <path fill="#804998" d="M-454,276.8v8.1l5.7,2.2v-12.3L-454,276.8z M-453.4,284.3l-0.3-0.1v-6.7l0.3-0.1l0.3-0.1l0.3-0.1v7.3l-0.3-0.1 L-453.4,284.3z M-451.9,284.8l-0.4-0.1v-7.5l0.4-0.1l0.4-0.1l0.4-0.1v8.2l-0.4-0.1L-451.9,284.8z M-450.1,285.4l-0.5-0.2v-8.5 l0.5-0.1l0.5-0.2l0.6-0.2v9.5l-0.6-0.2L-450.1,285.4z"></path> <polygon fill="#804998" points="-404,284.2 -411.6,287.1 -411.6,274.8 -404,277.5"></polygon> <polygon fill="#FFF" opacity="0.2" points="-431.1,271.9 -438.8,274.9 -438.8,262.5 -431.1,265.2"></polygon> <polygon fill="#FFF" opacity="0.2" points="-413.2,271.9 -420.9,274.9 -420.9,262.5 -413.2,265.2"></polygon> <polygon fill="#FFF" opacity="0.2" points="-431.1,296.5 -438.8,299.5 -438.8,287.1 -431.1,289.8"></polygon> <polygon fill="#FFF" opacity="0.2" points="-413.2,296.5 -420.9,299.5 -420.9,287.1 -413.2,289.8"></polygon> <polygon fill="#FFF" opacity="0.2" points="-421.6,284.2 -429.2,287.1 -429.2,274.8 -421.6,277.5"></polygon> <polygon fill="#FFF" opacity="0.2" points="-439.4,284.2 -447,287.1 -447,274.8 -439.4,277.5"></polygon> <polygon fill="#FFF" opacity="0.2" points="-404,284.2 -411.6,287.1 -411.6,274.8 -404,277.5"></polygon> <path fill="#804998" d="M-418.6,276.8v8.1l5.7,2.2v-12.3L-418.6,276.8z M-418,284.3l-0.3-0.1v-6.7l0.3-0.1l0.3-0.1l0.3-0.1v7.3 l-0.3-0.1L-418,284.3z M-416.5,284.8l-0.4-0.1v-7.5l0.4-0.1l0.4-0.1l0.4-0.1v8.2l-0.4-0.1L-416.5,284.8z M-414.7,285.4l-0.5-0.2 v-8.5l0.5-0.1l0.5-0.2l0.6-0.2v9.5l-0.6-0.2L-414.7,285.4z"></path> </svg></div>
                    <p class="h3">Azure Container Services</p>
                    <p>Create a fully managed Kubernetes cluster</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="greyTBox azure CModule" data-aos="flip-left">
                    <div class="svgTechIcon"><svg id="svg-search" viewBox="0 0 50 50" width="100%" height="100%"> <path fill="#59B4D9" d="M44,14.2c0-0.4,0.1-0.9,0.1-1.3c0-7.1-5.8-12.8-13-12.8C26.9,0,23,2,20.6,5.3c-1.5-1-3.3-1.5-5.2-1.5 c-5.4,0-9.8,4.4-9.8,9.7l0,0.8C2,16.2,0,19.3,0,23.1c0,6,4.9,10.7,11.2,10.7h27.6c6.3,0,11.2-4.7,11.2-10.7 C50,19.1,47.8,15.9,44,14.2z"></path> <path opacity="0.2" fill="#FFFFFF" d="M7,28c0-4.1,2.1-7.3,6-9.3l0-0.8c0-5.7,4.7-10.3,10.4-10.3c2,0,3.9,0.5,5.5,1.5 c2.5-3.5,6.7-5.7,11.2-5.7c0,0,0,0,0,0C37.7,1.3,34.6,0,31.1,0C26.9,0,23,2,20.6,5.3c-1.5-1-3.3-1.5-5.2-1.5c-5.4,0-9.8,4.4-9.8,9.7 l0,0.8C2,16.2,0,19.3,0,23.1c0,5.1,3.5,9.3,8.4,10.4C7.5,31.9,7,30,7,28z"></path> <path fill="#FFFFFF" d="M34.3,31c-1,3.9-4.4,6.6-8.4,6.6c-0.7,0-1.4-0.1-2.1-0.3c-1-0.3-2-0.7-2.8-1.3c-0.9-0.6-1.6-1.4-2.2-2.2 c-1.3-2-1.9-4.4-1.3-6.9c1-3.9,4.4-6.6,8.4-6.6c0.7,0,1.4,0.1,2.1,0.3c2.2,0.6,4.1,1.9,5.3,3.9C34.5,26.4,34.9,28.8,34.3,31"></path> <path opacity="0.1" fill="#59B4D9" d="M34.3,31c-1,3.9-4.4,6.6-8.4,6.6c-0.7,0-1.4-0.1-2.1-0.3c-1-0.3-2-0.7-2.8-1.3 c-0.9-0.6-1.6-1.4-2.2-2.2c-1.3-2-1.9-4.4-1.3-6.9c1-3.9,4.4-6.6,8.4-6.6c0.7,0,1.4,0.1,2.1,0.3c2.2,0.6,4.1,1.9,5.3,3.9 C34.5,26.4,34.9,28.8,34.3,31"></path> <path opacity="0.3" fill="#59B4D9" d="M30.6,21.7c-0.8-0.5-1.7-0.9-2.6-1.1c-0.7-0.2-1.4-0.3-2.1-0.3c-4,0-7.4,2.7-8.4,6.6 c-0.6,2.5-0.1,5,1.3,6.9c0.2,0.3,0.5,0.7,0.8,1C21.4,29.1,25.4,24.4,30.6,21.7"></path> <path fill="#3E3E3E" d="M36.5,22.6c-1.7-2.8-4.4-4.8-7.6-5.6c-1-0.2-2-0.4-3-0.4c-5.7,0-10.6,3.9-12,9.4c-0.8,3.1-0.3,6.3,1.3,9.1 l-9.4,9.5c-1.2,1.2-1.2,3.3,0,4.5C6.5,49.7,7.3,50,8.1,50c0.8,0,1.6-0.3,2.3-0.9l9.4-9.5c1,0.6,2.1,1,3.2,1.3c1,0.2,2,0.4,3,0.4 c5.7,0,10.6-3.9,12-9.4C38.7,28.7,38.2,25.4,36.5,22.6z M34.3,31c-1,3.9-4.4,6.6-8.4,6.6c-0.7,0-1.4-0.1-2.1-0.3 c-1-0.3-2-0.7-2.8-1.3c-0.9-0.6-1.6-1.4-2.2-2.2c-1.3-2-1.9-4.4-1.3-6.9c1-3.9,4.4-6.6,8.4-6.6c0.7,0,1.4,0.1,2.1,0.3 c2.2,0.6,4.1,1.9,5.3,3.9C34.5,26.5,34.9,28.8,34.3,31z"></path> <path opacity="0.5" fill="#1E1E1E" d="M18.9,39.1c-1.3-0.9-2.3-1.9-3.2-3.2c-0.2-0.3-0.3-0.5-0.5-0.8L14.4,36l-0.1,0.1 c0.1,0.2,0.2,0.4,0.4,0.6c1,1.4,2.1,2.6,3.5,3.6c0.1,0.1,0.4,0.2,0.7,0.3l0.9-0.9C19.4,39.4,19.2,39.3,18.9,39.1z"></path> </svg></div>
                    <p class="h3">Azure Search</p>
                    <p>Fully managed Search as a service</p>
                </div>
            </div>


            <div class="col-md-4">
                <div class="greyTBox azure CModule" data-aos="flip-left">
                    <div class="svgTechIcon"><svg id="svg-cognitive-services" viewBox="-227.333 -143 193.076 114.371" width="100%" height="100%"> <path fill="#009580" d="M-36.636-86.307c-3.504-8.302-10.753-15.332-20.133-19.63c-4.324-14.539-16.426-29.079-34.475-29.079 c-0.575,0-1.156,0.015-1.741,0.044c-7.528-5.398-14.84-8.029-22.287-8.029c-4.489,0-9.076,0.991-13.674,2.952 c-3.405-1.785-7.312-2.715-11.487-2.715c-9.237,0-17.998,4.266-23.406,9.264c-1.702-0.401-3.475-0.604-5.304-0.604 c-13.779,0-27.433,11.384-31.124,25.186c-11.877,4.309-20.551,12.139-24.624,22.323c-3.952,9.882-3.083,20.93,2.384,30.313 c5.43,9.319,14.928,14.883,25.408,14.883c4.021,0,7.896-0.821,11.431-2.402c6.372,5.793,14.571,9.256,22.334,9.256 c2.707,0,5.299-0.4,7.749-1.193c6.286,5.17,15.922,7.109,23.74,7.109c9.226,0,17.242-2.437,22.557-6.693 c3.444,1.594,7.237,2.421,11.194,2.42h0.003c9.899,0,20.127-5.274,25.713-12.607c3.116,1.277,6.396,1.938,9.712,1.938 c0,0,0.002,0,0.003,0c10.816-0.002,20.86-7.063,25.589-17.989C-33.47-69.889-33.318-78.446-36.636-86.307z"></path> <path fill="#FFFFFF" d="M-165.281-34.625v-33.997c0-4.219-3.432-7.65-7.65-7.65h-12.74v5.408h12.74 c1.236,0,2.242,1.006,2.242,2.242v33.091C-168.893-35.057-167.08-34.756-165.281-34.625z"></path> <path fill="#FFFFFF" d="M-141.77-92.783h-17.115c-1.236,0-2.242-1.006-2.242-2.243v-40.697c-0.973,0.717-1.886,1.459-2.712,2.223 c-0.88-0.208-1.78-0.36-2.696-0.46v38.934c0,4.219,3.432,7.651,7.65,7.651h17.115c1.234,0,2.24,1.005,2.24,2.24v12.673h5.408 v-12.673C-134.121-89.353-137.553-92.783-141.77-92.783z"></path> <path fill="#FFFFFF" d="M-69.771-71.164v-4.85h-5.41v4.85c0,1.236-1.004,2.242-2.24,2.242H-99.09v-38.774 c0-4.218-3.431-7.65-7.649-7.65h-14.741v5.408h14.741c1.236,0,2.241,1.005,2.241,2.242v74.031 c1.75,0.423,3.559,0.672,5.408,0.737v-30.585h21.668C-73.203-63.514-69.771-66.945-69.771-71.164z"></path> <path fill="#FFFFFF" d="M-136.825-50.096c-6.643,0-12.048-5.406-12.048-12.05c0-6.645,5.405-12.051,12.048-12.051 c6.644,0,12.049,5.406,12.049,12.051C-124.776-55.501-130.182-50.096-136.825-50.096z M-136.825-69.196 c-3.886,0-7.048,3.163-7.048,7.051c0,3.887,3.162,7.05,7.048,7.05c3.887,0,7.049-3.163,7.049-7.05 C-129.776-66.033-132.938-69.196-136.825-69.196z"></path> <path fill="#FFFFFF" d="M-194.415-61.564c-6.644,0-12.049-5.406-12.049-12.051c0-6.645,5.405-12.05,12.049-12.05 s12.049,5.406,12.049,12.05C-182.366-66.971-187.771-61.564-194.415-61.564z M-194.415-80.666c-3.887,0-7.049,3.163-7.049,7.05 c0,3.888,3.162,7.051,7.049,7.051s7.049-3.163,7.049-7.051C-187.366-77.503-190.528-80.666-194.415-80.666z"></path> <path fill="#FFFFFF" d="M-72.43-73.066c-6.644,0-12.049-5.405-12.049-12.05c0-6.644,5.405-12.049,12.049-12.049 c6.643,0,12.047,5.405,12.047,12.049C-60.383-78.471-65.787-73.066-72.43-73.066z M-72.43-92.165 c-3.887,0-7.049,3.162-7.049,7.049s3.162,7.05,7.049,7.05c3.886,0,7.047-3.163,7.047-7.05S-68.544-92.165-72.43-92.165z"></path> <path fill="#FFFFFF" d="M-130.226-100.64c-6.644,0-12.049-5.405-12.049-12.048c0-6.644,5.405-12.05,12.049-12.05 s12.049,5.406,12.049,12.05C-118.177-106.045-123.582-100.64-130.226-100.64z M-130.226-119.738c-3.887,0-7.049,3.163-7.049,7.05 c0,3.886,3.162,7.048,7.049,7.048s7.049-3.162,7.049-7.048C-123.177-116.576-126.339-119.738-130.226-119.738z"></path> </svg></div>
                    <p class="h3">Cognitive Services</p>
                    <p>Add Smart API capabilities to enable contextual interactions</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="greyTBox azure CModule" data-aos="flip-left">
                    <div class="svgTechIcon"><svg id="svg-expressroute" viewBox="0 0 50 50" width="100%" height="100%"> <rect x="9.8" y="32.8" fill="#68217A" width="31" height="3.8"></rect> <rect x="4.4" y="23.4" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -13.5374 18.0172)" fill="#68217A" width="21.2" height="3.8"></rect> <rect x="24.5" y="23.4" transform="matrix(0.7071 0.7071 -0.7071 0.7071 28.2012 -17.3844)" fill="#68217A" width="21.2" height="3.8"></rect> <path fill="#7FBA00" d="M25,9.7c-3.1,0-5.6,2.5-5.6,5.6c0,3.1,2.5,5.6,5.6,5.6s5.6-2.5,5.6-5.6C30.6,12.2,28.1,9.7,25,9.7z M25,17.1 c-1,0-1.8-0.8-1.8-1.8s0.8-1.8,1.8-1.8s1.8,0.8,1.8,1.8S26,17.1,25,17.1z"></path> <path fill="#7FBA00" d="M5.6,29.1c-3.1,0-5.6,2.5-5.6,5.6c0,3.1,2.5,5.6,5.6,5.6s5.6-2.5,5.6-5.6C11.2,31.6,8.7,29.1,5.6,29.1z M5.6,36.5c-1,0-1.8-0.8-1.8-1.8s0.8-1.8,1.8-1.8s1.8,0.8,1.8,1.8S6.6,36.5,5.6,36.5z"></path> <path fill="#7FBA00" d="M44.4,29.1c-3.1,0-5.6,2.5-5.6,5.6c0,3.1,2.5,5.6,5.6,5.6s5.6-2.5,5.6-5.6C50,31.6,47.5,29.1,44.4,29.1z M44.4,36.5c-1,0-1.8-0.8-1.8-1.8s0.8-1.8,1.8-1.8s1.8,0.8,1.8,1.8S45.4,36.5,44.4,36.5z"></path> </svg></div>
                    <p class="h3">Azure ExpressRoute</p>
                    <p>Private connection into cloud infrastructure.</p>
                </div>
            </div>
            <div class="col-md-12">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <div class="svgTechIcon"><svg id="svg-virtual-network" viewBox="0 0 50 50" width="100%" height="100%"> <path fill="#3999C6" d="M49.7,25.7c0.5-0.5,0.4-1.3,0-1.8l-2.4-2.4L36.5,11c-0.5-0.5-1.2-0.5-1.7,0l0,0c-0.5,0.5-0.6,1.3,0,1.8 l11.3,11.1c0.5,0.5,0.5,1.3,0,1.8L34.6,37.2c-0.5,0.5-0.5,1.3,0,1.8l0,0c0.5,0.5,1.3,0.4,1.7,0l10.7-10.6c0,0,0,0,0.1-0.1L49.7,25.7 z"></path> <path fill="#3999C6" d="M0.3,25.7c-0.5-0.5-0.4-1.3,0-1.8l2.4-2.4L13.5,11c0.5-0.5,1.2-0.5,1.7,0l0,0c0.5,0.5,0.6,1.3,0,1.8 L4.1,23.9c-0.5,0.5-0.5,1.3,0,1.8l11.3,11.5c0.5,0.5,0.5,1.3,0,1.8l0,0c-0.5,0.5-1.3,0.4-1.7,0L2.8,28.5c0,0,0,0-0.1-0.1L0.3,25.7z"></path> <path fill="#7FBA00" d="M18.2,24.8c0,1.9-1.6,3.3-3.3,3.3s-3.5-1.6-3.5-3.3s1.4-3.3,3.5-3.3C16.9,21.5,18.2,23.1,18.2,24.8z"></path> <path fill="#7FBA00" d="M28.3,24.8c0,1.9-1.6,3.3-3.3,3.3s-3.5-1.6-3.5-3.3s1.6-3.3,3.5-3.3S28.3,23.1,28.3,24.8z"></path> <circle fill="#7FBA00" cx="35.2" cy="24.8" r="3.3"></circle> </svg></div>
                    <p class="h3">Much More</p>
                    <p>Azure is too huge to fully cover in this one page, and also includes:</p>
                    <div class="col-md-4">
                        <ul>
                            <li>Service Fabric</li>
                            <li>Azure DevOps (was Visual Studio Team Services)</li>
                            <li>IaaS</li>
                            <li>SQL Data Warehouse</li>
                            <li>Data Factory</li>
                            <li>Machine Learning Studio</li>
                            <li>Stream Analytics</li>
                            <li>Azure DNS</li>
                            <li>Security Centre</li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <ul>   
                            <li>Cloud Services</li>
                            <li>PaaS</li>
                            <li>Power BI Embedded</li>
                            <li>Table Storage</li>
                            <li>Azure IOT Hub</li>
                            <li>Notification Hubs</li>
                            <li>Application Insights</li>
                            <li>Load Balancer</li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <ul>
                            <li>Virtual Network</li>
                            <li>Azure Data Lake</li>
                            <li>Document DB</li>
                            <li>HD Insight</li>
                            <li>Event Hubs</li>
                            <li>Site Recovery</li>
                            <li>Automation</li>
                            <li>Azure Bot Service</li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
	</div>
<!-- //Modules section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your Azure project</h1>
            
                <p>Jump on a call with one of our Account Managers to discuss how we can help you.</p>

    <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal" data-aos="fade-up"><div class="anim"></div>
                Book a FREE Initial Meeting
            </button>
            <h2>or call us on +61 2 9953 3000</h2>
    <!-- CTA button-->
                    
        </div>
	</div>

<!-- //solutions section -->
</asp:Content>