<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Health Auditor - FxCop Tutorial"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
				
	<p>
		<a href="/ssw/HealthAuditor/">SSW Health Auditor</a> > FxCop Tutorial<br><br>
		<img src="Images/HealthAuditorLogo.gif" alt="Visual Studio add-in" width="215" height="82">
	</p>
<h2>FxCop Tutorial</h2>	
<ol>
<li>
	<p>Locate the new toolbar in Visual Studio.<br>
		<img src="Images/HealthAuditorToolbar.gif" alt="" width="461" height="111"><br>
		<b>Figure: SSW Health Auditor toolbar</b></p>
</li>
<li>
	<p>Select projects you want to scan with FxCop.<br>
		<img src="Images/SelectFxCop.gif" alt="" width="542" height="527"><br>
		<b>Figure: Select projects to scan</b>
	</p>
</li>
<li>
	<p>Check the settings of FxCop.<br>
		<img src="Images/FxCopSettings.gif" alt="FXCop Setting" width="542" height="527"><br>
		<b>Figure: FxCop settings for this solution</b></p>

<!--		
	<p><a name="SSWRecommendedRules"></a>
		<table class="clsSSWTable" id="table16">
			<tr>
				<td><p>SSW recommended rules:
				<br><br>
				SSW rules set has all the default FxCop rules except "Globalization Rules" category is disabled, rules from this category are safe to exclude and most developer don't need them as well.
				</p>
				</td>
			</tr>
		</table>
	</p>
-->
</li>
<li>
	<p>Click "Audit" to audit and analyze your project.<br>
		<img src="Images/ClickAudit.gif" alt="" width="359" height="138"><br>
		<b>Figure: Audit your project from Visual Studio environment.</b>
	</p>
</li>
<li>
	<p>Select what to do after audit finished, make sure "Open printable reports" is selected.<br>
		<img src="Images/AuditFinished.gif" alt="" width="336" height="151"><br>
		<b>Figure: Select what to do after audit finished.</b>
	</p>
</li>
<li>
	<a name="FxCopReport"></a>
	<p>See the results and fix all the problems accordingly.<br>
		<img src="Images/FxCopReport.gif" alt="Results" width="787" height="576"><br>
		<b>Figure: The 'FxCop Analysis Report' tells the developer to fix 33 issues.</b>
	</p>
</li>
</ol>	
		</asp:content>