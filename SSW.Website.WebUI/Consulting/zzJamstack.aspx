<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Jamstack - Highly optimized static pages | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>
<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">


    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Want to <span class="red">build lightning fast websites</span> generated from raw data?</h1>
            <h2>Do it with Jamstack, a modern web development architecture based on JavaScript, APIs, and Markup</h2>
           
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
      <source src="/ssw/include/consulting/img/MVC_background.mp4" type="video/mp4">
      Your browser does not support HTML5 video.
    </video>
    </div>

    <!-- benefits-section -->

	<div class="benefits-section MVC-benefits-background">
		<div class="container"><a name="more"></a>
        <h1>What is <span class="red">Jamstack</span>?</h1>
            <h5>Jamstack is a modern web development architecture based on client-side JavaScript, reusable APIs and prebuilt Markup. Static Site generators - like Gatsby and Next.js - take raw content from various inputs (Markdown files, WordPress, GitHub etc.) and produce a set of static HTML pages at build time. The pre-rendered HTML pages can then be deployed and served directly to the user from a CDN. In addition, static pages are enhanced with JavaScript and APIs (custom-built or 3rd party) for dynamic functionalities like authentication, search, logging.</h5>
            <h5>Examples: <a href="https://www.ssw.com.au/rules/">SSW Rules</a> and <a href="https://www.ssw.com.au/people/">SSW People</a>.</h5>
            <h1>Benefits of Jamstack?</h1>
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/network-design.png" />
                    <h4>Improved performance</h4>
                    <p>Pre-rendered markup and assets are served directly from a CDN.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx PBI aos-init aos-animate" data-aos="fade-right">
                     <img src="/SSW/images/consulting/security-db.png" />
                    <h4>Better Security</h4>
                    <p>With no servers or databases to hack, common vulnerabilities are greatly reduced.</p>
                    
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox speedUpBx PBI aos-init aos-animate" data-aos="fade-left">
                   <img src="/SSW/images/consulting/smart-hands-and-feet.png" />
                    <h4>Cutting Costs / Easy Scaling</h4>
                    <p>Hosting static files is cheap, and since there are no databases or servers, there's no need to handle load balancers, and the CDN can manage the scaling process.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/speedup_db.png" />
                    <h4>Better development experience</h4>
                    <p>Since the entire site content is static, it can be managed through version control. Tracking change history becomes more straightforward, and updating the site is as easy as uploading a new copy of the site and invalidating the cache.</p>
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
                <%--<iframe width="540" height="304" src="https://www.youtube.com/embed/eu0qhzevEXQ?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen data-aos="fade-up"></iframe>--%>
                <%--<img src="/SSW/images/consulting/about_ssw.jpg" data-aos="fade-up" />--%>
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
            <h1>Other technologies</h1>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox aos-init" data-aos="flip-left">
                   <img src="/SSW/images/consulting/gatsby.png" alt="Gatsby" />              
                <p>Gatsby enables developers to build fast, secure, and powerful websites using a React-based framework and innovative data layer that makes integrating different content, APIs, and services into one web experience incredibly simple.</p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox aos-init" data-aos="flip-left">
                <img src="/SSW/images/consulting/nextjs.png" alt="Next.js" />
                <p>Next.js gives you the best developer experience with all the features you need for production: hybrid static & server rendering, TypeScript support, smart bundling, route pre-fetching, and more. No config needed.</p>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox aos-init" data-aos="flip-left">
                   <img src="/SSW/images/consulting/js-logo.png" />              
                <p>Any dynamic programming that is running a request/response cycle on the client should be handled by JavaScript. This can include any front-end framework like Vue.js, React or Angular.</p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox aos-init" data-aos="flip-left">
                <img src="/SSW/images/consulting/api.png">
                <p>The server-side processes or database actions are abstracted into reusable APIs that is accessed over HTTP with JavaScript. These APIs can be custom-built or leveraged through 3rd party providers.</p>
                </div>
            </div>

            <div class="col-md-12">
                <div class="greyTBox aos-init" data-aos="flip-left">
                <img src="/SSW/images/consulting/markup.png">
                <p>Templated markup should be prebuilt during deployment, usually using a site generator, such as Gatsby.js, Hugo and Nuxt.js, for content sites, or build a tool for a web app via Parcel.js and Webpack.</p>
                </div>
            </div>

        </div>
	</div>
    <!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">Jamstack</span> project</h1>
                <p>Jump on a call with one of our Account Managers to discuss how we can help you.</p>

    <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal" data-aos="fade-up"><div class="anim"></div>
                Book a FREE Initial Meeting
            </button>
            <h2>or call us on +61 2 9953 3000</h2>
    <!-- CTA button-->
                    
        </div>
	</div>
    <%-- // material design modal <a href="#" data-modal="#modal" class="modal__trigger "><div class="anim"></div> Book a FREE Initial Meeting</a>--%>
    <!-- //solutions section -->
</asp:Content>