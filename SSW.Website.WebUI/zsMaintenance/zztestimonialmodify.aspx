<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master"
    Title="SSW - Add/Modify Testimonial" Inherits="SSW.Website.WebUI.zsMaintenance.TestimonialModify"
    CodeBehind="TestimonialModify.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:PlaceHolder ID="plcFinished" runat="server" Visible="False">
        <p style="color: red">
            Record saved successfully!</p>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="plcValidationError" runat="server" Visible="False">
        <p style="color: red">
            <b>Error:</b> Record was not saved due to one or more fields being completed incorrectly.
            Check your field lengths and try again.
        </p>
        <p id="errorBox" runat="server" style="color: red">
        </p>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="plcForm" runat="server">
        <table>
            <tr>
                <td valign="top">
                    Testimonial Content (snippet)
                </td>
                <td>
                    <asp:TextBox ID="txtContentSnippet" Style="font-size: 8pt" runat="server" MaxLength="500"
                        TextMode="MultiLine" Rows="5" Columns="45"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    Testimonial Content (long) <span id="ctl00_NewContentPlaceHolder_valFirstName" style="color: Red;
                        font-family: Verdana; font-size: 10pt; vertical-align: middle">
                        <img alt="Red Star:Required field, Exclamation:Error" src="/ssw/Images/Validation/redstar.gif"
                            width="18" height="14" border="0" />
                    </span>
                </td>
                <td>
                    <asp:TextBox ID="txtContentLong" Style="font-size: 8pt" runat="server" MaxLength="3000"
                        TextMode="MultiLine" Rows="12" Columns="45"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Author Name:
                </td>
                <td>
                    <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Author Company:
                </td>
                <td>
                    <asp:TextBox ID="txtCompany" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    URL:
                </td>
                <td>
                    <asp:TextBox ID="txtCompanySite" runat="server" Columns="35"></asp:TextBox>
                    <a href="/ssw/Standards/Rules/RulesToBetterGoogleRankings.aspx#Conserve">Why do we show
                        this just as plain text?</a>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    Categories:
                </td>
                <td>
                    <asp:CheckBoxList ID="chklstCategories" runat="server">
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    Image:
                </td>
                <td>
                    <input id="fileImage" type="file" runat="server">
                </td>
            </tr>
            <tr>
                <td>
                    Product:
                </td>
                <td>
                    <asp:DropDownList ID="cmbProduct" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="Save"></asp:Button> 
                    <asp:Button ID="btnDelete" runat="server" Text="Delete"></asp:Button> 
                </td>
            </tr>
        </table>
    </asp:PlaceHolder>
</asp:Content>
