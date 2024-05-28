<%@ Page Inherits="WebUI.Admin.NewProductAffiliateBookPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="New ProductAffiliateBook" Codebehind="NewProductAffiliateBook.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>New ProductAffiliateBook</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="ProductAffiliateBooks.aspx">Show All ProductAffiliateBooks</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DefaultMode="Insert" DataSourceID="ProductAffiliateBooksDataSource" EmptyDataText="The requested record was not found." ID="ProductAffiliateBooksDetailsView" AutoGenerateRows="False" DataKeyNames="ProductID,BookID"  OnItemInserting="ProductAffiliateBooksDetailsView_ItemInserting"><Fields>
<asp:TemplateField SortExpression="ProductID" HeaderText="ProductID"><InsertItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllProducts" ID="Product_ProductIDDataSource" DataObjectTypeName="WebUI.Admin.Product" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="Product_ProductIDList" DataTextField="ProductID" DataValueField="ProductID" SelectedValue='<%# Bind("ProductID") %>' DataSourceID="Product_ProductIDDataSource" >
</asp:DropDownList>
</InsertItemTemplate>
</asp:TemplateField>
<asp:TemplateField SortExpression="BookID" HeaderText="BookID"><InsertItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllAffiliateBooks" ID="AffiliateBook_BookIDDataSource" DataObjectTypeName="WebUI.Admin.AffiliateBook" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="AffiliateBook_BookIDList" DataTextField="BookID" DataValueField="BookID" SelectedValue='<%# Bind("BookID") %>' DataSourceID="AffiliateBook_BookIDDataSource" >
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

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetProductAffiliateBook" ID="ProductAffiliateBooksDataSource" DataObjectTypeName="WebUI.Admin.ProductAffiliateBook" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="ProductID" QueryStringField="ProductID"></asp:QueryStringParameter>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="BookID" QueryStringField="BookID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
