<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Need help with video conferencing or live streaming? | SSW Consulting – Sydney, Brisbane, Melbourne, and everywhere" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="description" content="Need help with video conferencing or live streaming? SSW will get you up and running with the best collaboration tools on the market!">
    <meta name="keywords" content="video conferencing, zoom, zoom app, zoom conferences, zoom online, conference call, video call, live stream, webinar, live events, online events, online meetings, slack, Microsoft teams, skype business" />
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Need help with <span class="red">video conferencing</span> or <span class="red">live streaming</span>?</h1>
            <h2>SSW will get you up and running with the best collaboration tools on the market!</h2>
           
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
            <h1>The benefits of <span class="red">video conferencing</span></h1>
                <h5>Video conferencing provides a number of opportunities to businesses. It can be used to engage remote teams and employees working from home; to promote collaboration across the team; to run webinars, live events or live-stream in-person events to remote attendees; to meet clients; or even to interview job candidates. SSW can help you identify these opportunities and set up a system that will help you achieve your goal.</h5>
     
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx PBI aos-init aos-animate" data-aos="fade-left">
                    <img src="/SSW/images/consulting/sharing-and-collaboration.png">
                    <h4>Enables a Digital Workforce</h4>
                    <p>Remote staff can efficiently complete their tasks using online collaboration tools. For example, it only takes one video conferencing application to enable remote training, team meetings, client meetings, and more, keeping your team productive while working from home.</p>
                </div>
                <div class="col-md-6 benefitsBox PBI speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/business-processes.png">
                    <h4>Higher Attendance and Flexibility</h4>
                    <p>When running an online event, people can join you from anywhere! For example, if you’re selling training, there’s a good chance you will have a higher attendance rate online than in-person. As an event can also be recorded, paying attendees don’t even need to be available during the live recording – they can also view it at their leisure, or even more than once.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/years-of-expereince.png">
                    <h4>Gives your Business a Competitive Advantage</h4>
                    <p>Online tools help you to communicate and collaborate more effectively with your team and your clients, resulting in higher productivity.</p>
                </div>
                <div class="col-md-6 benefitsBox noCorruptionBx PBI aos-init aos-animate" data-aos="fade-right">
                    <img src="/SSW/images/consulting/low-startup-cost.svg">
                    <h4>Reduced Travel Time and Costs</h4>
                    <p>Travel can be a barrier to many staff and customers who would like to attend your conferences and events. Removing this barrier by moving your events online, or adding an online option, can save time and money for you and your attendees.</p>
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
            <h1>Technologies</h1>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/zoom-logo.png" />
                    <h2>Zoom</h2>
                    <p>Zoom is the leader in modern enterprise video communications, with an easy, reliable cloud platform for video and audio conferencing, chat, and webinars across mobile, desktop, and room systems.</p>
                </div>
            </div>


            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <img src="/SSW/images/consulting/skype-logo.png" />
                    <h2>Skype for Business</h2>
                    <p>Skype for Business is the premier phone system from Microsoft. It features instant messaging, Voice Over IP and Video Conferencing inside the Skype for Business client software. <a href="Skype-for-Business.aspx">Read more.</a></p>
                </div>                
            </div>

            <div class="col-md-12">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <img src="/SSW/images/consulting/teams-logo.png" />
                    <h2>Microsoft Teams</h2>
                    <p>Microsoft Teams is a premier communication application powered by Microsoft. It works as a combination of workplace chat, meetings, notes, and attachments. Integrated with other Office 365 applications, it makes teamwork much easier and more effective. <a href="Microsoft-Teams.aspx">Read more.</a></</p>
                </div>
            </div>

        </div>
        <!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Need help with <span class="red">video conferencing</span> or <span class="red">live streaming</span>?</h1>
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
