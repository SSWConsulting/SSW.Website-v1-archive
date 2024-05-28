<%@ Page Inherits="WebUI.Admin.NewAffiliateSoftwarePage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="New AffiliateSoftware" Codebehind="NewAffiliateSoftware.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>New AffiliateSoftware</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="AffiliateSoftwares.aspx">Show All AffiliateSoftwares</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DefaultMode="Insert" DataSourceID="AffiliateSoftwaresDataSource" EmptyDataText="The requested record was not found." ID="AffiliateSoftwaresDetailsView" AutoGenerateRows="False" DataKeyNames="SoftwareID"  OnItemInserting="AffiliateSoftwaresDetailsView_ItemInserting"><Fields>
<asp:BoundField ReadOnly="True" DataField="SoftwareID" InsertVisible="False" HeaderText="SoftwareID"></asp:BoundField>
<asp:BoundField DataField="SoftwareName" HeaderText="SoftwareName"></asp:BoundField>
<asp:BoundField DataField="SoftwareDescription" HeaderText="SoftwareDescription"></asp:BoundField>
<asp:BoundField DataField="AffiliatedSoftwareUrl" HeaderText="AffiliatedSoftwareUrl"></asp:BoundField>
<asp:BoundField DataField="SoftwareImage" HeaderText="SoftwareImage"></asp:BoundField>
<asp:BoundField DataField="SoftwareCounter" HeaderText="SoftwareCounter"></asp:BoundField>
<asp:BoundField DataField="DateCreated" HeaderText="DateCreated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy"></asp:BoundField>
<asp:BoundField DataField="DateUpdated" HeaderText="DateUpdated" ApplyFormatInEditMode="True" DataFormatString="{0:G}" HtmlEncode="False"></asp:BoundField>
<asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy"></asp:BoundField>
<asp:HyperLinkField Text="View ProductAffiliateSoftwares" DataNavigateUrlFormatString="ProductAffiliateSoftwares.aspx?Table=AffiliateSoftware_ProductAffiliateSoftwares&amp;ProductAffiliateSoftwares_SoftwareID={0}" DataNavigateUrlFields="SoftwareID,"  Visible="false"></asp:HyperLinkField>
<asp:CommandField CancelText="Clear Values" ShowInsertButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetAffiliateSoftware" ID="AffiliateSoftwaresDataSource" DataObjectTypeName="WebUI.Admin.AffiliateSoftware" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="SoftwareID" QueryStringField="SoftwareID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
