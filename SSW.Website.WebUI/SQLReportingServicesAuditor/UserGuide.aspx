<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW SQL Reporting Services Auditor - User Guide" %>

<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

    <img src="Images/ReportsValidatorLogo.gif" alt="SQL RS Auditor" width="257" height="82" />
    <p><strong>Verify your SQL Server Reporting Services reports are working correctly with SSW Reports Validator!</strong></p>      	

    <h3>SSW SQL Reporting Services Auditor User Guide</h3>
	    <ol>
            <li><a href="#Pre">Prerequisites</a></li>
            <li><a href="#PostInstallation">Post Installation (for IIS 7.0 and later version)</a></li>
			<li><a href="#RunSQLRSAuditor">Running SSW SQL Reporting Services Auditor</a></li>
			<li><a href="#Reports">Reports</a></li>
            <li><a href="#Timeout">Timeout</a></li>
	    </ol>

<ol>
	<li>
			<SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>
	</li>
	
	
	<li>
		<a name="PostInstallation"></a>		
		<h2>Post Installation (for for IIS 7.0 and later version)</h2>
		<p>
			While SSW SSRS Auditor installer deploy the virtual directory, IIS defaults the web application to use ASP.NET 4.0 runtime. Before you can run SSW SSRS Auditor, you need to complete the following tasks.</p>
		<ol>
			<li><a href="#AddingAspnet">Adding an ASP.NET 2.0 Application Pool</a></li>
            <li><a href="#UsingAspnet">Using ASP.NET 2.0 Application Pool in SSW SSRS Auditor</a></li>
		</ol>
		<br>
         <p>
            This section is tested under the following install environment:</p>
        <ul>
            <li>Windows Server 2008 R2 Enterprise with Service Pack 1</li>
            <li>MS SQL Server 2008 R2</li>
            <li>SSW SQL Reporting Services Auditor v1.22</li>
            <li>IIS 7.5</li>
        </ul>
        
		<a name="AddingAspnet"></a><h3>
			Adding an ASP.NET 2.0 Application Pool</h3>
		<ol>
            <li>Open "Internet Information Services (IIS) Manager"</li>

            <li>Expand the menu under Server name | right click "Application Pools" | select "Add Application pool..."
                <dl class="image">
                    <dt><img src="images/SSRSA-post-installation-1.png" /></dt>
                    <dd>Figure: Add an Application Pool in IIS</dd>
                </dl>
            </li>
            <li>Adding a new Application Pool. In this example, it named as "TestAppPool", select ".NET Framework v2.0XXXX", tick the box in front of "start application pool immediately", click "OK"
                <dl class="image">
                    <dt><img src="images/SSRSA-post-installation-2.png" /></dt>
                    <dd>Figure: Adding a new application pool</dd>
                </dl>
            </li>
            <li>Go to Advanced Settings of "TestAppPool"
                <dl class="image">
                    <dt><img src="images/SSRSA-post-installation-3.png" /></dt>
                    <dd>Figure: Go to Advanced Settings </dd>
                </dl>
            </li>
            <li>In Advanced Setting, change Identity from "ApplecationPoolIdentity" (default) to "LocalSystem" | Click "OK"
                <dl class="image">
                    <dt><img src="images/SSRSA-post-installation-4.png" /></dt>
                    <dd>Figure: Change Identity from ApplecationPoolIdentity(default) to LocalSystem</dd>
                </dl>
            </li>
            <li>The newly created application pool is shown
                <dl class="image">
                    <dt><img src="images/SSRSA-post-installation-5.png" /></dt>
                    <dd>Figure: The newly created application pool is shown</dd>
                </dl>
            </li>
        </ol>

        <a name="UsingAspnet"></a><h3>
			Using ASP.NET 2.0 Application Pool in SSW SSRS Auditor</h3>

        <ol>
            <li>Go to SSRS Auditor's application Pool. Right click "SSW SSRS Auditor" | select "Manage Application" | select "Advanced Settings"
                <dl class="image">
                    <dt><img src="images/SSRSA-post-installation-6.png" /></dt>
                    <dd>Figure: Go to "Advanced Settings" of SSW SSRS Auditor</dd>
                </dl>
            </li>
            <li>To use the new application pool
                <dl class="image">
                    <dt><img src="images/SSRSA-post-installation-7.png" /></dt>
                    <dd>Figure: start using new application pool</dd>
                </dl>
            </li>

        </ol>
      
	</li>
	
	<li>
	    <a name = "RunSQLRSAuditor"></a><h2>Running SSW SQL Reporting Services Auditor</h2>
	    <dl class="image">
            <dt><img src="Images/RSAuditorShotcutFolder.gif" alt="Program folder for SSW SQL Reporting Services Auditor" width="584" height="82" /></dt>
	        <dd>Figure: Open default page for SSW SQL Reporting Services Auditor.</dd>
        </dl>

	    <dl class="image">
            <dt><img src="Images/RSAuditorDefaultPage.gif" alt="Default Page for SSW SQL Reporting Services Auditor" width="785" height="293" /></dt>
	        <dd>Figure: Click and open report server.</dd>
        </dl>
	    <p><strong>Note:</strong> you need to enter the correct report server URL if you didn't have it installed to the default path.</p>

	    <dl class="image">
            <dt><img src="Images/RSAuditorOpenReportFolder.gif" alt="Report folder for SSW SQL Reporting Services Auditor" width="829" height="625" /></dt>
	        <dd>Figure: Report folder for SSW SQL Reporting Services Auditor, click "01 - ValidateReports" to validate your reports.</dd>
        </dl>
	</li>
	
	<li>	
		<a name="Reports"></a><h2>Reports<br></h2>
	   <dl class="image">
            <dt><img src="Images/RSAuditorReport.gif" alt="Validating Report for SSW SQL Reporting Services Auditor" width="914" height="647" /></dt>
	        <dd>Figure: Validating report for Reporting Services Reports.</dd>
       </dl>
	</li>
	
	<li>	
		<a name="Timeout"></a>
		<h2>Timeout<br></h2>
		    <dl class="image">
                <dt><img src="Images/Timeout.gif" alt="Timeout" border="1" width="683" height="89" /></dt>
                <dd>Figure: Timeout</dd>
			</dl>
			<p>
			If there is a timeout warning, you need to modify parameters in Web.Config file to allow SQL Reporting Services Auditor to check your report server not timeout.
			</p>
			<dl class="image">
                <dt><img src="Images/WebConfig.gif" alt="Web.Config" border="1" width="834" height="290" /></dt>
                <dd>Figure: Modify the web.config</dd>
			</dl>
			<p>
			    CheckParameterTimeout is the timeout value for checking report parameters.
			</p>
			<p>
			    RenderTimeout is the timeout value for rendering report.
			</p>
			<p>
				The web.config is located in the virtual directory folder. This is
				typically <em>C:\Program Files\SSW SQL Reporting Services Auditor\WebApp\Web.Config</em>
			</p>
	</li>
</ol>
	</asp:content>