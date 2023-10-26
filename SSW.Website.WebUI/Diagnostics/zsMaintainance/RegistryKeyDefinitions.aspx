<%@ Page Inherits="WebUI.Admin.RegistryKeyDefinitionsPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="RegistryKeyDefinitions" Codebehind="RegistryKeyDefinitions.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>RegistryKeyDefinitions</h1>
<asp:GridView runat="server" DataSourceID="RegistryKeyDefinitionsDataSource" ID="RegistryKeyDefinitionsGridView" AllowSorting="True" EmptyDataText="No records were returned." AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="RegistryKeyDefinitionID"  OnRowUpdating="RegistryKeyDefinitionsGridView_RowUpdating"><Columns>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
<asp:BoundField ReadOnly="True" DataField="RegistryKeyDefinitionID" SortExpression="RegistryKeyDefinitionID" HeaderText="RegistryKeyDefinitionID"></asp:BoundField>
<asp:BoundField DataField="RegistryKeyDefinitonName" SortExpression="RegistryKeyDefinitonName" HeaderText="RegistryKeyDefinitonName"></asp:BoundField>
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
<asp:BoundField DataField="DateCreated" SortExpression="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" SortExpression="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" SortExpression="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" SortExpression="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View RegistryKeys" DataNavigateUrlFormatString="RegistryKeys.aspx?Table=RegistryKeyDefinition_RegistryKeys&amp;RegistryKeys_RegistryKeyDefinitionID={0}" DataNavigateUrlFields="RegistryKeyDefinitionID," Visible="false"></asp:HyperLinkField>
<asp:HyperLinkField Text="View Details" DataNavigateUrlFormatString="RegistryKeyDefinitionDetail.aspx?RegistryKeyDefinitionID={0}" DataNavigateUrlFields="RegistryKeyDefinitionID"></asp:HyperLinkField>
</Columns>
</asp:GridView>

<blinq:PageDataSource runat="server" SelectCountMethod="GetRegistryKeyDefinitionsCount" DeleteMethod="Delete" ConflictDetection="CompareAllValues" SortParameterName="sortExpression" SelectMethod="GetRegistryKeyDefinitions" ID="RegistryKeyDefinitionsDataSource" DataObjectTypeName="WebUI.Admin.RegistryKeyDefinition" EnablePaging="True" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter Name="tableName" QueryStringField="Table"></asp:QueryStringParameter>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="RegistryKeyDefinitions_VersionID" QueryStringField="RegistryKeyDefinitions_VersionID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

        <div class="link">
        <asp:HyperLink runat="server" ID="NewRecordLink" NavigateUrl="NewRegistryKeyDefinition.aspx">Create New RegistryKeyDefinition</asp:HyperLink>

        </div>    
    </div>
</asp:Content>
