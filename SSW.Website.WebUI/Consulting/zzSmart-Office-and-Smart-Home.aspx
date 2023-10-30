<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Smart Office and Smart Home | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Smart-office-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Smart-office-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="Smart Office and Smart Home Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="Smart Office and Smart Home Consulting - Enterprise Software Development">
    <meta property="og:description" content="The term "smart" is used to describe many different things. Essentially, an office or house becomes smart when its many systems (lights, climate control, music, blinds, air conditioners etc) are tied together under a master control system that can perform automated tasks. The system is accessible from your phone, from anywhere." />
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Need help with <span class="red">office or home automation</span>?</h1>
            <h2>Let SSW give you a slick "Smart Office" or "Smart Home"</h2>
          
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
            <h1>Discover the benefits of <span class="red">automation systems</span></h1>
               <div class="eric-video"><div class="video-player" data-id="Mmo5YQbVxH4" data-youkuid=""  data-youtuberes="hqdefault"></div></div>
            <h5>The term "smart" is used to describe many different things. Essentially, an office or house becomes smart when its many systems (lights, climate control, music, blinds, air conditioners etc) are tied together under a master control system that can perform automated tasks. The system is accessible from your phone, from anywhere.</h5>
            <h5>The automation systems SSW offer allows you to control all electronic systems and with the touch of a button when you are ready to give a presentation or watch a movie. Watch the lights dim, your blinds close, your thermostat adjusts to your most comfortable temperature and your movie starts!</h5>
            <h5>We offer all types of smart office/home possibilities, including solutions from Control4, Nest, and <a href="https://www.ssw.com.au/rules/secure-access-system/">NFC Secure Access Systems</a>. Our system design experts will find the solution that best fits your needs and your budget, while our experienced installers will make everything come to life. Best of all it will be easy to use. Say goodbye to the days of having a pile of remote controls sitting on your living room table!</h5>
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/crm-integration.png" />
                    <h4>Convenience</h4>
                    <p>When the first person arrives, disarm and unlock the front door, unlock internal doors, turn on lights, raise the blinds and turn on the air conditioner. Then welcome with that person's favorite music (One day the coffee will be brewed too!). If you have a presentation, you can even set it to turn the projector on, drop the screen, dim the light and turn up the speakers.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx PBI aos-init aos-animate" data-aos="fade-right">
                    <img src="/SSW/images/consulting/low-startup-cost.svg" />
                    <h4>Save Money</h4>
                    <p>Automatically turn off air-conditioning and lights after the last person leaves at night. You can also receive alerts if power consumption increases unexpectedly.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox speedUpBx PBI aos-init aos-animate" data-aos="fade-left">
                    <img src="/SSW/images/consulting/security-db.png" />
                    <h4>Safety & Security</h4>
                    <p>Had an incident? Check the cameras from anywhere. See who's at the door while still safe inside. Lock all the doors by pressing a button on your Control4 remote. Turn lights on before you arrive home or your office. Check cameras remotely.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/Climatization.png" />
                    <h4>Climatization</h4>
                    <p>Adjust temperature from your smartphone, wherever you are. Change or check on settings while out. Enjoy greater comfort and energy savings with the scheduling features. Use the Control4 thermostat or other popular thermostats like Nest. Check your office or your home remotely, using your smartphone or tablet.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/happy_clients.png" />
                    <h4>High level entertainment</h4>
                    <p>Bring the magic of your home theatre right into your family room! Grab your Control4 remote and press one button to dim the lights, lower the shades and start the show. If your friends are coming over, pick up your iPad® and select your favorite music to stream into the living room and entertainment spaces.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/up-and-running-zendesk.png" />
                    <h4>Lighting</h4>
                    <p>Just arrived home or office, one touch on a Control4 remote or your smartphone, sets the perfect lighting level. You can set a path of lights to welcome you, every time you open the garage door or your main office door. Control lights at home while you are away. You’ll be able to select a personalized button labelled "goodnight" before bedtime, that shuts off all house lights and turns on an outside light.</p>
                </div>
            </div>
            <div class="row">
                Have a look at <a href="https://ssw.com.au/rules/rules-to-better-automation/">Rules to Better Automation</a> and <a href="https://ssw.com.au/rules/rules-to-better-control4/">SSW Rules to Better Control4</a>
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

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">Smart Office</span> and <span class="red">Smart Home</span> project</h1>
            
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