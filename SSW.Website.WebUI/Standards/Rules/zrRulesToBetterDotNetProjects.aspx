<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better .NET Projects" %><%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532302E4E45542050726F6A65637473')">
            Let us know</a> what you think.</p>
    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
        width="100%">
        <tr>
            <td>
                <ol>
                    <li><a href="#SolutionStructure">Do you have a consistent .NET Solution Structure?</a></li>
                    <li><a href="#MainForm">Do you name your startup form consistently?</a> </li>
                    <li><a href="#StructuredSolutionFolders">Do you have a structured Solution Folders for
                        your solution items?</a></li>
                    <li><a href="#OptionStrict">Do you always say &quot;Option Strict On&quot;?</a></li>
                    <li><a href="#Imports">Do you keep clean on Imports of Project Property?</a></li>
                    <li><a href="#Webconfig">Do you add the necessary code so you can always sync the web.config
                        file?</a></li>
                    <li><s><a href="#Periods">Do you avoid periods (.) in directory names?</a></s></li>
                    <li><a href="#AssemblyName">Do you name your assemblies consistently (&lt;CompanyName&gt;.&lt;ComponentName&gt;)?</a></li>
                    <li><a href="#DesignerVisual">Do you use the designer for all visual elements?</a></li>
                    <li><a href="#imgref">Do you refer to images the correct way in ASP .NET?</a></li>
                    <li><a href="#VB0">Do you use Microsoft.VisualBasic in your VB.NET projects?</a></li>
                    <li><a href="#VBCompatibility">Do you avoid Microsoft.VisualBasic.Compatibility in your
                        VB.NET projects?</a></li>
                    <li><a href="#Publish">Do you publish your components to Source Safe?</a></li>
                    <li><a href="#ProjectReferencing">Do you reference "most" .dlls by Project?</a></li>
                    <li><a href="#ReferenceAssembly">Do you reference "very calm/stable" .dlls by Assembly?</a></li>
                    <li><a href="#AssemblyVersion">Do you keep your Assembly Version Consistent?</a></li>
                    <li><a href="#CMAB">Do you use configuration management application block?</a></li>
                    <li><a href="#resetDefault">Do you have a resetdefault() function in your configuration?
                        management application block?</a></li>
                    <li><a href="#HardCode">Do you hard code your ConnectionString?</a></li>
                    <li><a href="#Reconcile">Do you make sure that the database structure is automatically
                        handled automatically via 3 buttons "Create", Upgrade" and "Reconcile"?</a></li>
                    <li><a href="#XMLVersion">Do you version your .xml files?</a></li>
                    <li><a href="#XMLTreeView">Do you use TreeView control instead of XML control?</a></li>
                    <li><a href="#Custom">Are your settings and the customizable settings, in different
                        files?</a></li>
                    <li><a href="#WCF">Do you secure your web services using WCF over WSE3 and SSL?</a></li>
                    <li><a href="#Adapter">Do you let the adapter handle the connection for you?</a></li>
                    <li><a href="#TryBlock">Do you Open your Connection in a Try Block?</a></li>
                    <li><a href="#CatchBlock">Do you have meaningless Catch blocks in your applications?</a></li>
                    <li><a href="#Class">Do you put one class per file?</a></li>
                    <li><a href="#DataAdapter">Do you use a DataAdapter insert rows into your database?</a></li>
                    <li><a href="#img">Do you put all images in images folder?</a></li>
                    <li><a href="#OnlyIMG">Do you keep \images folder image only?</a></li>
                    <li><a href="#Setup">Do you put all your setup file in your setup folder?</a></li>
                    <li><a href="#Deploy">Do you deploy your applications correctly?</a></li>
                    <li><a href="#Release">Do you distribute a product in Release mode?</a></li>
                    <li><a href="#MeaningfulNames">Do you use more meaningful names than Hungarian short
                        form?</a></li>
                    <li><a href="#RenameSourceSafeFiles">Do you know how to rename files that under SourceSafe
                        control?</a></li>
                    <li><a href="#ProfileYourCodeForPerformance">Do you profile your code when optimising
                        performance?</a></li>
                    <li><a href="#CAFxCop">Do you Add SSW Code Auditor, NUnit and Microsoft FxCop project
                        files to your Solution?</a></li>
                    <li><a href="#NotVSS">Do you know what files not to put into VSS?</a></li>
                    <li><a href="#UseResource">Do you use resource file for storing your static script?</a></li>
                    <li><a href="#ChangesOnDateTime">Do you know the changes on DateTime in .NET 2.0 and
                        .NET 1.0/1.1</a></li>
                    <li><a href="#ConnStringNET2">Do you know how to use Connection String in .NET 2.0?</a></li>
                    <li><a href="#DeplicateConn">Do you avoid using duplicate connection string in web.config?</a></li>
                    <li><a href="#SSPIcon">Do you use Windows Integrated Authentication connection string
                        in web.config?</a></li>
                    <li><a href="#HighLightedString">Do you highlight strings in your code editor?</a></li>
                    <li><a href="#PowerShell">Do you use PowerShell to run batch files in Visual Studio?</a></li>
                    <li><a href="#Instructions">Do you make an instruction document at the beginning of a web project and improve it gradually?</a></li>
                    <li><a href="#Ntier">Do you always prefix SQL stored procedure names with the owner
                        in ADO.NET code?</a></li>
                    <li><a href="#AtQuoting">Do you always make file paths @-quoted?</a></li>
                    <li><a href="#OptionExplicit">Do you always use Option Explicit?</a></li>
                    <li><a href="#AsyncCallBack">Do you use the Asynchronous and CallBack method when invoking
                        web methods?</a></li>
                    <li><a href="#TraceFail">Do you use Trace.Fail or Set AssertUIEnabled="true" in your web.config?</a></li>
                    <li><a href="#RegenerateStandard">Do you make your projects regenerated easily?</a></li>
                </ol>
            </td>
        </tr>
    </table>
    <ol>
        <li>
            <h2>
                <a name="SolutionStructure"></a>Do you have a consistent .NET Solution Structure?</h2>
            <p>
                When developing a n-tiered software solution, we follow a standard solution structure.
                We have incorporated unit testing components, which is an integral part of the Extreme
                Programming development methodology, into our solution structure:</p>
            <table class="clsSSWTable">
                <tr>
                    <th>
                        Project Type
                    </th>
                    <th>
                        Project Name
                    </th>
                    <th>
                    </th>
                    <th>
                        Note
                    </th>
                </tr>
                <tr valign="top">
                    <td>
                        Application
                    </td>
                    <td>
                        Northwind
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table25">
                            <tr>
                                <td width="100">
                                    <b>Namespace:</b>
                                </td>
                                <td>
                                    SSW.Northwind
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\Northwind\
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Output:</b>
                                </td>
                                <td>
                                    Northwind.exe
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr valign="top">
                    <td>
                        Class Library
                    </td>
                    <td>
                        WindowsUI
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table9">
                            <tr>
                                <td width="100">
                                    <b>Namespace:</b>
                                </td>
                                <td>
                                    SSW.Northwind.WindowsUI
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\WindowsUI\
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\WindowsUI\Components
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\WindowsUI\UnitTests
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Output:</b>
                                </td>
                                <td>
                                    WindowsUI.dll
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        We put all the forms in a separate project so we can run Unit Tests on the UI using
                        reflection.
                    </td>
                </tr>
                <tr valign="top">
                    <td>
                        Application
                    </td>
                    <td>
                        ConsoleUI
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table22">
                            <tr>
                                <td width="100">
                                    <b>Namespace:</b>
                                </td>
                                <td>
                                    SSW.Northwind.ConsoleUI
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\ConsoleUI\
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\ConsoleUI\Components
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\ConsoleUI\UnitTests
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Output:</b>
                                </td>
                                <td>
                                    NorthwindConsole.exe
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr valign="top">
                    <td height="90">
                        Application
                    </td>
                    <td height="90">
                        WebUI
                    </td>
                    <td height="90">
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table9">
                            <tr>
                                <td width="100">
                                    <b>Namespace:</b>
                                </td>
                                <td>
                                    SSW.Northwind.WebUI
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\WebUI\
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\WebUI\Components
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\WebUI\UnitTests
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Output:</b>
                                </td>
                                <td>
                                    SSW.Northwind.WebUI.dll
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td height="90">
                    </td>
                </tr>
                <tr valign="top">
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table10">
                            <tr>
                                <td width="100">
                                    <b>Namespace:</b>
                                </td>
                                <td>
                                    SSW.Northwind.WebUI.Reports
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\WebUI\Reports\
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        Manually-based reports - e.g. using the DataGrid
                    </td>
                </tr>
                <tr valign="top">
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table11">
                            <tr>
                                <td width="100">
                                    <b>Namespace:</b>
                                </td>
                                <td>
                                    SSW.Northwind.WebUI.Components
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\WebUI\Components\
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        Part of WebUI. For .css and .ascx user controls
                    </td>
                </tr>
                <tr>
                    <td>
                        Windows Service
                    </td>
                    <td>
                        WindowsService
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table20">
                            <tr>
                                <td width="100">
                                    <b>Namespace:</b>
                                </td>
                                <td>
                                    SSW.Northwind.WindowsService
                                </td>
                            </tr>
                            <tr>
                                <td width="100">
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\WindowsService\Components
                                </td>
                            </tr>
                            <tr>
                                <td width="100">
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\WindowsService\UnitTests
                                </td>
                            </tr>
                            <tr>
                                <td width="100">
                                    <b>Output:</b>
                                </td>
                                <td>
                                    SSW.Northwind.WindowsService.dll
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr valign="top">
                    <td>
                        RS Reports
                    </td>
                    <td>
                        Reports
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table21">
                            <tr>
                                <td width="100">
                                    <b>Namespace:</b>
                                </td>
                                <td>
                                    N/A
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\Reports
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Output:</b>
                                </td>
                                <td>
                                    N/A
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        Reporting Services
                    </td>
                </tr>
                <tr valign="top">
                    <td>
                        Class Library
                    </td>
                    <td>
                        IServices
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table1">
                            <tr>
                                <td>
                                    <b>Namespace:</b>
                                </td>
                                <td>
                                    SSW.Northwind.IServices
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\IServices
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\IServices\UnitTests
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Output:</b>
                                </td>
                                <td>
                                    SSW.Northwind.IServices.dll
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        WCF Services Interfaces
                    </td>
                </tr>
                <tr valign="top">
                    <td>
                        Class Library
                    </td>
                    <td>
                        Services
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table2">
                            <tr>
                                <td>
                                    <b>Namespace:</b>
                                </td>
                                <td>
                                    SSW.Northwind.Services
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\Services
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\Services\UnitTests
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Output:</b>
                                </td>
                                <td>
                                    SSW.Northwind.Services.dll
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        WCF Services Implementations
                    </td>
                </tr>
                <tr>
                    <td>
                        Class Library
                    </td>
                    <td>
                        Business
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table20">
                            <tr>
                                <td width="100">
                                    <b>Namespace:</b>
                                </td>
                                <td>
                                    SSW.Northwind.Business
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\Business\
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\Business\Components
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\Business\UnitTests
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Output:</b>
                                </td>
                                <td>
                                    SSW.Northwind.Business.dll
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        This can be code-generated
                    </td>
                </tr>
                <tr valign="top">
                    <td>
                        Class Library
                    </td>
                    <td>
                        Domain
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table3">
                            <tr>
                                <td>
                                    <b>Namespace:</b>
                                </td>
                                <td>
                                    SSW.Northwind.Domain
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\Domain
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\Domain\UnitTests
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Output:</b>
                                </td>
                                <td>
                                    SSW.Northwind.Domain.dll
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        LINQ DBML - this can be generated using SQL Metal
                    </td>
                </tr>
                <tr valign="top">
                    <td>
                        Class Library
                    </td>
                    <td>
                        DataSets
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table19">
                            <tr>
                                <td width="100">
                                    <b>Namespace:</b>
                                </td>
                                <td>
                                    SSW.Northwind.DataSets
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\DataSets\
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\DataSets\UnitTests
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Output:</b>
                                </td>
                                <td>
                                    SSW.Northwind.DataSets.dll
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        Strongly typed datasets - this can be code-generated
                    </td>
                </tr>
                <tr valign="top">
                    <td>
                        Class Library
                    </td>
                    <td>
                        DataAccess
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table13">
                            <tr>
                                <td width="100">
                                    <b>Namespace:</b>
                                </td>
                                <td>
                                    SSW.Northwind.DataAccess
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\DataAccess\
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\DataAccess\Components
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\DataAccess\UnitTests
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Output:</b>
                                </td>
                                <td>
                                    SSW.Northwind.DataAccess.dll
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        This project should contain all the code and SQL statements used to access data from
                        your backend. This project can be code-generated
                    </td>
                </tr>
                <tr valign="top">
                    <td>
                        Class Library
                    </td>
                    <td>
                        UnitTests
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table14">
                            <tr>
                                <td width="100">
                                    <b>Namespace:</b>
                                </td>
                                <td>
                                    SSW.Northwind.UnitTests
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\UnitTests\
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Output:</b>
                                </td>
                                <td>
                                    SSW.Northwind.UnitTests.dll
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        Only need this project if you are not using reusable components and then you do
                        not need UnitTests folders above
                    </td>
                </tr>
                <tr valign="top">
                    <td>
                        Wise Setup
                    </td>
                    <td>
                        Northwind
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table15">
                            <tr>
                                <td width="100">
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Northwind\Setup\
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Output:</b>
                                </td>
                                <td>
                                    SSWNorthwind_v1-11.exe
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        Make an EXE in Wise intead of an MSI because it allows the application to be upgraded
                    </td>
                </tr>
            </table>
            <p>
                We have included the unit tests with the project the test is designed for together
                into one assembly for several reasons:</p>
            <ul>
                <li>It provides a logical association between the test and the class it is designed
                    to test, promoting consistency between the two.</li>
                <li>Ease of management - we don&#39;t need to match test assembly with the actual assembly
                    by file naming standards, the association is inherent.</li>
                <li>There are less projects to compile in a solution.</li>
            </ul>
            <p>
                For common library project, project name should include the company prefix and solution
                name, this is so other internal solution can include the common library&#39;s project.
                This will help debugging and development processes.</p>
            <table class="clsSSWTable">
                <tr>
                    <th width="100">
                        Project Type
                    </th>
                    <th width="100">
                        Project Name
                    </th>
                    <th width="380">
                    </th>
                    <th width="180">
                        Note
                    </th>
                </tr>
                <tr valign="top">
                    <td>
                        Class Library
                    </td>
                    <td>
                        SSWCommon Business
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table18">
                            <tr>
                                <td width="100">
                                    <b>Namespace:</b>
                                </td>
                                <td>
                                    SSW.Common.Business
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    ..\SSW\Common\Business\
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Output:</b>
                                </td>
                                <td>
                                    SSW.Common.Business.dll
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        No space in the Project Name
                    </td>
                </tr>
            </table>
            <p>
                For project documents, we should also add them into solution for later reference,
                and different document types will be put in different folder, e.g. Artworks' files
                will be in SSW\Documents\ArtWorks\</p>
            <table class="clsSSWTable">
                <tr>
                    <th width="100">
                        Project Type
                    </th>
                    <th width="100">
                        Project Name
                    </th>
                    <th width="380">
                    </th>
                    <th width="180">
                        Note
                    </th>
                </tr>
                <tr valign="top">
                    <td>
                        Documents
                    </td>
                    <td>
                        Documents
                    </td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                            width="100%" id="table18">
                            <tr>
                                <td width="100">
                                    <b>Folder:</b>
                                </td>
                                <td>
                                    SSW\Documents\
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        This is outside the solution trunk
                    </td>
                </tr>
            </table><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/SolutionStructure.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/SolutionStructure.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="MainForm"></a>Do you name your startup form consistently?</h2>
            <p>
                In every Windows application project. We need to have a main form for a better structure
                and design.</p>
            <dl class="badImage">
                <dt>
                    <img src="Images/BadMainForm.gif" alt="Bad Project without Main Form" /></dt>
                <dd>
                    Bad example - The entry form is not immediately recognizable because of a non standard
                    name</dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img src="Images/GoodMainForm.gif" alt="Good with Main Form" /></dt>
                <dd>
                    Good example - The entry form follows the naming convention rule</dd>
            </dl>
            <table class="clsSSWProductTable" summary="Code Auditor">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Default.aspx#VBMainForm">SSW Code
                            Auditor</a> to check for this rule.<p>
                        Note: In Code Auditor we check for Form named: Startup, MainService, MainForm and
                        WizardPage.
                    </td>
                </tr>
            </table><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/NameStartupFormConsistently.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/NameStartupFormConsistently.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="StructuredSolutionFolders"></a>Do you have a structured Solution Folders
                for your solution items?</h2>
            <p>
                All the DLL references and files needed to create a setup.exe should be included in
                your solution. However, just including them as solution items isnt enough, they
                will look very disordered (especially when you have a lot of solution items). And
                from the screenshot below, you might be wondering what the _Instructions.txt is
                used for...</p>
            <dl class="badImage">
                <dt>
                    <img src="Images/WithoutReferencesAndSetupFolders.gif" alt="unstructured solution folder" /></dt>
                <dd>
                    Bad example - An unstructured solution folder</dd>
            </dl>
            <p>
                An ideal way is to create "sub-solution folders" for the solution items, the common
                ones are "References" and "Setup". This feature is only available in Visual Studio
                2005. This will make your solution items look neat and in order. Look at the screenshot
                below, now it makes sense, we know that the _Instructions.txt contains the instructions
                of what to do when creating a setup.exe.
            </p>
            <dl class="goodImage">
                <dt>
                    <img src="Images/WithReferencesAndSetupFolders.gif" alt="A well structured solution folder has 2 folders - &quot;References&quot; and &quot;Setup&quot;" /></dt>
                <dd>
                    Good example - A well structured solution folder has 2 folders - "References" and
                    "Setup"</dd>
            </dl>
            <table class="clsSSWProductTable" summary="Code Auditor">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Default.aspx">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/SolutionFolders.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/SolutionFolders.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="OptionStrict"></a>Do you always say &quot;Option Strict On&quot;?</h2>
            <p>
                Fixing the Option Strict problem One of the most annoying aspects of the Visual
                Basic development environment relates to Microsofts decision to allow late binding.
                By turning Option Strict Off by default, many type-casting errors are not caught
                until runtime. You can make VB work the same as other MS languages (which always
                do strict type-checking at design time) by modifying these templates.
            </p>
            <p>
                So, always set Option Strict On right from the beginning of the development.
            </p>
            <p>
                Before you do this, you should first back up the entire VBWizards directory. If you
                make a mistake, then the templates will not load in the VS environment. You need
                to be able to restore the default templates if your updates cause problems.
            </p>
            <p>
                To configure each template to default Option Strict to On rather than Off, load
                each .vbproj template with VB source code into an editor like Notepad and then change
                the XML that defines the template. For example, to do this for the Windows Application
                template, load the file: Windows Application\Templates\1033\WindowsApplication.vbproj
            </p>
            <p>
                under the VBWizards directory into Notepad and find the settings Element. You should
                see something like this:
            </p>
            <p>
                &lt;VisualStudioProject&gt;
            </p>
            <p>
                &lt;VisualBasic&gt;
            </p>
            <p>
                &lt;Build&gt;
            </p>
            <p>
                &lt;Config . . . .
            </p>
            <p>
                Now, add the following lines under OutputType: OptionStrict = &quot;On&quot; OptionExplicit
                = &quot;On&quot;
            </p>
            <p>
                Or you go to Project property page as you can see the snapshot below and change
                to Option Strict = &quot;On&quot;, OptionExplicit = &quot;On&quot;.
            </p>
            <dl class="goodImage">
                <dt>
                    <img src="Images/OptionStrictOn.gif" alt="Option Strict On" width="398" height="241" />
                </dt>
            </dl>
            <p>
                Technically, you do not have to add the Option Explicit directive, because this
                is the default for VB; but I like to do it for consistency. Next, you must save
                the file and close Notepad. Now, if you load a new Windows Application project in
                the VS environment and examine Project Properties, you will see that Option Strict
                has been turned on by default.
            </p>
            <p>
                In order for this setting to take effect for all project types, you must update
                each of the corresponding .vbproj templates. After making the changes on your system,
                youll need to deploy the new templates to each of your developers' machines in order
                for their new projects to derive from the updated templates.
            </p>
            <p>
                However, sometimes we don't do this because of too much work. In some scenarios,
                such as Wrappers around the COM code, and Outlook stuff with object model, there
                is going to be lots of work to fix all the type-checking errors. Actually it is
                necessary to use Object type as parameters or variables when you deal with COM components.
            </p>
            <p>
                <a href="/ssw/Redirect/ZnetDotNetStandards.htm" target="_blank">.NET Standards in ZDNet</a><img
                    alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif"
                    width="17" height="11" />
            </p>
            <p>
                &nbsp;</p>
         <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/OptionStrictOn.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/OptionStrictOn.aspx</a></font>
        </li>
        <li>
            <h2 align="left">
                <a name="Imports"></a>Do you keep clean on Imports of Project Property?</h2>
            <p>
                When programming in a Dot Net environment it is a good practice to remove the default
                imports that aren&#39;t used frequently in your code.
                <br />
                <br />
                This is because IntelliSense lists will be harder to use and navigate with too many
                imports. For example if in VB.NET, Microsoft.VisualBasic would be a good item to
                have in the imports list, because it will be used in most areas of your application.</p>
            <p>
                To remove all the default imports, load Project Property page and select Common
                properties - Imports.
            </p>
            <dl class="goodImage">
                <dt>
                    <img src="Images/ImportsVB.gif" alt="Imports VB" border="1" width="600" height="230" />
                </dt>
            </dl>
            <b>Using Aliases with the Imports Statement :</b><br />
            <br />
            The Import statement makes it easier to access methods of classes by eliminating
            the need to explicitly type the fully qualified reference names. Aliases let
            you assign a friendlier name to just one part of a namespace.
            <br />
            <br />
            For example, the carriage return-line feed sequence that causes a single piece of
            text to be displayed on multiple lines is part of the ControlChars class in the
            Microsoft.VisualBasic namespace. To use this constant in a program without an alias,
            you would need to type the following code:
            <br />
            <br />
            <dl class="goodCode">
                <dt>
                    <pre>MsgBox(&quot;Some text&quot; &amp; Microsoft.VisualBasic.ControlChars.crlf _ &amp;
                            &quot;Some more text&quot;)</pre>
                </dt>
            </dl>
            Imports statements must always be the first lines immediately following any Option
            statements in a module. The following code fragment shows how to import and assign
            an alias to the Microsoft.VisualBasic.ControlChars namespace:
            <br />
            <br />
            <dl class="goodCode">
                <dt>
                    <pre>Imports CtrlChrs=Microsoft.VisualBasic.ControlChars</pre>
                </dt>
            </dl>
            Future references to this namespace can be considerably shorter:
            <br />
            <br />
            <dl class="goodCode">
                <dt>
                    <pre>MsgBox(&quot;Some text&quot; &amp; CtrlChrs.crlf &amp; &quot;Some more text&quot;)</pre>
                </dt>
            </dl>
            If an Imports statement does not include an alias name, elements defined within
            the imported namespace can be used in the module without qualification. If the alias
            name is specified, it must be used as a qualifier for names contained within that
            namespace.<br />
            <b>Figure: Using aliases with the Imports Statement</b> <br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ImportsOfProjectProperty.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ImportsOfProjectProperty.aspx</a></font>
            </li>
        <li>
            <h2>
                <a name="Webconfig"></a>Do you add the necessary code so you can always sync the
                web.config file?</h2>
            <p>
                The Web.config file should be your main source where you store your application settings.
                These change, depending on which system you are working on, e.g. your local machine
                or the website. That&#39;s why you have to keep two versions of the Web.config file,
                one for your local machine and one for the website.
                <br />
                That&#39;s annoying, not really efficient and often the cause of problems.
            </p>
            <p>
                In the following extract of a sample Web.config file you can see the problem. The
                local machine &quot;HIPPO&quot; has, of course, another WebServiceURL than the Webserver
                &quot;SEAL&quot;. So you have to keep two versions of the Web.config file, one when
                working on &quot;HIPPO&quot; and one when working on &quot;SEAL&quot;.
            </p>
            <dl class="goodCode">
                <dt>
                    <pre>&lt;add key=&quot;SEAL_WebServiceURL&quot; value=&quot;http://host.something.com:80/SomeDirectory/Filename.asmx&quot;/&gt;
