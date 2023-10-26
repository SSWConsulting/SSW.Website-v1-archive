<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="Great Intranets of the Modern Age with James Robertson" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>Great Intranets of the Modern Age</h1>
    <h2>With James Robertson</h2>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div id="oversizeMaincontent">
        <div class="section">
            <p>Intranets have been around for a long time now, but SharePoint has brought new functionality and capability into organisations that promises to transform these sites.</p>
            <p>But what direction should we be heading, and what makes a truly great intranet? This presentation, by the world’s leading intranet expert, will provide a practical and inspirational view of the role that intranets can (and should) play.</p>
            <p>Many real-world screenshots of intranets will be shared, focusing on SharePoint sites and solutions. These include winners from the global Intranet Innovation Awards.</p>
        </div>
        <div class="eric-video">
            <div class="video-player" data-id="0bi16wnjKB0" data-youkuid=""></div>
        </div>
        <%--<iframe width="682" height="387" src="//www.youtube.com/embed/0bi16wnjKB0" frameborder="0" allowfullscreen></iframe>--%>
        <div class="section">
            <h2>About the Speaker
            </h2>
            <p>James Robertson is one of the global experts on intranet strategy and design.</p>
            <p>He is the author of What every intranet team should know and Designing intranets: creating sites that work, the two best-selling intranet books in the world. He has also written over two hundred articles and a variety of best-practice resources, including the Intranet Roadmap.</p>
            <p>James is the founder and managing director of Step Two Designs, a vendor-neutral consultancy located in Australia. In this role, he has helped high-profile organisations to develop intranet strategies, both within Australia and internationally.</p>
            <p>James has keynoted conferences around the globe, including in the UK, USA, Denmark, the Netherlands, Sweden, Norway, Singapore, Malaysia, New Zealand and Australia. As a certified trainer, he regularly runs one and two-day practical workshops on intranet strategy and design, both within Australia and internationally.</p>
            <p>James is also a leading specialist on the topic of web content management. He is a founding member of the CM Professionals association, and has helped many organisations to select a suitable CMS.</p>
        </div>

    </div>
</asp:Content>
