<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Chinafy - Bring your applications to China | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/SSW/Consulting/Images/open-graph/SSW-Consulting-Chinafy-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/SSW/Consulting/Images/open-graph/SSW-Consulting-Chinafy-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="SSW Chinafy Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="SSW Chinafy Consulting - Enterprise Software Development">
    <meta property="og:description" content="China is a booming market and now is the time to take advantage of this growing user base. If you have a successful application that you would like to bring to the Chinese market, then working with SSW can help streamline your entry into this market."/>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">


    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Want to bring your applications<br /> into the <span class="red">Chinese market</span>?</h1>
            <h2>A quick and easy solution for entry into a large and juicy market</h2>
           
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
            <h1>The best way to <span class="red">bring your business to China</span></h1>
               <div class="eric-video"><div class="video-player" data-id="YxOaN2J3NsE"></div></div>
            
            <h5>China is a booming market and now is the time to take advantage of this growing user base. If you have a successful application that you would like to bring to the Chinese market, then working with SSW can help streamline your entry into this market.</h5>
            <h5>Bringing an application is more than just getting the UI translated. There are other things to consider such as Content Delivery Networks (CDNs) being blocked by the Chinese government, common services such as YouTube being blocked, and all common "western social media” sites being blocked.</h5>
            <h5>SSW can assist you in bringing web applications, desktop applications, and mobile applications to the local Chinese market.</h5>

            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/localization.png" />
                    <h4>Application localization for the Chinese market</h4>
                    <p>Translation is just the beginning of Chinafy. SSW will help you through the whole process of your application localization, adapting your application to the local customer habits.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/SocialMedia.png" />
                    <h4>Local social media networks</h4>
                    <p>In China, most of the common social media used in western countries are blocked, which includes Facebook, Twitter, Instagram, YouTube, etc. SSW will help you find the most popular local social media as a replacement.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/globalization.png" />
                    <h4>Integration with local services</h4>
                    <p>Due to the blocking of some services, specific third-party resources such as Google CDN, may not work properly in China. SSW uses a combination of accessible international and local resources to ensure your Chinese customers get the best performance and reliability.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/relationship.png" />
                    <h4>Long-term support service</h4>
                    <p>SSW expert teams will establish long-term relationships to support the clients to communicate with their Chinese customers and build network contacts across the related industry area.</p>
                </div>
            </div>
            <h5>Have a look at <a href="https://rules.ssw.com.au/rules-to-better-internationalization">SSW Rules to Better Internationalization</a>.</h5>
            
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
                <p>We have dealt with several people at SSW from a network tech helping us with a domain issue, to a couple of graphic designers and several programmers and they have ALL been first rate.</p>         
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
            <h1>Areas</h1>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <h2>WeChat Mini-Programs</h2>
                    <p>WeChat mini-programs are ‘sub-applications’ within the WeChat ecosystem. It enables you to provide advanced features to users such as e-commerce, task management, coupons, etc. Furthermore, by joining one of the world’s largest standalone mobile applications, a WeChat Mini-program will help you cover almost all your local customers.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <h2>Microsoft CDN</h2>                
                    <p>Microsoft Azure Content Delivery Network(CDN) will reduce load time, save bandwidth and speed responsiveness greatly. SSW expert team will make sure your customers always enjoy the benefits of the applications.</p>
                </div>
                
            </div>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <h2>Local social network maintenance</h2>
                    <p>SSW will provide an expert team to help the client to promote their products. The team will help set up local social media accounts and schedule periodic maintenance if requested. They will help clients to communicate with their Chinese customers, and ultimately establish a long-term relationship to support Chinese customers in the future.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <h2>'On-the-ground' support </h2>
                    <p>SSW provides ‘on-the-ground’ support services for the client in Beijing, Shanghai, and Hangzhou. This includes attending meetings with clients and helping them build a network of technical contacts across the related industry.</p>
                </div>        
            </div>
        </div>
	</div>
<!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">Chinafy plan</span> today</h1>
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