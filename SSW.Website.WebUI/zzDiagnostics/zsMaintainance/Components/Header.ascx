<%@ Control Language="C#" AutoEventWireup="false" Inherits="WebUI.Admin.Components.Header" Codebehind="Header.ascx.cs" %>
<%--<%@ Register Src="Menu.ascx" TagName="Menu" TagPrefix="uc1" %>
--%>

<div id="headerTitle" title="<% =Page.Title %>">
	<table width="100%">
	  <tr>
		<td>
		<h1><% =Page.Title %></h1></td>
		<td><img src="../Images/MicrosoftGoldCertifiedPartnerLogo.gif" width="310" height="75" align="right" alt="Microsoft Gold Certified Partner Logo" class="noPrint" /></td>
	  </tr>
	</table>
</div>
<%--<uc1:Menu ID="Menu1" runat="server" />
--%>