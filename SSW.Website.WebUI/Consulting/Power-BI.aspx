<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Power BI | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-PowerBI-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-PowerBI-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="SSW Power BI Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="SSW Power BI Consulting - Enterprise Software Development">
    <meta property="og:description" content="Power BI is a cloud based business analytics service, allowing anyone to visualize and analyse data with greater speed, efficiency and understanding." />
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">


    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Want to get <span class="red">Power BI</span> working for you?</h1>
            <h2>Visualize and analyse data with greater speed, efficiency and understanding</h2>

            <!-- CTA button -->
            <button type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal">
                <div class="anim"></div>
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

    <div class="benefits-section MVC-benefits-background powerbi-bg">
        <div class="container"><a name="more"></a>
            <h1>The benefits of <span class="red">Power BI</span></h1>
            <div class="eric-video">
                <div class="video-player" data-id="yKTSLffVGbk" data-youkuid=""></div>
            </div>
            <h5>Power BI is a cloud based business analytics service, allowing anyone to visualize and analyse data with greater speed, efficiency and understanding.</h5>
            <h5>Before Power BI, getting a BI platform up and running in an organization would require a product like SQL Server Reporting or Analytics Services, which would usually mean upfront cost for hardware, licenses and consulting time. Once initial setup was completed there would also be the effort required to create the reporting models, reports and dashboards.</h5>
            <h5>While the traditional reporting platform lives on, there is a new way with a zero start-up costs that can have organizations up and running in under day. Power BI.</h5>
            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx PBI" data-aos="fade-left">
                    <img src="/SSW/images/consulting/low-startup-cost.svg" />
                    <h4>Extremely low start-up costs</h4>
                    <p>Power BI desktop is free, and the professional cloud version is only $10 per month.</p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx PBI" data-aos="fade-right">
                    <img src="/SSW/images/consulting/self-service.png" />
                    <h4>Self Service BI</h4>
                    <p>Let the people who need the data make or modify the reports on the fly</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx PBI" data-aos="fade-left">
                    <img src="/SSW/images/consulting/content-pack-and-dashboard-built-in.svg" />
                    <h4>Content Packs and Dashboards built in</h4>
                    <p>Getting your data into Power BI is extremely simple and most existing popular systems already have starting reports and dashboards out of the box</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx PBI" data-aos="fade-right">
                    <img src="/SSW/images/consulting/office-365-integrated.svg" />
                    <h4>Integrated into Office 365</h4>
                    <p>Power BI is part of Office 365, so you may already have licenses and not even know it</p>
                </div>
            </div>
            
            <h5>Have a look at <a href="https://rules.ssw.com.au/rules-to-better-power-bi">SSW Rules to Better Power BI</a>.</h5>
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
            <h1>Media</h1>
            <div class="col-md-4">
                <div class="greyTBox PBIBox" data-aos="flip-left">
                    <p><strong><a href="https://tv.ssw.com/6411/going-hardcore-on-your-business-intelligence-with-power-bi-adam-cogan">Going Hardcore on your Business Intelligence with Power BI</a></strong></p>
                    <p>Presentation by <a href="https://www.ssw.com.au/people/adam-cogan">Adam Cogan</a></p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="greyTBox PBIBox" data-aos="flip-left">
                    <p><strong><a href="https://tv.ssw.com/6839/power-bi-finally-can-make-decisions-based-facts-ulysses-maclaren">Power BI – Finally I can make decisions based on facts</a></strong></p>
                    <p>Presentation by <a href="https://www.ssw.com.au/people/ulysses-maclaren">Ulysses Maclaren</a></p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="greyTBox PBIBox blog-post" data-aos="flip-left">
                    <p><strong><a href="http://adamcogan.com/2016/10/13/power-bi-no-more-guessing">Power BI – No More Guessing</a></strong></p>
                    <p>Blog post by <a href="https://www.ssw.com.au/people/adam-cogan">Adam Cogan</a></p>
                </div>
            </div>
        </div>
    </div>
    <!-- //technologies section -->

    <!-- solutions section -->

    <div class="solution-section">
        <div class="container">
            <h1>Talk to us about <span class="red">your data</span> today</h1>

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
    <!-- //solutions section -->
</asp:Content>
