<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="SSW Internal - Where To Go Today" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<%  Response.Redirect("http://intranet.ssw.com.au/Lists/WhereDoYouWantToGoToday/WhereDoYouWantToGoToday.aspx")%>
<h2>SSW Servers - Do you know where to go for what? </h2>
    <p>
        <a href="http://mermaid/Lists/WhereDoYouWantToGoToday/WhereDoYouWantToGoToday.aspx">Internal Where To Go Today - SharePoint</a>
    </p>
    <p>
        External Where To Go Today - SharePoint(to come)
    </p>
    <s>
    <div class="wheretogo">
        <div class="item">
          <img src="/ssw/StandardsInternal/Images/icons/earth.png" alt=""/> 
          <h3>Web</h3>
		<p><a href="/">Ant - Corporate Intranet</a><br />
		Internal version of <a href="http://www.ssw.com.au">www.ssw.com.au</a></p>
		<p><a href="/ssw/StandardsInternal/InductionTraining/default.aspx">
		Induction Training</a><br />
		All the things you should remember from your first week<br />
		</p>
		<p><a href="/ssw/StandardsInternal/">Standards Internal</a><br />
		<strong>*This page - we are here*</strong><br />
		</p>
		<p>
		<a href="/ssw/StandardsInternal/browse.aspx" style="background-color: yellow;">
		Standards Internal (Browse)</a><br />
		Things we can't share with the rest of the world<br />
		</p>
		<p><a href="/TimeProOnline/clientprojects.aspx">List of showcase sites</a><br />
		Marlon, Uly, Adam and Tim use these for customers<br />
		</p>           
        </div>
        
        <div class="item">
            <img src="/ssw/StandardsInternal/Images/icons/document_chart.png" alt="" />
            <h3>Reports</h3>
		    <p><a href="http://reports.internal.ssw.com.au/Reports">Seadragon - Reports 
		    2008</a><br />
		    SQL Reporting Services 2008 - External - SSW reports and Customer 
		    reports<br />
		    </p>
		    <p><a href="http://Seadragon/Reports/Pages/Folder.aspx">Seadragon - Reports 
		    2008</a><br />
		    SQL Reporting Services 2008 - Dev & Test reports<br />
		    </p>   
		    <p><a href="http://piranha"> Piranha - BI Reports 2005</a><br />
		    PerformancePoint 2007 Production server<br />
		    </p>            
        </div>
        <div class="item">
            <img src="/ssw/Company/Images/sswLogo.jpg" alt=""/>
            <h3>Products</h3>
		    <p><a href="/projects/Internal.aspx">Internal Projects</a><br />
		    What are the statuses of projects<br />
		    </p>
		    <p>
		    <a href="/ssw/StandardsInternal/DeveloperGeneral/ProductManagers.aspx">
		    List of Product Managers</a></p>
		    <p>SSWDiagnostics - Admin
		    <br />
		    Internal database update page for SSWDiagnostics database </p>
        </div>
        
        <div class="item">
            <img src="/TimeProOnline/Images/MicrosoftMini.gif" alt=""/>
            <h3>SharePoint</h3>
		    <p><a href="http://Mermaid">Mermaid - SharePoint 2007</a><br />
		    Use for <strong>*better*</strong> searching of the intranet (this is 
		    currently in the process of being stabilized/configured)</p>
        </div>
        
        <div class="item">
            <img src="/ssw/StandardsInternal/Images/icons/DotNetNuke.ico" alt=""/>
            <h3>DotNetNuke (DNN)</h3>
		    <p><a href="http://dnn.ssw.com.au">DNN Training</a>
		    <br />
		    DotNetNuke tutorials and resources</p>            
        </div>
        
        <div class="item">
            <img src="/ssw/StandardsInternal/Images/icons/workstation1.png" alt=""/>            
            <h3>Setup Files</h3>
		    <p><a href="file://bee/SetupFiles/">Bee - Setup Files</a><br />
		    You can install the latest versions of applications</p>
        </div>
        
        <div class="item">
            <img src="/ssw/StandardsInternal/Images/icons/data_table.png" alt=""/>
            <h3>Servers</h3>
		    <p><a href="https://au.ssw.com.au:8443/login.php3">Plesk AU
		    </a><br />
		    </p>
		    <p><a href="https://us.ssw.com.au:8443/login.php3">Plesk US
		    </a><br />
		    </p>
		    <p>Note: Standard Login name is 'ssw', password is [standard_simple]  (for the ssw.com.au domain)</p>
		    <p>Note: Admin Login name is 'Admin' (and only Joe can use this - details in "<a href="http://mermaid/Network/Shared%20Documents/01_SSW%20Network%20Procedures.docx">SSW Network Procedures</a>")  (for maintaining all clients)</p>
		    <p><a href="/ssw/StandardsInternal/DeveloperProductsHosting/Browse_Plesk_Instructions.aspx">Instructions for Browsing and Creating Websites on Plesk</a></p>
		    <p>US Database server    (web-browsable)
		    </a><br />
		    </p>
		    <p>AU SQL Database Server 
		    (web-browsable)<br />
		    </p>
		    
        </div>      
        <div class="item">
            <img src="/ssw/StandardsInternal/Images/icons/database.png" alt=""/>
            <h3>Databases</h3>
            <p>DRAGON\Databases\SSWData2005 - central database containing client, employee, invoicing and product information<br />
		    DRAGON\Databases\SSWData2000Dev - for development purposes<br />
		    DRAGON\Databases\SSWData2000Test - for testing purposes<br />
		    DRAGON\Databases\SSWData2000 - for production purposes</p>
		    <p>
		    <strong>Note : You access the above via the SQL Server Management Server Tool, we could install some 3rd Party Tools to browse them via the browser (in the future)</strong></p>
        </div>  
        <div class="item">
            <img src="/TimeProOnline/Images/logo_WhatsUpProfessionalMini.gif" alt="" />
           <h3>Server Validation</h3>
		    Cow - What's up Gold
		    Dan always keeps all servers good and green (Account Username:Admin Password: standard simple)<br />
		    <br />
		    Machines Room KVM<br />
		    <a href="http://192.168.1.18">Internal</a><br />
		    <label style="color: blue; text-decoration: underline;">External</label> (unavailable)<br />
		    (Login:super Password:normal password)<br />
		    <br />
		    Seal AU - Remote Reboot (Not Implemented yet)<br />
		    <a href="https://www.nac.net/customercare.asp">Seal 
		    US - Remote Reboot</a> (Account Number:38745 Username:ssw 
		    Password: standard simple)
		    <p><a href="/ssw/zsValidate/Reports/WebsiteHealth.aspx">SSW Validate</a><br />
		    The rest of us keep all data/code good and green</p> 
        </div> 
        <div class="item">
            <img src="Images/gnome-gimp.png" alt="" />
            <h3>Image library</h3>
            <ul>
            <li><p>Location of Flyers, Office signs, Business cards on TFS. <b>$/SSW.DesignNonWeb/SSW</b></p></li>
            <li><p>Location of Icon Experience <a href="\\ssw-fileserver1\DataSSW\Design\ImageLibrary\Icons">\\ssw-fileserver1\DataSSW\Design\ImageLibrary\Icons</a></p></li>
            <li><p>Location of <a href="http://www.ssw.com.au/ssw/images/sswlogo/">SSW Logos</a></p></li>
            <li><p>Location of <a href="\\Ant\ssw\StandardsInternal\Templates\SSWPresentationTemplate.pptx">SSW PowerPoint Template</a></p></li>
		    </ul>
        </div>
        
        <div class="item">
            <img src="Images/IconExperienceCollection/cube_molecule.png" alt="" />
            <h3>Web Services</h3>
            <ul>
            <li><p><a href ="http://webservices.internal.ssw.com.au/sswtimepronet/wcf">Time PRO</a></p></li>
            <li><p>Sharepoint 2007 (to come)</p></li>
            <li><p><a href ="http://aphrodite/MSCRMServices/2007/CrmService.asmx">CRM4 Production</a></p></li>
            <li><p><a href ="http://aphrodite/MSCRMServices/2006/CrmService.asmx">CRM3 in CRM4 Production (this is what SSW.Website Web Service use)</a></p></li>
            <li><p>Team Foundation Server</p>
                <ul>
                <li>
                    <p>
                        <a href="//unicorn:8080/Services/v1.0/AuthorizationService.asmx">AuthorizationService.asmx</a>
                    </p>
                </li>
                <li><p><a href="//unicorn:8080/Services/v1.0/CommonStructureService.asmx">CommonStructureService.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/Services/v1.0/EventService.asmx">EventService.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/Services/v1.0/GroupSecurityService.asmx">GroupSecurityService.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/Services/v1.0/ProjectMaintenance.asmx">ProjectMaintenance.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/Services/v1.0/ProcessTemplate.asmx">ProcessTemplate.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/Services/v1.0/Registration.asmx">Registration.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/Services/v1.0/ServerStatus.asmx">ServerStatus.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/Warehouse/v1.0/WarehouseController.asmx">WarehouseController.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/Build/v1.0/BuildStore.asmx">BuildStore.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/Build/v1.0/BuildController.asmx">BuildController.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/Build/v1.0/Integration.asmx">Integration.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/Build/v1.0/PublishTestResultsBuildService.asmx">PublishTestResultsBuildService.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/WorkItemTracking/v1.0/ClientService.asmx">ClientService.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/WorkItemTracking/v1.0/ConfigurationSettingsService.asmx">ConfigurationSettingsService.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/WorkItemTracking/v1.0/Integration.asmx">Integration.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/VersionControl/v1.0/repository.asmx">repository.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/VersionControl/v1.0/administration.asmx">administration.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/VersionControl/v1.0/integration.asmx">integration.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/VersionControl/v1.0/item.asmx">item.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/VersionControl/v1.0/upload.asmx">upload.asmx</a></p></li>
                <li><p><a href="//unicorn:8080/Build/v1.0/PublishTestResultsBuildService.asmx">PublishTestResultsBuildService.asmx</a></p></li>                 
                </ul>            
            
            </li>
            </ul>
        </div>
            
    </div>
    <div class="wheretogo">
        <div class="item">
            <img src="/ssw/StandardsInternal/Images/icons/crm.gif" width="48" height="48" alt=""/>
            <h3>CRM</h3>
		    <p><a href="http://aphrodite/ssw/loader.aspx">SSW CRM 4 Production</a></p>
		    <p>SSW CRM 4 Dev</p>
		    <p>SSW CRM 4 Test</p>
		    <p><a href="http://mermaid/Products/Lists/Product%20Managers/FilterToCRM.aspx" target="_blank">(Who do I ask for CRM tasks?)</a></p>
		    <p>Microsoft Dynamics CRM 4 is used at SSW for:</p>
		    <ul>
			    <li><b>Sales Management (used for Customers, Contacts, Activities, Leads and Opportunities)</b></li>
			    <li>Marketing (used for Newsletter)</li>
			    <li>Customer Service (not used yet)</li>
			    <li>Service Scheduling (not used yet)</li>
		    </ul>
		    <p>Clients you can use:</p>
		    <ul>
			    <li>The Web</li>
			    <li>Microsoft Office Outlook (some don't use as it is slow and crashes)</li>
		    </ul>		
        </div>
        <div class="item">
            <img src="/TimeProOnline/Images/timepronet_mini1.gif" alt=""/>
            <h3>Time PRO Online</h3>
		    <p><a href="/TimeProOnline/">Time PRO Online - Corporate Database</a><br />
		    Where all our client details are stored</p>
            <p><a href="file://ssw-fileserver1/DataSSW/SSWProducts/SSWTimePRO!/SSWSetupForAccess">Time PRO! Access</a><br />
            Where Time Pro! Access installer are stored</p>
			<p>Enter your timesheets<br />  <strong>**TODO by Eric:Coming via clickonce timepro.net or Microsoft Project</strong></p>
			<p>Find a client<br /> <strong>**TODO by Jonny</strong></p>
			<p>See Current Project Status<br /> <strong>**TODO by Eric</strong></p>

			<p>SharePoint<br />  <strong>** TODO by Tim Kremer</strong></p>
            <p>&nbsp;&nbsp;  - Know who is sick today<br />
			&nbsp;&nbsp;  - Know responsibilities of Joe, and what products and projects he is assigned to <br />
			&nbsp;&nbsp;  - Joe's skills and availability <br />
			&nbsp;&nbsp;  - How much billable work has been done this month so far<br />
			&nbsp;&nbsp;  - How much billable work is coming up next month<br />
			&nbsp;&nbsp;  - KPIs</p>

        </div>
        <div class="item">
            <img src="/ssw/StandardsInternal/Images/icons/up_plus.png" alt=""/>
            <h3>Adam's Priorities</h3>
		    <p><a href="/projects/public.aspx">List of Adam's priorities</a></p>
        </div>
        <div class="item">
            <img src="/ssw/StandardsInternal/Images/icons/users2.png" alt=""/>
            <h3>Clients</h3>
		    <p><a href="/projects/external.aspx">Public - Current clients</a><br />
		    Clients get latest versions from here<br />
		    </p>
		    <p><a href="http://mermaid/ClientFiles/Forms/AllItems.aspx">Client Files</a>
		    <br />
		    Internal, put documents from clients here </p>
        </div>
        <div class="item">
            <img src="/ssw/StandardsInternal/Images/icons/mail.png" alt=""/>
            <h3>Mail</h3>
		    <p><a href="http://cow/exchange/">Cow - Mail</a><br />
		    Where you get your mail when you are in the office<br />
		    </p>
		    <p><a href="http://mail.ssw.com.au/exchange">Cow - External Mail</a><br />
		    Where you get your mail when you are *outside* the office</p>
		    <p><strong>*mail.ssw.com.au is Cow internally*</strong></p>
        </div>
        <div class="item">
            <img src="/ssw/Images/Microsoft/VSNET_Medium2.gif" alt="" />
            <h3>TFS</h3>
        <!--SSW Link Auditor - Ignore begin-->
		    <p><a href="http://unicorn:8080">Team System Web Access</a><br />
		    <!--SSW Link Auditor - Ignore end-->
		    Team System Web Access (aka TSWA formerly known as TeamPlain) is a Web interface 
		    to TFS 2008<br/>
            Developers don't need it as they use VS.NET<br />
            Project Managers need it to look at reports :-)<br />
            <b>Note: We don't enter work items in it manually - as we send tasks as emails and use TeamLook or Team Companion to add as a work item</b>
            </p>
        </div>
        <div class="item">
            <img src="/ssw/StandardsInternal/Images/icons/calendar.png" alt="" />
            <h3>Calendar</h3>
		    <p><a href="http://cow/teamcalendar/CalendarUserList.asp">Cow - Team 
		    Calendar</a><br />
		    Where are people today?</p>
        </div>
        <div class="item">
            <img src="/ssw/StandardsInternal/Images/icons/windows.png" width="48" height="48" alt=""/>
            <h3>Virtual Servers</h3>
		
		<table class="clsSSWTable">
		     <tr>
		        <td colspan="3">Virtual Server #1 Pitbull containing:</td>
		    </tr> 
		    <tr>
		        <th valign ="top"><b>Name</b></th>
		        <th><b>Purpose/Notes</b></th>
		        <th><b>RAM</b></th>
		    </tr>
		    <tr>
		        <td valign ="top"><s>Faun</s></td>
		        <td><s>CRM 3 Server (Development)<br />*TODO: Sometimes off - decommission</s></td>
		        <td><s>1GB</s></td>
		    </tr>
		    <tr>
		        <td valign ="top"><s>Basilisk</s></td>
		        <td><s>CRM 3 Server (Test</span>)<br />*TODO: Sometimes off - decommission</s</td>
		        <td><s>1GB</s></td>
		    </tr>		    
		    <tr>
		        <td valign ="top"><s>Baboon</s></td>
		        <td><s>previously used for Office 2007 testing - disabled</s></td>
		        <td>-</td>
		    </tr>
		    <tr>
		        <td valign ="top"><s>moss.litwareinc.com</s></td>
		        <td><s>CRM 4.0 Server (CTP 2)</s><br />
			        <s>Username: Administrator</s><br />
			        <s>Password: pass@word1</s>
			    </td>
			    <td>-</td>
		    </tr>
		    <tr>
		        <td></td>
		        <td align="right" ><b>RAM Left</b></td>
		        <td><b>-GB</b></td>
		    </tr>
		    <tr>
		        <td colspan="3">&nbsp</td>
		    </tr>
		    <tr>
		        <td colspan="3">Virtual Server #2 Leopard containing:</td>
		    </tr> 
		    <tr>
		        <th><b>Name</b></th>
		        <th><b>Purpose/Notes</b></th>
		        <th><b>RAM</b></th>
		    </tr>		    
		    <tr>
		        <td><s>Bull</s></td>
		        <td><s>Exchange 2007</s></td>
		        <td><s>2GB</s></td>
		    </tr>
		    <tr>
		        <td>Owl</td>
		        <td>AD,DC and Whats Up</td>
		        <td>2GB</td>
		    </tr>
		    <tr>
		      <td>Drake</td>
		      <td></td>
		      <td></td>
		    </tr>
		    <tr>
		      <td>Piranha</td>
		      <td></td>
		      <td></td>
		    </tr>
		    <tr>
		      <td>Qwisbnectx01</td>
		      <td></td>
		      <td></td>
		    </tr>
		    <tr>
		        <td valign ="top"><a href="http://Mermaid">Mermaid</a></td>
		        <td>Sharepoint 2007</td>
		        <td>2GB</td>
		    </tr>		    
		     <tr>
		        <td valign ="top"><s>Cow</s></td>
		        <td><s>Exchange 2003 <br/>&nbsp;<font color="#ff0000">*TODO: Decommission, Keep to run current version of Exchange Reporter</font></s></td>
		        <td>-</td>
		    </tr>
		     <tr>
		        <td valign ="top">Dodo</td>
		        <td>SQL 2000</td>
		        <td>-</td>
		    </tr>
		    <tr>
		        <td valign ="top">Goblin</td>
		        <td>SQL 2005</td>
		        <td>4GB</td>
		    </tr>
		    <tr>
		        <td valign ="top">SSW-CRMDev</td>
		        <td>CRM 4 Server (Development and Test)<br />Test Organization: SSWTest<br />Development Organization: SSWDev</td>
		        <td>2GB</td>
		    </tr>
		    <tr>
		        <td valign ="top">Hydra</td>
		        <td>Project Server 2007</td>
		        <td>2GB</td>
		    </tr>
		    <tr>
		        <td></td>
		        <td align="right"><b>RAM Left</b></td>
		        <td><b>-GB</b></td>
		    </tr>
		    <tr>
		        <td colspan="3">&nbsp</td>
		    </tr>
		    <tr>
		        <td colspan="3">Virtual Server #3 Leopard 2 containing:</td>
		    </tr>
		    <tr>
		        <th><b>Name</b></th>
		        <th><b>Purpose/Notes</b></th>
		        <th><b>RAM</b></th>
		    </tr>
		    <tr>
		        <td valign ="top">Centaur</td>
		        <td></td>
		        <td></td>
		    </tr>
		    <tr>
		        <td valign ="top">Mooncalf</td>
		        <td>Exchange 2007</td>
		        <td></td>
		    </tr>
		    <tr>
		        <td valign ="top">Bunyip</td>
		        <td>Build Server</td>
		        <td>1GB</td>
		    </tr>
		    <tr>
		        <td valign ="top"><a href="http://Aphrodite">Aphrodite</a></td>
		        <td>CRM4</td>
		        <td>2GB</td>
		    </tr>
		    <tr>
		        <td></td>
		        <td align="right"><b>RAM Left</b></td>
		        <td><b>-GB</b></td>
		    </tr>
		    <tr>
		        <td colspan="3">&nbsp</td>
		    </tr>
		    <tr>
		        <td colspan="3">Virtual Server #4 Leopard 3 containing:</td>
		    </tr>
		    <tr>
		        <th><b>Name</b></th>
		        <th><b>Purpose/Notes</b></th>
		        <th><b>RAM</b></th>
		    </tr>
		    <tr>
		        <td valign ="top">Fastas</td>
		        <td></td>
		        <td></td>
		    </tr>
		    <tr>
		        <td valign ="top">SeeDragon</td>
		        <td></td>
		        <td></td>
		    </tr>
		    <tr>
		        <td valign ="top">GregHarrisSPdev</td>
		        <td></td>
		        <td></td>
		    </tr>
		    <tr>
		        <td>Unicorn</td>
		        <td>TFS</td>
		        <td>2GB</td>
		    </tr>
		    <tr>
		        <td colspan="3">&nbsp</td>
		    </tr>
		    <tr>
		        <td colspan="3">Virtual Server #5 SPDEV01SYD containing:</td>
		    </tr>
		    <tr>
		        <th><b>Name</b></th>
		        <th><b>Purpose/Notes</b></th>
		        <th><b>RAM</b></th>
		    </tr>
		    <tr>
		        <td valign ="top">Kraken</td>
		        <td>Staging website</td>
		        <td></td>
		    </tr>
		    <tr>
		        <td valign ="top">Microsoft SharePoint</td>
		        <td></td>
		        <td></td>
		    </tr>
		    <tr>
		        <td valign ="top">SPDEV</td>
		        <td></td>
		        <td></td>
		    </tr>
		    <tr>
		        <td colspan="3">&nbsp</td>
		    </tr>
		    <tr>
		        <td colspan="3">Virtual Server Puma containing:</td>
		    </tr>
		    <tr>
		        <th><b>Name</b></th>
		        <th><b>Purpose/Notes</b></th>
		        <th><b>RAM</b></th>
		    </tr>
		    <tr>
		        <td valign ="top">Huntsman</td>
		        <td>ISA Server</td>
		        <td></td>
		    </tr>
		    <tr>
		        <td colspan="3">&nbsp</td>
		    </tr>
		    <tr>
		        <td colspan="3">Virtual Server Galah containing:</td>
		    </tr>
		    <tr>
		        <th><b>Name</b></th>
		        <th><b>Purpose/Notes</b></th>
		        <th><b>RAM</b></th>
		    </tr>
		    <tr>
		        <td valign ="top">Cockatoo</td>
		        <td></td>
		        <td></td>
		    </tr>
		</table>
		<br />
		<p>Badger - SSW VPC Images</p>
        </div>   
        <div class="item">
            <img src="/ssw/standardsinternal/images/linux.gif" alt="" />
            <h3>Phone (Asterisk)</h3>
            <p>Figure: An evil linux server, because we could not get Microsoft Office Communication Server working<br />
            <b>Note: We might go to Hosted Office Communication Server</b></p>
            <p>
                <a href="http://cockatoo/maint/">http://cockatoo/maint/</a> (you can check the system status, upgrade the modules and maintain Trixbox.) <br />
                <a href="http://cockatoo/admin/">http://cockatoo/admin/</a> (you can set up the PBX.)
            </p>
        </div>    
    </div>
    </s>
</asp:Content>
