<%@ Page Inherits="WebUI.Admin.ProductDetailPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="Product Detail" Codebehind="ProductDetail.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>Product Detail</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="Products.aspx">Show All Products</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DataSourceID="ProductsDataSource" EmptyDataText="The requested record was not found." ID="ProductsDetailsView" AutoGenerateRows="False" DataKeyNames="ProductID"  OnItemUpdating="ProductsDetailsView_ItemUpdating"><Fields>
<asp:BoundField ReadOnly="True" DataField="ProductID" InsertVisible="False" HeaderText="ProductID"></asp:BoundField>
<asp:BoundField DataField="ProductName" InsertVisible="False" HeaderText="ProductName"></asp:BoundField>
<asp:BoundField DataField="ProductDescription" InsertVisible="False" HeaderText="ProductDescription"></asp:BoundField>
<asp:BoundField DataField="ProductLatest" InsertVisible="False" HeaderText="ProductLatest"></asp:BoundField>
<asp:TemplateField SortExpression="GroupID" HeaderText="GroupID"><EditItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllProductGroups" ID="ProductGroup_GroupIDDataSource" DataObjectTypeName="WebUI.Admin.ProductGroup" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="ProductGroup_GroupIDList" DataTextField="GroupID" DataValueField="GroupID" SelectedValue='<%# Bind("GroupID") %>' DataSourceID="ProductGroup_GroupIDDataSource" >
</asp:DropDownList>
</EditItemTemplate>
<ItemTemplate>
<asp:HyperLink ID="GroupIDLink" runat="server" Text='<%# Eval("GroupID") %>' NavigateUrl='<%# Eval("GroupID", "ProductGroupDetail.aspx?GroupID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="DateCreated" InsertVisible="False" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" InsertVisible="False" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" InsertVisible="False" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" InsertVisible="False" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View ProductAffiliateBooks" DataNavigateUrlFormatString="ProductAffiliateBooks.aspx?Table=Product_ProductAffiliateBooks&amp;ProductAffiliateBooks_ProductID={0}" DataNavigateUrlFields="ProductID," Visible="false" ></asp:HyperLinkField>
<asp:HyperLinkField Text="View ProductVersions" DataNavigateUrlFormatString="ProductVersions.aspx?Table=Product_ProductVersions&amp;ProductVersions_ProductID={0}" DataNavigateUrlFields="ProductID," Visible="false"></asp:HyperLinkField>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetProduct" ID="ProductsDataSource" DataObjectTypeName="WebUI.Admin.Product" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="ProductID" QueryStringField="ProductID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
