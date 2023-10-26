<%@ Control Language="C#" AutoEventWireup="false" Inherits="SSW.Website.WebUI.Components.incStars" Codebehind="incStars.ascx.cs" %>
<h2>Awards and Ratings</h2>
<p>
	Our SSW Products are also listed on Shareware web sites. Some of these sites 
	review and/or rate our products. Here's how our products rated on other third 
	party sites.
</p>
	<asp:Panel id="pnlTucows" Visible="False" runat="server">
		<IMG src="../Images/Awards/Tucows40X80.gif" alt="Tuscows review for this product" border="0">
		<asp:Image id="imgTucows" runat="server" alt="Tucows review"></asp:Image>
		<BR>
		<BR>
	</asp:Panel>
	<asp:Panel id="pnlSofoTex" Visible="False" runat="server">
		<IMG src="../Images/Awards/SofoTex4Stars40X80.gif" alt="SofoTex awards rates this product" border="0">
		<asp:Image id="imgSofoTex" alt="Sofotex review" runat="server"></asp:Image>
		<BR>
		<BR>
	</asp:Panel>
	<asp:Panel id="pnlFileTransit" Visible="False" runat="server">
		<IMG src="../Images/Awards/FileTransit40X80.gif" alt="File Transit review for the product" border="0">
		<asp:Image id="imgFileTransit" alt="File Transit" runat="server"></asp:Image>
		<BR>
		<BR>
	</asp:Panel>
	<asp:Panel id="pnlFileHungry" Visible="False" runat="server">
		<IMG src="../Images/Awards/FileHungry40x80.gif" alt="File Hungry review for the product" border="0">
		<asp:Image id="imgFileHungry" alt="File Hungry" runat="server"></asp:Image>
		<BR>
		<BR>
	</asp:Panel>
	<asp:Panel id="pnlSharewareRiver" Visible="False" runat="server">
		<IMG src="../Images/Awards/SharewareRiverlinkbutton.gif" alt="Shareware River review for the product" border="0">
		<asp:Image id="imgSharewareRiver" alt="Shareware River review" runat="server"></asp:Image>
		<BR>
		<BR>
	</asp:Panel>

