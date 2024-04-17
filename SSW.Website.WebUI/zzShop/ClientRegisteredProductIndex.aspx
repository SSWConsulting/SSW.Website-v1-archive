<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="Your Registered Products" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <h1>Your Registered Products</h1>
</asp:Content>

<asp:Content ID="sidebar" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <div id="contentPane">
        <ol>
            <li><a href="ClientRegisteredProductsByDate.aspx">By Date</a></li>
            <li><a href="ClientRegisteredProducts.aspx">By Product</a></li>
        </ol>
    </div>
</asp:Content>

