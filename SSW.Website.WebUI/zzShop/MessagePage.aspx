<%@ Page Language="C#" AutoEventWireup="false" ValidateRequest="false" MasterPageFile="~/Masters/RavenSubpage.master"
    Title="Information" Inherits="SSW.Website.WebUI.MessagePage" CodeBehind="MessagePage.aspx.cs" %>

<asp:Content ID="Title" ContentPlaceHolderID="title" runat="server">
    <h1><asp:Literal ID="lTitle" runat="server"></asp:Literal></h1>
</asp:Content>

<asp:Content ID="Side" ContentPlaceHolderID="sidebarcontainer" runat="server">
    <!--THIS IS EMPTY ON PURPOSE-->
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <asp:Label ID="lblWelcome" runat="server"></asp:Label> 
    <asp:PlaceHolder ID="PlaceHolderUserMessage" runat="server"></asp:PlaceHolder>
    <p>
        <asp:HyperLink ID="hypShopForMore" runat="server" NavigateUrl="/ssw/Products/">Shop for More</asp:HyperLink>
    </p>
</asp:Content>
