<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW How to Fix Broken Links"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
		<p>
Broken links not are not only a bug in the web site, but may damage the company's 
professional image.<BR>
<BR>We have developed a strategy to reduce and possibly 
eliminate every broken links on a web site. Currently we use <a href="/ssw/LinkAuditor">SSW Link Auditor</a> to 
scan our site for broken links.</p>

<P>Many webmasters work with sites that have grown large over time and have 
consequently become difficult to maintain. They fix problems as customer report 
bugs. A better approach is to use a utility that will analyze your whole site 
and report any problems. 
</P>
<P>
One such utility is SSW Link Auditor. Give it the URL and after a few minutes you have a full 
analysis of any problems. We worry about broken links (dead URLs) and broken 
anchors. We recommend that you use a utility like SSW Link Auditor on a 
fortnightly basis and have a quick look at the report it produces. </P>
<P>
The command line version of this utility can be scheduled to run using Windows 
Task Scheduler, and automatically generate the report on the file system. </P>
<P>
A site with more than 3000 links takes approximately 3 minutes to check. You 
can constantly find dead links and site errors before your potential customers 
do! 
</P>

<a name="comparison"></a>

<h2> Comparison of  Link Scanners</h2>

<br>

<table class="clsSSWTable" width="90%" align="center">
	<thead>
		<tr>
			<th>Name</th>
			<th>Features</th>
			<th>Ease of Use</th>
			<th>Performance</th>
			<th>Cost</th>
		</tr>
	</thead>
	<tbody valign="top">
		<tr>
		  <td bgcolor="#FFFFCC"><a href="/ssw/LinkAuditor">SSW Link Auditor </a><b>**RECOMMENDED**</b></td>
		  <td bgcolor="#FFFFCC">Good. Thorough in scanning links. Supports SQL 
			Logging, SQL Reports and a command line version. </td>
		  <td bgcolor="#FFFFCC">Very easy to use </td>
		  <td bgcolor="#FFFFCC">Fastest.<p>Averaged 5min 30sec on
			<a href="/ssw/Redirect/Standards.htm">www.ssw.com.au/ssw/Standards</a></p>
			<p>28,533 Links Processed</td>
		  <td bgcolor="#FFFFCC">$299 for unlimited links</td>
	  </tr>
		<tr>
			<td><a href="/ssw/Redirect/Xenu.htm" target="_blank">Xenu's Link Sleuth</a> 
            <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" width="17" height="11">            </td>
			<td>OK. Only does anchor tags. This is sufficient for all web sites 
            I have ever been involved with.</td>
			<td>Very easy to use</td>
			<td>Fast<p>Averaged 11min 40sec on<br><a href="/ssw/Redirect/Standards.htm">www.ssw.com.au/ssw/Standards</a></p>
			<p>11,972 Links Processed</td>
			<td>
				<b>Free.</b><br>
                Note: The corporate version allows command line operations, and costs about 
				USD$200.
			</td>
		</tr>
		<tr>
			<td><a href="/ssw/Redirect/Linkbot2.htm" target="_blank">Watchfire Linkbot Pro</a> 
            <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" width="17" height="11"></td>
			<td>
				Great.<br>
				Has just about everything useful. Supports text-pattern link searching in JavaScript files. 
				Useful if your menu's built on the client side dynamically with JavaScript.
			</td>
			<td>Easy to use</td>
			<td>OK</td>
			<td>Obsolete product, replaced by Watchfire WebQA</td>
		</tr>
		<tr>
			<td><a href="/ssw/Redirect/Watchfire.htm" target="_blank">Watchfire WebQA</a> 
            <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" width="17" height="11"></td>
			<td>
				Great.</td>
			<td>
				Fairly complicated to setup and use. It took a programmer more than 30 minutes to get a
				grasp at how things work. So be prepared to spend a little time clicking around.
			</td>
			<td>OK</td>
			<td>Way too expensive!!! <br>
            USD$1495</td>
		</tr>
		<tr>
			<td><a href="/ssw/Redirect/Elsop.htm" target="_blank">Elsop LinkScan 10</a> 
            <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" width="17" height="11"></td>
			<td>Great.</td>
			<td>
				Requires installation Active Perl before hand. Configuration's some what cryptic, and 
				user interface looks unprofessional.
			</td>
			<td>Defaults to 5 threads, requires a bit of tweaking before speed can 
            compare to the others.</td>
			<td>
				Even more expensive!!! <br>
                Depends on how many links you have.... USD$750 for the smallest 
                version - that is just for 500 documents...&nbsp;
			</td>
		</tr>
		<tr>
			<td><a target="_blank" href="/ssw/Redirect/WebLinkValidator.htm">Web 
            Link Validator</a> 
            <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" width="17" height="11"></td>
			<td>Great.</td>
			<td>
				Fairly complicated to configure and use. It took a programmer more 
				than 30 minutes to get a grasp of how things work.</td>
			<td>OK</td>
			<td>
				$295 for unlimited links for single user</td>
		</tr>
		<tr>
			<td><a target="_blank" href="/ssw/Redirect/LinkCheckerPro.htm">Link Checker Pro</a> 
            <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" width="17" height="11"></td>
			<td>Great.</td>
			<td>Easy to use</td>
			<td>OK<p>Averaged 5min 30sec (5 threads) on local sample website</p>
			<p>1,946 Links Processed</td>
			<td>Way too expensive!!! <br>
            USD$1200</td>
		</tr>
	</tbody>
