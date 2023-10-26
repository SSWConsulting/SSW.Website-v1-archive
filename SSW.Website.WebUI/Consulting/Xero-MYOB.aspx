<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Xero and Xero API, MYOB and MYOB API | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register  Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register  Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Xero-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-Xero-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="SSW Xero Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="SSW Xero Consulting - Enterprise Software Development">
    <meta property="og:description" content="Let SSW help to remain more organized while carrying out standard accounting functions with Xero and MYOB." />
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">


    <div class="Consulting-Hero employement-video">

        <div class="container hero">
            <h1>Want to make your business more efficient with <span class="red">Accounting Software</span>?</h1>
            <h2>Let SSW help to remain more organized while carrying out standard accounting functions with Xero and MYOB.</h2>
           
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
            <h1>Discover the benefits of using Xero and MYOB</h1>
               <div class="eric-video"><div class="video-player" data-id="6sjDwyOLNNY" data-youku-id="" data-youtuberes="hqdefault"></div></div>

                <h5>Every business needs to keep on top of its finances. Many popular accounting software products have now moved from locally hosted to cloud-based systems, which helps businesses stay organized while carrying out standard accounting activities anywhere-anytime.</h5>
                <h5>Xero and MYOB are entirely cloud-based accounting software for small and large businesses. They perform bookkeeping functions like invoicing and payroll and among other things allow users to connect to live bank feeds and other third-party services. One of the great benefits of accounting software like MOYB and Xero is that they  provide a reporting dashboard which has an overview of your business and financial status. They also help businesses do online-billing, track payments and avoid bookkeeping errors.</h5>

            <div class="row">
                <div class="col-md-6 benefitsBox noCorruptionBx PBI aos-init aos-animate" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Cross-Platform.png">
                    <h4>Cloud-based</h4>
                    <p>Access your accounting software from wherever you want, whenever you want, without being limited to a single computer. </p>
                </div>
                <div class="col-md-6 benefitsBox speedUpBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/Decision.png" />
                    <h4>Automated workflow</h4>
                    <p>Automation is going to make you far more efficient with your accounting, and by automating your workflows, you save yourself a lot of time.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/cluster.png">
                    <h4>Easy Integration</h4>
                    <p>Xero and MYOB can be integrated easily with a variety of other programs and software, such as billing and BI reporting systems that can be integrated easily.</p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/Fast.png">
                    <h4>Faster Invoicing and Payment</h4>
                    <p>Rather than send customers a printed document, you can send them an online invoice, customers can pay you online through your invoice.</p>
                </div>
            </div>
             <div class="row">
                <div class="col-md-6 benefitsBox reportsBx" data-aos="fade-left">
                    <img src="/SSW/images/consulting/Security.png">
                    <h4>Security</h4>
                    <p>Your data securely stored online and encrypts using industry standard data encryption. </p>
                </div>
                <div class="col-md-6 benefitsBox fasterAccessBx" data-aos="fade-right">
                    <img src="/SSW/images/consulting/Report.png">
                    <h4>Customized Reporting</h4>
                    <p>Dozens of ready-made reports that can be implemented through dashboard, also have the ability to customize these reports to better suit your needs. </p>
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
                    <p>We have dealt with several people at SSW from a network tech helping us with a domain issue, to a couple of graphic designers and several programmers and they have ALL been first rate.</p>
                </div>
                <img src="/SSW/images/consulting/peter-dimaridis.jpg"/><div class="tName"> Peter Dimaridis - </div><div class="tCompany">AuctionsPlus</div>
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
                <div class="greyTBox MVC_greyBox aos-init" data-aos="flip-left">
                    <img src="/SSW/images/consulting/powerbi-logo.png" naptha_cursor="text">
                    <p>Power BI is a cloud-based business analytics service, allowing anyone to visualize and analyze data with greater speed, efficiency, and understanding. <a href="Power-BI.aspx">Read more</a></p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox aos-init" data-aos="flip-left">
                <img src="/SSW/images/consulting/office-365-logo.png">
                <p>You can now have Active Directory, Exchange, SharePoint, Skype for Business, OneDrive, and even classic Office apps like Word, Excel, etc. all hosted on the Microsoft cloud under Office 365. 
                Say goodbye to your old server stack and focus more on your core business. <a href="Office365.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/scrum-logo.png" />
                    <h2>Scrum</h2>
                    <p>An Agile Software Development methodology, used since the early 1990s. It enables high-quality software by scheduling regular incremental releases. Customers are closely involved in the development process and are encouraged to review or change priorities based on their changing business needs and user feedback. <a href="/scrum.aspx">Read more</a></p>
                </div>                
            </div>

            <div class="col-md-6">
                <div class="greyTBox" data-aos="flip-left">
                    <img src="/SSW/images/consulting/sharepoint-logo.png" />
                    <h2>SharePoint</h2>
                    <p>A web-based collaborative platform that integrates with the Office suite. It aims to improve the content management of companies by storing all documents in a centralized system. SharePoint can store every version of a document, allowing users to enforce information management policies, and improve efficiency by automating common business processes. <a href="/sharepoint.aspx">Read more</a></p>
                </div>                
            </div>
        </div>
	</div>
    <!-- //technologies section -->

    <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Talk to us about your <span class="red">Xero or MYOB Project</span></h1>
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