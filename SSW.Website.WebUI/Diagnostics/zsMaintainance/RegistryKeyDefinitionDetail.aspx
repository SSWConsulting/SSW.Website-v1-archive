<%@ Page Inherits="WebUI.Admin.RegistryKeyDefinitionDetailPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="RegistryKeyDefinition Detail" Codebehind="RegistryKeyDefinitionDetail.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>RegistryKeyDefinition Detail</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="RegistryKeyDefinitions.aspx">Show All RegistryKeyDefinitions</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DataSourceID="RegistryKeyDefinitionsDataSource" EmptyDataText="The requested record was not found." ID="RegistryKeyDefinitionsDetailsView" AutoGenerateRows="False" DataKeyNames="RegistryKeyDefinitionID"  OnItemUpdating="RegistryKeyDefinitionsDetailsView_ItemUpdating"><Fields>
<asp:BoundField ReadOnly="True" DataField="RegistryKeyDefinitionID" InsertVisible="False" HeaderText="RegistryKeyDefinitionID"></asp:BoundField>
<asp:BoundField DataField="RegistryKeyDefinitonName" InsertVisible="False" HeaderText="RegistryKeyDefinitonName"></asp:BoundField>
<asp:TemplateField SortExpression="VersionID" HeaderText="VersionID"><EditItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllProductVersions" ID="ProductVersion_VersionIDDataSource" DataObjectTypeName="WebUI.Admin.ProductVersion" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="ProductVersion_VersionIDList" DataTextField="VersionID" DataValueField="VersionID" SelectedValue='<%# Bind("VersionID") %>' DataSourceID="ProductVersion_VersionIDDataSource" AppendDataBoundItems="true" >
<asp:ListItem Text="<null>" Value="" />
</asp:DropDownList>
</EditItemTemplate>
<ItemTemplate>
<asp:HyperLink ID="VersionIDLink" runat="server" Text='<%# Eval("VersionID") %>' NavigateUrl='<%# Eval("VersionID", "ProductVersionDetail.aspx?VersionID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="DateCreated" InsertVisible="False" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" InsertVisible="False" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" InsertVisible="False" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" InsertVisible="False" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View RegistryKeys" DataNavigateUrlFormatString="RegistryKeys.aspx?Table=RegistryKeyDefinition_RegistryKeys&amp;RegistryKeys_RegistryKeyDefinitionID={0}" DataNavigateUrlFields="RegistryKeyDefinitionID," Visible="false"></asp:HyperLinkField>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetRegistryKeyDefinition" ID="RegistryKeyDefinitionsDataSource" DataObjectTypeName="WebUI.Admin.RegistryKeyDefinition" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="RegistryKeyDefinitionID" QueryStringField="RegistryKeyDefinitionID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
