<%@ Page Language="C#" Inherits="SSW.Website.WebUI.Shop.LostPassword" MasterPageFile="~/Masters/RavenSubpage.master" CodeBehind="~/Shop/LostPassword.aspx.cs" Title="Lost Password?" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <h1>Forgot Password</h1>
</asp:Content>

<asp:Content ID="sidebar" ContentPlaceHolderID="sidebarcontainer" runat="server">
    <asp:Label ID="lblNote" runat="server">Note: Did you notice that you did not have to retype your email address? <br />See rule: <a href="/ssw/Standards/Rules/RulesToBetterWebsitesNavigation.aspx#ForgotPassword">Do you know the right way to do a 'Forgot Password' page?</a></asp:Label>
</asp:Content>

<asp:Content ContentPlaceHolderID="FooterScripts" ID="Header" runat="server">
    <script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script>
    <script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>
    <script language="Javascript" type="text/javascript">
        var control = document.getElementById("ctl00_NewContentPlaceHolder_txtEmail");
        if (control != null) control.focus();
    </script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div id="shop-container">
        <asp:Label ID="lblWelcome" runat="server"></asp:Label>
        <asp:PlaceHolder ID="PlaceHolderUserMessage" runat="server"></asp:PlaceHolder>

        <div id="forgot-password">
            <div class="email">
                <label>Email</label>
                <asp:TextBox ID="txtEmail" runat="server" Width="200"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredValEmail" runat="server" ErrorMessage="Email is required." ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularValEmail" runat="server" Font-Name="Verdana" Font-Size="10" ValidationExpression="^\w+([-+.]?\w+)*@\w+([-.]?\w+)*\.\w+([-.]?\w+)*$" Display="Dynamic" ControlToValidate="txtEmail" ErrorMessage="Email Address.">Must use a valid email address.</asp:RegularExpressionValidator>
            </div>
            <label></label>
            <asp:Button ID="btnSubmit" runat="server" CssClass="next" Text="Send Password" OnClick="btnSubmit_Click"></asp:Button>
        </div>
    </div>
</asp:Content>
