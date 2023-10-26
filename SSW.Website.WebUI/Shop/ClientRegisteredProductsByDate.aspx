<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" AutoEventWireup="false" Inherits="SSW.Website.WebUI.Shop.ClientRegisteredProductsByDate" CodeBehind="ClientRegisteredProductsByDate.aspx.cs" Title="Registered Products by Date" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <h1>Your Registered Products by Date</h1>
</asp:Content>

<asp:Content ID="sidebar" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <div id="shop-container">
        <div id="contentPane">
            <script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script>
            <script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>
            <script language="javascript" type="text/javascript">
				<!--
    function OnLoadReport(rep) {
        var Temp = null;
    }
    //-->
            </script>
            <rsweb:ReportViewer ID="reportViewer" runat="server" ProcessingMode="Remote" Width="100%" SizeToReportContent="True" AsyncRendering="false">
                <ServerReport ReportServerUrl="http://reports.internal.ssw.com.au/reportserver" ReportPath="/TimeProOnlineReports/ClientRegisteredProductsByDate" />
            </rsweb:ReportViewer>
        </div>
    </div>
</asp:Content>
