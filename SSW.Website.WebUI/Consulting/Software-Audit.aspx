<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Software Auditing | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>
<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">


    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1><span class="red">Want</span> to get more out of your software??</h1>
            <h2>We can help improve your software and empower your team</h2>
           
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
            <h1><span class="red">Benefits</span> of Software Auditing</h1>
                <h5>A crisis will pinpoint the shortfalls of your current technologies. Why wait for down-time or poor sales to discover where your application could be improved?</h5>

                <h5>The companies that we have done audits for range from developer utilities to major enterprise systems.</h5>

                <h2>How long does this normally take?</h2>

                <table class="softwareaudit">
                    <tbody>
                         <tr>
                             <th>Client time commitment</th>
                             <th>SSW time commitment</th>
                         </tr>
                        <tr>
                            <td><span>8 hours</span></td>
                            <td><span>16 hours</span></td>
                        </tr>
                        <tr>
                            <td>
                                <ul>
                                    <li>Initial meeting</li>
                                    <li>Available for contact</li>
                                    <li>Final presentation</li>
                                </ul>
                            </td>
                            <td>
                                <ul>
                                    <li>Initial meeting with client</li>
                                    <li>Perform the Software Audit</li>
                                    <li>Prepare for final presentation</li>
                                    <li>Present findings and documentation to client</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <h2>SSW Software Audit Services can help in:</h2>
            <h5>
                <i class="fa fa-check"></i> <strong>Ensuring the application can be maintained and extended easily in the future</strong><br />
                <i class="fa fa-check"></i> <strong>Discovering problems early; it's much easier and cheaper to fix issues early in the project</strong><br />
                <i class="fa fa-check"></i> <strong>Removing unnecessary clutter and updating old components</strong><br />
                <i class="fa fa-check"></i> <strong>Improving performance, scalability and reliability</strong><br />
                <i class="fa fa-check"></i> <strong>Making sure you use the right technology for the job</strong><br />
                <i class="fa fa-check"></i> <strong>Implementing coding standards for easy reading</strong><br />
                <i class="fa fa-check"></i> <strong>Ensuring your team remains agile and adaptable to change</strong>
            </h5>

          
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx PBI aos-init aos-animate" data-aos="fade-left">
                    <img src="/SSW/images/consulting/user-expereince.png">
                    <h4>Front end Review</h4>
                    <p>SSW implements strict standards on all code produced. Implementing strict coding standards means your code can be easily read, easily modified and easily tested. Our experts are experienced in Angular, React, Vue, Dynamics CRM, and SharePoint.</p>
                    <a href="https://www.ssw.com.au/ssw/Consulting/Web-Applications.aspx">More on our Web Application Services</a>
                </div>
                <div class="col-md-6 benefitsBox PBI speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/crm-integration.png">
                    <h4>Architecture and Backend Web API Review</h4>
                    <p>Architectural decisions have a great impact on the subsequent quality of software implementations. Is your system using the most appropriate technology? Is the system designed for future needs, not only for today's deadlines?</p>
                    <a href="https://rules.ssw.com.au/rules-to-better-clean-architecture">More on our Rules to Better Clean Architecture</a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/sharing-and-collaboration.png">
                    <h4>DevOps and ALM Review</h4>
                    <p>We use Microsoft's Visual Studio application lifecycle management (ALM) tools to provide the backbone for delivering software continuously. SSW can help you leverage the power of these tools to make your developers, testers, and analysts work together efficiently. We also use TFS, Azure DevOps (was VSTS), TeamCity, and Octopus Deploy to fix your deployments and improve your testing lifecycle.</p>
                    <a href="https://www.ssw.com.au/ssw/Consulting/ALM-Azure-DevOps.aspx">More on our ALM and DevOps Services</a>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/engage-and-inform-your-employees.png">
                    <h4>Specification Review</h4>
                    <p>Instead of keeping the client waiting until the final design is deployed, Scrum allows the client to have a clear image of how well the project is going. This will improve the satisfaction level of the client both during the project and afterwards.
                    </br>&nbsp;&nbsp;&nbsp;<i class="fa fa-caret-right"></i> Requirements Analysis document containing plans and recommendations
                    </br>&nbsp;&nbsp;&nbsp;<i class="fa fa-caret-right"></i> A list of product backlog items (PBIs) 
                    </br>&nbsp;&nbsp;&nbsp;<i class="fa fa-caret-right"></i> Ballpark Estimates for the cost of the project and number of sprints to complete.
                    </p>
                    <a href="https://rules.ssw.com.au/rules-to-better-specification-reviews">More on our Rules to Better Specification Reviews</a>
                </div>
            </div>
                <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx PBI aos-init aos-animate" data-aos="fade-left">
                    <img src="/SSW/images/consulting/use-case.png">
                    <h4>Team and Process Review</h4>
                    <p>Is your team as effective and efficient as possible? Without proper team processes, your project will suffer and deadlines will be missed. SSW experts have streamlined processes for hundreds of projects and know what it takes to bring a project back on track. </p>
                    <a href="https://www.ssw.com.au/ssw/Events/Training/Professional-Tailored-Scrum.aspx">More on our Tailored Scrum Training</a>
                </div>
                <div class="col-md-6 benefitsBox PBI speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/content-pack-and-dashboard-built-in.svg">
                    <h4>User Interface Review</h4>
                    <p>Most users don't read manuals, so your software must be intuitive and consistent. Establishing consistency in your User Interface design is challenging. There are many standards available, but too often developers and application designers unknowingly choose a non-standard approach.</p>
                    <a href="https://rules.ssw.com.au/rules-to-better-interfaces-(general-usability-practices)">More on our Rules to Better Interfaces</a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/super_reports.png">
                    <h4>Google Search Engine Optimization</h4>
                    <p>Your website is your point of presence on the Internet. It's great to have a good website but there is no point to this unless people can find it. The number 1 way to reach new clients is through search engines, in particular Google, which claims to be used by 70% of Internet users. </p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/speedup_db.png">
                    <h4>Database Structure Review</h4>
                    <p>Designing a database incorrectly means a real headache later on. Your database could be the bottleneck in your application, if it is not designed well it can slow the application right down. We will review all your database objects to check for weaknesses, as well as common mistakes that developers make.We focus on performance issues, removing data duplication and ensuring data integrity.</p>
                    <a href="https://www.ssw.com.au/ssw/consulting/Scrum.aspx">More on our Rules to Better Google Rankings</a>
                </div>
            </div>
               <div class="row">
                <div class="col-md-6 benefitsBox speedUpBx PBI aos-init aos-animate" data-aos="fade-left">
                    <img src="/SSW/images/consulting/self-service.svg">
                    <h4>Performance Review</h4>
                    <p>If you're finding that your software is reaching its limits of capacity, SSW can provide a performance review of your application to target specific areas for improvements. You specify the number of simultaneous users and set performance goals, for example <2 second average response time.We will then analyze your database query design, system architecture and code structure to provide you with a set of recommendations and specifications.</p>
                    <a href="https://rules.ssw.com.au/rules-to-better-application-performance">More on our Rules to Better Application Performance</a>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/security-db.png">
                    <h4>Security Review</h4>
                    <p>Whether it's because of industry requirement, or your peace of mind, SSW can provide a third-party review of your application to target specific issues for improvements. We look at:
                    </br>&nbsp;&nbsp;&nbsp;<i class="fa fa-caret-right"></i> Running penetration tests with SSL labs to check how exposed your servers are.
                    </br>&nbsp;&nbsp;&nbsp;<i class="fa fa-caret-right"></i> Passwords in .config and code
                    </br>&nbsp;&nbsp;&nbsp;<i class="fa fa-caret-right"></i> Authentication an Authorization
                    </br>&nbsp;&nbsp;&nbsp;<i class="fa fa-caret-right"></i> Cross site scripting and SQL injection
                    </br>&nbsp;&nbsp;&nbsp;<i class="fa fa-caret-right"></i> Encryption of passwords and sensitive data.
                    </br>&nbsp;&nbsp;&nbsp;<i class="fa fa-caret-right"></i> Audit trails and logging
                    </p>
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
