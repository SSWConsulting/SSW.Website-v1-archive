<%@ Page  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Link Auditor - User Guide"  %>

<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">


		<img src="/ssw/LinkAuditor/Images/LinkAuditor-logo.png" alt="Link Auditor" />
		<h3>Powerful Link Auditor!</h3>      	
       	<p>As a website grows, managing the links throughout can become virtually impossible. This fast, simple, powerful and effective utility keeps your website up to date. Built in C#, SSW Link Auditor lets you take control of your website and automatically locates broken links and helps to resolve intricate linking and referencing issues - giving you more opportunity to spend time where it really matters.</p> 
		<p>Here at SSW, we face the problem of maintaining links over nearly five thousand web pages. SSW Link Auditor is a simple and powerful solution to our problem.</p>
		
		<div class="TableOfContents">
			<h4>SSW Link Auditor User Guide</h4>
			<ol>
			    <li><a href="#Pre">Pre-requisites</a></li>
			    <li><a href="#InstallGuide">Running the Setup.exe </a></li>
			    <li><a href="#EvalLinkAuditor">Running SSW Link Auditor</a></li>
			    <li><a href="#RSReports">SQL Reporting Services Reports</a>
			        <ul>
			            <li><a href="#RSReport_Summary">Summary Report</a></li>
			            <li><a href="#RSReport_Detail">Detail Report</a></li>
			            <li><a href="#RSReport_Casing">Inconsistent Link Casing Report</a></li>
			            <li><a href="#RSReport_Rules">Link Auditor Rules Report</a></li>
			            <li><a href="#RSReport_History">Scan History Report</a></li>
			            <li><a href="#RSReport_PageRank">Google PageRank Report</a></li>
				    <li><a href="#RSReport_PageSummary">Pages Summary Report</a></li>
			        </ul>
			    </li>
			    <li><a href="#RDLCReports">Client Side Reports</a></li>
			    <li><a href="#ToolsOptions">Tools | Options</a></li>			    
			</ol>				
	</div>
<ol>
	<li>
			<SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>
	</li>
	<li>
		<a id="InstallGuide"></a>		
		<h2>Running the Setup.exe</h2>
		<p>
			When you run the install exe there is a simple wizard interface to guide you through the process. 
		</p>
	</li>
	<li>
		<a id="EvalLinkAuditor"></a>
		<h2>Running SSW Link Auditor</h2>
		<p>When you run the SSW Link Auditor there will be a step by step wizard to guide you through the Scan process. </p>
		<dl class="image">
         <dt><img src="/ssw/LinkAuditor/Images/Welcome.jpg" alt="Welcome" /></dt>
         <dd>Figure: Welcome screen</dd>
        </dl>
        	<dl class="image">
         <dt><img src="/ssw/LinkAuditor/Images/Project.jpg" alt="Select Template" /></dt>
         <dd>Figure: Choose a recent project or next for a new project</dd>
        </dl>
        <dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/ScanTarget.jpg" alt="Scan Target" /></dt>
            <dd>Figure: Specify Scan Target</dd>
        </dl>		
        <dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/WhatToScan.jpg" alt="What to Scan" /></dt>
            <dd>Figure: Define What to Scan</dd>
        </dl>
		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/GoogleWebMaster.jpg" alt="Google Web Master" /></dt>
            <dd>Figure: Google Web Master</dd>
        </dl>
		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/StorageMechanism.jpg" alt="Storage Mechanism" /></dt>
            <dd>Figure: Select Storage Merchanism</dd>
        </dl>

<ul>
    <li>Configure Storage Merchcanism<br />
		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/DatabaseSetup-1.jpg" alt="Storage Mechanism" /></dt>
            <dd>Figure: SSW database setup control for configuring Link Auditor databases</dd>
        </dl>

        <p>Click 'Select...' to create a new sample database or specify an existing one. Before doing this, please make sure your account has enough privileges to access your database server and is able to create and drop databases. Normally, a 'Database Creator' will be enough.</p>
 
		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/DatabaseSetup-2.jpg" alt="Configure database" /></dt>
            <dd>Figure: SSW database setup control - configure Link Auditor database</dd>
        </dl><br />

		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/DatabaseSetup-3.jpg" alt="Creating database" /></dt>
            <dd>Figure: SSW database setup control - creating Link Auditor database</dd>
        </dl>
    
    </li>
