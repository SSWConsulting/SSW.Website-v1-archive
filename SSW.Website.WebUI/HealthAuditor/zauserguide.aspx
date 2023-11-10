<%@ Page  Language="C#" AutoEventWireup="false"   MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Health Auditor - Screenshots"  %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

	<p>
		<a href="/ssw/HealthAuditor/">SSW Health Auditor</a> > Screenshots<br><br>
		<img src="Images/HealthAuditorLogo.gif" alt="Visual Studio add-in" width="215" height="82">
	</p>
<h2>User Guide</h2>	
<ol>
<li>
	<p>Locate the new toolbar in Visual Studio.<br>
		<img src="Images/HealthAuditorToolbar.gif" alt="" width="461" height="111"><br>
		<b>Figure: SSW Health Auditor toolbar</b></p>
	<p>Note: You will only see "Code Auditor Tutorial" if you have SSW Code Auditor installed.</p>
</li>
<li>
	<p>Select projects to scan in the Options window.<br>
		<img src="Images/ProjectsToScan.gif" alt="" width="542" height="527"><br>
		<b>Figure: Select projects to scan</b>
	</p>
</li>
<li>
	<p>Specify the options of auditors, these settings will be saved for this solution.<br>
		<img src="Images/CodeAuditorSettings.gif" alt="Code Auditor Setting" width="542" height="527"><br>
		<b>Figure: Code Auditor settings for this solution</b>
	</p>
	<p>
		<img src="Images/FxCopSettings.gif" alt="FXCop Setting" width="542" height="527"><br>
		<b>Figure: FxCop settings for this solution</b></p>
	<p>Note: You will only see the options for Code Auditor and FxCop if you have them installed.</p>
</li>
<li>
	<p>For the best results, please check that the latest version of supported applications are installed.<br>
		<img src="Images/CheckLatest.gif" alt="Check for Updates" width="536" height="519"><br>
		<b>Figure: Check for updates.</b>
	</p>
</li>
<li>
	<p>Click "Audit" to audit and analyze your project.<br>
		<img src="Images/ClickAudit.gif" alt="" width="359" height="138"><br>
		<b>Figure: Audit your project from Visual Studio environment.</b>
	</p>
</li>
<li>
	<p>See audit results.<br>
		<img src="Images/OutputWindow.gif" alt="Results" width="640" height="170"><br>
		<b>Figure: Check audit results from Visual Studio output window.</b>
	</p>
</li>
<li>
	<p>You can double click the audit result and it will take you to the code with error.<br>
		<img src="Images/CodeToFix.gif" alt="Code to fix" width="780" height="384"><br>
		<b>Figure: Double click the audit results in Visual Studio output window.</b></p>
	<p>Note: This feature depends on auditors. Currently only SSW Code Auditor has this feature.</p>
</li>
</ol>	
		</asp:content>