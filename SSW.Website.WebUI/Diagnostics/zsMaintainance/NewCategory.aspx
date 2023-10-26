<%@ Page Inherits="WebUI.Admin.NewCategoryPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="New Category" Codebehind="NewCategory.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>New Category</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="Categories.aspx">Show All Categories</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DefaultMode="Insert" DataSourceID="CategoriesDataSource" EmptyDataText="The requested record was not found." ID="CategoriesDetailsView" AutoGenerateRows="False" DataKeyNames="CategoryID"  OnItemInserting="CategoriesDetailsView_ItemInserting"><Fields>
<asp:BoundField ReadOnly="True" DataField="CategoryID" InsertVisible="False" HeaderText="CategoryID"></asp:BoundField>
<asp:BoundField DataField="CategoryName" HeaderText="CategoryName"></asp:BoundField>
<asp:BoundField DataField="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View ProductGroups" DataNavigateUrlFormatString="ProductGroups.aspx?Table=Category_ProductGroups&amp;ProductGroups_CategoryID={0}" DataNavigateUrlFields="CategoryID,"  Visible="false"></asp:HyperLinkField>
<asp:CommandField CancelText="Clear Values" ShowInsertButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetCategory" ID="CategoriesDataSource" DataObjectTypeName="WebUI.Admin.Category" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="CategoryID" QueryStringField="CategoryID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
