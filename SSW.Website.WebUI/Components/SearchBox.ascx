<%@ Control Language="C#" AutoEventWireup="false" Inherits="SSW.Website.WebUI.Components.SearchBox" Codebehind="SearchBox.ascx.cs" %>
<%@ Register Src="SearchPanel.ascx" TagName="SearchPanel" TagPrefix="ssw" %>

<asp:Repeater ID="externalSearchRepeater" runat="server">
    <ItemTemplate>        
        <ssw:SearchPanel ID="searchPanel" runat=Server />
    </ItemTemplate>
</asp:Repeater>
<div class="internalPanel">
    <asp:Repeater ID="internalSearchRepeater" runat="server">
        <ItemTemplate>
            <ssw:SearchPanel ID="searchPanel" runat=Server />
        </ItemTemplate>
    </asp:Repeater>
</div>