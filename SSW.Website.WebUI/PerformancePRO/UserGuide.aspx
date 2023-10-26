<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Performance PRO Screenshots"  %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

<a href="/ssw/PerformancePRO/">SSW Performance PRO!</a> &gt; Screenshots<br><br>

<table width="95%"><tr>
<td><img src="Images/PerformancePROLogo.gif" alt="SSW Performance PRO" width="261" height="82"></td><td>
		<a href="../Redirect/MicrosoftOfficeMarketplace/OfficeMarketplace.htm">
		<img src="http://r.office.microsoft.com/r/rlidMarketplaceLogo" alt="Microsoft Office Marketplace logo" align=right border=none width="250" height="52">
		</a></td></tr><tr><td colspan =2>
		
<b>Essential for performance tuning your Access frontend or for upsizing to SQL Server </b>
</td></tr></table>


<table><tr>
<td style="height: 704px">
<p >SSW Performance PRO! isolates performance bottle-necks in your Access 97, 2000, 2002 or 2003 app. It checks every form, combo and list box, 
	and reviews SQL statements. It reports exactly what to fix to improve the the speed of your application. SSW Performance PRO! is 
	especially useful after you've upsized an application to SQL Server to pinpoint black spots in your app.
            </p>
            <p>SSW Performance PRO! evaluates the speed of your forms so you can work where it will 
        make a difference. It 
        works whether your backend is Access (mdb) or Microsoft SQL Server. It 
        works whether you have a single/multiple backend(s).</p>
         
         
            <p>This cool utility analyzes every form, every combo and list box, checks the SQL 
        statements and works out the time of executing these SQL statements - 
        obviously you will get the best results if your Access database is linked 
        to server across the network. After you use the generated reports, you 
        can optimize design of your forms and controls without any worries.
            </p>
         
<p>
	You know you shouldn't have large record sets in your database... Microsoft Access 
        developers too often use forms and combos bound to large tables or slow 
        queries. Let this wizard analyze your front end database and tell you 
        what forms are slow and what controls are the culprits in each form. Now 
        use your development time on the things that really matter. Then re-analyze 
        and see your progress. </p>
        
	<img src="Images/MainMenu.png" alt="Performance" width="520" height="464">
    <br />
    <strong>Figure: SSW Performance PRO! provides a simple wizard interface to report exactly
        what to fix to improve the the speed of your application</strong></td></tr></table>
           
<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
		<tr>
			<td>
				<b>SSW Performance PRO! User Guide</b><br>
					<a href="#Pre">1.</a> Prerequisites<br />
				<a href="#InstallGuide">2.</a> Installation Guide <br>
				<a href="#userGuide">3.</a> User Guide<br>
				<a href="#BrokenBindings">4.</a> Testing for broken bindings<br>

			</td>
		</tr>
	</table>
<ol><li><SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>
         
<li><h2>Installation Guide<a name ="InstallGuide"></a></h2>
<p>
	When you run the install exe there is a simple wizard interface to guide you 
	through the setup process. All you have to do is select which directory you want SSW Performance PRO! to be installed into.
</p>
	
	
<li><h2>Running SSW Performance PRO! Wizard<a name ="userGuide"></a></h2>

	<p>
		BEFORE running SSW Performance PRO! check: </p>
		<ul>
			<li> 
				macro Autoexec should be renamed to _Autoexec 
			
			</li>

			<li> 
				'User and Group Permissions' for the table MSysObjects should be set to 'Administer'.
			</li>
		</ul>
	<p>When you run the SSW Code Auditor there will be a step by step wizard to 
	guide you through the audit process. </p>
<p>
<img border="0" src="Images/PerformanceProWelcomeScreen.png" width="520" height="466"><br>
<b>Figure: Run SSW Performance PRO!</b><br><br></p>
<img border="0" src="Images/PerformanceProStartProcessScreen.png" width="520" height="483"><br>
<b>Figure: Select Access application type and path</b><br><br>
<img border="0" src="Images/PerformanceProOptionsScreen.png" width="520" height="474"><br>
<b>Figure: Select options</b><br><br>
<img border="0" src="Images/PerformanceProOptionsControlTypeScreen.png" width="520" height="285"><br>
<b>Figure: Select control type</b><br><br>
<img border="0" src="Images/PerformanceProOptionsSystemSettingsScreen.png" width="520" height="285"><br>
<b>Figure: Select ADODB or DAO recordset</b><br><br>
<img border="0" src="Images/PerformanceProOptionsFormsCollectionScreen.png" width="520" height="285"><br>
<b>Figure: Select form(s) to be processed</b><br><br>
<img border="0" src="Images/PerformanceProStartRulesScreen.png" width="520" height="480"><br>
<b>Figure: Select form(s) to be processed</b><br><br>
<img border="0" src="Images/PerformanceProStartResultsScreen.png" width="520" height="480"><br>
<b>Figure: Results of processing</b><br><br>
<ol>
	<li>Click <b>Start</b> to begin scanning. Do not interrupt the process as 
	the results may be inaccurate.<li>Examine the reports that are produced; 
	follow the instructions on the reports to fix your form/control performance.</ol>
<p><b>Note:</b> 
		If you are using an unregistered version of SSW Performance PRO! only 
		70 percent of all forms are processed.
	</p>
	<li><a name="BrokenBindings"></a><h2>Testing for broken bindings</h2>
	<p>It 
	is essential that if any of your forms and controls have their RecordSource 
	or ControlSource set to a table (as is likely the case), you must ensure 
	that linkages to the table are not broken. The last thing you want is for a 
	user to open a form, only to find a whole lot of errors because the 
	underlying fields or tables have had their name changed or been removed.</p>
	<p>SSW Performance PRO! automatically checks for broken bindings. Follow 
	these steps to simulate a broken table reference and detect and fix it using 
	Performance PRO!.</p>
	

		
			

	<p><ol>
	<li>Make a backup of <b>Northwind.mdb</b> in <b>C:\Program Files\Microsoft 
	Office 2003\OFFICE11\SAMPLES</b><li>Open <b>Northwind.mdb</b>
	
	<li>Rename the <b>Customers</b> table to <b>Customers2</b>
	<li>Open the <b>Customers</b> form. Notice how it doesn't open at all - this 
	is expected because you just renamed the <b>Customers</b> table.<li>Close all open Access databases<li>Run SSW Performance PRO!.<li>
	Browse for the <b>Northwind.mdb</b> which you had open previously.<li>Click <b>Finish</b> to 
	begin analyzing the database.<li>
	
	
	Performance PRO! produces a report that shows all forms that could not find 
	the Customers table.<li>
	
	
	Go through the list and fix up the record sources and control sources until 
	the forms work.</ol>
	<p>
	<img border="1" src="Images/userguide/02_userguide_report.gif" width="600" height="734"></p>
	<p>
	<b>Figure: SSW Performance PRO! produces an easy-to-follow report that shows 
	you exactly where errors have occurred in your Access database.</b></p>
	</asp:content>