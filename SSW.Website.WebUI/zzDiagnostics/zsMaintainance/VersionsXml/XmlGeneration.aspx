<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="XmlGeneration.aspx.cs" Inherits="WebUI.Admin.XmlGeneration" MasterPageFile="~/Masters/RavenSubpage.master" Title="XML Generation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
   <div class="pagecontent">
        <asp:Panel ID="pnlSummary" runat="server" Visible="true">
            <table>
                <tr>
                    <td valign="middle">
                        <asp:Image ID="tick" ImageUrl="/Images/tick.gif" runat="server" />
                    </td>
                    <td valign="middle">
                        <asp:Label ID="lblConfirmation" runat="server" Text="" ForeColor="Green" />
                    <p>
                        <asp:Label ID="lblToSync" runat="server" Text="Please sync this versions.xml manually to SEAL & US server." ForeColor="Maroon" />
                    </p>
                    </td>
                </tr>
            </table>
            <p>&nbsp;</p>
            <p><a href="..\Default.aspx">Back to Diagnostics Admin</a></p>
        </asp:Panel>
        <br /><br />
    </div>
</asp:Content>
