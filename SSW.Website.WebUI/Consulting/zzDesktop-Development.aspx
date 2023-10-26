<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Windows Desktop Apps | Windows 10 Store Applications & WPF | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>


<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Windows-desktop-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Windows-desktop-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="SSW Windows Desktop Apps Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="SSW Windows Desktop Apps Consulting - Enterprise Software Development">
    <meta property="og:description" content="Windows is a powerful platform for creating rich media and line-of-business applications. Internal applications with rich data and interactivity have been at the core of the modern business for many years. SSW has been creating desktop applications on the Windows platforms for over 15 years and has a wealth of experience to draw on. Since then, we have been focusing on the 2 main technologies of Windows 10 desktop applications, which are Windows 10 store applications, and the more traditional WPF for classically styled applications." />
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero employement-video">
        <div class="container hero">
            <h1>Want to build your <span class="red">Windows Desktop Applications</span> with SSW?</h1>
            <h2>Richest experience, fastest development</h2>
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
      <source src="/ssw/include/consulting/img/sharepoint_background.mp4" type="video/mp4">
      Your browser does not support HTML5 video.
    </video>
    </div>

    <!-- benefits-section -->

	<div class="benefits-section">
		<div class="container"><a name="more"></a>
            <h1>Why do you need <span class="red">Windows Desktop Applications</span></h1>
            <div class="eric-video"><div class="video-player" data-id="U4ja4nZnwh4" data-youkuid=""></div></div>
            <h5>Windows is a powerful platform for creating rich media and line-of-business applications. Internal applications with rich data and interactivity have been at the core of the modern business for many years. SSW has been creating desktop applications on the Windows platforms for over 15 years and has a wealth of experience to draw on. Since then, we have been focusing on the 2 main technologies of Windows 10 desktop applications, which are Windows 10 store applications, and the more traditional WPF for classically styled applications.</h5>
            
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/years-of-expereince.png" />
                    <h4>High efficiency</h4>
                    <p>Windows desktop applications can interact with server-end software, where they are known as thick clients. The resources required for such lightweight applications will be very low. But they will still be fully functional and powerful to use.</p>
                </div>
                <div class="col-md-6 benefitsBox reportsBx PBI aos-init aos-animate" data-aos="fade-right">
                    <img src="/SSW/images/consulting/Interface.png">
                    <h4>Highly flexible user interfaces</h4>
                    <p>With the help from .NET MAUI the user interface designs of Windows desktop application can be very flexible. It can provide your clients with high-quality user experiences.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/crm-integration.png" />
                    <h4>High integration level</h4>
                    <p>Unlike some web applications, Windows desktop applications could be integrated with local backend systems and databases. It will greatly increase the mobility and flexibility of such applications.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/sharepoint-theme.png" />
                    <h4>Broadened use-cases across devices</h4>
                    <p>Thanks to the Desktop Bridge infrastructure built inside Windows, existing codes of Windows desktop applications can be migrated to Universal Windows Platform gradually and finally reach all kinds of Windows devices.</p>
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
                <div class="greyTBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/wpf-logo.png" />
                    <h2>WPF</h2>
                    <p>Windows Presentation Foundation is a UI framework subsystem of Visual Studio designed by Microsoft. It provides an unified programming model for developers to build desktop applications on Windows free from business logic (domain logic).<br /></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/net-logo.png" />
                    <h2>.NET Framework</h2>
                    <p>A managed execution environment for Windows that provides a variety of services to its running applications. The .NET Framework contains a huge class library called Framework Class Library(FCL) that empowers language interoperability across many popular programming languages.</p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/ms-azure-logo.png" />
                    <h2>Microsoft Azure</h2>
                    <p>Azure provides an on-demand infrastructure that scales and adapts to your changing business needs. Whether you are creating new applications or running existing applications, we provide the best price-performance and end-to-end support. <a href="/Azure.aspx">Read more</a></p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/sql-server-logo.jpg" />
                    <h2>Microsoft SQL Server</h2>
                    <p>SQL Server is Microsoft's enterprise-level database platform. Being used as the backend database for the majority of Microsoft based IT solutions, it has numerous features to ensure high availability, scalability, data integrity and performance. <a href="/DatabaseDevelopment.aspx">Read more</a></p>
                </div>
            </div>

        </div>
	</div>
<!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">Windows Desktop Application</span> development today</h1>
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