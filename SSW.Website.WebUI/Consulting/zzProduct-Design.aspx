<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Product Design | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>
<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Need help to <span class="red">bring your ideas to life?</span>?</h1>
          <h2>Our team of User Experience and Product Design experts will help your business grow by creating digital solutions with the user in mind</h2>
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
            <h1>SSW's creative design approach</h1>
            
            <h5>We help companies to successfully launch new products or services, re-create existing ones, and work to improve innovation, User Experience (UX) and corporate identity for your business. </h5>
            <h5>SSW's design team have years of experience in all aspects of digital design, from web and native mobile applications to Artificial Intelligence solutions, such as chatbots for your website or a bot for your team. We understand the effort of each element in the digital and human interaction process, and will help you use digital design to boost your results.</h5>
            <h5>We design products' functionality, interfaces and even User Experience that engages people, focused on your project's goals. Our process is a cost-effective approach to product digital design. We adapt it to your needs, empowering your company to benefit from a highly strategic and sophisticated design approach:</h5>
            <div class="col-md-12">
            <img src="/SSW/images/consulting/Product-Design-lifecycle.jpg" />
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/industry-leaders.png" />
                    <h4>Industry Leaders</h4>
                    <p>MVP's, Microsoft Regional Director. Training other developers in technology and process.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/years-of-expereince.png" />
                    <h4>25+ years' experience</h4>
                    <p>A track record of knowing what works and a client list ranging from small business all the way to the largest businesses in Australia.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/development-process.png" />
                    <h4>Development process</h4>
                    <p>Our development process has been honed to maximise transparency while lowering risk. </p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/user-expereince.png" />
                    <h4>USER EXPERIENCE</h4>
                    <p>We build apps that people want to use. Aesthetics and navigation work hand in hand to increase user uptake.</p>
                </div>
            </div>
    
            <h1>SSW's design showcase</h1>
               <div class="col-md-12">
                   <div class=" col-md-12">
                    <div id="screenproducers-carousel" class="carousel slide" data-ride="carousel">
                      <!-- Indicators -->
                      <ol class="carousel-indicators">
                        <li data-target="#screenproducers-carousel" data-slide-to="0" class=""></li>
                        <li data-target="#screenproducers-carousel" data-slide-to="1" class=""></li>
                        <li data-target="#screenproducers-carousel" data-slide-to="2" class=""></li>
                        <li data-target="#screenproducers-carousel" data-slide-to="3" class="active"></li>
                      </ol>
                      <div class="carousel-inner" role="listbox">
                        <div class="item">
                          <img alt="" src="/SSW/images/consulting/Screen-Producer-Australia.jpg" />
                        </div>
                        <div class="item">
                          <img alt="" src="/SSW/images/consulting/Parents-At-Work.jpg" />
                        </div>
                        <div class="item">
                      <img alt="" src="/SSW/images/consulting/Karras-Cold-Logistics.jpg" />
                        </div>
                        <div class="item active">
                        <img alt="" src="/SSW/images/consulting/Real-Insights.jpg" />
                        </div>
                      </div>
                    </div>
                       </br>
                        <a href="https://www.ssw.com.au/ssw/Consulting/UI-UX-Design.aspx">See all of our Showcase</a>
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

	
<!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your product</h1>
            
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