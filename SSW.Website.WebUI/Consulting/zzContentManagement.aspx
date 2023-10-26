<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="CMS (Content Management Systems) | SSW Consulting - Sydney, Brisbane, Melbourne" %>
<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>CMS - Content Management Systems</h1>
    <h2>Content publishing made easy.</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>CMS:</h2>
    <ul>
        <li><a href="#overview">Overview</a></li>
        <li><a href="SharePoint.aspx">SharePoint</a></li>
        <li><a href="Kentico.aspx">Kentico</a></li>
        <li><a href="Sitecore.aspx">Sitecore</a></li>
        <li><a href="Sitefinity.aspx">Sitefinity</a></li>
        <li><a href="Jamstack.aspx">Jamstack</a></li>
        <li><a href="DNN-DotNetNuke.aspx">DotNetNuke</a></li>
        <li><a href="Umbraco.aspx">Umbraco</a></li>
        <li><a href="Orchard.aspx">Orchard</a></li>
        <li><a href="WordPress.aspx">Wordpress</a></li>
        <li><a href="#getstarted">How to get started</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <h2><a name="overview"></a>Overview</h2>
        <p>
            Content Management Systems allow for anyone in your organization to publish
            content painlessly. Whether for your public website, press releases, or internal
            business portals, content can be drafted as easily as writing an email. Enterprise
            capabilities such as version control, and workflow, mean the right content gets
            delivered at the right time, in keeping with company policies.
        </p>
        <p>Learn more on <a href="https://www.ssw.com.au/rules/do-you-know-the-best-cms-solutions-for-websites/">Do you know the best CMS solutions for websites?</a></p>
        <p>
            SSW recommends these Content Management Systems (frameworks):
        </p>
        <ul>
            <li><strong>Enterprise:</strong> <a href="SharePoint.aspx">SharePoint</a>, <a href="Kentico.aspx">Kentico</a>, <a href="Sitecore.aspx">Sitecore</a></li>
            <li><strong>Medium Business:</strong> <a href="Sitefinity.aspx">Sitefinity</a>, <a href="Jamstack.aspx">Jamstack</a></li>
            <li><strong>Small Business:</strong> <a href="DNN-DotNetNuke.aspx">DotNetNuke</a>, <a href="Umbraco.aspx">Umbraco</a>, <a href="Orchard.aspx">Orchard</a>, <a href="WordPress.aspx">Wordpress</a><br />
                The Small Business options are rarely chosen these days unless the requirements are very light.</li>
        </ul>
    </div>
    <text:Location runat="server" />

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebarcontainer" runat="server">

    <div class="section">
        <h3>How to get started</h3>
            <p>SSW will look at your Content Management needs and help you design and implement a robust Content Management platform.</p>
            <img class="phone" src="images/phone.png" alt="phone icon"> 
            <p><strong>Call us on +61 2 9953 3000 to get started!</strong></p>
    </div>

</asp:Content>
