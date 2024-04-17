<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="Your Registered Products" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <h1>Your Registered Products</h1>
</asp:Content>

<asp:Content ID="sidebar" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <div id="shop-container">
        <div id="contentPane">
            <ol>
                <li><a href="ClientRegisteredProductsByProduct.aspx">By Product</a> (recommended)</li>
                <li><a href="ClientRegisteredProductsByDate.aspx">By Date</a></li>
            </ol>
        </div>
    </div>
</asp:Content>
