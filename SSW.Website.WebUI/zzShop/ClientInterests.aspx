<%@ Page Language="C#" Inherits="SSW.Website.WebUI.Shop.ClientInterests" MasterPageFile="~/Masters/RavenSubpage.master"
    CodeBehind="~/Shop/ClientInterests.aspx.cs" Title="Your Areas of Interest" %>

<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <h1>Your Interests</h1>
    <h2>Hello <asp:Label ID="lblUserName" CssClass="red" runat="server"></asp:Label>, select all your areas of interest</h2>
</asp:Content>

<asp:Content ID="sidebar" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <div id="shop-container">
        <div id="contentPane">
            <div id="title">
                
            </div>
            <div class="block">
                <div class="sectiontop">
                    <div class="section">
                        <div align="center">
                            <asp:PlaceHolder ID="PlaceHolderUserMessage" runat="server"></asp:PlaceHolder>
                        </div>
                        <asp:Panel ID="pnlDetails" runat="server">
                            <div class="sectiontext" id="client-interests">
                                <asp:DataList ID="dlsProducts" runat="server" CssClass="SSWTableShop">
                                    <ItemTemplate>
                                        <h3>
                                            <asp:Label ID="GroupName" runat="server" Text='<%# Container.DataItem %>' /></h3>
                                        <asp:CheckBoxList ID="CheckBoxListProduct" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CheckBoxListProduct_OnSelectedIndexChanged">
                                        </asp:CheckBoxList>
                                        <asp:Label ID="LabelNote" CssClass="note" runat="server" Text="" Visible="False"></asp:Label>
                                    </ItemTemplate>
                                </asp:DataList>

                            </div>
                        </asp:Panel>
                    </div>
                </div>
                <div class="sectionend clear">
                </div>
                <div>
                    <asp:Button runat="server" OnClick="SubmitBtn_Click" Text="Save" CssClass="green next"></asp:Button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
