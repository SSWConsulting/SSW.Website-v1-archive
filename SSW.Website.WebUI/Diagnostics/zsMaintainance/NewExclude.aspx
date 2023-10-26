<%@ Page Inherits="WebUI.Admin.NewExcludePage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="New Exclude" Codebehind="NewExclude.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>New Exclude</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="Excludes.aspx">Show All Excludes</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DefaultMode="Insert" DataSourceID="ExcludesDataSource" EmptyDataText="The requested record was not found." ID="ExcludesDetailsView" AutoGenerateRows="False" DataKeyNames="ExcludeID"  OnItemInserting="ExcludesDetailsView_ItemInserting"><Fields>
<asp:BoundField ReadOnly="True" DataField="ExcludeID" InsertVisible="False" HeaderText="ExcludeID"></asp:BoundField>
<asp:BoundField DataField="ExcludeName" HeaderText="ExcludeName"></asp:BoundField>
<asp:BoundField DataField="ExcludeDescription" HeaderText="ExcludeDescription"></asp:BoundField>
<asp:BoundField DataField="ExcludeProductName" HeaderText="ExcludeProductName"></asp:BoundField>
<asp:BoundField DataField="ExcludePathContains" HeaderText="ExcludePathContains"></asp:BoundField>
<asp:TemplateField SortExpression="FileDefinitionID" HeaderText="FileDefinitionID"><InsertItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllFileDefinitions" ID="FileDefinition_FileDefinitionIDDataSource" DataObjectTypeName="WebUI.Admin.FileDefinition" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="FileDefinition_FileDefinitionIDList" DataTextField="FileDefinitionID" DataValueField="FileDefinitionID" SelectedValue='<%# Bind("FileDefinitionID") %>' DataSourceID="FileDefinition_FileDefinitionIDDataSource" >
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

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetExclude" ID="ExcludesDataSource" DataObjectTypeName="WebUI.Admin.Exclude" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="ExcludeID" QueryStringField="ExcludeID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
