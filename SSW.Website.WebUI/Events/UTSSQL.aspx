<%@ Page Language="c#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs"
    MasterPageFile="~/Masters/SubPage.master" Title="Adelaide Dot Net Users Group" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>



<asp:Content ID="Content2" ContentPlaceHolderID="featureimage" runat="server">
<script runat="server">
  protected override void OnLoad(EventArgs e)
  {
      Response.Redirect("/SSW/events/2010UTSSQL/Default.aspx");
      base.OnLoad(e);
  }
</script>
</asp:Content>