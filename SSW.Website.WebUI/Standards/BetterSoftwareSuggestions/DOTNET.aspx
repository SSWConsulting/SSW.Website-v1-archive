<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft .NET Framekwork Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label><p>
        <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14">
        Indicates important rule</p>
    <p>
        <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
            style="{width: 100%}">
            <tr>
                <td>
                    <ol>
                        <li><a href="#ListOfServers">Have a native call to get a list of available SQL Servers.</a></li>
                        <li><a href="#DotNETDll">.NET dll hell :-)</a></li>
                    </ol>
                </td>
            </tr>
        </table>
        <ol>
            <li><a name="ListOfServers"></a>
                <h2>
                    Have a native call to get a list of available SQL Servers.</h2>
                <p>
                    At the moment, to get a list of available SQL Servers, you need to add the COM library sqldmo.dll
                    in your installation package. For more information, see our Knowledge Base article <a href="/ssw/KB/KB.aspx?KBID=Q1258902">'I got an error when I was just trying to select a server'</a>.</p>
                <p>
                    We don't think this is a very good solution and Microsoft should solve it by adding
                    a native .NET library call which allows you to get a list of servers in your .NET
                    applications.
                </p>
            </li>
            <li><a name="DotNETDll"></a>
                <h2>
                    .NET dll hell :-)</h2>
                <dt>
                  <dl class="image">
                    <dt>
                        <img src="Images/dotnet_dll_1.jpg" alt="Dotnet dlls" /></dt>
                    <dd>
                        Figure: The # of .dlls is getting out of hand - please make a Tree view where all System.* assemblies go under a single root-node</dd>
                  </dl>
                
                </dt>
                    
            </li>
        </ol>
        <h2>
            Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></p>
    </p>
</asp:Content>
