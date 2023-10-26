<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Web Pager - Screenshots"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

		<a href="/ssw/WebPager/">SSW Web Pager</a> > Screenshots<br /><br />
		<P>
			<img src="Images/WebPagerLogo.gif" alt="Web Pager Logo" width="191" height="83" ></p><p>
			<b>Deliver the web to your inbox with SSW Web Pager</b>
		</P>

	      
	<p>		
		SSW Web Pager is a utility that sends any web page to your inbox. This utility has many applications - from emailing you the latest news daily to emailing  daily and monthly HTML reports to your administrator. Everything you need will be in one centralized location - the Inbox, saving you from opening many web pages to view all the pages you visit daily.
	</p>


		
<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
		<tr>
			<td>
				<b>SSW Web Pager Screenshots</b><br />
					<a href="#Pre">1.</a> Prerequisites<br />
				<a href="#RunWebPager">2.</a> Running SSW Web Pager Wizard<br />
				<a href="#Step1">3.</a> Step 1 - Record Events<br />
				<a href="#Step2">4.</a> </li>Step 2 - Save the XML Communication Transcript <br />
				<a href="#Step3">5.</a> Step 3 - Configure the Scheduler</li><br />
				<a href="#CLUtility">6.</a></li> The WebPager Command Line Utility<br />
			</td>
		</tr>
	</table>
	<br />
	<ol>
	<li><SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>
