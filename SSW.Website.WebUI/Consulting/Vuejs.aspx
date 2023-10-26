<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Vue.js | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Vue-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Vue-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="SSW Vue Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="SSW Vue Consulting - Enterprise Software Development">
    <meta property="og:description" content="Vue.js is a progressive JavaScript framework to build web interfaces and applications. It is becoming a more and more popular framework for simplifying web development. Vue.js can be incrementally adopted - you can start with the view layer only and scale it to power sophisticated Single-Page Applications when used in combination with the modern tooling and support libraries." />
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Want to build a better user interface with <span class="red">Vue.js</span>?</h1>
            <h2>We will simplify your application integration process</h2>
          
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
            <h1>The benefits of using <span class="red">Vue.js</span></h1>
               <div class="eric-video"><div class="video-player" data-id="p1iLqZnZPdo" data-youkuid=""></div></div>
            <h5>Vue.js is a progressive JavaScript framework to build web interfaces and applications. It is becoming a more and more popular framework for simplifying web development. Vue.js can be incrementally adopted - you can start with the view layer only and scale it to power sophisticated Single-Page Applications when used in combination with the modern tooling and support libraries. </h5>
            <h5>With Vue.js, you can basically write an app very fast and run it straight from the browser - you also have the option to build a complex application using ES6, JSX, routing, Vuex and more, according to your project. We can help you cut out through the knowledge path and get your app quickly up and running.</h5>
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Integration.png" />
                    <h4>Simple Integration</h4>
                    <p>Vue.js is based on JavaScript and it can be easily integrated into other applications built on JavaScript. It means Vue is useful for developing new web applications as well as altering the pre-existing applications. This integration is possible because Vue.js has components for everything.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/Fast.png" />
                    <h4>Fast development</h4>
                    <p>Shipping your product early and often to production means that you will get feedback from your users faster and that you can rapidly improve it. Vue.js makes it very easy to start off and initiating coding - which means that a Minimum Viable Product (MVP) can be made a lot quicker than in any other framework.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Flexible.png" />
                    <h4>Flexibility</h4>
                    <p>Vue.js is flexible and scalable. It was built in a way that it can be used in a big number of environments, and even inside other JavaScript, PHP and other frameworks. You can add it to pre-existing projects in a lot of technologies, start a website, web applications or even a native app. It removes limitations and ensures stability. Also, you can use Vue.js for simple and complex projects.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/crm-integration.png" />
                    <h4>Size-Efficient</h4>
                    <p>Vue.js apps are smaller in size (so they are quicker to load and use less bandwidth) and typically more performant than equivalent applications built in other frameworks. Vue also takes care of a lot of optimizations on its own, so there's no need to worry about tweaking the application as it grows. It means there will be more time available to focus on adding new and value-oriented features to it. Finally, it also means that Vue apps are scalable: it's relatively easy to take them from a simple one-page app to an advanced system, being used by hundreds of thousands of users, like Alibaba website.</p>
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
            <h1>Other Technologies</h1>
            <div class="col-md-6">
                <div class="greyTBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/angular-logo.png" />
                    <p>Angular is a Google-built and maintained Javascript framework allows us to develop fast, responsive, and interaction-rich applications. It has the abilities to build apps for any deployment target - web, mobile web, native mobile and native desktop. <a href="Angular.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/SSW/images/consulting/react-icon.png" />
                    <p>Build native mobile apps using only JavaScript. It uses the same design as React, letting you compose a rich mobile UI from declarative components. <a href="React.aspx">Read More</a></p>
                </div>
            </div>

              <div class="col-md-12">
                <div class="greyTBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/jquery-logo.png" />
                    <p>jQuery is a fast, small, and feature-rich JavaScript library. It makes things like HTML document traversal and manipulation, event handling, animation, and Ajax much simpler with an easy-to-use API that works across a multitude of browsers.</p>
                </div>
            </div>

        </div>
	</div>
<!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">Vue.js</span> project</h1>
            
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