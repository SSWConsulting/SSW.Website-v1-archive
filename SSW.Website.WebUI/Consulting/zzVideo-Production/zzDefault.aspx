<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Video Production | SSW Consulting - Sydney, Brisbane, Melbourne, Newcastle, France, China" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>
<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Need a <span class="red">video</span> for your business?</h1>
            <h2>Get SSW to produce professional-grade videos for you!</h2>
           
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
            <h1>Video Production Overview</h1>
                <h5>At SSW, we work hard to create cutting edge videos that get just the right response from the viewer! See many of our videos at <a href="http://tv.ssw.com/" target="_blank">SSW TV</a> and <a href="https://www.youtube.com/c/sswtv" target="_blank">SSW YouTube channel</a>.</h5>
                <h5>See where we make a lot of our videos at <a href="https://sswchapel.com.au/">SSW Chapel</a>; and check out other marketing services we provide at <a href="https://sswdigital.com.au/">SSW Digital</a>.</h5>
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx PBI aos-init aos-animate" data-aos="fade-left">
                    <img src="/SSW/images/consulting/MarketAnalysis.png">
                    <h4>CREATE DYNAMIC MARKETING</h4>
                    <p>Catch the attention of your audience with a video instead of plain text or just images. Give your customers a story and dynamize your business.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/Quality.png" />
                    <h4>BOOST YOUR BRANDING</h4>
                    <p>Be remembered with a uniquely styled video. Promote your business and showcase how you're different!</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Report.png">
                    <h4>BUILD YOUR ONLINE PRESENCE</h4>
                    <p>Video is a trend that isn't slowing down. While 65% of business don't use videos yet, 85% of people say they’d like to see more video content from brands, so don't miss such a big opportunity!</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/Look-into-the-Future.png">
                    <h4>Share accessible information and education</h4>
                    <p>Be understood easily with engaging videos! Viewers retain 95% of a message when they watch it in a video, compared to 10% when reading it in text.</p>
                </div>
            </div>
            <h5>Have a look at <a href="https://rules.ssw.com.au/rules-to-better-video-recording">SSW Rules to Better Video Recording</a>.</h5>
        </div>

	</div>
    <!-- //benefits-section -->

    <!-- technologies section -->
	<div class="technologies-section">
		<div class="container">
            <h1>What video do you want to make?</h1>
            <div class="col-sm-12">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <h2>Customer Testimonials & Case Studies</h2>
                    <p>Your customers can be your best sales people – See how environmental management consultant, John Hutchison, explains how the team delivered high value software for managing the noise impacts of construction projects.</p>
                    <div class="video-player" data-id="wiFadV5SOPc"></div>
                </div>
            </div>

            <div class="col-md-12">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <h2><a href="Video-Production-Product-Services.aspx">Company Profile Videos</a></h2>
                    <p>Who you are and what you do: Explain your core value proposition and what sets you apart from the competition.  We can help you craft the right message for your business and deliver it with clarity and conviction. Perfect for your homepage.</p>
                    <div class="video-player" data-id="Jveq6VFjWTA"></div>
                </div>                
            </div>

            <div class="col-md-12">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <h2>Recruitment Videos</h2>
                    <p>Attract the best people by telling your story in an authentic and compelling way.  Here’s how SSW’s developers see the business and why it’s an exciting place to work.  We can help your employees and management tell your story in a persuasive and memorable way.</p>
                    <div class="video-player" data-id="tWuutobJtdg"></div>
                </div>                
            </div>

            <div class="col-md-12">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <h2><a href="Conference-Video-Recording.aspx">Event Videos and Livestreaming</a></h2>
                    <p>Capture the spirit of exciting events and use them to promote future events, and engage your audiences with a livestream of your conference, presentation and/or live event.</p>
                    <div class="video-player" data-id="iF8g6F9sr5o"></div>
                </div>                
            </div>

            <div class="col-md-12">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <h2><a href="Video-Production-Training.aspx">Training Videos</a></h2>
                    <p>Show, don't tell! Studies have shown that adding video makes remembering concepts and details <a href="https://www.popvideo.com/blog/looking-at-the-facts-why-video-content-has-the-highest-retention-rate">600% more effective</a>.</p>
                    <div class="video-player" data-id="FFCn_z7dn_A"></div>
                </div>                
            </div>

            <div class="col-md-12">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <h2><a href="Video-Production-Content-Marketing.aspx">Social Media Videos</a></h2>
                    <p>Drive a call to action with short, attention grabbing pieces with clear messaging.</p>
                    <div class="video-player" data-id="FKiTfw1wCI8"></div>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <h2><a href="Video-Production-Custom-Video.aspx">Custom Videos</a></h2>
                    <p>Whatever you want, how you want it. We follow your lead!</p>
                    <p>Our video experts team can work alongside with your staff, as part of the team, to deliver your project outcomes.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <h2><a href="Video-Production-Reusable-Extras.aspx">Reusable Extras</a></h2>
                    <p>Intros/Outros, Logo Stings, Digital On-Screen Graphic (DOG) etc.</p>
                    <p>Animated sting, based on a template, to grab the user’s attention and add branding to the video. This will go at the beginning of all of your videos, but only needs to be created once.</p>
                </div>                
            </div>

        </div>
	</div>
    <!-- //technologies section -->

    <!-- solutions section -->
	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about the <span class="red">video</span> you need today</h1>
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

    <!-- testimonials section -->
	<div class="testimonials-section">
        <div class="container">
            <div class="col-md-4 testimonialCol">
                <div class="callout top-left" data-aos="flip-right">
                    <p>It's a pleasure to work with Raj, David, and SSW's team. They've done several projects for us from development to video production - all of which we're super happy with. I look forward to working together in the future. We see SSW as a partner, not a vendor.</p>
                </div>
                 <img src="/SSW/images/consulting/JustinS.jpg"/><div class="tName"> Justin Stafford </div><div class="tCompany">Blueshift</div>
            </div>

            <div class="col-md-4 testimonialCol">
                <div class="callout top-left" data-aos="flip-right">
                    <p>SSW worked with us in the creation of demo and overview videos for our online platform. We're very pleased with the service provided – efficient and knowledgeable. They understood our requirements very quickly.</p>
                </div>
                <img src="/SSW/images/consulting/KiriS.jpg"/><div class="tName"> Kiri Stejko </div><div class="tCompany">Parents At Work</div>
            </div>
  
            <div class="col-md-4 testimonialCol">
                <div class="callout top-left" data-aos="flip-right">
                    <p>It was a pleasure to have you in the office again. I continue to be impressed by the quality of work and advice you provide.</p>
                </div>
                <img src="/SSW/images/consulting/mark_p.jpg"/><div class="tName"> Mark Pigram</div><div class="tCompany">Contracts Online</div>
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

</asp:Content>