</table>

<br>
<br>
Verdict: Xenu's Link Sleuth is the better out of these 4. It's ease of use and speed clearly gives an edge over
the others.
<br>
<br>

<h2>Generate Link Scan Report</h2>
	
	<p><b>Manually:</b></p>

	<p>
		Start Link Auditor (on the start menu). </p>
		
	<ol>
		<li>Enter the web site address you want to scan as the starting URL 		
		<li>Don't check external links
		<li>Click Next to begin scanning links
	</ol>
	
	<p>When done, Link Auditor generate a report. Click XML + XSLT (recommended) to open the report in Internet Explorer.  The report is saved as C:\Program Files\SSW Link Auditor\LastReport.xml by default, although you can specify a different path on the How to Scan page of the wizard. </p>
	<p><b>By Schedule:</b></p>
  
	<p>
		In Windows Task Scheduler (Start -&gt; Programs -&gt; Accessories -&gt;System Tools -&gt; Scheduled Tasks):
	<ol>
			<li>Create a task</li>
			<li>Locate the Link Auditor Console executable (typically &quot;C:\Program Files\SSW Link Auditor\LinkAuditorConsole.exe&quot;)</li>
			<li>Append arguments &quot;[the URL to scan] [report file path] -beyond +fragments +fswf&quot; to the end of the execution path</li>
			<li>Specify the desired recurrence pattern</li>
	</ol>
<%--Moved to SSW Rules to Better Websites - Tuning and Maintenance		
<h2>Tips on finding broken links</h2>
 
 <p>
	Often times, web pages are dynamic. Most link scanners are not capable of submitting form information.  The trick is to allow a 
	&quot;door&quot; for link scanner go through to scan a dynamic section of a site.  A common technique is to hard coded hidden 
	link with a query string at the bottom of the page that allows the link scanner to follow in to the simulated user input.  See our
	<a href="/ssw/KB/">knowledge base</a> page for example.  You will have to look in the HTML source, and find the following
	code:
</p><pre>&lt;a href="http://bee/ssw/KB/KBResult.asp?searchOn=Products&searchFor=All%20Products"&gt;&lt;/a&gt;</pre>
<table><tr><td><b>Figure: Example source code - finding broken links</b></td></tr></table>

<p>
	It will return all the knowledge base articles in a paged format.  The link scanner will click the Next Page link and eventually scan
	through the entire knowledge base.
</p>
	
--%>  
    
<h2>Which problems will you fix?</h2>
 
 <p>
 
	The right column of the report describes the error that LinkAuditor encountered when trying to load the page. Underneath each entry is a list of pages which contain the broken link. We want 
	to fix all of the:
	<ul>
		<li>NotFound (404 errors)
		<li>AccessDenied (403 errors)</li>
	    <li>FragmentMissing</li>
	    <li>FragmentDuplicated</li>
    </ul>

    <h2>Tips on fixing typical errors</h2>

<p>
	With external links that are no longer valid, comment out the links like this. e.g. 
</p>
<p>	
	&lt;!--JL 11/03/2002, url doesn't exist &lt;A href=http://www.invalid.url&gt; --&gt; 
</p>
<p>
	There is a possibility to link that come up again if the Web Server is down.
	Remember to always date the comment so that you can permanently delete it if it has been down for a while.
</p>
		 
	  <b>Product Documentation</b><br>
	    <!--You will find many links such as "HTTP://localhost/..." in product doco 
	    that are designed for off-line viewing. These should be left as they are.-->		
	  <p> Don't forget to synchronize your local copy of the web site with the production 
	    server! It's a very easy mistake to make so I suggest that you keep 
	    <a href="/ssw/Standards/DeveloperGeneral/WebdevelopmentTools.aspx#FtpSync">FtpSync</a> 
	    open the whole time and <b>synchronize the current directory every time you 
	    edit a file</b>.</p>

      <h2>Finishing up</h2>

<p>

	Please make sure that the site is completely synchronised and all ZZed files
	are deleted from the production server. Run Link Auditor again and create the report to prove that you 
	have fixed all broken links properly. Then you need to decide who will do this task next month. 
	Please do this according to alphabetical order on surname. You may consider skipping
	staff members who are overloaded or working on important client tasks. Then send the URL of your
	report to 
	the staff member assigned to deal with this task next month (and CC your supervisor). 
	Remind them to run Link Auditor again just prior to fixing the site. 

</p>

<h2>Acknowledgements</h2>
	<p>
		<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
		<br>
		Peter Huang<br>
		Edward Forgacs
	</p>
		</asp:content>