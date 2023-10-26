<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Title="SSW Newcastle Directions | Software Development Consultants in Newcastle" %>
<%@ Register Src="~/Components/AboutUs.ascx" TagName="AboutUs" TagPrefix="ssw" %>
<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="description" content="Software developer in Newcastle NSW | SSW is Newcastle's leading ASP.NET MVC, Angular, and Microsoft Azure Development Consultancy, with expertise across Scrum and Application Lifecycle Management." />
</asp:Content>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <div class="carousel slide hidden-xs" data-ride="carousel">
    <img src="Images/ssw-newcastle-header.png" alt="SSW Newcastle header" />
</div>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="/ssw/images/raven/offices-Newcastle.png" alt="Newcastle">
    <h1><span class="red">SSW</span> Newcastle</h1>
    <h2>Software Development Consultants</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <h2><a name="AboutUs"></a>About Us</h2>
        <h4>SSW Newcastle is our 4<sup>th</sup> Australian office. We chose Newcastle because of its vibrant, enthusiastic, and up-and-coming tech community, as well as the presence of a world-class university. Newcastle University is ranked within the top 200 in the world and is within in the top 8 in Australia for research. With so much potential, and a city-wide commitment to technology and digitisation (with the city committing to be a smart and sustainable city by 2030), it is the perfect place for SSW to continue to grow.</h4>
        <p>The office boasts some of our best <a href="/ssw/Consulting/Web-Applications.aspx">web developers</a> and consultants. We have expertise in building responsive websites with ASP.NET MVC, <a href="/ssw/Consulting/Angular.aspx">Angular</a>, <a href="/ssw/Consulting/React.aspx">React</a>, and <a href="/ssw/Consulting/Azure.aspx">Microsoft Azure</a> services. With a certified Scrum Master and over 20 years of combined experience in the industry, our Newcastle Devs have experience in tailoring and delivering the best solutions for any project that comes their way. Additionally, our developers and designers have a particular interest in mobile and can build both mobile-targeted websites as well as <a href="/ssw/Consulting/Mobile-Application-Development.aspx">cool mobile apps (for Android and Apple's iOS)</a>.</p>
        <p>We count amongst our number some of Australia's best technical presenters, and we pride ourselves on our teaching expertise with highly effective trainers. We've been instrumental in effecting change with everything from <a href="/ssw/Consulting/Software-Audit.aspx">software audits</a> to <a href="/ssw/Events/">training courses</a>, to <a href="/ssw/Consulting/Mentoring.aspx">hands-on mentoring</a>.</p>
        <p>We have successfully helped many organizations implement <a href="/ssw/Consulting/Scrum.aspx">Scrum</a>, and we've guided many development teams to improve their processes around <a href="https://www.ssw.com.au/rules/rules-to-better-continuous-deployment-with-tfs">continuous integration</a>, <a href="https://www.ssw.com.au/rules/rules-to-better-user-acceptance-tests-uat-for-bug-management"></a>testing</a>, and <a href="https://www.ssw.com.au/rules/rules-to-better-architecture-and-code-review">software architecture</a>. We help teams adopt Agile practices using Visual Studio, Team Foundation Server or Visual Studio Online, and Microsoft Azure. </p>
        
        <h2>Welcome to the Tech City - Newcastle, NSW, Australia</h2>
        <div class="video-player" data-id="qheJIMnDR6E" data-youtuberes="hqdefault"></div>

       </div>
        
    <div class="section">

        <h2><a name="Map"></a>SSW Newcastle Map</h2>
        <dl class="image">
            <dt><img src="Images/SSW-newcastle-map-wide.jpg" alt="SSW Newcastle map" /></dt>
        </dl>

        <h2><a name="Directions"></a>SSW Newcastle Directions</h2>
        <h4><a href="https://www.google.com/maps/place/SSW+Newcastle+-+Enterprise+Software+Development/@-32.9268586,151.7715969,15z/data=!4m2!3m1!1s0x0:0xdb2e94b069d3a4a3?sa=X&ved=2ahUKEwiPv9yRnaf7AhUDCjQIHQBtD04Q_BJ6BAhYEB8">Ground Floor, 432 Hunter St, Newcastle, NSW 2300, Australia</a></h4>
        <p><strong>Tip:</strong> Opposite the vibrant Newcastle University NUspace (the Opera House of Newcastle).</p>
        <p>SSW Newcastle is located in a prime position opposite to the University of Newcastle. You can easily walk there from the Newcastle Interchange station (1.3km).</p>
        <dl class="image">
            <dt><img src="Images/ssw-newcastle-map.png" alt="SSW Newcastle map" /></dt>
            <dd><span class="red"><i class="fas fa-car"></i></span> Free Parking</dd>
        </dl>
    </div>

    <div class="section">
        <h2><a name="Parking"></a>Parking</h2>
        <ul>
            <li><strong>#1 Short Stay - On-street parking</strong><br />
             Available right behind the SSW Newcastle office (in Civic Lane). This is the best option for short visits as it is limited to 2 hours.
            </li>
            <li><strong>#2 Longer Visits - Wright Lane Car Park</strong><br />
            This is the next closest option, and is better for longer visits. Parking is $3 an hour, but spaces are limited.
            </li>
            <li><strong>#3 All Day - <a href="https://www.firstparking.com.au/locations/11-argyle-st/" target="_blank">First Parking on Argyle st</a></strong><br />
            This is the best option for all-day parking as it has ample spaces and the early-bird rate is $17. Tip: If you register online you can get a 20% discount.
            </li>
        </ul>
    </div>

    <div class="section">
        <h2><a name="Team"></a>SSW Newcastle Photos</h2>

        <div id="sswnewcastle-carousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#sswnewcastle-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#sswnewcastle-carousel" data-slide-to="1" class=""></li>
                <li data-target="#sswnewcastle-carousel" data-slide-to="2" class=""></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="Images/ssw-newcastle-office.jpg" alt="SSW Newcastle office" />
                </div>
                <div class="item">
                    <img src="Images/ssw-newcastle-team.jpg" alt="SSW Newcastle team" />
                </div>
                <div class="item">
                    <img src="Images/ssw-newcastle-foyer.jpg" alt="SSW Newcastle foyer" />
                </div>
            </div>
        </div>
        
    </div>
    <hr />
    <div class="section">
        <h2>SSW Newcastle at night + SSW Chapel</h2>
        <div class="video-player" data-id="LQ3vQ-liNxY" data-youtuberes="hqdefault"></div>

        <h2><a name="Team"></a>SSW Retreat in Newcastle</h2>
        <div class="video-player" data-id="BIapqdy170k" data-youtuberes="hqdefault"></div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h3>Contact Us</h3>
    <p>Whether you're having trouble with your development process or you just need us to write some awesome software, our team of experts is ready to help.</p>
    <p>Give us a call on<br />
        <strong>+61 2 4063 2095</strong></p>
    <p>Find us at<br />
        <strong>Ground Floor, 432 Hunter St, <br />
        Newcastle, NSW 2300,<br />
        Australia</strong></p>
    <p>Learn more on 
        <a href="https://sswchapel.com.au/newcastle/">SSW Chapel</a> and<br />
        <a href="https://civichub.com.au/">CivicHub.com.au</a></p>
    <img src="Images/ssw-newcastle-facade.png" alt="SSW Newcastle facade" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="sidebarcontainer" runat="server">
    <ssw:AboutUs ID="AboutUs" runat="server" />
</asp:Content>