</ul> 
        <p>
        Get more for <a href="/ssw/KB/KB.aspx?KBID=Q1893096">Why do we require SQL Server?</a>
        </p>

        <dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/RuleDefinition.jpg" alt="Rule Definition" /></dt>
            <dd>Figure: Enable or disable rules definition and scanning</dd>
        </dl>

		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/HowToScan.jpg" alt="How to Scan" /></dt>
            <dd>Figure: Specify How to Scan</dd>
        </dl>
        <dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/CommandLine.jpg" alt="Review Settings" /></dt>
            <dd>Figure: Command Line</dd>
        </dl>
        <dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/ReviewSettings.jpg" alt="Review Settings" /></dt>
            <dd>Figure: Review Settings</dd>
        </dl>
        <dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/EngineRoom.jpg" alt="ready to Scan" /></dt>
            <dd>Figure: Scanning in progress...</dd>
        </dl>
        <dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/Results.jpg" alt="Results" /></dt>
            <dd>Figure: Results</dd>
        </dl>

        <dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/Finished.jpg" alt="Finished" /></dt>
            <dd>Figure: Finished</dd>
        </dl>
	</li>
	<li>
	<% 'SSW Code Auditor - Ignore next line %>
		<a id="RSReports"></a><h2>SQL Reporting Services Reports</h2>		

		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/UseServerSideReports.jpg" alt="Use Server Side Reports" /></dt>
            <dd>Figure: Check the box “Use Server Side Reports” and click Configure</dd>
        </dl>
		<a id="RSReport_Detail"></a>
		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/ClickSelect.jpg" alt="Click Select" /></dt>
            <dd>Figure: Click Select</dd>
        </dl>
		<a id="RSReport_Casing"></a>
		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/ClickConfigure.jpg" alt="Click Configure" /></dt>
            <dd>Figure: Click configure to set up the Report server and Report Manager</dd>
        </dl>
		<a id="RSReport_Rules"></a>
		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/EnterServerAndURL.jpg" alt="Enter Server and URL" /></dt>
            <dd>Figure: Enter Report Server and Report Manager Url's</dd>
        </dl>
		<a id="RSReport_History"></a>
		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/PressCreate.jpg" alt="Press Create" /></dt>
            <dd>Figure: Press Create</dd>
        </dl>
		<a id="RSReport_PageRank"></a>
		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/ConfirmReports.jpg" alt="Confirm Reports" /></dt>
            <dd>Figure: Confirm the reports were create correctly</dd>
        </dl>
		<a id="RSReport_PageSummary"></a>
		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/ScanSummary.jpg" alt="Scan Summary" /></dt>
            <dd>Figure: Summary Report</dd>
        </dl>

		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/ScanDetails.jpg" alt="Scan Details" /></dt>
            <dd>Figure: Detail Report</dd>
        </dl>
		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/InconsistentLinkReport.jpg" alt="Inconsistent Link Report" /></dt>
            <dd>Figure: Inconsistent Link Casing Report</dd>
        </dl>
		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/ScanHistory.jpg" alt="Scan History" /></dt>
            <dd>Figure: Scan History Report</dd>
        </dl>
		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/PagesSummaryReport.jpg" alt="Pages Summary Report" /></dt>
            <dd>Figure: Pages Summary Report</dd>
        </dl>
        </li>
        <li>
            <a id="RDLCReports"></a><h2>Client Side Reports</h2>

		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/DetailReport.jpg" alt="Detail Report" /></dt>
            <dd>Figure: Detail Report</dd>
        </dl>
		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/InconsistentLinkReport-CS.jpg" alt="Inconsistent Link Report" /></dt>
            <dd>Figure: Inconsistent Link Casing Report</dd>
        </dl>
        <dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/RulesReport.jpg" alt="Rules Report" /></dt>
            <dd>Figure: SSW Rules Report</dd>
        </dl>
            <dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/ScanHistory-CS.jpg" alt="Scan History" /></dt>
            <dd>Figure: Scan History Report</dd>
        </dl>
            <dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/PagesSummaryReport-CS.jpg" alt="Pages Summary Report" /></dt>
            <dd>Figure: Pages Summary Report</dd>
        </dl>
	</li>
	<li>
		<a id="ToolsOptions"></a><h2>Tools | Options</h2>
		<dl class="image">
            <dt><img src="/ssw/LinkAuditor/Images/Options.jpg" alt="General" /></dt>
            <dd>Figure: SSW Link Auditor settings for General Options</dd>
        </dl>
	</li>
</ol>
</asp:content>