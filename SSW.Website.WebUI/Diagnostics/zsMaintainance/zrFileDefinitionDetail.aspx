<%@ Page Inherits="WebUI.Admin.FileDefinitionDetailPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="FileDefinition Detail" Codebehind="FileDefinitionDetail.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>FileDefinition Detail</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="FileDefinitions.aspx">Show All FileDefinitions</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DataSourceID="FileDefinitionsDataSource" EmptyDataText="The requested record was not found." ID="FileDefinitionsDetailsView" AutoGenerateRows="False" DataKeyNames="FileDefinitionID"  OnItemUpdating="FileDefinitionsDetailsView_ItemUpdating"><Fields>
<asp:BoundField ReadOnly="True" DataField="FileDefinitionID" InsertVisible="False" HeaderText="FileDefinitionID"></asp:BoundField>
<asp:BoundField DataField="FileDefinitionName" InsertVisible="False" HeaderText="FileDefinitionName"></asp:BoundField>
<asp:BoundField DataField="FileDefinitionVersion" InsertVisible="False" HeaderText="FileDefinitionVersion"></asp:BoundField>
<asp:BoundField DataField="FileDefinitionSize" InsertVisible="False" HeaderText="FileDefinitionSize"></asp:BoundField>
<asp:BoundField DataField="FileDefinitionDate" InsertVisible="False" HeaderText="FileDefinitionDate"></asp:BoundField>
<asp:BoundField DataField="DateCreated" InsertVisible="False" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" InsertVisible="False" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" InsertVisible="False" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" InsertVisible="False" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View Excludes" DataNavigateUrlFormatString="Excludes.aspx?Table=FileDefinition_Excludes&amp;Excludes_FileDefinitionID={0}" DataNavigateUrlFields="FileDefinitionID," Visible="false" ></asp:HyperLinkField>
<asp:HyperLinkField Text="View ProductVersions" DataNavigateUrlFormatString="ProductVersions.aspx?Table=FileDefinition_ProductVersions&amp;ProductVersions_FileDefinitionID={0}" DataNavigateUrlFields="FileDefinitionID," Visible="false"></asp:HyperLinkField>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetFileDefinition" ID="FileDefinitionsDataSource" DataObjectTypeName="WebUI.Admin.FileDefinition" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="FileDefinitionID" QueryStringField="FileDefinitionID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
