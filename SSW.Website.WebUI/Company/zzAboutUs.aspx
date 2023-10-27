<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="AboutUs.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="About SSW - Sydney, Melbourne, Brisbane's Premier Software Consultants" Inherits="SSW.Website.WebUI.Raven" %>

<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>--%>
<%@ Register Src="~/Components/AboutUs.ascx" TagName="AboutUs" TagPrefix="ssw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>Australia's Leading .NET and SQL Consultants</h1>
    <h2>What we can do</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>
        <a name="AboutUs"></a>About SSW</h2>
    <ul>
        <li><a href="#Reasons">Why should you choose SSW?</a></li>
        <li><a href="#SoftwareDevelopment">Enterprise Software Development</a></li>
        <li><a href="#TheSSWTeam">The SSW team</a></li>
        <li><a href="#Why-we-are-awesome">Why we think we're awesome</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <%--    <p><asp:SiteMapPath ID="SiteMapPath2" runat="server" SiteMapProvider="SSWXmlSiteMapProvider"></asp:SiteMapPath></p>--%>
    <div class="section">
        <h2><a name="Reasons"></a>Why should you choose SSW?</h2>
        <div class="eric-video">
            <div class="video-player" data-id="Jveq6VFjWTA" data-youkuid=""></div>
        </div>
        <%--<iframe width="853" height="480" src="//www.youtube.com/embed/li3Fkv4voL0?wmode=opaque" frameborder="0" allowfullscreen></iframe>--%>
        <h2><a name="SoftwareDevelopment"></a>Enterprise Software Development</h2>
        <p>SSW's Consulting Services have delivered best of breed Microsoft solutions for more than 1,000 clients in 15 countries. With 50 consultants in 3 countries, SSW's developers are some of the best in the business. We have many Microsoft Certifications, 5 MVPs, and a Microsoft Regional Director.</p>
        <p>We deliver scalable and extensible custom solutions with the future in mind. Our solutions improve businesses' bottom lines, with real time savings and long term value. We will provide you with the competitive advantage you need.</p>
        <p>We aim to build it right the first time. We reduce projects risk through excellent communication, transparency and fast feedback loops. SSW builds powerful software with intuitive user experiences that allow people to automate complex tasks and see meaningful insights, and hopefully we can help your business to make better decisions.</p>
        <p>SSW Consulting has over 30 years of experience developing awesome Microsoft solutions that today build on top of Angular, React, Vue, Azure, Azure DevOps (was TFS), SharePoint, Office 365, Blazor, .NET, WebAPI, Dynamics 365, and SQL Server.</p>
        <p>We focus on 3 things:</p>
        <ul class="benefits">
            <li>Getting you a working app</li>
            <li>Keeping you informed </li>
            <li>Supporting your app once it's in production</li>
        </ul>
        <p>SSW clients range from medium sized companies (Hutchison Weller), government organisations (Australian Fisheries) to large companies (Microsoft, Toll, BUPA, Allianz, PwC, Commonwealth Bank of Australia, The University of Sydney, Brisbane Catholic Education) all of which have glowing testimonials. Additionally, SSW's website offers an abundance of downloads and resources for developers.</p>
    </div>

    <div class="section">
        <h2>Our mission statement</h2>
        <p><strong>To find the best way to do everything.</strong><br />
            To identify and use best practices (in technology, DevOps, and Scrum) to navigate the dangers of software development and produce the best possible software solutions for our clients.</p>
        <p>SSW is strong at <strong>Mastery</strong>, our <strong>Purpose</strong> is focused on ROI (mainstream technology, deploying often, and quality coding practices) and we aim for <strong>Team Aligned Autonomy</strong>.</p>
        <p>Related rules:</p>
        <ul>
            <li><a href="https://ssw.com.au/rules/have-a-clear-mission-statement">Do you have a clear mission statement?</a></li>
            <li><a href="https://ssw.com.au/rules/autonomy-mastery-and-purpose">Do you aim for Autonomy, Mastery and Purpose?</a></li>
        </ul>
    </div>

    <div class="section">
        <h2><a name="CorporateVid"></a>Building the best software</h2>
        <div class="eric-video">
            <div class="video-player" data-id="tWuutobJtdg" data-youkuid=""></div>
        </div>
        <%--<iframe width="853" height="480" src="//www.youtube.com/embed/eu0qhzevEXQ" frameborder="0" allowfullscreen></iframe>--%>
        <%--Video: SSW corporate video<br />--%>
    </div>
    
    <div class="section">
        <h2>...on top of the Microsoft Stack and more</h2>
        <p>SSW offers custom enterprise software solutions. Recent projects have utilized the latest technologies including Angular, React, Vue, Azure, Azure DevOps (was TFS), SharePoint, Office 365, Blazor, .NET, WebAPI, Dynamics 365, and SQL Server.</p>
    </div>
    <div class="section">
        <h2>Throw your next challenge at us!</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a> is SSW's
            Chief Architect. His position as one of only a few Australian Microsoft Regional Directors
            helps SSW deliver cutting edge Microsoft technology solutions. SSW has also successfully
            hosted the <a href="/ssw/NETUG/default.aspx">Sydney .NET Users Group</a> for the
            past 15 years.
        </p>
        <p>In 1999, we were first recognized as a Microsoft Gold Partner – now renamed Microsoft Cloud Partner. Today <a href="/SSW/Company/Awards.aspx">SSW has competencies in a variety of areas</a>, including <strong>Data and AI</strong>, and <strong>Digital & App Innovation</strong>.</p>

        <%--        <p style="text-align:center;">
        <img src="images/SSWPartnerLogo.jpg" />
        <br />
        <br />
        </p>--%>

        <p>
            SSW <a href="/SSW/Standards/Rules/RulestoBetterProjectManagement.aspx">Rules to Better
                Project Management</a>, built on agile development methodologies, allows businesses
            to address their most important challenges first, and respond quickly to change.
            Our rules advocate software consultants working on-site, or on the phone, so long
            as there is close consultation with business users, with the goal to become integrated
            members of the clients' team.
        </p>
        <p>
            All SSW developers undergo training for Microsoft qualifications (Microsoft Certified Professional) and are also familiar with the conference circuit. We have very competitive Rates and flexible <a href="/ssw/Standards/Forms/ConsultingOrderTermsConditions.aspx">Terms and Conditions</a>.
        </p>
        <p>
            We have a proven track record of implementing technology solutions ranging from
            Architecture and Design Consulting to Database Development and Business Intelligence
            Solutions. SSW works alongside you to leverage the latest technological advances
            to reduce costs, improve processes, and take advantage of new business every step
            of the way.
        </p>
        <p>
            Based upon years of experience working closely with Microsoft, SSW software development
            services utilize the best available technologies to deliver functional, value-adding
            software - faster. <a href="/ssw/Consulting/Default.aspx">Building better Microsoft
                solutions</a>.
        </p>
    </div>
    <div class="section">
        <h2>
            <a name="TheSSWTeam"></a>The SSW Team</h2>
        <p style="text-align: center;">
            <img src="Images/sswPeople.png" alt="The SSW Team Photo" />
        </p>
        <p>
            SSW is made up of a great team of staff that is passionate about technology and
            how it meets business needs.
        </p>
        <p>Today SSW has offices in <a href="Offices/Sydney/">Sydney</a>, <a href="Offices/Melbourne/">Melbourne</a>, <a href="Offices/Brisbane/">Brisbane</a>, <a href="Offices/Newcastle/">Newcastle</a>, and <a href="https://ssw.com.cn/contactUS">Hangzhou - China</a>, with over 50 employees.</p>
        <p>
            Want to meet them? Have a look at our <a href="https://www.ssw.com.au/people/">employee profiles</a>.
        </p>
    </div>
    <div class="section">
        <h2>
            <a name="Why-we-are-awesome"></a>Why we think we're awesome</h2>
        <ul>
            <li>We have a <a href="https://www.ssw.com.au/ssw/Company/Culture/">mature and flexible culture</a></li>
            <li>We have a great initialization phase to ensure the project is a good fit, including a FREE initial meeting</li>
            <li>We apply strict <a href="https://rules.ssw.com.au/">standards</a>, so our devs work in a consistent manner</li>
            <li>We <a href="https://rules.ssw.com.au/rules-to-better-clean-architecture">code cleanly</a> using the 'less code is more' approach and use efficiency tools that allow our projects to have lower maintenance down the line</li>
            <li>We are passionate about <a href="https://www.ssw.com.au/ssw/Consulting/Scrum.aspx">Scrum</a> and combined with our <a href="https://rules.ssw.com.au/rules-to-successful-projects">Rules to Successful Projects</a>, our clients see efficiency, cost-effectiveness, and control</li>
            <li>We have a strong <a href="https://www.ssw.com.au/ssw/Consulting/DevOps.aspx">DevOps</a> Culture including CICD (Continuous Integration, Continuous Delivery)</li>
            <li>Our own award-winning products help us to achieve great results
                <ul>
                    <li><a href="/ssw/CodeAuditor/">SSW Code Auditor </a>for code quality</li>
                    <li><a href="/ssw/SqlAuditor/">SSW SQL Auditor </a>for SQL Server database design quality</li>
                    <li><a href="/ssw/LinkAuditor/">SSW Link Auditor </a>for web project quality</li>
                    <li>And <a href="/ssw/products/">more</a></li>
                </ul>
            </li>
            <li>We keep up-to-date with technical developments - we are an industry educator and our developers speak at <a href="/ssw/NETUG/">user groups</a>, <a href="/ssw/Events/Conference.aspx">developer conferences</a> and <a href="/ssw/Events/sswTechBreakfast.aspx">SSW Tech Breakfasts</a></li>
            <li>We give away our source code - we don't lock you into working with us</li>
            <li>We get on with Microsoft, but we're not purely Microsoft evangelists. We'll inform you about what's good and what's bad</li>
            <li>We frequently achieve success on projects with other major software companies, such as Praxa, Candle, Microsoft, and others</li>
            <li>We have a rigorous employment process which means we only get the smartest people who live and breathe technology</li>
            <li>We have an ongoing support system that continues even after the project is finished, meaning that we'll be right there with you to listen to your needs and ensure project stability from the beginning to the end.</li>
        </ul>
        <p>
            <a name="ContactUs"></a>If you require any further information, don't hesitate to <a href="/ssw/Company/ContactUs.aspx">Contact Us</a>.
        </p>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <ssw:AboutUs ID="AboutUs" runat="server" />
    <div class="section">
        <h4>SSW's Chief Architect is one of two Microsoft Regional Directors in Australia!</h4>
        <p>
            <br />
            <img src="/ssw/Company/Images/Microsoft-regional-director.png" alt="Microsoft Regional Director Program" width="150" height="53" />
        </p>
        <p>
            RDs are 120 partners in 50 countries. They speak many languages and have various
            areas of technical expertise. They are master presenters and consistently get the
            best scores when presenting to our customers. Regional directors are independent
            developers and architects, volunteers chosen for their leadership in their local
            technology circles, whose primary purpose is to share information about Microsoft
            technologies with their developer communities and to provide feedback from developers
            to Microsoft.
        </p>
        <p>
            Regional directors have gained developers' trust by providing an objective viewpoint.
            Regional Directors are not Microsoft employees, so they tend to be very open about
            our products, both good and bad.
        </p>
        <a href="http://www.msrd.io/"
            target="_blank">More about Microsoft Regional Director program</a>
        <p>
            <br />
            <img src="/SSW/Company/Images/Microsoft-MVP.png" alt="Adam is a Microsoft MVP" width="124"
                height="50" /><br />
            Adam is also a Microsoft Most Valued Professional (MVP) for Microsoft Visual Studio Azure DevOps (formerly ALM... Visual Studio Team System... TFS).
        </p>
    </div>

</asp:Content>
