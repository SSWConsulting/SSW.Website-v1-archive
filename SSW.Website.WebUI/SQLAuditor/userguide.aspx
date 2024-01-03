<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW SQL Auditor - Screenshots"  %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>


				 <!--
  This first table is the heading above the drop down menu
  -->
		<!--
			This is the main document.
			-->
<a href="/ssw/SQLAuditor/">SSW SQL Auditor</a> > Screenshots<br/><br/>
<table summary="Formatting Table" border="0" cellspacing="0" cellpadding="0" >
	<tbody>
		<tr>
			<td>
				<img src="Images/SQLAuditorLogo.gif" alt="SSW SQL Auditor" /> <br /><strong>This is FxCop for your SQL database - Keep  
					your SQL Server database free from design flaws with SSW SQL Auditor.</strong>
				<p>
					Maintaining quality code across a large team is difficult. Even when standards 
					are in place developers can make mistakes that will slip through Quality 
					Assurance. SSW SQL Auditor, built in VB .NET, allows a developer to set SQL 
					Server design rules and then check the database for code or design elements 
					that ignores those rules.
				</p>
	
		<table class="clsSSWTableOfContents" cellspacing="0" cellpadding="0" summary="Index" style="width:100%">
			<tr>
				<td>
			
			<b>SSW SQL Auditor User Guide</b><br /><br />
			1. <a href="#Pre">Prerequisites</a><br />
			2. <a href="#Overview">Overview</a><br />
			3. <a href="#ConfigureDataSource">Configure a Data Source and refresh the schema</a><br />
			4. <a href="#DatabaseOptimizationWizard">Database Optimization</a><br />
			5. <a href="#ToolsOptions">Tools | Options</a><br/>
            6. <a href="/ssw/SQLAuditor/UserguideWizards.aspx#RelationshipsScriptWizard">Wizard Pages - Relationship Wizard</a><br />
			7. <a href="/ssw/SQLAuditor/UserguideWizards.aspx#PrimaryKeyWizard">Wizard Pages - Primary Key Wizard</a><br />
            8. <a href="/ssw/SQLAuditor/UserguideWizards.aspx#ClusteredIndexWizard">Wizard Pages - Clustered Index Wizard</a><br />
            9. <a href="/ssw/SQLAuditor/UserguideWizards.aspx#ValidateForeignKeycolumnswithScriptWizard">Wizard Pages - Validate Foreign Key columns Wizard</a><br />
            10.<a href="/ssw/SQLAuditor/UserguideWizards.aspx#LastModifiedColumnWizard">Wizard Pages - LastModified column Wizard</a><br />
            11.<a href="/ssw/SQLAuditor/UserguideWizards.aspx#TimestampScriptWizard">Wizard Pages - Timestamp Wizard</a><br />
			
                    <br />
                </td> 
			</tr>
		</table>
                <br />
		<a href="UserGuide_Old.aspx">Click here to see the old screenhots.</a>

			<ol>
				<li>
						<SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>
				</li>						

				<li><h2><a name="Overview"></a>Overview</h2>				
				<p>When you run the SSW SQL Auditor there will be a step by step wizard to guide you through the 
				audit process. </p>									

				<img border="0" src="Images/V9-77_SQLAuditorWelcome.gif" alt="Welcome" width="658" height="525" ><br/>
				<b>Figure: The welcome page</b><br/><br/>				
				</li>
				
                 <li><h2><a name="ConfigureDataSource"></a>Configure a Data Source and refresh the schema</h2>
				 <p>Before you can start auditing your database, you need to tell the application which database it should connect to. You can either create a sample database, connect to your own database or simply run this application without a database.</p>
				 
				<img border="0" src="Images/V9-77_SQLAuditorDataSource.gif" alt="DataSource" width="658" height="525"><br/>
				<b>Figure: Choose a data source - <a href="#ConfigureSampleDatabase">Configure sample database</a> or <a href="#SelectMyDatabase">Select my database</a></b><br/><br/>

				<ul>
					<li>
						<a name="ConfigureSampleDatabase"></a><b>Configure sample database</b>
					</li>
					<p>SQL Auditor comes with a sample database which contains many typical database design flaws; you can <br />
					deploy such a database and evaluate the auditing process.</p>
				</ul><br/>
				<div style="padding-left: 32px">
				<img border="0" src="Images/V9-77_ConfigureSampleDB_1.gif" alt="DataSource" width="526" height="577" ><br/>
				<b>Figure: SSW database setup control for configuring sample databases </b><br/>
				      Click 'Select ... ' to create a new sample database or specify an existing one.<br />
				       Before doing this, please make sure your account has enough privileges to access<br />
					   your database server and is able to create and drop databases.  Normally, a <br />
					   'Database Creator' will be enough.
