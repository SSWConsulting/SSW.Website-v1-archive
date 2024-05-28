<%@ Page Inherits="WebUI.Admin.FileDefinitionsPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="FileDefinitions" Codebehind="FileDefinitions.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>FileDefinitions</h1>
<asp:GridView runat="server" DataSourceID="FileDefinitionsDataSource" ID="FileDefinitionsGridView" AllowSorting="True" EmptyDataText="No records were returned." AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="FileDefinitionID"  OnRowUpdating="FileDefinitionsGridView_RowUpdating"><Columns>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
<asp:BoundField ReadOnly="True" DataField="FileDefinitionID" InsertVisible="False" SortExpression="FileDefinitionID" HeaderText="FileDefinitionID"></asp:BoundField>
<asp:BoundField DataField="FileDefinitionName" SortExpression="FileDefinitionName" HeaderText="FileDefinitionName"></asp:BoundField>
<asp:BoundField DataField="FileDefinitionVersion" SortExpression="FileDefinitionVersion" HeaderText="FileDefinitionVersion"></asp:BoundField>
<asp:BoundField DataField="FileDefinitionSize" SortExpression="FileDefinitionSize" HeaderText="FileDefinitionSize"></asp:BoundField>
<asp:BoundField DataField="FileDefinitionDate" SortExpression="FileDefinitionDate" HeaderText="FileDefinitionDate"></asp:BoundField>
<asp:BoundField DataField="DateCreated" SortExpression="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" SortExpression="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" SortExpression="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" SortExpression="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View Excludes" DataNavigateUrlFormatString="Excludes.aspx?Table=FileDefinition_Excludes&amp;Excludes_FileDefinitionID={0}" DataNavigateUrlFields="FileDefinitionID," Visible="false" ></asp:HyperLinkField>
<asp:HyperLinkField Text="View ProductVersions" DataNavigateUrlFormatString="ProductVersions.aspx?Table=FileDefinition_ProductVersions&amp;ProductVersions_FileDefinitionID={0}" DataNavigateUrlFields="FileDefinitionID," Visible="false"></asp:HyperLinkField>
<asp:HyperLinkField Text="View Details" DataNavigateUrlFormatString="FileDefinitionDetail.aspx?FileDefinitionID={0}" DataNavigateUrlFields="FileDefinitionID"></asp:HyperLinkField>
</Columns>
</asp:GridView>

<blinq:PageDataSource runat="server" SelectCountMethod="GetAllFileDefinitionsCount" DeleteMethod="Delete" ConflictDetection="CompareAllValues" SortParameterName="sortExpression" SelectMethod="GetAllFileDefinitions" ID="FileDefinitionsDataSource" DataObjectTypeName="WebUI.Admin.FileDefinition" EnablePaging="True" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

        <div class="link">
        <asp:HyperLink runat="server" ID="NewRecordLink" NavigateUrl="NewFileDefinition.aspx">Create New FileDefinition</asp:HyperLink>

        </div>    
    </div>
</asp:Content>
