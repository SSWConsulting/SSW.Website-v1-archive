<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Umbraco | SSW Consulting - Sydney, Brisbane, Melbourne" %>

<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img src="images/thumbs/thumb-umbraco.jpg" alt="Umbraco" class="icon" />
    <h1>Umbraco</h1>
    <h2>Content Management Systems (CMS)</h2>
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="featureimage" runat="server">
    <img src="images/header_Umbraco.jpg" height="200" width="799" alt="Umbraco - Understand your company. Build your future." />
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>Umbraco:</h2>
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
        <p>With over than 200.000 installations, Umbraco is one of the most deployed Web Content Management Systems on the Microsoft stack. It's in the top five most popular server applications and among the ten most popular open source tools in general.</p>
    </div>
    <div class="section">
        <h2>
            <a name="benefits"></a>Benefits</h2>
        <ul class="benefits">
            <li><strong>Easy to learn and use</strong> - editors have as little or as much freedom as they need. And if you don't like the changes made? Simply rollback to a previous version
                <dl class="image">
                    <dt>
                        <img src="Images/umbraco-screenshot.png" alt="Umbraco screenshot" /></dt>
                    <dd>Figure: Umbraco interface is beautiful and easy to use so you can focus on getting your message out to your peers, not how the technology works</dd>
                </dl>
            </li>
            <li><strong>Compatible with Microsoft Word / Windows LiveWriter</strong> - you can write or edit your blog or news pages without even opening the browser</li>
            <li><strong>Custom Design</strong> - 100% control over templating and output, with no limitations to the design</li>
            <li><strong>Support for all</strong> - strongly supported by both an active and welcoming community of users around the world, and backed up by a rock-solid commercial organization providing professional support and tools</li>
        </ul>
        <p><a href="/ssw/hosting/">Need Umbraco hosting in Australia?</a></p>
    </div>
    <div class="section">
        <h2>
            <a name="keytechnologies"></a>Key Technologies</h2>
        <ul class="benefits">
            <li><strong>Multilingual websites out of the box</strong> - you can also build in your chosen language with multilingual back office tools.</li>
            <li><strong>Integrate .NET Controls</strong> - you can use .NET Custom Controls and User Controls without having to jump through hoops</li>
            <li><strong>Easy to use API's</strong> - the Umbraco API gives you programmatic access to everything in the Umbraco CMS, plus the API is easy to use from Visual Studio or any other development tool</li>
            <li><strong>Flash? Silverlight? No problem</strong> - Umbraco delivers content such as xml, which makes it a perfect match for delivering dynamic content to Flash, Silverlight, and other tools without altering your markup.</li>
        </ul>
    </div>
    <text:Location runat="server" />
    <%--    <div class="section">
        <h2>
            <a name="getstarted"></a>How to get started</h2>
        <p>
            To find out if a Umbraco based solution is right for your business, give us a call on <strong>+61 2 9953 3000</strong> to get started!
        </p>
    </div>--%>
</asp:Content>