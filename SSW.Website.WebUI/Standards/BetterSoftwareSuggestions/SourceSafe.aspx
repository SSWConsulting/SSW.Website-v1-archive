<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Visual SourceSafe (aka VSS) Suggestions (OLD – Microsoft replaced with TFS)" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label><p>
        <div class="TableOfContents">
            <ol>
                <li><a href="#VSSbackendSQLServer">Could VSS have the backend on SQL Server?</a></li>
                <li><a href="#BackupRestoreOptionSomewhere">Could there be a backup and a restore option
                    somewhere?</a></li>
                <li><a href="#FasterOverVPN">Could VSS be faster over VPN?</a></li>
                <li><a href="#EditInPlace">When comparing differences (with Diff) between two versions,
                    you should be able to edit in place</a></li>
                <li><a href="#AutomaticallyMergeOfflineEditedFiles">It should automatically merge offline
                    edited files</a></li>
                <li><a href="#AcceptConnectionsInternet"><s>VSS needs to able to accept connections
                    over the Internet</s></a><span style="color: #ff0000"><strong>* Fixed by VSS 2005 *</strong></span></li>
                <li><a href="#UpdateFileDialogs"><s>Update File Dialogs</s></a><span style="color: #ff0000"><strong>*
                    Fixed by VSS 2005 *</strong></span></li>
                <li><a href="#VersionControlVisualStudioNET">VSS should be scalable</a></li>
                <li><a href="#ThirdParty">Links</a></li>
            </ol>
        </div>
        <ol>
            <li>
                <h2>
                    <a name="VSSbackendSQLServer"></a>Could VSS have the backend on SQL Server?</h2>
            <p>
                This would speed up data access.
            </p>
            </li>
            <li>
                <h2>
                    <a name="BackupRestoreOptionSomewhere"></a>Could there be a backup and a restore
                    option somewhere?</h2>
            </li>
            <li>
                <h2>
                    <a name="FasterOverVPN"></a>Could VSS be faster over VPN?</h2>
            <p>
                Why is it so slow at the moment over VPN?
            </p>
            <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                <tr>
                    <td valign="top">
                        <p>
                            <b>Visual SourceSafe 2005</b><br>
                            The speed performance has been enhanced in VSS8, but still considered slow.</p>
                    </td>
                </tr>
            </table>
            </li>
            <li>
                <h2>
                    <a name="EditInPlace"></a>When comparing differences (with Diff) between two versions,
                    you should be able to edit in place</h2>
            </li>
            <li>
                <h2>
                    <a name="AutomaticallyMergeOfflineEditedFiles"></a>It should automatically merge offline
                    edited files</h2>
            <p>
                It should automatically merge offline edited files. Currently when you come back onto
                the network it doesn't merge, insteadit asks "Which file do you want to keep?".
                eg. If you edit one function online and edit another function one offline why not
                just merge them?</p>
            </li>
            <li>
                <h2>
                    <a name="AcceptConnectionsInternet"></a><s>VSS needs to able to accept connections over
                        the Internet</s><span style="color: #ff0000">* Fixed by VSS 2005 *</span></h2>
            <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                <tr>
                    <td valign="top">
                        <p>
                            <b><s>Update: Visual SourceSafe 2005 - Fixed</s></b><br>
                            <s>Web access over HTTP is now supported.</s></p>
                    </td>
                </tr>
            </table>
            </li>
            <li>
                <h2>
                    <a name="UpdateFileDialogs"></a><s>Update File Dialogs</s><span style="color: #ff0000">*
                        Fixed by VSS 2005 *</span></h2>
            <p>
                <s>The file dialogs are very old and badly need an update. Currently even UNC's are
                    time consuming to access.</s>
            </p>
            <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                <tr>
                    <td valign="top">
                        <p>
                            <b><s>Update: Visual SourceSafe 2005 - Fixed</s></b><br>
                            <s>SourceSafe 2005's UI has been updated.</s></p>
                    </td>
                </tr>
            </table>
            </li>
            <li>
                <h2>
                    <a name="VersionControlVisualStudioNET"></a>VSS should be scalable</h2>
                <p>
                    Microsoft Visual SourceSafe (VSS), the version control system for Visual Studio
                    .NET, works just fine on small projects. However, when doing enterprise-level projects
                    where you may have to pass up to 10,000 lines of code and have 10 simultaneous users,
                    SourceSafe can have trouble scaling.
                </p>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <p>
                                Visual Source Safe is targeted towards the needs of individual developers or small
                                developer teams.
                            </p>
                        </td>
                    </tr>
                </table>
                <br>
                <s>Until Microsoft makes a version of SourceSafe that works with SQL Server, we have
                    to rely on alternative, 3rd party tools for source control.</s>
                <p>
                    Alternatives include:</p>
                <ul>
                    <li>Team Foundation Server</li>
                    <li><a href="/ssw/Standards/DeveloperGeneral/NetTools.aspx#SourceGearVault">SourceGear
                        Vault</a></li>
                    <li>PerforcePerforce no good because it has a terrible cryptic</li>
                    <li>StarTeam</li>
                    <li>Source Integrity</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="ThirdParty"></a>Links</h2>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <a href="/ssw/Redirect/Developsensedotcom.htm" target="_blank">A more comprehensive
                                list of Visual SourceSafe Defects - Michael Bolton</a>
                        </td>
                    </tr>
                </table>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            Microsoft has created a new source control system named Team Foundation Server,
                            a part of Visual Studio Team System. This product addresses many of Visual SourceSafe's
                            shortcomings which will make it suitable for larger enterprise teams.
                        </td>
                    </tr>
                </table>
                <table style="float: none; border: 2px solid #999999; margin: 4px; background-color: #f5f5f5">
                    <tr>
                        <td valign="top">
                            <span style="color: #ff0000"><strong>Source safe is dead - all these suggestions have
                                been moved to <a href="TeamFoundationServer.aspx">TFS - The Best Source Control And
                                    bug System</a> </strong></span>
                        </td>
                    </tr>
                </table>
            </li>
        </ol>
        <p>
            <h2>
                Acknowledgements</h2>
            <p>
                <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
            </p>
        </p>
</asp:Content>
