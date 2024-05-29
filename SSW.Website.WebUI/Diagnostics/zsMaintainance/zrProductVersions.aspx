<%@ Page Inherits="WebUI.Admin.ProductVersionsPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="ProductVersions" Codebehind="ProductVersions.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>ProductVersions</h1>
<asp:GridView runat="server" DataSourceID="ProductVersionsDataSource" ID="ProductVersionsGridView" AllowSorting="True" EmptyDataText="No records were returned." AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="VersionID"  OnRowUpdating="ProductVersionsGridView_RowUpdating"><Columns>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
<asp:BoundField ReadOnly="True" DataField="VersionID" InsertVisible="False" SortExpression="VersionID" HeaderText="VersionID"></asp:BoundField>
<asp:BoundField DataField="VersionNumber" SortExpression="VersionNumber" HeaderText="VersionNumber"></asp:BoundField>
<asp:BoundField DataField="VersionLatest" SortExpression="VersionLatest" HeaderText="VersionLatest"></asp:BoundField>
<asp:BoundField DataField="VersionFor" SortExpression="VersionFor" HeaderText="VersionFor"></asp:BoundField>
<asp:TemplateField SortExpression="ProductID" HeaderText="ProductID"><EditItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllProducts" ID="Product_ProductIDDataSource" DataObjectTypeName="WebUI.Admin.Product" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="Product_ProductIDList" DataTextField="ProductID" DataValueField="ProductID" SelectedValue='<%# Bind("ProductID") %>' DataSourceID="Product_ProductIDDataSource" >
</asp:DropDownList>
</EditItemTemplate>
<ItemTemplate>
<asp:HyperLink ID="ProductIDLink" runat="server" Text='<%# Eval("ProductID") %>' NavigateUrl='<%# Eval("ProductID", "ProductDetail.aspx?ProductID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField SortExpression="FileDefinitionID" HeaderText="FileDefinitionID"><EditItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllFileDefinitions" ID="FileDefinition_FileDefinitionIDDataSource" DataObjectTypeName="WebUI.Admin.FileDefinition" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="FileDefinition_FileDefinitionIDList" DataTextField="FileDefinitionID" DataValueField="FileDefinitionID" SelectedValue='<%# Bind("FileDefinitionID") %>' DataSourceID="FileDefinition_FileDefinitionIDDataSource" >
</asp:DropDownList>
</EditItemTemplate>
<ItemTemplate>
<asp:HyperLink ID="FileDefinitionIDLink" runat="server" Text='<%# Eval("FileDefinitionID") %>' NavigateUrl='<%# Eval("FileDefinitionID", "FileDefinitionDetail.aspx?FileDefinitionID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="VersionXmlAdd" SortExpression="VersionXmlAdd" HeaderText="VersionXmlAdd"></asp:BoundField>
<asp:BoundField DataField="VersionUpdateUrl" SortExpression="VersionUpdateUrl" HeaderText="VersionUpdateUrl"></asp:BoundField>
<asp:BoundField DataField="VersionName" SortExpression="VersionName" HeaderText="VersionName"></asp:BoundField>
<asp:BoundField DataField="VersionDescription" SortExpression="VersionDescription" HeaderText="VersionDescription"></asp:BoundField>
<asp:BoundField DataField="VersionImage" SortExpression="VersionImage" HeaderText="VersionImage"></asp:BoundField>
<asp:BoundField DataField="VersionCounter" SortExpression="VersionCounter" HeaderText="VersionCounter"></asp:BoundField>
<asp:BoundField DataField="VersionInternalNumber" SortExpression="VersionInternalNumber" HeaderText="VersionInternalNumber"></asp:BoundField>
<asp:BoundField DataField="VersionRequiredOS" SortExpression="VersionRequiredOS" HeaderText="VersionRequiredOS"></asp:BoundField>
<asp:BoundField DataField="VersionRating" SortExpression="VersionRating" HeaderText="VersionRating"></asp:BoundField>
<asp:BoundField DataField="DateCreated" SortExpression="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" SortExpression="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" SortExpression="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" SortExpression="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View RegistryKeyDefinitions" DataNavigateUrlFormatString="RegistryKeyDefinitions.aspx?Table=ProductVersion_RegistryKeyDefinitions&amp;RegistryKeyDefinitions_VersionID={0}" DataNavigateUrlFields="VersionID," Visible="false"></asp:HyperLinkField>
<asp:HyperLinkField Text="View Details" DataNavigateUrlFormatString="ProductVersionDetail.aspx?VersionID={0}" DataNavigateUrlFields="VersionID"></asp:HyperLinkField>
</Columns>
</asp:GridView>

<blinq:PageDataSource runat="server" SelectCountMethod="GetProductVersionsCount" DeleteMethod="Delete" ConflictDetection="CompareAllValues" SortParameterName="sortExpression" SelectMethod="GetProductVersions" ID="ProductVersionsDataSource" DataObjectTypeName="WebUI.Admin.ProductVersion" EnablePaging="True" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter Name="tableName" QueryStringField="Table"></asp:QueryStringParameter>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="ProductVersions_FileDefinitionID" QueryStringField="ProductVersions_FileDefinitionID"></asp:QueryStringParameter>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="ProductVersions_ProductID" QueryStringField="ProductVersions_ProductID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

        <div class="link">
        <asp:HyperLink runat="server" ID="NewRecordLink" NavigateUrl="NewProductVersion.aspx">Create New ProductVersion</asp:HyperLink>

        </div>    
    </div>
</asp:Content>