<br />
&lt;add key=&quot;HIPPO_WebServiceURL&quot;value=&quot;http://name:80/SomeDirectory/Filename.asmx&quot;/&gt;</pre>
                </dt>
            </dl>
            <b>Figure: Sample Web.config file</b>
            <p>
                There is a better solution:
            </p>
            <dl class="goodCode">
                <dt>
                    <pre>Public Shared Function GetWebConfigString(ByVal StringName As String) As String
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;Dim strReturn As String = &quot;&quot;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;Dim strComputerName As String = System.Net.Dns.GetHostName
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;Try
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;strReturn = ConfigurationSettings.AppSettings( strComputerName.ToUpper + &quot;_&quot;+ StringName)
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;Catch
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;strReturn = ConfigurationSettings.AppSettings(StringName)
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;End Try
<br />
    Return strReturn
<br />
End Function</pre>
                </dt>
            </dl>
            <b>Figure: Sample Get WebConfigString Class</b>
            <p>
                This class simply adds the name of the Computer on which it is running on to the
                WebConfigString. In the former example, this would be &quot;HIPPO_&quot; or &quot;SEAL_&quot;.</p>
            <p>
                Instead of using the WebConfigString directly you can now transform it using this
                function. With the help of this code, you always get the right value for the WebConfigString,
                no matter on which machine the application runs and you don&#39;t have to care about
                synchronizing the Web.config file any more.</p>
            <p>
                <br />
            </p>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/SyncWebConfigFile.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/SyncWebConfigFile.aspx</a></font>
        </li>
        <li><s>
            <h2>
                <a name="Periods"></a>Do you avoid periods (.) in directory names?</h2>
            <p>
                We've elected to not allow periods in directory name, primarily because it creates
                problems with Windows' auto-complete intellisense.</p>
            <p>
                <table class="clsSSWTable" width="100%">
                    <tr>
                        <td align="left">
                            C:\Bad.Example.With.Periods\
                        </td>
                    </tr>
                </table>
                <b>Figure: Bad example of directory name with periods (.)</b></p>
            <p>
                <table class="clsSSWTable" width="100%">
                    <tr>
                        <td align="left">
                            C:\Good Example Without Periods\
                        </td>
                    </tr>
                </table>
                <b>Figure: Good example of directory name without periods (.)</b></p>
            <table class="clsSSWProductTable" id="table24" cellspacing="2" cellpadding="2" summary="Code Auditor"
                width="100%">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Default.aspx">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table>
        </s></li>
        <li>
            <h2>
                <a name="AssemblyName"></a>Do you name your assemblies consistently (&lt;CompanyName&gt;.&lt;ComponentName&gt;)?</h2>
            <p>
                Assembly names should reflect the the functionality that it provides. For example,</p>
            <dl class="goodCode">
                <dt>
                    <pre>System.IO</pre>
                </dt>
            </dl>
            <p>
                contains all the classes that deal with inputs and outputs. As a general rule of
                thumb your assemblies should be named as follows:
            </p>
            <p>
                &lt;CompanyName&gt;.&lt;ComponentName&gt; (e.g. SSW.Framework)
            </p>
            <p>
                This allows a developer to know who developed the assembly and give the developer
                a general idea of what the assembly can be used for.
            </p>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/AssemblyName.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/AssemblyName.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="DesignerVisual"></a>Do you use the designer for all visual elements?</h2>
            <p>
                The designer should be used for all GUI design. Controls will be dragged and dropped
                onto the form and all properties should be set in the designer, e.g.</p>
            <ul>
                <li>Labels, TextBoxes and other visual elements</li>
                <li>ErrorProviders</li>
                <li>DataSets (to allow data binding in the designer)</li>
            </ul>
            <p>
                Things that do not belong in the designer:</p>
            <ul>
                <li>Connections</li>
                <li>Commands</li>
                <li>DataAdapters</li>
            </ul>
            <p>
                However, and <b>DataAdapter</b> objects should not be dragged onto forms, as they
                belong in the business tier. Strongly typed <b>DataSet</b> objects should be in the
                designer as they are simply passed to the business layer. Avoid writing code for
                properties that can be set in the designer.</p>
            <dl class="badImage">
                <dt>
                    <img src="Images/BadDesigner.gif" alt="" width="589" height="420" />
                </dt>
                <dd>
                    Bad example - Connection and Command objects in the Designer</dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img src="Images/GoodDesigner.gif" alt="" width="446" height="327" />
                </dt>
                <dd>
                    Good example - Only visual elements in the designer</dd>
            </dl><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/DesignerForAllVisualElements.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/DesignerForAllVisualElements.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="imgref"></a>Do you refer to images the correct way in ASP .NET?</h2>
            <p>
                There are many ways to reference images in ASP.NET. There are two different situations
                commonly encountered by developers when working with images:</p>
            <ul>
                <li>Scenario #1: Images that are part of the content of a specific page eg. a picture
                    used only on one page </li>
                <li>Scenario #2:Images that are shared across on user controls which are shared across
                    different pages in a site eg. a shared logo used across the site (commonly in user
                    controls, or master pages) </li>
            </ul>
            <p>
                Each of these situations requires a different referencing method.</p>
            <p>
                <b>Option #1:Absolute Paths (Root-Relative Paths)</b><br />
                Often developers reference all images by using an absolute path (prefixing the path
                with a slash, which refers to the root of the site), as shown below.</p>
            <dl class="badCode">
                <dt>
                    <pre>
                        &lt;img src=&quot;/Images/spacer.gif&quot; height=&quot;1&quot; width=&quot;1&quot;&gt;</pre>
                </dt>
                <dd>
                    Bad example - Referencing images with absolute paths</dd></dl>
            <p>
                This has the advantage that &lt;img&gt; tags can easily be copied between pages,
                however it should not be used in either situation, because it requires that the website
                have its own site IIS and be placed in the root (not just an application), or that
                the entire site be in a subfolder on the production web server. For example, the
                following combinations of URLs are possible with this approach:</p>
            <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                class="clsSSWTable" width="100%">
                <tr>
                    <th width="250">
                        Staging Server URL
                    </th>
                    <th width="250">
                        Production Server URL
                    </th>
                </tr>
                <tr>
                    <td width="250">
                        http://bee:81/
                    </td>
                    <td width="250">
                        http://www.ssw.com.au/
                    </td>
                </tr>
                <tr>
                    <td width="250">
                        http://bee/ssw/
                    </td>
                    <td width="250">
                        http://www.ssw.com.au/ssw/
                    </td>
                </tr>
            </table>
            <p>
                As shown above, this approach makes the URLs on the staging server hard to remember,
                or increases the length of URLs on the production web server.</p>
            <p>
                Verdict for Scenario #1:
                <img src=" Images/fail.gif" height="28" width="26"></p>
            <p>
                Verdict for Scenario #2:
                <img src=" Images/fail.gif" height="28" width="26"></p>
            <p>
                <b>Option #2:Relative Paths</b><br />
                Images that are part of the content of a page should be referenced using relative
                paths, e.g.</p>
            <dl class="goodCode">
                <dt>
                    <pre>
                        &lt;img src=&quot;../Images/spacer.gif&quot; height=&quot;1&quot; width=&quot;1&quot;&gt;</pre>
                </dt>
                <dd>
                    Good example - Referencing images with absolute paths.</dd></dl>
            <p>
                However, this approach is not possible with images on user controls, because the
                relative paths will map to the wrong location if the user control is in a different
                folder to the page.</p>
            <p>
                Verdict for Scenario #1:
                <img src=" Images/pass.gif" height="26" width="27"></p>
            <p>
                Verdict for Scenario #2:
                <img src=" Images/fail.gif" height="28" width="26"></p>
            <p>
                <b>Option #3:Application-Relative Paths</b><br />
                In order to simplify URLs, ASP.NET introduced a new feature, application relative
                paths. By placing a tilde (~) in front of a path, a URL can refer to the root of
                a site, not just the root of the web server. However, this only works on Server
                Controls (controls with a runat=&quot;server&quot; attribute).</p>
            <p>
                To use this feature, you need either use ASP.NET Server controls or HTML Server
                controls, as shown below.</p>
            <dl class="goodCode">
                <dt>
                    <pre>
                        &lt;asp:Image ID=&quot;spacerImage&quot; ImageUrl=&quot;~/Images/spacer.gif&quot;
                        Runat=&quot;server&quot; /&gt;
