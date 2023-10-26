
<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="Download Product Before Purchase Page"   %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<br />
<br />
<br />

<body>
<h2>Important: Please read before making product purchase.</h2>

<p>Before you purchase this product you need to:</p>
<ol>
<li>Install the trial version on your PC</li>
<li>Obtain the Unlock ID by clicking on the help menu and choosing the "Obtain Unlock ID" option</li> 
</ol>
<p>This Unlock ID will need to be entered when you purchase the product.</p>

<br />

<asp:hyperlink id="hypShopForMore" runat="server" NavigateUrl="http://www.ssw.com.au/ssw/Redirect/DownloadRedirect.aspx?DownloadID=ExEml1">Download Trial Version</asp:hyperlink>
<br />
<br />
<asp:hyperlink id="hypShopForMor" runat="server" NavigateUrl="http://www.ssw.com.au/ssw/Redirect/DownloadRedirect.aspx?DownloadID=ExEml1">Continue</asp:hyperlink>
</body>				

		
			
</asp:content>