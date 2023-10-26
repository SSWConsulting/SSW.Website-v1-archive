<%@ Page Inherits="WebUI.Admin.ManufacturerDetailPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="Manufacturer Detail" Codebehind="ManufacturerDetail.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>Manufacturer Detail</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="Manufacturers.aspx">Show All Manufacturers</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DataSourceID="ManufacturersDataSource" EmptyDataText="The requested record was not found." ID="ManufacturersDetailsView" AutoGenerateRows="False" DataKeyNames="ManufacturerID"  OnItemUpdating="ManufacturersDetailsView_ItemUpdating"><Fields>
<asp:BoundField ReadOnly="True" DataField="ManufacturerID" InsertVisible="False" HeaderText="ManufacturerID"></asp:BoundField>
<asp:BoundField DataField="ManufacturerName" InsertVisible="False" HeaderText="ManufacturerName"></asp:BoundField>
<asp:BoundField DataField="ManufacturerUrl" InsertVisible="False" HeaderText="ManufacturerUrl"></asp:BoundField>
<asp:BoundField DataField="SSWTimestamp" InsertVisible="False" HeaderText="SSWTimestamp"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" InsertVisible="False" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" InsertVisible="False" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" InsertVisible="False" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View ProductGroups" DataNavigateUrlFormatString="ProductGroups.aspx?Table=Manufacturer_ProductGroups&amp;ProductGroups_ManufacturerID={0}" DataNavigateUrlFields="ManufacturerID," Visible="false" ></asp:HyperLinkField>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetManufacturer" ID="ManufacturersDataSource" DataObjectTypeName="WebUI.Admin.Manufacturer" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="ManufacturerID" QueryStringField="ManufacturerID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
