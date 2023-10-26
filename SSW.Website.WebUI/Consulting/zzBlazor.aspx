<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Blazor | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/SSW/Consulting/Images/open-graph/SSW-Consulting-Blazor-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/SSW/Consulting/Images/open-graph/SSW-Consulting-Blazor-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="SSW Blazor Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="SSW Blazor Consulting - Enterprise Software Development">
    <meta property="og:description" content="Blazor applications are composed of reusable web UI components implemented using C#, HTML, CSS and JavaScript (if needed)."/>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Want to <span class="red">build interactive web apps</span> with C#?</h1>
            <h2>Blazor lets you build reusable UI components using C#, HTML, and CSS.<br />
            Your C# code can also easily call JavaScript APIs and libraries.</h2>
          
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
            <h1>The benefits of using <span class="red">Blazor</span></h1>
               <div class="eric-video"><div class="video-player" data-id="Oeh2IJw7Zig" data-youkuid=""></div></div>
            <h5>Blazor is a powerful C#-based frontend SPA (Single Page Application) framework from Microsoft. Blazor applications are composed of reusable web UI components implemented using C#, HTML, CSS and JavaScript (if needed). Blazor supports the use of C# .NET Shared Libraries, so you can share the exact same code between both client and server applications. You can even use .NET code or packages that were written before Blazor existed! Amazing returns on your development efforts!</h5>

            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/crm-integration.png" />
                    <h4>C# or JavaScript? Have the best of both worlds</h4>
                    <p>C# is a well-known strongly typed programming language which means you can catch errors at compile time. Blazor allow using pre-compiled C# with access to all our favourite NuGet packages. You can still use JavaScript to pull in any npm package and expose it to your C# Blazor Components.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx PBI" data-aos="fade-right">
                    <img src="/SSW/images/consulting/self-service.svg" />
                    <h4>Fast development & performance</h4>
                    <p>Get productive fast with re-usable UI components. Blazor runs as fast as any code in the browser can run. It gives you a near-native experience.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Cross-Platform.png">
                    <h4>Cross-browser compatibility</h4>
                    <p>Blazor Wasm runs directly in the browser using WebAssembly which is a W3C Standards approved technology – this mean no plugins are required to run Blazor Wasm applications in modern browsers, including mobile browsers.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx PBI" data-aos="fade-right">
                    <img src="/SSW/images/consulting/content-pack-and-dashboard-built-in.svg">
                    <h4>Rich tooling and debugging</h4>
                    <p>With Blazor you can use your own existing .NET libraries or take advantage of the rich .NET NuGet ecosystem.</p>
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
            <h1>Other technologies</h1>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/sqlserverlogo.png" />
                    <p>SQL Server is Microsoft's enterprise level database platform. Being used as the backend database for the majority of Microsoft based IT solutions, it has numerous features to ensure high availability, scalability, data integrity & performance. <a href="DatabaseDevelopment.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/net-logo.png" />
                    <p>.NET 5 (was .NET Core) is a free, cross-platform, open source developer platform for building many different types of applications. With .NET, you can use multiple languages, editors, and libraries to build for web, mobile, desktop, games, and IoT.</p>
                </div>
            </div>

        </div>
	</div>
<!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">Blazor</span> project</h1>
            
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