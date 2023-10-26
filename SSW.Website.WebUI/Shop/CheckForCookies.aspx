<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Inherits="SSW.Website.WebUI.Shop.CheckForCookies" CodeBehind="~/Shop/CheckForCookies.aspx.cs" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <h1>Check if Cookies is enabled in your Internet Explorer</h1>
</asp:Content>

<asp:Content ID="sidebar" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <div id="shop-container">
        <div id="contentPane">
            <script language="JavaScript" src="/ssw/Include/Validation.js" type="text/javascript"></script>
            <script language="JavaScript" src="/ssw/Include/Printing.js" type="text/javascript"></script>

            <asp:Panel ID="panNoCookies" runat="server">
                <p align="center">
                    <asp:Label ID="lblTitle" runat="server" Font-Bold="True">Cookies Not Enabled</asp:Label><br>
                    <asp:Label ID="Label1" runat="server" Width="620px" Height="60px">You need to have Cookies enabled to create an customers account for SSW Website. Cookies are required and should be enabled before you continue</asp:Label><br>
                    <asp:HyperLink ID="hypHowToEnableCookies" runat="server" NavigateUrl="EnablingCookies.aspx">How to Enable Cookies</asp:HyperLink>
                </p>
                <p>&nbsp;</p>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
