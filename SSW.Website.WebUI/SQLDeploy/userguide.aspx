<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW SQL Deploy - Screenshots"  %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
<div style="display:block"><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider">
    </asp:SiteMapPath></div>
<a href="/ssw/SQLDeploy/">SSW SQL Deploy</a> &gt; Screenshots<br><br>

<table  cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
<tr>
<td>

<img src="Images/SQLDeployLogo.gif" width="174" height="77" alt="SQL Deploy">

<p>
<b>SQL Deploy Users Guide - Database Deployment Software for SQL Server and SQL Server Express</b></p>
<!--webbot bot="PurpleText" preview="KEYWORDS for SQL Deploy
MAIN KEYWORD: database deployment software 
SECONDARY: database updates | application deployment software | software deployment strategy/plan/process | remote software deployment | windows software deployment | application deployment plan/tool/tools | application deployment | sql server change deployment | sql server schema deployment tool | msde deployment | database schema deployment tool | deploy tool | software package deployment | application deployment in the enterprise | software package deployment
" -->
<p>How many times have you deployed an initial version of your SQL Server or SQL Server Express Database application to your clients or departments, then 
	wondered how you are going to make updates to the Database schema in the future without hassle?</p>
</td></tr>
</table> 
    <div class="TableOfContents">
        <p>
            <strong>SSW SQL Deploy User Guide</strong>
        </p>
	    <ol>
	        <li><a href="#Pre">Prerequisites</a></li>
	        <li><a href="#GettingStarted">Getting Started</a></li>
            <li><a href="#ViewSamples">Viewing the Samples</a></li>
	    </ol>
	    <p>See the <a href="DeveloperGuide.aspx">SSW SQL Deploy Developer Guide</a></p>
	</div>

    <ol>
        <li><SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks></li>
        <li><h2><a name="GettingStarted">Getting Started</a></h2>
            <p>
                First install SQL Deploy by downloading and running the setup package. When the installation is complete, view the <pre>Samples</pre> 
                folder that the setup package has opened.</p>
            <dl class="image">
                <dt><img border="0" src="Images/SamplesDir.gif" alt="Sample Code"></dt>
                <dd>Figure: The first thing you should do is view the sample and look at the sample code</dd>
	        </dl>
	    </li>
	    <li>
            <h2><a name="ViewSamples">Viewing the Samples</a> </h2>
            <p>
                Please take the time to look at the samples that are installed with the application. 
                There are samples for:</p>
            <ul>
                <li>Microsoft Access</li>
                <li>.NET Windows Forms</li>
                <li>ASP.NET Web Forms</li>
            </ul>
            <p>
                The <pre>SampleData</pre> folder contains sample SQL scripts that 
                work with the supplied sample applications. 
            </p>
            <p>
                SQL Deploy can run on 2 modes:
                <ol>
                    <li><a href="ExeMode.aspx">Running as an .exe</a></li>
                    <li><a href="IntegrationMode.aspx">Integrated with Application</a></li>
                </ol>
            </p>
        </li>
    </ol>
</asp:content>