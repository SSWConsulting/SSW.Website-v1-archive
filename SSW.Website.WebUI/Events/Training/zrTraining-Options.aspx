<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master"
    Title="SSW Customized Courses" %>

<%@ Register TagPrefix="text" TagName="Training" Src="/ssw/components/TrainingSidebar.ascx" %>
<asp:Content ID="Content4" ContentPlaceHolderID="title" runat="server">
    <h1>Customized Courses</h1>
    <h2>Get the hands-on knowledge you need</h2>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div class="section">
        <h2>
            <a name="overview"></a>Keep up with the latest developments on Microsoft Technologies</h2>
        <ul class="benefits">
            <li><strong>Hands-on training</strong></li>
            <li><strong>High quality material</strong></li>
            <li><strong>Real world examples</strong></li>
        </ul>
        <p>
            We believe that everyone should have access to expert advice. SSW provides high
            quality hands-on developer training so you can stay in front. Our instructors have
            substantial experience and speak at development conferences around the world and
            material is presented in a workshop type format featuring real-world scenarios.
        </p>
    </div>
    
    <div class="section">
        <h2>
        The Perfect Training</h2>
        <p>SSW invites you to maximise your investment in Microsoft technologies. Led by technical expert Adam Cogan, Database Services Manager for SSW and a Microsoft Regional Director, the seminars will guide you through the latest Microsoft technologies and help you improve your development processes.</p>
        <p>Get a head start by attending SSW's series of seminars and conferences led by industry experts.</p>
    <ul class="benefits">
    <li>Hours are customizeable and flexible</li>
    <li>Our trainers can come to you</li>
    <li>Wide range of topics on Microsoft technologies</li>
    </ul>
    <p>
        Whether you want to improve your skills, project or resume, SSW can help you achieve
        your goals. Our courses cover a broad range of topics in various formats from full-day
        workshops to evening courses that spans across ten weeks. Small group size guarantees
        close individual attention given by our knowledgeable and passionate trainers.<br />
        &nbsp;</p>

 <blockquote>
  <p>
   Many thanks to the fine folks at SSW... for coming to our offices and providing the training we needed specifically.
  </p>
<span>Phillip Clarkson</span>
</blockquote>


       <blockquote>
        <p>
         "Eric and SSW have been fantastic. They brought significant experience and pragmatic advice to BuzzNumbers. As a result of their engagement we have implemented a full Project Management process that has dramatically improved team productivity and software quality. SSW had the technical know-how and the direct business implementation experience to deliver on-time results that were above our expectations"
        </p>
       <span>Nick Holmes</span>
       </blockquote>
       </div>
    <div class="section">
        <h2>
            <a name="DeveloperTraining"></a>Developer Training Courses and Events</h2>
        <p>
            Maximise your investment in Microsoft technologies. Led by technical expert Adam
            Cogan, Database Services Manager for SSW and a Microsoft Regional Director, the
            seminars will guide you through the latest Microsoft technologies and help you improve
            your development processes.</p>
        <p>
            View and sort our index of SSW <a href="/ssw/Events/Training/Courses.aspx">events led by industry experts</a>.
        </p>
        <p>
            You can also check our <a href="/ssw/Training/Schedule.aspx">Schedule</a> to see
            all upcoming events.</p>

    </div>
    <div class="section">
        <h2>
            <a name="sessions" id="sessions"></a>Power Sessions and Customized Training</h2>
        <p>
            <img src="images/icon_sessions.jpg" alt="Word art of various topics" title="Power Sessions"
                class="right" />
            Power sessions are developer training presentations focusing on specific subject
            and are generally 1-2 hours long. They are packed with practical tips on .NET, SQL,
            Silverlight, Visual Studio and more. Perfect for when you're trying to dig deeper
            on a particular subject or just want to learn something new. Sessions are rotated
            on various events and roadshows around the world all year round, including SSW's
            own <a href="/ssw/Events/SSWTechBreakfast.aspx">Tech Breakfast</a> and <a href="/ssw/NETUG/Sydney.aspx">
                .NET User Group</a>. Meet with fellow developers and discuss pretty much anything.</p>
        <p>
            <a href="/ssw/training/Sessions.aspx">Have a look at all Power Sessions</a></p>
    </div>
    <div class="section">
        <h3 class="special">
            <a name="onsite" id="onsite"></a>Option: On-site Training</h3>
        <img src="images/onsite.jpg" alt="image of rows of chairs with a projector" title="on-site training"
            class="right" />
        <p>
            If you need a training session at your location for your department or the whole
            company, we can do that too. Maximize your training dollars by running your own
            tailored programs. From $4,990 per day (per company), choose from our list of <a
                href="Courses.aspx">Training courses</a> or mix and match our <a href="/ssw/training/Sessions.aspx">
                    Power Session</a> topics.
            <br />
            Call Ulysses on <strong>+61 2 9953 3000</strong> to find out more.</p>
    </div>
    <div class="section">
        <h3 class="special">
            Option: Daytime Developer Training</h3>
        <img src="/ssw/images/sun_large.png" class="right" alt="Daytime Developer Training" />
        <p>
            Training is presented to small groups in lecture style. All courses provide comprehensive
            coverage of the subject matter with extensive code samples intended to plug into
            your existing applications. Sample applications are provided to show the "big picture".</p>
    </div>
    <div class="section">
        <h3 class="special">
            Option: UTS Evening Training</h3>
        <img src="/ssw/images/moon_large.png" class="right" alt="Evening Training" />
        <p>
            A series of evening training courses run by SSW and hosted by UTS. The courses cover
            a variety of topics that rotate month by month. The current sessions being run at
            UTS are <a href="/ssw/Training/SQLServer.aspx">SQL Server for Developers</a>, <a
                href="/ssw/Training/SharePoint.aspx">SharePoint 2010</a> and <a href="/ssw/Training/VisualStudio.aspx">
                    Developing Windows and Web Applications using Visual Studio.NET</a>.</p>
    </div>
    <div class="section">
        <h2>
            I'm Sold... What's Next?</h2>
            <p class="contactActionEmail"><a class="black next btn" href="javascript:sendEmail('696e666f407373772e636f6d2e6175')" onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" name="ContactUs">Send an email</a></p>
            <p class="contactActionPhone">Call Ulysses on +61 2 <strong>9953 3000</strong> to find out more.</p>

        <p>Past courses can be viewed in our <a href="/ssw/Events/ConferencePast.aspx">Events Archive</a>.</p>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>
        SSW Training:</h2>
    <ul>
        <li><a href="#overview">Overview</a></li>
        <li><a href="#DeveloperTraining">Training Courses</a></li>
        <li><a href="#sessions">Power Sessions</a></li>
        <li><a href="#onsite">On-site Training</a></li>
    </ul>
    <text:Training runat="server" />
</asp:Content>
