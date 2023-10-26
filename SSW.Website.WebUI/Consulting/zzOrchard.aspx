<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Orchard CMS | SSW Consulting - Sydney, Brisbane, Melbourne" %>

<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img src="images/thumbs/thumb-orchard.jpg" alt="Orchard" class="icon" />
    <h1>Orchard</h1>
    <h2>Content Management Systems (CMS)</h2>
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="featureimage" runat="server">
    <img src="images/header_Orchard.jpg" height="200" width="799" alt="Orchard - Understand your company. Build your future." />
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>Orchard:</h2>
    <ul>
        <li><a href="#overview">Overview</a></li>
        <li><a href="#benefits">Benefits</a></li>
        <li><a href="#keytechnologies">Key Technologies</a></li>
        <li><a href="#getstarted">How to get started</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div class="section">
        <h2>
            <a name="overview"></a>Overview</h2>
        <p>Orchard is a free, open source, community-focused project aimed at delivering applications and reusable components on the rock-solid ASP.NET MVC platform. In our opinion it is the best architected CMS framework around and is built on top of the ASP.NET MVC framework.</p>
    </div>
    <div class="section">
        <h2>
            <a name="benefits"></a>Benefits</h2>
        <ul class="benefits">
            <li>Individual .NET-based applications that appeal to end-users, designers, developers, and Web professionals</li>
            <li>A set of re-usable components that makes it easy to build such applications</li>
            <li>A vibrant community to help define these applications and extensions</li>
        </ul>
        <p><a href="/ssw/hosting/">Need Orchard hosting in Australia?</a></p>
    </div>
    <div class="section">
        <h2>
            <a name="keytechnologies"></a>Key Technologies</h2>
        <h3 class="accordionHeader">Orchard</h3>
        <p>Orchard is currently available as a V1 release. The project includes an extensibility model for modules and themes, a dynamic content type system, ease of customization, and more. The 1.2 release is currently available, and is easy to set-up on your local machine using the Web Platform Installer.</p>
        <dl class="image">
            <dt>
                <img src="images/orchard-best-feature.jpg" alt="The best feature of Orchard is just how easy it is to edit your content directly" /></dt>
            <dd>Figure: The best feature of Orchard is just how easy it is to edit your content directly</dd>
        </dl>
        <dl class="image">
            <dt>
                <img src="images/orchard-fully-customizable.jpg" alt="Orchard is fully customizable from the very simple to the very complex" /></dt>
            <dd>Figure: Orchard is fully customizable from the very simple to the very complex</dd>
        </dl>
    </div>
    <text:Location runat="server" />
    <%--    <div class="section">
        <h2>
            <a name="getstarted"></a>How to get started</h2>
        <p>
            To find out if a Orchard based solution is right for your business, give us a call on <strong>+61 2 9953 3000</strong> to get started!
        </p>
    </div>--%>
</asp:Content>