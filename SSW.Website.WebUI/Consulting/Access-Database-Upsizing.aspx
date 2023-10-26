<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Microsoft Access Database Upsizing | SSW Consulting - Sydney, Brisbane, Melbourne" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>
<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero">

        <div class="container hero">
            <h1>Need help with with your <span class="red">databases</span>?</h1>
            <h2>We can upsize your Microsoft Access database</h2>
            <div class="eric-video">
                <div class="video-player" data-id="ebRQ-FWSIv4" data-youkuid=""></div>
            </div>
            <%--<iframe width="688" height="386" src="https://www.youtube.com/embed/ebRQ-FWSIv4" frameborder="0" allowfullscreen></iframe>--%>
            <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal">
                <div class="anim"></div>
                Book a FREE Initial Meeting
            </button>
            <h2>or call us on +61 2 9953 3000</h2>
            <!-- CTA button-->
        </div>

    </div>

    <!-- benefits-section -->

    <div class="benefits-section">
        <div class="container">
            <h1>The benefits of <span class="red">upsizing your Access database</span></h1>
            <h5>If you are experiencing connection, speed and data corruption issues with Microsoft Access, then there is a way to solve them all. It's called 'upsizing'.</h5>

            <h5>Upsizing involves moving the Access database to SQL Server. The user interface stays the same, but the backend database is moved to a more robust platform.</h5>
            
            <h5>SSW provides migration services to companies ranging from small businesses through to corporate. We can migrate old large systems with hundreds of thousands of lines of code, and hundreds of tables and forms.</h5>

            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/no-corruption.png" />
                    <h4>NO MORE DATA CORRUPTION</h4>
                    <p>A website’s design is important. Learn how to create the most effective design for YOUR website.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/Fast.png" />
                    <h4>SPEED UP THE DATABASE</h4>
                    <p>Choosing the right host for your website is essential. Read up on suggestions for choosing an affordable, yet reliable host.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/super_reports.png" />
                    <h4>SUPERCHARGE YOUR REPORTS</h4>
                    <p>A website is tailored to suit YOU. Build your website the way that best works for your understanding and skillset.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/faster_access.png" />
                    <h4>FASTER ACCESS FOR REMOTE WORKERS</h4>
                    <p>What is a website without users? Study up on digital strategies and learn how to measure success with analytics.</p>
                </div>
            </div>

            <h5>Have a look at <a href="https://rules.ssw.com.au/rules-to-better-access-databases">SSW Rules to Better Access Databases</a>.</h5>
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
                <img src="/SSW/images/consulting/mark_p.jpg" /><div class="tName">Mark Pigram</div>
                <div class="tCompany">Contracts Online</div>
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
                <img src="/SSW/images/consulting/peter-m.jpg" /><div class="tName">Peter McCurdy</div>
                <div class="tCompany">PDS</div>
            </div>

            <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal" data-aos="fade-up">
                <div class="anim"></div>
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
            <h1>About SSW</h1>
            <div class="col-md-6">
                <div class="video-player" data-id="Jveq6VFjWTA" data-youkuid=""></div>
            </div>
            <div class="col-md-6">
                <p data-aos="fade-up">SSW has been building and support Microsoft Access databases since 1990. Our Chief Architect is a Microsoft Regional Director and we have been speaking at Microsoft conferences for the past 27 years. If you need help with your Access database, then SSW is the company to speak to.</p>
            </div>
        </div>
    </div>
    <!-- //about SSW section -->

    <!-- clients section -->

    <div class="clients-section">
        <div class="container">
            <h1>Companies we have worked with</h1>
            <div class="row no-gutters">
                <div class="col-sm-4">
                    <img src="/SSW/images/consulting/clients1.png" alt="SSW Clients" class="center-block"></div>
                <div class="col-sm-4">
                    <img src="/SSW/images/consulting/clients2.png" alt="SSW Clients" class="center-block"></div>
                <div class="col-sm-4">
                    <img src="/SSW/images/consulting/clients3.png" alt="SSW Clients" class="center-block"></div>
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
                    <img src="/SSW/images/consulting/sql-server-logo.png" />
                    <p>SQL Server is Microsoft's enterprise level database platform. Being used as the backend database for the majority of Microsoft based IT solutions, it has numerous features to ensure high availability, scalability, data integrity & performance.</p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="greyTBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/microsoft-access-logo.png" />
                    <p>Access is Microsoft's entry level database platform. It allows for rapid development of simple applications where there are a limited number of simultaneous users, and small database size.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- //technologies section -->

    <!-- solutions section -->

    <div class="solution-section">
        <div class="container">
            <h1>Let's find a solution to your <span class="red">Access</span> issues</h1>

            <p>Jump on a call with one of our Account Managers to discuss how we can help you.</p>

            <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal" data-aos="fade-up">
                <div class="anim"></div>
                Book a FREE Initial Meeting
            </button>
            <h2>or call us on +61 2 9953 3000</h2>
            <!-- CTA button-->

        </div>
    </div>
    <%-- // material design modal <a href="#" data-modal="#modal" class="modal__trigger "><div class="anim"></div> Book a FREE Initial Meeting</a>--%>

    <!-- //solutions section -->
</asp:Content>
