<%@ Page Inherits="WebUI.Admin.RegistryKeysPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="RegistryKeys" Codebehind="RegistryKeys.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>RegistryKeys</h1>
<asp:GridView runat="server" DataSourceID="RegistryKeysDataSource" ID="RegistryKeysGridView" AllowSorting="True" EmptyDataText="No records were returned." AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="RegistryKeyID"  OnRowUpdating="RegistryKeysGridView_RowUpdating"><Columns>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
<asp:BoundField ReadOnly="True" DataField="RegistryKeyID" SortExpression="RegistryKeyID" HeaderText="RegistryKeyID"></asp:BoundField>
<asp:BoundField DataField="RegistryKeyName" SortExpression="RegistryKeyName" HeaderText="RegistryKeyName"></asp:BoundField>
<asp:BoundField DataField="RegistryKeyType" SortExpression="RegistryKeyType" HeaderText="RegistryKeyType"></asp:BoundField>
<asp:BoundField DataField="RegistryKeyData" SortExpression="RegistryKeyData" HeaderText="RegistryKeyData"></asp:BoundField>
<asp:TemplateField SortExpression="RegistryKeyDefinitionID" HeaderText="RegistryKeyDefinitionID"><EditItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllRegistryKeyDefinitions" ID="RegistryKeyDefinition_RegistryKeyDefinitionIDDataSource" DataObjectTypeName="WebUI.Admin.RegistryKeyDefinition" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="RegistryKeyDefinition_RegistryKeyDefinitionIDList" DataTextField="RegistryKeyDefinitionID" DataValueField="RegistryKeyDefinitionID" SelectedValue='<%# Bind("RegistryKeyDefinitionID") %>' DataSourceID="RegistryKeyDefinition_RegistryKeyDefinitionIDDataSource" AppendDataBoundItems="true" >
<asp:ListItem Text="<null>" Value="" />
</asp:DropDownList>
</EditItemTemplate>
<ItemTemplate>
<asp:HyperLink ID="RegistryKeyDefinitionIDLink" runat="server" Text='<%# Eval("RegistryKeyDefinitionID") %>' NavigateUrl='<%# Eval("RegistryKeyDefinitionID", "RegistryKeyDefinitionDetail.aspx?RegistryKeyDefinitionID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="DateCreated" SortExpression="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" SortExpression="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" SortExpression="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" SortExpression="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View Details" DataNavigateUrlFormatString="RegistryKeyDetail.aspx?RegistryKeyID={0}" DataNavigateUrlFields="RegistryKeyID"></asp:HyperLinkField>
</Columns>
</asp:GridView>

<blinq:PageDataSource runat="server" SelectCountMethod="GetRegistryKeysCount" DeleteMethod="Delete" ConflictDetection="CompareAllValues" SortParameterName="sortExpression" SelectMethod="GetRegistryKeys" ID="RegistryKeysDataSource" DataObjectTypeName="WebUI.Admin.RegistryKey" EnablePaging="True" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter Name="tableName" QueryStringField="Table"></asp:QueryStringParameter>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="RegistryKeys_RegistryKeyDefinitionID" QueryStringField="RegistryKeys_RegistryKeyDefinitionID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

        <div class="link">
        <asp:HyperLink runat="server" ID="NewRecordLink" NavigateUrl="NewRegistryKey.aspx">Create New RegistryKey</asp:HyperLink>

        </div>    
    </div>
</asp:Content>
