<%@ Page Inherits="WebUI.Admin.NewProductAffiliateSoftwarePage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="New ProductAffiliateSoftware" Codebehind="NewProductAffiliateSoftware.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>New ProductAffiliateSoftware</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="ProductAffiliateSoftwares.aspx">Show All ProductAffiliateSoftwares</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DefaultMode="Insert" DataSourceID="ProductAffiliateSoftwaresDataSource" EmptyDataText="The requested record was not found." ID="ProductAffiliateSoftwaresDetailsView" AutoGenerateRows="False" DataKeyNames="GroupID,SoftwareID"  OnItemInserting="ProductAffiliateSoftwaresDetailsView_ItemInserting"><Fields>
<asp:TemplateField SortExpression="GroupID" HeaderText="GroupID"><InsertItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllProductGroups" ID="ProductGroup_GroupIDDataSource" DataObjectTypeName="WebUI.Admin.ProductGroup" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="ProductGroup_GroupIDList" DataTextField="GroupID" DataValueField="GroupID" SelectedValue='<%# Bind("GroupID") %>' DataSourceID="ProductGroup_GroupIDDataSource" >
</asp:DropDownList>
</InsertItemTemplate>
</asp:TemplateField>
<asp:TemplateField SortExpression="SoftwareID" HeaderText="SoftwareID"><InsertItemTemplate>
<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" SelectMethod="GetAllAffiliateSoftwares" ID="AffiliateSoftware_SoftwareIDDataSource" DataObjectTypeName="WebUI.Admin.AffiliateSoftware" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"></blinq:PageDataSource>

<asp:DropDownList runat="server" ID="AffiliateSoftware_SoftwareIDList" DataTextField="SoftwareID" DataValueField="SoftwareID" SelectedValue='<%# Bind("SoftwareID") %>' DataSourceID="AffiliateSoftware_SoftwareIDDataSource" >
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

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetProductAffiliateSoftware" ID="ProductAffiliateSoftwaresDataSource" DataObjectTypeName="WebUI.Admin.ProductAffiliateSoftware" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="GroupID" QueryStringField="GroupID"></asp:QueryStringParameter>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="SoftwareID" QueryStringField="SoftwareID"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
