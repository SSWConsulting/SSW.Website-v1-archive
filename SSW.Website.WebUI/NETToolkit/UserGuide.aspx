<%@ Page  Language="C#"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW .NET Toolkit - Screenshots"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="Images/NETToolkitLogo.gif" alt="DOT NETToolkit" width="188" height="83" />
    <h2>Develop Applications more efficiently while following best practices with the SSW .NET Toolkit</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

<p>
The SSW .NET Toolkit is an example of a distributed multi-layer application based on the Microsoft Northwind database. Designed by Developers for Developers, the real-world source can be used as a model and basis for custom-designed applications perfect for small and medium enterprise (SME) applications. Microsoft's examples like Duwamish  and IBuySpy  are code intensive and marketed towards architects, not developers. The SSW .NET Toolkit delivers more functionality using less code.
</p>
<p>
The .NET Toolkit currently contains three parts:</p>
<ul>
	<li>
		Part A demonstrates how to use extended providers for validation, and how to implement searching through records in a database, as well as how to implement SSW Exception Reporter (an extended version of the Configuration Block). 
	</li>
	<li>
		Part B shows demonstrations on our standard Rules to Better Interfaces 
	</li>
	<li>
		Part C implements database deployment from one of our most popular products SSW SQL Deploy. This demonstrates how we deal with the on-going SQL script changes for Client databases. 
	</li>
</ul>

<p><img border="0" src="Images/MainMenu.jpg" width="538" height="441"><br>
<b>Figure: Main menu of the SSW .NET Toolkit</b>
</p>

<SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>

<H2>Part A - SSW Framework Components and Tools</H2>
<blockquote>
	<p>Provides details for using components from our framework library and some code blocks showing how to implement them in your own applications.</p>
</blockquote>
<ol>
	<li><a href="01WinValidator.aspx">WinValidator - Client Side Validation using Extended Providers</a>
	<li><a href="02WinSearch.aspx">WinSearch - The standard way we do database search</a>
	<li><a href="03DataEntry.aspx">Standard Data Entry Forms - Clean, standard data entry forms</a>
	<li><a href="04ExceptionReporter.aspx">Exception Reporter - Handling and storing exceptions in a central location</a>
	<li><a href="05WizardForms.aspx">WizardForm - Simple, fading wizard forms</a></li>
	<li><a href="06ConfigurationBlock.aspx">Configuration - Managing the storage of application configuration settings</a></li>
	<li><a href="07VersionChecker.aspx">Version Checker - Check new version easily</a></li>
    <li><a href="08ProgressbarsStatusforms.aspx">Progress bars/Status forms</a></li>
</ol>

<p><img border=0 src="Images/PartA.jpg" width="674" height="474"><br>
<b>Figure: Part A shows examples and implementations of our Rules to Better Windows Forms</b>
</p>

<H2>Part B - Better User Interfaces</H2>
	<blockquote>
		<p>Elaborates on our Rules to better Interfaces found 
		at
		<a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx">
		http://www.ssw.com.au/ssw/Standards/Rules/RulesToBetterInterfaces.aspx</a> by providing live examples of our best practices.</p>
	</blockquote>
	<p><img border=0 src="Images/PartB.jpg" width="642" height="426"><br>
	<b>Figure: Part B shows examples of our Rules to Better Interfaces</b>
	</p>
<h2>Part C - Database Deployment and Reconcile</h2>
	<blockquote>
		<p>Provides actual implementation of one of our most 
		successful products <a href="/ssw/SQLDeploy/">SSW SQL Deploy</a>.</p>
	</blockquote>
	
		<dl class="image">
            <dt><img src="/ssw/nettoolkit/Images/PartC.jpg" alt="Storage Mechanism" width="458" height="602" /></dt>
            <dd>Figure: A practical implementation of our database deployment engine in action. Use this to deploy the sample database that all of the samples use.</dd>
        </dl>	
	<br />
	
Click 'Select ... ' to create a new sample database or specify an existing one.
Before doing this, please make sure your account has enough privileges to access
your database server and is able to create and drop databases. Normally, a 
'Database Creator' will be enough.  <br />
 
		<dl class="image">
            <dt><img src="/ssw/sqlauditor/Images/V9-77_ConfigureSampleDB_2.gif" alt="Configure database" width="418" height="538" /></dt>
            <dd>Figure: SSW database setup control - configure Link Auditor database</dd>
        </dl><br />

		<dl class="image">
            <dt><img src="/ssw/sqlauditor/Images/V9-77_ConfigureSampleDB_3.gif" alt="Creating database" width="578" height="346" /></dt>
            <dd>Figure: SSW database setup control - creating Link Auditor database</dd>
        </dl>
        	
	</p>
<!--<h2>User Guide</h2>
	<p>
		Welcome to the<a href="UserGuide.aspx">User Guide</a>. This help facility is designed to quickly 
		get you up and running using our software.
	</p>
	-->

	
<!--<h2>How it works</h2>

	<p>
		It works by...
	</p>
	-->


<!--<h2>Links</h2> 


-->
</p>

		</asp:content>