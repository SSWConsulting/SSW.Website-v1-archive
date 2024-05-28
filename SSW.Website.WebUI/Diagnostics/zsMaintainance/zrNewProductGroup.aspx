<%@ Page Inherits="WebUI.Admin.NewProductGroupPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="New ProductGroup" Codebehind="NewProductGroup.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>New ProductGroup</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="ProductGroups.aspx">Show All ProductGroups</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DefaultMode="Insert" DataSourceID="ProductGroupsDataSource" EmptyDataText="The requested record was not found." ID="ProductGroupsDetailsView" AutoGenerateRows="False" DataKeyNames="GroupID"  OnItemInserting="ProductGroupsDetailsView_ItemInserting"><Fields>
<asp:BoundField ReadOnly="True" DataField="GroupID" InsertVisible="False" HeaderText="GroupID"></asp:BoundField>
<asp:BoundField DataField="GroupName" HeaderText="GroupName"></asp:BoundField>
<asp:BoundField DataField="GroupDescription" HeaderText="GroupDescription"></asp:BoundField>
<asp:TemplateField SortExpression="ManufacturerID" HeaderText="ManufacturerID"><InsertItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllManufacturers" ID="Manufacturer_ManufacturerIDDataSource" DataObjectTypeName="WebUI.Admin.Manufacturer" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="Manufacturer_ManufacturerIDList" DataTextField="ManufacturerID" DataValueField="ManufacturerID" SelectedValue='<%# Bind("ManufacturerID") %>' DataSourceID="Manufacturer_ManufacturerIDDataSource" >
</asp:DropDownList>
</InsertItemTemplate>
</asp:TemplateField>
<asp:TemplateField SortExpression="CategoryID" HeaderText="CategoryID"><InsertItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllCategories" ID="Category_CategoryIDDataSource" DataObjectTypeName="WebUI.Admin.Category" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="Category_CategoryIDList" DataTextField="CategoryID" DataValueField="CategoryID" SelectedValue='<%# Bind("CategoryID") %>' DataSourceID="Category_CategoryIDDataSource" >
</asp:DropDownList>
</InsertItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View Products" DataNavigateUrlFormatString="Products.aspx?Table=ProductGroup_Products&amp;Products_GroupID={0}" DataNavigateUrlFields="GroupID,"  ></asp:HyperLinkField>
<asp:HyperLinkField Text="View ProductAffiliateSoftwares" DataNavigateUrlFormatString="ProductAffiliateSoftwares.aspx?Table=ProductGroup_ProductAffiliateSoftwares&amp;ProductAffiliateSoftwares_GroupID={0}" DataNavigateUrlFields="GroupID," ></asp:HyperLinkField>
<asp:CommandField CancelText="Clear Values" ShowInsertButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetProductGroup" ID="ProductGroupsDataSource" DataObjectTypeName="WebUI.Admin.ProductGroup" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="GroupID" QueryStringField="GroupID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
