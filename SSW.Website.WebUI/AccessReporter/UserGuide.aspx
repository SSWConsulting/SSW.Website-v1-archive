<%@ Page  Language="C#" AutoEventWireup="false"   MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Access Reporter - Screenshots"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

				<p><a href="/ssw/AccessReporter/">SSW Access Reporter</a> > Screenshots</p>
                <img src="Images/AccessReporterLogo.gif" alt="access reporter logo"  width="250" height="83" />
                <p><strong>Leverage your investment in Access reports</strong></p>
	      
	            <p>SSW Access Reporter allows you to publish your important MS access reports in a variety of 
		        popular formats, including Adobe PDF, Excel, Rich Text Format and as 
		        HTML web pages. You can easily deliver these reports over your intranet 
		        or public website, even if you have your database server on a different 
		        computer to your web server.</p>


<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
		<tr>
			<td>
				<b>SSW Access Reporter User Guide</b><br>
					<a href="#Pre">1. </a> Prerequisites<br />
					<a href="#Accessrpt">2. </a>Running SSW Access Reporter <br>
					<a href="#AddDatabase">3. </a>Add New Database <br>
					<a href="#Serviceaccountsetting">4. </a>Setting up the service account <br>
					<a href="#SetupSamplePage">5. </a> Using the SSW Access Reporter Client - Sample ASPX <br> 
					<a href="#SSWAccessReporterSample">6. </a>Viewing report on the Web <br>
					<a href="#WinSamples">7. </a>Viewing report in Windows Forms <br>
					<a href="#runperftst">8. </a>Running Performance Test <br>
					<a href="#emailnt">9. </a>Email Notification <br>				
					<a href="#DatabaseRequirement">10. </a>Database requirement <br>				
					<a href="#InstallGuide">11. </a>Installation Guide<br>					
			</td>
		</tr>
	</table><br><br>
	
	<ol>
		<li>
	<SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks></li>

<li>
<h2>Running SSW Access Reporter<a name="Accessrpt"></a></h2> </li>
				
	<p>
		<img src="Images/taskbarimage.gif" alt="Taskbar Image" width="98" height="38"><br>
		<b>Figure: Click Access Reporter Manager taskbar icon to run  Report Manager </b>
	</p><br>
	<p>
		<img src="Images/ReportManagerConfigure.gif" alt="Report Manager" width="577" height="401"><br>
		<b>Figure: Click Configure to change the settings</b>
	</p><br>
	
	<p>
		The Summary tab allows you to configure needed settings.<br>
		<img src="Images/SummaryTab.gif" src="Summary" width="506" height="458"><br>
		<b>Figure: Check you have all green ticks</b>
	</p><br>	
	<p>
	<img src="Images/PDFOptions.gif" alt="PDF Options" width="508" height="465" >
	<br>
	<b>Figure: Check your PDF Settings are OK</b> 
	</p><br>
	
	<p>
		After the PDF settings have been configured, you will need to configure 
		a database for access 
		reporter to generate reports from.
	</p>
	
	<p>
		<img src="Images/Databases.gif" alt="Databases" width="508" height="465" >
		<br>
		<b>Figure: Check Database(s) are OK</b> 
	</p><br><br>
	
<li>	<h2>Add new Database<a name="AddDatabase"></a></h2> </li>
	<p>
		On the Options form click on the "Databases" tab. Here you can add Databases. These 
		Databases are the 
		MDB's or the ADP's that contains the reports that can be generated. To configure a new Database, click on 
		the "Add" button, you will be required for the Database Name.  
	</p>
	<p>
		<img src="Images/DatabaseSettings.gif" alt="database settings" width="676" height="388" >
		<br>
		<b>Figure: Add New Database to publish report</b>
	</p><br>
	
	<p>
		<img src="Images/SetPasswordForDatabase.gif" alt="Set Password for Database" width="676" height="388" >
		<br>
		<b>Figure: Set password for Database</b>
	</p><br>
	
	<p>
		<img src="Images/PerformanceTest1.gif" alt="Performance Test" width="676" height="388" >
		<br>
		<b>Figure: To test the performace of publishling report, click "Performance Test" button</b>
	</p><br>
	
	<p>
		<img src="Images/PerformanceTest2.gif" alt="Performance Test" width="592" height="527" >
		<br>
		<b>Figure: Input parameters to test</b>
	</p><br>
	
	<p>
		<img src="Images/PerformanceTest4.gif" alt="Performance Test" width="413" height="159" >
		<br>
		<b>Figure: Result of test</b>
	</p><br>
	
