<%@ Page  Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Data PRO! - Access Backend Deployment Utility"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>
<%@ Register Src="~/Components/DiagnosticsForSystemReqirement.ascx" TagName="DiagnosticsForSystemReqirement" TagPrefix="SSW" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

    <asp:Content ContentPlaceHolderID="asideright" runat="server">
    		<SSW:ProductPageSideBar ID="ProductPageSideBar1" runat="server" ProdID="1DP" CatID="2ACCESS" UserGuide="Access/01Introduction.htm" DownloadID="DP_2000" BoxShotPath="/ssw/DataPro/Images/productbox.gif">
		</SSW:ProductPageSideBar>
		<SSW:InfoBox ID="InfoBox1" runat="server" Css="interInfoBox"  Text="<h1>Attention: SSW Developers</h1><p>This page is on the old template as the product is low focus/discontinued.</p><a href='/ssw/Products/ProdSummaryList.aspx'>The six products we focus on are</a>" ></SSW:InfoBox>
		<div style="display : none"><a href="../Redirect/MicrosoftOfficeMarketplace/OfficeMarketplace.htm">
		<img src="http://r.office.microsoft.com/r/rlidMarketplaceLogo" alt="Microsoft Office Marketplace logo" align=right border=none width="250" height="52">
		</a></div>
    </asp:Content>

    <asp:Content ContentPlaceHolderID="title" runat="server">
    		<img src="Images/DataPROLogo.gif" alt="SSW DataPRO" width="138" height="83">
    		<h2 class="thinner">Deploy new versions of your Access backend simply with SSW Data PRO!</h2>
    </asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>


	<p>
		SSW Data PRO! records every change made to your Access backend. When the new front end is 
		installed at the client site, the backend will automatically be upgraded with the changes you made. Never be out of sync again!</p>




<h2 class="thinner">Key Features & Benefits</h2>
	<p>
		SSW Data PRO! is version control for your database written for Microsoft Access. SSW Data 
		PRO! is available for Access 97 and 2000. The Access 2000 version also runs in Access 2002 and 2003.
	</p>
	<p>
		With SSW Data PRO! when your client gets the new version of your database, it will detect that the data 
		structure needs revisions and performs the revisions automatically.</p>



<p>
		A Common Scenario of a Access developer is to have a new version of a database ready for your client ..."Oh no, now I'll have to find out the new 
		tables, fields and relationships that I've added. I'd better get the client to send me a copy of their 
		data so I can do a comparison and make the changes... Hope they don't mind being offline 
		for a day... Hope I haven't forgotten any of the changes. What were those fields that I renamed?..."
	</p>
	<p>
		The beauty of this utility is that it takes the guesswork out of 
		administering database structures for your clients.</p>
	<p>
		<b>Note:</b> If you want to use SSW Data PRO! on your existing 
		databases, they must be in sync (the same) before you start using SSW 
		Data PRO!&nbsp; But to help this occur SSW has developed a sister product SSW Data Renovator for 
		Microsoft Access that can compare two databases and tell you the 
		difference. You can do the changes manually or automatically. Once you get the 
		two data structures in sync, use SSW Data PRO! so they never get out of sync again.</p>
	
	<p>
		<img src=Images/DataPRO!ScreenShot.gif alt="SSW DataPRO!" width="450" height="317">
		<br>
		<b>Figure: SSW Data PRO! is version control for your database written 
		for Microsoft Access</b></p>
		<div class="greybox"><b>Related Software</b>
		<p>
			While SSW Data PRO! manages Access database, use <a href="../SQLDeploy/">SSW SQL Deploy</a> to manage a SQL Server database.
		</p>
		</div>
	
