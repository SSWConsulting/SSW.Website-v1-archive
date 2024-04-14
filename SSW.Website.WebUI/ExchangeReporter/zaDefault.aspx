<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Exchange Reporter - The Simplest Reporting Tool for your Exchange Server" %>

<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register Src="~/Components/DiagnosticsForSystemReqirement.ascx" TagName="DiagnosticsForSystemReqirement" TagPrefix="SSW" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="asideright" runat="server">
    <SSW:ProductPageSideBar ID="ProductPageSideBar1" runat="server" ProdID="ExRepo" CatID="4EXOUT" UserGuide="UserGuide.aspx" PromotionalFlyer="Flyer/exchangereporterFlyer.pdf" DownloadID="ExRep&ID=EXRep86" BoxShotPath="/ssw/ExchangeReporter/Images/productbox.gif"></SSW:ProductPageSideBar>

    <!--<div class="softRegion">
			<div class="sponsorBox">
				<img src="/ssw/Images/Awards/Tucows40X80.gif" alt="Tuscows review" width="80" height="40" /><br />
				<img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" />
			</div>
			<div class="sponsorBox">
				<img src="/ssw/Images/Awards/SofoTex4Stars40X80.gif" alt="SofoTex review" width="80" height="40" /><br />
				<img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" />
			</div>
		</div>-->
    <div class="section">
        Microsoft loved this tool so much they put a cut down 
						        version of this on their websites
						        <a href="/ssw/Redirect/SQLServerReportPackforMicrosoftExchange.htm" target="_blank">SQL Server 2000 Report Pack for Microsoft Exchange on the 
						        Microsoft Website</a>
        <img src="/ssw/Images/LeaveSite.gif" border="0" alt="You are going to a site outside of SSW" width="17" height="11">.<br />
        <a href="/ssw/Redirect/ExchangeReporterReportPack2005.htm">SQL Server 2005 Report Pack on the 
						        GotDotNet Website</a>
        <img src="/ssw/Images/LeaveSite.gif" border="0" alt="You are going to a site outside of SSW" width="17" height="11">.
    </div>
    <SSW:InfoBox ID="InfoBox1" runat="server" Css="interInfoBox" Text="<p><h1>Attention: SSW Developers</h1><br/><br/><a href='../Products/prodsummarylist.aspx'>This page is on the new template as it is one of the 6 products we are focused on.</a></p>"></SSW:InfoBox>


