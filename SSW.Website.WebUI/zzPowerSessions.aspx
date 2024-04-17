<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/SubPage.master"
    Title="SSW Power Sessions" %>

<asp:Content ID="Content4" ContentPlaceHolderID="title" runat="server">
<script runat="server">
    protected override void OnLoad(EventArgs e)
    {
        Response.StatusCode = 301;
        Response.AddHeader("Location", "/ssw/Events/Training/Power-Sessions.aspx");
    }
</script>
</asp:Content>

