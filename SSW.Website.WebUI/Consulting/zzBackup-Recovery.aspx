<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Backups and Disaster Recovery Plans | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/SSW/Consulting/Images/open-graph/SSW-Consulting-Backup-recovery-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/SSW/Consulting/Images/open-graph/SSW-Consulting-Backup-recovery-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="SSW Backups and Disaster Recovery Plans Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="SSW Backups and Disaster Recovery Plans Consulting - Enterprise Software Development">
    <meta property="og:description" content="Businesses often take their critical line of business applications and systems for granted, and assume that they will always be there, but in the case of a natural or human induced disaster, the fallout can be crippling if not managed well."/>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Need help with <span class="red">Backup</span> and <span class="red">Disaster Recovery Plan</span>?</h1>
            <h2>Australia's leading system administrators and consultants</h2>
           
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
            <h1>The benefits of having a great <span class="red">Backup</span> and <span class="red">Disaster Recovery Plan</span></h1>
            <h5>Businesses often take their critical line of business applications and systems for granted, and assume that they will always be there, but in the case of a natural or human induced disaster, the fallout can be crippling if not managed well. This could range from staff not able to work for a period of time, to a full loss of customer data and business intellectual property.</h5>
           
            <h5>SSW can assist in the design and implementation of a Backup and Disaster Recovery Plan to meet your business requirements.</h5>
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/faster_access.png" />
                    <h4>DISASTER RECOVERY</h4>
                    <p>A complete plan and documentation on what to do in the event of a complete loss of a site or data.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/crm-integration.png" />
                    <h4>RESTORATION OF SERVICES</h4>
                    <p>Testing of restoration to ensure services can be completely restored as expected.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox speedUpBx PBI aos-init aos-animate" data-aos="fade-left">
                    <img src="/SSW/images/consulting/super_reports.png" />
                    <h4>TEST PLANS</h4>
                    <p>Scheduled test plans to completely check that the Disaster Recovery plan works as expected for peace of mind in the event of an actual disaster.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx PBI aos-init aos-animate" data-aos="fade-right">
                    <img src="/SSW/images/consulting/speedup_db.png" />
                    <h4>BACKUP</h4>
                    <p>Design and implement a backup solution that covers all mission critical applications and files using technologies such as Data Protection Manager (DPM), BackBlaze, CloudBerry Backup and Azure Backup and Site Recovery.</p>
                </div>
            </div>
            <h5><a href="https://www.ssw.com.au/rules/why-use-data-protection-manager/">Do you know why to use Data Protection Manager (DPM)?</a>
            <br /><a href="https://www.ssw.com.au/rules/disaster-recovery-plan">Do you have a disaster recovery plan?</a></h5>
            <h5>Have a look at all <a href="https://rules.ssw.com.au/rules-to-better-backups">SSW Rules to Better Backups</a>.</h5>
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
            <h1>Other technologies</h1>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox aos-init" data-aos="flip-left">
                    <img src="/SSW/images/consulting/Data-Protection-Manager.png">
                    <p>Microsoft System Center Data Protection Manager can take the stress and management overhead out of backups by allowing you to control all your backups from one central console. <a href="Data-Protection-Manager.aspx">Read more</a></p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox aos-init" data-aos="flip-left">
                <img src="/SSW/images/consulting/BackBlaze.png">
                <p>Backblaze has introduced a simple backup system utilizing B2 Cloud Storage which is cheap, requires little on premises infrastructure and fast to setup. <a href="BackBlaze-and-CloudBerry-Backup.aspx">Read more</a></p>
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
            <h1>Talk to us about <span class="red">Backups</span> and <span class="red">Disaster Recovery Plans</span></h1>
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