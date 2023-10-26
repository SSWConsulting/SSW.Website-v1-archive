<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Angular Application Development | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/ssw/images/SSW-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/ssw/images/SSW-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="SSW Angular Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="SSW Angular Consulting - Enterprise Software Development">
    <meta property="og:description" content="Our enterprise clients love Angular, be it government or large insurance firms, Angular enables you to get systems into production in record time and allows you to be more ambitious with what you want to achieve." />
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Want to build an <span class="red">Angular</span> application?</h1>
            <h2>Australia's top Angular, React, .NET and Azure developers</h2>
          
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
            <h1>The benefits of building your app on <span class="red">Angular</span> with SSW</h1>
               <!--<div class="eric-video"><div class="video-player" data-id="li3Fkv4voL0" data-youkuid=""></div></div>-->
            <h5>Our enterprise clients love Angular, be it government or large insurance firms, Angular enables you to get systems into production in record time and allows you to be more ambitious with what you want to achieve.</h5>
            <ul class="MVC-elements">
                <li class="col-md-3"><img src="/SSW/images/consulting/bulletpoint.png" /> Discoverability</li>
                <li class="col-md-3"><img src="/SSW/images/consulting/bulletpoint.png" /> Usability</li>
                <li class="col-md-3"><img src="/SSW/images/consulting/bulletpoint.png" /> Functionality</li>
                <li class="col-md-3"><img src="/SSW/images/consulting/bulletpoint.png" /> Aesthetic appeal</li>
                </ul>
            <h5>SSW has the resources to develop sites of any scope, from ongoing maintenance tasks to the implementation of large complex sites.</h5>
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/happier-employees.png" />
                    <h4>Industry Leaders</h4>
                    <p>MVPS, Microsoft regional director.<br />
                        Training other developers in technology and process.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/years-of-expereince.png" />
                    <h4>25+ years' experience</h4>
                    <p>A track record of knowing what works and a client list ranging from small business all the way to the largest businesses in Australia.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox speedUpBx PBI aos-init aos-animate" data-aos="fade-left">
                    <img src="/SSW/images/consulting/self-service.svg" />
                    <h4>Fast Performance</h4>
                    <p>Rather than refreshing the browser every time a page changes, Angular only changes parts of the page, achieving the maximum possible speed over the web today.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/Cross-Platform.png" />
                    <h4>Cross Platform</h4>
                    <p>With Angular, you can develop across all platforms and build apps for any deployment target, including web, native mobile and native desktop.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Maintainable.png" />
                    <h4>Maintainable</h4>
                    <p>With new JavaScript modules and TypeScript, Angular is a highly structured, intuitive framework.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/industry-leaders.png" />
                    <h4>Community</h4>
                    <p>Angular has a big community around and are backed by great companies - Google.</p>
                </div>
            </div>

            <h5>Have a look at <a href="https://rules.ssw.com.au/rules-to-better-angular">SSW Rules to Better Angular</a>.</h5>
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

    <!-- technologies section -->

	<div class="technologies-section">
		<div class="container">
            <h1>Other technologies</h1>
            <div class="col-md-6">
                <div class="greyTBox CModule" data-aos="flip-left">
                    <img src="/SSW/images/consulting/react-icon.png" />
                    <p>Build native mobile apps using only JavaScript. It uses the same design as React, letting you compose a rich mobile UI from declarative components. <a href="React.aspx">Read More</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/sql-server-logo.png" />
                    <p>Whether on Azure or on premises, SQL Server is Microsoft's enterprise level database platform, in which SSW has a lot of expertise. Being used as the backend database for the majority of Microsoft based IT solutions, it has numerous features to ensure high availability, scalability, data integrity & performance. <a href="DatabaseDevelopment.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/net-logo.png" />            
                    <p>.NET 5 (was .NET Core) is a free, cross-platform, open source developer platform for building many different types of applications. With .NET, you can use multiple languages, editors, and libraries to build for web, mobile, desktop, games, and IoT.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/ms-azure-logo.png" />
                    <p>Microsoft Azure provides on-demand infrastructure that scales and adapts to your changing business needs. Whether you are creating new applications or running existing applications we provide the best price-performance and end-to-end support. <a href="Azure.aspx">Read More</a></p>
                </div>
            </div>
        </div>
	</div>
<!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">Angular</span> project</h1>
            
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