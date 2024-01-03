<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>
<%@ Page  Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Upsizing PRO! - Screenshots"  %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

	<a href="/ssw/UpsizingPRO/">SSW UpsizingPro</a> &gt; Screenshots<br><br>
<P>
	<img src="Images/UpsizingPROLogo.gif" alt="SSW Upsizing PRO"  width="197" height="83"> <br />
	<b>Migrate from Access to SQL Server safely with SSW Upsizing PRO!</b>
</P>
<P>
	If your business is growing and you demand a scalable database solution, upsize from Access Jet to the robust SQL Server 
	environment. SSW Upsizing PRO! prepares your Access database for the Microsoft Upsizing Wizard, preventing known errors, 
	and ensuring a smooth migration.
</P>

<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
			<tr>
				<td>
					
					<b>Upsizing PRO User Guide</b><br>
					<a href="#Pre">1.</a> Prerequisites<br>
					<a href="#UserGuide">2.</a> User Guide<br>
				</td>
				</tr>
					</table>
 
<SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>

<h2>User Guide<a name="UserGuide"></a></h2> 


<p>
	When you run the install exe there is a simple wizard interface to guide you through
	the setup process. All you have to do is select which directory you want SSW Upsizing 
	PRO! to be installed into. 
</p>

<p>
		SSW Upsizing PRO! provides a simple wizard interface to scan and report
        on errors in your Access database</p>
    <ul>
        <li><strong>Before Upsizing<br>
        </strong></li>

		<p><dl class="goodImage">
		<img src="Images/BeforeUpsizingStep1.png" alt="" border="1" width="600" height="489">
    <p><strong>Figure: Migrate from Access to SQL Server safely with SSW Upsizing PRO!</strong></p></dl></p><br>
<p>
		
		<dl class="goodImage">
		<img src="Images/BeforeUpsizingStep2.png" alt="" border="1" width="593" height="479">
    <p><strong>Figure: Select versions of Microsoft tools used in upsizing</strong></p></dl></p><br>
<p>
		
		<dl class="goodImage">
		<img src="Images/BeforeUpsizingStep3.png" alt="" border="1" width="600" height="485">
    <p><strong>Figure: Information</strong></p></dl></p><br>
<p>
		
		<dl class="goodImage">
		<img src="Images/BeforeUpsizingStep4.png" alt="" border="1" width="600" height="490">
    <p><strong>Figure: Options</strong></p></dl></p><br>
<p>
		
		<dl class="goodImage">
		<img src="Images/BeforeUpsizingStep5.png" alt="" border="1" width="600" height="490">
    <p><strong>Figure: Replication</strong></p></dl></p><br>
<p>
		
		<dl class="goodImage">
		<img src="Images/BeforeUpsizingStep6.png" alt="" border="1" width="600" height="490">
    <p><strong>Figure: Rules</strong></p></dl></p><br>
<p>
		
		<dl class="goodImage">
		<img src="Images/BeforeUpsizingStep7.png" alt="" border="1" width="600" height="490">&nbsp;
		<p><strong>Figure: Processing rules </strong></p></dl></p><br>
        <li><strong>After Upsizing</strong></li>
        <p>
		
		<dl class="goodImage">
		<img src="Images/AfterUpsizingStep1.png" alt="" border="1" width="600" height="493">
    <p><strong>Figure: Information</strong></p></dl></p><br>
        
        <p>
		
		<dl class="goodImage">
		<img src="Images/AfterUpsizingStep2.png" alt="" border="1" width="600" height="493">
    <p><strong>Figure: Comparing relationships and number of records</strong></p></dl></p><br>
        </ul>
       

<p>
	<a href="WorkBefore.aspx">Things to check before running SSW Upsizing PRO!</a><br>
	<a href="RunningUpsizingWizard.aspx">Running Upsizing Wizard</a><br>
	<a href="WorkAfter.aspx">Things to check after running SSW Upsizing PRO!</a>
</p>

	</asp:content>