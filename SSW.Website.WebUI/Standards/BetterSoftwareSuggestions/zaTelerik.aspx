<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Telerik Suggestions" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    
    <div class="TableOfContents">
        <h3>Telerik Suggestions Index</h3>
        <ol>
            <li><a href="TelerikASPWeb.aspx">Telerik ASP Web Suggestions</a></li>
            <li><a href="TelerikTests.aspx">Telerik Test Suite Suggestions</a></li>
            <li><a href="TelerikWindowsForms.aspx">Telerik Windows Forms Suggestions</a></li>
        </ol>
    </div>
   

</asp:Content>