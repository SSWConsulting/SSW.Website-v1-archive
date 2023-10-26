<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Zendesk | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Zendesk-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Zendesk-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="SSW Zendesk Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="SSW Zendesk Consulting - Enterprise Software Development">
    <meta property="og:description" content="Most organizations start off using a simple email inbox for support queries, and have a phone number for more complex issues that require a call, but the modern customer wants to be able to contact you by phone, email, social media, SMS, etc., and have the conversation continue seamlessly, regardless of who may take on the support request. As your organisation scales, this becomes a challenge… enter Zendesk." />
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero zd-background">

        <div class="container hero">
            <img src="/SSW/images/consulting/zendesk-logo.png" class="zendesklogo" />
            <h1>Want to use <span class="red">Zendesk</span> to improve your client relationships?</h1>
            <h2>We are Zendesk’s primary Australian implementation partner</h2>
            <div class="video-player" data-id="K1HlAsW1RiA" data-youkuid=""></div>            
            <%--<iframe width="688" height="386" src="https://www.youtube.com/embed/K1HlAsW1RiA" frameborder="0" allowfullscreen></iframe>--%>
            <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal"><div class="anim"></div>
                Book a FREE Initial Meeting
            </button>
            <h2>or call us on +61 2 9953 3000</h2>
            <!-- CTA button-->
        </div>

    </div>


    <!-- benefits-section -->

	<div class="benefits-section zd-benefits-background">
		<div class="container">
            <h1>The benefits of using <span class="red">Zendesk</span></h1>
            <h5>Most organizations start off using a simple email inbox for support queries, and have a phone number for more complex issues that require a call, but the modern customer wants to be able to contact you by phone, email, social media, SMS, etc., and have the conversation continue seamlessly, regardless of who may take on the support request. As your organisation scales, this becomes a challenge… enter Zendesk.</h5>

            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/happy_clients.png" />
                    <h4>Happier Clients</h4>
                    <p>Give your clients the user experience they want, when they need it, and never allow clients to be unhappy again.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/happier-employees.png" />
                    <h4>Happier Service Employees</h4>
                    <p>All Zendesk products have been built with ease of use as their main focus, giving great productivity gains for Service Agents.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/robots.png" />
                    <h4>Let the Robots do the Easy Work</h4>
                    <p>Use Automation and Machine Learning AI to answer client’s FAQs, keeping only the tricky questions for your Service Agents.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/up-and-running-zendesk.png" />
                    <h4>Up and Running Quickly</h4>
                    <p>Set up takes days, not months, so you can be helping your clients as soon as possible.</p>
                </div>
            </div>
            <h5>Have a look at <a href="https://rules.ssw.com.au/rules-to-better-zendesk">SSW Rules to Better Zendesk</a>.</h5>
        </div>

	</div>
<!-- //benefits-section -->



    <!-- testimonials section -->

	<div class="testimonials-section">
        <div class="container">
            <div class="col-md-4 testimonialCol">
                <div class="callout top-left co-zdesk" data-aos="flip-right">
                    <p>We fell in love with Zendesk from the get-go. The product was great, but the support that came with it was tremendous as well. Everyone we interacted with was invested in our success.</p>
                </div>
                 <img src="/SSW/images/consulting/testimonial-placeholder.jpg"/><div class="tName"> Chris Wilson</div><div class="tCompany">Shopify</div>
            </div>
           

            <div class="col-md-4 testimonialCol">
                <div class="callout top-left co-zdesk" data-aos="flip-right">
                    <p>I would highly recommend the team from SSW. From start to finish, throughout the customisation and implementation of Zendesk, we felt confident in their abilities and were impressed with the high quality outcome.</p>
                </div>
                <img src="/SSW/images/consulting/testimonial-placeholder.jpg"/><div class="tName"> Jess Timmins</div><div class="tCompany">HireUp</div>
            </div>

            <div class="col-md-4 testimonialCol">
                <div class="callout top-left co-zdesk" data-aos="flip-right">
                    <p>Zendesk met all our technical requirements, was in the cloud, and gave us the flexibility to easily add new teams. Head and shoulders, Zendesk was above the other offerings.</p>
                </div>
                <img src="/SSW/images/consulting/testimonial-placeholder.jpg"/><div class="tName"> Hadleigh Lynn</div><div class="tCompany">Xero</div>
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
            <h1><span class="red">Zendesk</span> solutions</h1>
            <div class="col-md-6">
                <div class="greyTBox Zendesk_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/zendesk_support.png" alt="Support" class="center-block">
                    <h2>Support</h2>
                    <p>Zendesk Support is a customer service software that puts all your customer support interactions in one place. Everything you need lives in a single location, so that communication between you and your customers is efficient, relevant, and personal.</p>
                    <hr>
                    <p><img src="/SSW/images/consulting/zendesk_screenshot_support.png" alt="Support"></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox Zendesk_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/zendesk_chat.png" alt="Chat" class="center-block">
                    <h2>Chat</h2>
                    <p>Zendesk Chat is a live chat software that creates a personal connection with customers looking for support. It's a fast and effective way to offer help - without interrupting their browsing flow.</p>
                    <hr>
                    <p><img src="/SSW/images/consulting/zendesk_screenshot_chat.png" alt="Chat"></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox Zendesk_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/zendesk_guide.png" alt="Guide" class="center-block">
                    <h2>Guide</h2>
                    <p>Zendesk Guide is a smart knowledge base where your customers can help themselves via a help center, an online community or customer portal.</p>
                    <hr>
                    <p><img src="/SSW/images/consulting/zendesk_screenshot_guide.png" alt="Guide"></p>
                </div>  
            </div>

            <div class="col-md-6">
                <div class="greyTBox Zendesk_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/zendesk_talk.png" alt="Talk" class="center-block">
                    <h2>Talk</h2>
                    <p>Zendesk Talk is a cloud-based call center software helping you to provide more personal and productive phone support from the same platform you use to manage all other channels. Text messages included!</p>
                    <hr>
                    <p><img src="/SSW/images/consulting/zendesk_screenshot_talk.png" alt="Talk"></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox Zendesk_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/zendesk_explore.png" alt="Explore" class="center-block">
                    <h2>Explore</h2>
                    <p>Zendesk Explore provides instant access to the customer analytics that matter, and the deeper understanding of your customers and business that comes with it.</p>
                    <hr>
                    <p><img src="/SSW/images/consulting/zendesk_screenshot_explore.png" alt="Explore"></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox Zendesk_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/zendesk_connect_outbound.png" alt="Connect" class="center-block">
                    <h2>Connect</h2>
                    <p>Zendesk Connect offers proactive customer communication across channels, to deliver better customer experiences at scale. Giving customers less reasons to ask for help, and more ways for you to offer it.</p>
                    <hr>
                    <p><img src="/SSW/images/consulting/zendesk_screenshot_connect.png" alt="Connect"></p>
                </div>
            </div>

        </div>
	</div>
<!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about a <span class="red">Zendesk implementation</span> for you</h1>
            
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