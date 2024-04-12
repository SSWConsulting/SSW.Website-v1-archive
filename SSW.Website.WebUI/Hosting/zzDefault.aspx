<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Microsoft Azure | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta prefix="og: http://ogp.me/ns#" property='og:image' content="//www.ssw.com.au/SSW/images/consulting/ssw-opengraph-consulting.jpg" />
    <meta prefix="og: http://ogp.me/ns#" property='og:title' content="Microsoft Azure | SSW Consulting - Sydney, Brisbane, Melbourne"/>
    <meta prefix="og: http://ogp.me/ns#" property='og:description' content="Microsoft Azure provides on-demand infrastructure that scales and adapts to your changing business needs. Whether you are creating new applications or running existing applications, we provide the best price-performance and end-to-end support."/>
</asp:Content>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>
<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">


    <div class="Consulting-Hero employement-video">


        <div class="container hero">
            <h1>Need help with Web Hosting?</h1>
            <h2>Australia's leading cloud developers and consultants</h2>
            <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal"><div class="anim"></div>
                Book a FREE Initial Meeting
            </button>
            <h2>or call on +61 2 9953 3000</h2>
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
            <h5>Microsoft Azure provides on-demand infrastructure and services that can scale and adapt to the business needs. Azure is a one stop shop for hosting your website on a thoroughly tested platform to ensure maximum uptime. SSW consultants can provide advice on:</h5>
            <h2>1. How to modernize your site</h2>
            <h2>2. Host your website As a Service WaaS</h2>
            <h2>3. Integrate Content Delivery Management for fast load times world wide</h2>
            <h2>4. Setting up Azure DNS</h2>
            <h2>5. Hosting your websites Databases on Azure</h2>
            <h2>6. Integrating B2B or B2C authentication for user signup and login</h2>
           
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/crm-integration.png" />
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
                    <img src="/SSW/images/consulting/happy_clients.png" />
                    <h4>CONTENT DELIVERY MANAGMENT</h4>
                    <p>Azure has a built in CDN making access your website from anywhere in the world fast keeping loading times down</p>
                </div>
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/security-db.png" />
                    <h4>SECURE AUTHENTICATION</h4>
                    <p>Azure hosts B2B and B2C authentication making it possible to easily integrate authentication into your website on one platform</p>
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
                <img src="/SSW/images/consulting/peter-dimaridis.jpg"/><div class="tName"> Peter Dimaridis</div><div class="tCompany">Auction Plus</div>
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
                <h2>or call on +61 2 9953 3000</h2>
    <!-- CTA button-->
        </div>
          
	</div>

<!-- //testimonials section -->
    <!-- about SSW section -->

	<div class="about-section">
		<div class="container">
            <h1>About SSW</h1>
            <div class="col-md-6">
                <img src="/SSW/images/consulting/about_ssw.jpg" data-aos="fade-up" />
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

  <!-- technologies section -->

	<div class="technologies-section">
		<div class="container">
            <h1>Other Technologies</h1>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/sqlserverlogo.png" />
                    <p>SQL Server is Microsoft's enterprise level database platform. Being used as the backend database for the majority of Microsoft based IT solutions, it has numerous features to ensure high availability, scalability, data integrity & performance.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                <img src="/SSW/images/consulting/dot-net-core-logo.png" />
                
                <p>ASP.NET Core is a new open-source and cross-platform framework for building modern cloud based internet connected applications, such as web apps, IoT apps and mobile backends. ASP.NET Core apps can run on .NET Core or on the full .NET Framework.</p>
                
                </div>
                
            </div>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/angular-logo.png" />
                    <p>This Google-built and maintained Javascript framework allows us to develop fast, responsive, and interaction-rich web applications.</p>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                <img src="/SSW/images/consulting/ms-azure-logo.png" />
                
                <p>Microsoft Azure provides on-demand infrastructure that scales and adapts to your changing business needs. Whether you are creating new applications or running existing applications we provide the best price-performance and end-to-end support</p>
                
                </div>
                
            </div>
        </div>
	</div>
<!-- //technologies section -->


    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your Azure project</h1>
            
                <p>Jump on a call with one of our Account Managers to discuss how we can help you.</p>

    <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal" data-aos="fade-up"><div class="anim"></div>
                Book a FREE Initial Meeting
            </button>
            <h2>or call on +61 2 9953 3000</h2>
    <!-- CTA button-->
                    
        </div>
	</div>

<!-- //solutions section -->
</asp:Content>