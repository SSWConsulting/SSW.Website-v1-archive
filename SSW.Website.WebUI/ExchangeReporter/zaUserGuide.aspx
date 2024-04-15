<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>
<%@ Page  Language="C#"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Exchange Reporter - Screenshots"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">		
		<p><a href="Default.aspx">SSW Exchange Reporter</a> &gt; Screenshots</p>
	
	<img src="/ssw/ExchangeReporter/Images/ExchangeReporterLogo.gif" alt="Exchange Reporter" width="292" height="82"><br /><br />
	<b>Efficiently analyze your organization's email usage with SSW Exchange Reporter</b><br />
		<p>
		SSW Exchange Reporter provides the tools and reports you need to efficiently analyze your organization's email usage. Reports range from who is sending the most emails to clients to who has the largest mailbox. 
		</p>
		
	
		
		<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}" id="table20">
		<tr>
			<td>
				<b>SSW Exchange Reporter Extraction Services &amp; Manager Setup 
				Instruction</b><br />
					<a href="#Pre">1.</a> Prerequisites<br />
					<a href="#Overview">2.</a> Overview<br />
					<a href="#DeployDatabase">3.</a> Step 1 - Deploy Database<br />
					<a href="#PublishReports">4.</a> Step 2 - Publish Reports<br />
					<a href="#ConfigService">5.</a> Step 3 - Configure Extraction Windows Service<br />
					<a href="#SelectExchangeUsers">6.</a>Step 4 - Select Exchange Mailboxes<br />
					<a href="#SetupSchedule">7.</a> Step 5 - Configure Schedule<br />				
					<a href="#ExtractionOptions">8.</a> Step 6 - Extraction Options<br />
					<a href="#RunManually">9.</a> Run Manual Extraction<br />
					<a href="#RunService">10.</a> Run the Extraction Windows Service<br />
					<a href="#OtherSettings">11.</a> Other Settings<br />
				
				</td>
		</tr>
	</table>
		<a href="UserGuide_OldIcons.aspx">Click here to see the old screens
</a>
<ol>
<li>	<SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks></li><li>
			<h2><a name="Overview">Overview</a></h2>
			<p>Architecturally, SSW Exchange Reporter works like SQL Server, it 
			runs as a service and has a nice user interface to start and stop 
			the service. The Extraction Manager is where you can start and stop 
			Extraction Windows Service and setup everything. </p>
			<p>
			<img border="0" src="Images/v831_ExtractionManager.jpg" width="420" height="612"><br>
			<b>Figure: Start and 
			stop the service and diagnose the status of each component</b></p>
</li>
<li>
			<h2>Step 1 - <a name="DeployDatabase">Deploy Database</a></h2>
			<p>
			    Exchange Reporter requires that each exchange server has its own SQL database, 
			    ideally in the same local network to reduce the need for sending data remotely and speed up the extraction.
			</p>
			<p>
			To deploy a database, you need to click on &quot;Tools-&gt;Options&quot; and open the &quot;Reporting Database&quot; 
			tab:
			</p>
			<p>
			<img border="0" src="Images/v831_UserGu3.jpg" width="520" height="572"><br>
			<b>Figure: Click 'Select 
			... ' to deploy a new database</b></p>
			<p>
			<img border="0" src="Images/v830_Options_Database_Deploy.gif" alt="DB Setup" width="386" height="503" ><br>
			<b>Figure: Click &quot;Create&quot; to start 
			the deployment process</b></p>
			<p>Before you create or connect to your database, you need to make 
			sure your account has enough privileges to access your database 
			server and be able to create and drop database. Normally, a 
			'Database Creator' will be enough.</p>
			<p>To create a new database:
			
			<ol>
				<li>Uncheck the 'Insert Sample Data' checkbox to enable edit on 
				'Database Name' textbox,</li><li>Change the 'Database Name' (DO NOT use the default 'SSWExchangeReporterSample', 
				this will cause Exchange Reporter to treat your database as a 
				sample database and will not function correctly),</li><li>Type in the username and password if you are using SQL 
				server authentication, otherwise leave it as 'Windows NT 
				Integrated Security',</li><li>Click 'Create'.</li></ol>
			
			<p>Exchange Reporter will deploy your database to the server you 
			selected. When this is complete, close 'Database setup' form to 
			return to the 'Reporting Database' tab.</p>
			<p>
			<img border="0" src="/ssw/sqlauditor/Images/V9-77_ConfigureSampleDB_3.gif" alt="Creating database" width="578" height="346" ><br>
			<b>Figure: Creating database to the selected server</b></p>
			<p>To select an existing database, <br>
			<img border="0" src="Images/v830_Options_Database_UDL.gif" alt="Select a DB" width="377" height="477"><br>
			<b>Figure: Select an existing database<br>
			</b>
			<br>
			The 'Reporting Database' tab looks like this when the 
			database has been deployed successfully.<p>
			<img border="0" src="Images/v831_UserGu4.jpg" width="521" height="571"><br>
			<b>Figure: You will get a &quot;tick&quot; if your database was correctly set 
			up</b></p>				
