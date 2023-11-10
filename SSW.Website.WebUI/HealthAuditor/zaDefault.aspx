<%@ Page  Language="C#"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Health Auditor - Utility to audit and analyze projects"  %>
<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

				<p>
	<img src="/ssw/HealthAuditor/Images/HealthAuditorLogo.gif" alt="Health Auditor" align="right" width="215" height="82">
	<b>This utility helps developers audit and analyze Visual Studio projects.</b>

</p>
<p>
	SSW Health Auditor is a tool that integrates SSW Code Auditor and Microsoft FxCop into Visual Studio .NET 2003 and Visual Studio 2005.
</p>
<p>
		This utility helps you audit and analyze your projects quickly and easily 
	with just a few clicks - all without leaving Visual Studio environment.
</p>
<h2> Key Features & Benefits</h2>
	<p>
       
		<UL>
			<LI>Checks .NET projects source code for coding standards.</li>
			<LI>Checks .NET managed code assemblies for conformance to the Microsoft .NET Framework Design Guidelines.</li>
			<LI>Automatically displays report after audit process.</li>
			<LI>Integrated with Visual Studio environment, you can view the report in Visual Studio's output panel as well.</li>
			<LI>Easily sets different settings for every solution to your specific needs.</li>
			<li>A $199 value given away 100% free. No Adware or Spyware.</li>
		</UL>
	</p>
	<p>

	<img src="Images/NetToolkitProjectsToScan.gif" alt="" border="0" width="542" height="527">
	</p>
	<p>
		More screen shots in the User Guide.
	</p>
	
<h2>User Guide</h2>	
	<p>
		Welcome to the <a href="UserGuide.aspx">User Guide</a>. This help facility is designed to quickly 
		get you up and running using our software.
	</p>
<p><SSW:incDemonstration id="IncDemo" runat="server" ></SSW:incDemonstration>
</p>

<h2> System Requirements </h2>     
      	<ul>
      	 <li><A href="/ssw/Database/LinksSoftwareUpdates.aspx#MicrosoftNET">.NET Framework</A></li>
      	 <li><A href="/ssw/Redirect/Microsoft/MSDNVSDotNet.htm">Visual Studio 
			2005 and/or Visual Studio .NET 2003</A></li>
      	 <li><A href="/ssw/CodeAuditor">SSW Code Auditor *</A></li>
      	 <li><A href="/ssw/Redirect/gotdotnet/TeamFXCop.htm">Microsoft FxCop *</A></li>
   	</ul>
<p>* Optional tool, only needed if you want to audit/analyze your project with this tool.</p>
<h2>Is automated code review enough?</h2>
		<p>No, automate code review is the essential and it is always recommended to run. However  the next step is the old way, "software audit" a.k.a. human code review.

Many companies offer this service, including <a href="/ssw/Company/SoftwareAudit.aspx">SSW</a>. We do code review for $999 USD.

</p>
      
<h2> Getting Support </h2>
	<p>
		If you can't find what you are looking for in the product documentation then check our 
		<a href="https://help.ssw.com.au">knowledge base</a> for further information and tips about 
		this product.
	</p>
	<p>
		Please send us <A href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</A> and <A href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">feedback</A>
		so that we can evolve our software into a product that matches your requirements. We guarantee a response.
	</p>
    <h2>Download</h2>
	<p>
SSW Health Auditor is a free utility, currently it is not available to be downloaded as a standalone application.
<br>It is integrated with SSW Code Auditor, please download a copy of SSW Code Auditor to take the benefits of this free tool.
	</p>
 		</asp:content>