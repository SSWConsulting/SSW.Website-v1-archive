<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Microsoft HoloLens 2 Experience Day by SSW" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>
<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div class="Consulting-Hero MVC-background">

        <div class="container hero">
            <h1>Microsoft HoloLens 2 Experience Day</h1>
            <h2>Introducing Australia's top business leaders to this ground breaking technology</h2>
            <div class="eric-video">
                <div class="video-player" data-id="bbxQhvFj1nQ" data-youkuid=""></div>
            </div>
            <h3>SSW is lucky to have <a href="https://www.ssw.com.au/people/jk" style="color:#333 !important;" target="_blank">JK</a>, who is our Microsoft MVP, who leads HoloLens' projects.</h3>
            <h3><strong>Note:</strong> During Coronavirus times please book a remote session if you want see a demo of HoloLens 2 or the Oculus Quest 2 (Advanced All-In-One Virtual Reality Headset).</h3>
            <%--<iframe width="688" height="386" src="https://www.youtube.com/embed/bbxQhvFj1nQ" frameborder="0" allowfullscreen></iframe>--%>
            <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal"><div class="anim"></div>
                Book your HoloLens 2 Experience
            </button>
            <h2>or call Penny Walker on +61 2 9953 3000</h2>
            <!-- CTA button-->
        </div>

    </div>

    <!-- benefits-section -->

    <div class="benefits-section MVC-benefits-background">
        <div class="container">
            <h1>Get hands on with the HoloLens 2 in your 45 minute personalised session</h1>
            <h5>Learn everything you need to know about HoloLens in your personalised 45 minute session</h5>
            <div class="sketchfab-embed-wrapper" style="display: block; text-align: center;">
                <iframe style="text-align: center;" width="100%" height="480" src="https://sketchfab.com/models/e6247ba91c6845c2948cdc342dcf3481/embed" frameborder="0" allowvr allowfullscreen mozallowfullscreen="true" webkitallowfullscreen="true" onmousewheel=""></iframe>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Hands-On-Experience.png" />
                    <h4>Hands On Experience</h4>
                    <p>Put the HoloLens 2 on and play with the best mixed reality tool for business on the planet</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/Learn-the-Use-Cases.png" />
                    <h4>Learn the Use Cases</h4>
                    <p>Walk through the best use cases for the technology and discuss how this could apply to your business</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Look-into-the-Future.png" />
                    <h4>Look into the Future</h4>
                    <p>Get a look into the future of the latest advances coming from Microsoft from Microsoft Regional Director, Adam Cogan</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/Your-Questions-Answered.png" />
                    <h4>Your Questions Answered</h4>
                    <p>Have your questions answered by HoloLens technical and business strategy experts from SSW</p>
                </div>
            </div>
            <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal"><div class="anim"></div>
                Book your HoloLens 2 Experience
            </button>
            <h2>or call Penny Walker on +61 2 9953 3000</h2>
            <!-- CTA button-->
        </div>

    </div>
    <!-- //benefits-section -->


    <!-- about SSW section -->

    <div class="about-section">
        <div class="container">
            <h1>About SSW</h1>
            <div class="col-md-6">
                <img src="/SSW/images/consulting/about_ssw.jpg" data-aos="fade-up" />
            </div>
            <div class="col-md-6">
                <p data-aos="fade-up">SSW's Consulting Services have delivered best of breed Microsoft solutions for more than 1,000 clients in 15 countries. With 40+ consultants in five countries, SSW's developers are some of the best in the business. We have many Microsoft Certifications, three MVPs, and a Microsoft Regional Director.</p>
                <p data-aos="fade-up">Know more about HoloLens apps development in our <a href="/ssw/Consulting/HoloLens.aspx">HoloLens Consulting page</a>.</p>
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
                <div class="greyTBox hololens_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/ms-powerbi-logo.png" />
                    <%--<p>a.	SQL Server is Microsoft's enterprise level database platform. Being used as the backend database for the majority of Microsoft based IT solutions, it has numerous features to ensure high availability, scalability, data integrity & performance..NET Core and .NET MVC. <a href="DatabaseDevelopment.aspx">Read more</a></p>--%>
                </div>
            </div>
            <div class="col-md-6">
                <div class="greyTBox hololens_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/ms-hololens-logo.png" />
                    <%--<p>ASP.NET Core is a new open-source and cross-platform framework for building modern cloud based internet connected applications, such as web apps, IoT apps and mobile backends. ASP.NET Core apps can run on .NET Core or on the full .NET Framework.</p>--%>
                </div>

            </div>
            <div class="col-md-6">
                <div class="greyTBox hololens_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/ms-office365-logo.png" />
                    <%--<p>This Google-built and maintained Javascript framework allows us to develop fast, responsive, and interaction-rich web applications. <a href="Angular.aspx">Read more</a></p>--%>
                </div>
            </div>
            <div class="col-md-6">
                <div class="greyTBox hololens_greyBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/ms-azure-logo.png" />
                    <%--<p>Microsoft Azure provides on-demand infrastructure that scales and adapts to your changing business needs. Whether you are creating new applications or running existing applications we provide the best price-performance and end-to-end support. <a href="Azure.aspx">Read More</a></p>--%>
                </div>

            </div>
        </div>
    </div>
    <!-- //technologies section -->

    <!-- solutions section -->

    <div class="solution-section">
        <div class="container">
            <h1>Spaces are limited so book your experience now!</h1>

            <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal"><div class="anim"></div>
                Book your HoloLens 2 Experience
            </button>
            <h2>or call Penny Walker on +61 2 9953 3000</h2>
            <!-- CTA button-->

        </div>
    </div>
    <%-- // material design modal <a href="#" data-modal="#modal" class="modal__trigger "><div class="anim"></div> Book a FREE Initial Meeting</a>--%>

    <!-- //solutions section -->

</asp:Content>
