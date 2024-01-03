<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Access Reporter - Access Reporting Utility" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="Images/AcessReporter-logo.png" alt="Access Reporter" />
    <h2>Get your Access reports on the web with SSW Access Reporter</h2>
</asp:Content>

<asp:Content ContentPlaceHolderID="asideright" runat="server">
    <!--<SSW:ProductPageSideBar ID="pps1" runat="server" ProdID="SSWAR" CatID="3WEB" DownloadID="SSWAR1"
        UserGuide="UserGuide.aspx" BoxShotPath="/ssw/AccessReporter/Images/productbox.gif">
    </SSW:ProductPageSideBar>-->
    <h6>Awards</h6>
    <div class="section">
        <div class="sponsorBox">
            <img src="/ssw/Images/Awards/SharewareRiverlinkbutton.gif" alt="Shareware River review"
                width="80" height="28" /><br />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><br /><br />
				<img src="/ssw/Images/Awards/coredownload.gif" alt="Core Download" width="86" height="42" />
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
<%--	<div style="display: none">
        <a href="/ssw/Redirect/MicrosoftOfficeMarketplace/OfficeMarketplace.htm" target="_blank">
            <img src="/ssw/AccessReporter/Images/MSMarketplace.bmp" alt="Microsoft Office Marketplace logo"
                align="right" border="none" width="250" height="52"/>
        </a>
    	&nbsp;</div>--%>

    <div class="main-left">

