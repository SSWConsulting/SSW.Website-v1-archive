<%@ Page Language="C#" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="title" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

    <script runat="server">

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
            Response.Write(Server.UrlDecode(Request.ServerVariables("SCRIPT_NAME")))
        End Sub
</script>

</asp:content>