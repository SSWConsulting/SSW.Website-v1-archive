<%@ Page Title="" Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.Master" CodeBehind="ClientInvoiceSummary.aspx.cs" Inherits="SSW.ClientInvoiceSummary" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content runat="server" ContentPlaceHolderID="sidebar"></asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <div id="contentPane">
        <asp:Label runat="server" ID="lblInvoiceDetail" Text="> Invoice Details" Visible="false" /><br />
        <br />
        <script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script>
        <script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>

        <rsweb:ReportViewer ID="reportViewer" runat="server" ProcessingMode="Remote" Width="98%"
            SizeToReportContent="True" AsyncRendering="false" ShowParameterPrompts="true">
            <ServerReport ReportServerUrl="http://reports.internal.ssw.com.au/reportserver" ReportPath="/SSWTimePRO/SSWTimePROCompanyPerformance/030_ClientInvoiceSummary" />
        </rsweb:ReportViewer>
        <script language="javascript" type="text/javascript">

            window.GetObjectPosition = function (obj) {

                var totalTop = 75;

                var totalLeft = 0;

                return { Left: totalLeft, Top: totalTop };

            }

        </script>
    </div>
</asp:Content>
