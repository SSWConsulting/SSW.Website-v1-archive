<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master" Title="SSW Microsoft Windows 7 Application Compatability Issues" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
        width="100%">
        <tr>
            <td>
                <b>Windows 7 Deployment </b>
                <br />
                1. <a href="#ChangeLog">Change Log </a>
                <br />
                2. <a href="#IncompatiblePrograms">Compatability Issues</a><br />
                3. <a href="#RelatedDocuments">Related Documents</a></td>
        </tr>
    </table>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please refer to <a href="/ssw/Standards/Rules/RulesToBetterWindows7Deployment.aspx">
        Rules To Better Windows 7 Development</a> for developing Windows 7 Image<br />
        <div class="floatRight" style="width: 20%">
                    <div class="interInfoBoxSide">
                    <h1>Attention: Windows 7 Image Developers</h1>
                        <p>Please update the change log everytime you create a new Windows 7 image
                        </p>
                     </div>
                     </div> 
    <dl class="image">
    <dt>
    <asp:Image ID="Image1" runat="server" 
        ImageUrl="/ssw/Standards/Rules/Images/Win7Developer.jpg" alt="Windows 7 image developer"/>
    </dt>
    <dd>Figure: Windows 7 image developer</dd></dl>
    <h2>
                <a name="ChangeLog"></a>Change Log
            </h2>
            <table class="clsSSWTable" rules="rows" border="1">
                <thead>
                    <tr>
                        <th style="height: 58px">
                            Windows 7 Image </th>
                        <th style="height: 58px">
                            Changes</th>
                        <th style="height: 58px">
                            Request By</th>
                        <th style="height: 58px; width: 31px;">
                            Changed By</th>
                        <th style="height: 58px">
                            Date Added</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            Version<br />
                            7.0.2</td>
                        <td>
                            <ul>
                                <li>Updates from Windows Update</li>
                                                <li>Adobe Flash Player 10 Active X</li>
                                                <li>Adobe Reader 9.1 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\Adobe\Adobe Reader\AdbeRdr910_en_US_Std.exe</li>
                                                <li>Camtasia Studio 6 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\Camtasia\TechsmithCamtasiaStudio6\camtasia.msi</li>
                                                <li>EditPlus 3 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\editplus\EditPlus v3\epp310_en.exe</li>
                                                <li>WinRAR archiver - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\WinRAR\wrar380.exe</li>
                                                <li>Microsoft SQL Server 2008 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS\SetupServer\MSSQLServer2008RTM\en_sql_server_2008_enterprise_x86_x64_ia64_dvd_x14-89207.iso</li>
                                                <li>Microsoft Visual Studio 2008 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS_DotNet\MSVisualStudio2008RTMTeamSuite\en_visual_studio_team_system_2008_team_suite_x86_x64wow_dvd_X14-26461.iso</li>
                                                <li>Microsoft MSDN Library - </li>
                                                <li>Microsoft Visual Studio 2008 SP1 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS_DotNet\MSVisualStudio2008SP1\VS2008SP1ENUX1512962.iso</li>
                                                <li>Microsoft SQL Server 2008 SP1 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS\SetupServer\MSSQLServer2008RTM\SQLServer2008SP1-KB968369-x64-ENU.exe</li>
                                                <li>Microsoft Office 2007 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS\SetupProgram\MSOffice2007RTM\en_office_enterprise_2007_DVD_VL_X12-19574.iso</li>
                                                <li>Microsoft Office Visio 2007 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS\SetupProgram\MSOffice2007RTM\SharePointDesigner.exe </li>
                                                <li>Microsoft SharePoint Designer 2007 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS\SetupProgram\MSOffice2007RTM\SharePoint Designer (Separate Install)\en_office_sharepoint_designer_2007_cd_X12-19197.iso</li>
                                                <li>InstallPad 0.4</li>
                                                <li>JetBrains Resharper 4.5 - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\ReSharper\ReSharperSetup.4.5.1231.7.msi </li>
                                                <li>Microsoft Expression Web - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupMS\SetupProgram\MSExpressionWeb2007\Microsoft Expression Web 2007.iso </li>
                                                <li>Microsoft FxCop 1.35 - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupMS_DotNet\MSFxCop\FxCopInstall1.35.exe </li>
                                                <li>Microsoft Save as PDF or XPS Add-in for 2007 Microsoft Office Programs</li>
                                                <li>Microsoft SilverLight 2.0 - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupMS_DotNet\MSSilverLight\Silverlight.2.0_Developer.exe </li>
                                                <li>Mozilla Firefox 3.10 - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\Mozilla Firefox\Firefox Setup 3.0.10.exe </li>
                                                <li>Mozilla Firebug - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\MozillaFirebug1.3.3\firebug-1.3.3-fx.xpi</li>
                                                <li>Power Commands for Visual Studio 2008 - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupMS_DotNet\PowerCommands For Visual Studio 2008\PowerCommands.msi</li>
                                                <li>Skype 4.0 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\Skype\zzSkypeSetup_ver4.0.exe</li>
                                                <li>Tera Copy 2.0 - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\TeraCopy\teracopy2b4.exe
                                                </li>
                                                <li>Microsoft SQL Server 2008 Report Builder 2.0 - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupMS\SetupProgram\MSReportBuilder2.0\ReportBuilder.msi
                                                </li>
                                                <li>Full Shot 9 - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\Fullshot\Fullshot 9\fshot9513.exe</li>
                                                <li>Microsoft SQL Server 2008 AdventureWorks Databases Refresh 1 Samples - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupMS\SetupServer\AdventureWorksDB\AdventureWorksDB2008.x64.msi</li>
                                                <li>Microsoft Dynamics CRM 4.0 for Microsoft Office Outlook - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupMS\SetupProgram\MSCRM4\Outlook Client (For On-Premise and Hosted Editions)\setupclient.exe</li>
                                                <li>Microsoft Visual Studio 2008 Team Explorer &#8211; ENU - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupMS_DotNet\MSVisualStudio2008RTMTeamSuite\TFC\autorun.exe</li>
                                                <li>mRemote 1.50 - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\mRemote\mRemote_1.50_Setup_EN.exe</li>
                                                <li>Gizmo - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\Gizmo\gizmo-273-setup.exe</li>
                                                <li>Updated the StartHere.bat file of InstallPad application</li>
                                                <li>Beyond Compare Version 2.4.3 - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\BeyondCompare\BeyondCompare_2-4-3.exe</li>
                                                <li>Updated the SSWBatch.bat file</li>
                                                <li>Updated xml files SSWInstallPadList_Additional.xml and SSWInstallPadList_Installed.xml for InstallPad 
                                                    application</li>
                                                <li>Updated the PCSetupChecklistWindowsForWindows7.docx document for new release of Windows 7 
                                                    Image</li>
                                                <li>Created GetInstallPadList.ftp
                                                    C:\ProgramFiles\InstallPad</li>
                                                <li>Created two blank xml files namely SSWInstallpadList_Installed.xml and 
                                                    SSWInstallpad_Addtional.xml under C:\ProgramFiles\InstallPad</li>
                                                <li>Saved the xml files SSWInstallPadList_Installed.xml and SSWInstallPadList_Additional.xml 
                                                    under <a href="ftp://us.ssw.com.au/httpdocs/SSW/Standards/InstallPad">
                                                    ftp://us.ssw.com.au/httpdocs/SSW/Standards/InstallPad</a></li>
                                                <li>Added the VPN connection to the image</li>
                                                <li>Installed HP Laserjet 3390 / 3392 and Xerox Phaser 8400DP network printers </li>
                                                <li>Updated ReadMe documents for Windows 7 Developers and Windows 7 Users under C:\_ReadMeWin7Image</li>
                                                <li>Installed TeamCompanion on Windows 7</li>
                                                <li>Installed TeraCopy on Windows 7 image and updated the standards 'Best3rdPartyTools' to include TeraCopy</li>
                                                <li>Added a registry key for CRM update rollup</li>
                                                <li>Made "Passive Mode" setting as default in Beyond Compare</li>
                                                <li>Made SSW image as startup screen for Windows 7 image </li>
                                                <li>Virtual Clone Drive - 
                                                <br />\\fileserver\SetupFiles\SetupNotMS\SetupProgram\VirtualCloneDrive\SetupVirtualCloneDrive5406.exe</li>
                                                
                                            </ul>
                        </td>
                        <td style="text-align: center">
                            AdamC,<br />
                            GraciaD,<br />
                            TristanK,<br />
                            ZuneV,<br />
                            MarkH<br />
                            <br />
                        </td>
                        <td style="text-align: center; width: 31px;">
                            SyedDilawerM&nbsp;&nbsp;  </td>                       
                            <td>26th August 2009&nbsp;&nbsp;</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td>
                            Version<br />
                            1.0</td>
                        <td>
                            <ul>
                                <li>Updates from Windows Update</li>
                                                <li>Adobe Flash Player 10 Active X</li>
                                                <li>Adobe Reader 9.1 - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\Adobe\Adobe Reader\AdbeRdr910_en_US_Std.exe</li>
                                                <li>Camtasia Studio 6 - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\Camtasia\TechsmithCamtasiaStudio6\camtasia.msi</li>
                                                <li>EditPlus 3 - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\editplus\EditPlus v3\epp310_en.exe</li>
                                                <li>WinRAR archiver - 
                                                <br /> 
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\WinRAR\wrar380.exe</li>
                                                <li>Microsoft SQL Server 2008 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS\SetupServer\MSSQLServer2008RTM\en_sql_server_2008_enterprise_x86_x64_ia64_dvd_x14-89207.iso</li>
                                                <li>Microsoft Visual Studio 2008 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS_DotNet\MSVisualStudio2008RTMTeamSuite\en_visual_studio_team_system_2008_team_suite_x86_x64wow_dvd_X14-26461.iso</li>
                                                <li>Microsoft MSDN Library - </li>
                                                <li>Microsoft Visual Studio 2008 SP1 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS_DotNet\MSVisualStudio2008SP1\VS2008SP1ENUX1512962.iso</li>
                                                <li>Microsoft SQL Server 2008 SP1 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS\SetupServer\MSSQLServer2008RTM\SQLServer2008SP1-KB968369-x64-ENU.exe</li>
                                                <li>Microsoft Office 2007 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS\SetupProgram\MSOffice2007RTM\en_office_enterprise_2007_DVD_VL_X12-19574.is</li>
                                                <li>Microsoft Office Visio 2007 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS\SetupProgram\MSOffice2007RTM\en_office_visio_professional_2007_X12-21696.iso</li>
                                                <li>Microsoft SharePoint Designer 2007 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS\SetupProgram\MSOffice2007RTM\SharePoint Designer (Separate Install)\en_office_sharepoint_designer_2007_cd_X12-19197.iso</li>
                                                <li>InstallPad 0.4</li>
                                                <li>JetBrains Resharper 4.5 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\ReSharper\ReSharperSetup.4.5.1231.7.exe</li>
                                                <li>Microsoft Expression Web - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS\SetupProgram\MSExpressionWeb2007\Microsoft Expression Web 2007.iso</li>
                                                <li>Microsoft FxCop 1.35 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS_DotNet\MSFxCop\FxCopInstall1.35.exe</li>
                                                <li>Microsoft Save as PDF or XPS Add-in for 2007 Microsoft Office Programs</li>
                                                <li>Microsoft SilverLight 2.0 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS_DotNet\MSSilverLight\Silverlight.2.0_Developer.exe</li>
                                                <li>Mozilla Firefox 3.10 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\Mozilla Firefox\Firefox Setup 3.0.10.exe</li>
                                                <li>Mozilla Firebug - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\MozillaFirebug1.3.3\firebug-1.3.3-fx.xpi</li>
                                                <li>Power Commands for Visual Studio 2008 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS_DotNet\PowerCommands For Visual Studio 2008\PowerCommands.msi</li>
                                                <li>Skype 4.0 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\Skype\SkypeSetup_ver4.0.exe</li>
                                                <li>Tera Copy 2.0 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\TeraCopy\teracopy2b4.exe</li>
                                                <li>Microsoft SQL Server 2008 Report Builder 2.0 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS\SetupProgram\MSReportBuilder2.0\ReportBuilder.msi</li>
                                                <li>Full Shot 9 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\Fullshot\Fullshot 9\fshot9513.exe</li>
                                                <li>Microsoft SQL Server 2008 AdventureWorks Databases Refresh 1 Samples - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS\SetupServer\AdventureWorksDB\AdventureWorksDB2008.x64.msi</li>
                                                <li>Microsoft Dynamics CRM 4.0 for Microsoft Office Outlook - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS\SetupProgram\MSCRM4\Outlook Client (For On-Premise and Hosted Editions)\setupclient.exe</li>
                                                <li>Microsoft Visual Studio 2008 Team Explorer &#8211; ENU - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupMS_DotNet\MSVisualStudio2008RTMTeamSuite\TFC\autorun.exe</li>
                                                <li>mRemote 1.50 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\mRemote\mRemote_1.50_Setup_EN.exe</li>
                                                <li>Gizmo - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\Gizmo\gizmo-273-setup.exe</li>
                                                <li>Updated the StartHere.bat file of InstallPad application</li>
                                                <li>Beyond Compare Version 2.4.3 - 
                                                <br />
                                                \\fileserver\SetupFiles\SetupNotMS\SetupProgram\BeyondCompare\BeyondCompare_2-4-3.exe</li>
                                                <li>Updated the SSWBatch.bat file</li>
                                                <li>Updated an xml files SSWInstallPadList_Additional.xml and SSWInstallPadList_Installed.xml for InstallPad 
                                                    application</li>
                                                <li>Modified the PCSetupChecklistWindowsVista.docx document for new release of Windows 7 
                                                    Image</li>
                                                <li>Created GetInstallPadList.ftp
                                                    C:\ProgramFiles\InstallPad</li>
                                                <li>Created two blank xml files namely SSWInstallpadList_Installed.xml and 
                                                    SSWInstallpad_Addtional.xml under C:\ProgramFiles\InstallPad</li>
                                                <li>Saved the xml files SSWInstallPadList_Installed.xml and SSWInstallPadList_Additional.xml 
                                                    under <a href="ftp://us.ssw.com.au/httpdocs/SSW/Standards/InstallPad">
                                                    ftp://us.ssw.com.au/httpdocs/SSW/Standards/InstallPad</a></li>
                                                <li>Added the InstallPad version number to the StartHere.bat file</li>
                                                <li>Added the VPN connection to the image</li>
                                                <li>Installed HP Laserjet 3390 / 3392 and Xerox Phaser 8200DP network printers </li>
                                                <li>Created ReadMe documents for Windows 7 Developers and Windows 7 Users under C:\_ReadMe</li>
                                            </ul>
                        </td>
                        <td style="text-align: center">
                            AdamC</td>
                        <td style="text-align: center; width: 31px;">
                            SyedDilawerM&nbsp;&nbsp;  </td>                       
                            <td>21st June 2009&nbsp;&nbsp;</td>
                    </tr>
                </tbody>
            </table>
            <br />
            <br />
            <h2>
                <a name="IncompatiblePrograms"></a>Compatability Issues</h2>
    <table class="clsSSWTable">
        <thead>
          <tr>
            <th>Program</th>
            <th>Problem</th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Reporting Services</td>
            <td>Reporting Services does not work with UAC turned On</td>
            <td>Solution: When UAC is turned on, run Internet Explorer as Administrator to 
                access Reporting Services.</td>
          </tr>
          <tr>
            <td>SSW TimePRO.Net</td>
            <td><span lang="EN-US">Throws an exception after installation</span></td>
            <td>
                <br />
                <ol>
                <li>Close TimePRO.Net application and</li>
                <li>Run the following command:
            <br />
            <i><b>corflags "C:\Program Files (x86)\SSW Time PRO.NET\SSWTimePRONet.exe" /32BIT+</b></i></li></ol>
            <br />PS: Corflags is stored at &#8220;C:\Program files\Microsoft SDKs\Windows\V6.0A\Bin&#8221;<br />
              </td>
          </tr>
          <tr>
            <td><span lang="EN-US">Silverlight 2.0</span></td>
            <td><span lang="EN-US">Silverlight templates are not listed in VS 2008</span></td>
            <td>
                <p class="MsoNormal">
                    <span lang="EN-US">Install Silverlight Tools<o:p></o:p></span></p>
                <span lang="EN-US">
                
                <span>\\fileserver\SetupFiles\SetupMS_DotNet\MSSilverLight\Silverlight_Tools.exe</span></span></td>
          </tr>
        </tbody>
      </table>
            <h2>
                <a name="RelatedDocuments"></a>Related Documents</h2>
            <p>
                <a href="/ssw/StandardsInternal/ComputerSetup/PCSetupCheckListForWindows7.docx">The PC Setup Standard for Windows 7</a><br />
            </p>
    <h2>
        Acknowledgements</h2>
    <p>
        Syed Mehdi<br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AGT">Andy Taslim</a><br />
    </p>
    </asp:Content>
