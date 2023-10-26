<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master"
    Title="Using eXtreme Emails! to Manage Projects" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <asp:SiteMapPath ID="SiteMapPath1" SiteMapProvider="SSWXmlSiteMapProvider" runat="server">
    </asp:SiteMapPath>

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>
    
    <p>
        <img src="Images/AgileTemplate.gif" alt="SSW Agile Template" width="278" height="83" /><br />
    </p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#ReleasePlanCodingTest">How to generate Release Plan using the SSW Agile Template for coding tester?</a></li>
        </ol>
    </div>
    <div id="MainContent">
        <ol>
            <li><a name="ReleasePlanCodingTest"></a>
                <h2>
                    How to generate Release Plan using the SSW Agile Template for coding tester?</h2>
                <ul>
                    <li>Find the SSW.CodingTest project in TFS</li>
                    <li>Create iteration for tester
                        <dl class="image">
                            <dt><img src="Images\CreateIteration.gif" alt="Create iteration in TFS" /></dt>
                            <dd>
                                Figure: Create iteration in TFS
                            </dd>
                        </dl>
                    </li>
                    <li>Name the iteration as Release_01_TesterName e.g. Release_01_AdamCogan</li>
                    <li>Tell tester to use the iteration</li>
                    <li>After testing, close all the tasks in the iteration</li>
                </ul>
                <p>
                    See our <a href="/ssw/Standards/Rules/RulesToBetterProjectManagementWithTfs.aspx">
                    Rules to Better Project Management with TFS (Creating and Managing Release Plans)</a>
                </p>
            </li>
        </ol>
    </div>
</asp:Content>
