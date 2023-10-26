<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Microsoft Office 365 | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Office-365-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Office-365-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="SSW Microsoft Office 365 Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="SSW Microsoft Office 365 Consulting - Enterprise Software Development">
    <meta property="og:description" content="Office 365 is a cloud-based subscription service that combines the best tools for modern office work style. It is designed for different kinds of user groups from small businesses to enterprise businesses. Under the cloud-based subscription service, Office 365 brings the most popular applications that help people to take their creativity and teamwork to new heights." />
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Want to <span class="red">work smarter</span> with Office 365?</h1>
            <h2>One simple solution for many complex problems</h2>
           
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
            <h1>What is <span class="red">Office 365</span>?</h1>
               <div class="eric-video"><div class="video-player" data-id="d6p_aKM1M3o"></div></div>

            <h5>Office 365 is a cloud-based subscription service that combines the best tools for modern office work style. It is designed for different kinds of user groups from small businesses to enterprise businesses. Under the cloud-based subscription service, Office 365 brings the most popular applications that help people to take their creativity and teamwork to new heights.</h5>
            <h5>The Office 365 is a combination of Microsoft Office applications and Microsoft Services. The applications include Outlook, Word, Excel, PowerPoint, OneNote, and Access (PC only). The services include Exchange, OneDrive, SharePoint, Skype for Business and Microsoft Teams.</h5>
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx PBI aos-init aos-animate" data-aos="fade-left">
                    <img src="/SSW/images/consulting/low-startup-cost.svg">
                    <h4>Very low cost</h4>
                    <p>Get access to all applications and services of Microsoft Office 365 for business for a month starting from 17.49 AUD.</p>
                </div>
                <div class="col-md-6 benefitsBox noCorruptionBx aos-init aos-animate" data-aos="fade-right">
                    <img src="/SSW/images/consulting/relationship.png">
                    <h4>High mobility</h4>
                    <p>Office 365 empowers all team members to stay connected and productive wherever they are.<br /> Most of the applications and services can be run on different platforms at the same time.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox speedUpBx aos-init aos-animate" data-aos="fade-left">
                    <img src="/SSW/images/consulting/use-case.png">
                    <h4>Designed for teamwork</h4>
                    <p>Microsoft Office 365 provides an integrated solution for everyone in the team to collaborate more effectively with team chat, online meetings, co-authoring and sharing files across different platforms, group emails and a social network for work.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/security-db.png" />
                    <h4>Secure your data</h4>
                    <p>As a cloud-based service, Office 365 is designed to help meet the organization's needs for robust security, reliability, and user productivity, saving time and money.</p>
                </div>
            </div>
            <h5>Have a look at <a href="https://rules.ssw.com.au/rules-to-better-office-365">SSW Rules to Better Office 365</a>.</h5>
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
            <h1>Technologies</h1>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/sharepoint-logo.png" />
                    <p>SharePoint is a web-based collaborative platform that integrates with the Microsoft Office suite. It aims to improve the content management by storing documents and records in a centralized system. SharePoint can store every version of a document, improving efficiency and automating business processes. <a href="SharePoint.aspx">Read more</a></p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/outlook-logo.png" />
                    <p>Outlook is a personal information management application powered by Microsoft as one part of its Microsoft Office suite. It works as a professional email and calendar management application that helps users stay on top of what matters in their work and life.<br /></p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/onedrive-logo.png" />
                    <p>OneDrive is a file hosting service provided by Microsoft as one part of its Microsoft Office Online Services. It empowers users to store and manage their files on the cloud end. With OneDrive, users can manage their files on different platforms no matter where they are.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/ms-teams-logo.png" />
                    <p>Microsoft Teams is a premier communication application powered by Microsoft. It works as a combination of workplace chat, meetings, notes, and attachments. Collaborated with other integrated Office 365 applications, Microsoft Teams makes teamwork much easier and more effective.</p>    
                </div>
                
            </div>
        </div>
	</div>
<!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">Office 365</span> work today</h1>
            
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