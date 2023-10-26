<%@ Page Inherits="WebUI.Admin.ProductAffiliateBooksPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="ProductAffiliateBooks" Codebehind="ProductAffiliateBooks.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>ProductAffiliateBooks</h1>
<asp:GridView runat="server" DataSourceID="ProductAffiliateBooksDataSource" ID="ProductAffiliateBooksGridView" AllowSorting="True" EmptyDataText="No records were returned." AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="ProductID,BookID"  OnRowUpdating="ProductAffiliateBooksGridView_RowUpdating"><Columns>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
<asp:TemplateField SortExpression="ProductID" HeaderText="ProductID"><ItemTemplate>
<asp:HyperLink ID="ProductIDLink" runat="server" Text='<%# Eval("ProductID") %>' NavigateUrl='<%# Eval("ProductID", "ProductDetail.aspx?ProductID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField SortExpression="BookID" HeaderText="BookID"><ItemTemplate>
<asp:HyperLink ID="BookIDLink" runat="server" Text='<%# Eval("BookID") %>' NavigateUrl='<%# Eval("BookID", "AffiliateBookDetail.aspx?BookID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="DateCreated" SortExpression="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" SortExpression="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" SortExpression="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" SortExpression="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View Details" DataNavigateUrlFormatString="ProductAffiliateBookDetail.aspx?ProductID={0}&amp;BookID={1}" DataNavigateUrlFields="ProductID,BookID"></asp:HyperLinkField>
</Columns>
</asp:GridView>

<blinq:PageDataSource runat="server" SelectCountMethod="GetProductAffiliateBooksCount" DeleteMethod="Delete" ConflictDetection="CompareAllValues" SortParameterName="sortExpression" SelectMethod="GetProductAffiliateBooks" ID="ProductAffiliateBooksDataSource" DataObjectTypeName="WebUI.Admin.ProductAffiliateBook" EnablePaging="True" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter Name="tableName" QueryStringField="Table"></asp:QueryStringParameter>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="ProductAffiliateBooks_ProductID" QueryStringField="ProductAffiliateBooks_ProductID"></asp:QueryStringParameter>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="ProductAffiliateBooks_BookID" QueryStringField="ProductAffiliateBooks_BookID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

        <div class="link">
        <asp:HyperLink runat="server" ID="NewRecordLink" NavigateUrl="NewProductAffiliateBook.aspx">Create New ProductAffiliateBook</asp:HyperLink>

        </div>    
    </div>
</asp:Content>
