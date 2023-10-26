<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="zsValidate.aspx.cs" Inherits="WebUI.Admin.zsValidate"MasterPageFile="~/Masters/RavenSubpage.master" Title="XML Generation"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
   <div class="pagecontent">
        <asp:FileUpload ID="XmlUpload" runat="server" />
        <br /><br />
        <asp:Button ID="btnCompare" Text="Compare" runat="server" />
        <br /><br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </div>
</asp:Content>
