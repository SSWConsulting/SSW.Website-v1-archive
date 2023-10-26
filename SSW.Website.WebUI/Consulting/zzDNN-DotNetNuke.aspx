<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="DNN - DotNetNuke (AKA Evoq) | SSW Consulting - Sydney, Brisbane, Melbourne" %>

<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta property="og:image" content="http://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-DNN-og.jpg" />
    <meta property="og:image:secure_url" content="https://www.ssw.com.au/ssw/Consulting/Images/open-graph/SSW-Consulting-DNN-og.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:alt" content="DNN Consulting - Enterprise Software Development" />
    <meta property="og:title" name="title" content="DNN Consulting - Enterprise Software Development">
    <meta property="og:description" content="DNN (formerly DotNetNuke and also known as Evoq) is the leading Web Content Management Platform for Microsoft .NET. DNN can be used as a web content management system (CMS) for simple web sites or as a powerful application development framework which enables businesses to quickly build and deploy feature-rich, interactive web sites and applications in Microsoft .NET." />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="images/thumbs/thumb-dnn.jpg" alt="DotNetNuke" />
    <h1>DNN - DotNetNuke (AKA Evoq)</h1>
    <h2>Content Management Systems (CMS)</h2>
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="featureimage" runat="server">
    <img src="images/header_DNN-dotnetnuke2.jpg" height="200" width="799" alt="DotNetNuke - Understand your company. Build your future." />
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>DNN:</h2>
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
        DNN (formerly DotNetNuke and also known as Evoq) is the leading Web Content Management Platform for Microsoft .NET. DNN can be used as a web content management system (CMS) for simple web sites or as a powerful application development framework which enables businesses to quickly build and deploy feature-rich, interactive web sites and applications in Microsoft .NET.
    </div>
    <div class="section">
        <h2>
            <a name="dnnbenefits"></a>Benefits</h2>
        <ul class="benefits">
            <li>Anyone in your company can edit content anywhere anytime</li>
            <li>Used by 250,000+ organizations worldwide</li>
            <li>Easy to Deploy & Customize</li>
            <li>Built on ASP.NET and SQL Server</li>
            <li>Large number of 3rd party modules </li>
        </ul>
        <p>
            <a href="/ssw/hosting/">Need DotNetNuke hosting in Australia?</a>
        </p>
    </div>
    <div class="section">
        <h2>
            <a name="keytechnologies"></a>Key Technologies</h2>
        <h3 class="accordionHeader">DNN</h3>
        <p>
            <img src="/ssw/Company/Images/dnnlogo.gif" height="61" width="200" align="right" />
            DNN is an open source ASP.NET-based content management
            system used to create easy-to-use, updatable, customizable, and secure content management
            portals. It is ideal for creating and deploying projects such as commercial websites,
            corporate intranets and extranets, online publishing portals, and custom vertical
            applications. DotNetNuke provides automated content management capabilities and
            tools to maintain a dynamic and 100% interactive data-driven web site.
        </p>
        <p>
            This collaborative project is quickly becoming the industry standard for scalable
            portal deployments on the Microsoft platform, with a growing community of over 200,000
            users and a dedicated base of programming professionals. SSW is proud to have developed some of the most beautiful DotNetNuke sites in Australia.
        </p>
        <dl class="image">
            <dt>
                <img src="images/emove.jpg" alt="" /></dt>
            <dd>Figure: eMove - DNN content management system site developed by SSW Sydney</dd>
        </dl>
    </div>
    
    <div class="section">
        <h3>Related services</h3>
        <ul>
            <li><a href="angular.aspx">Angular</a></li>
            <li><a href="wordpress.aspx">WordPress</a></li>
        </ul>
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
