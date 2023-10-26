<%@ Page Inherits="WebUI.Admin.NewSysdiagramPage" Language="C#" MasterPageFile="Masters/Diagnostics.master" Title="New Sysdiagram" Codebehind="NewSysdiagram.aspx.cs" %>
<%@ Register TagPrefix="blinq" Assembly="PageDataSource" Namespace="Microsoft.Web.UI.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagePlaceHolder" Runat="Server">
   <div class="pagecontent">
        <h1>New Sysdiagram</h1>      
<asp:HyperLink runat="server" ID="ViewAllLink" NavigateUrl="Sysdiagrams.aspx">Show All Sysdiagrams</asp:HyperLink>
<br />
<asp:DetailsView runat="server" DefaultMode="Insert" PageIndex="-1" DataSourceID="SysdiagramsDataSource" EmptyDataText="The requested record was not found." ID="SysdiagramsDetailsView" AutoGenerateRows="False" DataKeyNames="DiagramId"><Fields>
<asp:BoundField DataField="Name" HeaderText="Name"></asp:BoundField>
<asp:BoundField DataField="PrincipalId" HeaderText="PrincipalId"></asp:BoundField>
<asp:BoundField ReadOnly="True" DataField="DiagramId" InsertVisible="False" HeaderText="DiagramId"></asp:BoundField>
<asp:BoundField DataField="Version" HeaderText="Version"></asp:BoundField>
<asp:CommandField CancelText="Clear Values" ShowInsertButton="True"></asp:CommandField>
</Fields>
</asp:DetailsView>

<blinq:PageDataSource runat="server" DeleteMethod="Delete" EnableCaching="True" ConflictDetection="CompareAllValues" InsertMethod="Insert" SelectMethod="GetSysdiagram" ID="SysdiagramsDataSource" DataObjectTypeName="WebUI.Admin.Sysdiagram" UpdateMethod="Update" OldValuesParameterFormatString="original_{0}"><SelectParameters>
<asp:QueryStringParameter ConvertEmptyStringToNull="False" Name="DiagramId" QueryStringField="DiagramId"></asp:QueryStringParameter>
</SelectParameters>
</blinq:PageDataSource>

    </div>
</asp:Content>
