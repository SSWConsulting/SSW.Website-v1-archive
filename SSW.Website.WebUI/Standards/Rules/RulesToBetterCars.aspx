<%@ Page Language="C#" AutoEventWireup="false" Title="Rules to Better Cars" %>

<script runat="server">
  protected override void OnLoad(EventArgs e)
  {      
      Response.StatusCode = 301;
      Response.AddHeader("Location", "/ssw/Standards/Rules/RulesToBeingSoftwareConsultantsWorkingInATeam.aspx#CarUSB");
  }
</script>