<br />
                        &lt;img id=&quot;spacerImage&quot; src=&quot;~/Images/spacer.gif&quot; runat=&quot;server&quot;&gt;</pre>
                </dt>
                <dd>
                    Good example - Application-relative paths with an ASP.NET Server control</dd></dl>
            Using an HTML Server control creates less overhead than an ASP.NET Server control,
            but the control does not dynamically adapt its rendering to the user's browser,
            or provide such a rich set of server-side features.</p>
            <p>
                Verdict for Scenario #1:
                <img src=" Images/fail.gif" height="28" width="26"></p>
            <p>
                Verdict for Scenario #2:
                <img src=" Images/pass.gif" height="26" width="27"></p>
            <p>
                Note:A variation on this approach involves calling the Page.ResolveUrl method with
                inline code to place the correct path in a non-server tag.</p>
            <dl class="badCode">
                <dt>
                    <pre>
                        &lt;img src='&lt;%# Page.ResolveUrl(&quot;~/Images/spacer.gif&quot;) %&gt;'&gt;
                    </pre>
                </dt>
                <dd>
                    Bad example - Page.ResolveUrl method with a non-server tag</dd></dl>
            <p>
                This approach is not recommended, because the data binding will create overhead
                and affect caching of the page. The inline code is also ugly and does not get compiled,
                making it easy to accidentally introduce syntax errors.</p>
            <p>
                <table class="clsSSWProductTable" id="table24" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    width="100%">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/CodeAuditor/Default.aspx">SSW Code Auditor</a>
                            to check for this rule.
                        </td>
                    </tr>
                </table>
                <br />
         <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ReferToImagesCorrectlyInASPDotNET.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ReferToImagesCorrectlyInASPDotNET.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="VB0"></a>Do you use Microsoft.VisualBasic.dll for Visual Basic.NET projects?</h2>
            <br />
            The Microsoft.VisualBasic library is provided to ease the implementation of the
            VB.NET language itself. For VB.NET, it provides some methods familiar to the VB
            developers and can be seen as a helper library. It is a core part of the .NET redistribution
            and maps common VB syntax to framework equivalents, without it some of the code
            may seem foreign to VB programmers.
            <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse"
                width="29%" id="table23" class="clsSSWTable">
                <tr>
                    <th>
                        Microsoft.VisualBasic
                    </th>
                    <th>
                        .NET Framework
                    </th>
                </tr>
                <tr>
                    <td>
                        CInt, CStr
                    </td>
                    <td>
                        Convert.ToInt(...), ToString()
                    </td>
                </tr>
                <tr>
                    <td>
                        vbCrLf
                    </td>
                    <td>
                        Environment.NewLine, or &quot;\r\n&quot;
                    </td>
                </tr>
                <tr>
                    <td>
                        MsgBox
                    </td>
                    <td>
                        MessageBox.Show(...)
                    </td>
                </tr>
            </table>
            <br />
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/UseMSVBDllForVBNETProjects.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/UseMSVBDllForVBNETProjects.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="VBCompatibility"></a>Do you avoid Microsoft.VisualBasic.Compatibility.dll
                for Visual Basic.NET projects?</h2>
        
        <p>
            This is where you should focus your efforts on eliminating whatever VB6 baggage your
            programs or developer habits may carry forward into VB.NET. There are better framework
            options for performing the same functions provided by the compatibility library
            You should heed this warning from the VS.NET help file: Caution: It is not recommended
            that you use the VisualBasic.Compatibility namespace for new development in Visual
            Basic .NET. This namespace may not be supported in future versions of Visual Basic.
            Use equivalent functions or objects from other .NET namespaces instead.? ad.?
        </p>
        <p>
            Avoid:</p>
        <ul>
            <li>InputBox</li>
            <li>ControlArray</li>
            <li>ADO support in Microsoft.VisualBasic.Compatibility.Data</li>
            <li>Environment functions</li>
            <li>Font conversions</li>
        </ul>
        &nbsp;<br/>
        <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/AvoidMSVBCompatibilityDllForVBNETProjects.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/AvoidMSVBCompatibilityDllForVBNETProjects.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="Publish"></a>Do you publish your components to Source Safe?</h2>
            <p>
                Incrementally as we do more and more .NET projects, we discover that we are re-doing
                a lot of things we&#39;ve done in other projects. How do I get a value from the
                config file? How do I write it back? How do I handle all my uncaught exceptions
                globally and what do I do with them?<br />
                <br />
                Corresponding with Microsoft&#39;s release of their application blocks, we&#39;ve
                also started to build components and share them across projects.<br />
                <br />
                <!--
We considered various ways of sharing a component across different projects, eventually there were three considerations:<br />
<br />
<ol>
<li>Share source code - include the entire project in the solution.</li>
<li>Share binary via network share</li>
<li>Share binary via Source Safe.</li>
</ol>
<br />
We've currently settled with sharing binary over source safe, and the arguments can be seen here later.<br />
<br />-->
                Sharing a binary file with SourceSafe isn&#39;t a breeze to do, and here are the
                steps you need to take. It can be a bit daunting at first.
                <br />
                <br />
                As the component developer, there are four steps:<br />
                <br />
                <ol>
                    <li>In Visual Studio.NET, Switch to release build<br />
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/build_release.jpg" alt="Build Release" width="153" height="50"></dt></dl>
                        <strong>Figure: Switch to release configuration</strong><br />
                        <br />
                    </li>
                    <li>In your project properties, make sure the release configuration goes to the bin\Release?
                        folder. While you are here, also make sure XML docs are generated. Use the same
                        name as your dll but change the extension to .xml (eg. for SSW.Framework.Configuration.dll
                        -&gt; add SSW.Framework.Configuration.xml)<br />
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/build_projectproperty.gif" alt="Build Project Property" width="600"
                                    height="440"></dt></dl>
                        <b>Figure: Project properties</b><br />
                        <p>
                            Note: The following examples are considered being used for C#. Visual Basic, by
                            default, does not have \bin\Release and \bin\Debug which which means that the debug
                            and release builds will overwrite each other unless the default settings are changed
                            to match C# (recommended). VB does not support XML comments either, please wait
                            for the next release of Visual Studio (Whidbey).
                        </p>
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/changetocsharp.jpg" alt="Change to C#" width="307" height="170"></dt></dl>
                        <b>Figure: Force change to match C#</b>
                        <p>
                            &nbsp;</p>
                    </li>
                    <li>If this is the first time, include/check-in the release directory into your SourceSafe<br />
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/build_include.jpg" alt="Build Include" width="223" height="187"></dt></dl>
                        <b>Figure: Include the bin\Release directory into source safe</b><br />
                        <br />
                    </li>
                    <li>Make sure everythings checked-in properly. When you build new versions, switch to
                        Release?mode and checkout the release dlls, overwrite them, and when you check them
                        back in they will be the new dll shared by other applications.<br />
                        <br />
                    </li>
                    <li>
                        <p>
                            If the component is part of a set of components, located in a solution, with some
                            dependency between them. You need to check out ALL the bin\Release folders for all
                            projects in that solution and do a build. Then check in all of them. This will ensure
                            dependencies between these components don't conflict with projects that reference
                            this component set.</p>
                        <p>
                            In other words, a set of components such as SSW.Framework.WindowsUI.xxx, increment
                            versions AS A WHOLE. One component in this set changes will cause the whole set
                            to re-establish internal references with each other.</p>
                    </li>
                </ol>
                <p>
                    <br />
                    <br />
         <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/PublishComponentsToSourceSafe.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/PublishComponentsToSourceSafe.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="ProjectReferencing"></a>Do you reference "most" .dlls by Project?</h2>
        
        <p>
            When you obtain a 3rd party .dll (in-house or external), you sometimes get the code
            too. So should you:
            <ul>
                <li>reference the Project (aka including the source) or </li>
                <li>reference the assembly? </li>
            </ul>
            <br />
            When you face a bug, there are 2 types of emails you can send:
            <ol>
                <li>Dan, I get this error calling your Registration.dll? or</li>
                <li>Dan, I get this error calling your Registration.dll and I have investigated it.
                    As per our conversation, I have changed this xxx to this xxx.</li>
            </ol>
            <br />
            The 2nd option is preferable.<br />
            <br />
            <b>The simple rule is:</b>
            <blockquote>
                If there are no bugs then reference the assembly, and<br />
                If there are bugs in the project (or any project it references [See note below])
                then reference the project.
            </blockquote>
            Since most applications have bugs, therefore most of the time you should be using
            the second option.
            <br />
            If it is a well tested component and it is not changing constantly, then use the
            first option.
            <br />
            <br />
        </p>
        <ol>
            <li>Add the project to solution (if it is not in the solution).</li>
            <dl class="goodImage">
                <dt>
                    <img src="Images/ReferenceProject1.gif" alt="Add existing project" width="420" height="426"></dt></dl>
            <b>Figure: Add existing project</b><br />
            <br />
            <li>Select the "References" folder of the project you want to add references to, right
                click and select "Add Reference...".</li>
            <br />
            <dl class="goodImage">
                <dt>
                    <img src="Images/ReferenceProject2.gif" alt="Add reference" width="266" height="178"></dt></dl>
            <b>Figure: Add reference</b><br />
            <br />
            <li>Select the projects to add as references and click OK.</li>
            <dl class="goodImage">
                <dt>
                    <img src="Images/ReferenceProject3.gif" alt="Select projects to reference" width="566"
                        height="446"></dt></dl>
            <b>Figure: Select the projects to add as references</b>
        </ol>
        Note: We have run into a situation where we reference a stable project A, and an
        unstable project B. Project A references project B. Each time project B is built,
        project A needs to be rebuilt.
        <br />
        Now, if we reference stable project A by dll, and unstable project B by project
        according to this standard, then we might face referencing issues, where Project
        A will look for another version of Project B ?the one it is built to, rather than
        the current build, which will cause Project A to fail.
        <br />
        To overcome this issue, we then reference by project rather than by assembly, even
        though Project A is a stable project. This will mitigate any referencing errors.
        <br/>
        <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ProjectReferencing.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ProjectReferencing.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="ReferenceAssembly"></a>Do you reference "very calm/stable" .dlls by Assembly?</h2>
            <p>
                If we lived in a happy world with no bugs, I would be recommending this approach
                of using shared components from source safe. As per the prior rule, you can see
                we like to reference "most" .dlls by project.
                <br />
                However if you do choose to reference a .dll without the source, then the important
                thing is that if the .dll gets updated by another developer, then there is <b>*nothing*</b>
                to do for all other developers ?they get the last version when they do your next
                build. Therefore you need to follow this:
            </p>
            <br />
            As the component user, there are six steps, but you only need to do them once:
            <br />
            <ol>
                <li>First, we need to get the folder and add it to our project, so in SourceSafe, right
                    click your project and create a subfolder using the Create Project (yes, it is very
                    silly name) menu.
                    <dl class="goodImage">
                        <dt>
                            <img src="Images/use_createvssfolder.jpg" alt="Use Create VSS Folder" width="213"
                                height="100"></dt></dl>
                    <b>Figure: Create &#39;folder&#39; in Visual Source Safe</b><br />
                    <br />
                    Name it References<dl class="goodImage">
                        <dt>
                            <img src="Images/use_referencesfolder.jpg" alt="Use References Folder" width="368"
                                height="84"></dt></dl>
                    <b>Figure: &#39;References&#39; folder</b><br />
                    <br />
                </li>
                <li>Share the dll from the directory, so if I want SSW.Framework.Configuration, I go
                    to $/ssw/SSWFramework/Configuration/bin/Release/<br />
                    I select both the dll and the dll.xml files, right-click and drag them into my $/ssw/zzRefs/References/
                    folder that I just created in step 1.<dl class="goodImage">
                        <dt>
                            <img src="Images/use_dllsxml.jpg" alt="Use Dlls Xml" width="244" height="74"></dt></dl>
                    <b>Figure: Select the dlls that I want to use</b><br />
                    <dl class="goodImage">
                        <dt>
                            <img src="Images/use_rightclicktoshare.jpg" alt="Use right click to share" width="216"
                                height="89"></dt></dl>
                    <b>Figure: Right drag, and select &quot;Share&quot;</b><br />
                    <br />
                </li>
                <li>Still in SourceSafe, select the References folder, run get latest?to copy the latest
                    version onto your working directory.<br />
                    <dl class="goodImage">
                        <dt>
                            <img src="Images/use_getlatest.jpg" alt="Use Get Latest" width="217" height="98"></dt></dl>
                    <b>Figure: Get Latest from Visual Source Safe</b>
                    <br />
                    VSS may ask you if you want to create the folder, if it doesnt exist. Yes, we do.<br />
                </li>
                <li>Back in VS.NET, select the project and click the show-all files button in the solution
                    explorer, include the References folder into the project (or get-latest if its already
                    there)<br />
                    <dl class="goodImage">
                        <dt>
                            <img src="Images/use_includeinvs.jpg" alt="Use Include Invs" width="221" height="177"></dt></dl>
                    <b>Figure: Include the files into the current project<br />
                    </b></li>
                <li>IMPORTANT! If the files are checked-out to you when you include them into your project,
                    you MUST un-do checkout immediately.<br />
                    You should never check in these files, they are for get-latest only.<br />
                    <dl class="goodImage">
                        <dt>
                            <img src="Images/use_undocheckout.jpg" alt="Use Undo Checkout" width="225" height="219"></dt></dl>
                    <b>Figure: Undo Checkout, when VS.NET checked them out for you...</b><br />
                </li>
                <li>Add Reference?in VS.NET, browse to the References?subfolder and use the dll there.<br />
                </li>
                <li>IMPORTANT! You need to keep your &#39;References&#39; folder, and not check the
                    files directly into your bin directory. Otherwise when you &#39;get latest&#39;,
                    you won&#39;t be able to get the latest shared component.</li>
            </ol>
            <p>
                All done. In the future, whenever you do get-latest?on the project, the any updated
                dlls should come down and be linked the next time you compile. Also, if anyone checks
                out your project from Source Safe, they will have the project linked and ready to
                go.
            </p>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ReferenceAssembly.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ReferenceAssembly.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="AssemblyVersion"></a>Do you keep your Assembly Version Consistent?</h2>
            <p>
                It is important to keep Assembly version and Assembly file version consistent, otherwise
                it can lead to support and maintenance nightmares. By default these version values
                are defined in the AssemblyInfo file. In the following examples, the first line
                is the version of the assembly and the second line is the actual version display
                in file properties.
            </p>
            <dl class="badCode">
                <dt>
                    <pre>
[assembly: AssemblyVersion(<span style="background-color: #FFFF00">"2.0.*"</span>)]<br />
[assembly: AssemblyFileVersionAttribute(<span style="background-color: #FFFF00">"1.0.0.3"</span>)]
</pre>
                </dt>
                <dd>
                    Bad example - the common assembly versioning method.</dd>
            </dl>
            <dl class="goodCode">
                <dt>
                    <pre>
