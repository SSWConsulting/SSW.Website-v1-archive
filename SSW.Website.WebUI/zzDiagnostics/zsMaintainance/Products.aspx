<%@ Page Inherits="WebUI.Admin.ProductsPage" Language="C#" MasterPageFile="Masters/Diagnostics.master"  Title="Products" Codebehind="Products.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>Products</h1>
<asp:GridView runat="server" DataSourceID="ProductsDataSource" ID="ProductsGridView" AllowSorting="True" EmptyDataText="No records were returned." AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="ProductID"  OnRowUpdating="ProductsGridView_RowUpdating"><Columns>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
<asp:BoundField ReadOnly="True" DataField="ProductID" InsertVisible="False" SortExpression="ProductID" HeaderText="ProductID"></asp:BoundField>
<asp:BoundField DataField="ProductName" SortExpression="ProductName" HeaderText="ProductName"></asp:BoundField>
<asp:BoundField DataField="ProductDescription" SortExpression="ProductDescription" HeaderText="ProductDescription"></asp:BoundField>
<asp:BoundField DataField="ProductLatest" SortExpression="ProductLatest" HeaderText="ProductLatest"></asp:BoundField>
<asp:TemplateField SortExpression="GroupID" HeaderText="GroupID"><EditItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllProductGroups" ID="ProductGroup_GroupIDDataSource" DataObjectTypeName="WebUI.Admin.ProductGroup" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="ProductGroup_GroupIDList" DataTextField="GroupID" DataValueField="GroupID" SelectedValue='<%# Bind("GroupID") %>' DataSourceID="ProductGroup_GroupIDDataSource" >
</asp:DropDownList>
</EditItemTemplate>
<ItemTemplate>
<asp:HyperLink ID="GroupIDLink" runat="server" Text='<%# Eval("GroupID") %>' NavigateUrl='<%# Eval("GroupID", "ProductGroupDetail.aspx?GroupID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="DateCreated" SortExpression="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" SortExpression="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" SortExpression="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" SortExpression="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View ProductAffiliateBooks" DataNavigateUrlFormatString="ProductAffiliateBooks.aspx?Table=Product_ProductAffiliateBooks&amp;ProductAffiliateBooks_ProductID={0}" DataNavigateUrlFields="ProductID," Visible="false" ></asp:HyperLinkField>
<asp:HyperLinkField Text="View ProductVersions" DataNavigateUrlFormatString="ProductVersions.aspx?Table=Product_ProductVersions&amp;ProductVersions_ProductID={0}" DataNavigateUrlFields="ProductID," Visible="false"></asp:HyperLinkField>
<asp:HyperLinkField Text="View Details" DataNavigateUrlFormatString="ProductDetail.aspx?ProductID={0}" DataNavigateUrlFields="ProductID"></asp:HyperLinkField>
</Columns>
</asp:GridView>

<blinq:PageDataSource runat="server" SelectCountMethod="GetProductsCount" DeleteMethod="Delete" ConflictDetection="CompareAllValues" SortParameterName="sortExpression" SelectMethod="GetProducts" ID="ProductsDataSource" DataObjectTypeName="WebUI.Admin.Product" EnablePaging="True" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter Name="tableName" QueryStringField="Table"></asp:QueryStringParameter>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="Products_GroupID" QueryStringField="Products_GroupID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

        <div class="link">
        <asp:HyperLink runat="server" ID="NewRecordLink" NavigateUrl="NewProduct.aspx">Create New Product</asp:HyperLink>

        </div>    
    </div>
</asp:Content>
