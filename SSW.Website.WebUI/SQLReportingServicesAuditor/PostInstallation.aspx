<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW SQL Reporting Services Auditor - Post Installation" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <h1>SQL Reporting Services Auditor - Post Installation</h1>
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

    <p><strong><a href="Default.aspx">SSW SQL Reporting Service Auditor (SSW Auditor)</a></strong> installation cannot run perfectly on MS SQL Server 2008 and later versions, you need to manually configure it.</p>
    <p>This document is made under the following install environment:</p>
    <ul>
        <li>Windows Server 2008 R2 Enterprise with Service Pack 1</li>
        <li>MS SQL Server 2008 R2</li>
        <li>SSW SQL Reporting Services Auditor v1.22</li>
    </ul>

    <p>Before you can run SSW SQL Reporting Services(SSRS) Auditor, you need to complete the following steps.</p>
    <ol>
        <li>Adding an ASP.NET 2.X Application Pool</li>
        <li>Using this Application Pool in SSRS Auditor</li>
        <li>Rname “ValidateReports” file</li>
    </ol>
    <h3>First, to add an ASP.NET Application Pool:</h3>
    <ol>
        <li>Open "Internet Information Services (IIS) Manager"</li>

        <li>Expand the menu under Server name | right click "Application Pools" | select "Add Application pool..."
            <dl class="image">
                <dt><img src="images/SSRSA-post-installation-1.png" /></dt>
                <dd>Figure: Add an Application Pool in IIS</dd>
            </dl>
        </li>
        <li>Adding a new Application Pool. In this example, it named as "TestAppPool", select ".NET Framework v2.0XXXX", tick the box in front of "start application pool immediately", click "OK"
            <dl class="image">
                <dt><img src="images/SSRSA-post-installation-2.png" /></dt>
                <dd>Figure: Adding a new application pool</dd>
            </dl>
        </li>
        <li>Go to Advanced Settings of "TestAppPool"
            <dl class="image">
                <dt><img src="images/SSRSA-post-installation-3.png" /></dt>
                <dd>Figure: Go to Advanced Settings </dd>
            </dl>
        </li>
        <li>In Advanced Setting, change Identity from "ApplecationPoolIdentity" (default) to "LocalSystem" | Click "OK"
            <dl class="image">
                <dt><img src="images/SSRSA-post-installation-4.png" /></dt>
                <dd>Figure: Change Identity from ApplecationPoolIdentity(default) to LocalSystem</dd>
            </dl>
        </li>
        <li>The newly created application pool is shown
            <dl class="image">
                <dt><img src="images/SSRSA-post-installation-5.png" /></dt>
                <dd>Figure: The newly created application pool is shown</dd>
            </dl>
        </li>
    </ol>

    <h3>Second to add an ASP.NET Application Pool:</h3>

    <ol>
        <li>Go to SSRS Auditor's application Pool. Right click "SSW SSRS Auditor" | select "Manage Application" | select "Advanced Settings"
            <dl class="image">
                <dt><img src="images/SSRSA-post-installation-6.png" /></dt>
                <dd>Figure: Go to "Advanced Settings" of SSW SSRS Auditor</dd>
            </dl>
        </li>
        <li>To use the new application pool
            <dl class="image">
                <dt><img src="images/SSRSA-post-installation-7.png" /></dt>
                <dd>Figure: start using new application pool</dd>
            </dl>
        </li>

    </ol>

    <p>Last, rename "001-ValidateReports" file in SSW auditor folder from:</p>
    <p class="greybox"><s style="background-color:red;">0</s>01- ValidateReports</p>
    <p>To:</p>
    <p class="greybox">01 - ValidateReports</p>
        <dl class="image">
            <dt><img src="images/SSRSA-post-installation-8.png" /></dt>
            <dd>Figure: change its name to "01-ValidateReports"</dd>
        </dl>
        
</asp:content>