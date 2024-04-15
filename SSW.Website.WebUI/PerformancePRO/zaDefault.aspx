<%@ Page  Language="C#"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Performance PRO! - Tool to Tune your Access Frontend"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>
<asp:Content ContentPlaceHolderID="asideright" runat="server">
		<SSW:ProductPageSideBar ID="ProductPageSideBar1" runat="server" ProdID="9PP" CatID="2ACCESS" DownloadID="PP_2000" UserGuide="UserGuide.aspx" BoxShotPath="/ssw/PerformancePro/Images/productbox.gif">
		</SSW:ProductPageSideBar>
        <h6>Awards</h6>
		<div class="section">	
			
  			<div class="sponsorBox">
				<img src="/ssw/Images/Awards/SharewareRiverlinkbutton.gif" alt="Shareware River review" width="80" height="28" /><br />
				<img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
				<img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
				<img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
				<img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
			</div>
		</div>
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
<img src="Images/PerformancePROLogo.gif" alt="SSW Performance PRO" width="261" height="82" />
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

    <h2>Overview</h2>
    <p>SSW Performance PRO! isolates performance bottle-necks in your Access 97, 2000, 2002 or 2003 app. It checks every form, combo and list box, and reviews SQL statements. It reports exactly what to fix to improve the the speed of your application. SSW Performance PRO! is especially useful after you've upsized an application to SQL Server to pinpoint black spots in your app.</p>
    <p>SSW Performance PRO! evaluates the speed of your forms so you can work where it will make a difference. It works whether your backend is Access (mdb) or Microsoft SQL Server. It works whether you have a single/multiple backend(s). It also works for Access Data Projects (adp).</p>
    <p>This cool utility analyzes every form, every combo and list box, checks the SQL statements and works out the time of executing these SQL statements - obviously you will get the best results if your Access database is linked to server across the network. After you use the generated reports, you can optimize design of your forms and controls&nbsp;without any worries.</p>
    <p>You know you shouldn't have large record sets in your database... Microsoft Access developers too often use forms and combos bound to large tables or slow queries. Let this wizard analyze your front end database and tell you what forms are slow and what controls are the culprits in each form. Now use your development time on the things that really matter. Then re-analyze and see your progress.</p>
    
    <h2> Key Features & Benefits</h2>
        <p>SSW Performance PRO! analyzes the performance of your Microsoft Access database. It is a great tool if you're about to upsize your database from Access to SQL Server.</p>
        <p class="greyBox"><b>Note:</b> You must have a client/server application where the front end database has tables linked to an Access or SQL Server back end database.</p>
        <div class="greyBox">
        <p><b>Note:</b> BEFORE running SSW Performance PRO! check:</p>
        <ul>
	        <li>macro Autoexec should be renamed to _Autoexec</li>
            <li>'User and Group Permissions' for the table MSysObjects should be set to 'Administer'</li>	
        </ul>
        </div>
	    <h3>Here are some of the intuitive interfaces of SSW Performance PRO!</h3>
	    <p>You can select one of two options:</p>
	    <ul>
	        <li>analyze all forms</li>
            <li>analyze one form</li>
	    </ul>
	    <p>Forms are selected in random order which provides correct time estimates. You can also change the number of loops used to execute the SQL statement. It averages results and provides better approximation.</p>
        <p class="greyBox"><b>Note:</b> If you are using an unregistered version of SSW Performance PRO! only 70 percent of all forms are processed and the 'One form' option is disabled.</p>
	    <h3>The first report</h3>
        <p>'SSW Performance PRO! - Summary' gives summary information about the slowest forms in your front end database.</p>
        <h3>The last report </h3>
	    <p>Gives you detailed information about the slowest forms and controls on that form including RecordSource (for a form) or ControlSource (for a control).</p>
        <p>From this information, you can determine the best place to start optimising your application.</p>
        <p>See more screenshots in the <a href="UserGuide.aspx">User Guide</a>.</p>

    <h2>Reports</h2>
        <p>Here are the SSW Performance PRO! Summary and Detailed reports for the Sample northwind database included with SSW Performance PRO! You will need the Microsoft Access Snapshot Viewer to view these links. <a href="/ssw/Redirect/SnapshotViewer.htm" target="_blank">Download it here</a>.</p>
		<ul>
	    	<li><a href="Images/rptSSWSQLPerformanceSummary.snp">SSW Performance PRO! Summary Report</a><img src="/ssw/Images/IconSnp.gif" alt="Summary Report" width="19" height="18"></li>
		    <li><a href="Images/rptSSWSQLPerformanceDetail.snp">SSW Performance PRO! Detailed Report</a><img src="/ssw/Images/IconSnp.gif" alt="Detailed Report" width="19" height="18"></li>
    	</ul>
	
    <h2>System Requirements</h2>
    <ul>
        <li><a href="http://www.microsoft.com/en-us/download/search.aspx?q=windows+xp" target="_blank">Windows XP</a></li>
	    <li><a href="/ssw/Redirect/Access/AccessTrial.htm" target="_blank">Microsoft Access 97, 2000, 2002 (aka XP) or 2003</a></li>
	    <li><a href="/ssw/Redirect/mdac26.htm" target="_blank">MDAC 2.8</a></li>
	    <li><a href="/ssw/Database/LinksSoftwareUpdates.aspx#MicrosoftNET">.NET Framework v1.1</a> to register SSW Performance PRO!</li>
    </ul>	

    <a name="Unregistered"></a>
    <h2>What does the unregistered version give me?</h2>
        <p>In respect to the unregistered version we know you want to see it working before you buy it. We aim for that.</p>
        <p><b>Note:</b> We also give free version targeted to the little guys<br />
        More details see <a href="/ssw/KB/KB.aspx?KBID=Q658302">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q658302</a>.</p>
        <p>SSW provides free phone and email support to answer queries on registered products.</p>

    <h2> Getting Support </h2>
        <p>If you can't find it in the product documentation then check our <a href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=9PP">knowledge base</a> for further information and tips about this product.</p>
	    <p>Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a> and <a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">feedback</a> so that we can evolve our software into a product that matches your requirements. We guarantee a response.</p>
    
    <a name="Links"></a>
    <h2>Links</h2>
        <p>What utilities and updates should I get for my PC?</p>
		<p>This is one of the frequently asked questions by SSW clients, so we have compiled a list. <a href="../Database/LinksSoftwareUpdates.aspx">Click here to read them</a>.</p>
	
    <h2>Warning</h2>
        <p>SSW Performance PRO 2000 supports only Access 2002/2003/2007.</p>

	<h2>I'm Sold... What's next?</h2> 
    	<div class="download">
            <a class="red next" href="/ssw/Products/ProdCategory.aspx?CategoryID=9PP">Purchase</a><br />
            <a class="next" href="/ssw/Download/ProdBasket.aspx?ID=PP_97">Download Trial (For Access 97)</a><br />
            <a class="next" href="/ssw/Download/ProdBasket.aspx?ID=PP_2000">Download Trial (For Access 2000,2002,2003)</a>
        </div>
    
    <p>Microsoft and the Office logo are trademarks or registered trademarks of Microsoft Corporation in the United States and/or other countries.</p>
    
</asp:content>