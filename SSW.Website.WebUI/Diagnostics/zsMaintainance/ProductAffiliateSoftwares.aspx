<%@ Page Inherits="WebUI.Admin.ProductAffiliateSoftwaresPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="ProductAffiliateSoftwares" Codebehind="ProductAffiliateSoftwares.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>ProductAffiliateSoftwares</h1>
<asp:GridView runat="server" DataSourceID="ProductAffiliateSoftwaresDataSource" ID="ProductAffiliateSoftwaresGridView" AllowSorting="True" EmptyDataText="No records were returned." AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="GroupID,SoftwareID"  OnRowUpdating="ProductAffiliateSoftwaresGridView_RowUpdating"><Columns>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
<asp:TemplateField SortExpression="GroupID" HeaderText="GroupID"><ItemTemplate>
<asp:HyperLink ID="GroupIDLink" runat="server" Text='<%# Eval("GroupID") %>' NavigateUrl='<%# Eval("GroupID", "ProductGroupDetail.aspx?GroupID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField SortExpression="SoftwareID" HeaderText="SoftwareID"><ItemTemplate>
<asp:HyperLink ID="SoftwareIDLink" runat="server" Text='<%# Eval("SoftwareID") %>' NavigateUrl='<%# Eval("SoftwareID", "AffiliateSoftwareDetail.aspx?SoftwareID={0}")%>' />
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="DateCreated" SortExpression="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" SortExpression="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" SortExpression="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" SortExpression="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View Details" DataNavigateUrlFormatString="ProductAffiliateSoftwareDetail.aspx?GroupID={0}&amp;SoftwareID={1}" DataNavigateUrlFields="GroupID,SoftwareID"></asp:HyperLinkField>
</Columns>
</asp:GridView>

<blinq:PageDataSource runat="server" SelectCountMethod="GetProductAffiliateSoftwaresCount" DeleteMethod="Delete" ConflictDetection="CompareAllValues" SortParameterName="sortExpression" SelectMethod="GetProductAffiliateSoftwares" ID="ProductAffiliateSoftwaresDataSource" DataObjectTypeName="WebUI.Admin.ProductAffiliateSoftware" EnablePaging="True" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter Name="tableName" QueryStringField="Table"></asp:QueryStringParameter>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="ProductAffiliateSoftwares_SoftwareID" QueryStringField="ProductAffiliateSoftwares_SoftwareID"></asp:QueryStringParameter>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="ProductAffiliateSoftwares_GroupID" QueryStringField="ProductAffiliateSoftwares_GroupID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

        <div class="link">
        <asp:HyperLink runat="server" ID="NewRecordLink" NavigateUrl="NewProductAffiliateSoftware.aspx">Create New ProductAffiliateSoftware</asp:HyperLink>

        </div>    
    </div>
</asp:Content>
