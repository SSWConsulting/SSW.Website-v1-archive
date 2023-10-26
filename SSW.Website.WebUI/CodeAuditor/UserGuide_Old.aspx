<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Code Auditor - Screenshots"  %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>



<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

						

<a href="/ssw/CodeAuditor/">SSW Code Auditor</a> > User Guide<br><br>

<p><img src="Images/CodeAuditorLogo_old.gif" alt="Code Auditor Logo"></p>

	<table class="clsSSWTable">
		<tr>
			<td><p>These are the old screens so you can reminisce... See how much better the UI is in the <a href="UserGuide.aspx">current version</a>.</p></td>
		</tr>
	</table>

<p><b>Automate your Code Reviews with SSW Code Auditor</b></p>

	<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
		<tr>
			<td>
				<b>SSW Code Auditor User Guide</b><br>
				<a href="#RunCodeAud">1.</a> Running SSW Code Auditor Wizard<br>
				<a href="#CreateRule">2.</a> Creating New Rule<br>
				<a href="#ExpressBuilder">3.</a> </li> Creating Regular Expression<br>
				<a href="#TheReports">4.</a> The Reports</li><br>
			</td>
		</tr>
	</table>
<ol>
	<li>
		<h2><a name="RunCodeAud"></a>Running SSW Code Auditor Wizard</h2>
		<p>When you run the SSW Code Auditor there will be a step by step wizard to guide you through the 
		audit process. </p>	

		<img src="Images/old_Welcome.gif" alt="Code Auditor Welcome Screen" width="550" height="496"><br>
		<b>Figure: Run SSW Code Auditor.</b><br><br>
		
		<img src="Images/old_SelectJob.gif" alt="Select Job" width="550" height="496"><br>
		<b>Figure: Select a predefined Job, or create a new one.</b><br><br>
		
		<img src="Images/old_SelectFiles.gif" alt="Select Files" width="552" height="499"><br>
		<b>Figure: Add the paths to scan.</b><br><br>

		<img src="Images/old_FileType.gif" alt="Available scan types" width="480" height="392"><br>
		<b>Figure: Available scan types - Files, Folders, and URLs.</b><br><br>

		<img src="Images/old_RulesSearch.gif" alt="Select Rules" width="550" height="497"><br>
		<b>Figure: Select the rules you want to run.</b><br><br>

		<img src="Images/old_Email.gif" alt="Email Schedule" width="550" height="496"><br>		
		<b>Figure: Indicate where you'd like the report issued to.</b><br><br>
		
		<img src="Images/old_StartProcess.gif" alt="Ready to start" width="552" height="499"><br>
		<b>Figure: Ready to start the scanning process.</b><br><br>
		
		<img src="Images/old_Processing.gif" alt="Scanning in progress" width="552" height="499"><br>
		<b>Figure: Scanning in progress.</b><br><br>

		<img src="Images/old_Finished.gif" alt="Finished" width="550" height="496"><br>	
		<b>Figure: Finished! View the report to see the scan result.</b>
		<br><br><br><br>
	</li>
	<li>
		<h2><a name="CreateRule"></a>Creating New Rule</h2>
		<p>To create a new rule for a Job:</p>
<ol>

	<li>Select the designated Job and click next to the Rules Definition page.</li>
	<li>Click &quot;Add&quot; on the bottom left of the Rules ListBox.</li>
	<li>Select &quot;Create a new rule&quot; from the radio option and enter name for the 
	new rule.<br>

		<img src="Images/old_AddRule.gif" alt="Add new rule" width="296" height="229">
		<br><b>Figure: Create a new rule.</b><br><br>     
	</li>
	<li><br>
		<img src="Images/old_RulesSearch.gif" alt="Search tab" width="550" height="497">
		<br><b>Figure: Add the search information and regular expression.</b><br><br>
	</li>
	<li>
		Enter the replacement text to automatically fix your code.<br>
		<img src="Images/old_RulesReplace.gif" alt="Replace tab" width="550" height="497">
		<br><b>Figure: Replacement text of this rule.</b><br><br>
	</li>
	<li>
		<br>
		<img src="Images/old_RulesExceptions.gif" alt="Exceptions tab" width="550" height="497">
		<br><b>Figure: Rule exceptions.</b><br><br>
	</li>	
	<li>
		<br>
		<img src="Images/old_RulesNotes.gif" alt="Notes tab" width="550" height="497">
		<br><b>Figure: Notes of this rule.</b><br><br>
	</li>	

</ol><br>
	</li>
	<li>
	<h2><a name="ExpressBuilder"></a>Create Regular Expression</h2>
	<p>The following images show how to create your expression. </p>
	<img src="Images/old_RegexWiz1.gif" alt="Regular Expression Wizard" width="544" height="447"><br>
	<b>Figure: SSW Code Auditor also comes with an easy to use yet powerful Regular Expression wizard.  
		You can use it to build patterns if you are not familiar with regular expressions.</b><br>
	<br>
	<img src="Images/old_RegexWiz2.gif" alt="Regular Expression Wizard 2" width="544" height="447"><br>
	<b>Figure: For the advanced users, the wizard provides a complete testing ground for all the features
		of .NET Regular Expressions, as well as two test areas (sand box) for you to test in one go.</b><br>
	<br>
	<img src="Images/old_RegexWiz3.gif" alt="Regular Expression Wizard 3" width="544" height="447"><br>
	<b>Figure: The wizard also shows you any group matchings, this information is not directly
		used in Code Auditor, but it is quite useful elsewhere especially if you work with regular expressions
		quite a bit!</b><br>
	<br>

	<img src="Images/old_RegexWiz4.gif" alt="Regular Expression Wizard 3" width="544" height="447"><br>
	<b>Figure: You see check the regular expression in a more human readable way 
	here.</b><br>
	<br>
		
		<p>More information on <a href="Resources.aspx">regular expressions</a>.</p><br></li>
	<li>
	<h2><a name="TheReports"></a>The Reports</h2>
	<p>
	<img src="Images/old_SampleReport.gif" alt="Sample Report" width="901" height="777"><br>
	<b>Figure: Job Report</b></p>
	</li>
</ol>
	
		</asp:content>