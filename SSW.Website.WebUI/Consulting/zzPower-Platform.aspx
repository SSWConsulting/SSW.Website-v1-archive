<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Power Platform | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>
<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">


    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Want to be <span class="red">more effective and efficient</span> in your business?</h1>
            <h2>Power Platform can help you create solutions for all of your internal and external processes</h2>
           
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
            <h1>What is <span class="red">Power Platform</span>?</h1>
               <div class="eric-video"><div class="video-player" data-id="p3B4JRexdRM" data-youtuberes="hqdefault"></div></div>
            <h5>Microsoft's Power Platform is a set of low-code applications that can be used individually to create easy to use business solutions. These applications can be used together and combined with Office 365 and Azure to create a smooth flow throughout your whole business, from client communication to financial analytics. </h5>
            <h5>The Power Platform includes Power Apps, Power Automate, Power BI, and Power Virtual Agents and uses Microsoft's Common Data Service.</h5>
   
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Look-into-the-Future.png" />
                    <h4>Empower Your Employees to Make Your Business Better</h4>
                    <p>Power apps is a leader in low-code development tools. It provides an easy to use interface and enough options to enable the creation of high functioning apps that can be used by any part of your business. Also, with Microsoft's Common Data Service your application can display and use your analytics and data.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/crm-integration.png" />
                    <h4>Engage Your Customers and Employees</h4>
                    <p>Power Automate allows the easy automation of simple, everyday tasks. With built-in connection to over 300 services, your flows can manage actions and data from cloud services and on-site sources.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Decision.png" />
                    <h4>Make Better Decisions</h4>
                    <p>Power BI provides customizable analytic reports that make it easy to understand your metrics and data. Traditionally getting a business report was a task that took a large amount of time and involved multiple people. Power BI makes these reports much more accessible so that you can quickly make important decisions to grow your business.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/Innovation.png" />
                    <h4>Automate Your Business Processes</h4>
                    <p>Power Virtual Agents makes it easy for non-coders to create useful bots that can improve your business processes. Use Microsoft's powerful AI and natural language abilities to improve your customer service capabilities with a Virtual Agent chatbot or automate backend services like marketing and financial analysis. Lastly, connect Power Virtual Agents with Power BI to track how your bots are performing.</p>
                </div>
            </div>
            <h5>Have a look at <a href="https://rules.ssw.com.au/rules-to-better-power-platform">SSW Rules to Better Power Platform</a>.</h5>
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
            <h1>Other Technologies</h1>

                <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/powerbi-logo2.png" />
                    <h2>Power BI</h2>
                    <p>Power BI is an analytics service from Microsoft. Its goal is to give users an interactive interface where they can create custom reports. Power BI offers data services such as data discovery, data preparation, and interactive dashboards. </p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/powerapps.png" />
                    <h2>Power Apps</h2>
                    <p>Power Apps is a collection of apps, services, connectors, and is a data platform that allows users to create custom apps that connect to your data on Common Data Service or from on-premises data sources.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/powerautomate.png" />
                    <h2>Power Automate</h2>
                    <p>Power Automate is an online service that allows users to create automated flows with common apps and services.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/powervirtualagents.png" />
                    <h2>Power Virtual Agents</h2>
                    <p>Power Virtual Agents gives teams the ability to create bots using a no-code interface and Microsoft's AI and natural language processing. </p>
                </div>
            </div>
        </div>
	</div>
<!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">Power Platform</span> project today</h1>
            
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