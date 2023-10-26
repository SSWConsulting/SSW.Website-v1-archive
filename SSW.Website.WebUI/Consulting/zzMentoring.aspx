<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Development Mentoring Programs | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <!-- Event snippet for New lead conversion page -->
    <script>
      gtag('event', 'conversion', {'send_to': 'AW-1071324570/wFq9COWCyZMBEJq77P4D'});
    </script>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Need <span class="red">mentoring experts</span> to speed up your project?</h1>
            <h2>The tricks you don't learn from books</h2>
           
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
            <h1><span class="red">SSW</span> Mentoring Services</h1>
               <div class="eric-video"><div class="video-player" data-id="iQ0ujXPVSOc" data-youkuid=""></div></div>
                <h5>If you have a team of developers who need to learn a new technology for a project, then SSW mentoring is the best way to get them up to speed and delivering working functionality.</h5>
                <h5>Our mentoring program allows your team to work alongside a highly skilled SSW software architect to not just train your staff, but work with them as part of the team, to deliver your project outcomes.</h5>
                <h5>Typically, the SSW mentor will work closely with the team during the first sprint, helping them set up their project, architecting their solution and writing the first lines of code. You can decide how long the mentor stays to assist and what level of assistance is required.</h5>
                <h5>Read <a href="https://www.ssw.com.au/rules/mentoring-programs">Do you have a mentoring program?</a></h5>    

                <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Look-into-the-Future.png" />
                    <h4>High flexibility</h4>
                    <p>You can choose a mentor from any technology including SharePoint, .NET, Web Services, SQL Server and Business intelligence. SSW mentors can work on your terms or can be an on-call service when required.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/crm-integration.png" />
                    <h4>Learn while working</h4>
                    <p>Unlike hiring an expert just to work for you on a single project, SSW mentors will teach your team and work on your project at the same time. The mentoring service will encourage reflections on practices so that your team can work on their own in the future.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/development-process.png" />
                    <h4>Long-term supportive relationship</h4>
                    <p>Instead of finishing and leaving, SSW mentors will develop a long-term supportive relationship with your company. If you have any further issue, we are willing to help.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/user-expereince.png" />
                    <h4>More than technology solutions</h4>
                    <p>Each SSW mentor is also a Scrum Master. They can teach you how to run your team as a Scrum team. Instead of only providing solutions for technology issues, we also teach you how to work with efficiency.</p>
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
            <h1>Related Services</h1>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/scrum-logo.png" />
                    <h2>Scrum</h2>
                    <p>Scrum is an Agile Software Development methodology, used since the early 1990s. It enables high-quality software by scheduling regular incremental releases. Customers are closely involved in the process and are encouraged to review or change priorities for the development based on their changing business needs and user feedbacks.<br />
                        <a href="Scrum.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <img src="/SSW/images/consulting/sharepoint-logo.png" />
                    <h2>SharePoint</h2>
                    <p>SharePoint is a web-based collaborative platform that integrates with the Microsoft Office suite. It aims to improve the content management of companies by storing every version of documents and records in a centralized system. SharePoint allows the user to enforce information management policies, and improve efficiency by automating common business processes.<br />
                        <a href="SharePoint.aspx">Read more</a></p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/sql-server-logo.png" />
                    <h2>SQL Server</h2>
                    <p>SQL Server is Microsoft's enterprise-level database platform. Being used as the backend database for the majority of Microsoft based IT solutions, it has numerous features to ensure high availability, scalability, data integrity and performance.<br />
                        <a href="DatabaseDevelopment.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <img src="/SSW/images/consulting/reponsive-apps-icon.png" />
                    <h2>Web Applications</h2>
                    <p>Ever since SSW developed the very first .NET Website in Australia, we've been known as leaders in Website Development. We treat discoverability, usability, functionality, and aesthetic appeal as four critical elements to a successful website.<br />
                        <a href="WebsiteDevelopment.aspx">Read more</a></p>
                </div>                
            </div>
        </div>
	</div>
    <!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">mentoring</span> needs</h1>
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
