<%@ Page Inherits="WebUI.Admin.CategoriesPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="Categories" Codebehind="Categories.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>Categories</h1>
<asp:GridView runat="server" DataSourceID="CategoriesDataSource" ID="CategoriesGridView" AllowSorting="True" EmptyDataText="No records were returned." AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="CategoryID"  OnRowUpdating="CategoriesGridView_RowUpdating"><Columns>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
<asp:BoundField ReadOnly="True" DataField="CategoryID" InsertVisible="False" SortExpression="CategoryID" HeaderText="CategoryID"></asp:BoundField>
<asp:BoundField DataField="CategoryName" SortExpression="CategoryName" HeaderText="CategoryName"></asp:BoundField>
<asp:BoundField DataField="DateCreated" SortExpression="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" SortExpression="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" SortExpression="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" SortExpression="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View ProductGroups" DataNavigateUrlFormatString="ProductGroups.aspx?Table=Category_ProductGroups&amp;ProductGroups_CategoryID={0}" DataNavigateUrlFields="CategoryID,"  Visible="false"></asp:HyperLinkField>
<asp:HyperLinkField Text="View Details" DataNavigateUrlFormatString="CategoryDetail.aspx?CategoryID={0}" DataNavigateUrlFields="CategoryID"></asp:HyperLinkField>
</Columns>
</asp:GridView>

<blinq:PageDataSource runat="server" SelectCountMethod="GetAllCategoriesCount" DeleteMethod="Delete" ConflictDetection="CompareAllValues" SortParameterName="sortExpression" SelectMethod="GetAllCategories" ID="CategoriesDataSource" DataObjectTypeName="WebUI.Admin.Category" EnablePaging="True" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

        <div class="link">
        <asp:HyperLink runat="server" ID="NewRecordLink" NavigateUrl="NewCategory.aspx">Create New Category</asp:HyperLink>

        </div>    
    </div>
</asp:Content>
