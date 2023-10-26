<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Upsizing PRO! - Access to SQL Server Upsizing Utility" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxlink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <h1>Upsizing PRO</h1>
    <h2>Migrate from Access to SQL Server safely with SSW Upsizing PRO!</h2>
</asp:Content>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server">

    <SSW:ProductPageSideBar ID="ProductPageSideBar1" runat="server" ProdID="2SQLCH" CatID="2ACCESS" UserGuide="UserGuide.aspx" Resources="Resources.aspx" PromotionalFlyer="Flyer/UpsizingPROFlyer.pdf" DownloadID="UP" BoxShotPath="/ssw/UpsizingPRO/Images/productbox.gif"></SSW:ProductPageSideBar>

    <div class="softRegion">
        <h1>Awards</h1>
        <!--<div class="sponsorBox">
				<img src="/ssw/Images/Awards/Tucows40X80.gif" alt="" width="80" height="40" /><br />
				<img src="/ssw/Images/SoftwareRatingStar.gif" alt="" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
			</div>-->
        <div class="section">
            <img src="/ssw/Images/Awards/SharewareRiverlinkbutton.gif" alt="Shareware River review" width="80" height="28" /><br />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><br />
            <br />
            <img src="/ssw/Images/Awards/coredownload.gif" alt="Core Download" width="86" height="42" />
        </div>
    </div>
    <p>
        <img src="/ssw/Images/Microsoft/MSSqlServer.gif" alt="SQL Server related product" style="vertical-align: top;" width="24" height="30"><img src="/ssw/Images/Microsoft/MSAccess.gif" alt="MS ACCESS related product" style="vertical-align: top;" width="30" height="30"><img alt="SSW upsizing PRO!" src="Images/UpsizingPROLogo.gif" width="197" height="83">
    </p>
    <SSW:InfoBox ID="InfoBox1" runat="server" Css="interInfoBox" Text="<h1>Attention: SSW Developers</h1><p>This page is on the old template as the product is low focus/discontinued.</p><a href='/ssw/Products/ProdSummarylist.aspx'>The six products we focus on are</a>"></SSW:InfoBox>


</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
        <p>This product is no longer supported. </p>
    </div>

    <div style="display: none">
        <a href="/ssw/Redirect/Microsoft/MarketPlace.htm" target="_blank">
            <img src="http://r.office.microsoft.com/r/rlidMarketplaceLogo" alt="Microsoft Office Marketplace logo" align="right" border="none" width="250" height="52">
        </a>
    </div>
    <p>
        Has your business outgrown your home made Access database?
Upsizing is the process of migrating some or all database objects (tables and queries) from a Microsoft Access database (.mdb) 
to a new or existing Microsoft SQL Server database.
If your business is growing and you demand a scalable database solution, 
upsize from Access Jet to the robust SQL Server environment. SSW Upsizing PRO! 
is the tool that prepares your Access database so you can convert effortlessly to SQL Server. 
Upsizing PRO! will prevent known errors, ensuring a smooth migration.
    </p>
    <p>
        Microsoft Upsizing Wizard upsizes the mdb (if successful) and then creates a report that provides a detailed description of all objects created, 
and reports any errors encountered during the process.
    </p>
    <p>
        Microsoft have had their Upsizing Wizard for a many years and while it works fine for some, 
