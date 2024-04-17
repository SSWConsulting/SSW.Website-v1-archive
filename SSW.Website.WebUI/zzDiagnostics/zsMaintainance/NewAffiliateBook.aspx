<%@ Page Inherits="WebUI.Admin.NewAffiliateBookPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="New AffiliateBook" Codebehind="NewAffiliateBook.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>New AffiliateBook</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="AffiliateBooks.aspx">Show All AffiliateBooks</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DefaultMode="Insert" DataSourceID="AffiliateBooksDataSource" EmptyDataText="The requested record was not found." ID="AffiliateBooksDetailsView" AutoGenerateRows="False" DataKeyNames="BookID" OnItemInserting="AffiliateBooksDetailsView_ItemInserting" ><Fields>
<asp:BoundField ReadOnly="True" DataField="BookID" InsertVisible="False" HeaderText="BookID"></asp:BoundField>
<asp:BoundField DataField="BookName" HeaderText="BookName"></asp:BoundField>
<asp:BoundField DataField="BookDescription" HeaderText="BookDescription"></asp:BoundField>
<asp:BoundField DataField="AffiliateBookUrl" HeaderText="AffiliateBookUrl"></asp:BoundField>
<asp:BoundField DataField="BookCounter" HeaderText="BookCounter"></asp:BoundField>
<asp:BoundField DataField="BookISBN" HeaderText="BookISBN"></asp:BoundField>
<asp:BoundField DataField="BookAuthors" HeaderText="BookAuthors"></asp:BoundField>
<asp:BoundField DataField="BookPublisher" HeaderText="BookPublisher"></asp:BoundField>
<asp:BoundField DataField="BookPublishDate" HeaderText="BookPublishDate" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="BookFormat" HeaderText="BookFormat"></asp:BoundField>
<asp:BoundField DataField="BookPages" HeaderText="BookPages"></asp:BoundField>
<asp:BoundField DataField="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View ProductAffiliateBooks" DataNavigateUrlFormatString="ProductAffiliateBooks.aspx?Table=AffiliateBook_ProductAffiliateBooks&amp;ProductAffiliateBooks_BookID={0}" DataNavigateUrlFields="BookID," Visible="false"></asp:HyperLinkField>
<asp:CommandField CancelText="Clear Values" ShowInsertButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetAffiliateBook" ID="AffiliateBooksDataSource" DataObjectTypeName="WebUI.Admin.AffiliateBook" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="BookID" QueryStringField="BookID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
