<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="HistoryReport.aspx.cs"
    Inherits="SSW.Website.WebUI.Diagnostics.HistoryReport" MasterPageFile="~/Masters/RavenSubpage.master"
    Title="SSW Diagnostics History Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:Label ID="lblReportDate" runat="server" Text="Scan Date" Font-Bold="True"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblComputerName" runat="server" Text="Computer Name" Font-Bold="True"></asp:Label><br />
    <br />
    <asp:GridView ID="HistoryReportGrid" runat="server" Height="46px" Width="100%" CellPadding="3"
        AutoGenerateColumns="False"  
        AlternatingRowStyle-CssClass ="clsSSWTableForDiagnostics" 
        CssClass="clsSSWTableForDiagnostics">
        <Columns>
            <asp:ImageField DataImageUrlField="Image">
                <HeaderStyle CssClass="clsSSWTableForDiagnosticsHeader" />
                <ItemStyle Width="24px"></ItemStyle>
            </asp:ImageField>
            <asp:BoundField DataField="#" HeaderText="#">
                <HeaderStyle CssClass="clsSSWTableForDiagnosticsHeader" />
                <ItemStyle Width="24px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="friendlyName" HeaderText="Your Software">
                <ItemStyle Width="200px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="localVersion" HeaderText="Your Version">
                <ItemStyle Width="100px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="latestVersion" HeaderText="Latest Version">
                <ItemStyle Width="100px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Path" HeaderText="Location"></asp:BoundField>
        </Columns>
        <HeaderStyle CssClass="clsSSWTableForDiagnosticsHeader" HorizontalAlign="Left" VerticalAlign="Middle" />
        <AlternatingRowStyle CssClass ="clsSSWTableForDiagnosticsRow" />
        <RowStyle CssClass ="clsSSWTableForDiagnosticsRow" />
    </asp:GridView>
    &nbsp;
    <br />
    <br />
   <asp:Image ID="imgGood" runat="server" ImageUrl="/ssw/Images/Images_HistoryReport/Action Done.ico"
        ToolTip="Good" />
    &nbsp;&nbsp;
    <asp:Label ID="lblGood" runat="server" Font-Names="Tahoma" Font-Size="8.25pt" ForeColor="Green"
        Text="{0} Good" ToolTip="Good"></asp:Label>
    <br />
    <asp:Image ID="imgBad" runat="server" ImageUrl="/ssw/Images/Images_HistoryReport/fail16.png"
        ToolTip="Bad" />
    &nbsp;&nbsp;
    <asp:Label ID="lblBad" runat="server" Font-Names="Tahoma" Font-Size="8.25pt" ForeColor="Red"
        Text="{0} Bad" ToolTip="Bad"></asp:Label>
    <br />
    <asp:Image ID="imgUnrecognized" runat="server" ImageUrl="/ssw/Images/Images_HistoryReport/unknown16.png"
        ToolTip="Unrecognized" />
    &nbsp;&nbsp;
    <asp:Label ID="lblUnrecognized" runat="server" Font-Names="Tahoma" Font-Size="8.25pt"
        ForeColor="Navy" Text="{0} Unrecognized {1}" ToolTip="Unrecognized"></asp:Label>
</asp:Content>
