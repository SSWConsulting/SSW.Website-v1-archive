<%@ Control Language="C#" AutoEventWireup="false" Inherits="SSW.Website.WebUI.Components.SearchPanel" Codebehind="SearchPanel.ascx.cs" %>
<fieldset class="searchPanel">
	<h2><asp:Label ID="titleLabel" runat="Server">[Search Panel Title]</asp:Label></h2>
	<asp:TextBox ID="searchValueTextBox" runat="Server" CssClass="inputText"></asp:TextBox>
	<asp:Button ID="goButton" CausesValidation="false" runat="Server" Text="[Go]" CssClass="inputSubmit" />
</fieldset>