<li>	<h2>Setting up the service account <a name="Serviceaccountsetting"></a> </h2> </li>
	
	<ol>
		<li>
			In Options form, go to Service Logon tab.&nbsp; 
		</li>
		<br>
		<br>
		<img src="Images/optionservicelogon.GIF" alt="OptionLogonLogon" width="508" height="465"><Br>
		<b>Figure: The Service Logon tab to setup service account to run Access Reporter Service</b>
		<br><br>

		<li>
			If the account user belongs to particular domain, then the user can click the select button and select 
			appropriate user name from popup window.
		</li>
		
		<br>
		<br>
		<img src="Images\selectuser.GIF" alt="SelectUser"><Br>
		<b>Figure: The Select User Window for service account</b>
		<br><br>

		<li>				
		 	After selecting user name, enter valid password in the Password box. 
		</li>
		<li>
			If the user belongs to a work group, the user can input his machine name and 
			username directly in the username textbox with a valid password. 
		</li>
		
		<Br><bR>
		<img src="Images\machinedomain.GIF" alt="Machine Domain"><br>
		<b>Figure: The Service Logon tab with Machine name \ Domain name Example </b>
	</ol>
	
	 
</p>
<p>
<!--SSW Code Auditor - Ignore next line(HTML)-->
	Secondly, through the Microsoft windows Service Manager you can also modify the user logon information:
    <ol>
		<li>
			From Start menu, go to Control Panel.
		</li>
		<li>
			In Control Panel go to Administrative tools.
		</li>
		<li>
			In Administrative Tools select Services.
		</li>
		<li>
			In Services, go to the SSW Access Reporter Service.
		</li>
		<br>
		<br>
		<img src="Images/service.GIF" alt="Services" width="613" height="221"><Br>
		<b>Figure: Double Click the Access Reporter Service in the Services Window to open properties window</b>
		<br><br>
		
		<li>
			Double click on the Access Reporter Service to open the Properties window.
		</li>
			
		<li>
			In Properties Window go to the Logon tab.
		</li>
		
		<bR><Br>
		<img src="Images/logon.GIF" alt="logon" width="420" height="478"><br>
		<b>Figure: Select the Logon Tab in the Service Properties Window to change the service account</b><BR><bR>
		
		<li>
			In the Logon tab enter the correct User name and password.
		</li>
		<li>
			Click OK to complete the configuration.</li>
	</ol>
</p>
<p>
    <!--SSW Code Auditor - Ignore next line(HTML)-->
	If you are still getting the error message box, you need to give your username log on as a service rights. Please follow the steps below:
    <ol>	
		<li>
			From start menu, go to control panel.
		</li>
		<li>
			In control panel go to Administrative Tools.
		</li>
		<li>
			In Administrative Tools go to Local Security Policy
		</li>
		<li>
			In Local Security Policy, click on Local Policies and then on User Rights Assignments.
		</li>
		<li>
			Once you are into User Rights Assignments, find the 'Log On as a 
			Service' entry.<bR><Br>
		<img src="Images/logonservice.GIF" alt="logon" width="534" height="196"><br>
		<b>Figure: The Logon Service Window</b><BR><bR>
		
		<li>
			Right click on 'Log On as a Service'&nbsp; and open the Properties window.
		</li>
		
		<bR><Br>
		<img src="Images/logonasaserviceproperty.GIF" alt="logonserviceproperty" width="414" height="478"><br>
		<b>Figure: Add User or Group to use for the Access Reporter service</b><BR><bR>

		<li>
			In the Properties window click on Add User or Group and then add the 
			user account you wish to use for the Access Reporter service.
		</li>
		<li>
			Click ok to complete the configuration.</li>
	
	</ol>
</p><br>

						
<li><a name="SetupSamplePage"></a><h2>Using the SSW Access Reporter Client - Sample ASPX</h2></li>
			
	<p>
		In order to configure the SSW Access Report Server, we have to check a couple of things to make sure they work 
		and are installed correctly.
	</p>

	<ol>
		<li>Navigate to the directory "C:\Program Files\SSW Access Reporter\Sample". Once there try 
		to open ReporterSample2000.mdb Make sure that Microsoft Access opens the file and that the two reports 
		open and display data.
			<p>
				<img src="Images/reports.gif" alt="reports" width="481" height="380" >
				<br>
				<b>Figure: The two sample reports in Microsoft Access</b>
			<br>
