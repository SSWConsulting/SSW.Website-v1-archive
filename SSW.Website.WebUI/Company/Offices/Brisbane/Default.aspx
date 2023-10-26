<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Title="SSW Brisbane Directions | Software Development Consultants in Brisbane" %>
<%@ Register Src="~/Components/AboutUs.ascx" TagName="AboutUs" TagPrefix="ssw" %>
<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="description" content="Software developer in Brisbane QLD | SSW is Brisbane's leading ASP.NET MVC, Angular, and Microsoft Azure Development Consultancy, with expertise across Scrum and Application Lifecycle Management." />
</asp:Content>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <div class="carousel slide hidden-xs" data-ride="carousel">
    <img src="Images/ssw-brisbane-header.png" alt="SSW Brisbane header" />
</div>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="/ssw/images/raven/offices-Brisbane.png" alt="Brisbane">
    <h1><span class="red">SSW</span> Brisbane</h1>
    <h2>Software Development Consultants</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <h2><a name="AboutUs"></a>About Us</h2>
        <h4>SSW Brisbane was our 2<sup>nd</sup> Australian office. It is the home base for some of our best <a href="/ssw/Consulting/Web-Applications.aspx">web developers</a> and consultants. We are experts in building responsive websites with ASP.NET MVC, <a href="/ssw/Consulting/Angular.aspx">Angular</a>, <a href="/ssw/Consulting/React.aspx">React</a>, and <a href="/ssw/Consulting/Azure.aspx">Microsoft Azure</a> services. Additionally, our developers and designers are interested in mobile technology and can build both mobile-targeted websites, as well as <a href="/ssw/Consulting/Mobile-Application-Development.aspx">ingenious mobile apps (for Android and Apple's iOS)</a>.</h4>
        <p>The Brisbane office has a number of experts in <a href="/ssw/Consulting/ALM-Azure-DevOps.aspx">application lifecycle management</a>, including a Microsoft MVP in Application Lifecycle Management. We count amongst our number some of <a href="https://tv.ssw.com/tag/damian-brady,adam-stephensen,brendan-richards,igor-goldobin/">Queensland's best technical presenters</a>, and we pride ourselves on our teaching expertise with highly effective trainers. We've been instrumental in effecting change with everything from <a href="/ssw/Consulting/Software-Audit.aspx">software audits</a> to <a href="ssw/Events/">training courses</a>, to <a href="/ssw/Consulting/Mentoring.aspx">hands-on mentoring</a>.</p>
        <p>We have successfully helped many organizations implement <a href="/ssw/Consulting/Scrum.aspx">Scrum</a>, and we've guided a large number of development teams to improve their processes around <a href="https://www.ssw.com.au/rules/rules-to-better-continuous-deployment-with-tfs">continuous integration</a>, <a href="https://www.ssw.com.au/rules/rules-to-better-user-acceptance-tests-uat-for-bug-management"></a>testing</a>, and <a href="https://www.ssw.com.au/rules/rules-to-better-architecture-and-code-review">software architecture</a>. We help teams adopt Agile practices using Visual Studio, Team Foundation Server or Visual Studio Online, and Microsoft Azure.</p>
    </div>
        
    <div class="section">

        <h2><a name="Map"></a>SSW Brisbane Map</h2>
        <dl class="image">
            <dt><img src="Images/SSW-brisbane-map-wide.jpg" alt="SSW Brisbane map" /></dt>
        </dl>

        <h2><a name="Directions"></a>SSW Brisbane Directions</h2>
        <h4><a href="https://www.google.com/maps/place/SSW+Brisbane+-+Enterprise+Software+Development/@-27.462939,153.03212,15z/data=!4m5!3m4!1s0x0:0xd087bdb9527dfca5!8m2!3d-27.462939!4d153.03212">Level 1, 471 Adelaide St, Brisbane, QLD 4000, Australia</a></h4>
        <p><strong>Tip:</strong> We're a short stroll from the bustling restauraunt precinct underneath the Story Bridge</p>
        <dl class="image">
            <dt><img src="Images/ssw-brisbane-map.png" alt="SSW Brisbane map" /></dt>
            <dd>Figure: With only a short walk from buses and trains, it's easy to get to the Brisbane office. The great food and transport of the city and the gorgeous views of the story bridge and the harbor promenade enhance the fun and friendly working environment of SSW</dd>
        </dl>
    </div>

    <div class="section">
        <h2><a name="Parking"></a>Parking</h2>
        <p>As we're located 10 minutes from Central station, the best way to get to SSW Brisbane is via public transport. If you have to drive, the only nearby parking options are paid. There is paid parking in front of our building, but spaces are limited. To see a full list of parking options, visit <a href="https://www.carparking.info/">carparking.info</a>.</p>
    </div>

    <div class="section">
        <h2><a name="PublicTransport"></a>Public Transport</h2>
        <ul>
            <li><strong>Trains:</strong> SSW Brisbane is only a 10 minute walk from Central Station in the heart of the city. To find us, exit through the back of the station onto Anzac Square memorial. Exit Anzac Square to the left, onto Adelaide St, and then turn right at Macrossan St. The entrance to our office will be on Macrossan St, to your right.</li>
            <li><strong>Buses:</strong> Dozens of bus routes stop on Adelaide St, but the closest stop is Queen St Stop 67, and from there it’s only a short walk to our office. For comprehensive information on getting to Adelaide Street - including route maps and timetables - please visit <a href="https://translink.com.au/">translink.com.au</a>.</li>
        </ul>
    </div>

    <div class="section">
        <h2><a name="Team"></a>The SSW Brisbane Team</h2>
        <p>Our developers are very involved with the local developer community, and help run local events such as <a href="https://xamarinhackday.com/brisbane/">Xamarin Hack Day</a>, and are active at many others.</p>
        <p>Our local development team is also supported by the global network of SSW employees, which includes MVPs and recognised experts in TFS, ALM, SharePoint, CRM. When you engage with SSW you are engaging with that rich shared organisational knowledge.</p>
        
        <h2><a name="Team"></a>SSW Brisbane Photos</h2>
        <div id="sswbrisbane-carousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#sswbrisbane-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#sswbrisbane-carousel" data-slide-to="1" class=""></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="Images/ssw-brisbane-office.jpg" alt="SSW Brisbane office" />
                </div>
                <div class="item">
                    <img src="Images/ssw-brisbane-team.jpg" alt="SSW Brisbane team" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h3>Contact Us</h3>
    <p>Whether you're having trouble with your development process or you just need us to write some awesome software, our team of experts is ready to help.</p>
    <p>Give us a call on<br />
        <strong>+61 7 3077 7081</strong></p>
    <p>Find us at<br />
        <strong>Level 1, 471 Adelaide St, <br />
        Brisbane, QLD 4000,<br />
        Australia</strong></p>
    <p>Learn more on 
        <a href="https://sswchapel.com.au/brisbane/">SSW Chapel</a></p>
    <img src="Images/ssw-brisbane-facade.png" alt="SSW Brisbane facade" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="sidebarcontainer" runat="server">
    <ssw:AboutUs ID="AboutUs" runat="server" />
</asp:Content>
