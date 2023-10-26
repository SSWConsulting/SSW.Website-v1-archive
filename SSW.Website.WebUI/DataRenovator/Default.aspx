<%@ Page  Language="C#"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Data Renovator - Tool to Compare and Update Access Backends"  %>
<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
	<img src="Images/DataRenovatorLogo.gif" alt="SSW DataRenovator!" width="237" height="83">
    <h2>Compare and update Access database back-ends with SSW Data Renovator</h2>
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

<p>
	If you've got client backend mdb files that are out of sync with the master version, let SSW Data
	Renovator generate different reports for you to make the changes manually. Or step through the wizard
	and the data will be automatically moved into the new structure. Once in sync, use SSW Data PRO! to keep
	them that way.
<div class="greybox">
		Why SSW Data Renovator <a href="/ssw/Standards/DeveloperAccess/WhyDataRenovator.aspx">was developed</a>.
</div>

<h2 class="thinner">Key Features & Benefits</h2>
<div class="greybox"><b>Rave Review in Smart Access (Pinnacle Publishing)</b>
		Check out what Garry Robinson said of SSW Data Renovator at <a href="/ssw/Redirect/vb123.htm" target="_blank">www.vb123.com</a><img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" width="17" height="11" > 
		<br><br>
		This software is easy to install, easy to run and it handles what can be a very complex task very well. I would recommend the product for a lot of transfer exercises as it will allow you to concentrate on the job of getting the newest database design correct. Thinking back this program could have saved me about 30 hours in the last year.
</div>
<p>
	This database utility will compare the new version with the master copy, 
	tell you exactly what those changes were and help you move the data.
</p>
<p>
	Using it's friendly interface you can:
</p>
	<ul>
		<li>generate different reports for you to make the changes manually, or</li><li>step through the wizard and the data will be AUTOMATICALLY moved 
		into the new structure (renames are it's strongest feature)</li></ul>
<p>	Use SSW Data Renovator instead of documenting and remembering changes made to your 
    back end data structure. 
	It analyzes your database and works out the differences. Even if you don't have access to the current 
    back end structure you can have 
	the differences written to a table. Use SSW Data PRO! to commit the changes 
    to your back end automatically (which is great in deployment!) 
</p>
<p>
	SSW Data Renovator can convert all report content into a table that can be used by its sister product SSW Data PRO! for automatic changes. SSW Data PRO! 
	is another database utility developed by SSW to automatically commit structural changes into 
	a Microsoft Access database. Once a database is under SSW Data PRO! control it removes the need for SSW 
	Data Renovator as all changes to the clients data (.mdb) are made on the distribution of the application (.mdb)
</p>

<p>
	<alt src="Images/Wizard.gif" border="1" width="600" height="438">
</p>

<p>
More screen shots in the user guide
</p>

<h2 class="thinner">User Guide</h2>

<p>
	Welcome to the SSW Data Renovator <a href="UserGuide.aspx">User Guide</a>. This help facility is designed to let you 
	quickly and easily start using this great new utility! 
</p>

<h2 class="thinner">Reports </h2> 
<p>
	Here are the reports for the sample Northwind database included with SSW Data Renovator. 
	You will need the Microsoft Access Snapshot Viewer to view these links.
</p>

<ul>
    <li><a href="Reports/rptDataRenovatorTableChangesReport.snp">Table Changes Report</a></li>
    <LI><a href="Reports/rptDataRenovatorFieldChangesReport.snp">Field Changes Report</a></LI>
    <LI><a href="Reports/rptDataRenovatorPropertyChangesReport.snp">Property Changes Report</a></LI>
    <LI><a href="Reports/rptDataRenovatorIndexChangesReport.snp">Index Changes Report</a></LI>
    <LI><a href="Reports/rptDataRenovatorExactIndexChangesReport.snp">Exact Index Changes Report</a></LI>
    <LI><a href="Reports/rptDataRenovatorSummaryReport.snp">Summary Report</a></LI>
</ul

<h2> System Requirements</h2> 
<ul>
    <li><a href="/ssw/Redirect/Access/AccessTrial.htm" target="_blank">Microsoft Access 97, 2000, 2002 (aka XP) or 2003</a></li>
    <li><a href="/ssw/Redirect/mdac26.htm" target="_blank">MDAC 2.8</a></li>
    <li><a href="/ssw/Database/LinksSoftwareUpdates.aspx#MicrosoftNET">.NET Framework v1.1</a> to register SSW Data Renovator</li>
</ul>

<p>Microsoft and the Office logo are trademarks or registered trademarks of Microsoft Corporation in the United States and/or other countries.</p>

</asp:content>