[assembly: AssemblyVersion(<span style="background-color: #FFFF00">"2.0.*"</span>)]<br />
[assembly: AssemblyFileVersionAttribute(<span style="background-color: #FFFF00">&quot;2.0.*"</span>)]
</pre>
                </dt>
                <dd>
                    Good example - the best way for Assembly versioning.</dd>
            </dl><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/KeepAssemblyVersionConsistent.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/KeepAssemblyVersionConsistent.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="CMAB"></a><a name="CMAB1"></a>Do you use configuration management application
                block?</h2>
            <p>
                How do you get a setting from a configuration file? What do you do when you want
                to get a setting from a registry, or a database? Everyone faces these problems,
                and most people come up with their own solution. We used to have a few different
                standards, but when Microsoft released the Configuration Application Blocks, we
                have found that working to extend it and use it in all our projects saves us a lot
                of time! Use a local configuration file for machine and/or user specific settings
                (such as a connection string), and use a database for any shared values such as
                Tax Rates.</p>
            <p class="productBox">
                See how we configured this reset default settings functionality with the Configuration
                Block in the <a href="../../NetToolKit/06ConfigurationBlock.aspx">.NET Toolkit</a>
            </p>
            <br />
            <br />
           <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ConfigurationManagementAppBlock.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ConfigurationManagementAppBlock.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="resetDefault"></a>Do you have a resetdefault() function in your configuration
                management application block?</h2>
            <p>
                In almost every application we have a user settings file to store the state of the
                application. We want to be able to reset the settings if anything goes wrong.</p>
            <p class="productBox">
                See how we configured this reset default settings functionality with the Configuration
                Block in the <a href="../../NetToolKit/06ConfigurationBlock.aspx">.NET Toolkit</a>
            </p>
            <br />
            <br />
           <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ResetDefault.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ResetDefault.aspx</a></font>  
        </li>
        <li>
            <h2>
                <a name="HardCode"></a>Do you hard code your ConnectionString?</h2>
            <p>
                We don't like hard coded string inside our programme. We are using model-driven
                development, in which we create or reuse code, and perform changes in configuration
                file rather the in-code changing. <a href="#CMAB1">More information on implementing
                    our configuration</a>.</p>
            <dl class="badCode">
                <dt>
                    <pre>
                        connection.ConnectionString = "
<pre>Provider=SQLOLEDB;
                            <br />
                            Data Source=<em>server_name_or_address</em>; Initial Catalog=<em>database_name</em>;
                            <br />
                            User ID=<em>username</em>; Password=<em>password</em>;</pre> ";
                        <p>
                        connection.Open();
                    </pre>
                </dt>
                <dd>
                    Bad code - use the lengthy connection string.</dd></dl>
            <dl class="goodCode">
                <dt>
                    <pre>
                        connection.ConnectionString = ConfigurationManager.Items[&quot;ConnectionString&quot;];
<br />
                        connection.Open();
                    </pre>
                </dt>
                <dd>
                    Figure: Good Code - Use ConfigurationManager to handle the connection string.</dd></dl>
            <p>
                &nbsp;</p>
            <table class="clsSSWProductTable" id="table30" cellspacing="2" cellpadding="2" summary="Code Auditor">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#HardCode">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table>
            <b>
                <br />
            </b><br/>
            <font  color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/HardCodeConnectionString.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/HardCodeConnectionString.aspx</a></font>   
            </li> 
           
        <li>
            <h2>
                <a name="Reconcile">Do you make sure that the database structure is automatically handled
                    automatically via 3 buttons "Create", Upgrade" and "Reconcile"?</a>
            </h2>
            <p>
                You get an error message reported from a user like:
            </p>
            <blockquote>
                <i>When I click the Save button on the product form it gives an error message about
                    a missing field.</i></blockquote>
            <p>
                You try and reproduce it on your version in the office and everything works perfectly,
                you suspect that the customer probably has changed the schema. So you start drafting
                an email to the user like:
            </p>
            <blockquote>
                <div style="background-color: #eee; border: 1px solid #ccc; padding: 15px 10px;">
                    <i>Mary, I need you to send me your database schema as it might be different from what
                        it should be. Can you:</i><br />
                    <ol>
                        <li><i>Open up Enterprise Manager (or SQL Management Studio)</i></li>
                        <li><i>Open the first tree</i></li>
                        <li><i>Open the second tree</i></li>
                        <li><i>Select your server</i></li>
                        <li><i>Open that tree</i></li>
                        <li><i>Select Databases</i></li>
                        <li><i>Open that tree</i></li>
                        <li><i>Select the database called Northwind</i></li>
                        <li><i>Right click it and choose All Tasks, then Generate SQL Script</i></li>
                        <li><i>Then select the options</i></li>
                        <li><i>etc</i></li>
                        <li><i>Then when I get this I will compare and I will make a script file for you to
                            run and fix the problem </i></li>
                    </ol>
                </div>
            </blockquote>
            <p>
                STOP! STOP! STOP!<br />
                It would be much better to just say:</p>
            <blockquote>
                <i>Mary, click the "Reconcile" button and it will tell us what is wrong</i></blockquote>
            <p>
                Bottom line is the customers' database schema will always be correct and this should
                be managed automatically by the application.</p>
            <p>
                Therefore, we always deliver an application with the buttons "Create", Upgrade"
                and "Reconcile", accessible via "Tools - Options" and a "Database" tab. We do this
                by using SSW SQL Deploy and throwing on the inherited user-control from the SSW.SQLDeploy.Options
                project.</p>
            <p>
                For more information see <a href="/ssw/Standards/DeveloperGeneral/SQLservertools.aspx#SQLDeploy">
                    Best Tools for SQL Server</a></p>
            It looks like this<br />
            <dl class="goodImage">
                <dt>
                    <img border="0" src="Images/Reconcile.jpg" alt="Reconcile" width="520" height="571"></dt></dl>
            <b>Figure: Showing the &quot;Reconcile&quot; which compares the current scripts with
                the Clients database; and the &quot;Upgrade&quot; which will run the scripts that
                have been most recently included in the latest version for the client.</b><br />
            <br />
            On clicking &quot;Select&quot; another Dialog will open with the required functions
            for creating a database or using an existing one as shown below: </p>
            <p>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/NewDatabaseDialog.jpg" alt="New database dialog" width="376"
                            height="493">
                    </dt>
                </dl>
                <br />
                <b>Figure: Creating a New database for the client if there is no database to begin with.</b></p>
                
                <div class="greyBox">
                    As a developer, I promise to do these 3 things:
                    <ol>
                        <li>Save every SQL change I do as a script</li>
                        <li>Make sure the application I develop, has 3 buttons, "Create", "Update" and "Reconcile"</li>
                        <li>Never ask a client to run a script</li>
					</ol>
				</div>&nbsp;<br/>
				<font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSQLServerSchemaDeployment/Pages/DoYouMakeSureThatTheDatabaseStructureIsAutomaticallyHandledAutomaticallyVia3ButtonsCreateUpgradeAndReconcile.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSQLServerSchemaDeployment/Pages/DoYouMakeSureThatTheDatabaseStructureIsAutomaticallyHandledAutomaticallyVia3ButtonsCreateUpgradeAndReconcile.aspx</a></font> 
				</li>
				
        <li>
            <h2>
                <a name="XMLVersion">Do you version your .xml files</a>?</h2>
            <p>
                It is good to store program settings in an .xml file. But developers rarely worry
                about future schema changes and how they will inform the user it is an old schema.<br />
                <br />
                What is wrong with this?</p>
            <dl class="badImage">
                <dt>
                    <pre>
&lt;?xml version=&quot;1.0&quot; standalone=&quot;yes&quot;?&gt;
<br />
&lt;NewDataSet&gt;
  &nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:schema id=&quot;NewDataSet&quot; xmlns=&quot;&quot;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;xmlns:xs=&quot;http://www.w3.org/2001/XMLSchema&quot;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;xmlns:msdata=&quot;urn:schemas-microsoft-com:xml-msdata&quot;&gt;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=NewDataSet&quot; msdata:IsDataSet=&quot;true&quot; msdata:Locale=&quot;en-AU&quot;&gt;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:complexType&gt;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:choice maxOccurs=&quot;unbounded&quot;&gt;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;Table1&quot;&gt;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:complexType&gt;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:sequence&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;DateUpdated&quot; type=&quot;xs:dateTime&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;NewDatabase&quot; type=&quot;xs:boolean&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;ConnectionString&quot; type=&quot;xs:string&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;SQLFilePath&quot; type=&quot;xs:string&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;TimeOut&quot; type=&quot;xs:int&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;TurnOnMSDE&quot; type=&quot;xs:boolean&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;KeepXMLRecords&quot; type=&quot;xs:boolean&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;UserMode&quot; type=&quot;xs:boolean&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;ReconcileScriptsMode&quot; type=&quot;xs:boolean&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;FolderPath&quot; type=&quot;xs:string&quot; minOccurs=&quot;0&quot; /&gt; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;SelectedFile&quot; type=&quot;xs:string&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;UpdateVersionTable&quot; type=&quot;xs:boolean&quot; minOccurs=&quot;0&quot; /&gt;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/xs:sequence&gt;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/xs:complexType&gt;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/xs:element&gt;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/xs:choice&gt;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/xs:complexType&gt;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/xs:element&gt;
  &nbsp;&nbsp;&nbsp;&nbsp;&lt;/xs:schema&gt;
<br />
 <br />
  &nbsp;&nbsp;&nbsp;&nbsp;&lt;Table1&gt;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;DateUpdated&gt;2004-05-17T10:04:06.9438192+10:00&lt;/DateUpdated&gt;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;NewDatabase&gt;true&lt;/NewDatabase&gt;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;ConnectionString&gt;Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Data Source=(local);Initial Catalog=master&lt;/ConnectionString&gt;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;SQLFilePath&gt;ver0001.sql&lt;/SQLFilePath&gt;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;TimeOut&gt;5&lt;/TimeOut&gt;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;TurnOnMSDE&gt;false&lt;/TurnOnMSDE&gt;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;KeepXMLRecords&gt;false&lt;/KeepXMLRecords&gt;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;UserMode&gt;true&lt;/UserMode&gt;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;ReconcileScriptsMode&gt;true&lt;/ReconcileScriptsMode&gt;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;FolderPath&gt;C:\Program Files\SSW SQL Deploy\Samples\DatabaseSQLScripts\&lt;/FolderPath&gt;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;SelectedFile /&gt;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;UpdateVersionTable&gt;true&lt;/UpdateVersionTable&gt;
  &nbsp;&nbsp;&nbsp;&nbsp;&lt;/Table1&gt;
  <br />
&lt;/NewDataSet&gt;
<br />
</pre>
                </dt>
                <dd>
                    Bad example - XML file without version control.</dd></dl>
            <dl class="goodCode">
                <dt>
                    <pre>
&lt;?xml version=&quot;1.0&quot; standalone=&quot;yes&quot;?&gt;
<br />
&lt;NewDataSet&gt;
  &nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:schema id=&quot;NewDataSet&quot; xmlns=&quot;&quot; xmlns:xs=&quot;http:/www.w3.org/2001/XMLSchema&quot;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;xmlns:msdata=&quot;urn:schemas-microsoft-com:xml-msdata&quot;&gt;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;NewDataSet&quot; msdata:IsDataSet=&quot;true&quot; msdata:Locale=&quot;en-AU&quot;&gt;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:complexType&gt;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:choice maxOccurs=&quot;unbounded&quot;&gt;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;Table1&quot;&gt;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:complexType&gt;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:sequence&gt;
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;Version&quot; type=&quot;xs:string&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;DateUpdated&quot; type=&quot;xs:dateTime&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;NewDatabase&quot; type=&quot;xs:boolean&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;ConnectionString&quot; type=&quot;xs:string&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;SQLFilePath&quot; type=&quot;xs:string&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;TimeOut&quot; type=&quot;xs:int&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;TurnOnMSDE&quot; type=&quot;xs:boolean&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;KeepXMLRecords&quot; type=&quot;xs:boolean&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;UserMode&quot; type=&quot;xs:boolean&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;ReconcileScriptsMode&quot; type=&quot;xs:boolean&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;FolderPath&quot; type=&quot;xs:string&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;SelectedFile&quot; type=&quot;xs:string&quot; minOccurs=&quot;0&quot; /&gt;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;xs:element name=&quot;UpdateVersionTable&quot; type=&quot;xs:boolean&quot; minOccurs=&quot;0&quot; /&gt;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/xs:sequence&gt;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/xs:complexType&gt;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/xs:element&gt;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/xs:choice&gt;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/xs:complexType&gt;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/xs:element&gt;
  &nbsp;&nbsp;&nbsp;&nbsp;&lt;/xs:schema&gt;
 <br />
  &lt;Table1&gt;
    &lt;Version&gt;1.2&lt;/Version&gt;
    &lt;DateUpdated&gt;2004-05-17T10:04:06.9438192+10:00&lt;/DateUpdated&gt;
    &lt;NewDatabase&gt;true&lt;/NewDatabase&gt;
    &lt;ConnectionString&gt;Provider=SQLOLEDB;Integrated Security=SSPI;Data Source=(local);Initial Catalog=master&lt;/ConnectionString&gt;
    &lt;SQLFilePath&gt;ver0001.sql&lt;/SQLFilePath&gt;
    &lt;TimeOut&gt;5&lt;/TimeOut&gt;
    &lt;TurnOnMSDE&gt;false&lt;/TurnOnMSDE&gt;
    &lt;KeepXMLRecords&gt;false&lt;/KeepXMLRecords&gt;
    &lt;UserMode&gt;true&lt;/UserMode&gt;
    &lt;ReconcileScriptsMode&gt;true&lt;/ReconcileScriptsMode&gt;
    &lt;FolderPath&gt;C:\Program Files\SSW SQL Deploy\Samples\DatabaseSQLScripts\&lt;/FolderPath&gt;
    &lt;SelectedFile /&gt;
    &lt;UpdateVersionTable&gt;true&lt;/UpdateVersionTable&gt;
  &lt;/Table1&gt;
&lt;/NewDataSet&gt;
<br /> 
                    </pre>
                </dt>
                <dd>
                    Figure: XML file with version control</dd></dl>
            <p>
                The version tags identifies what version the file is. This version should be hard
                coded into the application. Every time you change the format of the file, you would
                increment this number.</p>
            <p>
                The code below shows how this would be implemented in your project.</p>
            <dl class="goodCode">
                <dt>
                    <pre>
 Public Function XmlValidatore() As Boolean
        Dim errors As Boolean = False
        Dim fileversion As String = "Not Specified"
        Dim msShouldConvertFile As Boolean

        Dim sce As XmlSchemaSet = New XmlSchemaSet()
        sce.Add("", "\..\NewDataSet.xsd")
        Dim documnet As XDocument = XDocument.Load("\..\NewDataSet.xsd")

        documnet.Validate(sce, AddressOf XSDErrors)

        Dim element As IEnumerable(Of XElement) = _
            From el In documnet.Elements() _
            Where (el.Name = "version") _
            Select el

        fileversion = element.ToString()

        If fileversion = "" Then
            fileversion = "Not specified"
        End If

        If fileversion = GetXMLFileVersion() Then
            If errors Then
                Return False
            End If

        End If

        If errors OrElse fileversion <> GetXMLFileVersion() Then
            If msShouldConvertFile Then
                CovertToCurrentVersion(errors)
            End If
        Else
            Throw New XMLFileVersionException(" File is not in the Latest Version ", GetXMLFileVersion())
        End If
        Return True
    End Function
End Class
<br />
                    </pre>
                </dt>
            </dl>
            <b>Figure: Code to illustrate how to check if the xml file is valid using VB.NET.</b>
            <p>
                Note: to allow backward compatibility, you should give the user an option to convert
                old xml files into the new version structure.</p>

<dl class="goodCode">
                <dt>
                    <pre>
  public bool xmlvalidatore()
        {
            bool error = false;
            string fileversion = "Not Specifide";
            bool msShouldConvertFile;

            XmlSchemaSet sce = new XmlSchemaSet();
            sce.Add(null, @"\..\NewDataSet.xsd");
            XDocument document = XDocument.Load(@"\..\NewDataSet.xml");

            document.Validate(sce, (o, e) =>
                {
                    error = true;
                });
            
           IEnumerable<XElement> element=
                from el in document.Elements()
                where el.Name == "version"
                select el;
            fileversion = element.ToString();

            if (fileversion == "")
            {
                fileversion = "Not Spcified";
            }

            if (fileversion == GetXMLFileVersion())
            {
                if (error)
                {
                    return false;
                }
            }


            if (error ||
                fileversion != GetXMLFileVersion())
            {
                if (msShouldConvertFile)
                {
                    ConvertToCurrentVersion(error);
                }
            }
            else
            {
                throw new XMLFileVersionException("Please Change the file to Latest Version", GetXMLFileVersion());

            }

            return true;
        }           
    }
}

                    </pre>
                </dt>
            </dl>
            <b>Figure: Code to illustrate how to check if the xml file is valid using C#.NET.</b>
         <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/VersionXMLFiles.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/VersionXMLFiles.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="XMLTreeView">Do you use TreeView control instead of XML control?</a></h2>
            <p>
                Both controls can represent XML hierarchical data and support Extensible Stylesheet
                Language (XSL) templates, which can be used to transform an XML file into a the
                correct format and structure. While TreeView can apply Styles more easily, provide
                special properties that simplify the customization of the appearance of elements
                based on their current state.
            </p>
            <dl class="goodCode">
                <dt>
                    <pre>
&lt;asp:TreeView ID="TreeView1" runat="server" DataSourceID="siteMapDataSource" ImageSet="Faq" SkipLinkText =""&gt;
    &lt;ParentNodeStyle Font-Bold="False" /&gt;
    &lt;HoverNodeStyle Font-Underline="True" ForeColor="Purple" /&gt;
    &lt;SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" /&gt;
    &lt;NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="DarkBlue" HorizontalPadding="5px"
        NodeSpacing="0px" VerticalPadding="0px" /&gt;
&lt;/asp:TreeView>
&lt;asp:SiteMapDataSource ID="siteMapDataSource"  runat="server" /&gt;
                    </pre>
                </dt>
                <dd>
                    Figure: Good Code - <a href="/Demos/03TreeView/Default.aspx">Use TreeView to represent XML hierarchical data</a></dd>
            </dl>
            <dl class="badCode">
                <dt>
                    <pre>
