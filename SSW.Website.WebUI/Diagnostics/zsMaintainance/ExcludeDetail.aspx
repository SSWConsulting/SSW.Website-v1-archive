<%@ Page Inherits="WebUI.Admin.ExcludeDetailPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="Exclude Detail" Codebehind="ExcludeDetail.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>Exclude Detail</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="Excludes.aspx">Show All Excludes</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DataSourceID="ExcludesDataSource" EmptyDataText="The requested record was not found." ID="ExcludesDetailsView" AutoGenerateRows="False" DataKeyNames="ExcludeID"  OnItemUpdating="ExcludesDetailsView_ItemUpdating"><Fields>
<asp:BoundField ReadOnly="True" DataField="ExcludeID" InsertVisible="False" HeaderText="ExcludeID"></asp:BoundField>
<asp:BoundField DataField="ExcludeName" InsertVisible="False" HeaderText="ExcludeName"></asp:BoundField>
<asp:BoundField DataField="ExcludeDescription" InsertVisible="False" HeaderText="ExcludeDescription"></asp:BoundField>
<asp:BoundField DataField="ExcludeProductName" InsertVisible="False" HeaderText="ExcludeProductName"></asp:BoundField>
<asp:BoundField DataField="ExcludePathContains" InsertVisible="False" HeaderText="ExcludePathContains"></asp:BoundField>
<asp:TemplateField SortExpression="FileDefinitionID" HeaderText="FileDefinitionID"><EditItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllFileDefinitions" ID="FileDefinition_FileDefinitionIDDataSource" DataObjectTypeName="WebUI.Admin.FileDefinition" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="FileDefinition_FileDefinitionIDList" DataTextField="FileDefinitionID" DataValueField="FileDefinitionID" SelectedValue='<%# Bind("FileDefinitionID") %>' DataSourceID="FileDefinition_FileDefinitionIDDataSource" >
</asp:DropDownList>
</EditItemTemplate>
<ItemTemplate>
<asp:HyperLink ID="FileDefinitionIDLink" runat="server" Text='<%# Eval("FileDefinitionID") %>' NavigateUrl='<%# Eval("FileDefinitionID", "FileDefinitionDetail.aspx?FileDefinitionID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="DateCreated" InsertVisible="False" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" InsertVisible="False" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" InsertVisible="False" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" InsertVisible="False" HeaderText="UpdatedBy"></asp:BoundField>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetExclude" ID="ExcludesDataSource" DataObjectTypeName="WebUI.Admin.Exclude" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="ExcludeID" QueryStringField="ExcludeID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
