<%@ Control Language="C#" AutoEventWireup="false"
    Inherits="SSW.Website.WebUI.Components.FolderBrowser" Codebehind="FolderBrowser.ascx.cs" %>
<br>
<asp:ValidationSummary ID="errorSummary" runat="server" />

<p>
    <!--<a href="../browse.aspx"><img runat="server" alt="Go to one level up" src="~/Images/UpOneLevel.gif" border="0" width="23" height="22"></a>&nbsp;&nbsp;&nbsp;&nbsp;-->
    <a href="/ssw/">Home</a><asp:Literal ID="breadcrumbPath" runat="server"></asp:Literal>
</p>
<asp:CustomValidator ID="xmlRequestFailedValidator" runat="server" ErrorMessage="CustomValidator"></asp:CustomValidator>
<asp:GridView ID="gvFileList" runat="server" AutoGenerateColumns="false" BorderWidth="0">
    <Columns>        
        <asp:HyperLinkField DataNavigateUrlFields="RelativeURL" DataTextField="DisplayName"
            HeaderText="Name">
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" Width="300px" />
        </asp:HyperLinkField>        
        <asp:BoundField DataField="FileSize" HeaderText="Size" HeaderStyle-Width="200px">
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" Width="200px" />
        </asp:BoundField>
        <asp:BoundField DataField="LastModified" HeaderText="Date Modified">
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" Width="200px" />
        </asp:BoundField>
    </Columns>
</asp:GridView>
