<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master"
    Title="CCV Number" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <h1>Three-Digit Card Verification Number</h1>
</asp:Content>

<asp:Content ID="sidebar" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
<div id="contentPane">
    <p>
            For your safety and security, SSW requires that you enter your card's verification number.  The verification number is a three-digit number printed on the back of your card.  It appears after and to the right of your card number.<br>
            <br>
            <br>
            <br>
            <div align="center">
                <img src="/ssw/images/cv_card.gif" border="0" alt="" width="259" height="181" /></div>
	</p>
</div>
</asp:Content>