</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <%--<img src="/ssw/Images/Microsoft/MSOutlook.gif" alt="Outlook/Exchange Server related product" style="vertical-align:middle;" width="30" height="30"/>--%><img src="Images/ExchangeReporterLogo.gif" alt="Exchange Reporter" width="292" height="82" />
    <h2 class="thinner">View reports on email usage for your Exchange Server users with SSW Exchange Reporter</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    
    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

    <p>
        Is Microsoft Exchange Server an integral part of your organization? If so, SSW Exchange Reporter provides the tools and reports you need to efficiently analyze your organizations email usage. Built in Exchange reports range from who is sending the most emails, to who has the largest mailbox.<br />
        As new emails are sent and received, to and from your exchange server, our lightweight windows service seamlessly extracts email messages and folder statistics to your fast SQL Server backend. By taking advantage of SQL Servers Reporting Services, the generated reports can easily be customized and extended while being viewed securely from anywhere. That is why experts say that SSW Exchange Reporter is the most powerful and the only flexible solution to understanding your organizations communications.
    </p>

    <p>
        <b>Question: </b>How can I test it without having Exchange Server?<br>
        <b>Answer:</b> During the installation, if there is no Exchange Server 
		detected, Exchange Reporter will ask if you want to install the sample 
		database provided. The sample database will be installed by our leading 
		database upgrading product <a href="/ssw/SQLDeploy/">SSW SQL Deploy</a><br>
    </p>
    <table align="center">
        <div id="download" class="download">
            <br />
            <a target="_blank" href="ReportSamples.aspx" class="red next">Online Reports Demo</a>
            <br />
        </div>
    </table>
    <br />


    <h2 class="thinner">Key Features & Benefits</h2>


    Some key features of Exchange Reporter are:
		<ul>
            <li>Scheduling of data extractions from Exchange Server</li>
            <li>Caching of Exchange data into a SQL Server database</li>
            <li>Report on cached exchange data for easy analysis</li>
            <li>Ability to create 
			your own reports for all your analysis needs</li>
        </ul>
    Exchange Reporter also allows to you:
	<ul>
        <li>Analyze generated reports on your email system in order to answer vital questions such as:
					<ul>
                        <li>How many emails each Exchange user has sent 
						internally, externally or to clients?</li>
                        <li>Who is sending the most emails in your organization?</li>
                        <li>Who is using email the most effectively?</li>
                        <li>What amount of time is being spent on email by our 
						staff?</li>
                        <li>How many emails were sent to a particular client?</li>
                        <li>Screen email subjects and body content for inappropriate content?</li>
                        <li>Are our staff following organization standards? (see our
						<a href="/ssw/Standards/Rules/RulesToBetterEmail.aspx">Rules To Better Email</a> for our email standards!)</li>
                    </ul>
        </li>
        <li>Integrate Exchange data with your database of client 
				contacts</li>
        <li>Monitor your email system for inappropriate use</li>
        <li>Save mail items in public folder stores, for easy indexing 
				and querying</li>
        <li>Receive reports directly to your email inbox in numerous 
				document formats including PDF, HTML, Excel, TIFF, and more</li>
    </ul>

    <dl class="image">
        <dt>
            <img border="0" src="Images/v831_ExtractionManager.jpg" width="420" height="612" /></dt>
        <dd><strong>Figure 1: Extraction Service Manager</strong></dd>
    </dl>

    <dl class="image">
        <dt>
            <img border="1" src="Images/v831_Report.jpg" width="674" height="604"></dt>
        <dd><strong>Figure 2: Sample Report</strong></dd>
    </dl>

    <p>
        More screen shots in the <a href="UserGuide.aspx">User Guide</a>.
    </p>
    <br />
    <h2 class="thinner">Upcoming Features</h2>
    <ul>
        <%--	        <li>Analyze any Competitors</li>
	        <li>Analyze Sharepoint 2007</li>
	        <li>Add Exchange Server 2007 support</li>--%>
        <li>Add Outlook COM Addin</li>
        <li>Add Notification Web Services in Exchange 2007 (was Event Sinks in Exchange 2003)</li>
        <li>Calendar items reports</li>
        <li>OLAP reports</li>
    </ul>
    <br />


    <h2>How it Works</h2>
    <p>
        SSW Exchange Reporter runs as a Windows Service in the 
				background on your Exchange 
				Server and periodically retrieves data from users' mailboxes and 
				stores it in a SQL Server database for fast and efficient report 
				generation.
    </p>
    <p>
        Reports are hosted by SQL Reporting Services and can be viewed 
				by any user with a web browser. Reports can also be configured 
				to automatically 'push' themselves to users' mailboxes according to a schedule, 
				ensuring that all the necessary people in your organization are kept up 
				to date with the latest statistics.
    </p>

    <h2>Sample Exchange Reports</h2>

    <p>
        We have included a number of sample reports that will run with your SSW 
			Exchange Reporter database. These can be seen in the following 
			link: 
		<a href="ReportSamples.aspx" target='_blank'>SSW Exchange Reporter (Samples)</a>.
		This 'Online Reports Demo' includes all reports screen shot.
    </p>


    <p>
        SSW can assist in the creation and customization of Exchange Reporter 
		reports. To find out about our consulting services at competitive rates and high quality development standards, 
		please don't hesitate to <a href="/ssw/Company/AboutUs.aspx">contact us</a>.
    </p>


    <h2>System Requirements: </h2>
    <ul>
        <li><a href="/ssw/Database/LinksSoftwareUpdates.aspx#MicrosoftNET">.NET Framework 2.0 or higher</a></li>
        <li>Microsoft Windows Server 2000, 2003 or 2008 (recommended) </li>
        <li>Microsoft Exchange Server 2000, 2003 or 2007 (English version recommended, <a href="/ssw/KB/KB.aspx?KBID=Q1623825"
            target="_blank">KB-<span id="Span1">Q1623825</span></a>)<br>
            &nbsp;&nbsp;&nbsp; (Note: As Exchange Reporter uses
				<a target="_blank" href="/ssw/Redirect/Exchange_ExOLEDB.htm">ExOLEDB</a> provider to access Exchange Store, Exchange Reporter 
				must be installed on the machine where the store is located. )</li>
        <li>Microsoft Outlook 2000, 2003 or 2007 (English version only, <a href="/ssw/KB/KB.aspx?KBID=Q1623825"
            target="_blank">KB-<span id="Span2">Q1623825</span></a><span id="ctl00_mainContentPlaceHolder_ctlKBID"></span>)
                    for client computers</li>
        <li>Microsoft SQL Server 2005 or 2008 with
				<a target="_blank" href="../Redirect/Microsoft/MSSQLReportingServices.htm">Reporting Services</a> (Note: This can be installed on a network 
				machine; SQL Server Service Pack 3a and Reporting Services 
				Service Pack 1 recommended) </li>
        <li>
            <a target="_blank" href="/ssw/Redirect/Microsoft/microsoftMDAC.htm">MDAC 2.8 </a></li>

    </ul>

    <SSW:DiagnosticsForSystemReqirement ID="DiagnosticsForSystemReqirement1" runat="server"></SSW:DiagnosticsForSystemReqirement>
    <br />
    <h2>What does the unregistered version give me?</h2>

    <p>
        In respect to the unregistered version we know you want to see it 
		working before you buy it. We aim for that.
        <br>
        Note: we also give free version targeted to the little guys<br>
        More details see <a href="/ssw/KB/KB.aspx?KBID=Q658302">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q658302</a>
    </p>
    <p>
        SSW provides free phone and email support to answer queries on 
registered products.
    </p>


    <h2>Getting Support: </h2>
    <p>
        If you can't find what you are looking for in the product documentation then check our 
				<a href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=EXREPO">knowledge base</a> for further information and tips about 
				this product.
    </p>

    <p>
        Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a> and <a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">feedback</a>
        so that we can evolve our software into a product that matches your requirements. We guarantee a response.
    </p>
    <h2>Links</h2>
    <p>
        <b>Q</b>:  How do I get access to all the mailboxes in Exchange 2003?<br>
        <b>A</b>:  How to Assign Service Account Access to All Mailboxes in Exchange Server 
		<a href="/ssw/Redirect/Microsoft/MSSupport821897.htm">Microsoft Knowledge Base Article - 821897</a>
        <img src="/ssw/Images/LeaveSite.gif" border="0" alt="You are going to a site outside of SSW" width="17" height="11">.

    </p>
    <h2>I'm Sold... What's next?</h2>
    <div class="download">
        <a href="/ssw/Products/ProdCategory.aspx?CategoryID=ExRepo" class="red next">Purchase Full Version</a><br>
        or 
        <br>
        <br>
        <a href="/ssw/Download/ProdBasket.aspx?ID=ExRep&ExRep86">Download Free Trial Version</a>
    </div>


    Microsoft and the Office logo are trademarks or registered trademarks of 
	Microsoft Corporation in the United States and/or other countries.
		
</asp:Content>
