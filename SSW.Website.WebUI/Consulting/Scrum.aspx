<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Scrum | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Scrum-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Scrum-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="SSW Scrum Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="SSW Scrum Consulting - Enterprise Software Development">
    <meta property="og:description" content="Scrum is an Agile Software Development methodology. Focusing on communication, Scrum is utilized to achieve effective delivery of complex software projects. It enables high-quality software by scheduling regular incremental releases. Customers are closely involved in the process and are encouraged to review and change priorities, based on their changing business needs and users' feedback." />
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">


    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Do you know how to use <span class="red">Scrum</span>?</h1>
            <h2>Manage your project and empower your team</h2>
           
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
            <h1><span class="red">Scrum</span> in action</h1>
               <div class="eric-video"><div class="video-player" data-id="pTpJNU-czHY" data-youkuid=""></div></div>
                <h5>Scrum is an Agile Software Development methodology. Focusing on communication, Scrum is utilized to achieve effective delivery of complex software projects. It enables high-quality software by scheduling regular incremental releases. Customers are closely involved in the process and are encouraged to review and change priorities, based on their changing business needs and users' feedback.</h5>

                <h5>The Scrum methodology includes three key parts:</h5>
                    <h5><i class="fa fa-check"></i> <strong>Time-boxed meetings with the client at the start and finish of a sprint</strong></h5>
                    <h5><i class="fa fa-check"></i> <strong>A 15-minute Daily Scrum meeting</strong></h5>
                    <h5><i class="fa fa-check"></i> <strong>"Acceptance Criteria" and "Definition of Done", for developers to affirm that a feature is completed</strong></h5>

                <h5>In Scrum, the client, who is also known as the Product Owner, re-prioritizes tasks at the beginning of each sprint so that the Scrum team is always working on the most important features of the product. Meanwhile, the Scrum will be facilitated by a Scrum Master who is accountable for removing any impediments that the team may face.</h5>
                <h5>Lastly, the Development Team should be a self-organized team that consists of professionals who do the work of delivering a potentially releasable Increment of "Done" product at the end of each Sprint. Only members of the Development Team create the Increment.</h5>

	    <div class="row">
            <div class="section">
                <h1>8 Steps to Scrum</h1>
                <img alt="8 Steps to Scrum" src="Images/8Steps_preview.jpeg" />
                <h5>This Scrum image includes all the important steps from the initial meeting to the Review and Retro.<br />
                    Print this "<a href="https://rules.ssw.com.au/do-you-know-the-8-steps-to-scrum">SSW 8 Steps to Scrum pdf</a>" and put it on your 'War Room' wall.</h5>
            </div>
	    </div>
     
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx PBI aos-init aos-animate" data-aos="fade-left">
                    <img src="/SSW/images/consulting/use-case.png">
                    <h4>Promoting transparency</h4>
                    <p>The periodic Scrum meeting promotes transparency for both development progress and process. It provides clear a view for all team members of what activities are on-going and how well the whole project is performing.</p>
                </div>
                <div class="col-md-6 benefitsBox PBI speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/Inspection.png">
                    <h4>Regular inspection of the process to limit variances</h4>
                    <p>Working with the Scrum methodology, it is much easier for managers to get clear inspections of the project periodically. Therefore, any time the project is not going according to plan, the managers will be able to react quickly.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Change.png">
                    <h4>Adaptation to changing circumstances or requirements</h4>
                    <p>In a real project development situation, things may not always go according to plan. The Scrum methodology is a perfect solution for adapting to change. It allows all the team members to be aware of any changes as soon as possible. It also provides an ideal communication environment between the Product Owner and the developers.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/happy_clients.png">
                    <h4>Happier clients</h4>
                    <p>Instead of keeping the client waiting until the final design is deployed, Scrum allows the client to have a clear image of how well the project is going. This will improve the satisfaction level of the client both during the project and afterwards.</p>
                </div>
            </div>
            <h5>Have a look at <a href="https://rules.ssw.com.au/rules-to-better-scrum-using-azure-devops">Rules to Better Scrum using Azure DevOps</a>.</h5>
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
            <h1>Other Technologies</h1>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/azuredevops-logo.png" />
                    <p>Azure DevOps (formerly Visual Studio Team Services) is a hosted service providing development and collaboration tools. With a free tier to get started, it has a lot of inbuilt functionality that allows teams to get up and running with managing their project and automating their workflows to increase productivity with a very short initial learning curve. <a href="ALM-Azure-DevOps.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <img src="/SSW/images/consulting/sharepoint-logo.png" />
                    <p>SharePoint is a web-based collaborative platform that integrates with the Microsoft Office suite. It aims to improve the content management of companies by storing every version of documents and records in a centralized system. SharePoint allows the user to enforce information management policies, and improve efficiency by automating common business processes. <a href="SharePoint.aspx">Read more.</a></p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/teams-logo.png" />
                    <p>Microsoft Teams is the premier phone and chat system from Microsoft. It features instant messaging, voice over IP and video conferencing inside the Teams client software.</p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-right">
                    <img src="/SSW/images/consulting/jira-logo.png" />
                    <p>Jira is an issue and project tracking application developed by Atlassian. It promotes bug tracking and agile project management in software development. Jira has many useful features such as Scrum Boards, Kanban boards, and Agile reporting. It creates customizable workflows that map to any style of work.</p>
                </div>                
            </div>
        </div>
	</div>
    <!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">tech project</span></h1>
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