<br />
				<br /><br/>
				<img border="0" src="Images/V9-77_ConfigureSampleDB_2.gif" alt="DataSource" width="418" height="538" ><br/>
				<b>Figure: SSW database setup control - configure sample database</b><br/><br/>
				<img border="0" src="Images/V9-77_ConfigureSampleDB_3.gif" alt="DataSource" width="578" height="346" ><br/>
				<b>Figure: SSW database setup control - creating sample database</b><br/><br/>
				</div> 

				<ul>
					<li>
						<a name="SelectMyDatabase"></a><b>Select my database</b>
					</li>
				</ul>
				<div style="padding-left: 32px">
				<img border="0" src="Images/V9-77_ConfigureMyDB.gif" alt="DataSource" width="367" height="467" ><br/>
				<b>Figure: Select an exist database</b> <br />
				 Note: Please remember to check the "Allow saving password" option if you<br />
				 specified a user name/password pair.<br/><br/>
				 
				</div>
				When you configure your connection successfully, you can click &quot;Next&quot; to navigate to the following screen which will help you to load schema from your database into SQL Auditor for analyses. 

				<br/>
				<img border="0" src="Images/V9-77_SQLAuditorProcessDB.gif" alt="Process Data Base" width="658" height="525" ><br/>
				<b>Figure: Process the Database <br /></b>
				<br/>
			</li>

			<li>
				<h2><a name="DatabaseOptimizationWizard"></a>Select the rules - Database Optimization</h2>
				<p>SQL Auditor includes many rules that help you to improve your database, we know you may not 
				<br /> agree with every single one of them, so you can review the rules in the following screen and decide
				<br /> which ones you want to implement. Remember you can always click 'more' to help you understand these rules. 
				<p><br />Tip: Click on the Column to sort it ascending or descending and you will learn what other DBA's believe/are doing:
				<ol>
				<li>Rule Agreement - the rules everyone agrees (or disagrees) with</li>
				<li>Rule Implementation  - the rules that developers are actually implementing (or not) </li>
				<li>Time Taken for scanning of each rule - the slowest/fastest rules</li>
				</ol>
				</p>
				
				<img src="Images/SQLAuditorRules.gif" alt="Rules" width="660" height="527"><br/>
				<b>Figure: Select the rules that you'd like to implement, 
				You can also click the &quot;Options&quot; link to configure the rule as per your own database policies</b>
				
				<br/><br/>
				<img src="Images/RuleAgreementReport.gif" alt="Rule Agreement Report" width="843" height="368"><br/>
				<b>Figure: Want to see what others are doing - see the live report for the</b> <a href="http://reports.internal.ssw.com.au/Reports/Pages/Report.aspx?ItemPath=%2fSSW+SQL+Auditor+Reports%2f02+-+Rule+Agreement+Report">Rule Agreement Report</a>
				
				<br/><br/>
<p>When you pick all the rules, click &quot;Next&quot;, SQL Auditor will start processing. </p>

				<img src="Images/V9-77_SQLAuditorProcessRule.gif" alt="Rules" width="402" height="178"><br/>
				<b>Figure: Processing rules</b><br/><br/>
<p>SQL Auditor will display a detailed report about each of the rules; depends on the rule specifications,<br /> you will have different options to implement the rules against your database.</p>
				<img src="Images/V9-77_SQLAuditorRuleViolationSummary.gif" alt="Rule Violation Summary" width="660" height="527"><br/>
				<b>Figure: This page shows the result of rule processing, you can
				 choose the following actions: </b><br />
				 <br />
				<ul>
                    <li>
				&quot;Report&quot button - view the summary of violations for each rule;<br />
				</li></ul>
				
				<ul>
				<li>
				&quot;Report (All)&quot; button - view all rules;<br />
				</li></ul>
				
				<ul>
				<li>	
					&quot;Information&quot; button - view 
						details about rule violation, you can also print this out. 
					<br />
				</li></ul>
												
					<ul>
					<li>
