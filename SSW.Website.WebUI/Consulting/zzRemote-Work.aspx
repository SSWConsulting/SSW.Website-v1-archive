<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Need help with working remotely? | SSW Consulting - Sydney, Brisbane, Melbourne, and everywhere" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="description" content=" Need help with working remotely? SSW can assist in putting the tools in place to allow your employees to continue working with little to no impact on their efficiency and productivity during the Coronavirus outbreak.">
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Need help with <span class="red">working remotely</span>?</h1>
            <h2>SSW consultants will get your team connected in less than a week</h2>
           
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
            <h1>Get started on <span class="red">Home Offices</span></h1>
                <h5>Amidst current health concerns of Coronavirus (COVID-19), it is important to have an approach for allowing people to start working from home. SSW can assist in putting the tools in place to allow your employees to continue working with little to no impact on their efficiency and productivity.</h5>
     
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx PBI aos-init aos-animate" data-aos="fade-left">
                    <img src="/SSW/images/consulting/sharing-and-collaboration.png">
                    <h4>Collaborative Tools</h4>
                    <p>There are many methods of collaborating from remote locations, SSW can assist in picking what is the best option for your company to keep working as a team.</p>
                </div>
                <div class="col-md-6 benefitsBox PBI speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/VPN.png">
                    <h4>Remote Access VPNs</h4>
                    <p>If you have internal resources that cannot be moved to the cloud, SSW can assist in setting up a remote access VPN.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Communication.png">
                    <h4>Efficient Phone and Communication</h4>
                    <p>Communication must continue to happen when not working face to face. Microsoft Teams are perfect in allowing this communication to continue to take place with no interference.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/development-process.png">
                    <h4>Agile Scrum Methodology</h4>
                    <p>SSW are firm believers in the Scrum methodology helping day-to-day tasks become trackable and putting accountability onto your team.</p>
                </div>
            </div>
            <h5>Have a look at <a href="https://rules.ssw.com.au/rules-to-better-remote-work">SSW Rules to Better Remote Work</a>.</h5>
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
                    <img src="/SSW/images/consulting/office-365-logo.png" />
                    <h2>Office 365</h2>
                    <p>You can now have Active Directory, Exchange, SharePoint, Skype for Business, OneDrive, and even classic Office apps like Word, Excel, etc. all hosted on the Microsoft cloud under Office 365. Say goodbye to your old server stack and focus more on your core business. <a href="Office-365.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <img src="/SSW/images/consulting/teams-logo.png" />
                    <h2>Microsoft Teams</h2>
                    <p>Microsoft Teams is a premier communication application powered by Microsoft. It works as a combination of workplace chat, meetings, notes, and attachments. Integrated with other Office 365 applications, it makes teamwork much easier and more effective. <a href="Microsoft-Teams.aspx">Read more.</a></</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/skype-logo.png" />
                    <h2>Skype for Business</h2>
                    <p>Skype for Business is the premier phone system from Microsoft. It features instant messaging, Voice Over IP and Video Conferencing inside the Skype for Business client software. <a href="Skype-for-Business.aspx">Read more.</a></p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <img src="/SSW/images/consulting/zoom-logo.png" />
                    <h2>Zoom</h2>
                    <p>Zoom is the leader in modern enterprise video communications, with an easy, reliable cloud platform for video and audio conferencing, chat, and webinars across mobile, desktop, and room systems.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/scrum-logo.png" />
                    <h2>Scrum</h2>
                    <p>Scrum a working methodology helping to eliminate miscommunication and provide accountability to deliverables for staff. <a href="Scrum.aspx">Read more.</a></p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <img src="/SSW/images/consulting/Network-Architechure.png" />
                    <h2>Network Architecture</h2>
                    <p>SSW can assist in the design and implementation of a Network Infrastructure that will be stable, fast, scalable and meet your business requirements. <a href="Network-Architecture.aspx">Read more.</a></p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/ms-azure-logo.png" />
                    <h2>Azure</h2>
                    <p>Microsoft Azure enabled you to build and run highly available applications without focusing on the infrastructure.  <a href="Azure.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <img src="/SSW/images/consulting/sharepoint-logo.png" />
                    <h2>SharePoint Online</h2>
                    <p>SharePoint Online is the cloud version of the latest release of SharePoint. Avoid hardware, maintenance, IT, and upgrade costs by embracing the cloud on Office 365. <a href="SharePoint.aspx">Read more.</a></p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/zendesk.png" />
                    <h2>Zendesk</h2>
                    <p>Zendesk a ticketing and communication platform making customer to business communication and tasks easy and trackable. <a href="Zendesk.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <img src="/SSW/images/consulting/power-platform.png" />
                    <h2>Power Platform</h2>
                    <p>Microsoft's Power Platform is a set of low-code applications that can be used individually to create east to use automated business solutions. <a href="Power-Platform.aspx">Read more.</a></p>
                </div>                
            </div>
        </div>
        <!-- //technologies section -->

        <!-- coronavirus section -->
        <div class="container">
            <h1><span class="red">Remote work</span> is here to stay</h1>
                <h3><strong>Workspaces have been becoming more flexible for some time and the COVID-19 crisis has only accelerated the adoption of the technologies that enable this.</strong></h3>
                <h3>In addition to the specific devastating economic impact this pandemic has already had on the retail, hospitality, and tourism sectors, industries with more limited exposure are also having to radically alter the way they operate. SSW is a specialist in transformative tech solutions and if your business needs help to adapt to the COVID-19 crisis, we can help you to thrive in this new paradigm.</h3>
                <h3>Here are a few ways we can help your business:</h3>
                <ul>
                    <li>Urgent bug fixes – If you are directly involved in the frontlines of the COVID-19 crisis you are our priority – We will make sure you can continue to provide essential services by providing bug fixes to websites, intranets, portals, databases and other systems that are essential to your operations</li>
                    <li>Business Continuity and Disaster Recovery – SSW can help you to plan and implement procedures and systems to help you to continue operating throughout and after crises including the COVID-19 pandemic</li>
                    <li>Plan and implement Office 365 cloud migration to enable your people to access the data they need to work from home effectively</li>
                    <li>Keep your staff connected via Teams, Skype, Zoom or Google Hangouts</li>
                    <li>Design systems to help you to promote and sell your products online including setup and configuration of chatbots </li>
                    <li>Add a Scrum Master to help remote teams to become more productive</li>
                    <li>Develop remotely accessible custom cloud applications for any of your business needs</li>
                    <li>Automate labour-intensive business processes using IoT and the Microsoft Power Platform</li>
                    <li>Provide training in livestreaming and video production to enable you to move your in-person content online</li>
                    <li>Provide training via a virtual academy to upskill your staff in online technologies</li>
                </ul>
                <h3><a href="https://rules.ssw.com.au/rules-to-better-remote-work">See our Remote Work rules</a> for best practices for working from home.</h3>
                <h3>At SSW we are fortunate that our experience in online technology makes it easier for us to adapt our work practices to a crisis such as the COVID-19 pandemic, and because of this, SSW stands ready to help your business adapt to this new environment as well. Because we are always sharing and encouraging collaboration on solutions to technological problems, we’ve created some handy Rules to Better Remote Work to help you and your team adapt to an online workspace, and our own Chief Architect and Microsoft Regional Director, Adam Cogan, has also produced a video on how to prepare yourself for remote work.</h3>
                <h3>Contact us for a free 1-hour consultation and we will help you to find solutions that work both technically and financially in these uncertain times.</h3>
        </div>
        <div class="container">
            <h1>SSW Team home offices</h1>
                <div class="col-xs-12">
                    <img src="/SSW/Consulting/images/remotes.jpg" />
                </div>
        </div>
	</div>
    <!-- //coronavirus section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Need help with <span class="red">remote work</span>?</h1>
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
