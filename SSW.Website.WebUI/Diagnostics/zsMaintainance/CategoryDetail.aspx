<%@ Page Inherits="WebUI.Admin.CategoryDetailPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="Category Detail" Codebehind="CategoryDetail.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>Category Detail</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="Categories.aspx">Show All Categories</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DataSourceID="CategoriesDataSource" EmptyDataText="The requested record was not found." ID="CategoriesDetailsView" AutoGenerateRows="False" DataKeyNames="CategoryID"  OnItemUpdating="CategoriesDetailsView_ItemUpdating"><Fields>
<asp:BoundField ReadOnly="True" DataField="CategoryID" InsertVisible="False" HeaderText="CategoryID"></asp:BoundField>
<asp:BoundField DataField="CategoryName" InsertVisible="False" HeaderText="CategoryName"></asp:BoundField>
<asp:BoundField DataField="DateCreated" InsertVisible="False" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" InsertVisible="False" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" InsertVisible="False" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" InsertVisible="False" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View ProductGroups" DataNavigateUrlFormatString="ProductGroups.aspx?Table=Category_ProductGroups&amp;ProductGroups_CategoryID={0}" DataNavigateUrlFields="CategoryID,"  Visible="false"></asp:HyperLinkField>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetCategory" ID="CategoriesDataSource" DataObjectTypeName="WebUI.Admin.Category" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="CategoryID" QueryStringField="CategoryID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
