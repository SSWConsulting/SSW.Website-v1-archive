<%@ Page Inherits="WebUI.Admin.SysdiagramsPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="Sysdiagrams" Codebehind="Sysdiagrams.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>Sysdiagrams</h1>
<asp:GridView runat="server" DataSourceID="SysdiagramsDataSource" ID="SysdiagramsGridView" AllowSorting="True" EmptyDataText="No records were returned." AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="DiagramId"><Columns>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
<asp:BoundField DataField="Name" SortExpression="Name" HeaderText="Name"></asp:BoundField>
<asp:BoundField DataField="PrincipalId" SortExpression="PrincipalId" HeaderText="PrincipalId"></asp:BoundField>
<asp:BoundField ReadOnly="True" DataField="DiagramId" InsertVisible="False" SortExpression="DiagramId" HeaderText="DiagramId"></asp:BoundField>
<asp:BoundField DataField="Version" SortExpression="Version" HeaderText="Version"></asp:BoundField>
<asp:HyperLinkField Text="View Details" DataNavigateUrlFormatString="SysdiagramDetail.aspx?DiagramId={0}" DataNavigateUrlFields="DiagramId"></asp:HyperLinkField>
</Columns>
</asp:GridView>

<blinq:PageDataSource runat="server" SelectCountMethod="GetAllSysdiagramsCount" DeleteMethod="Delete" ConflictDetection="CompareAllValues" SortParameterName="sortExpression" SelectMethod="GetAllSysdiagrams" ID="SysdiagramsDataSource" DataObjectTypeName="WebUI.Admin.Sysdiagram" EnablePaging="True" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

        <div class="link">
        <asp:HyperLink runat="server" ID="NewRecordLink" NavigateUrl="NewSysdiagram.aspx">Create New Sysdiagram</asp:HyperLink>

        </div>    
    </div>
</asp:Content>