&quot;Script&quot; button - take you to the screen with automatically generated SQL script to fix rule violations.<br />
                    </li></ul>
                    
                    <ul>
                    <li>
												&quot;Wizard&quot; button - open relevant wizard 
												that will guide you through a few steps to create an SQL script.<br />												
                    </li></ul>    
                    <ul>               
                    <li>
												&quot;Tools -> Process All&quot; - run all scripts all together to fix all the violations.<br/>
												</li></ul> 
												

                     &nbsp;<br />
				<br /> 
                

				<img src="Images/SQLAuditorDatabaseOptimisationReport.gif" alt="Database Optimisation Report" width="647" height="518" ><br/>
				<b>Figure: Rule violation report</b><br/><br/>
				<img src="Images/V9-77_SQLAuditorRuleScript.gif" alt="Database Optimisation Script" width="658" height="549" ><br/>
				<b>Figure: Optimization script generated by SQL Auditor 
				</b><br/><br/>
                <img alt="Database Optimisation Script" height="549" src="Images/V9-77_SQLAuditorFinishAndRunScript.gif"
                    width="658"><br/>
                <b>Figure: Click &quot;Finish&quot; to start the Query Analyzer to execute the script</b><br/><br />
                
                <img   src="Images/V9-77_SQLAuditorRunSQLServer.gif" width="651" height="517" ><br/>
                <b>Figure: SQL Server 2005 Management Studio with the script loaded </b><br/><br/>				
            </li>
			<li>
				<a name="ToolsOptions"></a><h2>Tools | Options</h2>
				<img src="Images/optionGeneral.gif" alt="General" width="664" height="572" ><br/>
				<b>Figure: SSW SQL Auditor settings for General Options</b><br/><br/>
				<img src="Images/optionStandardColumns.gif" alt="Standard Columns" width="664" height="572" ><br/>
				<b>Figure: SSW SQL Auditor settings for Standard columns</b><br/><br/>
				<img src="Images/optionNamingConventions.gif" alt="Naming Convertions" width="664" height="572" ><br/>
				<b>Figure: SSW SQL Auditor settings for Naming Conventions</b><br/><br/>
				<img src="Images/optionNamingInvalidCharacters.gif" alt="Naming-Invalid Characters" width="664" height="572" ><br/>
				<b>Figure: SSW SQL Auditor settings for invalid characters in object names</b><br/><br/>
				<img src="Images/optionNamingStoredProcedure.gif" alt="Naming Stored Procedure" width="664" height="572" ><br/>
				<b>Figure: SSW SQL Auditor settings for stored procedures</b><br/><br/>
				<img src="Images/optionDataTypesforDates.gif" alt="Data Types for Dates" width="664" height="572" ><br/>
				<b>Figure: SSW SQL Auditor settings for Data Types for Dates</b><br/><br/>
				<img src="Images/optionDataTypesforText.gif" alt="Data Types for Text" width="664" height="572" ><br/>
				<b>Figure: SSW SQL Auditor settings for keeping text Data Types Consistent</b><br/><br/>
				<img src="Images/optionDataforNulls.gif" alt="Data for Nulls" width="664" height="572" ><br/>
				<b>Figure: SSW SQL Auditor settings for Nulls in text fields</b><br/><br/>
				<img src="Images/optionData-Invalid.gif" alt="Data-Invalid" width="664" height="572" ><br/>
				<b>Figure: SSW SQL Auditor settings for invalid characters</b><br/><br/>
				<img src="Images/optionRelationships.gif" alt="Relationships" width="664" height="572" ><br/>
				<b>Figure: SSW SQL Auditor settings for Relationships</b><br/><br/>
				<img src="Images/optionDatabaseCollation.GIF" alt="Database Collation" width="664" height="572" ><br/>
				<b>Figure: SSW SQL Auditor settings for Database Collation</b><br/><br/>
			</li>
                
		</td>
	</tr>
</tbody>
</table>

		</asp:content>