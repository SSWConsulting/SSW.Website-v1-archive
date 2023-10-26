<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Pigeon.master" Title="Are you stuck on legacy technologies? | SSW Consulting - Sydney, Brisbane, Melbourne" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register Src="/ssw/components/Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
<%@ Register Src="/ssw/components/LoginStatus.ascx" TagName="LoginStatus" TagPrefix="ssw" %>
<%@ Register TagPrefix="ssw" TagName="ShareThisPageForm" Src="/ssw/components/ShareThisPageForm.ascx" %>

<asp:Content ID="Content6" ContentPlaceHolderID="MainBody" runat="server">

    <div id="videocontainer">
        <video autoplay muted loop>
            <source src="/ssw/include/consulting/img/MVC_background.mp4" type="video/mp4">
            Your browser does not support HTML5 video.
   
        </video>
    </div>

    <!-- benefits-section -->


    <div class="benefits-section MVC-benefits-background">


        <div class="container hero areyoustuck_hero containerBussiness">
            <h1>Are your <span class="red">staff being driven nuts</span> by outdated software or manual processes?</h1>
            <h2>Need the right software to multiply your teams output?</h2>
        </div>

        <div class="container hero areyoustuck_hero areyoustuck_hide containerDeveloper">
            <h1>Find a way out of your nightmare</h1>
            <h2>Are you stuck on legacy technologies and using sub-optimal practices?</h2>
        </div>

        <button type="button" class="btnBussiness areyoustuck_button mr180 areyoustuck_active button raised doublebtn hoverable blacktext">
            <div class="anim"></div>
            I'm a Business Person
                  
        </button>

        <button type="button" class="btnDeveloper areyoustuck_button button raised doublebtn hoverable blacktext">
            <div class="anim"></div>
            I'm a Developer
           
        </button>
        <div class="container divDeveloper">
            </br>
            <ul class="MVC-elements">
                <li class="col-md-12">
                    <img src="/SSW/images/consulting/bulletpoint.png" />
                    We can help you adopt best practices</li>
                <li class="col-md-12">
                    <img src="/SSW/images/consulting/bulletpoint.png" />
                    We can upskill you on the latest technologies</li>
                <li class="col-md-12">
                    <img src="/SSW/images/consulting/bulletpoint.png" />
                    We can add weight and leverage to the decisions that you already know need to happen</li>
            </ul>

            <h5>Share this page with your boss and get 50% OFF on your next SuperPowers ticket! </h5>
            <button id="share-this-page" type="button" class="button raised hoverable" data-toggle="modal" data-target="#shareModal" data-aos="fade-up">
            <div class="anim"></div>
            Refer SSW Consulting Services
            </button>
            </br>
            </br>
            </br>
            <div class="eric-video">
                <div class="video-player" data-id="esPfjax-G-I" data-youkuid=""></div>
            </div>
            <h5>Once your application has been built to run in a container, it can be easily hosted with any provider that supports containers, including Kubernetes and Azure Web Apps.</h5>
        </div>
  
        <div class="container divBussiness">
            </br>
            <h5>We are enterprise software consultants who solve complex business problems and reduce risk, using best practices and the latest technologies.</h5>
            <h5>See how SSW can help:</h5>
            <ul class="MVC-elements">
                <li class="col-md-12">
                    <img src="/SSW/images/consulting/bulletpoint.png" />
                    Build it right the 1st time</li>
                <li class="col-md-12">
                    <img src="/SSW/images/consulting/bulletpoint.png" />
                    Reduce risk through transparency, communication and fast feedback loops</li>
                <li class="col-md-12">
                    <img src="/SSW/images/consulting/bulletpoint.png" />
                    High value, quality & range of expertise</li>
                <li class="col-md-12">
                    <img src="/SSW/images/consulting/bulletpoint.png" />
                    We are Microsoft Gold Certified partner, we have three MVPs and a Microsoft Regional Director</li>
            </ul>
            </br>
            <button id="book-initial-meeting" type="button" class="button raised hoverable" data-toggle="modal" data-target="#myModal" data-aos="fade-up">
            <div class="anim"></div>
            Book a FREE Initial Meeting
            </button>
            </br>
            </br>
            </br>
            <div class="eric-video">
                <div class="video-player" data-id="wiFadV5SOPc" data-youkuid=""></div>
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
                <img src="/SSW/images/consulting/mark_p.jpg" /><div class="tName">Mark Pigram</div>
                <div class="tCompany">Contracts Online</div>
            </div>

            <div class="col-md-4 testimonialCol">
                <div class="callout top-left" data-aos="flip-right">
                    <p>We have dealt with several people at SSW from a network tech helping us with a domain issue, to a couple of graphic designers and several programmers and they have ALL been first rate. </p>
                </div>
                <img src="/SSW/images/consulting/peter-dimaridis.jpg" /><div class="tName">Peter Dimaridis</div>
                <div class="tCompany">AuctionsPlus</div>
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
            <button id="share-this-page" type="button" class="button raised hoverable divDeveloper" data-toggle="modal" data-target="#shareModal" data-aos="fade-up">
            <div class="anim"></div>
            Refer SSW Consulting Services
            </button>

            <button type="button" class="button raised hoverable divBussiness" data-toggle="modal" data-target="#myModal" data-aos="fade-up"><div class="anim"></div>
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
                <div class="col-sm-4">
                    <img src="/SSW/images/consulting/clients1.png" alt="SSW Clients" class="center-block">
                </div>
                <div class="col-sm-4">
                    <img src="/SSW/images/consulting/clients2.png" alt="SSW Clients" class="center-block">
                </div>
                <div class="col-sm-4">
                    <img src="/SSW/images/consulting/clients3.png" alt="SSW Clients" class="center-block">
                </div>
            </div>
        </div>
    </div>
    <!-- //clients section -->

    <!-- technologies section -->

    <div class="technologies-section">
        <div class="container">
            <h1>SSW's main services</h1>
            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/Consulting/images/thumbs/thumb-web-mvc.jpg" />
                    <a href="Web-Applications.aspx"><h2>Web Applications</h2></a>
                    <p>Let us help you design the website or app you always wanted, we'll take care of the critical elements. <a href="Web-Applications.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/Consulting/images/thumbs/thumb-azure.jpg" />
                    <a href="Azure.aspx"><h2>Microsoft Azure</h2></a>
                    <p>Microsoft Azure enables you to build and run highly available applications without focusing on the infrastructure. <a href="Azure.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/Consulting/images/thumbs/thumb-dynamics.jpg" />
                    <a href="Microsoft-Dynamics-365.aspx"><h2>Dynamics 365</h2></a>
                    <p>Dynamics 365 combines existing Microsoft products such as Dynamics CRM, Dynamics NAV, and Dynamics AX into one seamless solution. <a href="Microsoft-Dynamics-365.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/Consulting/images/thumbs/thumb-sharepoint.jpg" />
                    <a href="SharePoint.aspx"><h2>Sharepoint</h2></a>
                    <p>The premier content management to store all documents & records. SSW helps enterprises customize and develop SharePoint often powered by Angular. <a href="SharePoint.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/Consulting/images/thumbs/thumb-mobiles-apps.jpg" />
                    <a href="Mobile-Application-Development.aspx"><h2>Mobile App Development</h2></a>
                    <p>We can build your mobile app using React Native, Xamarin, Flutter, Cordova, or Ionic! <a href="Mobile-Application-Development.aspx">Read more</a></p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="greyTBox MVC_greyBox" data-aos="flip-left">
                    <img src="/SSW/Consulting/images/thumbs/thumb-design.jpg" />
                    <a href="UI-UX-Design.aspx"><h2>Web Design & UX</h2></a>
                    <p>A well designed user interface can improve your corporate image and sales. We deliver practical, creative and unique user experience for your website/app. <a href="UI-UX-Design.aspx">Read more</a></p>
                </div>
            </div>

        </div>
    </div>
    <!-- //technologies section -->

  <!-- solutions section -->

	<div class="solution-section">
		<div class="container">
            <h1>Get the <span class="red">help</span> you need</h1>
            
                <p class="divDeveloper">Recommend us to a decision maker so we can help get your project over the line.</p>
                <p class="divBussiness">Jump on a call with one of our Account Managers to discuss how we can help you.</p>

    <!-- CTA button -->
           
            <button id="share-this-page" type="button" class="button raised hoverable divDeveloper" data-toggle="modal" data-target="#shareModal" data-aos="fade-up">
            <div class="anim"></div>
            Refer SSW Consulting Services
            </button>

            <button type="button" class="button raised hoverable divBussiness" data-toggle="modal" data-target="#myModal" data-aos="fade-up"><div class="anim"></div>
                Book a FREE Initial Meeting
            </button>

            <h2>or call us on +61 2 9953 3000</h2>
    <!-- CTA button-->
                    
        </div>
	</div>
					<%-- // material design modal <a href="#" data-modal="#modal" class="modal__trigger "><div class="anim"></div> Book a FREE Initial Meeting</a>--%>

<!-- //solutions section -->

</asp:Content>
<asp:Content ID="ContentModals" ContentPlaceHolderID="Modals" runat="server">
    <div class="modal fade" id="shareModal" tabindex="-1" role="dialog" aria-labelledby="shareModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <ssw:ShareThisPageForm runat="server"></ssw:ShareThisPageForm>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $("#share-this-page").click(function () {
                $('.g-recaptcha').detach().prependTo('.recaptcha-share');
            });
            $("#book-initial-meeting").click(function () {
                $('.g-recaptcha').detach().prependTo('.recaptcha-contact');
            });
            if (window.location.hash == "#Business") {
                $('.btnDeveloper').removeClass('areyoustuck_active');
                $('.btnBussiness').addClass('areyoustuck_active');
                $('.divDeveloper').css("display", "none");
                $('.divBussiness').css("display", "block");
                $('.containerDeveloper').css("display", "none");
                $('.containerBussiness').css("display", "block");
            }
        });
    </script>
</asp:Content>