<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Inherits="SSW.Website.WebUI.Shop.ClientRemove"
    CodeBehind="ClientRemove.aspx.cs" Title="SSW - Remove My Account" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <h1>Remove My Account</h1>
</asp:Content>

<asp:Content ID="sidebar" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <div id="shop-container">
        <div id="contentPane">
            <script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script>
            <script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>
            <div align="center">
                <asp:PlaceHolder ID="PlaceHolderUserMessage" runat="server"></asp:PlaceHolder>
            </div>
            <asp:Panel ID="pnlDetails" runat="server">
                <table bordercolor="#ff0000" cellspacing="0" cellpadding="2" width="36%" align="center" border="1">
                    <tr>
                        <td width="100%">
                            <table width="100%" bgcolor="#cccccc" border="0">
                                <tr>
                                    <td>
                                        <table width="100%">
                                            <tr bordercolor="#cccccc" bgcolor="#cccccc">
                                                <td valign="top" colspan="2"><b>Why do you want to be removed:</b>
                                                </td>
                                            </tr>
                                            <tr bordercolor="#cccccc" bgcolor="#cccccc">
                                                <td colspan="2">
                                                    <div align="left">
                                                        <asp:TextBox ID="txtReasonForRemovial" runat="server" Height="105px" TextMode="MultiLine" Width="320px" MaxLength="100"></asp:TextBox>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr bordercolor="#cccccc" bgcolor="#cccccc">
                                                <td colspan="2">
                                                    <div align="center">
                                                        <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                            <tr>
                                                                <td width="35%">
                                                                    <!-- Ignore Next Line: Double Links -->
                                                                    <div align="center">
                                                                        <a id="A1" href="#" runat="server" onserverclick="btnRemove_Click">Remove 
																		me</a>
                                                                    </div>
                                                                </td>
                                                                <td width="28%">
                                                                    <div align="center">
                                                                        <a id="A2" href="#" runat="server" onserverclick="btnCancel_Click">Cancel</a>

                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
