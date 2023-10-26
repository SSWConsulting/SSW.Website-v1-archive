<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Inherits="SSW.Website.WebUI.Raven" Title="SSW Awards - Sydney's Premier Software Consultants" %>

<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
     --%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>SSW Awards and Recognitions</h1>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

<%--<p><asp:SiteMapPath ID="SiteMapPath2" runat="server" SiteMapProvider="SSWXmlSiteMapProvider"></asp:SiteMapPath></p>--%>

    <p>SSW is a multi-award winning Australian company. We have many Microsoft Certifications, several MVPs, and a Microsoft Regional Director. Here are some of our awards and recognitions.</p>
    <h2>Awards</h2>
    <div class="awards">
    <div class="row">
        <div class="award centered col-sm-12">
            <h3>Microsoft Australia Partner Award for <a href="https://firebootcamp.com/">FireBootCamp</a></h3>
            <img src="/ssw/company/images/awards/MAPA2015-Excellence-in-learning.jpg" />
        </div>
    </div>
    <div class="row">
        <div class="award centered col-sm-12">
            <h3>Telerik Partner Network for <a href="/SSW/Consulting/Case-Study/EventCinemas.aspx">Event Cinemas</a></h3>
            <img src="/ssw/company/images/awards/event-cinemas.png" />
        </div>
    </div>
    <h2>Recognitions</h2>
    <div class="row">
        <div class="award col-sm-4">
            <h3>Microsoft Regional Director</h3>
            <img src="/ssw/company/images/awards/mrd.png" />
        </div>
        <div class="award col-sm-4">
            <h3>MVP | 2010-2020</h3>
            <img src="/ssw/company/images/awards/mvp.png" />
        </div>
        <div class="award col-sm-4">
            <h3>Microsoft Cloud Partner Program  | 2023 </h3>
            <img src="/ssw/company/images/awards/Microsoft-Cloud-Partner.png" />
        </div>
        <div class="award col-sm-4">
            <h3>Microsoft Partner Network | 2013-2020 </h3>
            <img src="/ssw/company/images/awards/ms-partner.png" />
        </div>
        <div class="award col-sm-4">
            <h3>Telerik Partner Network | 2014-2020 </h3>
            <img src="/ssw/company/images/awards/telerik.png" />
        </div>
        <div class="award col-sm-4">
            <h3>Partner Program | 2009-2010 </h3>
            <img src="/ssw/company/images/awards/generic.png" />
        </div>
        <div class="award col-sm-4">
            <h3>Microsoft Certified Partner | 2001, 2002, 2004, 2006 </h3>
            <img src="/ssw/company/images/awards/ms-certified-partner.png" />
        </div>
        <div class="award col-sm-4">
            <h3>Microsoft Certified Solution Provider | 2000 </h3>
            <img src="/ssw/company/images/awards/ms-certified-solution-provider.png" />
        </div>
    </div>
    </div>
</asp:Content>