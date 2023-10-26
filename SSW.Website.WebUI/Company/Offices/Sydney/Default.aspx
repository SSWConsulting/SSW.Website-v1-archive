<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Title="SSW Sydney Directions | Software Development Consultants in Sydney" %>

<%@ Register Src="~/Components/AboutUs.ascx" TagName="AboutUs" TagPrefix="ssw" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="description" content="Software developer in Sydney NSW | SSW is Sydney's leading ASP.NET MVC, Angular, and Microsoft Azure Development Consultancy, with expertise across Scrum and Application Lifecycle Management." />
</asp:Content>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <div class="carousel slide hidden-xs" data-ride="carousel">
    <img src="Images/ssw-sydney-header.png" alt="SSW Newcastle header" />
</div>
</asp:Content>

<asp:Content ID="footerscripts" ContentPlaceHolderID="FooterScripts" runat="server">
    <script src="/ssw/include/jquery.popeye-0.2.1.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript">
        <!--
    $(document).ready(function () {
        $('.popeye').each(function () {
            $(this).popeye({ stageW: 600, stageH: 300 });
        });
        $('.carousel-inner').each(function () {

            if ($(this).children('div').length === 1) $(this).siblings('.carousel-control, .carousel-indicators').hide();

        });
    });
    //-->
    </script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="/ssw/images/raven/offices-Sydney.png" alt="Sydney">
    <h1><span class="red">SSW</span> Sydney</h1>
    <h2>Software Development Consultants</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <h2><a name="AboutUs"></a>About Us</h2>
        <h4>Sydney is the original home of SSW, and it remains the location of the company's head office.</h4>
        <p>SSW began as a one-man company in 1990, run from a home office in Forestville. Today, SSW has offices in Sydney, <a href="/ssw/Company/Offices/Melbourne/">Melbourne</a>, <a href="/ssw/Company/Offices/Brisbane/">Brisbane</a>, <a href="/ssw/Company/Offices/Newcastle/">Newcastle</a>, and <a href="https://ssw.com.cn/">Hangzhou, China</a> with a total of over 50 employees. </p>
        <p>The Sydney office houses multiple Microsoft MVPs (Most Valuable Professionals), a Microsoft RD (Regional Director—1 of only 9 in Australia), and 2 qualified Scrum Masters. All SSW developers undergo training for Microsoft qualifications (Microsoft Certified Professional), and are passionate experts. </p>
        <p>Additionally, SSW Sydney is home to the multi-media team behind <a href="https://tv.ssw.com/">SSW TV</a>, who deliver engaging, professional, and relevant content both for SSW and our clients.</p>
        <p>We are also experienced with migrating existing business applications to new platforms, to help your business grow and capture new opportunities. </p>
    </div>
        
    <div class="section">
        <h2><a name="Map"></a>SSW Sydney Map</h2>
        <dl class="image">
            <dt><img src="Images/SSW-sydney-map-wide.jpg" alt="SSW Sydney map" /></dt>
        </dl>

        <h2><a name="Directions"></a>SSW Sydney Directions</h2>
        <h4><a href="https://www.google.com/maps/place/SSW+Sydney+-+Enterprise+Software+Development/@-33.8305685,151.2193249,15z/data=!4m5!3m4!1s0x0:0xae8cb5f05af0e28d!8m2!3d-33.8305685!4d151.2193249">Level 1, 81-91 Military Rd, Neutral Bay NSW 2089, Australia<a/></h4>
        <p><strong>Tip:</strong> We're opposite the famous Oaks Hotel.</p>
        <dl class="image">
            <dt><img src="Images/ssw-sydney-map.png" alt="SSW Sydney parking" /></dt>
            <dd><span class="red"><i class="fas fa-car"></i></span> Free Parking</dd>
        </dl>
    </div>

    <div class="section">
        <h2><a name="Parking"></a>Parking</h2>
        <p>Alternatives include 2 hour parking on Ben Boyd Road and surrounding streets.<br />
        We recommend you take a taxi or public transport if you plan to be here for more than 2 hours. </p>
    </div>

    <div class="section">
        <h2><a name="PublicTransport"></a>Public Transport</h2>
        <ul>
            <li><strong>From the CBD:</strong> Take buses 243, 244, 245, 246, or 247 from Stands A and B at Wynyard Station to The Oaks Hotel in Neutral Bay. You can take a ferry - F01- from Circular Quay to Neutral Bay or North Sydney if you fancy a nice stroll.</li>
            <li><strong>From North Sydney:</strong>Take buses 227, 228, 229, or 230 from North Sydney Station (Stand D), Falcon St or Miller St to The Oaks Hotel in Neutral Bay.</li>
        </ul>
    </div>

    <div class="section">
        <h2><a name="Team"></a>The SSW Sydney Team</h2>
        <p>Our developers are very involved with the local developer community, and help run local events such as <a href="https://xamarinhackday.com/sydney/">Xamarin Hack Day</a>, and are active at many others.</p>
        <p>Our local development team is also supported by the global network of SSW employees, which includes MVPs and recognised experts in TFS, ALM, SharePoint, CRM. When you engage with SSW you are engaging with that rich shared organisational knowledge.</p>
    
        <h2><a name="Team"></a>SSW Sydney Photos</h2>
        <div id="sswsydney-carousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#sswsydney-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#sswsydney-carousel" data-slide-to="1" class=""></li>
                <li data-target="#sswsydney-carousel" data-slide-to="2" class=""></li>
                <li data-target="#sswsydney-carousel" data-slide-to="3" class=""></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="Images/ssw-sydney-facade.jpg" alt="SSW Sydney office facade" />
                </div>
                <div class="item">
                    <img src="Images/ssw-sydney-office.jpg" alt="SSW Sydney office" />
                </div>
                <div class="item">
                    <img src="Images/ssw-sydney-audience.jpg" alt="SSW Sydney audience" />
                </div>
                <div class="item">
                    <img src="Images/ssw-sydney-meeting.jpg" alt="SSW Sydney meeting" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h3>Contact Us</h3>
    <p>Whether you're having trouble with your development process or you just need us to write some awesome software, our team of experts is ready to help.</p>
    <p>Give us a call on<br />
        <strong>+61 2 9953 3000</strong></p>
    <p>Find us at<br />
        <strong>Level 1, 81-91 Military Rd, <br />
        Neutral Bay, Sydney, NSW 2089,<br />
        Australia</strong></p>
    <p>Learn more on 
        <a href="https://sswchapel.com.au/sydney/">SSW Chapel</a></p>
    <img src="Images/ssw-sydney-facade.png" alt="SSW Sydney facade" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="sidebarcontainer" runat="server">
    <ssw:AboutUs ID="AboutUs" runat="server" />
</asp:Content>
