<%@ Page  Language="C#" AutoEventWireup="false"   MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Diagnostics - Screenshots"  %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
				
<a href="/ssw/Diagnostics/">SSW Diagnostics</a> > Screenshots<br/><br/>
<p><img src="Images/DiagnosticsLogo.gif" alt="SSW Diagnostics" width="187" height="83" /></p>
<p><b>This utility checks that your system is up-to-date.</b></p>

<p>
	To better enable our developers to analyze your problem, it helps if we collect information about your 
	system. This application will collect that information and then email it to our developers, you may view 
	the information before you send it if you wish.
</p>
	
<table class="clsSSWTableOfContents">
		<tr>
			<td>
				<b>SSW Diagnostics User Guide<br/></b><br/>
					<a href="#Pre">1.</a> Prerequisites<br/>
				<a href="#userguide">2.</a> User Guide<br/>
				</td>
		</tr>
</table><br />
<ol>
<li>
<h2><a id="Pre"></a>Prerequisites</h2>
<p>
	1. <strike>To install, view the
	<a href="/ssw/Standards/WiseSetup/UserGuide.aspx">Installation User Guide</a></strike>&nbsp;&nbsp;&nbsp;&nbsp;No install needed now as now a Click Once app 
	<br/>
	2. <strike>To register, view the
	<a href="/ssw/StandardsInternal/Registration/userguide.aspx">Registration User Guide</a></strike>&nbsp;&nbsp;&nbsp;&nbsp;No registration needed now as free
	<br/>
	<br/></p>
</li>
	
<li> <h2><a name="userguide"></a>User Guide</h2>	
	<p>
		<img src="Images/welcome3-89.gif" alt="SSW Diagnostics - Welcome screen" width="658" height="511" /><br/>
		<b>Figure: The first screen of SSW Diagnostics provides a brief introduction to the scanning process</b>
	</p>

	<p>
		<img src="Images/scanoption3-89.gif" alt="SSW Diagnostics - Selecting the data source" width="658" height="511" /><br/>
		<b>Figure: It gives the options to perform a fresh scan or to view the last report</b>
	</p>

	<p>
		<img src="Images/scansettings3-89.gif" alt="SSW Diagnostics - Settings" width="658" height="511" /><br>
		<b>Figure: Select the directories you would like to scan</b>
	</p>
	
	<p>
		<img src="Images/readytoScan3-89.gif" alt="SSW Diagnostics - To begin Scanning" width="658" height="511" /><br>
		<b>Figure: Reviews the scan settings before scanning starts</b>
	</p>
	
	<p>
		<img src="Images/scanprogress3-89.jpg" alt="SSW Diagnostics - Scanning" width="658" height="511" /><br>
		<b>Figure: The SSW Diagnostics performing the scanning process</b>
	</p>
	
	<p>
		<img src="Images/scanresults3-89.gif" alt="SSW Diagnostics - Results" width="660" height="513" /><br>
		<b>Figure: The result screen shows old or latest version of the installed software, marked by red-cross and green-tick symbol.</b>
	</p>

	<p>
		<img src="Images/submitreport3-89.gif" alt="Submit Report to SSW" width="658" height="511" /><br>
		<b>Figure: Email the report to SSW Diagnostics Team for any assistance or feedback</b> 
	</p>
	
	<p>
		<img src="Images/finish3-89.gif" alt="Finish" width="658" height="511" /><br>
		<b>Figure: Diagnostics process Completed</b>
	</p>
</li>
</ol>	
</asp:content>