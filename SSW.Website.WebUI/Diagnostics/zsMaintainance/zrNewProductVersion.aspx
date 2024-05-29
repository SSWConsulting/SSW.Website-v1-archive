<%@ Page Inherits="WebUI.Admin.NewProductVersionPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="New ProductVersion" Codebehind="NewProductVersion.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>New ProductVersion</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="ProductVersions.aspx">Show All ProductVersions</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DefaultMode="Insert" DataSourceID="ProductVersionsDataSource" EmptyDataText="The requested record was not found." ID="ProductVersionsDetailsView" AutoGenerateRows="False" DataKeyNames="VersionID"  OnItemInserting="ProductVersionsDetailsView_ItemInserting"><Fields>
<asp:BoundField ReadOnly="True" DataField="VersionID" InsertVisible="False" HeaderText="VersionID"></asp:BoundField>
<asp:BoundField DataField="VersionNumber" HeaderText="VersionNumber"></asp:BoundField>
<asp:BoundField DataField="VersionLatest" HeaderText="VersionLatest"></asp:BoundField>
<asp:BoundField DataField="VersionFor" HeaderText="VersionFor"></asp:BoundField>
<asp:TemplateField SortExpression="ProductID" HeaderText="ProductID"><InsertItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllProducts" ID="Product_ProductIDDataSource" DataObjectTypeName="WebUI.Admin.Product" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="Product_ProductIDList" DataTextField="ProductID" DataValueField="ProductID" SelectedValue='<%# Bind("ProductID") %>' DataSourceID="Product_ProductIDDataSource" >
</asp:DropDownList>
</InsertItemTemplate>
</asp:TemplateField>
<asp:TemplateField SortExpression="FileDefinitionID" HeaderText="FileDefinitionID"><InsertItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllFileDefinitions" ID="FileDefinition_FileDefinitionIDDataSource" DataObjectTypeName="WebUI.Admin.FileDefinition" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="FileDefinition_FileDefinitionIDList" DataTextField="FileDefinitionID" DataValueField="FileDefinitionID" SelectedValue='<%# Bind("FileDefinitionID") %>' DataSourceID="FileDefinition_FileDefinitionIDDataSource" >
</asp:DropDownList>
</InsertItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="VersionXmlAdd" HeaderText="VersionXmlAdd"></asp:BoundField>
<asp:BoundField DataField="VersionUpdateUrl" HeaderText="VersionUpdateUrl"></asp:BoundField>
<asp:BoundField DataField="VersionName" HeaderText="VersionName"></asp:BoundField>
<asp:BoundField DataField="VersionDescription" HeaderText="VersionDescription"></asp:BoundField>
<asp:BoundField DataField="VersionImage" HeaderText="VersionImage"></asp:BoundField>
<asp:BoundField DataField="VersionCounter" HeaderText="VersionCounter"></asp:BoundField>
<asp:BoundField DataField="VersionInternalNumber" HeaderText="VersionInternalNumber"></asp:BoundField>
<asp:BoundField DataField="VersionRequiredOS" HeaderText="VersionRequiredOS"></asp:BoundField>
<asp:BoundField DataField="VersionRating" HeaderText="VersionRating"></asp:BoundField>
<asp:BoundField DataField="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View RegistryKeyDefinitions" DataNavigateUrlFormatString="RegistryKeyDefinitions.aspx?Table=ProductVersion_RegistryKeyDefinitions&amp;RegistryKeyDefinitions_VersionID={0}" DataNavigateUrlFields="VersionID,"  Visible="false"></asp:HyperLinkField>
<asp:CommandField CancelText="Clear Values" ShowInsertButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetProductVersion" ID="ProductVersionsDataSource" DataObjectTypeName="WebUI.Admin.ProductVersion" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="VersionID" QueryStringField="VersionID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
