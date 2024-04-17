<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="History.aspx.cs" Inherits="SSW.Website.WebUI.Diagnostics.History" EnableEventValidation="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Diagnostics History Report"%>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
   <div class="pagecontent">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="clsSSWTableForDiagnostics" >
            <Columns>
                <asp:CommandField ShowSelectButton = "true" HeaderText="Select" Visible="false" /> 
                <asp:ImageField DataImageUrlField="Icon">
                </asp:ImageField>
                <asp:BoundField DataField="ReportDate" HeaderText="Report Date" />
                <asp:BoundField DataField="ComputerName" HeaderText="Computer" />
                <asp:BoundField DataField="ComputerIP" HeaderText="IP" />
                <asp:BoundField DataField="Good" HeaderText="Good" />
                <asp:BoundField DataField="Bad" HeaderText="Bad" />
                <asp:BoundField DataField="Unrecognised" HeaderText="Unrecognised" />
                <asp:BoundField DataField="DiagnosticsVersion" 
                    HeaderText="Diagnostics Version" />
                <asp:HyperLinkField DataNavigateUrlFields="ReportURL" Text="View" />
            </Columns>
            <HeaderStyle CssClass ="clsSSWTableForDiagnosticsHeader" />
            <RowStyle CssClass ="clsSSWTableForDiagnosticsRow" />
            <AlternatingRowStyle CssClass ="clsSSWTableForDiagnosticsRow " />
            <SelectedRowStyle BackColor="#FFFF99" />
        </asp:GridView>   </div>
</asp:Content>
