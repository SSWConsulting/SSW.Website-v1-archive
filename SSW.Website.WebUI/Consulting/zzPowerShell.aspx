<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="PowerShell Development | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Want to <span class="red">automate</span> your on-premises or cloud infrastructure deployment and workflow?</h1>
            <h2>Get your infrastructure automation from snail's pace to blazing fast with PowerShell</h2>
           
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
            <h1>The benefits of automating everything in your infrastructure with PowerShell and SSW</h1>

            <h5>System Administrators, Site Reliability Engineers and Automation Engineers across the globe love to automate every possible task, and PowerShell is the answer for on-premises and cloud automation, as it is an open-source, cross-platform scripting language and command-line shell that can be used on and with Azure. PowerShell scripting is the fastest and best way to get your routine tasks done automatically e.g. managing Virtual Machines, Servers, employee onboarding and offboarding process, certificate management and much more.</h5>
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/Innovation.png">
                    <h4>TASK AUTOMATION</h4>
                    <p>Automate your daily tasks with PowerShell scripting.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Cross-Platform.png">
                    <h4>CROSS PLATFORM</h4>
                    <p>With PowerShell 6+, you can develop across most Operational Systems (Linux, Windows, Mac) and make the code work for you anywhere.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/crm-integration.png">
                    <h4>CONSISTENCY</h4>
                    <p>Automated tasks are much less error-prone than manual ones, it will always run the same way with the same parameters, so no unexpected outcomes in your scripts.</p>
                </div>
                <div class="col-md-6 benefitsBox" data-aos="fade-left">
                    <img src="/SSW/images/consulting/low-cost.png">
                    <h4>FREE UP YOUR ADMINS TIME</h4>
                    <p>Get those pesky, day-to-day tasks be done by a machine rather than a human, so your admins can bring more value to other parts of your business.</p>
                </div>
            </div>

            <h5>Have a look at <a href="https://www.ssw.com.au/rules/rules-to-better-powershell">SSW Rules to Better PowerShell</a>.</h5>
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
                <img src="/SSW/images/consulting/peter-dimaridis.jpg"/><div class="tName"> Peter Dimaridis</div><div class="tCompany">Auction Plus</div>
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
            <h1>Why should you choose SSW?</h1>
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
                <div class="greyTBox MVC_greyBox aos-init" data-aos="flip-left">
                    <img src="/SSW/images/consulting/Data-Protection-Manager.png" naptha_cursor="text">
                    <p>Microsoft System Center Data Protection Manager can take the stress and management overhead out of backups by allowing you to control all your backups from one central console. <a href="Data-Protection-Manager.aspx">Read more</a></p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox aos-init" data-aos="flip-left">
                <img src="/SSW/images/consulting/Backup-Recovery.png">
                <p>SSW can assist in the design and implementation of a Backup and Disaster Recovery Plan to meet your business requirements. <a href="Backup-Recovery.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-12">
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
            <h1>Talk to us about your infrastructure project</h1>
            
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