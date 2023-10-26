<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master"
    Title="SSW Agile Template - Screenshots" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider">
    </asp:SiteMapPath>
    <br />

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

    <br />
    <p>
        <img src="Images/Agiletemplate.gif" alt="Agile Template Logo" /></p>
    <p>
        <b>Keep your team agile</b></p>
    <p>
        Do you want to have a better understanding of your project progress? SSW Agile Template
        is built on top of MSF Agile Template, and it has customized work item types to
        help you track your project as well as identify issues. Check our <a href="/ssw/Standards/Rules/RulesToBetterProjectManagementWithTFS.aspx">
            Rules to Better Project Management with TFS</a> for more details.
    </p>
    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
        style="width: 100%">
        <tr>
            <td>
                <b>SSW Agile Template User Guide</b><br />
                1.<a href="#Baseline">Baseline Tracking</a>
                <br />
                2.<a href="#AdditionalTask">Additional Task</a>
                <br />
                3.<a href="#URL">URL</a>
                <br />
                4.<a href="#Description">Description, support HTML</a><br />
                5.<a href="#ReleasePlan">Release Plan Report</a>
                <br />
                6.<a href="#ReleaseUpdate">Release Update Report</a><br />
            </td>
        </tr>
    </table>
    <ol>
        <li><a name="Baseline"></a>
            <h2>
                Baseline tracking</h2>
            <p>
                With our SSW Agile Template task work item, you can enter baseline work for each
                task; together with Remaining work and Completed work, it allows you to track your
                progress and budget usage.
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/Baseline.jpg" alt="Baseline Tracking" />
                </dt>
                <dd>
                    Figure: Baseline tracking</dd>
            </dl>
        </li>
        <li><a name="AdditionalTask"></a>
            <h2>
                Baseline tracking</h2>
            <p>
                Additional requirement is common in software project, however this kind of task
                will affect your delivery schedule and blow out your budget; using SSW Agile Template,
                you can put additional task into different category, which allow the project manager
                track these sensitive items easily.
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/AdditionalTask.jpg" alt="Additional Task/">
                </dt>
                <dd>
                    Figure: Additional Task</dd>
            </dl>
        </li>
        <li><a name="URL"></a>
            <h2>
                URL</h2>
            <p>
                Link your work item with the actual URL of the website page; this is especially
                useful when you have a big amount of pages to maintain.
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/URL.jpg" alt="URL" />
                </dt>
                <dd>
                    Figure: URL</dd>
            </dl>
        </li>
        <li><a name="Description"></a>
            <h2>
                Description, Support HTML</h2>
            <p>
                HTML is extremely useful to describe the requirement; the old MSF Agile template
                doesn¡¯t allow you to use HTML in your description, we finally have this fixed in
                our template.
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/HTMLDescription.jpg" alt="Description, support HTML" />
                </dt>
                <dd>
                    Figure: Description, support HTML</dd>
            </dl>
        </li>
        <li><a name="ReleasePlan"></a>
            <h2>
                Release Plan Report</h2>
            <p>
                Release plan report will give you an overview of the project, and help the project
                manager have a better idea of the work load. View our <a href="http://www.ssw.com.au/ssw/Standards/Rules/RulesToBetterProjectManagementWithTFS.aspx#ReleasePlan">
                    sample report on our real project SSW Code Auditor.</a>
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/ReleasePlanReport_Large.jpg" alt="Release Plan Report" />
                </dt>
                <dd>
                    Figure: Release Plan Report</dd>
            </dl>
        </li>
        <li><a name="ReleaseUpdate"></a>
            <h2>
                Release Update Report</h2>
            <p>
                Client involvement is one of the key factors in Agile Development Process, SSW Release
                Update Report can easily help your client to understand the progress as well as
                help the project managers to identify issues and take action. View our <a href="http://www.ssw.com.au/ssw/Standards/Rules/RulesToBetterProjectManagementWithTFS.aspx#UpdateDebrief">
                    sample report on our real project SSW Agile Template. </a>
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/ProgressReport_Large.jpg" alt="Release Update Report" />
                </dt>
                <dd>
                    Figure: Release Update Report</dd>
            </dl>
        </li>
    </ol>
    <br />
</asp:Content>