&nbsp;</p>
		</li>
		<li><a name="setrptADP"></a>Then try the same test with the file "SSWReporter2000.adp". This file reads from a SQL database. By 
		default it will attempt to connect to a Local version of SQL but you can change the connection string by 
		going to "File" then "Connection" in Access. You will probably need to use a username and password rather 
		than Windows authentication.		</li><br>
		<li>Open up the Report Manager and click on the "Show 
		Databases" button. Make sure that you have 2 jobs there, "Northwind (MDB)", and "Northwind 
        (ADP/SQL)&quot;. "Edit" both these jobs and 
		make sure that it is opening up the correct database and the report output directory is correct.</li><br>
		<li>After closing the Database Jobs page the Report Manager page pops up. Start the Report Manager by clicking on the Start button.
			<p>
				<img src="Images/ReportManager.GIF" alt="Report Manager" width="577" height="401" >
				<br>
				<b>Figure: Click on start button to start the Report Manager <br>
&nbsp;</b></p>
		</li>
	</ol>
		
	<li>	<h2>Viewing report on the Web <a name="SSWAccessReporterSample"></a></h2> </li>
		<ol>
		<li>Open your web browser and go to http://localhost/SSWAccessReporterSample1.1/   or   http://localhost/SSWAccessReporterSample2.0/</li>
		<li>Select a Database Name, Report Name, and Report Type and click the "Submit" button.
			<p>
				<img src="Images/ReportPage.GIF" alt="Report Page" width="469" height="237">
				<br>
				<b>Figure: The report page in the browser</b>
			<br>
&nbsp;</p>
		</li>
		<li>Hey presto, Instant report.
					<p>
				<img src="Images/SampleReportOutput.gif" alt="Sample Report Output" width="771" height="676">
				<br>
				<b>Figure: The sample report output in the browser</b>
			<br>
&nbsp;</p>
		</li>
	</ol>
</p>

	<li><h2>Viewing report in Windows Forms <a name="WinSamples"></a></h2></li>
	<p>
		<ol>
			<li>click on Samples on Main Form</li>
			<p><img src="Images/ReportManager.gif" alt="Samples" width="577" height="401" ><br>
			<b>Figure:Click on Samples button to open Winform Samples</b>
			</p>
			<li>Choose Windows Forms 1.1 or Windows Forms 2.0 tab to run the Sample</li>
			<p><img src="Images/WinFormSample.gif" alt="Winform Sample" width="426" height="346"><br>
			<b>Figure:Select Sample to view</b>
			</p>
			<li>Click on "Create" button to create the sample</li>
				<p><img src="Images/CreateSample.gif" alt="Create Sample" width="450" height="321"><br>
				<b>Figure:Click on create to create Sample</b>				
				</p>
			<li>Hey presto, Instant report.</li>	
			<p>
				<img src="Images/WindowsFormSample.gif" alt="Sample Report Output" width="980" height="602"> <br>
				<b>Figure: The Windows forms Sample report</b>
			</p>			
		</ol>
	</p><bR><br>
<li><h2>Running the performance test<a name ="runperftst"></a></h2> </li>

	<p>
	Microsoft Access has a bug. Some complicated reports (usually ones with subforms) cause memory leaks.
	</p><p>
	If you are experiencing memory leaks, you can use the performance test which runs a suspect report many times, monitoring the memory being used.
	</p><p>
	Start the performance test by choosing a database in the Database Jobs page and click "Edit Database" to open the Database Settings page.
	</p><p>
	<img src="Images/performance.gif" alt="memory settings" width="676" height="388"><br>
	<b>Figure: The Performance tab to check any memory leaks</b><br>
	</p><p>

	In the tab "Memory" in this page you can enter a maximum memory limit. The SSW Access Reporter will gracefully release and recover after the report has leaked an 
	amount of memory greater than the value you entered here.<br>
	To run the performance test, just click the button "Performance Test" to open the Performance Test page.
	</p><p>
	<img src="Images/performanceTest.gif" alt="Performance Test" width="602" height="578"><br>
	<b>Figure: Test the memory leak</b><br>
	</p><p>
	Enter the database you want to use, the name of the report and a query string, for example "OrderID=1234". At last you can enter the number of reports you want to create. The default number for this value is 50.
	</p><p>
	Start the performance test by clicking the "Start" button.
	</p><br><br>