</li>





<li>
			<h2>Step 2 - <a name="PublishReports">Publish Reports</a></h2>
			<p>To publish the reports, open the reports tab:</p>
			<p>
			<img border="0" src="Images/v831_UserGu5.jpg" width="522" height="572"><br>
			<b>Figure: Click &quot;Select...&quot; to configure your report publication</b></p>
			<p>
			<img border="0" src="Images/v832_ReportPublication1.gif" width="438" height="704"><br>
			<b>Figure: Click &quot;Create&quot; to 
			publish a new set of reports</b></p>
			<p>The default Reporting Server is pointed to your local computer, 
			you configure this by click on 'Configure ...' button below the 
			'Report Server and Report Manager' section to specify a different 
			server and the credential you want to use to connect with the 
			server. </p>
			<p>
			<img border="0" src="Images/v832_ReportServer1.gif" width="432" height="392"><br>
			<b>Figure: Configure Report Server and Report Manager url and 
			authentication mode then click on 'Validate' to make sure they are 
			correct</b></p>
			<p>To publish a new set of reports:</p>
			<ul>
				<li>Configure the 'Report Server' to the URL of your report server 
				address. Exchange Reporter uses
				<a href="/ssw/Redirect/Microsoft/MSSQLReportingServices.htm">SQL 
				2000 Server Reporting Services</a> web services to publish 
				reports. This web service provides the&nbsp; necessary interface for 
				Exchange Reporter to setup credentials, create the report folder and 
				upload rdl files.&nbsp; You need to make sure your account has 
				necessary privileges to access this web service. The default web 
				service URL is : <a href="/ssw/Redirect/Your.htm">
				http://YourReportServer/ReportServer/ReportService.asmx</a> . 
				</li>
				<li>Change the 'Report Directory Name' to the name you want (We 
				recommend you remove the 'Sample' as this will confuse your 
				users). </li>
				<li>Click on 'Create' button.</li><li>Exchange Reporter will publish reports to your report 
				server. Once the report publishes successfully, a new browser 
				window opens and will show you the new reports. 
				</li>
				
			</ul> 
			<img border="0" src="Images/UG-RP-10.jpg" alt="Published reports" width="794" height="758"  ><br>
			<b>Figure: Your newly published reports now appear in the 
			<span lang="en-au"></span>report 
			browser</b><br>
			  <a href="/ssw/exchangereporter/Reports/Default.aspx">View sample reports</a>
			<br>
			</li>
			<li>
			<h2>Step 3 - <a name="ConfigService">Configure Extraction Windows Service</a></h2>
			<p>SSW Extraction Windows Service allows you run extraction as a 
			service, which gives you the flexibility to schedule the extraction 
			process to run outside of your business hours. To install and setup 
			this service, open 'Options-&gt;Exchange and Service' tab.</p>
			<p>
			<img border="0" src="Images/v831_UserGu6.jpg" width="521" height="571"><br>
			<b>Figure: Click 'Select User 
			...' to install the Extraction Service and configure the account that 
			will be used to run it</b></p>
			<p>To install Extraction Windows Service, click 'Select User ...' 
			to open 'Service User Selection' form:</p>
			<p>
			<img border="0" src="Images/v831_UserGu7.jpg" width="414" height="376"><br>
			<b>Figure: 'Service User Selection' form, enter/select your service 
			account and click on 'OK' to install the Extraction Service</b></p>
			<p>In the form above, click &quot;Select&quot; to choose the 
			service account you want to use for running the Extraction Service. 
			This account must have read permission on all of your 
			mailboxes. <br>
			<br>
			Note (Common Issues):
			</p>
			<ul>
				<li>For instructions for how to create an account with read 
				permissions to all mailboxes, refers to:
				<a href="/ssw/KB/KB.aspx?KBID=Q503896">
				http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q503896</a></li><li>For Windows 2000 Server/Advanced Server users, you may meet 
				the following error message, please refer to
				<a href="/ssw/KB/KB.aspx?KBID=Q1877839">
				http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q1877839</a> for 
				instructions to resolve this issue. <br>
				<img border="0" src="Images/v830_Options_Service_Err1314.gif" alt="Extraction Windows Services" width="386" height="208"  ><p></li>
			</ul>
			</li>
			<li>
			<h2>Step 4 - <a name="SelectExchangeUsers">Select Exchange Mailboxes</a></h2>
			<p>SSW Exchange Reporter allows you to select the mailboxes to 
			collect data, you can only select the mailboxes you want to report on 
			and skip all other mailboxes. To select the mailboxes, go to 
			the 'Options-&gt; Exchange Users' tab.</p>
			<p><img border="0" src="Images/v831_UserGu8.jpg" width="522" height="572"><br>
			<b>Figure:&nbsp; Select the mailboxes which you want to extract data 
			from</b></p>
			<p>If you have followed the instructions above, the 'Access' column 
			in the list may show 'False'. This is because the permission 
			settings you just created for your service account may take at least 
			15 minutes to take effect. If this is the case, you will need to 
			wait a while then come back to this form. This behaviour has been 
			described in this Microsoft KB
			<a href="/ssw/Redirect/Microsoft/MSSupport.htm">
			http://support.microsoft.com/Default.aspx?scid=kb;en-us;262054</a> </p>
			<p>Use the drop down list on the top to select the Organization Unit 
			or select the users individually. After you select all the mailboxes 
			you want to extract, click 'Apply' to save your settings.</p>
			<p>If you want to rebuild this list, click 'Reload Users'. 
			This tells Exchange Reporter to contact your Active Directory, 
			and load your user list into the database again. Normally, this list 
			will be loaded from database instead of Active Directory to make the 
			process a lot faster.</p>
			<p>Note:</p>
			<ul>
				<li>The 'Error' column indicates the mailboxes 
				that could not be extracted in last extraction</li><li>'Scan Active Directory for new users during extraction' 
				allows Exchange Reporter to update this list automatically 
				according to your Active Directory changes. However, if you have 
				multiple servers, you should disable this option to avoid errors. 
				</li>
				<li>SSW Exchange Reporter can only extract mailboxes that are 
				located on the local exchange store. This is why the 'Server' drop down 
				has been disabled, and only the users on your local exchange 
				store are selected by default. </li>
			</ul>
			<br><br>
			</li>
			<li>
			<h2>Step 5 - <a name="SetupSchedule">Configure schedule</a></h2>
			<p>Exchange Extraction service can run at background and process the 
			extraction according schedule. To configure a schedule, select the 
			'Schedule' tab:<br>
			<img border="0" src="Images/v831_UserGu9.jpg" width="521" height="571"><br>
			<b>Figure: You can configure a schedule to run the Extraction Service</b></p>
			<p>To create a new schedule, click 'Add...'&nbsp; and open the 'Schedule 
			Properties' dialog:</p>
			<img border="0" src="Images/v831_UserGu10.jpg" width="534" height="360">
			<br>
			<b>Figure: Create a new schedule</b>
			<p>Note: At least one schedule is required to run the Extraction 
			service.<br></p>
			</li>
			<li>
			<h2>Step 6 - <a name="ExtractionOptions">Extraction Options</a></h2>
			<p>Extraction Options tab allows you to control the extraction process and the data collected from your Exchange 
			Store. 
			</p>
			<img border="0" src="Images/v830_Options_ExtractionOption.gif" alt="Extraction tab" width="530" height="581" ><br>
			<b>Figure: Set options for the extraction process and data 
			collection</b><br>
			<br>
			Note:<br>
				<ul>
					<li>Enable Message Body Extraction: message body extraction may be 
			very time consuming because some of the emails may have very long 
			content. If you don't want to report on individual message, you may 
			uncheck this option to make the extraction faster.</li><li>Mail Folders: you can collect data from every mail folder or specify the folders you want to collect data from. </li>
					<li>Public Folders: if you have a public folder in your exchange server,  
					enable this option to collect data from your public folder 
					and messages.</li><li>Minimum date to use during extraction: normally, extraction will run 
		on all messages in your exchange store, if you just want the message 
		after a specific date, you can choose the date here, and the extraction 
		will skip any messages that are older than that.<br></li></ul><br>
			</li>
			<li>
			<h2><a name="RunManually">Run Manual Extraction</a></h2>
			<p>If you have followed all the instructions above, go back to 
			'Extraction Manager' main window, the 'Start' 'Stop' and 'Process' 
			buttons will be enabled. Now, you are ready to run extraction 
			to collect data.</p>
			<p>
			<img border="1" src="Images/v830_Extraction_Manual.gif" alt="Manual extraction" width="790" height="673" ><br>
			<b>Figure: Click 'Process' to 
			collect data manually</b></p>
			<br>
			</li>
			<li>
			<h2><a name="RunService">Run the Extraction Windows Service</a></h2>
			<p>To run Extraction Windows Service, you can either click on the 
			'Start' button on 'Extraction Manager' main form or start it from 
			your service manager. If the service starts successfully, you will 
			have the following entry in your 'Application Event Log'.</p>
			<p><img border="0" src="Images/v830_Service_Event.gif" alt="Service Started" width="415" height="466" ><br>
			<b>Figure: If the Extraction Service started correctly, you will 
			have an entry you in your Application Event Log</b></p>
			<br>
			</li>
			<li>
			<h2><a name="OtherSettings">Options - Other</a></h2>
			<p><img border="0" src="Images/v830_Options_Others.gif" alt="Other tabs" width="530" height="581"><br>
			<b>Figure: Set options for audio feedback and email</b></p>
			<p>
				<ul>
					<li>Email Domain is your default email domain name.  Exchange Reporter uses this 
					information to classify email addresses as 
					internal or external in some of the reports. 
					<br>Example: if you have an email address like FirstnameSurname@s*w.com.au, 
					then enter 'ssw.com.au' as your email domain.				
					</li>
				</ul>
			</p>
			
			</li>
		</ol>
			<br>
		</asp:content>