<SSW:InfoBox runat="server" Css="interInfoBox"  Text="<h1>Attention: SSW Developers</h1><p>This page is on the old template as the product is low focus/discontinued.</p><a href='http://skunk/ssw/Products/ProdSummaryList.aspx'>The six products we focus on are</a>" ></SSW:InfoBox>	
       

        <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

    <p>
        Delivering reports on the web can be expensive and time consuming, especially when you&#39;re faced with the task of converting existing Access reports. SSW Access Reporter was designed for the .NET developer moving from legacy Access Applications to ASP or ASP.NET. If you are a Access developer and want help to bridge the .NET migration gap, this utility allows you to deliver your existing, great-looking Microsoft Access reports online now!
    </p>
	<p>

        <b>Question: </b>Is IIS required?
        <br>
        <b>Answer: </b>No, just a box with the .NET Framework is all that is 
		
		needed.</p>
    <p>
        <b>Question: </b>Is this an alternative to Crystal Reports?
        <br>
        <b>Answer: </b>Yes, the majority of our customers tell us that the 
		
		Crystal pricing/licensing model makes it prohibitive.
    </p>
    <p>
        Check out the <a href="/ssw/AccessReporter/AccessReporterDemo.aspx">
		Online Demo</a></p>
    <h2>
        Key Features &amp; Benefits</h2>
           <ul>
        <li>Deliver existing reports online with minimal re-coding. </li>
        <li>The functionality of Access Reporter is not just for the web, Access 
		
		reports can be created from any application that can call a DLL.</li><li>
		Auto run on load: Once your computer has loaded, the report server is 
		
		running and ready to dish out reports. You don&#39;t need to log into the 
		
		computer in order for this application to run. </li>
        <li>Traps VB errors on report execution.</li><li>Looks for and resolves 
		
		common Access startup prompts.</li><li>Report Count: Every time a report 
		
		is generated, the report count will go up in the databases list. </li>
        <li>Silent Errors: This application is designed to run unmonitored; 
		
		having modal error messages pop up onto the screen would be a hassle. If 
		
		the Access Reporter is unable to process a report request it will write 
		
		the error message to the event log where it can be easily viewed and 
		
		maintained. </li>
        <li>Multiple Report Formats: Access Reporter is capable of serving 
		
		reports in a variety of formats. These are: Excel, RTF, Plain Text, 
		
		HTML, PDF and Snapshot formats. 

    </li>

        <li>Multiple Reports: You can setup multiple databases to monitor and 
		
		keep open. All of this is easily maintained though the ReportManager. </li>
        <li>Remote Execution: The Access Reporter need only to be active, and 
		
		because it listens though TCP/IP you are able run the server on any 
		
		available machine on your network, reducing the work load on your web 
		
		server.</li>
            <li>With the GhostScript option users can get PDF without having to 
			
			pay for Adobe Distiller.</li></ul>
         
    <dl class="Image">
    <dt><img src="Images/ReportManager.gif" alt="Report Manager" width="577" height="401" />
    </dt>
    <dd>Figure: Configure SSW Access Reporter through one simple interface</dd>
    </dl>
    <blockquote>
                <p>
                    Mike Gunderloy says that SSW Access Reporter is &quot;Definitely 
					
					Useful.&quot; <a href="0205SmartAccesseXtra.htm">
                        Read it</a></p>
                        <span>Mike Gunderloy - Smart Access eXtra</span>
    </blockquote>
     <blockquote>
        <p>
            The money you spend for this Report Server 
			
			could be one of the best purchases you make this year..&quot; <a href="0211SmartAccess.mht">
			Read it</a></p>
            <span>Danny J. Lesandrini - Smart Access eXtra</span>
    </blockquote>
   
    <div class="clear"></div>


    <h2>
        How it works</h2>
        <blockquote>
        I've developed many reports in Access and I 
		
		believe this program is very useful. I was very impressed with the 
		
		performance of it.&quot;
        <span>Alan Johns - HBP</span>
        </blockquote>
              
    <p>
        The SSW Access Reporter utility is comprised of two primary components: 
		
		the Report Server and the Report Client.
    </p>

    <p>
        The Report Server can run on any machine and receives requests from the 
		
		Report Client. As the Report Server does not need to run on the web 
		
		server, the web server can delegate report processing to another machine 
		
		and save resources.
    </p>
    <p>
        The Report Client is a .NET DLL that the Web Programmer uses in the 
		
		Active Server Pages to request reports. The Client and the Server 
		
		communicate via .NET Remoting which is essentially talking via TCP/IP.
        </p>
        <p>
            The Report Server provides the user with Several reporting formats, 
			
			including Rich Text Format (RTF), Text only, Microsoft Excel format 
			
			(XLS), HTML, Microsoft Access Snapshot format (SNP), and Adobe 
			
			Acrobat format (PDF). The snapshot format requires a free plugin for 
			
			viewing the reports unless Microsoft Office 2000 or XP is already 
			
			installed on the clients PC.</p>
            <div class="greybox">
        <b>How did this product eventuate?</b>
        <p>
            The staff at Toyota Australia had a problem: they wanted their 
			
			Access reports to be viewable over the web, and did not want to pay 
			
			costly licensing fees to have a copy of Access on every machine. SSW 
			
			developed Access Reporter to automate the process of turning Access 
			
			reports into web-based reports, thus solving Toyota&#39;s problem.</p>
    </div>
        <p>
            You can create many databases Jobs, these jobs only require three 
			
			settings:</p>
            <ul>
                <li>Is this Job enabled?- You may not want to monitor all the 
				
				setup databases.</li>
                <li>
                    Where is the Access Database to monitor? - This can also be 
					
					an adp (which uses SQL as its data source)</li>
                    <li>Where do you want the reports once generated? - This may 
					
					be an IIS server on another machine.</li>
                        </ul>
           
            <p>
                The client machines do not need any 3rd party DLL&#39;s to view the 
				
				reports from the website. (Except Acrobat reader if you want to 
				
				report PDF files and a free Microsoft snapshot viewer OR 
				
				Microsoft Access if you want snapshot files).
            </p>
            
            <p>
                The server only requires the Access Reporter Service and any 
				
				Microsoft Access version.</p>
            <p>
                The three SSW component files that need to be placed in the BIN 
				
				directory of your ASP .NET application are:</p>
                <ul>
                    <li>SSW.AccessReporter.Common.dll</li><li>
					SSW.AccessReporter.ReportClient.dll</li><li>
                        SSW.AccessReporter.ReportObjects.dll</li></ul>
              
               <p> Only the ReportClient.dll component needs to be referenced by 
				
				your web app, but both must be present.
            </p>
                
            <h2>
                System Requirements</h2>
             
              <blockquote>
                  We are 
					
					using Access Reporter and it is working wonderfully. I&#39;ve 
					
					received much positive feedback already. Everyone likes the 
					
					ability to run reports from their web browser.&quot;
                    <span>Matthew Mitchell - Alpena General Hospital</span>
    </blockquote>   

            <ul>
                <li><a href="/ssw/Database/LinksSoftwareUpdates.aspx#MicrosoftNET" target="_blank">
				.NET Framework 2.0</a></li>
                    <li>Microsoft Access (either 2000, XP or 2003)</li>
                    <li>Microsoft Windows (Windows 2000, Windows XP or Windows 
					
					2003 Server)</li></ul>
            <p>Note: With Windows 2000 you may need to restart.</p>


<br />

            <h2>
                What does the unregistered version give me?</h2>
            <p>
                Unregistered versions of SSW Access Reporter provide limited 
				
				functionality for period of 1 year. SSW provides free phone and 
				
				email support to answer queries on registered products.
            </p>
            <h2>
                Support</h2>
            <p>
                If you can&#39;t find it in the product documentation then check our <a href="/ssw/KB/KBResult.aspx?searchOn=Products&searchFor=SSW%20Access%20Reporter">
                    knowledge base</a> for further information and tips about 
				
				this product.
            </p>
            <p>
                Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">
				bug reports</a>
                and <a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">feedback</a> 
				so that we can evolve our software into a product that matches 
				
				your requirements. We guarantee a response.
            </p>
            <h2>
                Links</h2>
            <ul>
                <li><a href="/ssw/KB/CodeBase/02VB/A-CallingAccessReportsFromVB6-AC.txt">
				Calling Access Reports from VB 6</a></li>
                    <li><a href="/ssw/KB/CodeBase/05VB-Net/A-CallingAccessReportsFromVB7-AC.txt">
                        Calling Access Reports from VB.NET</a></li></ul>
            
        <p>Microsoft and the Office logo are trademarks or registered trademarks of Microsoft Corporation in the United States and/or other countries.</p>

    </div>
</asp:Content>