<li><h2>Email notification<a name ="emailnt"></a></h2></li>

	<p>
	<% 'SSW Code Auditor - Ignore next line %>
	You can set up an Email Notification that sends you an Email when an error occurs.
	</p>
	<p>Activate the Email Notification by choosing a database in the Database Jobs page 
and click "Edit Database" to open the Database Settings page. In the tab "Performance" check the  "
Email me when an error occurs with this database" check box and enter the IP address of your SMTP server, the receivers and the senders 
	address. To test your settings click the button "Test".
	</p>
	<p>
	If you enable the Email Notification, an Email will be sent to you each time an error occurs when a report is created. You can also be notified when the access instance gets to the maximum memory limit. Enable this feature by checking the check box in the tab "Memory".
	</p>
	
	<p>
	<img src="Images/emailNotification.gif" alt="Email Notification" width="676" height="388"><br>
	<b>Figure: Setup email for any error notification</b><br><br>
	</p><br>
	
<li><h2>Database requirement<a name ="DatabaseRequirement"></a></h2></li>
	<p>
		SSW Access Reporter works on Microsoft Access 97, 2000, 2002, 2003, but it doesn't support Query String Argument on Microsoft Access 97.
	</p><br>


<li><h2>Installation Guide<a name ="InstallGuide"></a></h2></li>

	<p>
		To install the SSW Access Reporter, download and run the installation package from 
		<a href="/ssw/AccessReporter/"> the SSW Access Reporter Home Page</a>
	</p>
	<p>
		The package will install into the "Program Files" directory on your default drive. If your windows 
		installation is on the C: Drive, you should have minimal configuration to do, if not you will need to read 
		the following sections regarding how to configure the server and client.
	</p>
	<p>
		The installation will create a program group called "SSW Access Reporter" containing a link to 
		the server component manager. Of the files installed during the full installation, these are of note:
	</p>
	<p>
		<ul>
			<li>C:\Program Files\SSW Access Reporter\ReadMe.htm.</li>
			<li>C:\Program Files\SSW Access Reporter\SSW.AccessReporter.ReportManager.exe - the server management 
			component. <a href="#Accessrpt">Details</a></li>
			<li>C:\Program Files\SSW Access Reporter\Samples\SSWAccessReporterSample1.1\Default.aspx - a sample .NET 1.1 ASPX project that 
			uses the report server. <a href="#SetupSamplePage">Details</a></li>
			<li>C:\Program Files\SSW Access Reporter\Samples\SSWAccessReporterSample2.0\Default.aspx - a sample .NET 2.0 ASPX project that 
			uses the report server. <a href="#SetupSamplePage">Details</a></li>
			<li>C:\Program Files\SSW Access Reporter\Samples\WinformSamples1.1\ - 
			contains a sample .NET 1.1 Win Form project that 
			uses the report server. <a href="#SetupSamplePage">Details</a></li>
			<li>C:\Program Files\SSW Access Reporter\Samples\WinformSamples2.0\ - 
			contains a sample .NET 2.0 Win Form project that 
			uses the report server. <a href="#SetupSamplePage">Details</a></li>
			<li>C:\Program Files\SSW Access Reporter\Sample\SSWReporter2000.mdb - a sample 
			report database.</li>
			<li>C:\Program Files\SSW Access Reporter\Sample\SSWReporter2000.adp - a sample 
			report database that connects SQL. <a href="#setrptADP">Details</a></li>
			<li>C:\Program Files\SSW Access Reporter\Sample\bin\ReportClient.dll - a .NET dll 
			that is the client component<b>.</b></li>
			<li>http://localhost/SSWAccessReporterSample1.1 - this virtual directory is created 
			automatically as part of the sample installation. It points to the 
			ASP.NET 1.1 Sample directory. </li>
			<li>http://localhost/SSWAccessReporterSample1.1/reports - this virtual directory is created 
			automatically as part of the sample installation. It points to the 
			ASP.NET Sample Reports directory. </li>
			<li>http://localhost/SSWAccessReporterSample2.0 - this virtual directory is created 
			automatically as part of the sample installation. It points to the 
			ASP.NET 2.0 Sample directory. </li>
			<li>http://localhost/SSWAccessReporterSample2.0/report - this virtual directory is created 
			automatically as part of the sample installation. It points to the 
			ASP.NET Sample Reports directory. </li>

		</ul>
	</p><br>


		</asp:content>