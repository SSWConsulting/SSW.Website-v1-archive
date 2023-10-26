<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW SQL Total Compare - Utility to Manage SQL Server Replication" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <h1>SQL Total Compare</h1>
    <h2 class="thinner">SSW SQL Total Compare - Utility to Manage SQL Server Replication </h2>
</asp:Content>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server">
    <div style="display: none">
        <a href="/ssw/Redirect/MicrosoftOfficeMarketplace/OfficeMarketplace.htm" target="_blank">
            <img src="/ssw/SQLTotalCompare/Images/MSMerketplace.bmp" alt="Microsoft Office Marketplace logo" align="right" border="none" width="250" height="52">
        </a>
    </div>

    <SSW:ProductPageSideBar ID="ProductPageSideBar1" runat="server" ProdID="" CatID="" DownloadID="" UserGuide="UserGuide.aspx" BoxShotPath="/ssw/SQLTotalCompare/Images/productbox.gif"></SSW:ProductPageSideBar>

    <div class="softRegion">
        <h6>Awards</h6>
        <div class="section">
            <img src="/ssw/Images/Awards/SharewareRiverlinkbutton.gif" alt="Shareware review" width="80" height="28" /><br />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" /><br />
            <br />
            <img src="/ssw/Images/Awards/coredownload.gif" alt="Core Download" width="86" height="42" />
        </div>
    </div>

    <SSW:InfoBox ID="InfoBox1" runat="server" Css="interInfoBox" Text="<h1>Attention: SSW Developers</h1><p>This page is on the old template as the product is low focus/discontinued.</p><a href='/ssw/Products/ProdSummarylist.aspx'>The six products we focus on are</a>"></SSW:InfoBox>

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

    <p>
        SQL Server replication is a fantastic piece of functionality but can lead to a database administration nightmare. Data 
		conflicts are a common occurrence and require constant attention. SSW SQL Total Compare reports the differences between 
		the Publisher and Subscribers databases and makes the changes necessary to fully synchronize the data.
    </p>

    <div class="greybox">
        Note: This product was developed in VB6 - new development is on hold.<br />
        The source code is available for purchase for $1500US
    </div>
    <br />
    <table class="clsSSWTable" align="centre">
        <tr>
            <td>
                <p>
                    SSW SQL Total Compare is a valuable tool for SQL Server 
				replication. The amount of conflicts I had before using SSW 
				Total Compare was huge!! It made the previously difficult task 
				of achieving full synchronization as easy as clicking the 'ok' 
				button. Highly recommend this product to all.&nbsp;
                </p>
                <p align="right">Guy Saunders, Database Administrator, Fast Cue </p>
            </td>
        </tr>
    </table>

    <h2 class="thinner">Key Features & Benefits</h2>
    <p>
        SSW SQL Total Compare is designed for SQL Server databases using SQL Server Replication. Total Compare helps
		DBA's to resolve conflicts between the two databases allowing 
		synchronization without conflicts.
		Total Compare also compares data between two non-replicated databases.

    </p>

    <p>
        <ol>
            <li>Compare data in 2 SQL Server databases</li>
            <ul>
                <li>Easily identify conflicting data</li>
            </ul>
            <li>Eliminate conflicts not resolved by SQL Server Synchronize</li>
            <ul>
                <li>Add missing records to either the publisher or its subscriber</li>
                <li>Delete of records</li>
                <li>Update out of sync records</li>
            </ul>
            <li>Synchronize and Conflict Viewer installed with SQL Total Compare</li>
            <ul>
                <li>Use the Synchronize tool to synchronize the changes you make.</li>
                <li>Use the Conflict Viewer tool to view any conflicts (if any arise).</li>
            </ul>
        </ol>
        <br />
        <p>
            If you have Microsoft SQL Server installed on your target machine, then you can synchronize the changes from Enterprise 
		Manager.
        </p>


        <p>
            <img src="Images/LogonScreen.png" alt="star" border="1">
            <br />
            <b>Figure: SSW SQL Total Compare helps DBA's to resolve conflicts 
		between two databases allowing synchronization without conflicts</b>
        </p>
        <p>
            More screen shots in the User Guide
        </p>
        <h2>User Guide</h2>
        <p>
            Welcome to the <a href="UserGuide.aspx">User Guide</a>. This help facility is designed to quickly 
		get you up and running using our software.
        </p>
        <SSW:incDemonstration ID="IncDemo" runat="server"></SSW:incDemonstration>

    </p>
    <br />
    <p>
        <SSW:incStars ID="IncStars" SharewareRiver="4" runat="server"></SSW:incStars>

    </p>

    <h2>How it works</h2>
    <p>
        Four scripts have been included in the installation directory with SSW SQL Total Compare. These scripts are used to create 
		four stored procedures that are used by this tool. These stored procedures are created on the first or publisher database 
		when the tool is first run on the publisher database.
    </p>
    <p>
        The four stored procedures are:
		<ul>
            <li>ProcSSWSQLTotalCompareMergeReplicColumnsWithoutText</li>
            <li>ProcSSWSQLTotalCompareMergeReplicDifferencesSelect</li>
            <li>ProcSSWSQLTotalCompareMergeReplicMissingSelect</li>
            <li>ProcSSWSQLTotalCompareMergeReplicSyncCreateTable</li>
        </ul>
        <br />
        <p>
            Two linked servers are also created on the first or publisher database when the tool is first run on the publisher database. 
		One linked server is created for the first or publisher server called SSWSQLTotalCompare_SERVERNAME. A second linked server 
		is created for the second or subscriber server called SSWSQLTotalCompare_SERVERNAME.
        </p>

        <p>
            SSW SQL Total Compare works by utilizing the four stored procedures that are executed to check for missing records and/or
		differences in the records. It also creates and updates an essential table called zs_TableSummary.
        </p>

        <h2>System Requirements</h2>
        <p>
            <ul>
                <li><a href="/ssw/Redirect/mdac26.htm" target="_blank">MDAC 2.6 
        <img src="/ssw/Images/LeaveSite.gif" border="0" alt="You are going to a site outside of SSW" width="17" height="11"></a></li>
                <li><a href="/ssw/Redirect/SQLServer/SQLServer.htm" target="_blank">SQL Server 7.0/SQL Server 2000</a>
                    <img src="/ssw/Images/LeaveSite.gif" border="0" alt="You are going to a site outside of SSW" width="17" height="11"></li>
                <li>SQL Server does not need to be installed on the target machine, it only needs to be on a machine on your Local 
		Area Network (LAN)</li>
                <li>Every SQL Server table has a column of the type unique identifier (guid)</li>
                <li>ntext and picture data types and databases that have a different collation order cannot be compared</li>
            </ul>

            <h2>What does the unregistered version give me?</h2>

            <p>
                In respect to the unregistered version we know you want to see it 
		working before you buy it. We aim for that.
                <br />
                Note: we also give free version targeted to the little guys<br />
                More details see <a href="/ssw/KB/KB.aspx?KBID=Q658302">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q658302</a>
            </p>
            <p>
                SSW provides free phone and email support to answer queries on 
