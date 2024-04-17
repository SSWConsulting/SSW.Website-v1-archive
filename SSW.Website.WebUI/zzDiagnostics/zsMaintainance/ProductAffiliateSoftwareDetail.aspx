<%@ Page Inherits="WebUI.Admin.ProductAffiliateSoftwareDetailPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="ProductAffiliateSoftware Detail" Codebehind="ProductAffiliateSoftwareDetail.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>ProductAffiliateSoftware Detail</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="ProductAffiliateSoftwares.aspx">Show All ProductAffiliateSoftwares</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DataSourceID="ProductAffiliateSoftwaresDataSource" EmptyDataText="The requested record was not found." ID="ProductAffiliateSoftwaresDetailsView" AutoGenerateRows="False" DataKeyNames="GroupID,SoftwareID"  OnItemUpdating="ProductAffiliateSoftwaresDetailsView_ItemUpdating"><Fields>
<asp:TemplateField SortExpression="GroupID" HeaderText="GroupID"><ItemTemplate>
<asp:HyperLink ID="GroupIDLink" runat="server" Text='<%# Eval("GroupID") %>' NavigateUrl='<%# Eval("GroupID", "ProductGroupDetail.aspx?GroupID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField SortExpression="SoftwareID" HeaderText="SoftwareID"><ItemTemplate>
<asp:HyperLink ID="SoftwareIDLink" runat="server" Text='<%# Eval("SoftwareID") %>' NavigateUrl='<%# Eval("SoftwareID", "AffiliateSoftwareDetail.aspx?SoftwareID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="DateCreated" InsertVisible="False" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" InsertVisible="False" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" InsertVisible="False" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" InsertVisible="False" HeaderText="UpdatedBy"></asp:BoundField>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetProductAffiliateSoftware" ID="ProductAffiliateSoftwaresDataSource" DataObjectTypeName="WebUI.Admin.ProductAffiliateSoftware" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="GroupID" QueryStringField="GroupID"></asp:QueryStringParameter>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="SoftwareID" QueryStringField="SoftwareID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
