<%@ Page Inherits="WebUI.Admin.AffiliateBooksPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="AffiliateBooks" Codebehind="AffiliateBooks.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>AffiliateBooks</h1>
<asp:GridView runat="server" DataSourceID="AffiliateBooksDataSource" ID="AffiliateBooksGridView" AllowSorting="True" EmptyDataText="No records were returned." AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="BookID"  OnRowUpdating="AffiliateBooksGridView_RowUpdating"><Columns>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
<asp:BoundField ReadOnly="True" DataField="BookID" InsertVisible="False" SortExpression="BookID" HeaderText="BookID"></asp:BoundField>
<asp:BoundField DataField="BookName" SortExpression="BookName" HeaderText="BookName"></asp:BoundField>
<asp:BoundField DataField="BookDescription" SortExpression="BookDescription" HeaderText="BookDescription"></asp:BoundField>
<asp:BoundField DataField="AffiliateBookUrl" SortExpression="AffiliateBookUrl" HeaderText="AffiliateBookUrl"></asp:BoundField>
<asp:BoundField DataField="BookCounter" SortExpression="BookCounter" HeaderText="BookCounter"></asp:BoundField>
<asp:BoundField DataField="BookISBN" SortExpression="BookISBN" HeaderText="BookISBN"></asp:BoundField>
<asp:BoundField DataField="BookAuthors" SortExpression="BookAuthors" HeaderText="BookAuthors"></asp:BoundField>
<asp:BoundField DataField="BookPublisher" SortExpression="BookPublisher" HeaderText="BookPublisher"></asp:BoundField>
<asp:BoundField DataField="BookPublishDate" SortExpression="BookPublishDate" HeaderText="BookPublishDate" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="BookFormat" SortExpression="BookFormat" HeaderText="BookFormat"></asp:BoundField>
<asp:BoundField DataField="BookPages" SortExpression="BookPages" HeaderText="BookPages"></asp:BoundField>
<asp:BoundField DataField="DateCreated" SortExpression="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" SortExpression="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
    <asp:TemplateField HeaderText="DateUpdated" SortExpression="DateUpdated">
        <EditItemTemplate>
            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DateUpdated") %>'></asp:TextBox>
        </EditItemTemplate>
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Bind("DateUpdated", "{0:G}") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
<asp:BoundField DataField="UpdatedBy" SortExpression="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View ProductAffiliateBooks" DataNavigateUrlFormatString="ProductAffiliateBooks.aspx?Table=AffiliateBook_ProductAffiliateBooks&amp;ProductAffiliateBooks_BookID={0}" DataNavigateUrlFields="BookID," Visible="false"  ></asp:HyperLinkField>
<asp:HyperLinkField Text="View Details" DataNavigateUrlFormatString="AffiliateBookDetail.aspx?BookID={0}" DataNavigateUrlFields="BookID"></asp:HyperLinkField>
</Columns>
</asp:GridView>

<blinq:PageDataSource runat="server" SelectCountMethod="GetAllAffiliateBooksCount" DeleteMethod="Delete" ConflictDetection="CompareAllValues" SortParameterName="sortExpression" SelectMethod="GetAllAffiliateBooks" ID="AffiliateBooksDataSource" DataObjectTypeName="WebUI.Admin.AffiliateBook" EnablePaging="True" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

        <div class="link">
        <asp:HyperLink runat="server" ID="NewRecordLink" NavigateUrl="NewAffiliateBook.aspx">Create New AffiliateBook</asp:HyperLink>

        </div>    
    </div>
</asp:Content>
