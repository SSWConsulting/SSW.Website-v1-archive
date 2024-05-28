<%@ Page Inherits="WebUI.Admin.NewFileDefinitionPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="New FileDefinition" Codebehind="NewFileDefinition.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>New FileDefinition</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="FileDefinitions.aspx">Show All FileDefinitions</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DefaultMode="Insert" DataSourceID="FileDefinitionsDataSource" EmptyDataText="The requested record was not found." ID="FileDefinitionsDetailsView" AutoGenerateRows="False" DataKeyNames="FileDefinitionID"  OnItemInserting="FileDefinitionsDetailsView_ItemInserting"><Fields>
<asp:BoundField ReadOnly="True" DataField="FileDefinitionID" InsertVisible="False" HeaderText="FileDefinitionID"></asp:BoundField>
<asp:BoundField DataField="FileDefinitionName" HeaderText="FileDefinitionName"></asp:BoundField>
<asp:BoundField DataField="FileDefinitionVersion" HeaderText="FileDefinitionVersion"></asp:BoundField>
<asp:BoundField DataField="FileDefinitionSize" HeaderText="FileDefinitionSize"></asp:BoundField>
<asp:BoundField DataField="FileDefinitionDate" HeaderText="FileDefinitionDate"></asp:BoundField>
<asp:BoundField DataField="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View Excludes" DataNavigateUrlFormatString="Excludes.aspx?Table=FileDefinition_Excludes&amp;Excludes_FileDefinitionID={0}" DataNavigateUrlFields="FileDefinitionID," Visible="false"></asp:HyperLinkField>
<asp:HyperLinkField Text="View ProductVersions" DataNavigateUrlFormatString="ProductVersions.aspx?Table=FileDefinition_ProductVersions&amp;ProductVersions_FileDefinitionID={0}" DataNavigateUrlFields="FileDefinitionID," Visible="false"></asp:HyperLinkField>
<asp:CommandField CancelText="Clear Values" ShowInsertButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetFileDefinition" ID="FileDefinitionsDataSource" DataObjectTypeName="WebUI.Admin.FileDefinition" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="FileDefinitionID" QueryStringField="FileDefinitionID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
