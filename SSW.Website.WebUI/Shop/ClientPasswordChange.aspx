<%@ Page Language="C#" Inherits="SSW.Website.WebUI.Shop.ClientPasswordChange" MasterPageFile="~/Masters/RavenSubpage.master" CodeBehind="ClientPasswordChange.aspx.cs" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <h1>Change Password</h1>
</asp:Content>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server" />

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <div id="shop-container">
        <div id="contentPane">
            <script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script>
            <script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>

            <asp:PlaceHolder ID="PlaceHolderUserMessage" runat="server"></asp:PlaceHolder>

            <div id="change-password">
                <label>Current Password</label>
                <asp:TextBox ID="txtPasswordOld" runat="server" Width="200" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valPasswordOld" runat="server" Font-Size="12" Font-Name="Verdana" zzErrorMessage="Password." Display="Dynamic" ControlToValidate="txtPasswordOld">
					    <IMG alt="Red Star:Required field, Exclamation:Error" src="/ssw/Shop/Images/star_red.png" />
                </asp:RequiredFieldValidator>
                <br />

                <label>New Password</label>
                <asp:TextBox ID="txtPassword1" runat="server" Width="200" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valPassword1" runat="server" Font-Size="12" Font-Name="Verdana" zzErrorMessage="Password." Display="Dynamic" ControlToValidate="txtPassword1">
					    <IMG alt="Red Star:Required field, Exclamation:Error" src="/ssw/Shop/Images/star_red.png" />
                </asp:RequiredFieldValidator><br />

                <label>Confirm New Password</label>
                <asp:TextBox ID="txtPassword2" runat="server" Width="200" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valPassword2" runat="server" Font-Size="12" Font-Name="Verdana" zzErrorMessage="Re-enter Password." Display="Dynamic" ControlToValidate="txtPassword2">
					    <IMG alt="Red Star:Required field, Exclamation:Error" src="/ssw/Shop/Images/star_red.png" />
                </asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" Font-Size="10" Font-Name="Arial" Display="Dynamic" ControlToValidate="txtPassword2" ControlToCompare="txtPassword1">Password fields don't match</asp:CompareValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPassword2" ErrorMessage=" Password must be at least 4 characters." ValidationExpression="(\S\S\S\S+)" Display="Dynamic"></asp:RegularExpressionValidator>
                <br />
                <%--<a onclick="window.location.href='ClientDetail.aspx'" class="button">Cancel</a>--%>
                <label></label>
                <asp:Button runat="server" OnClick="SaveBtn_Click" Text="Change Password" CssClass="red done" />
            </div>
        </div>
    </div>
</asp:Content>
