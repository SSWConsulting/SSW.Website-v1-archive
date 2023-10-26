<%@ Page Language="C#" AutoEventWireup="false"
    Title="Testimonials - What people say about us" MasterPageFile="~/Masters/RavenSubpage.Master" Inherits="SSW.Website.WebUI.Testimonials.ViewAll"
    CodeBehind="~/Testimonials/ViewAll.aspx.cs" %>

<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <h1>Testimonials</h1>
    <h2>We go the extra mile to turn our clients into fans</h2>
</asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="featureimage" runat="server">
    <img src="images/header_testimonial.png" height="200" width="799" alt="Testimonials - What people say about us" />
</asp:Content>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
<%--    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>--%>
    <p>
        Here's a list of some of our clients' testimonials. From small business solutions
        to large multinational companies, SSW has made happy clients all over the world
        and we are proud to share some of our experiences with you.</p>
        
    <asp:Repeater runat="server" ID="repTestimonials">
        <ItemTemplate>
            <div class="testimonials-wrap">
                <div class="testimonials-bg">
                    <div class="testimonials-content">
                        <%# DataBinder.Eval(Container.DataItem, "ContentLong").ToString().Replace(vbCrLf, "<br>") %>
                    </div>
                </div>
                <div class="testimonials-content-bottom">
                </div>
                <div class="testimonials-edit">
                   
                    <asp:HyperLink class="Maintenance" ID="lnkEdit" Text="Edit" NavigateUrl='<%# "/ssw/zsMaintenance/TestimonialModify.aspx?TestimonialID=" + Cstr(DataBinder.Eval(Container.DataItem, "QuoteID")) %>'
                        runat="server" Visible='<%# Environment.MachineName.ToUpper = ConfigurationSettings.AppSettings("MasterServer") %>' />
                    
                </div>
                <div class="testimonials-logo">
                    <asp:Image ID="imgLogo" runat="server" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "ImageName") %>'
                        Visible='<%# Not DataBinder.Eval(Container.DataItem, "ImageName") Is Nothing And Not DataBinder.Eval(Container.DataItem, "ImageName") = "" %>' />
                </div>
                <div class="testimonials-source">
                    <span class="testimonials-source-name">
                        <%# DataBinder.Eval(Container.DataItem, "Author") %></span> <span class="testimonials-source-link">
                            <asp:HyperLink NavigateUrl='<%# DataBinder.Eval(Container.DataItem, "CompanyUrl") %>'
                                Text='<%# DataBinder.Eval(Container.DataItem, "CompanyName") %>' ID="lnkCompany"
                                runat="server" Target="_blank" />
                            <asp:Image ID="Image1" ImageUrl="/ssw/Images/LeaveSite.gif" runat="server" Visible='<%# DataBinder.Eval(Container.DataItem, "CompanyUrl") <> "" %>' /></span>
                </div>
                <div class="clear">
                </div>
            </div>
        </ItemTemplate>
        <SeparatorTemplate>
        </SeparatorTemplate>
    </asp:Repeater>
</asp:Content>

