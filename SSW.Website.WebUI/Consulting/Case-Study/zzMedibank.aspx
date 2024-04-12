<%@ Page Language="c#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Medibank Case Study | SSW Consulting" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>Medibank Case Study</h1>
    <h2>Creating releases from weeks to under a day</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <h2>Challenge</h2>
        <p>Medibank Private engage SSW to help implement ALM and DevOps for their internal application development, testing and support. Their currently process involved numerous manual steps and had to involved many different departments to coordinate the development, deployment and testing resources for their application. This was a highly inefficient process.</p>

        <h2>Technologies</h2>
            <ul>
                <li>TFS 2015</li>
                <li>Lab Manager</li>
                <li>Test Manager</li>
                <li>Coded UI Tests</li>
                <li>Powershell</li>
                <li>Hyper-V</li>
                <li>SCVMM</li>
                <li>SQL Server 2008</li>
            </ul>

        <h2>Results</h2>
            <p>SSW implemented TFS with Test Manager and Lab Manager for Medibank Private. This meant that when code was checked in:</p>
            <ol>
                <li>An automated build was kicked off</li>
                <li>Artefacts were created for the application and database upgrade scripts</li>
                <li>A 3 VMs in Hyper-V was spun up where:
                    <ol>
                        <li>The windows application was deployed (Windows XP and Windows Vista)</li>
                        <li>The SQL server database was restored and upgraded to the latest schema</li>
                    </ol>
                </li>
                <li>Automated UI tests than ran in the VM to verify there were no regressions</li>
                <li>A report was sent to the test managers and they had the opportunity to jump into the VM to manually test failing elements</li>
                <li>If there were test failures, a bug was created with the VM details and intellitrace logs</li>
            </ol>
            <p>This process streamlined an automated their development pipeline from weeks to create a release to under a day.</p>

            <dl class="image">
                <dt><img src="images/medibank-report.png" /></dt>
                <dd>Figure: The report at the end of the automated testing showing the application deployed to an environment and the tests that ran and failed</dd>
            </dl>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="sidebar" runat="server"></asp:Content>