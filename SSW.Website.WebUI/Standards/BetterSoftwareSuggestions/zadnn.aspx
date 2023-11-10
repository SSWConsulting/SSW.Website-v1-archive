<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW DotNetNuke Suggestions"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
     <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				<asp:label id="lblWelcome" runat="server"></asp:label><p>


<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" align="right" style="{width:100%;}">
	<tr> 
  		<td> 
			1. <A href="#Performance">Improve Performance</a><br>
			2. <A href="#XHTML">Make XHTML-compliant</a><br>
		</td>
	</tr>
</table>






	<ol>
	<li>
	
		<a name="Performance"></a>
		
		<h2>Improve Performance</h2>	
	</li>
		
		<p> 
		<p>
		DotNetNuke has a lot of Admin pages which is slow because they are doing constant postback. DotNetNuke team would improve the performance by using client callback such as Ajax.
		e.g. Langages admin page 
		<p>
		For example, if the page is not doing a postback when you click the item in the node in Language Admin.
		<p>
		<img src="Images/dnnPostback.GIF" alt="DNN Postback" width="660" height="431"><br>
		<b>Figure: DotNetNuke Postback.</b>
		</p>
		<p>
	
	
		<li>
	
		<a name="XHTML"></a>
		
		<h2>Make XHTML-compliant</h2>	
	</li>
		
		<p> 
		<p>
		DotNetNuke uses upper cases for all html elements. DotNetNuke web pages uses span tag where div tag is supposted to be used. 
		<p>DotNetNuke would make all default documents to be XHTML-compliant.
		<p>
		<img src="Images/dnnxhtml.gif" alt="Make XHTML-compliant" width="475" height="415"><br>
		<b>Figure: Make XHTML-compliant</b>
		</p>
		<p>
	 
	 
	 
	
	</ol>

		</asp:content>