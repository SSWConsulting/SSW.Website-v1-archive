<%@ Page Inherits="WebUI.Admin.ProductAffiliateBookDetailPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="ProductAffiliateBook Detail" Codebehind="ProductAffiliateBookDetail.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>ProductAffiliateBook Detail</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="ProductAffiliateBooks.aspx">Show All ProductAffiliateBooks</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DataSourceID="ProductAffiliateBooksDataSource" EmptyDataText="The requested record was not found." ID="ProductAffiliateBooksDetailsView" AutoGenerateRows="False" DataKeyNames="ProductID,BookID"   OnItemUpdating="ProductAffiliateBooksDetailsView_ItemUpdating"><Fields>
<asp:TemplateField SortExpression="ProductID" HeaderText="ProductID"><ItemTemplate>
<asp:HyperLink ID="ProductIDLink" runat="server" Text='<%# Eval("ProductID") %>' NavigateUrl='<%# Eval("ProductID", "ProductDetail.aspx?ProductID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField SortExpression="BookID" HeaderText="BookID"><ItemTemplate>
<asp:HyperLink ID="BookIDLink" runat="server" Text='<%# Eval("BookID") %>' NavigateUrl='<%# Eval("BookID", "AffiliateBookDetail.aspx?BookID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="DateCreated" InsertVisible="False" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" InsertVisible="False" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" InsertVisible="False" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" InsertVisible="False" HeaderText="UpdatedBy"></asp:BoundField>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetProductAffiliateBook" ID="ProductAffiliateBooksDataSource" DataObjectTypeName="WebUI.Admin.ProductAffiliateBook" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="ProductID" QueryStringField="ProductID"></asp:QueryStringParameter>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="BookID" QueryStringField="BookID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
