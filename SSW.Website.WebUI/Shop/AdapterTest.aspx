<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master"
    Title="A Big Aussie Welcome... Please Login" Inherits="SSW.Website.WebUI.Shop.AdapterTest"
    CodeBehind="AdapterTest.aspx.cs" %>

<%@ Register TagPrefix="uc1" TagName="CookiesDetection" Src="~/Components/CookiesDetection.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <h1>Adapter Test</h1>
</asp:Content>

<asp:Content ID="sidebar" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <%--span class = "button">
<asp:Button ID="Action" class = "button" runat="server" Text="Login" CausesValidation="true" vertical-align="middle" />
</span>

<br />
<asp:Button ID="Button1" class = "button" runat="server" Text="Login" CausesValidation="true" vertical-align="middle" />
<br />

<span class = "button">
<asp:Button ID="Button2" runat="server" Text="Login" CausesValidation="true" vertical-align="middle" />
</span>

<br />
<span class ="button">
<button id="button3" Text="Login" vertical-align="middle" /><span>Login</span>
</span>
<br />
<br />--%>
    <br />
    <asp:Button ID="Button2" runat="server" CssClass="button " Text="Login" CausesValidation="true" vertical-align="middle" />
</asp:Content>
