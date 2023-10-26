<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Strategic Architecture | SSW Consulting - Sydney, Brisbane, Melbourne" %>

<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img src="images/thumbs/thumb-strategicarchitecture.jpg" alt="Strategic Architecture" class="icon" />
    <h1>Strategic Architecture</h1>
    <h2>Our deep experience working for your organization</h2>
</asp:Content>

<%--<asp:Content ID="Content2" ContentPlaceHolderID="featureimage" runat="server">
    <img src="images/header_WordPress.jpg" height="200" width="799" alt="WordPress - Understand your company. Build your future." />
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>Strategic Architecture:</h2>
    <ul>
        <li><a href="#overview">Overview</a></li>
        <li><a href="#benefits">Benefits</a></li>
        <li><a href="#getstarted">How to get started</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div class="section">
        <p>The pace of change for IT departments is continuing to accelerate, with new demands and new technology choices confronting the CIO every day. From cloud to compliance, and from data to disruption, making strategic IT decisions and crafting a strategic IT roadmap is a difficult task.</p>
        
        <h2><a name="overview"></a>Overview</h2>
        <p>SSW appreciates that strategic architecture is not about implementing the latest technology trend, but rather gaining understanding of the key demands that other business units are placing on IT, and defining a prioritized roadmap to address these key demands.  By working with the CIO, SSW can use the deep and wide experience of our consultants to help craft the direction for IT investments over the medium and longer timeframes to maximize return on investment and achieve key stakeholder buy-in.</p>
    </div>
    <div class="section">
        <h2>
            <a name="benefits"></a>Benefits</h2>
        <ul class="benefits">
            <li>Augment the capacity of the CIO and senior IT leadership team to focus on key priorities and uncover key issues across the full span of an organization</li>
            <li>Capture common themes and issues across an organization that can then be mapped to key technology outcomes</li>
            <li>Facilitate and moderate communication between key stakeholders on the priority of IT transformation projects and investments</li>
            <li>Provide clear and precise recommendations</li>
            <li>Structure all recommendations based on fast and incremental delivery to enable the rapid delivery of business value</li>
        </ul>

        <h3>SSW Experience</h3>
        <p>The software architecture consultants at SSW have decades of experience in the design and implementation of systems at the largest scale. With client organizations spanning from 5 to 50,000 employees, and the design and operation of some of the country’s largest websites and mobile applications, SSW has the real world experience to deliver solutions that will maximize return on investment in IT. We can provide the know-how to transform IT from a cost center to a strategic enabler that is primed to move your business forward.</p>

    </div>

    <text:Location runat="server" />

</asp:Content>