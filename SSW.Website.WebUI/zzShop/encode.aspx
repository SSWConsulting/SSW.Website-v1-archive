<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="Encoding..." %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <h1>Encoding...</h1>
</asp:Content>

<asp:Content ID="sidebar" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <div id="contentPane">
        <script runat="server">

            Function EncodeEmailAddress(ByVal email As String) As String
                Return BitConverter.ToString(ASCIIEncoding.ASCII.GetBytes(email)).Replace("-", "")
            End Function
    
            Private Sub btnEncode_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnEncode.Click
                txtEncoded.Text = EncodeEmailAddress(txtEmail.Text)
            End Sub
    
        </script>
        <h2>Converts input string to its equivalent hexadecimal string representation. </h2>
        <br />
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><asp:Button runat="server" ID="btnEncode" OnClick="btnEncode_Click" Text="Encode" />
        <asp:Label ID="txtEncoded" runat="server"></asp:Label>
    </div>
</asp:Content>
