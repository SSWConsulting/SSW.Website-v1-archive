<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW SQL Reporting Services Auditor - Utility to validate your reports" %>

<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" Namespace="SSW" %>
<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <h1>SQL Reporting Services Auditor</h1>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

    <p>Are you looking to ensure your Reporting Services reports working correctly?
	          SSW SQL Reporting Services Auditor is Web-Application that iterates through all the reports on a report server and lets shows whether they have rendered correctly or if any errors occurred.	          
    </p>
    <h2 class="thinner">How it Works</h2>
    <p>
        SSW SQL Reporting Services Auditor is  a powerful utility that enables you to validate reports, 
	which returns an XML dataset that can be consumed natively by SQL 2005 Reporting Services. The XML dataset can also be consumed by SQL 2000 Reporting Services.
    </p>
    <h2 class="thinner">Sample Reports</h2>
    <p>SSW SQL Reporting Services Auditor uses XML to create its reports.  Here is a sample report:</p>
    <dl class="image">
        <dt><img src="/ssw/SQLReportingServicesAuditor/Images/RSAuditorScreen.gif" alt="reports sample" width="530" height="356"></dt>
    </dl>
    <h2>System Requirements </h2>
    <ul>
        <li><a href="/ssw/Database/LinksSoftwareUpdates.aspx#MicrosoftNET">.NET Framework 2.0</a></li>
        <li>SQL Server 2005 Reporting Services </li>
    </ul>
    
    <h3>Support Versions</h3>
    <p>This product supports: Microsoft SQL Server 2016, 2014, 2012, 2008 R2, 2008, 2005.</p>

    <p>SSW SQL Reporting Service Auditor installation cannot run perfectly on MS SQL Server 2008 and later versions, you need to manually configure it. Please find post installation guide in<a href="UserGuide.aspx"> User Guide</a> page. </p>

    <h2>What does the unregistered version give me?</h2>

    <p>
        In respect to the unregistered version we know you want to see it 
		working before you buy it. We aim for that.
        <br>
        Note: we also give free version targeted to the little guys<br>
        More details see <a href="/ssw/KB/KB.aspx?KBID=Q658302">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q658302</a>
    </p>
    <p>
        SSW provides free phone and email support to answer queries on 
registered products.
    </p>

    <h2>Getting Support </h2>
    <p>For <a href="/ssw/Consulting/DatabaseDevelopment.aspx">SQL Server consulting</a> or development, feel free to contact us.</p>

    <a name="Updates"></a>
    <h2>Updates</h2>
    <p>Update for those who are using SQL Server 2008 and later versions, please check this <a href="PostInstallation.aspx">post installation guide</a>.</p>
    
    <a name="Links"></a>
    <h2>Links</h2>
    <ul>
        <li>A technical presentation on how we made this application so fast.
		<img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" border="0" width="17" height="11">
        </li>
        <li>
            <a href="../Standards/Rules/RulesToBetterSQLReportingServices.aspx" target="_blank">Rules to Better SQL Reporting Services </a>
        </li>
    </ul>

</asp:Content>
