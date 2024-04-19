<%@ Page Inherits="WebUI.Admin.ProductGroupsPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="ProductGroups" Codebehind="ProductGroups.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>ProductGroups</h1>
<asp:GridView runat="server" DataSourceID="ProductGroupsDataSource" ID="ProductGroupsGridView" AllowSorting="True" EmptyDataText="No records were returned." AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="GroupID"  OnRowUpdating="ProductGroupsGridView_RowUpdating"><Columns>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
<asp:BoundField ReadOnly="True" DataField="GroupID" InsertVisible="False" SortExpression="GroupID" HeaderText="GroupID"></asp:BoundField>
<asp:BoundField DataField="GroupName" SortExpression="GroupName" HeaderText="GroupName"></asp:BoundField>
<asp:BoundField DataField="GroupDescription" SortExpression="GroupDescription" HeaderText="GroupDescription"></asp:BoundField>
<asp:TemplateField SortExpression="ManufacturerID" HeaderText="ManufacturerID"><EditItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllManufacturers" ID="Manufacturer_ManufacturerIDDataSource" DataObjectTypeName="WebUI.Admin.Manufacturer" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="Manufacturer_ManufacturerIDList" DataTextField="ManufacturerID" DataValueField="ManufacturerID" SelectedValue='<%# Bind("ManufacturerID") %>' DataSourceID="Manufacturer_ManufacturerIDDataSource" >
</asp:DropDownList>
</EditItemTemplate>
<ItemTemplate>
<asp:HyperLink ID="ManufacturerIDLink" runat="server" Text='<%# Eval("ManufacturerID") %>' NavigateUrl='<%# Eval("ManufacturerID", "ManufacturerDetail.aspx?ManufacturerID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField SortExpression="CategoryID" HeaderText="CategoryID"><EditItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllCategories" ID="Category_CategoryIDDataSource" DataObjectTypeName="WebUI.Admin.Category" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="Category_CategoryIDList" DataTextField="CategoryID" DataValueField="CategoryID" SelectedValue='<%# Bind("CategoryID") %>' DataSourceID="Category_CategoryIDDataSource" >
</asp:DropDownList>
</EditItemTemplate>
<ItemTemplate>
<asp:HyperLink ID="CategoryIDLink" runat="server" Text='<%# Eval("CategoryID") %>' NavigateUrl='<%# Eval("CategoryID", "CategoryDetail.aspx?CategoryID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="DateCreated" SortExpression="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" SortExpression="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" SortExpression="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" SortExpression="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View Products" DataNavigateUrlFormatString="Products.aspx?Table=ProductGroup_Products&amp;Products_GroupID={0}" DataNavigateUrlFields="GroupID," Visible="false" ></asp:HyperLinkField>
<asp:HyperLinkField Text="View ProductAffiliateSoftwares" DataNavigateUrlFormatString="ProductAffiliateSoftwares.aspx?Table=ProductGroup_ProductAffiliateSoftwares&amp;ProductAffiliateSoftwares_GroupID={0}" DataNavigateUrlFields="GroupID," Visible="false"></asp:HyperLinkField>
<asp:HyperLinkField Text="View Details" DataNavigateUrlFormatString="ProductGroupDetail.aspx?GroupID={0}" DataNavigateUrlFields="GroupID"></asp:HyperLinkField>
</Columns>
</asp:GridView>

<blinq:PageDataSource runat="server" SelectCountMethod="GetProductGroupsCount" DeleteMethod="Delete" ConflictDetection="CompareAllValues" SortParameterName="sortExpression" SelectMethod="GetProductGroups" ID="ProductGroupsDataSource" DataObjectTypeName="WebUI.Admin.ProductGroup" EnablePaging="True" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter Name="tableName" QueryStringField="Table"></asp:QueryStringParameter>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="ProductGroups_CategoryID" QueryStringField="ProductGroups_CategoryID"></asp:QueryStringParameter>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="ProductGroups_ManufacturerID" QueryStringField="ProductGroups_ManufacturerID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

        <div class="link">
        <asp:HyperLink runat="server" ID="NewRecordLink" NavigateUrl="NewProductGroup.aspx">Create New ProductGroup</asp:HyperLink>

        </div>    
    </div>
</asp:Content>
