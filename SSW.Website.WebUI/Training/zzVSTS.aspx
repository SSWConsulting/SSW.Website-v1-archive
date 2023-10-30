<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Training &  | Visual Studio 2010 ALM" %>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <h1>Visual Studio 2010 ALM</h1>
    <h2>Overview</h2>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
<script runat="server">
  protected override void OnLoad(EventArgs e)
  {
      Response.Redirect("/SSW/training/ALM.aspx");
      base.OnLoad(e);
  }
</script>
</asp:Content>
