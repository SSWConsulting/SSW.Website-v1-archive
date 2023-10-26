<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Title="SSW Melbourne Directions | Software Development Consultants in Melbourne" %>
<%@ Register Src="~/Components/AboutUs.ascx" TagName="AboutUs" TagPrefix="ssw" %>
<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="description" content="Software developer in Melbourne VIC | SSW is Melbourne's leading ASP.NET MVC, Angular, and Microsoft Azure Development Consultancy, with expertise across Scrum and Application Lifecycle Management." />
</asp:Content>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <div class="carousel slide hidden-xs" data-ride="carousel">
    <img src="Images/ssw-melbourne-header.png" alt="SSW Melbourne header" />
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
    <img class="icon" src="/ssw/images/raven/offices-Melbourne.png" alt="Melbourne">
    <h1><span class="red">SSW</span> Melbourne</h1>
    <h2>Software Development Consultants</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <h2><a name="AboutUs"></a>About Us</h2>
        <h4>SSW Melbourne is our 3<sup>rd</sup> successfully opened Australian office. With Melbourne being home to more than half of Australia’s top 20 technology companies. Some of Melbourne’s key digital technology strengths include software development, market platforms, cloud technology, and data analytics. These capabilities support Victoria’s continuing emergence as a tech hub. As such, it seemed a logical step to open an office there.</h4>
        <p>SSW Consulting has over 30 years of Microsoft software and web development experience. We build on top of Angular, React, Vue, Azure, Azure DevOps (was TFS), SharePoint, Office 365, Blazor, .NET, WebAPI, Dynamics 365, and SQL Server.</p>
        <p>However, the primary focus of the office is native rich client for <a href="/ssw/Consulting/Desktop-Development.aspx">desktop</a>, and <a href="/ssw/Consulting/Mobile-Application-Development.aspx">innovative mobile apps (for Android and Apple's iOS)</a>. We will work with your team to build your mobile application using Xamarin and leveraging it to run on all major mobile platforms, giving you a great return on investment. </p>
        <p>Our team is experienced with creating <a href="/ssw/Consulting/Web-Applications.aspx">HTML5 web applications</a> that are both desktop & mobile friendly that use the latest web standards such as MVC, WebApi, <a href="/ssw/Consulting/Angular.aspx">Angular</a>, <a href="/ssw/Consulting/React.aspx">React</a>, and Bootstrap. </p>
        <p>We are also experienced with migrating existing business applications to new platforms, to help your business grow and capture new opportunities. </p>
    </div>
        
    <div class="section">

        <h2><a name="Map"></a>SSW Melbourne Map</h2>
        <dl class="image">
            <dt><img src="Images/SSW-melbourne-map-wide.jpg" alt="SSW Melbourne map" /></dt>
        </dl>

        <h2><a name="Directions"></a>SSW Melbourne Directions</h2>
        <h4><a href="https://www.google.com/maps/place/SSW+Melbourne+-+Enterprise+Software+Development/@-37.8132971,144.9615923,15z/data=!4m2!3m1!1s0x0:0x609aa8f6d5bdb7cb?sa=X&ved=2ahUKEwjk0LGEnKf7AhX0AzQIHYT-AJcQ_BJ6BAhgEB8">Level 1, 370 Little Bourke Street, Melbourne, VIC 3000, Australia</a></h4>
        <p><strong>Tip:</strong> We're just a few shops down from the famous restaurants of Hardware Lane.</p>
        <dl class="image">
            <dt><img src="Images/ssw-melbourne-map.png" alt="SSW Melbourne map" /></dt>
        </dl>
        <p>Melbourne's wonderful network of trams, buses and trains make it easy to get to our office! Located in one of Melbourne's hip and historic laneways, SSW Melbourne is in the bustling heart of the city. Situated just off Elizabeth St, SSW Melbourne is uniquely positioned with convenient access to transport, and is a short stroll to the Yarra river. A variety of restaurants, shops and business services enhance the superb working environment of SSW.</p>
    </div>

    <div class="section">
        <h2><a name="Parking"></a>Parking</h2>
        <p>The best way to get to SSW Melbourne is via public transport. If you have to drive, parking can be tricky. There is a Car Park just a few meters from the SSW office, but it’s expensive and we don’t recommend it. Rates start at $8 per half hour and go up to $79 for a full day(!). To see a full list of other parking options, visit <a href="https://www.carparking.info/">carparking.info</a>.</p>
    </div>

    <div class="section">
        <h2><a name=""></a>Public Transport</h2>
        <ul>
            <li><strong>Trains:</strong> Nestled between 4 different stations, SSW Melbourne is no more than a 10 minute walk from the train. Depending on where you're coming from, you can get off at Flagstaff, Melbourne Central, Southern Cross, or Flinders Street stations.</li>
            <li><strong>Buses:</strong> The nearest tran stop is Bourke Street mall. Trams that stop there are the 86, 96, 19, 57 and 59. For comprehensive information on getting to Hardware Lane, use the <a href="https://www.ptv.vic.gov.au/journey">Public Transport Victoria Journey Planner</a>.</li>
        </ul>
    </div>

    <div class="section">
        <h2><a name="Team"></a>SSW Melbourne Photos</h2>
        <div id="sswmelbourne-carousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#sswmelbourne-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#sswmelbourne-carousel" data-slide-to="1" class=""></li>
                <li data-target="#sswmelbourne-carousel" data-slide-to="2" class=""></li>
                <li data-target="#sswmelbourne-carousel" data-slide-to="3" class=""></li>
                <li data-target="#sswmelbourne-carousel" data-slide-to="4" class=""></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="Images/ssw-melbourne-office.jpg" alt="SSW Melbourne office" />
                </div>
                <div class="item">
                    <img src="Images/ssw-melbourne-team.jpg" alt="SSW Melbourne team" />
                </div>
                <div class="item">
                    <img src="Images/ssw-melbourne-audience.jpg" alt="SSW Melbourne audience" />
                </div>
                <div class="item">
                    <img src="Images/ssw-melbourne-speaker.jpg" alt="SSW Melbourne speaker" />
                </div>
                <div class="item">
                    <img src="Images/ssw-melbourne-dev.jpg" alt="SSW Melbourne developer" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h3>Contact Us</h3>
    <p>Whether you're having trouble with your development process or you just need us to write some awesome software, our team of experts is ready to help.</p>
    <p>Give us a call on<br />
        <strong>+61 3 9005 2034</strong></p>
    <p>Find us at<br />
        <strong>Level 1, 370 Little Bourke Street,<br />
        Melbourne, VIC 3000,<br />
        Australia</strong></p>
    <p>Learn more on 
        <a href="https://sswchapel.com.au/melbourne/">SSW Chapel</a></p>
    <img src="Images/ssw-melbourne-facade.png" alt="SSW Melbourne facade" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="sidebarcontainer" runat="server">
    <ssw:AboutUs ID="AboutUs" runat="server" />
</asp:Content>