</li>
		<li>
			<a name="RunWebPager"></a>
			<h2 align=left>Running SSW Web Pager Wizard</h2>
			<p>When you run the SSW Web Pager there will be a step by step wizard to guide you through the web pager process.</p>
			<img src="Images/WebpagerWelcome.gif" alt="Welcome Screen" width="550" height="438" ><br />
			<b>Figure: Welcome Screen</b><br />
		</li>
		&nbsp;
		<li>
			<a name="Step1"></a>
			<h2>Step 1 - Record Events</h2>
			<p>The first step of this process is to start &quot;Recording&quot; events, 
			whereby a browser will be spawned for the user to go to the website 
			which they want mailed. Once the desired page has loaded, the user 
			should close the browser.</p>
			<img src="Images/WebpagerRecord.gif" alt="Click the Record button to start" width="550" height="438" ><br />
			<b>Figure: Click the Record button to start</b><br />&nbsp;<br />
			<img src="Images/WebPagerRecordProg.gif" alt="Recording Instructions" width="550" height="427" ><br />
			<b>Figure: Recording Pop-up Browser</b><br />&nbsp;<br />
			<img src="Images/WebpagerRecordError.gif" alt="Recording Error Message" width="550" height="438" ><br />
			<b>Figure: Unable to Record websites</b><br />
			If you encounter an error, please see this <a href="../../ssw/KB/KB.aspx?KBID=Q1292374">KB Q1292374</a><br />
		</li>
		&nbsp;
		<li>
			<a name="Step2"></a>
			<h2>Step 2 - Save the XML Communication Transcript</h2>
			<p>Once the browser window is closed, the application stores the 
			communication events as XML (as shown below). The user will need to save 
			the XML file as it will be used in the scheduler process.</p>
			<img src="Images/MSDNWebpage.gif" alt="The website you want emailed" width="550" height="389" ><br />
			<b>Figure: Close the browser on your selected website</b><br />&nbsp;<br />
			<table border="0" class="clsSSWTableCode" cellspacing="1" id="table1" width="80%">
				<tr>
					<td>
					<p>&lt;Session&gt;&nbsp;<br />
					&nbsp;&nbsp;&lt;Operation Path=&quot;msdn.microsoft.com/Default.aspx/&quot; ContentType=&quot;text/html;&gt;</p>
					<p>&nbsp;&nbsp;&nbsp;&lt;Header Name=&quot;accept&quot;&gt;image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, application/x-shockwave-flash, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*&lt;/Header&gt;</p>
					<p>&nbsp;&nbsp;&nbsp; &lt;Header Name=&quot;host&quot;&gt;msdn.microsoft.com&lt;/Header&gt;</p>
					<p>&nbsp;&nbsp;&nbsp; &lt;Header Name=&quot;user-agent&quot;&gt;Mozilla/4.0(compatible; MSIE 6.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET 
					CLR 1.0.3705)&lt;/Header&gt;</p>
					<p>&nbsp;&nbsp;&nbsp; &lt;Header Name=&quot;accept-language&quot;&gt;en-au&lt;/Header&gt;</p>
					<p>&nbsp;&nbsp;&nbsp; &lt;Header Name=&quot;cookie&quot;&gt;MSNADS=UM=; MC1=GUID=223f8803fb897e45b66a055a6cedf7ac&amp;HASH=0388&amp;LV=20057&amp;V=3&lt;/Header&gt;</p>
					<p>&nbsp;&nbsp;&nbsp; &lt;Header Name=&quot;referer&quot;&gt;http://msdn.microsoft.com/&lt;/Header&gt;</p>
					<p>&nbsp;&nbsp;&nbsp; &lt;Header Name=&quot;proxy-connection&quot;&gt;Keep-Alive&lt;/Header&gt;</p>
					<p>&nbsp; &lt;/Operation&gt;</p>
					<p>&lt;/Session&gt;></td>
				</tr>
			</table>
			<b>Figure: Example of XML file saved</b><br />&nbsp;<br />
			<img src="Images/WebpagerScreen3.gif" alt="Select the pages you want to Emailed" width="550" height="438" ><br />
			<b>Figure: Select the pages you want to Emailed</b><br />
			To learn more about XHTML view this <a href="../KB/KB.aspx?KBID=Q1607560">KB Q1607560</a><br />&nbsp;<br />
			<img src="Images/WebpagerScreen4.gif" alt="Enter your email address" width="550" height="438" ><br />
			<b>Figure: Enter your email address</b><br />&nbsp;<br />
			<img src="Images/WPCommandLine.gif" alt="Command Line Option" width="550" height="438" ><br />
			<b>Figure: Command Line Option for Advanced Users</b><br />
		</li>
		&nbsp;
		<li>
			<a name="Step3"></a>
			<h2>Step 3 - Configure the Scheduler</h2>
			<p>The final step is to configure the Scheduler. The user can specify, how 
			often the page will be mailed.</p>
			<img src="Images/WebpagerScreen5.gif" alt="Click on create to setup scheduler" width="550" height="438" ><br />
			<b>Figure: Click on create to configure scheduler</b><br />
			If you encounter an error, please see this <a href="../KB/KB.aspx?KBID=Q1137060">KB Q1137060</a><br /><br />
			<img src="Images/WebpagerScreen6.gif" alt="Setup Scheduler" width="416" height="465" ><br />
			<b>Figure: Select the date and how frequently you want the page mailed.</b><br />&nbsp;<br />
			<img src="Images/WPTestScheduledTask.gif" alt="Test your created Schedule" width="550" height="438" ><br />
			<b>Figure: Test your created Schedule </b><br />
			If you do not receive an email, please see this <a href="../KB/KB.aspx?KBID=Q1460075">KB Q1460075</a><br /><br />
			<img src="Images/WebpagerScreen7.gif" alt="Schedule has been created" width="550" height="438" ><br />
			<b>Figure: Schedule has been created</b><br />
			<br />
			<img src="Images/MSDNMail.gif" alt="Example Mail" width="525" height="371" ><br />
			<b>Figure: An Example of a mailed website</b><br />
			If you have problems with viewing images, refer to <a href="../KB/KB.aspx?KBID=Q1708792" >KB Q1708792</a></p>
		</li>
		&nbsp;
		<li>
			<a name="CLUtility"></a>
			<h2>The WebPager Command Line Utility</h2>
			<p>The WebPager is a separate executable (&quot;WebPager.exe&quot;) that takes as 
			its argument an email address and an XML communication file. What the 
			WebPager does is replay the communication events stored in the XML file 
			to retrieve the latest web page. Once that is done, it emails the user 
			specified in the command line argument.</p>
			<p>As such, one can setup a Scheduled Task running this executable to 
			schedule the deliver of web pages to your inbox.</p>
			<img src="Images/ExampleWPCommandLine.gif" alt="Example Command Lines" width="550" height="282" ><br />
			<b>Figure: Using the WebPager Command Line Utility</b></p>
		</li>
		</ol>
		</asp:content>