&lt;asp:Xml ID="Xml1" runat="server" DocumentSource="~/Web.xml" TransformSource="~/Style.xsl"&gt;&lt;/asp:Xml&gt;
                    </pre>
                </dt>
                <dd>
                    Figure: Bad Code - <a href="/Demos/03TreeView/XML.aspx">Use XML to represent XML document using XSL Transformations</a></dd>
            </dl><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/TreeViewControl.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/TreeViewControl.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="Custom">Are your settings and the customizable settings, in different files?</a></h2>
            <p>
                There are three types of settings files that we may need to use in .NET
            </p>
            <ol>
                <li>App.Config/Web.Config is the default .NET settings file, including any settings
                    for the Microsoft Application Blocks (eg. the Exception Management Block and the
                    Configuration Management Block). These are for settings that don't change from within
                    the application. In addition, System.Configuration classes don't allow this file to be written to.
                    <br />
                </li>
                <li>ToolsOptions.Config (an SSW standard) is the file to hold the users own settings,
                    that are users can change in the Tools - Options.
                    <br />
                    Eg. ConnectionString, EmailTo, EmailCC<br />
                    Note: We read and write to this using Microsoft Configuration Application Block.
                    If we don't use this Block we would store it as a plain XML file and read and write
                    to it using System.XML classes. The idea is that if something does go wrong when
                    you are writing to this file, at least the App.Config would not be affected. Also,
                    this separates our settings (which are few) from the App.Config (which usually has
                    a lot of stuff that we really dont want a user to stuff around with).<br />
                </li>
                <li>UserSession.Config (an SSW standard). These are for additional setting files that
                    the user can not change.
                    <br />
                    e.g. FormLocation, LastReportSelected<br />
                    Note: This file is over writable (say during a re-installation) and it will not
                    affect the user if the file is deleted.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </li>
            </ol><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/SettingsInDifferentFiles.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/SettingsInDifferentFiles.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="WCF">Do you secure your web services using WCF over WSE3 and SSL?</a></h2>
            <p>
                Windows Communication Foundation (WCF) extends .NET Framework to enable building
                secure, reliable & interoperable Web Services.<br />
                WCF demonstrated interoperability with using the Web Services Security (WSS) including
                UsernameToken over SSL, UsernameToken for X509 Certificate and X509 Mutual Certificate
                profiles.<br />
                WSE has been outdated and replaced by WCF and has provided its own set of attributes
                that can be plugged into any Web Service application.
            </p>
            <ol>
                <li><b>Security</b>
                    <br />
                    Implementation of security at the message layer security has several policies that
                    can suite any environment including:
                    <ol>
                        <li>Windows Token</li>
                        <li>UserName Token</li>
                        <li>Kerbose Token</li>
                        <li>X.509 Certificate Token</li>
                    </ol>
                    At SSW we implement UserName Token using the standard login screen that prompts
                    for a Username and a Password, which then gets passed into the SOAP header (at message
                    level) for authorization.<br />
                    This requires SSL which provides a secure tunnel from client to server.<br />
                    However, message layer securtiy does not provide authentication security, so it
                    does not stop the ability for a determined hacker to try user name / password attempts
                    forever. Custom Policies setup at Application Level can to prevent brute force.
                    <br />
                    <br />
                </li>
                <li><b>Performance</b>
                    <br />
                    Indigo has got the smarts to negotiate to the most performant serialization and
                    transport protocol that either side of the WS conversation can accommodate, so it
                    will have the best performance having "all-things-being-equal". You can configure
                    the web services SSL session simply in the web.config file.<br />
                    After having Configure an SSL certificate (in the LocalMachine store of the server),
                    the following lines are required in the web.config:<br />
                    <dl class="goodCode">
                        <dt>
                            <pre>
                                &lt;configuration xmlns="http://schemas.microsoft.com/.NetConfiguration/v2.0"&gt;
<br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&lt;system.serviceModel&gt;
<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;services&gt;
<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;service type="WCFService" name="WCFService" behaviorConfiguration="ServiceBehaviour"&gt;
<br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;endpoint contract="IWCFService" binding="wsHttpBinding" bindingConfiguration="WSHttpBinding_IWCFServiceBinding"/&gt;
<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/service&gt;
<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/services&gt;
<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;bindings&gt;
<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;wsHttpBinding&gt;
<br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;binding name="WSHttpBinding_IWCFServiceBinding" &gt;
<br />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;security mode="Message"&gt;
<br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;message clientCredentialType="UserName" /&gt;
<br />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/security&gt;
<br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/binding&gt;
<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/wsHttpBinding&gt;
<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/bindings&gt;
<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;behaviors&gt;
<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;behavior name="ServiceBehaviour" returnUnknownExceptionsAsFaults="true" &gt;
<br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;serviceCredentials&gt;
<br />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span style="background: yellow;">&lt;serviceCertificate</span> <span style="background: yellow;">findValue="CN=SSW"</span>
                                    <span style="background: yellow;">storeLocation="LocalMachine"</span> <span style="background: yellow;">
                                        storeName="My"</span> <span style="background: yellow;">x509FindType="FindBySubjectDistinguishedName"
                                            /&gt;</span><br /> 
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/serviceCredentials&gt;
<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/behavior&gt;
<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/behaviors&gt;
<br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&lt;/system.serviceModel&gt;
<br />
                                &lt;/configuration&gt;
<br />
                                </pre>
                        </dt>
                    </dl>
                    <b>Figure: Setting the SSL to Web Service for Message Layer Security.</b>
                    <br />
                    <br />
                </li>
            </ol><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/UsingWCF.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/UsingWCF.aspx</a></font> 
        </li>
        <li><a name="Adapter"></a>
            <h2>
                Do you let the adapter handle the connection for you?</h2>
            <p>
                Did you know if you are using DataSets throughout your application (not data readers)
                then you don't need to have any code about connection opening or closing.</p>
            <p>
                Some say it is better to be explicit. However the bottom line is less code is less
                bugs.
            </p>
            <dl class="badCode">
                <dt>
                    <pre>
                        try
<br />
                        {
<br /> 
                        &nbsp;&nbsp;&nbsp;&nbsp;cnn.Open();
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;adapter.Fill(dataset);
<br />
                        }
<br />
                        catch (SQLException ex)
<br />
                        {
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;MessageBox.Show(ex.Message);
<br />
                        }
<br />
                        finally
<br />
                        {
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;// I&#39;m in the finally block so that I always get called even if the fill fails.
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cnn.Close();
<br />
                        }</pre>
                </dt>
                <dd>
                    Bad code - The connection code is not needed</dd></dl>
            <dl class="goodCode">
                <dt>
                    <pre>
                        try
<br />
                        {
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;adapter.Fill(dataset);
<br /> 
                        }
<br />
                        catch (SQLException ex)
<br />
                        {
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;MessageBox.Show(ex.Message);
<br />
                        }</pre>
                </dt>
                <dd>
                    Good code - letting the adapter worry about the connection.</dd></dl>
            Note: A common comment for this rule is...<br />
            &quot;Please tell users to explicitly open and close connection - even when the
            .NET Framework can do for them&quot;
            <p>
                The developers who prefer the first (more explicit) code example give the following
                reasons:</p>
            <ul class="list">
                <li>Explicit Behaviour is always better. Code maintainability. Explicit code is more
                    understandable than implicit code. Don't make your other developers have to look
                    up the fact that data adapters automatically maintain the state of your connection
                    for them.</li>
                <li>Consistency (or a lack of) - not all Framework classes are documented to behave
                    like this. For example, the IDBCommand.ExecuteNonQuery() will throw an exception
                    if the connection isn't open (it might be an interface method, but interface exceptions
                    are documented as a strong guideline for all implementers to follow). The SqlCommand
                    help doesn't mention anything further about this fact, but considering it's an inherited
                    class, it would be fair to expect it to behave the same way. A number of the other
                    methods don't make mention of connection state, making it difficult to know which
                    basket to put your eggs into...</li>
                <li>Developer Awareness - it's healthy for the developer to be aware that they have
                    a resource that needs to be handled properly. If they learn that they don't need
                    to open and close connections here, then when they move onto using other resource
                    types where this isn't the case then many errors may be produced. For example, when
                    using file resources, the developer is likely to need to pass and open stream and
                    needs to remember to close any such streams properly before leaving the function.</li>
                <li>Efficiency (sort of) - In a lot of code it will often populate more than one object
                    at a time so that if I only open the connection once, execute multiple fills or
                    commands, then close, then it'll be more clear about what the intent of the developer.
                    If we left it to the framework, it's likely that the connection will be opened and
                    closed multiple times; which despite it being really cheap to open out of the connection
                    pool it will be slightly (itty bitty bit) more efficient but I think the explicit
                    commands will demonstrate more clearly the intention of the developer.</li>
            </ul>
            <p>
                Bottom line - I wont be swayed - but it is a controversial one. People who agree
                with me include:</p>
            <ul>
                <li>Ken Getz</li>
                <li>Paul Sheriff</li>
                <li>Bill Vaughan</li>
                <li>George Doubinski</li>
            </ul>
            <p>
                People who don't:</p>
            <ul>
                <li>Chris Kinsman</li>
                <li>Richard Campbell</li>
                <li>Paul Reynolds</li>
            </ul>
            <p>
                Microsoft&#39;s online guide to <a href="/ssw/Redirect/MSDN_ADO.htm">Improving ADO.NET
                    performance</a> to see their opinion and other tips.
            </p>
            <p>
                One final note: This argument is a waste of time.... With code generators developing
                most of the Data Access layer of the application, the errors, if any, will be long
                gone and the developer is presented with higher level of abstraction that allows
                him/her to concentrate on more important things rather than mucking around with
                connections. Particularly considering that, when we start using the Provider model
                from Whidbey, it won&#39;t even be clear whether you&#39;re talking to SQL Server
                or to an XML file.<br />
            </p>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/UseAdapterHandleConnection.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/UseAdapterHandleConnection.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="TryBlock">Do you Open your Connection in a Try Block?</a></h2>
            <p>
                In situations where you must explicitly open a connection (e.g. when using data
                readers), you always:</p>
            <ul>
                <li>open your Connection in a Try Block and </li>
                <li>close it in a Finally statement (So when an Exception is thrown your Connection
                    can be properly closed)<br />
                </li>
            </ul>
            <dl class="badCode">
                <dt>
                    <pre>
                        <b>// C#</b> <br />
                        try
<br />
                        {
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cnn.Open();
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cmd.ExecuteReader();
<br />
                        }
<br />
                        catch (SQLException ex)
<br />
                        {
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;MessageBox.Show(ex.Message);
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cnn.Close();
<br />
                        }
<br />
<br /> 
                        <b>'VB.NET</b> <br />
                        Try
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cnn.Open()
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cmd.ExecuteReader()
<br />
                        Catch (ex as SQLException)
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;MessageBox.Show(ex.Message)
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cnn.Close()
<br />
                        End Try</pre>
                </dt>
                <dd>
                    Bad code - Connection is not closed in the finally.</dd></dl>
            <dl class="goodCode">
                <dt>
                    <pre>
                        <b>// C#</b><br /> 
                        try
<br />
                        {
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cnn.Open();
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cmd.ExecuteReader();
<br /> 
                        }
<br />
                        catch (SQLException ex)
<br />
                        {
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;MessageBox.Show(ex.Message);
<br />
                        }
<br />
                        finally
<br />
                        {
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cnn.Close();
<br />
                        }
<br />
                        <b>' VB.NET</b> <br />
                        Try
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cnn.Open()
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cmd.ExecuteReader()
<br /> 
                        Catch (ex as SQLException)
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;MessageBox.Show(ex.Message)
<br />
                        Finally
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cnn.Close()
<br />
                        End Try
                        </pre>
                </dt>
                <dd>
                    Good code - The cnn.open is in a Try and the cnn.Close is in a finally</dd></dl>
            Note:Do not use the 'using' keyword in C#. The using keyword is used to declare
            a scope out of which the connection will be disposed. For the sake of consistancy,
            we like our VB.NET and C# projects to be as similar as possible. For both languages
            you should use a Try..Catch..Finally block.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br/>
        <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/TryBlock.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/TryBlock.aspx</a></font> 
        
        </li>
        <li>
            <h2>
                <a name="CatchBlock">Do you have meaningless Catch blocks in your applications?</a></h2>
            <p>
                Meaningless Catch blocks should never be used because if there is an error in the
                application a warning cannot be displayed to the user such as &quot;connection failed&quot;.
            </p>
            <dl class="badCode">
                <dt>
                    <pre>// C# &nbsp;
<br />
                        try &nbsp;
<br />
                        { &nbsp;
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cnn.Open(); &nbsp;
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cmd.ExecuteReader(); &nbsp;
<br />
                        }
<br />
                        catch &nbsp;
<br />
                        { &nbsp;}
<br />
                        finally &nbsp;
<br />
                        { &nbsp;
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cnn.Close();
<br />
                        }
                        </pre>
                    <pre>End Try</pre>
                </dt>
                <dd>
                    Bad code - Meaningless Catch block</dd></dl>
            <dl class="goodCode">
                <dt>
                    <pre>
                        // C#
<br />
                        try
<br />
                        {
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cnn.Open();
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cmd.ExecuteReader();
<br />
                        }
<br />
                        catch <span style="background-color: #FFFF00">(SQLException ex)
                            <br />
                            {
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;MessageBox.Show(ex.Message);
                            <br />
                            }<br />
                        </span> 
                        finally
<br /> 
                        {
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;cnn.Close();
<br />
                        }
<br />
                        End Try</pre>
                </dt>
                <dd>
                    Good code - Meaningful Catch block</dd></dl>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                id="table12">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#CatchBlock">SSW Code
                            Auditor</a> to check for this rule.
                    </td>
                </tr>
            </table><br/>
         <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/Catchblocks.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/Catchblocks.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="Class">Do you use one class per file?</a></h2>
            <p>
                Each class definition should live in its own file.</p>
            <p>
                Reasons:</p>
            <ul>
                <li>Easy to locate class definitions outside the Visual Studio IDE (e.g. SourceSafe,
                    Windows Explorer)</li>
            </ul>
            <p>
                The only exception should be - classes that collectively form one atomic unit of
                reuse should live in one file. For example:<br />
            </p>
            <dl class="badCode">
                <dt>
                    <pre>
class MyClass
<br /> 
{
<br />
&nbsp;&nbsp;&nbsp;&nbsp;    ...
<br />
}
<br />
<br />
class MyClassAEventArgs
<br />
{
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;...
<br />
}
<br />
<br />
class MyClassBEventArgs
<br />
{
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;...
<br />
}
<br />
<br />
class MyClassAException
<br />
{
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;...
<br />
}
<br />
<br />
class MyClassBException
<br />
{
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;...
<br />
}
</pre>
                </dt>
                <dd>
                    Bad example - 1 project, 1 file.</dd>
            </dl><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/UseOneClassPerFile.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/UseOneClassPerFile.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="DataAdapter">Do you use a DataAdapter to insert rows into your database?</a></h2>
            <p>
                There are 5 common methods of inserting rows into your database:</p>
            <ol>
                <li>
                    <p>
                        Use SqlCommand with an SQL INSERT statement and parameters:</p>
                    <dl class="goodCode">
                        <dt>
                            <pre>
public void SQLInsert(string customerID, string companyName, string contactName)
<br />
{
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;SqlConnection sqlcon = new SqlConnection();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcon.ConnectionString = "Persist Security Info=False;Integrated Security=SSPI;database=northwindJV;server=(local);Connect Timeout=5";
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;SqlCommand sqlcmd = new SqlCommand();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.CommandText = "INSERT Customers(CustomerID, CompanyName, ContactName) VALUES(@CustomerID, @CompanyName, @ContactName)";
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.Connection = sqlcon;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.Parameters.Add("@CustomerID", customerID);
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.Parameters.Add("@CompanyName", companyName);
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.Parameters.Add("@ContactName", contactName);
<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;... // for all columns
<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;try
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;{
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sqlcon.Open();
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MessageBox.Show("The number of records updated was: " + sqlcmd.ExecuteNonQuery().ToString());
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;}
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;finally
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;{
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sqlcon.Close();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;}
<br />
}
</pre>
                        </dt>
                        <dd>
                            Figure: Inserting rows using INSERT</dd>
                    </dl>
                    <p>
                        This approach has two problems - the SQL is inline in the code, and if the database
                        schema is changed, INSERT statement will have to be manually updated.</p>
                     
                </li>
                <li>
                    <p>
                        Use SqlCommand and a stored procedure on the SQL Server:</p>
                    <dl class="goodCode">
                        <dt>
                            <pre>
public void SPInsert(string firstName, string surname)
<br />
{
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;SqlConnection sqlcon = new SqlConnection();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcon.ConnectionString = &quot;Persist Security Info=False;Integrated Security=SSPI; database=northwind;server=mySQLServer;Connect Timeout=30&quot;;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;SqlCommand sqlcmd = new SqlCommand();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.CommandText = &quot;proc_InsertCustomer&quot;;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.CommandType = CommandType.StoredProcedure;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.Connection = sqlcon;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.Parameters.Add(&quot;@firstName&quot;, firstName);
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.Parameters.Add(&quot;@surname&quot;, surname);
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;... // for all columns
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;try
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;{
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sqlcon.Open();
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.ExecuteNonQuery();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;}
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;finally
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;{
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sqlcon.Close();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;}
<br />
}
</pre>
                        </dt>
                        <dd>
                            Figure: Inserting rows using SqlCommand and a stored procedure on the SQL Server</dd>
                    </dl>
                    <p>
                        This method is better because the SQL is not mixed up with the code (it is in a
                        stored procedure), but it will still break if the database schema is changed, and
                        the all of the parameters to the stored procedure have to be added manually.</p>
                </li>
                <li>
                    <p>
                        Use DataAdapter with SQL INSERT statement, then use DataApdater.Update (strongly-typed-dataset)</p>
                    <dl class="goodCode">
                        <dt>
                            <pre>
