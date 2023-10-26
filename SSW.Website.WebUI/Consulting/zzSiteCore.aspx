<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Sitecore | SSW Consulting - Sydney, Brisbane, Melbourne" %>

<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img src="images/thumbs/thumb-sitecore.jpg" alt="Sitecore" class="icon" />
    <h1>Sitecore</h1>
    <h2>Content Management Systems (CMS)</h2>
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="featureimage" runat="server">
    <img src="images/header_Sitecore.jpg" height="200" width="799" alt="Sitecore - Compelling Web Experiences." />
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>Sitecore:</h2>
    <ul>
        <li><a href="#overview">Overview</a></li>
        <li><a href="#dnnbenefits">Benefits</a></li>
        <li><a href="#keytechnologies">Key Technologies</a></li>
        <li><a href="#getstarted">How to get started</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<%--    <p>
        <asp:SiteMapPath ID="SiteMapPath2" runat="server" SiteMapProvider="SSWXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>--%>
    <div class="section">
        <h2><a name="overview"></a>Overview</h2>
            <blockquote>
                    We really like the configuration possibilities for the end user by combining the
                    strengths of Sitecore and other technologies, such as Fredhopper. This gives our
                    customers a compelling, interactive experience, and as a result, our sales have
                    increased.
                <span>Wim Vermaesen, Thomas Cook</span>
            </blockquote>
        <p>
            Sitecore's mix of powerful marketing and business features, rich development support
            and scalability make it the ideal solution for leading websites. From entry level
            to the large organizations, creating and providing your visitors a compelling web
            experience has never been as easy or as exciting. Sitecore is being used by dozens
            of the world's largest organizations, managing sites that serve and delight millions
            of users.</p>
        <p>
            To keep pace and excel in today's marketplace, websites have to provide more than
            mere content - they need to deliver compelling web experiences.</p>
    </div>
    <div class="section">
        <h2>
            <a name="dnnbenefits"></a>Benefits</h2>
        <ul class="benefits">
            <li>SEO functionality</li>
            <li>Web forms for marketers</li>
            <li>Web Calendaring</li>
            <li>Web forums</li>
            <li>Powerful Search</li>
        </ul>
        <p>
            <a href="/ssw/hosting/">Need DotNetNuke hosting in Australia?</a></p>
    </div>
    <div class="section">
        <h2>
            <a name="keytechnologies"></a>Key Technologies</h2>
        <h3 class="accordionHeader">
            Sitecore</h3>
        <p><img src="/ssw/Consulting/Images/sitecore-logo.jpg" height="61" width="200" class="right"/>
            Sitecore's authoring interface represents a breakthrough in usability and design,
            and offers unrivaled ease of use. Our In-Line editing lets editors simply click
            on parts of the website to edit, without complications. No matter what skill level
            your content editors have, they'll be easily managing their Sitecore website in
            minutes.
            <dl class="image">
                <dt>
                    <img src="images/Sitecore-Inline.jpg" width="400px" /></dt>
                <dd>
                    Figure: Sitecore allows inline editing</dd>
            </dl>
        </p>
        <p>
            Sitecore’s Page Editor technology provides a role-based interface that delivers
            exactly the right amount of capability to a user based on their needs.</p>
        <p>
            For the casual user, the page editor presents a streamlined interface that allows
            them to navigate their site naturally, and simply type within the pages to make
            editorial changes. The more sophisticated user can be given a more active role in
            managing the site, including workflow control, metadata management, page design
            capabilities as well as publishing rights. By segmenting these users into different
            roles, the CMS automatically tailors the user interface to present the right amount
            of capabilities to the right user.</p>
    </div>
    <text:Location runat="server" />
    <%--    <div class="section">
        <h2>
            <a name="getstarted"></a>How to get started</h2>
        <p>
            To find out if a DotNetNuke based solution is right for your business, give us a call on <strong>+61 2 9953 3000</strong> to get started!
        </p>
    </div>--%>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="section">
        <h3>Our Methodology</h3>
        <p>SSW's Rules to Better Project Management allows businesses to address their most important challenges first, and respond quickly to change. Our rules advocate software consultants working on-site, or on the phone, so long as there is close consultation with business users, with the goal to become integrated members of the client's team.</p>
        <p><a href="http://rules.ssw.com.au/management/rulestosuccessfulprojects/pages/default.aspx">Learn more about SSW development Methodology</a></p>
    </div>
    <div class="section">
        <h3>Our experience</h3>
        <p>For 20 years we have been servicing: Sydney NSW, Melbourne VIC, Brisbane QLD, Canberra ACT and Adelaide SA.</p>
    </div>
    <div class="section">
        <h3>How to get started</h3>
            <p>SSW will look at your Website Design and Development needs and help you design and implement an effective website using Sitecore.</p>
            <img class="phone" src="images/phone.png" alt="phone icon" /> 
            <p><strong>Call us on +61 2 9953 3000 to get started!</strong></p>
    </div>
</asp:Content>
