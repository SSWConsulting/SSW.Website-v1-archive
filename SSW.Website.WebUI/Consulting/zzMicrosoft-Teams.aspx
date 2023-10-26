<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Microsoft Teams | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Teams-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Teams-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="SSW Microsoft Teams Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="SSW Microsoft Teams Consulting - Enterprise Software Development">
    <meta property="og:description" content="Teams is the premier O365 chat, collaboration and phone system from Microsoft that is on its way to replacing Skype for Business. It features instant messaging, Voice Over IP, Video Conferencing, File Sharing and Collaborative Teams that link to a SharePoint sites for file content. It has the same features as Skype for Business with many great additional features." />
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">


    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Need help with implementing <span class="red">Microsoft Teams</span>?</h1>
            <h2>Australia's leading Office 365 engineers and consultants</h2>
           
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
            <h1>Get started with <span class="red">Microsoft Teams</span></h1>
            <h5>Teams is the premier O365 chat, collaboration and phone system from Microsoft that is on its way to replacing Skype for Business. It features instant messaging, Voice Over IP, Video Conferencing, File Sharing and Collaborative Teams that link to a SharePoint sites for file content. It has the same features as Skype for Business with many great additional features.</h5>
               
               <h5>Make your video meetings more natural, more engaging, and ultimately, more human.</h5>
               <div class="eric-video"><div class="video-player" data-id="A1egcVkYrgw" data-youkuid=""></div></div>
                <h5>SSW can, setup, manage and backup your Microsoft Teams. Our Expert Microsoft Teams consultants can assist resolving problems with an existing Teams setup.</h5>

            <h5>SSW can assist in the installation, setup and management of your Microsoft Teams solution. </h5>
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/sharing-and-collaboration.png" />
                    <h4>Teams Apps</h4>
                    <p>Teams allows for collaboration not just across Microsoft Apps but also popular 3rd party applications such as Jira, Trello, GitHub and many others.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx PBI aos-init aos-animate" data-aos="fade-right">
                    <img src="/SSW/images/consulting/use-case.png" />
                    <h4>Teams Calling</h4>
                    <p>Design and implementation of a call plan to allow your staff to call external numbers directly from teams.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox speedUpBx PBI aos-init aos-animate" data-aos="fade-left">
                    <img src="/SSW/images/consulting/industry-leaders.png" />
                    <h4>Teams Conferencing</h4>
                    <p>Teams allows the addition of a Teams Conferencing invite to Outlook meetings, this can be used by external organisations that do not have a Teams infrastructure.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/crm-integration.png" />
                    <h4>Teams Collaboration</h4>
                    <p>Teams allows for the collaboration of content much like SharePoint but also with rich chat and voice features.</p>
                </div>
            </div>
            <h5>Have a look at <a href="https://rules.ssw.com.au/rules-to-better-microsoft-teams">SSW Rules to Better Microsoft Teams</a>.</h5>
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
                <div class="greyTBox MVC_greyBox aos-init" data-aos="flip-left">
                    <img src="/SSW/images/consulting/skype-for-business.png" naptha_cursor="text">
                    <p>Skype for Business is the premier phone system from Microsoft.It features instant messaging, Voice Over IP and Video Conferencing inside the Skype for Business client software. <a href="Skype-for-Business.aspx">Read more</a></p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox aos-init" data-aos="flip-left">
                <img src="/SSW/images/consulting/Network-Architechure.png">
                <p>SSW can assist in the design and implementation of a Network Infrastructure that will be stable, fast, scalable and meet your business requirements. <a href="Network-Architecture.aspx">Read more</a></p>
                </div>
            </div>
        </div>
	</div>
    <!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">Microsoft Teams</span> project</h1>
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
