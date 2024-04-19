<%@ Page Inherits="WebUI.Admin.AffiliateBookDetailPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="AffiliateBook Detail" Codebehind="AffiliateBookDetail.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>AffiliateBook Detail</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="AffiliateBooks.aspx">Show All AffiliateBooks</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DataSourceID="AffiliateBooksDataSource" EmptyDataText="The requested record was not found." ID="AffiliateBooksDetailsView" AutoGenerateRows="False" DataKeyNames="BookID" OnItemUpdating="AffiliateBooksDetailsView_ItemUpdating"><Fields>
<asp:BoundField ReadOnly="True" DataField="BookID" InsertVisible="False" HeaderText="BookID"></asp:BoundField>
<asp:BoundField DataField="BookName" InsertVisible="False" HeaderText="BookName"></asp:BoundField>
<asp:BoundField DataField="BookDescription" InsertVisible="False" HeaderText="BookDescription"></asp:BoundField>
<asp:BoundField DataField="AffiliateBookUrl" InsertVisible="False" HeaderText="AffiliateBookUrl"></asp:BoundField>
<asp:BoundField DataField="BookCounter" InsertVisible="False" HeaderText="BookCounter"></asp:BoundField>
<asp:BoundField DataField="BookISBN" InsertVisible="False" HeaderText="BookISBN"></asp:BoundField>
<asp:BoundField DataField="BookAuthors" InsertVisible="False" HeaderText="BookAuthors"></asp:BoundField>
<asp:BoundField DataField="BookPublisher" InsertVisible="False" HeaderText="BookPublisher"></asp:BoundField>
<asp:BoundField DataField="BookPublishDate" InsertVisible="False" HeaderText="BookPublishDate" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="BookFormat" InsertVisible="False" HeaderText="BookFormat"></asp:BoundField>
<asp:BoundField DataField="BookPages" InsertVisible="False" HeaderText="BookPages"></asp:BoundField>
<asp:BoundField DataField="DateCreated" InsertVisible="False" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" InsertVisible="False" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" InsertVisible="False" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" InsertVisible="False" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View ProductAffiliateBooks" DataNavigateUrlFormatString="ProductAffiliateBooks.aspx?Table=AffiliateBook_ProductAffiliateBooks&amp;ProductAffiliateBooks_BookID={0}" DataNavigateUrlFields="BookID," Visible="false"  ></asp:HyperLinkField>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetAffiliateBook" ID="AffiliateBooksDataSource" DataObjectTypeName="WebUI.Admin.AffiliateBook" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="BookID" QueryStringField="BookID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
