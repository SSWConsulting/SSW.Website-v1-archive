<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Network Architecture | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>
<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">


    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Need help with <span class="red">Network Design and Deployment</span>?</h1>
            <h2>Australia's leading network engineers and consultants</h2>
           
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
            <h1>The benefits of a<span class="red"> well Designed Network</span></h1>
            <h5>In such a fast-paced moving industry, it is easy to overlook the importance of having a well designed and maintained Network Infrastructure. This can lead to a low level of network security, scalability issues, poor network performance and cause network-wide outages.</h5>
            <h5>SSW can assist in the design and implementation of a Network Infrastructure that will be stable, fast, scalable and meet your business requirements.</h5>
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/network-design.png" />
                    <h4>Network Design</h4>
                    <p>Design for both wired and wireless infrastructure.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/troubleshooting.png" />
                    <h4>Troubleshooting</h4>
                    <p>Troubleshoot exisiting networks and suggest best practices to move Infrastructure to a better and more secure design.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/implementation.png" />
                    <h4>Implementation</h4>
                    <p>Our Engineers will provide full installation services for all networking equipment.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/smart-hands-and-feet.png" />
                    <h4>Smart Hands and Feet</h4>
                    <p>Providing knowledgebale Network Engineers for remote hands and feet.</p>
                </div>
            </div>
            <h5>Have a look at <a href="https://rules.ssw.com.au/rules-to-better-networks">SSW Rules to Better Networks</a>.</h5>
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
                <img src="/SSW/images/consulting/peter-dimaridis.jpg"/><div class="tName"> Peter Dimaridis - </div><div class="tCompany">AuctionsPlus</div>
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
            <h1>Technologies</h1>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/wireless.png" />
                    <h2>Wireless</h2>
                        <p>Connectivity for Mobile Clients.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                <img src="/SSW/images/consulting/cloud.png" />
                <h2>Cloud</h2>
                    <p>Connect your on-premises environment to cloud services.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                <img src="/SSW/images/consulting/vpn.png" />
                <h2>VPN</h2>
                    <p>Connect remote sites for intersite communication.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                <img src="/SSW/images/consulting/client-vpn.png" />
                <h2>Client: VPN</h2>
                    <p>Allow remote users to connect and work as if they were in the office.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                <img src="/SSW/images/consulting/qos.png" />
                <h2>QoS</h2>
                    <p>Quality of Service to priorities traffic for critical applications and VoIP.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                <img src="/SSW/images/consulting/firewall.png" />
                <h2>Firewall</h2>
                    <p>Secure and reliable firewalls for peace of mind and protection from Virus' and hackers. E.g. <a href="https://www.cisco.com/c/en/us/support/security/asa-5508-x-firepower-services/model.html">Cisco ASA 5508-X</a> for servers and <a href="https://docs.microsoft.com/en-us/microsoft-365/security/defender/microsoft-365-defender?view=o365-worldwide">Microsoft 365 Defender</a> for any device connected to the network.</p>
                </div>
            </div>
        </div>
	</div>
<!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">network project</span></h1>
            
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