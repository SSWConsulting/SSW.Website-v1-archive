<%@ Page Inherits="WebUI.Admin.AffiliateSoftwaresPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="AffiliateSoftwares" Codebehind="AffiliateSoftwares.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>AffiliateSoftwares</h1>
<asp:GridView runat="server" DataSourceID="AffiliateSoftwaresDataSource" ID="AffiliateSoftwaresGridView" AllowSorting="True" EmptyDataText="No records were returned." AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="SoftwareID" OnRowUpdating="AffiliateSoftwaresGridView_RowUpdating"><Columns>
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
<asp:BoundField ReadOnly="True" DataField="SoftwareID" InsertVisible="False" SortExpression="SoftwareID" HeaderText="SoftwareID"></asp:BoundField>
<asp:BoundField DataField="SoftwareName" SortExpression="SoftwareName" HeaderText="SoftwareName"></asp:BoundField>
<asp:BoundField DataField="SoftwareDescription" SortExpression="SoftwareDescription" HeaderText="SoftwareDescription"></asp:BoundField>
<asp:BoundField DataField="AffiliatedSoftwareUrl" SortExpression="AffiliatedSoftwareUrl" HeaderText="AffiliatedSoftwareUrl"></asp:BoundField>
<asp:BoundField DataField="SoftwareImage" SortExpression="SoftwareImage" HeaderText="SoftwareImage"></asp:BoundField>
<asp:BoundField DataField="SoftwareCounter" SortExpression="SoftwareCounter" HeaderText="SoftwareCounter"></asp:BoundField>
<asp:BoundField DataField="DateCreated" SortExpression="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" SortExpression="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" SortExpression="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" SortExpression="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View ProductAffiliateSoftwares" DataNavigateUrlFormatString="ProductAffiliateSoftwares.aspx?Table=AffiliateSoftware_ProductAffiliateSoftwares&amp;ProductAffiliateSoftwares_SoftwareID={0}" DataNavigateUrlFields="SoftwareID,"  Visible="false"></asp:HyperLinkField>
<asp:HyperLinkField Text="View Details" DataNavigateUrlFormatString="AffiliateSoftwareDetail.aspx?SoftwareID={0}" DataNavigateUrlFields="SoftwareID"></asp:HyperLinkField>
</Columns>
</asp:GridView>

<blinq:PageDataSource runat="server" SelectCountMethod="GetAllAffiliateSoftwaresCount" DeleteMethod="Delete" ConflictDetection="CompareAllValues" SortParameterName="sortExpression" SelectMethod="GetAllAffiliateSoftwares" ID="AffiliateSoftwaresDataSource" DataObjectTypeName="WebUI.Admin.AffiliateSoftware" EnablePaging="True" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

        <div class="link">
        <asp:HyperLink runat="server" ID="NewRecordLink" NavigateUrl="NewAffiliateSoftware.aspx">Create New AffiliateSoftware</asp:HyperLink>

        </div>    
    </div>
</asp:Content>
