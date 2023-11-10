<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft Data Analyzer Suggestions"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				<asp:label id="lblWelcome" runat="server"></asp:label><p>


<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" align="right" style="{width:100%;}">
	<tr> 
  		<td> 
			1. <A href="#DrillThrough">Better Drill Through Options</a><br>
			<!-- <A href="#Manipulated">2.</a> Too Easily Manipulated!<br> -->
			<br>
		</td>
	</tr>
</table>






	<ol>
	<li>

		<a name="DrillThrough"></a>
		<h2>Better Drill Through Options</h2>	
	</li>
		<p>In the "Drill Through" it only shows the first 500 records. No next button - nothing.</p>
		
		<p>
		<img src="Images/DataAnalyzerDrillThrough.gif" alt="Data Analyzer Drill Through" width="600" height="214">
		</p>
		<p>
		
		Please add:
		<ul>
		<li>Next 500 records</li> 
		<li>Total number of records in Status Bar</li> 
		<li>Copy table to clipboard</li> 
		<li>SQL Statement to run in Query Analyzer </li>
		</ul>
		
		</p>
		<p>&nbsp;</p>
	</ol>
		
		</asp:content>