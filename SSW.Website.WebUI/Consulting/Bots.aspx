<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Bots – We build Siri for Businesses | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/SSW/Consulting/Images/open-graph/SSW-Consulting-Bots-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/SSW/Consulting/Images/open-graph/SSW-Consulting-Bots-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="SSW Bots Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="SSW Bots Consulting - Enterprise Software Development">
    <meta property="og:description" content="Your bots promote an effective and productive workplace - many companies are already using bots more than doing searches on their intranet."/>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">


    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Want to have a business grade bot<br /> powered by <span class="red">serious AI</span>?</h1>
            <h2>SSW knows how to build awesome bots that empower office workers and improve your results</h2>
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
            <h1><span class="red">Bot</span> in action</h1>
            <div class="eric-video"><div class="video-player" data-id="G_v5B_gYceM"></div></div>
            <h5>SSW build awesome bots for enterprises giving you an advantage in finding and automatically entering data using advanced business grade artificial intelligence, as well as helping your team complete tasks more effectively.</h5>
            <h5>Your bots promote an effective and productive workplace - many companies are already using bots more than doing searches on their intranet.</h5>
            
            <h2>What kind of bots do you need?</h2>
            <h5>Many industries can benefit from having their own bots in many different ways. Here are some ideas of how a bot can improve your business results:</h5>
                <h3>Customer service bots</h3>
                    <h5>If you are either selling a service or a product, you can provide 24/7 customer service without worrying about unexpected problems with your team, as bots are always ready to help.</h5>
                <h3>Human resources bots </h3>
                    <h5>You can use bots at every stage, all the way from onboarding, to ongoing training and support.</h5>
                <h3>Marketing & Branding bots</h3>
                    <h5>Your Marketing team can use a bot to surface the data they need to provide them with insights to improve their strategies. To raise awareness about your brand, you can have bots on your social media starting conversations with your clients.</h5>
                <h3>Sales & Finance bots </h3>
                    <h5>To increase your online sales, you can have a bot reminding a client they have items left in their cart or even offering a special coupon. To help your business’ finance, they can do everything from general accounting to financial planning and external reporting.</h5>

            <h5>This is beyond the personal bots that you may know e.g. Google Assistant, Apple Siri, Amazon Alexa or Microsoft Cortana. They are famous for their powerful natural language processing performance and are available on PCs as well as mobile apps.<br />
                Now imagine what your own business' Siri/Alexa could do for you.</h5>
            
            <div class="eric-video"><div class="video-player" data-id="1k3JKcf35vI"></div></div>

            <h5>Meanwhile, in office management, Sophie AI from SSW is a good example of an enterprise grade bot that is very useful for office workers. <a href="https://sswsophie.com/">See SSW Sophie AI</a>.</h5>

            <h1>The Benefits of using <span class="red">Bots</span></h1>
            <div class="row">
                <div class="col-md-6 benefitsBox" data-aos="fade-right">
                    <img src="/SSW/images/consulting/AI.png" />
                    <h4>Fast answers – Save time</h4>
                    <p>With Natural Language Processing, bots can understand both written and verbal requests across different locations such as Slack, Skype, Google Assistant, or even on your website. They can be used to answer questions from your team or your client. You can seek help from bots wherever and whenever you want.</p>
                </div>
                <div class="col-md-6 benefitsBox" data-aos="fade-left">
                    <img src="/SSW/images/consulting/years-of-expereince.png" />
                    <h4>Increase sales</h4>
                    <p>If you have an ecommerce site, your bot can also suggest or remember products that your client has already searched for. It can also offer a special code as a strategy to reduce your abandonment rate and increase sales.</p>
                </div>
                
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox" data-aos="fade-right">
                    <img src="/SSW/images/consulting/Integration.png">
                    <h4>Easy integration with common apps or enterprise services</h4>
                    <p>More and more people are using instant messaging over browsing websites and social media profiles. In addition, people tend to keep using the main apps they already have (such as Facebook, Messenger, WhatsApp, Skype, etc) to get customer service. If you want a chatbot for your website, you could simply integrate your system into common and existing apps.</p>
                </div>
                <div class="col-md-6 benefitsBox" data-aos="fade-left">
                    <img src="/SSW/images/consulting/24-7.png" />
                    <h4>Assistance available 24/7 for your clients</h4>
                    <p>Many businesses have 24-hour customer support, but if you have certain peak hours, a customer will still have to wait to get in touch with an agent that can help them. Bots don't have unexpected meetings, they don't get tired or sick and will continue providing assistance to your clients or your team.</p>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12 benefitsBox PBI" data-aos="fade-right">
                    <img src="/SSW/images/consulting/self-service.svg">
                    <h4>Efficiency, Automated</h4>
                    <p>Automation is one of the most significant key factors in enhancing work efficiency. With the help of bots, you can automate mundane tasks and have them enter data for you.</p>
                </div>
            </div>

            <h5>Have a look at <a href="https://rules.ssw.com.au/rules-to-better-bots">SSW Rules to Better Bots</a>.</h5>
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

    <!-- technologies section -->

	<div class="technologies-section">
		<div class="container">
            <h1>Technologies</h1>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/dialogflow-googleassistant-logo.png" />
                    <h2>Google Dialogflow with Google Assistant</h2>
                    <p>Dialogflow is a human-computer interaction development tool provided by Google. It is mainly focused on natural language processing and has been widely used in different applications. Google Assistant is one of the most famous examples of using DialogFlow.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/cortana-logo.png" />
                    <h2>Microsoft Bot Framework with Cortana</h2>
                    <p>The Microsoft Bot Framework allows developers to build, connect, deploy, and manage intelligent bots to interact naturally with your users on websites, applications, Cortana, Microsoft Teams, Skype, Slack, Facebook Messenger and more. Cortana from Microsoft is focused on business scenarios.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/alexa-logo.png" />
                    <h2>Amazon Alexa</h2>
                    <p>Alexa is a cloud-based virtual assistant developed by Amazon. It works as a voice service that offers customers an intuitive way to interact with the technology they use every day. Since first used in the Amazon Echo smart speakers, Alexa is now available on millions of devices from Amazon and third-party devices.<br /><br /></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/ms-azure-logo.png" />
                    <h2>Microsoft Azure </h2>
                    <p>Azure provides an on-demand infrastructure that scales and adapts to your changing business needs. Whether you're creating new applications or running existing applications, Azure provides the best price-performance and end-to-end support. SSW often uses Microsoft Azure to host the logic for APIs. <a href="Azure.aspx">Read about SSW's Azure consulting services.</a></p>
                </div>
            </div>

        </div>
	</div>
    <!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">Bot</span> idea today</h1>
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