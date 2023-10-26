<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Sitefinity Development | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>
<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">


    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Want to easily manage your web content with <span class="red">Sitefinity</span>?</h1>
            <h2>Rapidly deliver the best customer experiences with limited resources</h2>
           
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
            <h1>The benefits of using <span class="red">Sitefinity</span></h1>
               <div class="eric-video"><div class="video-player" data-id="_bhw6tal9FI" data-youkuid=""></div></div>

                <h5>Sitefinity is a modern web content management system that helps you scale your business across multiple channels. It provides smooth experience on every device, including desktops, tablets, and mobile phones. Sitefinity features next-generation content management, mobile-friendly responsive design, and seamless integration for marketing campaigns, social media, and e-commerce.</h5>
                <h5>Sitefinity will also keep growing with your business. From smaller web-footprint sites to large fully-featured web applications, creating and providing a compelling web experience for your visitors has never been easier or more powerful. It has never been so easy for marketers to take control over a website and customer experience without the need of IT administrators, developers, or complex implementations. Content authors can easily create rich dynamic content by interacting with a user-friendly interface and then share such content across multiple sites.</h5>
            
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx PBI aos-init aos-animate" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Process.png">
                    <h4>Easy multichannel management</h4>
                    <p>Sitefinity allows you to centrally manage your entire digital presence delivering relevant content instantly for true multichannel engagement. By working with Sitefinity, you can generate and manage personalized content delivered via various touchpoints driven by cognitive capabilities.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/user-expereince.png" />
                    <h4>Deep personalization</h4>
                    <p>Identify valuable customer segments, shape individual journeys and drive revenue easily. You can use Sitefinity to gain actionable insight into your high-value segments with minimal effort. It allows you to turn the abundance of customer data into marketing engagement.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Integration.png">
                    <h4>Powerful content management</h4>
                    <p>Manage multiple channels and reach the right audience on the right device, at the right time. You can get a simple, affordable, user-friendly solution for creating, managing and delivering content through multiple touchpoints. You can do inline editing, create new design layouts by dragging and dropping widgets, and get access integrated SEO tools.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/sharing-and-collaboration.png">
                    <h4>Simple cloud deployment</h4>
                    <p>With Progress Sitefinity Digital Experience Cloud (DEC), you can leverage a single marketing command centre to help drive business growth by understanding and optimizing every customer's individual journey.</p>
                </div>
            </div>
            <h5>Have a look at <a href="https://rules.ssw.com.au/rules-to-better-sitefinity">SSW Rules to Better Sitefinity</a>.</h5>
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
                <%--<div class="video-player" data-id="Jveq6VFjWTA" data-youkuid=""></div>--%>
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
                    <img src="/SSW/images/consulting/net-logo.png" />
                    <p>An open-source framework developed by Microsoft. It implements the model-view-controller (MVC) pattern, which gives you a powerful, patterns-based way to build dynamic websites. It has many features that enable fast, test-driven-development (TDD) friendly development for creating sophisticated applications that use the latest web standards.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <img src="/SSW/images/consulting/angular-logo.png" />
                    <p>Angular is a JavaScript-based open-source front-end web application framework. It is maintained by Google and a community formed by individual developers and corporations, focusing on developing single-page applications for web, mobile web, native mobile and native desktop. <a href="Angular.aspx">Read more about SSW's Angular consulting services.</a></p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/bootstrap-logo.png" />
                    <p>Bootstrap is a free and open-source front-end framework for designing websites and web applications. It works as a toolkit for developing with HTML, CSS, and JS. Bootstrap helps you quickly prototype your ideas and build your entire application with its official Sass variables and mixins, responsive grid system, extensive prebuild components, and powerful plugins build on jQuery.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <img src="/SSW/images/consulting/ms-azure-logo.png" />
                    <p>Microsoft Azure provides an on-demand infrastructure that scales and adapts to your changing business needs. Whether you are creating new applications or running existing applications, Azure provides the best price-performance and end-to-end support. SSW often uses Microsoft Azure to host the logic for APIs. <a href="Azure.aspx">Read about SSW's Azure consulting services.</a></p>
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