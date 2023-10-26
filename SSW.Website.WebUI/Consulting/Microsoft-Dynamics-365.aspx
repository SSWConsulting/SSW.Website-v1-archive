<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Microsoft Dynamics 365 | SSW Consulting - Sydney, Brisbane, Melbourne and remote" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

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
        "url": "https://www.ssw.com.au/SSW/Consulting/images/thumbs/thumb-dynamics.jpg",
        "height": "115",
        "width": "115",
        "@id": "https://www.ssw.com.au/SSW/Consulting/images/thumbs/thumb-dynamics.jpg"
    },
    "brand": {
        "@id": "https://www.ssw.com.au/"
    },
    "additionalType": "https://www.wikidata.org/wiki/Q27556059",
    "url": "https://www.ssw.com.au/ssw/Consulting/Microsoft-Dynamics-365.aspx",
    "areaServed": "http://www.wikidata.org/entity/Q13780930",
    "description": "Managing your client relationships is easy with Dynamics 365. It combines existing Microsoft products such as Dynamics CRM, Dynamics NAV, and Dynamics AX into one seamless solution. These components work together to allow your company to track customers across the whole life cycle of their interaction with you.",
    "name": "Dynamics 365",
    "@id": "https://www.ssw.com.au/ssw/Consulting/Microsoft-Dynamics-365.aspx"
}
</script>

</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">


    <div class="Consulting-Hero employement-video">


        <div class="container hero">
            <h1>Need help with <span class="red">Dynamics 365</span>?</h1>
            <h2>We can break down the silos between CRM and ERP</h2>
            <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal"><div class="anim"></div>
                Book a FREE Initial Meeting
            </button>
            <h2>or call us on +61 2 9953 3000</h2>
            <!-- CTA button-->
        </div>

        <div class="arrow-scroll bounce">
          <a class="fa fa-chevron-down" href="#more"></a>
        </div>

    </div>

    <div id="videocontainer">
    <video autoplay muted loop>
      <source src="/ssw/include/consulting/img/CRM_background.mp4" type="video/mp4">
      Your browser does not support HTML5 video.
    </video>
    </div>   

    <!-- benefits-section -->

	<div class="benefits-section">
		<div class="container">
            <h1>The benefits of <span class="red">Dynamics 365</span></h1><a name="more"></a>
            <div class="eric-video"><div class="video-player" data-id="HWeskYHfwio" data-youkuid=""></div></div>
            <div class="clearfix"></div>
            <div class="col-md-6"><div class="video-player" data-id="PV9w_rFsL1E" data-youkuid=""></div></div>
            <div class="col-md-6"><div class="video-player" data-id="loBH0g6N0zM" data-youkuid=""></div></div>
            <p class="clearfix"></p>
            <h5>Managing your client relationships is easy with Dynamics 365. It combines existing Microsoft products such as Dynamics CRM, Dynamics NAV, and Dynamics AX into one seamless solution. These components work together to allow your company to track customers across the whole life cycle of their interaction with you.</h5>
            <h5>Microsoft Dynamics 365 brings new levels of customer intelligence, providing every customer-facing employee the information they need to truly impress customers.</h5>
            <h5>You no longer need to worry about maintaining data across your CRM (Customer Relationship Management) and ERP (Enterprise Resource Planning) systems as all the information is seamlessly integrated.</h5>
            <h5>Microsoft Dynamics 365 allows you to select only the components you need and comes in two versions (Enterprise - More than 250 employees, and Business - 10 to 250 employees) so the possibilities for organisations large and small are limitless.</h5>
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/sharing-and-collaboration.png" />
                    <h4>Central Management</h4>
                    <p>Centrally manage leads, accounts, emails, phone calls, product sales, and services</p>
                </div>
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/years-of-expereince.png" />
                    <h4>Powerful reporting</h4>
                    <p>Full support for Power BI</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/business-processes.png" />
                    <h4>Very customizable</h4>
                    <p>XRM – Anything Relationship Management. Custom fields and entities.</p>
                </div>
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/crm-integration.png" />
                    <h4>Integration</h4>
                    <p>Integration with Microsoft PowerApps and Cortana</p>
                </div>
            </div>
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
            <h1>Why should you choose <span class="red">SSW</span>?</h1>
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
            <h1>Modules</h1>
            <h2>Use only the modules you need - Dynamics 365 is a collection of components designed to work together. Mix and match the parts you need while not missing out on the core functionality.</h2>

            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/ssw/Consulting/Images/dynamics-sales.png" />
                    <h2>Sales</h2>
                    <p>Track your leads, opportunities, and customers, Track sales performance, Engage with your clients</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/ssw/Consulting/Images/dynamics-customerservice.png" />
                    <h2>Customer Service</h2>
                    <p>Build a knowledge base for fast client self-service, Leverage in-built ticketing service, Track customer trends across social platforms</p>
                </div>
            </div>

            <div class="col-md-12">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/ssw/Consulting/Images/dynamics-operations.png" />
                    <h2>Finance and Operations</h2>
                    <p>Get everything you would expect from a fully functional ERP, Harness powerful Warehousing, Transportation, POS E-Commerce and Demand forecasting to track every part of your company, Make budgeting and planning easier than ever before</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/ssw/Consulting/Images/dynamics-fieldservice.png" />
                    <h2>Field Service</h2>
                    <p>Schedule your resources and optimize your dispatch process, Enable your staff with native Mobile Apps on all your favourite devices, Give your technicians inventory data in real time</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/ssw/Consulting/Images/dynamics-projectserviceautomation.png" />
                    <h2>Project Service Automation</h2>
                    <p>Help your Project Managers plan and schedule projects, Simplified customer billing and approval, Improve your company's time and expense management</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox" data-aos="flip-left">
                    <img src="/ssw/Consulting/Images/dynamics-mkt.png" />
                    <h2>Marketing</h2>
                    <p>Harness the power of Adobe Marketing Cloud from within Dynamics 365, Get a 360-degree view of customer interactions, Anticipate customers' needs using insights from your own data</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/ssw/Consulting/Images/dynamics-customerinsights.png" />
                    <h2>Customer Insights</h2>
                    <p>Improve your productivity by gaining access to customer insights, Use big data to understand all the interactions going</p>
                </div>
            </div>

        </div>
	</div>
<!-- //Modules section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about <span class="red">Dynamics 365</span></h1>
            
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