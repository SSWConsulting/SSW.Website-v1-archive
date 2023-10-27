<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/SubPage.master"
    Title="Testimonials - What people say about us" Inherits="SSW.Website.WebUI.Testimonials.ViewAll"
    CodeBehind="~/Testimonials/ViewAll.aspx.cs" %>

<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
<script runat="server">
  protected override void OnLoad(EventArgs e)
  {
      Response.Redirect("default.aspx");
      base.OnLoad(e);
  }
</script>
</asp:Content>