public void DASQLInsert(string firstName, string surname)
<br />
{
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;SqlConnection sqlcon = new SqlConnection();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcon.ConnectionString = &quot;Persist Security Info=False;Integrated Security=SSPI; database=northwind;server=mySQLServer;Connect Timeout=30&quot;;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;SqlCommand sqlcmd = new SqlCommand();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.CommandText = &quot;INSERT Customers(firstName, surname) VALUES(@firstName, @surname)&quot;;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.Connection = sqlcon;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;SqlDataAdapter sqladp = new SqlDataAdapter();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqladp.InsertCommand = sqlcmd;
<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;NorthWindCustomer dst = new NorthWindCustomer();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;NorthWindCustomer.CustomerRow row = dst.Customer.NewCustomerRow();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;row.FirstName = firstName;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;row.Surname = surname;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;dst.Customer.AddCustomerRow(row);
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;try
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;{
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;slqcon.Open();
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sqladp.Update(dst);
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;}
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;finally
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;{  
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sqlcon.Close();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;}
<br />
}
</pre>
                        </dt>
                        <dd>
                            Figure: Inserting rows using DataAdapter with SQL INSERT statement, then use DataApdater.Update</dd>
                    </dl>
                    <p>
                        In this example, the SQL is mixed up with the .NET code, and has to be manually
                        updated if the database schema is changed. However, the strongly typed DataSet automatically
                        updates when the database schema changes.
                    </p>
                </li>
                <li>
                    <p>
                        Use DataAdapter with a stored procedure for INSERT, then use DataAdapter.Update
                        (strongly-typed-dataset)</p>
                    <dl class="goodCode">
                        <dt>
                            <pre>
public void DASPInsert(string firstName, string surname)
<br />
{
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;SqlConnection sqlcon = new SqlConnection();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcon.ConnectionString = &quot;Persist Security Info=False;Integrated Security=SSPI; database=northwind;server=mySQLServer;Connect Timeout=30&quot;;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;SqlCommand sqlcmd = new SqlCommand();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.CommandText = &quot;proc_InsertCustomer&quot;;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.CommandType = CommandType.StoredProcedure;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.Connection = sqlcon;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;SqlDataAdapter sqladp = new SqlDataAdapter();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqladp.InsertCommand = sqlcmd;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;NorthWindCustomer dst = new NorthWindCustomer();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;NorthWindCustomer.CustomerRow row = dst.Customer.NewCustomerRow();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;row.FirstName = firstName;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;row.Surname = surname;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;dst.Customer.AddCustomerRow(row);
<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;try
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;{
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sqlcon.Open();
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sqladp.Update(dst);
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;}
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;catch
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;{
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MessageBox.Show(
<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;Unable to open connection.&quot;,
<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;Error&quot;, MessageBoxButtons.OK, MessageBoxIcon.Error);
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;}
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;finally
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;{
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sqlcon.Close();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;}
<br />
}</pre>
                        </dt>
                        <dd>
                            Figure: Inserting rows using DataAdapter with a stored procedure for INSERT, then
                            use DataAdapter.Update (strongly-typed-dataset) - best for SQL Server</dd>
                    </dl>
                    <p>
                        This is the best approach for Microsoft SQL Server. The parameters for the stored
                        procedure are automatically generated and the strongly typed dataset updates when
                        the database schema changes.
                    </p>
                </li>
                <li>
                    <p>
                        Use DataAdapter with SQL SELECT statement, then use command builder to automatically
                        create INSERT, UPDATE and DELETE statements as required. Then use DataAdapter.Update
                        (strongly-typed-dataset).
                    </p>
                    <dl class="goodCode">
                        <dt>
                            <pre>
public void DACmdb(string firstName, string surname)
<br />
{
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;SqlConnection sqlcon = new SqlConnection();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcon.ConnectionString = &quot;Persist Security Info=False;Integrated Security=SSPI; database=northwind;server=mySQLServer;Connect Timeout=30&quot;;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;SqlCommand sqlcmd = new SqlCommand();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.CommandText = &quot;SELECT firstName, surname FROM Customers&quot;;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqlcmd.Connection = sqlcon;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;SqlDataAdapter sqladp = new SqlDataAdapter();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;sqladp.SelectCommand = sqlcmd;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;SqlCommandBuilder cmdb = new SqlCommandBuilder(adp);
<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;NorthWindCustomer dst = new NorthWindCustomer();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;NorthWindCustomer.CustomerRow row = dst.Customer.NewCustomerRow();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;row.FirstName = firstName;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;row.Surname = surname;
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;dst.Customer.AddCustomerRow(row);
<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;try
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;{
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sqlcon.Open();
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sqladp.Update(dst);
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;}
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;catch
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;{
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MessageBox.Show(
<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;Unable to open connection.&quot;,
<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;Error&quot;, MessageBoxButtons.OK, MessageBoxIcon.Error);
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;}
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;finally
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;{
<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sqlcon.Close();
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;}
<br />
}
</pre>
                        </dt>
                        <dd>
                            Figure: Inserting rows using DataAdapter with SQL SELECT statement, then use command
                            builder to automatically create INSERT, UPDATE and DELETE - best for SQL Server</dd></dl>
                    <p>
                        This approach is the best approach for Jet (Access) databases, as stored procedures
                        in Access are difficult to implement and unreliable. The INSERT statement is automatically
                        generated by .NET and the strongly typed databases update when the database schema
                        is changed.
                    </p>
                </li>
            </ol><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/DataAdapter.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/DataAdapter.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="img"></a>Do you put all images in the \images folder?</h2>
            <p>
                Instead of images sitting all around the solution, we put all the images in the
                same folder.
            </p>
            <dl class="badImage">
                <dt>
                    <img border="0" src="Images/ImageLinkBad.gif" alt="Image bad link" width="427" height="126">
                </dt>
                <dd>
                    Bad example - Images under Product root folder.</dd></dl>
            <dl class="goodImage">
                <dt>
                    <img border="0" src="Images/ImageLinkGood.gif" alt="Image good link" width="427"
                        height="126">
                </dt>
                <dd>
                    Good example - Images under \Images folder.</dd></dl>
            <p>
                &nbsp;</p>
            <table class="clsSSWProductTable" id="table30" cellspacing="2" cellpadding="2" summary="Code Auditor">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#Images">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ImagesFolder.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ImagesFolder.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="OnlyIMG"></a>Do you keep \images folder image only?</h2>
            <br />
            We want to keep clear and simple file structure in our solution. Never put any files
            other than images file in \images folder
            <dl class="badImage">
                <dt>
                    <img border="0" src="Images/OnlyImageBad.gif" alt="Image bad link" width="442" height="140">
                </dt>
                <dd>
                    Bad example - HTML file in \Images Folder.</dd></dl>
            <dl class="goodImage">
                <dt>
                    <img border="0" src="Images/OnlyImageGood.gif" alt="Image good link" width="442"
                        height="140"></dt>
                <dd>
                    Good example - Images only, clean \Images folder.</dd></dl>
            <p>
                &nbsp;</p>
            <table class="clsSSWProductTable" id="table30" cellspacing="2" cellpadding="2" summary="Code Auditor">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Default.aspx">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/KeepImagesFolderImageOnly.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/KeepImagesFolderImageOnly.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="Setup"></a>Do you put your setup file in your a \setup folder?</h2>
            All setup files should stored under setup folder of your project root directory.
            <dl class="goodImage">
                <dt>
                    <img border="0" src="Images/SetupFileGood.gif" alt="Store all setup files under one folder in root"
                        width="370" height="85"></dt>
                <dd>
                    Good example - All the wise setup file in the \setup folder.</dd></dl>
            <p>
                &nbsp;</p>
            <table class="clsSSWProductTable" id="table30" cellspacing="2" cellpadding="2" summary="Code Auditor">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#Setup">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/SetupFolder.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/SetupFolder.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="Deploy"></a>Do you deploy your applications correctly?</h2>
            <p>
                Many applications end up working perfectly on the developer's machine. However once
                the application is deployed into a setup package and ready for the public, the application
                could suddenly give the user the most horrible experience of his life. There are
                plenty of issues that developers don't take into consideration. Amongst the many
                issues, three can stand above the rest if the application isn't tested thoroughly:</p>
            <ol>
                <li>The SQL Server Database or the Server machine cannot be accessed by the user, and
                    so developer settings are completely useless to the user.</li>
                <li>The user doesn't install the application in the default location. (i.e. instead
                    of C:\Program Files\ApplicationName, the user could install it on D:\Temp\ApplicationName)</li>
                <li>The developer has assumed that certain application dependencies are installed on
                    the user's machine. (i.e. MDAC; IIS; a particular version of MS Access; or SQL Server
                    runtime components like sqldmo.dll)</li>
            </ol>
            <p>
                To prevent issues from arising and having to re-deploy continuously which would
                only result in embarrassing yourself and the company, there are certain procedures
                to follow to make sure you give the user a smooth experience when installing your
                application.</p>
            <ol>
                <li>Have scripts that can get the pathname of the .exe that the user has installed the
                    application on<br />
                    <br />
                    Wise has a Dialog that prompts the user for the installation directory:
                    <dl class="goodImage">
                        <dt>
                            <img border="0" src="Images/INSTALLDIR.jpg" width="506" height="392"></dt></dl>
                    <b>Figure: Wise Prompts the user for the installation directory and sets the path to
                        a property in wise called &quot;INSTALLDIR&quot;</b>
                    <p>
                        An embedded script must be used if the pathname is necessary in the application
                        (i.e. like .reg files that set registry keys in registry)</p>
                    <dl class="goodCode">
                        <dt>
                            <pre>
                                        'The .reg file includes the following hardcoded lines:
<br />
                                        '[HKEY_CLASSES_ROOT\SSWNetToolkit\shell\open\command]
<br />
                                        '@=&quot;\&quot;C:\\Program Files\\SSW NetToolKit\\WindowsUI\\bin\\SSW.NetToolkit.exe\&quot; /select \&quot;%1\&quot;&quot;
<br />
                                        'This should be replaced with the following lines:
<br />
                                        '[HKEY_CLASSES_ROOT\SSWNetToolkit\shell\open\command]
<br />
                                        '@=&quot;\&quot;REPLACE_ME\&quot; /select \&quot;%1\&quot;&quot;
<br />
                                        
                                        Dim oFSO, oFile, sFile
<br />
                                        Set oFSO = createobject(&quot;Scripting.FileSystemObject&quot;)
<br />
                                        
                                        sFile = Property(&quot;<span style="background-color: #FFFF00">INSTALLDIR</span>&quot;) &amp; &quot;WindowsUI\PartA\UrlAcccess.reg&quot;<br />
                                        
                                        Set oFile = oFSO.OpenTextFile(sFile)
<br />
                                        regStream = oFile.ReadAll()
<br />
                                        oFile.Close
<br />
                                        string appPath = replace(Property(&quot;INSTALLDIR&quot;) &amp; &quot;WindowsUI\bin\SSW.NetToolkit.exe&quot;, &quot;\&quot;, &quot;\\&quot;)
<br />
                                        regStream = replace(regStream, &quot;REPLACE_ME&quot;, appPath)
<br />
                                        Set oFile = oFSO.OpenTextFile(sFile,2)
<br />
                                        oFile.Write regStream
<br />
                                        oFile.Close
<br />
                                            </pre>
                        </dt>
                    </dl>
                    <p>
                        <b>Figure: The &quot;REPLACE_ME&quot; string is replaced with the value of the INSTALLDIR
                            property in the .reg file</b></p>
                </li>
                <li>After setting up the wise file then running the build script, the application must
                    be first tested on the developers own machine.<br />
                    Many developers forget to test the application outside the development environment
                    completely, and don't bother to install the application using the installation package
                    they have just created.<br />
                    Doing this will allow them to fix e.g. pathnames of images that might have been
                    set to a relative path of the running process and not the relative path of the actual
                    executable.
                    <dl class="badCode">
                        <dt>
                            <pre>
                                                this.pictureReportSample.Image = Image.FromFile(@&quot;Reports\Images\Blank.jpg&quot;);
                                            </pre>
                        </dt>
                        <dd>
                            Bad code - FromFile() method (as well as Process.Start()) give the relative path
                            of the running process. This could mean the path relative to the shortcut or the
                            path relative to the .exe itself, and so an exception will be thrown if the image
                            cannot be found when running from the shortcut.</dd></dl>
                    <dl class="goodCode">
                        <dt>
                            <pre>
                                                string appFilePath = System.Reflection.Assembly.GetExecutingAssembly().Location;
<br />
                                                string appPath = Path.GetDirectoryName(appFilePath);
<br />
                                                this.pictureReportSample.Image = Image.FromFile(appPath + @&quot;\Reports\Images\Blank.jpg&quot;);
                                            </pre>
                        </dt>
                        <dd>
                            Good code - GetExecutingAssembly().Location will get the pathname of the actual
                            excecutable and no exception will be thrown.</dd></dl>
                    <p>
                        This exception would never have been found if the developer didn't bother to test
                        the actual installation package on his own machine.<br />
                        &nbsp;</p>
                </li>
                <li>Having tested on the developer's machine, the application must be tested on a virtual
                    machine in a pure environment without dependencies installed in GAC, registry or
                    anywhere else in the virtual machine.<br />
                    <br />
                    Users may have MS Access 2000 installed and, the developer's application may behave
                    differently on an older version of MS Access even though it works perfectly on MS
                    Access 2003. The most appropriate way of handling this is to use programs like VM
                    Ware or MS Virtual PC.<br />
                    This will help the developer test the application on all possible environments to
                    ensure that it caters for <b>all</b> users, minimizing the amount of assumptions
                    as possible.</li>
            </ol>
            <p>
            &nbsp;
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/DeployApplicationsCorrectly.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/DeployApplicationsCorrectly.aspx</a></font>
            </li>
        <li><a name="Release"></a>
            <h2>
                Do you distribute a product in Release mode?</h2>
            <p>
                We like to have debugging information in our application, so that we can view the
                line number information in the stack trace. However, we won't release our product
                in Debug mode, for example if we use "#if Debug" statement in our code we don't
                want them to be compiled in the release version. If we want line numbers, we simply
                need <b>Debugging Information</b>. You can change an option in the project settings
                so these will be generated in when using Release build.
            </p>
            <dl class="goodCode">
                <dt>
                    <pre>#if DEBUG MessageBox.Show("Application started"); #endif</pre>
                </dt>
            </dl>
            <b>Figure: Code that should only run in Debug mode, we certainly don't want this in the
                release version.</b>
            <dl class="goodImage">
                <dt>
                    <img src="Images/debugConfiguration.gif" alt="Debug configuration" width="600" height="442">
                </dt>
            </dl>
            <b>Figure: Set&nbsp;&quot;Generate Debugging Information&quot; to True on the project
                properties page (VS 2003).</b>
            <dl class="goodImage">
                <dt>
                    <img src="Images/VS2005AdvancedBuildSettings.gif" alt="Advanced Build Settings" width="430"
                        height="307">
                </dt>
            </dl>
            <b>Figure: Set&nbsp;&quot;Debug Info&quot; to &quot;pdb-only&quot; on the Advanced Build
                Settings page (VS 2005).</b>
            <table class="clsSSWProductTable" id="table30" cellspacing="2" cellpadding="2" summary="Code Auditor">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#Release">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table>
            <p>
            &nbsp;
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/DistributeAProductInReleaseMode.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/DistributeAProductInReleaseMode.aspx</a></font>
            </li>
        <li><a name="MeaningfulNames"></a>
            <h2>
                Do you use more meaningful names than Hungarian short form?</h2>
            <p>
                Hungarian notation is used in VB6. In .NET, there are over 35,000 classes, so we can't
                just call them with three letter short form. We would suggest the developer use the full
                class name as in the example below. As a result, the code will be much easier
                to read and follow up.</p>
            <dl class="badCode">
                <dt>
                    <pre>
                                //Bad Code
<br />
                                DateTime dt = new DateTime.Now();
<br />
                                DataSet ds = new DataSet();
<br />
                                // It could be confused with Date time.
<br />
                                DataTable dt = ds.Tables[0];</pre>
                </dt>
                <dd>
                    Bad code - Without meaningful name.
                </dd>
            </dl>
            <dl class="goodCode">
                <dt>
                    <pre>
                                //Good Code
