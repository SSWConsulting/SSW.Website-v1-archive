<%@ Page Inherits="WebUI.Admin.ManufacturersPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="Manufacturers" Codebehind="Manufacturers.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>Manufacturers</h1>
<asp:GridView runat="server" DataSourceID="ManufacturersDataSource" ID="ManufacturersGridView" AllowSorting="True" EmptyDataText="No records were returned." AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="ManufacturerID" OnRowUpdating="ManufacturersGridView_RowUpdating"><Columns>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
<asp:BoundField ReadOnly="True" DataField="ManufacturerID" InsertVisible="False" SortExpression="ManufacturerID" HeaderText="ManufacturerID"></asp:BoundField>
<asp:BoundField DataField="ManufacturerName" SortExpression="ManufacturerName" HeaderText="ManufacturerName"></asp:BoundField>
<asp:BoundField DataField="ManufacturerUrl" SortExpression="ManufacturerUrl" HeaderText="ManufacturerUrl"></asp:BoundField>
<asp:BoundField DataField="SSWTimestamp" SortExpression="SSWTimestamp" HeaderText="SSWTimestamp"></asp:BoundField>
<asp:BoundField DataField="DateCreated" SortExpression="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" SortExpression="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" SortExpression="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" SortExpression="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View ProductGroups" DataNavigateUrlFormatString="ProductGroups.aspx?Table=Manufacturer_ProductGroups&amp;ProductGroups_ManufacturerID={0}" DataNavigateUrlFields="ManufacturerID," Visible="false" ></asp:HyperLinkField>
<asp:HyperLinkField Text="View Details" DataNavigateUrlFormatString="ManufacturerDetail.aspx?ManufacturerID={0}" DataNavigateUrlFields="ManufacturerID"></asp:HyperLinkField>
</Columns>
</asp:GridView>

<blinq:PageDataSource runat="server" SelectCountMethod="GetAllManufacturersCount" DeleteMethod="Delete" ConflictDetection="CompareAllValues" SortParameterName="sortExpression" SelectMethod="GetAllManufacturers" ID="ManufacturersDataSource" DataObjectTypeName="WebUI.Admin.Manufacturer" EnablePaging="True" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

        <div class="link">
        <asp:HyperLink runat="server" ID="NewRecordLink" NavigateUrl="NewManufacturer.aspx">Create New Manufacturer</asp:HyperLink>

        </div>    
    </div>
</asp:Content>