<h2>How it Works</h2>		
	

	<p>
	<div class="greybox">
		Why SSW Data Renovator <a href="/ssw/Standards/DeveloperAccess/WhyDataRenovator.aspx">was developed</a>.
		</div>
		You stop making changes to your data structure using Microsoft Access or SQL Server. You start using 
		SSW Data PRO! to add, delete and rename tables (with fields and relationships) so all changes can be replayed later. A side benefit of this is every data structure change is logged and available through concise reports.
	</p>

	<p>
		For all this amazing functionality you must follow one rule. Don't use 
		Microsoft Access or SQL Server to change your data structure.
		Now you have SSW Data PRO!'s friendly interface.
	</p>


<!-- CS 31/12/2002>
<h2></a>Features</h2>

	<p>
		<b>Advanced Feature - Bulk Add Field Wizard</b>
	</p>

	<p>
		When auditing data in a database it's very useful to know who is making what changes to data. 
		Using the SSW Bulk Add Field Wizard you can ensure that you capture who, when and where made the
		last change to the data. Using this wizard will add the following fields to your tables:
		DateCreated, DateUpdated and EmpUpdated. 
	</p>

	<img src="Images/BulkAddFieldWizard2.gif" alt="" border="1">

	<p>


<!--DS_Default 16/08/2002 need to complete
<h2></a>System Requirements</h2>	

-->
	</p>


<h2> System Requirements </h2>
	<ul>
        <LI><a href="http://windows.microsoft.com/en-ID/windows/xp-downloads" target="_blank">Windows XP</a></LI>
		<LI><a href="/ssw/Redirect/Access/AccessTrial.htm" target="_blank">Microsoft Access 97, 2000, 2002 (aka XP) or 2003<img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" border=0 width="17" height="11"></a></LI>
		<LI><a href="/ssw/Redirect/mdac26.htm" target="_blank">MDAC 2.8<img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" border=0 width="17" height="11"></a></LI>
		<LI><a href="/ssw/Database/LinksSoftwareUpdates.aspx#MicrosoftNET">.NET Framework v1.1<img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" border=0 width="17" height="11"></a> to register SSW Data PRO!</LI>
	</ul>


<SSW:diagnosticsforsystemreqirement id="DiagnosticsForSystemReqirement1" runat="server"></SSW:diagnosticsforsystemreqirement>
<br />

<h2>What does the unregistered version give me?</h2>			
		<p>In respect to the unregistered version we know you want to see it 
		working before you buy it. We aim for that. <br>
		Note: we also give free version targeted to the little guys<br>
		More details see <a href="/ssw/KB/KB.aspx?KBID=Q658302">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q658302</a></p>
<p>SSW provides free phone and email support to answer queries on 
registered products.</p>
<h2>Getting Support</h2> 
	<p>	
		 If you can't find it in the product documentation then check our <a href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=1DP">knowledge 
		 base</a> for further information and tips about this product.

	</p>

	<p>
		Please send us <A href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</A> and <A href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">feedback</A>
		so that we can evolve our software into a product that matches your requirements. We guarantee a response.
	</p>
	
	<h2>Access Links</h2>
		<ul>
			<li>
				<a href="/ssw/Standards/Rules/RulesToBetterAccessDatabases.aspx">SSW Rules to Better Access Databases</a>
			</li>
			
			<li>
				<a href="/ssw/Redirect/KB/KBQ291539DP.htm" target="_blank">Create and Drop Tables and Relationships Using SQL DDL</a> 
        <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" border=0 width="17" height="11">
			</li>

		</ul>

<h2>I'm Sold... What's next?</h2>
	<p>
		<div class="download">
<a href="/ssw/Products/ProdCategory.aspx?CategoryID=1DP" class="red next">Purchase Full Version</a><br>or 
<br><br><a href="/ssw/Download/ProdBasket.aspx?ID=DP_97">Download Free Trial Version</a><br>(For Access 97)
<br><br><a href="/ssw/Download/ProdBasket.aspx?ID=DP_2000">Download Free Trial Version</a><br>(For Access 2000,2002,2003)
</div>		</p>
			Microsoft and the Office logo are trademarks or registered trademarks of 
	Microsoft Corporation in the United States and/or other countries.
	</asp:content>