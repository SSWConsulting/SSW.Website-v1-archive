<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title=".NET with Angular or React Web Application Development | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Web-Apps-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Web-Apps-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="SSW Web Apps Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="SSW Web Apps Consulting - Enterprise Software Development">
    <meta property="og:description" content="Ever since SSW developed the very first .NET website in Australia, we've been known as leaders in Website Development. We understand the several critical elements to a successful website." />
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
        "url": "https://www.ssw.com.au/SSW/Consulting/images/thumbs/thumb-web-mvc.jpg",
        "height": "115",
        "width": "115",
        "@id": "https://www.ssw.com.au/SSW/Consulting/images/thumbs/thumb-web-mvc.jpg"
    },
    "brand": {
        "@id": "https://www.ssw.com.au/"
    },
    "additionalType": "https://www.wikidata.org/wiki/Q189210",
    "url": "https://www.ssw.com.au/ssw/Consulting/Web-Applications.aspx",
    "areaServed": "http://www.wikidata.org/entity/Q13780930",
    "description": "SSW has the resources to develop sites of any scope, from ongoing maintenance tasks to the implementation of large complex sites.",
    "name": "Web Applications",
    "@id": "https://www.ssw.com.au/ssw/Consulting/Web-Applications.aspx"
}
</script>

</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">


    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Want to <span class="red">build a Web Application</span> or API?</h1>
            <h2>Australia's leading .NET, Azure, Angular and React developers</h2>
           
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
            <h1><span class="red">Web Application Development</span> is hard - Why choose SSW?</h1>
               <div class="eric-video"><div class="video-player" data-id="zorbI0iDFQk" data-youkuid="" data-youtuberes="hqdefault"></div></div>
            <h5>Ever since SSW developed the very first .NET website in Australia, we've been known as leaders in Website Development. We understand that there are several critical elements to a successful website:</h5>
            <ul class="MVC-elements">
                <li class="col-md-3"><img src="/SSW/images/consulting/bulletpoint.png" /> Discoverability</li>
                <li class="col-md-3"><img src="/SSW/images/consulting/bulletpoint.png" /> Usability</li>
                <li class="col-md-3"><img src="/SSW/images/consulting/bulletpoint.png" /> Functionality</li>
                <li class="col-md-3"><img src="/SSW/images/consulting/bulletpoint.png" /> Aesthetic appeal</li>
                </ul>
            <h5>SSW has the resources to develop sites of any scope, from ongoing maintenance tasks to the implementation of large complex sites.</h5>
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/industry-leaders.png" />
                    <h4>Industry Leaders</h4>
                    <p>MVPS, Microsoft regional director.<br />
                        Training other developers in technology and process.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/years-of-expereince.png" />
                    <h4>25+ years' experience</h4>
                    <p>A track record of knowing what works and a client list ranging from small business all the way to the largest businesses in Australia.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/development-process.png" />
                    <h4>Development process</h4>
                    <p>Our development process has been honed to maximise transparency while lowering risk. <a href="https://www.ssw.com.au/ssw/consulting/Scrum.aspx"> See more</a></p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/user-expereince.png" />
                    <h4>User Experience</h4>
                    <p>We build apps that people want to use. Aesthetics and navigation work hand in hand to increase user uptake.</p>
                </div>
            </div>

            <h5>Have a look at <a href="https://rules.ssw.com.au/rules-to-better-website-development-asp-net">SSW Rules to Better Website Development - ASP.NET</a>.</h5>
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
            <h1>Other Technologies</h1>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/sqlserverlogo.png" />
                    <p>SQL Server is Microsoft's enterprise level database platform. Being used as the backend database for the majority of Microsoft based IT solutions, it has numerous features to ensure high availability, scalability, data integrity & performance. <a href="DatabaseDevelopment.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/net-logo.png" />
                    <p>.NET 5 (was .NET Core) is a free, cross-platform, open source developer platform for building many different types of applications. With .NET, you can use multiple languages, editors, and libraries to build for web, mobile, desktop, games, and IoT.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/angular-logo.png" />
                    <p>This Google-built and maintained Javascript framework allows us to develop fast, responsive, and interaction-rich web applications. <a href="Angular.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                <img src="/SSW/images/consulting/react-icon.png" />
                <p>React is a JavaScript library for building fast Web apps with JavaScript. It encourages the creation of reusable UI components which present data that changes over time. <a href="React.aspx">Read More</a></p>
                </div>
            </div>

            <div class="col-md-12">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                <img src="/SSW/images/consulting/ms-azure-logo.png" />
                <p>Microsoft Azure provides on-demand infrastructure that scales and adapts to your changing business needs. Whether you are creating new applications or running existing applications we provide the best price-performance and end-to-end support. <a href="Azure.aspx">Read More</a></p>
                </div>
            </div>
        </div>
	</div>
<!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">web project</span></h1>
            
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