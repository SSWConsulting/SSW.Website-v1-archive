<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Want to be covered by a Support Plan? | SSW Consulting - Sydney, Brisbane, Melbourne, and everywhere" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="description" content="Want to be covered by a Support Plan? SSW can assist you. Gain peace of mind that you'll be covered in case of an emergency.">
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Want to be covered by a <span class="red">support plan</span>?</h1>
            <h2>Peace of mind in case of an emergency</h2>
           
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
            <h1>The benefits of an <span class="red">SSW Support Plan</span></h1>
                <h5>SSW has built and supported thousands of applications over 3 decades, and we know the best way to support your key systems.</h5>
                <div class="eric-video"><div class="video-player" data-id="35vWStpYIY0" data-youkuid=""></div></div>
     
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx PBI aos-init aos-animate" data-aos="fade-left">
                    <img src="/SSW/images/consulting/smart-hands-and-feet.png">
                    <h4>Peace of Mind</h4>
                    <p>Know that you have insurance in place for your software so you aren't vulnerable to any nasty surprises.</p>
                </div>
                <div class="col-md-6 benefitsBox PBI speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/development-process.png">
                    <h4>Jump the Queue</h4>
                    <p>In case of emergency, you can pay a premium to make sure your issue is dealt with first and guarantee a response time.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/crm-integration.png">
                    <h4>Flexible Options</h4>
                    <p>Decide on an issue by issue basis what the level of urgency is and only pay for what you use.</p>
                </div>
                <div class="col-md-6 benefitsBox PBI fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/content-pack-and-dashboard-built-in.svg">
                    <h4>DevOps Dashboards</h4>
                    <p>SSW will keep track of your uptime, error rates, and usage in real time with accessible dashboards.</p>
                </div>
            </div>

            <h5>SSW Support Plans were created to help our customers who have mission critical systems remain up, secure and fast. Unlike Support Plans offered elsewhere, SSW Support Plans help our customers lower cost by asking the client to assess the priority of each issue and pay a small premium on the developers hourly rate. In return, SSW will make sure the issue is addressed ASAP � even if key developers are booked elsewhere. The customer chooses how quickly each issue is dealt with.</h5>
            <h5>The SSW Support Plan charges a small monthly fee and in return SSW creates all of the tooling, dashboards and infrastructure so that clients can rest easy knowing all of SSW's technical staff have access to all of the client's necessary information. SSW have always been a reliable support partner and this plan we believe is a better alternative to high reoccurring monthly fees that offer little value to well-built software.</h5>
            <h5>We stand behind the software we build and offer Support Plans to all of our clients. We also offer Support Plans on software built by others, so that everyone can have access to SSW's depth of experience.</h5>
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
            <h1>Enabling Technologies</h1>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/zendesk.png" />
                    <h2>Zendesk</h2>
                    <p>Zendesk a ticketing and communication platform making customer to business communication and tasks easy and trackable. <a href="Zendesk.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <img src="/SSW/images/consulting/azuredevops-logo.png" />
                    <h2>Application Insights</h2>
                    <p>Get full observability into your applications, infrastructure and network. <a href="https://rules.ssw.com.au/rules-to-better-application-insights">Read SSW Rules to Better Application Insights</a></</p>
                </div>                
            </div>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/ms-azure-logo.png" />
                    <h2>Azure</h2>
                    <p>Microsoft Azure enabled you to build and run highly available applications without focusing on the infrastructure. <a href="Azure.aspx">Read more</a></p>
                </div>
            </div>
            <div class="col-md-6">
                 <div class="greyTBox" data-aos="flip-right">
                    <img src="/SSW/images/consulting/git-logo.png" alt="git" />
                     <h2>GitHub</h2>
                    <p>Git is an open-source distributed version control system designed to handle both small and large projects with speed and efficiency.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about <span class="red">supporting your software</span></h1>
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
