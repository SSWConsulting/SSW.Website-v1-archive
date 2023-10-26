<%@ Page Inherits="WebUI.Admin.RegistryKeyDetailPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="RegistryKey Detail" Codebehind="RegistryKeyDetail.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>RegistryKey Detail</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="RegistryKeys.aspx">Show All RegistryKeys</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DataSourceID="RegistryKeysDataSource" EmptyDataText="The requested record was not found." ID="RegistryKeysDetailsView" AutoGenerateRows="False" DataKeyNames="RegistryKeyID"  OnItemUpdating="RegistryKeysDetailsView_ItemUpdating"><Fields>
<asp:BoundField ReadOnly="True" DataField="RegistryKeyID" InsertVisible="False" HeaderText="RegistryKeyID"></asp:BoundField>
<asp:BoundField DataField="RegistryKeyName" InsertVisible="False" HeaderText="RegistryKeyName"></asp:BoundField>
<asp:BoundField DataField="RegistryKeyType" InsertVisible="False" HeaderText="RegistryKeyType"></asp:BoundField>
<asp:BoundField DataField="RegistryKeyData" InsertVisible="False" HeaderText="RegistryKeyData"></asp:BoundField>
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
<asp:BoundField DataField="DateCreated" InsertVisible="False" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" InsertVisible="False" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" InsertVisible="False" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" InsertVisible="False" HeaderText="UpdatedBy"></asp:BoundField>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetRegistryKey" ID="RegistryKeysDataSource" DataObjectTypeName="WebUI.Admin.RegistryKey" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="RegistryKeyID" QueryStringField="RegistryKeyID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