<br />
                                DateTime currentDateTime = new DateTime.Now();
<br />
                                DataSet employmentDataSet = new DataSet();
<br />
                                DataTable ContactDetailsDataTable = ds.Tables[0];</pre>
                </dt>
                <dd>
                    Good code - With meaningful name.
                </dd>
            </dl>
            <p>
                <a href="/ssw/Standards/DeveloperDotNet/DotNetStandard_ObjectNaming.aspx">More information
                    on naming convention</a>.
            </p>
            <p>
                &nbsp;</p>
            <table class="clsSSWProductTable" id="table30" cellspacing="2" cellpadding="2" summary="Code Auditor">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#MeaningfulNames">SSW
                            Code Auditor</a> to check for this rule.
                    </td>
                </tr>
            </table>
            <p>
            &nbsp;
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/UseMeaningfulNamesThanHungarian.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/UseMeaningfulNamesThanHungarian.aspx</a></font>
            </li>
        <li><a name="RenameSourceSafeFiles"></a>
            <h2>
                Do you know how to rename files that under SourceSafe control?</h2>
            <p>
                Whenever we rename a file in Visual Studio .NET, the file becomes a new file in
                SourceSafe. If the file has been checked-out, the status of old file will remain
                as checked-out in SourceSafe.</p>
            <p>
                The step by step to rename a file that under SourceSafe control:
                <ol>
                    <li>Save and close the file in Visual Studio .NET, and check in the file if it is checked-out.</li>
                    <li>Open Visual SourceSafe Explorer and rename the file.</li>
                    <li>Rename it in Visual Studio .NET, click "Continue with change" to the 2 pop-up messages:<br />
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/RenameVSS1.gif" width="638" height="197"></dt>
                        </dl>
                        <b>Figure: Warning message of renaming files under source control.</b>
                        <br />
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/RenameVSS2.gif" width="630" height="184"></dt>
                        </dl>
                        <b>Figure: You are seeing this as the new file name already exists in SourceSafe, just
                            click "Continue with change".</b> </li>
                </ol>
            </p>
            Visual Studio .NET should find the file under source control and it will come up with
            a lock icon. <br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/RenameSourceSafeFiles.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/RenameSourceSafeFiles.aspx</a></font>
            </li>
        <li><a name="ProfileYourCodeForPerformance"></a>
            <h2>
                Do you profile your code when optimising performance?</h2>
            <p>
                Imagine that you have just had a User Acceptance Test (UAT), and your app has been
                reported as being "painfully slow" or "so slow as to be unusable". Now, as a coder,
                where do you start to improve the performance? More importantly, do you know how
                much your massive changes have improved performance - if at all?
            </p>
            <p>
                We recommend that you should always use a code profiling tool to measure performance
                gains whilst optimising your application. Otherwise, you are just flying blind and
                making subjective, unmeasured decisions. Instead, use a tool such as <a href="/ssw/Redirect/JetbrainsNETProfiler.htm">
                    JetBrains dotTrace profiler</a>. These will guide you as to how to best optimise
                any code that is lagging behind the pack. You can run this on both ASP.NET and Windows
                Forms Applications. The optimisation process is as follows:
            </p>
            <ol>
                <li>Profile the application with Jetbrains dotTrace using the "Hot Spot" tab to identify
                    the slowest areas of your application</li>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/JetBrainsProfilerHotSpots.gif" width="913" height="337"></dt>
                </dl>
                <p>
                    <b>Figure: Identify which parts of your code take the longest (Hot Spots)</b>
                </p>
                <li>Some parts of the application will be out of your control e.g. .NET System Classes.
                    Identify the slowest parts of code that you can actually modify from the Hot Spot
                    listing</li>
                <li>Determine the cause of the poor performance and optimise (e.g. improve the WHERE
                    clause or the number of columns returned, reduce the number of loops or use a StringBuilder
                    instead of string concatenation)</li>
                <li>Re-run the profile to confirm that performance has improved</li>
                <li>Repeat from Step 1 until the application is optimised</li>
            </ol>
            <br />
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ProfileYourCodeForPerformance.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ProfileYourCodeForPerformance.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="CAFxCop"></a>Do you Add SSW Code Auditor, NUnit and Microsoft FxCop project
                files to your Solution</h2>
            <p>
                <a href="/ssw/CodeAuditor/Default.aspx">SSW Code Auditor</a>, <a href="/ssw/Standards/DeveloperGeneral/netTools.aspx#NUnit">
                    NUnit</a> and <a href="/ssw/Standards/DeveloperGeneral/netTools.aspx#FxCop">Microsoft
                        FxCop</a> are tools to keep your code "healthy". That is why they should be
                easily accessible in every solution so that they can be run with a double click
                of a mouse button.</p>
            <dl class="goodImage">
                <dt>
                    <img src="Images/CodeAuditorProjectFile.gif" width="291" height="364"></dt></dl>
            <p>
                To add a <a href="/ssw/CodeAuditor/Default.aspx">SSW Code Auditor</a> file to your
                solution:
                <ol>
                    <li>Start up SSW Code Auditor</li>
                    <li>Add a <b>new Job</b></li>
                    <li>Add a the solution file to be scanned</li>
                    <li>Select the rules to be run</li>
                    <li>Configure email (not required)</li>
                    <li>Select <b>File > Save As</b> (into the solution's folder as "c<b>odeauditor.SSWCodeAuditor</b>")</li>
                    <li>Open your Solution in Visual Studio</li>
                    <li>Right click and <b>add existing file</b></li>
                    <li>Select the <b>SSW Code Auditor project file</b></li>
                    <li>Right click the newly added file and select "<b>Open With</b>"<br />
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/OpenWith.gif" width="242" height="226"></dt></dl>
                    </li>
                    <li>Point it to the SSW Code Auditor executable</li>
                </ol>
                <br />
                See <a href="RulesToBeingSoftwareConsultantsWorkingInATeam.aspx#CodeAuditor">Do you
                    run SSW Code Auditor?</a>
                <br />
                See <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/CheckCodeByCodeAuditorBeforeCheckIn.aspx">Do you
                    check your code by Code Auditor before check-in?</a>
                <br />
                To add a <a href="/ssw/Standards/DeveloperGeneral/netTools.aspx#FxCop">Microsoft FxCop</a>
                file to your solution:
                <ol>
                    <li>Stat up <b>Microsoft FxCop</b></li>
                    <li>Create a <b>New Project</b></li>
                    <li>Right click the project and <b>Add Target</b></li>
                    <li>Select the Assembly (DLL/EXE) for the project</li>
                    <li>Select <b>File &gt; Save Project As </b>(into the solution's folder as "<b>fxcop.FxCop</b>")</li>
                    <li>Open your Solution in Visual Studio</li>
                    <li>Right click and <b>add existing file</b></li>
                    <li>Select the <b>Microsoft FxCop project file</b></li>
                    <li><b>Right click</b> the newly added file and select "<b>Open With</b>"</li>
                    <li>Point it to the Microsoft FxCop executable</li>
                </ol>
                <br />
                To add a <a href="/ssw/Standards/DeveloperGeneral/netTools.aspx#NUnit">NUnit</a>
                file to your solution:
                <ol>
                    <li>Stat up <b>NUnit</b></li>
                    <li>Create a New Project by selecting <b>File &gt; New Project</b> and save it to your
                        solution directory as "<b>nunit.NUnit</b>"</li>
                    <li>From the <b>Project</b> menu select <b>Add Assembly</b></li>
                    <li>Select the Assembly (DLL/EXE) for the project that contains unit tests</li>
                    <li>Select <b>File &gt; Save Project</b></li>
                    <li>Open your Solution in Visual Studio</li>
                    <li>Right click and <b>add existing file</b></li>
                    <li>Select the <b>NUnit project file</b></li>
                    <li><b>Right click</b> the newly added file and select "<b>Open With</b>"</li>
                    <li>Point it to the NUnit executable</li>
                </ol>
                <p>
                    Now you can simply double click these project files to run the corresponding applications.</p>
                <table class="clsSSWProductTable" id="table42" cellspacing="2" cellpadding="2" summary="Code Auditor">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#MeaningfulNames">SSW
                                Code Auditor</a> that implements this rule.
                        </td>
                    </tr>
                </table><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/AddCAFxCopToSolution.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/AddCAFxCopToSolution.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="NotVSS"></a>Do you know what files not to put into VSS?</h2>
            <p>
                The following files should NOT be included in source safe as they are user specific
                files:
                <ul type="disc">
                    <li>*.scc;*.vspscc - Source Safe Files</li>
                    <li>*.pdb - Debug Files</li>
                    <li>*.user - User settings for Visual Studio .NET IDE</li>
                </ul>
            </p>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/FilesNotToPutIntoVSS.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/FilesNotToPutIntoVSS.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="UseResource"></a>Do you use resource file for storing your static script?</h2>
            <dl class="badCode">
                <dt>
                    <pre>
                                    StringBuilder sb = new StringBuilder();
<br />
                                    sb.AppendLine(@"&lt;script type=""text/javascript"">");
<br />
                                    sb.AppendLine(@"function deleteOwnerRow(rowId)");
<br />
                                    sb.AppendLine(@"{");
<br />
                                    sb.AppendLine(string.Format(@"{0}.Delete({0}.GetRowFromClientId(rowId));", OwnersGrid.ClientID));
<br />
                                    sb.AppendLine(@"}");
<br />
                                    sb.AppendLine(@"&lt;/script>"); </pre>
                </dt>
                <dd>
                    Bad example - Hard to read ?the string is surrounded by rubbish + inefficient because
                    you have an object and 6 strings</dd></dl>
            <dl class="goodCode">
                <dt>
                    <pre>string.Format(@"&lt;script type=""text/javascript""> 
                                    function deleteOwnerRow(rowId)
                                        { {0}.Delete({0}.GetRowFromClientId(rowId)); } &lt;/script> ", OwnersGrid.ClientID);
                                    </pre>
                </dt>
                <dd>
                    Good example Slightly easier to read ?but it is 1 code statement across 10 lines</dd></dl>
            <dl class="goodCode">
                <dt>
                    <pre>
                                    string scriptTemplate = Resources.Scripts.DeleteJavascript;
<br />
                                    string script = string.Format(scriptTemplate, OwnersGrid.ClientID); </pre>
                </dt>
            </dl>
            <dl class="goodCode">
                <dt>
                    <pre>
                                    &lt;script type=""text/javascript"">
<br />
                                    function deleteOwnerRow(rowId)
<br />
                                    {
<br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;{0}.Delete({0}.GetRowFromClientId(rowId));
<br />
                                    }
<br />
                                    &lt;/script> </pre>
                </dt>
            </dl>
            <b>Figure: The code in the first box, the string in the resource file in the 2nd box.
                This is the easiest to read + you can localize it eg. If you need to localize an
                Alert in the javascript</b><br/>
            <dl class="goodImage">
                <dt>
                    <img src="Images/CreateResource.jpg" alt="Create a Resource file" width="664" height="530" />
                </dt>
            </dl>
            <b>Figure: Add a recource file into your project in VS2005</b>
            <dl class="goodImage">
                <dt>
                    <img src="Images/ReadResource.jpg" alt="Create a Resource file" width="664" height="530" />
                </dt>
            </dl>
            <b>Figure: Read value from the new added resource file</b> </p>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/UseResourceFileStoringStaticScript.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/UseResourceFileStoringStaticScript.aspx</a></font>
             </li>
        <li><a name="ChangesOnDateTime"></a>
            <h2 align="left">
                Do you know changes on Datetime in .NET 2.0 and .NET 1.1/1.0</h2>
            In v1.0 and v1.1 of .NET framework when serializing DateTime values with the XmlSerializer,
            the local time zone of machine would always been appended. And when deserializing
            on the receiving machine, DateTime values would be automatically adjusted based
            on time zone offset relative to the sender time zone. See below example:<br>
            <br>
            <dl class="goodCode">
                <dt>
                    <pre>
                                DataSet returnedResult = webserviceObj.GetByDateCreatedAndEmpID(DateTime.Now,'JZ');
                            </pre>
                </dt>
            </dl>
            <b>Figure: front end code in .NET v1.1 (front end time zone: GTM+8)</b><br>
            <dl class="goodCode">
                <dt>
                    <pre>
                                [WebMethod] public DataSet GetByDateCreatedAndEmpID(DateTime DateCreated, String
                                EmpID)
                                <br />
                                {
<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;EmpTimeDayDataSet ds = new EmpTimeDayDataSet();
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;m_EmpTimeDayAdapter.FillByDateCreatedAndEmpID(ds, DateCreated.Date, EmpID);
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;return ds;
<br />
                                }
                            </pre>
                </dt>
            </dl>
            <p>
                <b>Figure: web service method (web service server time zone: GTM+10)</b></p>
            <p>
                When front end calls this web method with the value of current local time (14/01/2006
                11:00:00 PM GTM+8) for parameter 'DateCreated', it expects a returned result for
                date 14/01/2006, while the service end returns data of 15/01/2006, because 14/01/2006
                11:00:00 PM (GTM+8) would be adjusted to be 15/01/2006 01:00:00 AM at the web service
                server (GTM+10)
            </p>
            <p>
                In v1.1/v1.0 you have no way to control this serializing/deserializing behaviour
                on DateTime. In v2.0 with the new notion DateTimeKind you can get a workaround for
                above example,
            </p>
            <dl class="goodCode">
                <dt>
                    <pre>
                                Datetime unspecifiedTime = DateTime.SpecifyKind(DateTime.Now,DateTimeKind.Unspecified);
                                <br />
                                DataSet returnedResult = webservceObj.serviceObj.GetByDateCreatedAndEmpID(unspecifiedTime,'JZ');
                            </pre>
                </dt>
            </dl>
            <p>
                <b>Figure: front end code in .NET v2.0 (front end time zone: GTM+8)</b></p>
            <p>
                In this way, the server end will always get a datetime value of 14/01/2006 11:00:00
                without GTM offset and return what front end expects</p>
           <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ChangesOnDateTime.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ChangesOnDateTime.aspx</a></font>
        </li>
        <li><a name="ConnStringNET2"></a>
            <h2>
                Do you know how to use Connection String in .NET 2.0?
            </h2>
            <p>
                In .NET 1.1 we used to store our connection string in a configuration file like
                this:
            </p>
            <dl class="goodCode">
                <dt>
                    <pre>
                        &lt;configuration&gt;
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;    &lt;appSettings&gt;
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        &lt;add key="ConnectionString" value ="integrated security=true;data source=(local);initial catalog=Northwind"/&gt;
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;    &lt;/appSettings&gt;
<br />
                        &lt;/configuration&gt;</pre>
                </dt>
            </dl>
            <p>
                and access this connection string in code like this:</p>
            <dl class="badCode">
                <dt>
                    <pre>
                            SqlConnection sqlConn = new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["ConnectionString"]);
                        </pre>
                </dt>
                <dd>
                    Bad example - old ASP.NET 1.1 way, untyped and prone to error.</dd>
            </dl>
            <p>
                In .NET 2.0 you can access it in another way:<br>
                Step 1: Setup your settings in your common project. E.g. Northwind.Common
            </p>
            <dl class="Image">
                <dt>
                    <img src="Images/ConnStringNET2_Settings.gif" alt="Settings in Project Properties"></dt><dd>Figure:
                        Settings in Project Properties</dd></dl>
            <br />
            Step 2: Open up the generated App.config under your common project. E.g. Northwind.Common/App.config
            <br />
            <dl class="Image">
                <dt>
                    <img src="Images/ConnStringNET2_CommonApp.gif" alt="Auto generated app.config"></dt><dd>Figure:
                        Auto generated app.config</dd></dl>
            <br />
            Step 3: <s>Copy the content into your entry applications app.config. E.g. Northwind.WindowsUI/App.config</s>
            The new setting has been updated to app.config automatically in .NET 2.0
            <br />
            <dl class="badCode">
                <dt>
                    <pre>
                        &lt;configuration&gt;
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;    &lt;connectionStrings&gt;
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        &lt;add name="Common.Properties.Settings.NorthwindConnectionString"
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                connectionString="Data Source=(local);Initial Catalog=Northwind;Integrated Security=True"
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                providerName="System.Data.SqlClient" /&gt;
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    &lt;/connectionStrings&gt;
<br />
                        &lt;/configuration&gt;
                        </pre>
                </dt>
            </dl>
            </td> </tr> </table>
            <p>
                Then you can access the connection string like this in C#</p>
            <dl class="goodCode">
                <dt>
                    <pre>
                                    SqlConnection sqlConn = new SqlConnection(Common.Properties.Settings.Default.NorthwindConnectionString);
                                </pre>
                </dt>
                <dd>
                    Good example - access our connection string by strongly typed generated settings
                    class.</dd>
            </dl>
            <div class="greyBox">
                <p>
                    Please note these steps does not work for web site model in Visual Studio 2005.
                    However, they work for other projects such as Windows Form, Console application,
                    Class Library and Web Application Project.
                </p>
                <p>
                    This is not an issue in a well designed website, since it's connection string will
                    be defined in the <b>data layer</b> and you can overwrite this connection string
                    in your web.config.
                </p>
            </div><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ConnectionStringinNET2.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ConnectionStringinNET2.aspx</a></font>
        </li>
        <li><a name="DeplicateConn"></a>
            <h2>
                Do you avoid using duplicate connection string in web.config?</h2>
            <p>
                Since we have many ways to use Connection String in .NET 2.0, it is probable that
                we are using duplicate connection string in web.config.
            </p>
            <dl class="badCode">
                <dt>
                    <pre>
                        &lt;connectionStrings&gt;
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&lt;add name="ConnectionString" connectionString="Server=(local);Database=NorthWind;" /&gt;
<br />
                        &lt;/connectionStrings&gt;
<br />
                        &lt;appSettings&gt;
<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&lt;add key="ConnectionString" value="Server=(local);Database=NorthWind;"/&gt;
<br />
                        &lt;/appSettings&gt;
<br />
                     </pre>
                </dt>
                <dd>
                    Bad example - use duplicate connection string in web.config.</dd>
            </dl>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                id="table5">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check
                        for this rule.
                    </td>
                </tr>
            </table><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/DuplicateConnString.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/DuplicateConnString.aspx</a></font>
        </li>
        <li><a name="SSPIcon"></a>
            <h2>
                Do you use Windows Integrated Authentication connection string in web.config?</h2>
            <p>
                Both SQL Server authentication (standard security) and Windows NT authentication
                (integrated security) are SQL Server authentication methods that are used to access
                a SQL Server database from Active Server Pages (ASP).
            </p>
            <p>
                We recommend you use the Windows NT authentication by default, because Windows security
                services operate by default with the Microsoft Active Directory?directory service,
                it is a derivative best practice to authenticate users against Active Directory.
                Although you could use other types of identity stores in certain scenarios, for
                example Active Directory Application Mode (ADAM) or Microsoft SQL Server? these
                are not recommended in general because they offer less flexibility in how you can
                perform user authentication.
            </p>
            <p>
                If not, then add a comment confirming the reason.</p>
            <p>
                <dl class="badCode">
                    <dt>
                        <pre>
                &lt;connectionStrings&gt;
<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&lt;add name="ConnectionString" connectionString="Server=(local);Database=NorthWind;Integrated Security=SSPI;" /&gt;
<br />
                &lt;/connectionStrings&gt;
<br /></pre>
                    </dt>
                    <dd>
                        Bad example - not use Windows Integrated Authentication connection string without
                        comment.</dd>
                </dl>
            </p>
            <p>
                <dl class="goodCode">
                    <dt>
                        <pre>
                &lt;connectionStrings&gt;
<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&lt;add name="ConnectionString" connectionString="Server=(local);Database=NorthWind;Integrated Security=SSPI;" /&gt;
<br />
                &lt;/connectionStrings&gt;
<br /></pre>
                    </dt>
                    <dd>
                        Good example - use Windows Integrated Authentication connection string by default.</dd>
                </dl>
            </p>
            <p>
                <dl class="goodCode">
                    <dt>
                        <pre>
                &lt;connectionStrings&gt;
<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&lt;add name="ConnectionString" connectionString="Server=(local);Database=NorthWind;uid=sa;pwd=sa;" /&gt;
<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&lt;!--It can't use the Windows Integrated because they are using Novell --&gt;
                <br />&lt;/connectionStrings&gt;</pre>
                    </dt>
                    <dd>
                        Good example - not use Windows Integrated Authentication connection string with
                        comment.</dd>
                </dl>
            </p>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/WinIntegratedAuthenticationConnString.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/WinIntegratedAuthenticationConnString.aspx</a></font>
        </li>
        <li><a name="HighLightedString"></a>
            <h2>
                Do you highlight strings in your code editor?</h2>
            <p>
                It is a good practice to highlight string variables or const in source code editor
                of Visual Studio to make them clear. Strings can be easily found especially you
                have long source code.
                <dl class="badImage">
                    <dt>
                        <img src="Images/HighlightString_bad.gif" alt="Default string appearance"></dt>
                    <dd>
                        Default string appearance</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/HighlightString_good.gif" alt="Highlighted string appearance"></dt>
                    <dd>
                        Highlighted string appearance</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/HighlightString_VSOption.gif" alt="Tools | Options form of Visual Studio"></dt>
                    <dd>
                        Tools | Options form of Visual Studio</dd>
                </dl>
            </p>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/HlightStrings.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/HlightStrings.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="PowerShell"></a>Do you use PowerShell to run batch files in Visual Studio?</h2>
            <p>
                Windows Command Processor (cmd.exe) cannot run batch files (.bat) in Visual Studio
                because it does not take the files as arguments. One way to run batch files in Visual
                Studio is to use PowerShell.
            </p>
            <dl class="badImage">
                <dt>
                    <img border="0" src="Images/BadBatch.jpg" alt="Image bad link" />
                    <!-- style="height: 322px; width: 744px"> -->
                </dt>
                <dd>
                    Bad example - Using Windows Command Processor (cmd.exe) for running batch files.</dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img border="0" src="Images/GoodBatch.jpg" alt="Image good link" />
                    <!-- style="height: 349px; width: 747px"> -->
                </dt>
                <dd>
                    Good example - Using PowerShell for running batch files.</dd>
            </dl><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/PowerShell.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/PowerShell.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="Instructions"></a>Do you make an instruction document at the beginning of a web project and improve it gradually?</h2>
            <p>
                An instruction document is very important to maintain a project. With this document,
                people new to it can take over it quickly. This document should be created at the
                beginning of a project and make sure it's updated gradually.</p>
            <p>
                We recommend that you add this document as a solution item and the name be '_Instructions.doc'
                or '_Instructions.docx'.</p>
            <p>
                Here's a summary of what this document would contain. They are not compulsory but
                may necessary for running the project.
            </p>
            <ol>
                <li>Project structure<p>
                    All parts that composes the project and how they work with each other.</p>
                </li>
                <li>Third party stuffs<p>
                    Any software, tools and DLL files that this project uses. (e.g., NHibernate, ComponentArt)</p>
                </li>
                <li>Database configuration</li>
                <li>Other configurations</li>
                <li>FTP information and Deployment procedure</li>
                <li>Other things to take care of</li>
            </ol>
            <dl class="badImage">
                <dt>
                    <img border="0" src="/ssw/standards/rules/Images/BadNetProject.JPG" alt="A project with an instructions" />
                </dt>
                <dd>
                    Bad example - A project without an instructions.</dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img border="0" src="/ssw/standards/rules/Images/GoodNetProject.JPG" alt="A project with an instructions" />
                </dt>
                <dd>
                    Good example - A project with an instructions.</dd>
            </dl><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/InstructionsHelpImproveWebProjects.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/InstructionsHelpImproveWebProjects.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="Ntier"></a>Do you always prefix SQL stored procedure names with the owner
                in ADO.NET code?</h2>
            <p>
                Stored procedure names in code should always be prefixed with the owner (usually dbo).
                This is because if the owner is not specified, SQL Server will look for a procedure
                with that name for the currently logged on user first, creating a performance hit.</p>
            <dl class="badCode">
                <dt>
                    <pre>SqlCommand sqlcmd = new SqlCommand(); sqlcmd.CommandText = &quot;<span style="background-color: #FF0000">
                        proc_InsertCustomer</span>&quot; sqlcmd.CommandType
                            = CommandType.StoredProcedure; sqlcmd.Connection = sqlcon;</pre>
                </dt>
                <dd>
                    Bad Example</dd>
            </dl>
            <dl class="goodCode">
                <dt>
                    <pre>SqlCommand sqlcmd = new SqlCommand(); sqlcmd.CommandText = &quot;
                            <span style="background-color: #00FF00">dbo.proc_InsertCustomer</span>&quot;; sqlcmd.CommandType
                            = CommandType.StoredProcedure; sqlcmd.Connection = sqlcon;</pre>
                </dt>
                <dd>
                    Good Example</dd>
            </dl>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                id="table4">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#Ntier">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/PrefixSQLStoredProcedureNames.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/PrefixSQLStoredProcedureNames.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="AtQuoting"></a>Do you always make file paths @-quoted?</h2>
            <p>
                In C#, backslashes in strings are special characters used to produce &quot;escape
                sequences&quot;, for example \r\n creates a line break inside the string. This means
                that if you want to put a backslash in a string you must escape it out by inserting
                two backslashes for every one, e.g. to represent <b>C:\Temp\MyFile.txt</b> you would
                use <b>C:\\Temp\\MyFile.txt</b>. This makes the file paths hard to read, and you
                can't copy and paste them out of the application.</p>
            <p>
                By inserting an @ character in front of the string, e.g. <b>@&quot;C:\Temp\MyFile.txt&quot;</b>,
                you can turn off escape sequences, making it behave like VB.NET. File paths should
                always be stored like this in strings.</p>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                id="table6">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check
                        for this rule.
                    </td>
                </tr>
            </table><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/MakeFilePathsAtQuoting.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/MakeFilePathsAtQuoting.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="OptionExplicit"></a>Do you always use Option Explicit?</h2>
            <div class="greyBox">
                Option Explict should always only be used in VB.NET.
            </div>
            <p>
                <br />
                This will turn many of your potential runtime errors into compile time errors, thus
                saving you from potential time bombs!<br />
                <br />
            </p>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                id="table7">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#OptionExplicit">SSW
                            Code Auditor</a> to check for this rule.
                    </td>
                </tr>
            </table>
            <br />
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/UseOptionExplicit.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/UseOptionExplicit.aspx</a></font>
        </li>
        <li>
            <h2>
                <a name="AsyncCallBack"></a>Do you use the Asynchronous and CallBack method when invoking
                web methods?</h2>
            <p>
                Web service and web invoking becomes more and more popular today as the distributed
                systems are widely deployed. However, invoking the normal method may cause a disaster
                when applied to web method because transmitting data over Internet may cause your
                program to hang for a couple of minutes.
            </p>
            <dl class="badCode">
                <dt>private static string LoadContentFromWeb(string strUri)
                    <br />
                    <br />
                    {
                    <br />
                    ...
                    <br />
                    <br />
                    <span style="background-color: #FFFF00">WebResponse response = request.GetResponse();
                    </span>
                    <br />
                    <br />
                    ...<br />
                    }</b></td> </dt>
                <dd>
                    Figure: Invoke web method by the normal way (Bad - because this will hang your UI
                    thread)</dd>
            </dl>
            <p>
                The correct way to invoke web method is using asynchronous call to send a request
                and use the delegated CallBack method to read the response, see code below:</p>
            <dl class="goodCode">
                <dt>&nbsp;public static void GetOnlineVersionAsync(string strUri)
                    <br />
                    {
                    <br />
                    &nbsp;&nbsp;&nbsp; try<br />
                    &nbsp;&nbsp;&nbsp; {<br />
                    &nbsp;&nbsp;&nbsp;&nbsp; ...<br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="background-color: #FFFF00">IAsyncResult
                        r = request.BeginGetResponse(new AsyncCallback(ResCallBack), request);</span><br />
                    &nbsp;&nbsp;&nbsp;&nbsp; }<br />
                    &nbsp;&nbsp;&nbsp;&nbsp; catch(WebException ex)<br />
                    &nbsp;&nbsp;&nbsp; {<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Console.WriteLine(ex.ToString()) ;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp; }<br />
                    }<br />
                    <br />
                    <br />
                    <br />
                    private static void ResCallBack(IAsyncResult ar)<br />
                    {<br />
                    &nbsp;&nbsp; try<br />
                    &nbsp;&nbsp; {<br />
                    <span style="background-color: #FFFF00">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; string content
                        = string.Empty;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WebRequest req = (WebRequest)ar.AsyncState;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WebResponse response = req.EndGetResponse(ar);</span><br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ...<br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RaiseOnProductUpdateResult(content);<br />
                    <br />
                    &nbsp;&nbsp; }<br />
                    &nbsp;&nbsp; catch(WebException ex)<br />
                    &nbsp;&nbsp; {<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Console.WriteLine(ex.ToString());<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RaiseOnProductUpdateResult(string.Empty);<br />
                    &nbsp;&nbsp;&nbsp; }<br />
                    } </dt>
                <dd>
                    Figure: Invoke web method by using asynchronous method and CallBack (Good - UI thread
                    will be free once the request has been sent)</dd>
            </dl>
            <p>
                When working with Web Service, asynchronous methods will be automatically generated
                by your web services proxy.</p>
            <p>
                <img border="0" src="Images/AsyncCallBack-Rulest1.gif" width="483" height="114"><br />
                <b>Figure: Automatically generated asynchronous methods</b><p>
            &nbsp; <br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/AsynchronousMethodandCallBack.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/AsynchronousMethodandCallBack.aspx</a></font>
            </li>
            <li>
            <h2>
                <a name="TraceFail"></a>Do you use Trace.Fail or set AssertUIEnabled="true" in your web.config?</h2>
                <p>
                    Have you ever seen dialogs raised on the server-side? These dialogs would hang the thread they were on, and hang IIS until they were dismissed.
                    In this case, you might use Trace.Fail or set AssertUIEnabled="true" in your web.config.
                    <br />
                    See Scott's blog <a href="http://www.hanselman.com/blog/PreventingDialogsOnTheServerSideInASPNETOrTraceFailConsideredHarmful.aspx">Preventing Dialogs on the Server-Side in ASP.NET or Trace.Fail considered Harmful</a>
                </p>
                <dl class="badCode">
                    <dt>
                        &nbsp;public static void ExceptionFunc(string strException)
                        <br />
                        {
                        <br />
                        &nbsp;&nbsp;&nbsp; System.Diagnostics.Trace.Fail(strException);<br />
                        }<br />
                    </dt>
                    <dd>Figure: Never use Trace.Fail</dd>
                </dl>
                <dl class="badCode">
                    <dt>
                        &lt;configuration&gt;<br /> 
                        &nbsp;&nbsp;&nbsp;&lt;system.diagnostics&gt;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;assert AssertUIEnabled="true" logfilename="c:\log.txt" /&gt;<br />
                        &nbsp;&nbsp;&nbsp;&lt;/system.diagnostics&gt;<br />
                        &lt;/configuration&gt;<br />
                    </dt>
                    <dd>Figure: Never set AssertUIEnabled="true" in web.config</dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        &lt;configuration&gt;<br /> 
                        &nbsp;&nbsp;&nbsp;&lt;system.diagnostics&gt;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;assert AssertUIEnabled="false" logfilename="c:\log.txt" /&gt;<br />
                        &nbsp;&nbsp;&nbsp;&lt;/system.diagnostics&gt;<br />
                        &lt;/configuration&gt;<br />
                    </dt>
                    <dd>Figure: Should set AssertUIEnabled="false" in web.config</dd>
                </dl><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/TraceFailOrSetAssertUIEnabledTrue.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/TraceFailOrSetAssertUIEnabledTrue.aspx</a></font>
            </li>
            <li><a name="RegenerateStandard"></a>
            <h2>Do you make your projects regenerated easily?</h2>
            <p>If you projects is generated by code generators (<a href="/ssw/Standards/Developergeneral/netTools.aspx#NetTiers">Code Smith</a>, RAD Software NextGeneration, etc.), you should make sure it will be regenerated easily.</p>
            <p>Code generators can be used to generate whole Windows and Web interfaces, as well as data access layers and frameworks for business layers, making them an excellent time saver. However making the code generators generate your projects for the first time takes much time and involves lots of configurations.</p>
            <p>In order to make it easier to do the generation next time, we recommend you putting the command line of operations into a file called "_Regenerate.bat". When you want to generate it next time, just run the bat file and all things are done in a blink.</p>
            <dl class="code">
                <dt><pre>cs D:\DataDavidBian\Personal\New12345\NetTiers.csp</pre></dt>
                <dd>Figure: An example of command line of Code Smith for NorthWind</dd>
                </dl>           
            <p>Thus "_Regenerate.bat" file must exist in your projects (of course so must other necessary resources).</p>
            <dl class="goodImage">
            <dt><img  src="/ssw/standards/rules/images/RegenerateBat.jpg"></dt>
            <dd>Figure: Good - Have _Regenerate.bat in the solution</dd>
            </dl>

                <br/>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/RegenerateStandard.aspx">http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/RegenerateStandard.aspx</a></font>
          
            </li>
    </ol>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=RT">Ryan Tee</a>
    </p>
</asp:Content>
