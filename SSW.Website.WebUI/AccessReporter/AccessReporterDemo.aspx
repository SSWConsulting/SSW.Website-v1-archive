<%@ Page Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Access Reporter - Online Demo" Inherits="SSW.Website.WebUI.AccessReporter.SSWAccessReporter" Codebehind="AccessReporterDemo.aspx.cs" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

<script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script><script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script><script src="http://www.google-analytics.com/urchin.js" type="text/javascript"></script><script type="text/javascript">
                                                                                                                                                                                                                                                                           urchinTracker();
		</script>				
		<asp:label id="lblWelcome" runat="server"></asp:label><p>
			
				<h2>SSW Access Reporter - Online Demo</h2>
				<p>This sample Active Server Page demonstrates how to use the SSW Access Reporter.
					<br>
					There is an example of a report with no filter (Products by Category) and an 
					example of a report with a filter (Invoice).
				</p>
				<p>
					<asp:Label id="lblMessage" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
					<table cellspacing="5">
						<tr>
							<td>
								Database Name:
							</td>
							<td>
								<asp:DropDownList id="cboDatabaseName" runat="server">
									<asp:ListItem Value="Northwind (MDB)" Selected="True">Northwind (MDB)</asp:ListItem>
									<asp:ListItem Value="Northwind (ADP/SQL)">Northwind (ADP/SQL)</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td>
								Report Name:
							</td>
							<td>
								<asp:DropDownList id="ReportName" AutoPostBack="True" runat="server">
									<asp:ListItem Value="Products by Category">Products by Category</asp:ListItem>
									<asp:ListItem Value="Invoice" Selected="True">Invoice</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td>
								Report Type:
							</td>
							<td>
								<asp:DropDownList id="ReportFormat" runat="server">
								    <asp:ListItem Value="4">Plain Text: &nbsp; &nbsp; &nbsp; &nbsp; 2 KB</asp:ListItem>
								    <asp:ListItem Value="2">Rich Text (RTF): 3 KB</asp:ListItem>
								    <asp:ListItem Value="5">Excel: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6 KB</asp:ListItem>
								    <asp:ListItem Value="3">Snapshot: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;7 KB</asp:ListItem>
								    <asp:ListItem Value="0">HTML: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 8 KB</asp:ListItem>
								    <asp:ListItem Value="1" Selected="True">Acrobat PDF: &nbsp; &nbsp; 46 KB (recommended)</asp:ListItem>
								    <asp:ListItem Value="8">PNG: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 61 KB</asp:ListItem>
								    <asp:ListItem Value="6">JPG: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 351 KB</asp:ListItem>
								    <asp:ListItem Value="11">PCX: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3380 KB</asp:ListItem>
								    <asp:ListItem Value="7">BMP: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;24000 KB</asp:ListItem>
								    <asp:ListItem Value="9">TIF: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24000 KB</asp:ListItem>
								    <asp:ListItem Value="10">PSD: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24000 KB</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td>
								Report Filter:
							</td>
							<td>
								<!-- In a live application these should be generated automatically -->
								<asp:DropDownList id="ReportFilter" runat="server">
									<asp:ListItem Value="OrderID=10249" Selected="True">10249</asp:ListItem>
									<asp:ListItem Value="OrderID=10250">10250</asp:ListItem>
									<asp:ListItem Value="OrderID=10251">10251</asp:ListItem>
									<asp:ListItem Value="OrderID=10252">10252</asp:ListItem>
									<asp:ListItem Value="OrderID=11077">11077</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td></td>
							<td>
								<asp:Button ID="btnSubmit" Text="Show Report" Runat="server"></asp:Button>
							</td>
						</tr>
					</table>
					<br>
				<p>
					<b>Note:</b> SSW Access Reporter is fast. The delay you see on the first report 
					is Internet Explorer instantiating the Snapshot Viewer or Excel. <b>Please test it 
						out twice.</b>
				</p>
				<table width="80%" class="clsSSWTable" align="center">
					<tr>
						<td>Requirements: If you are wanting to try the <b>snapshot</b> then you need one 
							of the following installed:
							<ul>
								<li>
								Office 2000, or
								<li>
								Office 2002, or
								<li>
								Office 2003, or
								<li>
									Just the <A href="/ssw/Redirect/SnapShotViewer.htm" target="_blank">Microsoft 
										Snapshot Viewer</A> <IMG alt="You are going to a site outside of SSW" src="/ssw/Images/leavesite.GIF" width="17"
										height="11"> The Microsoft Snapshot Viewer enables you to view a report 
									snapshot WITHOUT having Microsoft Access 2000 or Microsoft Access 2003 or the 
									run-time version of Microsoft Access 2000 or Access 2003 on your computer.</li>
							</ul>
						</td>
					</tr>
				</table>
				<h2>Sample Code</h2>
				<p>
					View the <a href="Source.txt">source code</a> to see how it works.
				</p>
				<p>
					<h2>Other Products</h2>
				<p>
					Do you want to find out more about other SSw's Products? <a href="/ssw/Products/ProdCategoryList.aspx">
						View our list</a>.
				</p>
				<p>&nbsp;</p>
</asp:content>