registered products.
            </p>

            <p>
                <h2>Getting Support</h2>
            </p>

            <p>
                If you can't find what you are looking for in the product documentation then check our 
		<a href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=SQLDC">knowledge base</a> for further information and tips 
		about this product.
            </p>

            <p>
                Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a> and <a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">feedback</a>
                so that we can evolve our software into a product that matches your requirements. We guarantee a response.
            </p>
            <p>For <a href="/ssw/Consulting/DatabaseDevelopment.aspx">SQL Server consulting</a> or development, feel free to contact us.</p>

            <h2>Links</h2>
            <p>
                <a href="../Redirect/Microsoft/MSDN-HowToAddColReplicatedDB.htm" target="_blank">How 
	to apply schema changes on publication databases using Enterprise Manager</a>&nbsp;<img src="/ssw/Images/LeaveSite.gif" border="0" alt="You are going to a site outside of SSW" width="17" height="11">
            </p>

            <h2>I'm Sold... What's next?</h2>

            <p>
                <div class="download">
                    <a href="/ssw/Products/ProdCategory.aspx?CategoryID=SQLDC" class="red next">Purchase Full Version</a><br />
                    or 
                    <br />
                    <br />
                    <a href="/ssw/Download/ProdBasket.aspx?ID=SQLDC">Download Free Trial Version</a>
                </div>
            </p>
    Microsoft and the Office logo are trademarks or registered trademarks of 
	Microsoft Corporation in the United States and/or other countries.
</asp:Content>
