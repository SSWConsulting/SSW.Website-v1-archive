<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Microsoft Access Database Development | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content6" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="images/thumbs/thumb-access.jpg" alt="Database Dev" />
    <h1>Microsoft Access Database Development</h1>
    <h2>Keep your data Available and Secure</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>Access Database Development:</h2>
    <ul>
        <li><a href="#overview">Overview</a></li>
        <li><a href="#benefits">Benefits</a></li>
        <li><a href="#technologies">Technologies</a></li>
        <li><a href="#getstarted">How to get started</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div class="section">
        <h2><a name="overview"></a>Overview</h2>
        <p>
            SSW's core area of competency is developing custom database applications, both using
            MS Access and <a href="/ssw/Consulting/DatabaseDevelopment.aspx">SQL Server</a>. Our consultants have implemented hundreds of projects
            using these technologies, and can help your organization with any level of project
            involvement. We are frequently requested to design large enterprise architectures,
            solve performance problems and implement entire systems.
        </p>
    </div>
    <div class="section">
        <h2>
            <a name="benefits"></a>Benefits</h2>
        <ul class="benefits">
            <li>Your Database architecture & development complies with Industry Best Practices.</li>
            <li>Strong in-house team of experts ensures any problems are solved quickly.</li>
            <li>We recommend the best technologies for the best return on investment.</li>
        </ul>
    </div>
    <div class="section">
        <h2>
            <a name="technologies"></a>Technologies</h2>
                   <h3>Microsoft Access</h3>
                        <p>Access is Microsoft's entry level database platform. It allows for rapid development of simple applications where there are a limited number of simultaneous users, and
                            small database size. SSW founded the Sydney Microsoft Access User Group in 1992, and since then has been the leading Access development firm in Australia.
                        </p>
                        <p>
                            SSW consultants are often called in to:</p>
                        <ul>
                            <li>Rapidly develop database applications. </li>
                            <li>Migrate/upsize your Microsoft Access backend database to SQL Server.<br />
                            <p style="padding-left: 20px"><small> MS Access performance
                                & data integrity is known to suffer dramatically as the database backend increases
                                in size, and more than 6 users simultaneously use it. SSW has developed the two leading
                                 industry tools that developers use to make the upsizing process easier (being <a href="/SSW/upsizingpro/default.aspx">SSW Upsizing PRO!</a> and <a href="/ssw/PerformancePro/Default.aspx">SSW Performance PRO!</a>)</small></p> </li>
                        </ul>
                        <p>
                            SSW Developers are well versed in Best Practices for Access development.
                            This ensures a higher level of quality in our solutions. Take a look at:</p>
                        <ul>
                            <li><a href="/ssw/Standards/Rules/RulestoBetterAccessApplications.aspx">Rules to Better
                                Access Applications (front-ends inc. queries)</a></li>
                            <li><a href="/ssw/Standards/Rules/RulesToBetterAccessUI.aspx">Rules to Better Access
                                UI</a></li>
                            <li><a href="/ssw/Standards/Rules/RulesToBetterAccessDatabases.aspx">Rules to Better
                                Access Databases (back-ends)</a></li>
                            <li><a href="/ssw/Standards/Rules/RulesToUpsizingAccess.aspx">Rules to Upsizing your
                                Access Database to SQL Server</a></li>
                        </ul>
                   
    </div>
    <text:Location runat="server" />
    <%--    <div class="section">
        <h2>
            <a name="getstarted"></a>How to get started</h2>
        <p>
            SSW will look at your Database Development needs and help you design and implement
            a robust Database System. Call us on <strong>+61 2 9953 3000</strong> to get started!
        </p>
    </div>--%>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="rounded">
        <h3>Case Studies</h3>
    </div>
    <div class="section">
        <h4>
            Westbus</h4>
        <p>
            <img src="/ssw/company/images/thumb_westbus.gif" alt="Logo of Westbus" align="right" vspace="10" hspace="10" />
            SSW developed a sophisticated OLAP reporting system for Sydney's largest privately
            owned bus company. This included using Data Transformation Services to interface
            with their existing Paradox database platform and Great Plains accounting system.
        </p>
    </div>
    <div class="section">
        <h3>
            Our Development Methodology</h3>
        <p>
            SSW's Rules to Better Project Management, built on eXtreme Programming, allows businesses to
            address their most important challenges first, and respond quickly to a changing
            commercial environment. We prefer to work on-site, in close consultation with you
            and your business users, becoming an integrated part of your team.</p>
        <p>
            <a href="/ssw/Standards/Rules/RulestoBetterProjectManagement.aspx">Learn more about SSW Project Management standards</a></p>
    </div>
<br />
</asp:Content>
