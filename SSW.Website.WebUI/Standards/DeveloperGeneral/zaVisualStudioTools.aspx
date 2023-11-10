<%@ Page Language="VB" MasterPageFile="~/Masters/RavenSubPage.master" AutoEventWireup="false" Title="SSW The Best 3rd Party Visual Studio Tools"  %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
    <h1>Visual Studio Tools</h1>
    <h2>SSW Best 3rd Party Tools</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="index" runat="server">
	<div class="TableOfContents">
        <h2>Visual Studio Tools:</h2>
		<ul>
			<li><a href="#TeamFoudationSidekicks">Team Foundation Sidekicks</a></li>
			<li><a href="#VBP">Visual Build Professional</a></li>
		</ul>
	</div>
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D54686525323042657374253230546F6F6C73253230466F72253230496E7465726E65742532304578706C6F726572')"> Let us know</a> what you think.</p> 
    <p>Would you like your software to be considered for this list? <a href="TheBest3rdPartyTools.aspx#HowToGetMyToolsConsidered">Give us your details</a>.</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">

        <h2><a name="TeamFoudationSidekicks"></a>Team Foundation Sidekicks</h2>
		    <p><a href="http://www.attrice.info/cm/tfs/ ">Team Foundation Sidekicks</a> provide some invaluable query tools for TFS. Here are the two most important Sidekicks provided.</p>
		    <h3>Workspace Sidekick</h3>
                <p>See how many workplaces you have, who owns them and when they were last accessed.</p>
		        <dl class="image">
		            <dt><img src="Images/DeleteWorkspace.jpg" alt="Delete Workspace" /></dt>
		            <dd>Figure: Lets you delete old workspaces</dd>
		        </dl>
		    <h3>Status Sidekick</h3>
                <p>Lets you see all checked out files.</p>
		        <dl class="image">
		            <dt><img src="Images/AvoidLosingCode.jpg" alt="Avoid Losing Code " /></dt>
		            <dd>Figure: Find the oldest checked out files so you don't lose code</dd>
		        </dl>

		<h2><a name="VBP"></a>Visual Build Professional</h2>
		    <p>Visual Build Pro is an automated build program suitable for use on .NET projects. Automated scripts can be created to the complete build process including covering:</p>
			<ul>
				<li>SourceSafe Get Latest</li>
				<li>Compiling</li>
				<li>Unit Tests</li>
				<li>Code Auditor</li>
				<li>FxCop</li>
				<li>Wise (to build MSIs and Setup.exes)</li>
				<li>Deployment via fileshare or FTP</li>
			</ul>
			<dl class="image">
				<dt><img src="Images/VBP1.gif" alt="Visual Build Professional" /></dt>
				<dd>Figure: Visual Build Professional</dd>
            </dl>
				<p>Learn more about <a href="/ssw/Redirect/VBP.htm" target="_blank">Visual Build Professional</a>.</p>

            <div class="greyBox">
                <p>We currently recommend Visual Build Pro for automating <a href="/ssw/Standards/Rules/RulesToBetterSetups.aspx#CreatePackageInitially">setup and deployments</a>, but for future projects we will use MS Build and eventually we will see MS Build being the recommended solution to automating deployments.</p>
            </div>

		<h2>Acknowledgements</h2>	
			
		<p><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
   		<a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Martin.aspx">Martin Hinshelwood</a></p>

</asp:content>