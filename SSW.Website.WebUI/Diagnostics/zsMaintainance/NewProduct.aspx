<%@ Page Inherits="WebUI.Admin.NewProductPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="New Product" Codebehind="NewProduct.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>New Product</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="Products.aspx">Show All Products</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DefaultMode="Insert" DataSourceID="ProductsDataSource" EmptyDataText="The requested record was not found." ID="ProductsDetailsView" AutoGenerateRows="False" DataKeyNames="ProductID"  OnItemInserting="ProductsDetailsView_ItemInserting"><Fields>
<asp:BoundField ReadOnly="True" DataField="ProductID" InsertVisible="False" HeaderText="ProductID"></asp:BoundField>
<asp:BoundField DataField="ProductName" HeaderText="ProductName"></asp:BoundField>
<asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription"></asp:BoundField>
<asp:BoundField DataField="ProductLatest" HeaderText="ProductLatest"></asp:BoundField>
<asp:TemplateField SortExpression="GroupID" HeaderText="GroupID"><InsertItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllProductGroups" ID="ProductGroup_GroupIDDataSource" DataObjectTypeName="WebUI.Admin.ProductGroup" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="ProductGroup_GroupIDList" DataTextField="GroupID" DataValueField="GroupID" SelectedValue='<%# Bind("GroupID") %>' DataSourceID="ProductGroup_GroupIDDataSource" >
</asp:DropDownList>
</InsertItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View ProductAffiliateBooks" DataNavigateUrlFormatString="ProductAffiliateBooks.aspx?Table=Product_ProductAffiliateBooks&amp;ProductAffiliateBooks_ProductID={0}" DataNavigateUrlFields="ProductID," Visible="false" ></asp:HyperLinkField>
<asp:HyperLinkField Text="View ProductVersions" DataNavigateUrlFormatString="ProductVersions.aspx?Table=Product_ProductVersions&amp;ProductVersions_ProductID={0}" DataNavigateUrlFields="ProductID," Visible="false"></asp:HyperLinkField>
<asp:CommandField CancelText="Clear Values" ShowInsertButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetProduct" ID="ProductsDataSource" DataObjectTypeName="WebUI.Admin.Product" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="ProductID" QueryStringField="ProductID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