other developers report to newsgroups that it has a surprising amount of shortcomings. 
While some of them are bugs, most of the issues are simply because Access and SQL Server have different functionality. 
We believe the best approach is to fix errors in the mdb first and this is the approach that 
SSW Upsizing PRO! takes.
    </p>
    <p>
        Our clients often ask us to upsize their database from Access to SQL 
		Server. With Upsizing PRO, what used to take us hours can now be done at 
		the click of a button. 
    </p>
    <p><strong>Works with SQL Server Versions:</strong>2000, 2005, 2008</p>


    <h2>Key Features & Benefits</h2>

    <div class="greybox">
        <h4>What about the SQL Server Migration Assistant for Access (SSMA Access)?</h4>
        <p>
            SSW Upsizing PRO! is unique in terms of validating data structure and data before
            and after upsizing. SSMA Access has a good set 
		of rules however there are some issues. See our take on <a href="/ssw/upsizingpro/SQL_Server_Migration_Assistant_Wizard_for_Access.aspx">Microsoft SQL Server Migration Assistant Wizard for Access</a>
        </p>
    </div>

    <p>
        As an Upsizing Tool,
	SSW Upsizing PRO! checks your database the way the 'Microsoft Upsizing Wizard' should have done. After you use the generated 
	reports, and made the recommended changes, you can upsize to SQL Server without any worries. Here are some of the useful features of SSW Upsizing PRO!:
    </p>
    <ul>
        <li>
            <!--When you want to upsize your database from Access to SQL Server, there are things you should check in your Access 2000/2002/2003 
		database BEFORE and AFTER upsizing. And Upsizing PRO! will guide you through the process: For example you 
		should check for tables without a unique index, check for spaces in field names, check for validation rules, check 
		for unique indexes on a field, check for dates that are invalid... and the list goes on...-->
            Wizards guide you through the upgradation.
        </li>

        <!--Additionally, there are bugs in Microsoft's Upsizing Wizard such as the inability to set the QueryTimeout in the situation 
	of upsizing large tables. Upsizing PRO! helps you get around all these obstacles. </li>
	<li>Additionally, it creates a SQL Script to upsize Access database 
    structure with non-Unicode data types. Later on you could create a DTS 
    package and migrate data from Access to SQL Server database.-->
        <li>Effective than Microsoft's Upsizing Wizard.</li>
        <li>Supports upsizing non-unicode datatypes in Access<!--Once the Upsize has been done you should check in your new SQL Server database AFTER upsizing. You should  check all 
	Tables and Records are the same (see report) and check the number of Relationships are the same (see report).--></li>
        <li>Microsoft Access developers too often use forms and combos bound to large tables or slow queries. Let this wizard analyze 
	your Front-End and tell you what forms are slow and what controls are the culprits in each form. </li>
    </ul>
    <img src="/ssw/UpsizingPRO/Images/MainMenu.gif" alt="Main Menu" border="1" width="550" height="452">
    <br>
    <b>Figure: SSW Upsizing PRO! prepares your Access database so you can 
		convert effortlessly to SQL Server</b><p>
            More screen shots in the <a href="UserGuide.aspx">User Guide</a>
        </p>

    <h2 class="thinner">Reports</h2>

    <p>
        Here are the Before and After Upsizing PRO reports for the Sample Northwind database included
	with SSW Upsizing PRO! You will need the Microsoft Access Snapshot Viewer to view these links. 
	<a href="/ssw/Redirect/SnapshotViewer.htm" target="_blank">Download it here</a>
        <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17" height="11">
    </p>
    <ul>
        <li><a href="Reports/rptSSWUpsizingPROBefore.pdf">Before Upsizing Report</a><img src="/ssw/Images/IconPDF.gif" alt="" width="19" height="18"></li>
        <br>
        <br>
        <li>Running Upsizing Wizard
        <ul>
            <li><a href="Reports/rptSSWMSUpsizingWizardAccess2002.pdf">Microsoft Upsizing Wizard Report</a></li>
            <li><a href="Reports/SSWUpsizingWizard_SQLScript.txt">SSW Upsizing Wizard SQL Script</a></li>
        </ul>
        </li>
        <li><a href="Reports/rptSSWSQLCheckRecordsAfter.pdf">After Upsizing Report</a></li>
    </ul>

    <h2>System Requirements </h2>
    <p>



        <ul>
            <li><a href="http://windows.microsoft.com/en-ID/windows/xp-downloads" target="_blank">Windows XP</a></li>
            <li><a href="/ssw/Redirect/Access/AccessTrial.htm" target="_blank">Microsoft Access 97, 2000, 2002 (aka XP) or 2003<img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" border="0" width="17" height="11"></a></li>
            <li><a href="/ssw/Redirect/mdac26.htm" target="_blank">MDAC 2.8</a>
                <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" width="19" border="0"></li>
            <li><a href="/ssw/Database/linksSoftwareUpdates.aspx#MicrosoftNET">.NET Framework v1.1</a> to register SSW Upsizing PRO!</li>
            <li>But I have Access 97? SSW Upsizing PRO! needs Access 2000, 2002 or 2003 to run 
	- although it will analyze an Access 97 database</li>
        </ul>
        <!--<p><i>* Note: SSW Upsizing PRO! does not support NON-English versions of Microsoft 
        Access. Please check out our knowledge base article</i> <a href="/ssw/KB/KB.aspx?KBID=Q627034">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q627034</a>
        </p>-->




        <h2>What does the unregistered version give me? </h2>
        <p>
            In respect to the unregistered version we know you want to see it 
		working before you buy it. We aim for that.
            <br>
            Note: we also give free version targeted to the little guys<br>
            More details see <a href="/ssw/KB/KB.aspx?KBID=Q658302">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q658302</a>
        </p>
        <p>
            Superior Software provides free phone and email support to answer queries on 
registered products.
        </p>
        <h2>Getting Support </h2>

        <p>
            If you need assistance with our software, please check out documentation and our 
		<a href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=2SQLCH">Knowledge Base</a>. 
        </p>
        <p>
            Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a> and <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','FeedBack on SSW Upsizing PRO!',this)" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;">696e666f72407373772e636f6d2e6175 </a>
            so that we can evolve our software into a product that matches your requirements. We guarantee a response.
        </p>



        <h2>I'm Sold... What's next?</h2>

        <p>
        </p>
        <div class="download">

            <a href="/ssw/Products/ProdCategory.aspx?CategoryID=2SQLCH" class="red next">Purchase Full Version</a><br>
            or
            <br>
            <br>
            <a href="/ssw/Download/ProdBasket.aspx?ID=UP">Download Free Trial Version</a>
        </div>
    Microsoft and the Office logo are trademarks or registered trademarks of 
	Microsoft Corporation in the United States and/or other countries.
</asp:Content>
