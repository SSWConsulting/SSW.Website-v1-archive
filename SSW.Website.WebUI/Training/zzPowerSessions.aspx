<%@ Page Language="c#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubPage.master" Title="Power Sessions" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content ID="Content4" ContentPlaceHolderID="title" runat="server">
<script runat="server">
  protected override void OnLoad(EventArgs e)
  {      
      Response.StatusCode = 301;
      Response.AddHeader("Location", "/ssw/Events/Training/Power-Sessions.aspx");
  }
</script>
</asp:Content>
