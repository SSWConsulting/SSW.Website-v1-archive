<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/SubPage.master"
    Title="SSW Training & Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
<script runat="server">
  protected override void OnLoad(EventArgs e)
  {
      Response.Redirect("/SSW/training/ALMCustomization.aspx");
      base.OnLoad(e);
  }
</script>
</asp:Content>
