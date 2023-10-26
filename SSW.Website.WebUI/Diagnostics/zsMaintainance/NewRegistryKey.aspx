<%@ Page Inherits="WebUI.Admin.NewRegistryKeyPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="New RegistryKey" Codebehind="NewRegistryKey.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>New RegistryKey</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="RegistryKeys.aspx">Show All RegistryKeys</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DefaultMode="Insert" DataSourceID="RegistryKeysDataSource" EmptyDataText="The requested record was not found." ID="RegistryKeysDetailsView" AutoGenerateRows="False" DataKeyNames="RegistryKeyID"  OnItemInserting="RegistryKeysDetailsView_ItemInserting"><Fields>
<asp:BoundField ReadOnly="True" DataField="RegistryKeyID" HeaderText="RegistryKeyID"></asp:BoundField>
<asp:BoundField DataField="RegistryKeyName" HeaderText="RegistryKeyName"></asp:BoundField>
<asp:BoundField DataField="RegistryKeyType" HeaderText="RegistryKeyType"></asp:BoundField>
<asp:BoundField DataField="RegistryKeyData" HeaderText="RegistryKeyData"></asp:BoundField>
<asp:TemplateField SortExpression="RegistryKeyDefinitionID" HeaderText="RegistryKeyDefinitionID"><InsertItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllRegistryKeyDefinitions" ID="RegistryKeyDefinition_RegistryKeyDefinitionIDDataSource" DataObjectTypeName="WebUI.Admin.RegistryKeyDefinition" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="RegistryKeyDefinition_RegistryKeyDefinitionIDList" DataTextField="RegistryKeyDefinitionID" DataValueField="RegistryKeyDefinitionID" SelectedValue='<%# Bind("RegistryKeyDefinitionID") %>' DataSourceID="RegistryKeyDefinition_RegistryKeyDefinitionIDDataSource" AppendDataBoundItems="true" >
<asp:ListItem Text="<null>" Value="" />
</asp:DropDownList>
</InsertItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:CommandField CancelText="Clear Values" ShowInsertButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetRegistryKey" ID="RegistryKeysDataSource" DataObjectTypeName="WebUI.Admin.RegistryKey" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="RegistryKeyID" QueryStringField="RegistryKeyID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
