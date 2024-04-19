<%@ Page Inherits="WebUI.Admin.ProductVersionDetailPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="ProductVersion Detail" Codebehind="ProductVersionDetail.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>ProductVersion Detail</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="ProductVersions.aspx">Show All ProductVersions</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DataSourceID="ProductVersionsDataSource" EmptyDataText="The requested record was not found." ID="ProductVersionsDetailsView" AutoGenerateRows="False" DataKeyNames="VersionID"  OnItemUpdating="ProductVersionsDetailsView_ItemUpdating"><Fields>
<asp:BoundField ReadOnly="True" DataField="VersionID" InsertVisible="False" HeaderText="VersionID"></asp:BoundField>
<asp:BoundField DataField="VersionNumber" InsertVisible="False" HeaderText="VersionNumber"></asp:BoundField>
<asp:BoundField DataField="VersionLatest" InsertVisible="False" HeaderText="VersionLatest"></asp:BoundField>
<asp:BoundField DataField="VersionFor" InsertVisible="False" HeaderText="VersionFor"></asp:BoundField>
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
<asp:BoundField DataField="VersionXmlAdd" InsertVisible="False" HeaderText="VersionXmlAdd"></asp:BoundField>
<asp:BoundField DataField="VersionUpdateUrl" InsertVisible="False" HeaderText="VersionUpdateUrl"></asp:BoundField>
<asp:BoundField DataField="VersionName" InsertVisible="False" HeaderText="VersionName"></asp:BoundField>
<asp:BoundField DataField="VersionDescription" InsertVisible="False" HeaderText="VersionDescription"></asp:BoundField>
<asp:BoundField DataField="VersionImage" InsertVisible="False" HeaderText="VersionImage"></asp:BoundField>
<asp:BoundField DataField="VersionCounter" InsertVisible="False" HeaderText="VersionCounter"></asp:BoundField>
<asp:BoundField DataField="VersionInternalNumber" InsertVisible="False" HeaderText="VersionInternalNumber"></asp:BoundField>
<asp:BoundField DataField="VersionRequiredOS" InsertVisible="False" HeaderText="VersionRequiredOS"></asp:BoundField>
<asp:BoundField DataField="VersionRating" InsertVisible="False" HeaderText="VersionRating"></asp:BoundField>
<asp:BoundField DataField="DateCreated" InsertVisible="False" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" InsertVisible="False" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" InsertVisible="False" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" InsertVisible="False" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View RegistryKeyDefinitions" DataNavigateUrlFormatString="RegistryKeyDefinitions.aspx?Table=ProductVersion_RegistryKeyDefinitions&amp;RegistryKeyDefinitions_VersionID={0}" DataNavigateUrlFields="VersionID," Visible="false"></asp:HyperLinkField>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetProductVersion" ID="ProductVersionsDataSource" DataObjectTypeName="WebUI.Admin.ProductVersion" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="VersionID" QueryStringField="VersionID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
