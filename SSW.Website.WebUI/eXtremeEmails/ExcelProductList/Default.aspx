<%@ Page  Language="VB" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="SSW - Excel Price and Product List"  %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider"></asp:SiteMapPath>
</p>
  <p><b> For up to date product and pricing information, SSW has developed an innovative web service based solution.</b></p>
  <p> With currency rates changing many times a day, and the need to provide our clients with up to the moment information; SSW has harnessed the power of Microsoft Office and Web Services to deliver a dynamic new product and pricing solution.</p>
  <h2>Features</h2>
  <p>
  <table>
	<tr>
		<td><img src="Images/officedev.gif" alt="We use Office Webservices" width="150" height="194"></td>
		<td valign=top>
			Our product and pricing solution is integrated into Microsoft Excel using Office Webservices.
			<p>Our Excel spreadsheet combines the output of two web services to present the latest product and pricing information.</p>
			<p>The first web service is hosted by us and provides an up-to-date price list of SSW's products in a combination of Australian and US dollar prices.</p>
			<p>The second web service is a currency rate conversion site hosted in the United States. It provides conversions between 151 of the world's currencies.</p>
		</td>
	</tr>
</table>
  </p>
  		<img border="0" src="./Images/ExPriceList_1-2.jpg" width="799" height="391"> <br>
		
<p>
	The SSW Product and Price List web service is available at 
	<a href="/ssw/Redirect/ssw/Webservice.htm" target=_blank>
	http://webservice.ssw.com.au/SSWProductListWebService/public.asmx</a>&nbsp; <br>
	The currency web service is available at <a href="/ssw/Redirect/Webservicex.htm" target="_blank">http://www.webservicex.net/CurrencyConvertor.asmx</a>
</p>
  <h2>Technical notes</h2>
<p>This price list uses the Microsoft SOAP 3.0 Toolkit to provide web service connectivity.<br>
To use the Excel Price and Product List, you will need to have the toolkit installed. It can be obtained from Microsoft at:<br>
<a target="_blank" href="/ssw/Redirect/Microsoft/mssoaptoolkit3.htm">http://www.ssw.com.au/ssw/Redirect/Microsoft/mssoaptoolkit3.htm</a>&nbsp;
</p>
<p>Also, you need to change the security settings of your Excel in order to use 
the SOAP ToolKit. <br>
<img border="0" src="Images/ExSecuritySetting-1.jpg" width="418" height="341"><br>
<b>Figure: Select the Macro security settings</b></p>
<p><img border="0" src="Images/ExSecuirtySetting-2.jpg" width="394" height="388"><br>
<b>Figure: Change the 'Security Level' to Low in order to use the SOAP ToolKit</b></p>
  <h2>System Requirements</h2>
Microsoft Excel 2002 (Office XP)<br>
Microsoft Soap 3.0 Toolkit (see above)
		</asp:content>
