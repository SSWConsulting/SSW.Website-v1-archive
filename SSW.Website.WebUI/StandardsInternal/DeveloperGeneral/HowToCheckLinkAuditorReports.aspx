<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="How to check Link Auditor reports"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

<h2>Why we check SSW Link Auditor reports everyday</h2>
	<p>
	<a href="/SSW/LinkAuditor/">SSW Link Auditor</a> is a powerful tool to maintain our website, it can automatically scan the website and reports on broken links, warning links, inconsistent casing links and links which do not follow SSW Link Auditor rules. 
	</p>
	<p>
	We have scan schedules running every night on our internal site, and the scan result reports will be generated every morning. So we need to check the reports and fix links everyday.
	</p>
	<p>
	In order to make sure the scan can be done in one night, we separate the scan into 4 small scans: <br />
	<ul>	
		<li><a href="/ssw/">/ssw/</a></li>
		<li><a href="/ssw/events/">/ssw/events/</a></li>
		<li><a href="/ssw/standards/">/ssw/standards/</a></li>
		<li><a href="/ssw/standardsInternal/">/ssw/standardsInternal/</a></li>
	</ul>
	</p>
	<p>
	Currently, the scan schedules are on <a href="file://DODO/C$/WINDOWS/Tasks/">DODO</a>:<br />
	<dl class="image">
            <dt><img src="Images/scanSchedules.gif" alt="SSW Link Auditor scan schedules"/></dt>
            <dd>Figure: SSW Link Auditor scan schedules</dd>
        </dl>
	And the reports are on <a href="http://Godzilla/reports/Pages/Folder.aspx">GODZILLA</a>:<br />
	<dl class="image">
            <dt><img src="Images/scanReports.gif" alt="SSW Link Auditor scan reports" width="386" height="168" /></dt>
            <dd>Figure: SSW Link Auditor scan reports</dd>
        </dl>	
	</p>

<h2>How to check reports</h2>
	<p>	
	There are 6 reports in the report folder: <br />
	<dl class="image">
            <dt><img src="Images/scanReports6.gif" alt="SSW Link Auditor reports" width="902" height="329" /></dt>
            <dd>Figure: SSW Link Auditor reports</dd>
        </dl>
	</p>
	<p>
	<ol>
		<li>Open report "01 ?Link Auditor Summary Report" to check the scan result summary</li>
			<dl class="image">
		            <dt><img src="Images/scanReport1.gif" alt="SSW Link Auditor report 01" width="662" height="207" /></dt>
		            <dd>Figure: SSW Link Auditor report 01</dd>
		        </dl>	
			<p>If there are any bad links exist, open their details report by clicking on the numbers.</p>
		<li>Open report "02 ?Link Auditor Scan Details Report" to check the broken and warning links</li>
			<dl class="image">
		            <dt><img src="Images/scanReport2.gif" alt="SSW Link Auditor report 02" width="922" height="72" /></dt>
		            <dd>Figure: SSW Link Auditor report 02</dd>
		        </dl>				
			<p>Bad link (pink parts) is reported with details reason (gray parts), you can locate it in the source page (yellow parts) by the position provided (blue parts).</p>
		<li>Open report "03 ?Inconsistent Link Casing Report" to check the inconsistent casing links</li>
			<dl class="image">
		            <dt><img src="Images/scanReport3.gif" alt="SSW Link Auditor report 03" width="909" height="182" /></dt>
		            <dd>Figure: SSW Link Auditor report 03</dd>
		        </dl>	
			<p>Inconsistent link (pink parts) is reported with groups (same link with different cases), you can locate it in the source page (yellow parts) by the position provided (blue parts).</p>
		<li>Open report "04 ?Link Auditor Rule Report" to check the links which do not follow SSW Link Auditor rules</li>
			<dl class="image">
		            <dt><img src="Images/scanReport4.gif" alt="SSW Link Auditor report 04" width="901" height="70" /></dt>
		            <dd>Figure: SSW Link Auditor report 04</dd>
		        </dl>	
			<p>Violate rules link (pink parts) is reported with details reason (yellow parts), you can locate it in the source page (pink parts) by the position provided (blue parts).</p>
	</ol>
	</p>

<h2>Additional Notes</h2>
	<ul>
	<li>
	After you fix the bad links on the internal server, remember to check them into TFS and upload them to our external servers.
	</li>
	<li>
	Some links were caused by timeout, if it doesn�t exists on the report everyday, you can ignore it.	
	</li>
	<li>
	If good links are mistaken reported, or you have any suggestions, please sent an email with the details information to SSW Link Auditor manager.
	</li>
	</ul>
	

<h2>Acknowledgements</h2>
	
	<p>
		<A href="/SSW/Employees/employeesprofile.aspx?EmpID=EL">Evan Lin</A><br>		
	</p>
		</asp:content>