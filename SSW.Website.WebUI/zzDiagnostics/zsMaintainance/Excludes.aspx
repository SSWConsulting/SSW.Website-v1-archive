<%@ Page Inherits="WebUI.Admin.ExcludesPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="Excludes" Codebehind="Excludes.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>Excludes</h1>
<asp:GridView runat="server" DataSourceID="ExcludesDataSource" ID="ExcludesGridView" AllowSorting="True" EmptyDataText="No records were returned." AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="ExcludeID"  OnRowUpdating="ExcludesGridView_RowUpdating"><Columns>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
<asp:BoundField ReadOnly="True" DataField="ExcludeID" InsertVisible="False" SortExpression="ExcludeID" HeaderText="ExcludeID"></asp:BoundField>
<asp:BoundField DataField="ExcludeName" SortExpression="ExcludeName" HeaderText="ExcludeName"></asp:BoundField>
<asp:BoundField DataField="ExcludeDescription" SortExpression="ExcludeDescription" HeaderText="ExcludeDescription"></asp:BoundField>
<asp:BoundField DataField="ExcludeProductName" SortExpression="ExcludeProductName" HeaderText="ExcludeProductName"></asp:BoundField>
<asp:BoundField DataField="ExcludePathContains" SortExpression="ExcludePathContains" HeaderText="ExcludePathContains"></asp:BoundField>
<asp:TemplateField SortExpression="FileDefinitionID" HeaderText="FileDefinitionID"><EditItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllFileDefinitions" ID="FileDefinition_FileDefinitionIDDataSource" DataObjectTypeName="WebUI.Admin.FileDefinition" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="FileDefinition_FileDefinitionIDList" DataTextField="FileDefinitionID" DataValueField="FileDefinitionID" SelectedValue='<%# Bind("FileDefinitionID") %>' DataSourceID="FileDefinition_FileDefinitionIDDataSource" >
</asp:DropDownList>
</EditItemTemplate>
<ItemTemplate>
<asp:HyperLink ID="FileDefinitionIDLink" runat="server" Text='<%# Eval("FileDefinitionID") %>' NavigateUrl='<%# Eval("FileDefinitionID", "FileDefinitionDetail.aspx?FileDefinitionID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="DateCreated" SortExpression="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" SortExpression="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" SortExpression="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" SortExpression="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View Details" DataNavigateUrlFormatString="ExcludeDetail.aspx?ExcludeID={0}" DataNavigateUrlFields="ExcludeID"></asp:HyperLinkField>
</Columns>
</asp:GridView>

<blinq:PageDataSource runat="server" SelectCountMethod="GetExcludesCount" DeleteMethod="Delete" ConflictDetection="CompareAllValues" SortParameterName="sortExpression" SelectMethod="GetExcludes" ID="ExcludesDataSource" DataObjectTypeName="WebUI.Admin.Exclude" EnablePaging="True" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter Name="tableName" QueryStringField="Table"></asp:QueryStringParameter>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="Excludes_FileDefinitionID" QueryStringField="Excludes_FileDefinitionID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

        <div class="link">
        <asp:HyperLink runat="server" ID="NewRecordLink" NavigateUrl="NewExclude.aspx">Create New Exclude</asp:HyperLink>

        </div>    
    </div>
</asp:Content>
