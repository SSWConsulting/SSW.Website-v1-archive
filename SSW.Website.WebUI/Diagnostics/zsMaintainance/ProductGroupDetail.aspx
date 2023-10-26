<%@ Page Inherits="WebUI.Admin.ProductGroupDetailPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="ProductGroup Detail" Codebehind="ProductGroupDetail.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>ProductGroup Detail</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="ProductGroups.aspx">Show All ProductGroups</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DataSourceID="ProductGroupsDataSource" EmptyDataText="The requested record was not found." ID="ProductGroupsDetailsView" AutoGenerateRows="False" DataKeyNames="GroupID"   OnItemUpdating="ProductGroupsDetailsView_ItemUpdating"><Fields>
<asp:BoundField ReadOnly="True" DataField="GroupID" InsertVisible="False" HeaderText="GroupID"></asp:BoundField>
<asp:BoundField DataField="GroupName" InsertVisible="False" HeaderText="GroupName"></asp:BoundField>
<asp:BoundField DataField="GroupDescription" InsertVisible="False" HeaderText="GroupDescription"></asp:BoundField>
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
<asp:BoundField DataField="DateCreated" InsertVisible="False" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" InsertVisible="False" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" InsertVisible="False" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" InsertVisible="False" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View Products" DataNavigateUrlFormatString="Products.aspx?Table=ProductGroup_Products&amp;Products_GroupID={0}" DataNavigateUrlFields="GroupID," Visible="false" ></asp:HyperLinkField>
<asp:HyperLinkField Text="View ProductAffiliateSoftwares" DataNavigateUrlFormatString="ProductAffiliateSoftwares.aspx?Table=ProductGroup_ProductAffiliateSoftwares&amp;ProductAffiliateSoftwares_GroupID={0}" DataNavigateUrlFields="GroupID," Visible="false"></asp:HyperLinkField>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetProductGroup" ID="ProductGroupsDataSource" DataObjectTypeName="WebUI.Admin.ProductGroup" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="GroupID" QueryStringField="GroupID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
