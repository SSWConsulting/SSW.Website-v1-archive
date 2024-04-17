<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" CodeBehind="ClientDownloadHistory.aspx.cs" Inherits=".ClientDownloadHistory" Title="My Download History" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <h1>My Download History</h1>
</asp:Content>

<asp:Content ID="sidebar" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <div id="shop-container">
        <div id="contentPane">
            <asp:DataGrid ID="dgDownloadHistory" runat="server" ItemStyle-Font-Size="7" ItemStyle-Font-Names="verdana" class="clsSSWTable"
                ItemStyle-Font-Bold="False" HeaderStyle-Font-Names="verdana" HeaderStyle-BackColor="#c0c0c0"
                HeaderStyle-Font-Bold="True" HeaderStyle-Font-Size="7" AutoGenerateColumns="False">
                <ItemStyle Font-Size="7pt" Font-Names="verdana"></ItemStyle>
                <HeaderStyle Font-Size="7pt" Font-Names="verdana" Font-Bold="True" BackColor="Silver"></HeaderStyle>
                <Columns>
                    <asp:BoundColumn DataField="DateCreated" HeaderText="Date"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ProdName" HeaderText="Product Name"></asp:BoundColumn>
                    <asp:BoundColumn DataField="DownloadVersionNo" HeaderText="Version"></asp:BoundColumn>
                </Columns>
            </asp:DataGrid>
        </div>
    </div>
</asp:Content>
