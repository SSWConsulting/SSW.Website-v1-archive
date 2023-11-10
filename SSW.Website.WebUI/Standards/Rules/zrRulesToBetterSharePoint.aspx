<%@ Page Title="Rules to Better SharePoint" Language="vb" AutoEventWireup="false"
    MasterPageFile="~/Masters/Default.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <div class="Intro">
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532305368617265506F696E74')">
            Let us know</a> what you think.
    </div>
    <div class="TableOfContents">
        <h3>
            SSW Rules to Better SharePoint</h3>
        <ol>
            <li><a href="#ProductionEnvironment">Never touch production environment with SharePoint
                designer</a></li>
            <li><a href="#WebParts">Developers should work on all custom webparts in a their own
                SharePoint development environment</a></li>
            <li><a href="#ChangeVSeWSS">Make small incremental changes to your VSeWSS projects</a></li>
            <li><a href="#CustomizeWebparts">Customize your SharePoint webparts</a></li>
            <li><a href="#DevInsideVM">Do you know to develop inside a VM</a></li>
            <li><a href="#SPVersion">SharePoint version</a></li>
            <li><a href="#WithDesigner">Work with SharePoint designer</a></li>
            <li><a href="#SiteColumns">Do you always use Site Columns instead of List Columns?</a></li>
            <li><a href="#Favicon">Does your SharePoint site has favicon?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="ProductionEnvironment"></a>Never touch production environment with SharePoint
                    designer.</h2>
                <ul type="circle">
                    <li>SharePoint designer can silently reformat your code and introduce errors. </li>
                    <li>If you modify any masterpage or pagelayout file with SharePoint designer, it becomes
                        ghosted. This means that SharePoint is now looking at a customized version stored
                        in the database rather than the version on the file system. You then can't deploy
                        changes using SharePoint solutions & features. </li>
                </ul>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/ProductionEnvironment.aspx">
                    http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/ProductionEnvironment.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="WebParts"></a>Developers should work on all custom webparts in their own
                    SharePoint development environment.</h2>
                This is to prevent their work affecting other developers. Sort of things you can
                expect to happen:
                <br />
                <ul type="circle">
                    <li>IIS resets need to be done frequently, which stops the SharePoint website working.
                    </li>
                    <li>Custom webparts can easily introduce memory leaks which can stop SharePoint working.
                    </li>
                </ul>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/CustomWebparts.aspx">
                    http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/CustomWebparts.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ChangeVSeWSS"></a>Make small incremental changes to your VSeWSS projects.</h2>
                <ul type="circle">
                    <li>When working on packaging SharePoint artefacts into Features & Solutions, you should
                        always make small incremental changes to your VSeWSS projects. Each time you should
                        build & deploy to check you haven't broken anything.</li>
                    <br />
                    <li>You should regularly make labels in TFS so you can quickly compare your changes
                        against previous working versions to identify problems.</li>
                </ul>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/ChangeVSeWSSProjects.aspx">
                    http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/ChangeVSeWSSProjects.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="CustomizeWebparts"></a>Customize your SharePoint webparts.</h2>
                <p>
                    Try to customize existing out-of-the-box SharePoint webparts before you roll your
                    own.</p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/CustomizeYourSharePointWebparts.aspx">
                    http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/CustomizeYourSharePointWebparts.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="DevInsideVM"></a>Do you know to develop inside a VM?
                </h2>
                <p>
                    All SharePoint customization and development must be done on a Virtual Machine.
                    No ifs, no buts.</p>
                <ol>
                    <li>It's very important to correctly setup a SharePoint environment for development.
                        Correctly configured, this will save you a lot of trouble later on.</li>
                    <li>From time to time, you can seriously screw/damage a SharePoint installation during
                        development and it is best not to install SharePoint on your day-to-day machine.
                    </li>
                    <li>Additionally, when you start a new SharePoint project you don't want to carry all
                        the baggage from previous customizations that could potentially affect your new
                        project.</li>
                </ol>
                <p>
                    There are many other benefits of using a virtual machine for development</p>
                <ol>
                    <li>Virtual machines can be fired up and shut down easily</li>
                    <li>Virtual machines can run faster, via being located on a different server and thus
                        it doesn't waste developers' own computer resources</li>
                    <li>Virtual machines can be copied and brought to a client for demonstration or testing</li>
                    <li>They are the best way to quickly test or experiment with something new</li>
                    <li>Bad: There might be more work required to activate additional servers</li>
                    <li>Bad: You need at least 2 GB of RAM</li>
                </ol>
                <p>
                    If you are after a clean, pre-configured SharePoint server image to test SharePoint,
                    the easiest way is to <a href="http://www.microsoft.com/downloads/en/results.aspx?freetext=sharepoint+vm">
                        download a trial VM from Microsoft</a><br />
                    <a href="/ssw/Standards/DeveloperSharePoint/VMDevelopment.aspx">More info on setting
                        up SharePoint VM</a></p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/CustomWebparts.aspx">
                    http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/CustomWebparts.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="SPVersion"></a>SharePoint version?
                </h2>
                <p>
                    When your SharePoint website was built successful, you need to create SharePoint
                    version to let users know what version is it</p>
                <p>
                    <img src="/ssw/Standards/Rules/Images/SP_version.jpg" alt="SharePoint Version" /><br />
                    <a href="/ssw/Standards/Rules/RulestoBetterCode.aspx">More info on better code</a></p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/SPVersion.aspx">
                    http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/SPVersion.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="WithDesigner"></a>Work with SharePoint designer.
                </h2>
                <ul>
                    <li>Don't use inline CSS</li>
                    <li>Always put &lt;div class="..."&gt; wrappers around SharePoint controls. This allows
                        us to define styles for SharePoint controls. It is possible to use CssClass like
                        ASP.NET, but then we lose control to SharePoint regarding how that control will
                        be rendered. </li>
                    <li>Naming convention for control id! Don't get lazy. </li>
                    <li>Turn off Auto indent.
                        <br />
                        <img src="/ssw//Standards/Rules/Images/SPIndent.gif" alt="Uncheck Auto indent" />
                    </li>
                </ul>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/WorkWithSPDesigner.aspx">
                    http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/WorkWithSPDesigner.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="SiteColumns"></a>Do you always use Site Columns instead of List Columns?
                </h2>
                <p>
                    A site column is created on a site level and visible to all lists and content types
                    within that site (and subsite).
                </p>
                <ul>
                    <li>New in SharePoint 2007 (WSS v3)</li>
                    <li>The same column can be added to different Content Types, lists, list templates</li>
                    <li>Allows you to make modifications at one place and SharePoint can apply the changes
                        for you across the different lists and content types (doesn't try to fix the content
                        for you though) </li>
                    <li>More visibility of the customization we are applying to the SharePoint website
                    </li>
                    <li>Make sure the site column is added to our own group description such as "SSW Columns"
                        <br />
                        <img src="/ssw//Standards/Rules/Images/SSWColumns.gif" alt="SSW Columns" />
                    </li>
                </ul>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/UseSiteColumns.aspx">
                    http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/UseSiteColumns.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="Favicon">Does your SharePoint site has favicon?</a></h2>
                <p>
                    A Favicon is a small image file included on nearly all professional developed SharePoint
                    sites. The Favicon reflects the look and feel of the SharePoint site or the organizations
                    logo.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/good_SP_favicon.gif" /></dt>
                    <dd>
                        Figure: Good Example - Using the favicon gives your SharePoint site a very professional
                        look and feel.</dd>
                </dl>
                <dl class="badImage">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/bad_SP_favicon.gif" /></dt>
                    <dd>
                        Figure: Bad Example</dd>
                </dl>
                <p>
                    Internet Explorer ("IE") 5.0 and above has a function that, if someone bookmarks
                    the page, It will look for favicon.ico from the directory of the web page, if not
                    found it will look for it from the root directory of the SharePoint site. Otherwise
                    it will use the default Icon.
                </p>
                <p>
                    To implement the favicon:</p>
                <ol>
                    <li>Copy your company's .ico icon to the root of the site and rename it to <b>favicon.ico</b><li>
                    Add the yellow code between the &lt;HEAD&gt; tags in your MasterPage.master (or
                    regular HTML/ASPX page)
                </ol>
                Note: If you put the icon with the default file name of favicon.ico in the root
                directory of your domain, you don't need to add the following code. Because each
                time your Web page is added to a user's favorites, Internet Explorer automatically
                searches for this file from the root directory and places the icon next to all the
                favorites and quick links originating from your site.<br />
                <table class="clsSSWTable">
                    <tr>
                        <td>
                            <p>
                                &lt;head runat=&quot;server&quot;&gt;<br>
                                &lt;title&gt;Coogee Australia - Self catering self contained holiday accommodation,
                                water views, close to beach&lt;/title&gt;<br>
                                &lt;meta name=&quot;vs_targetSchema&quot; content=&quot;http://schemas.microsoft.com/intellisense/ie5&quot;&gt;<br>
                                &lt;link href=&quot;http://www.ssw.com.au/ssw/Include/ssw.css&quot; type=&quot;text/css&quot;
                                rel=&quot;stylesheet&quot;&gt;<br>
                                <span class="highlight">&lt;link rel=&quot;shortcut icon&quot; href=&quot;~/Style Library/SSW/favicon.ico&quot;
                                    type=&quot;image/x-icon&quot; /&gt;</span><br>
                                &lt;/head&gt;</p>
                        </td>
                </table>
                <b>Figure: One line of HTML lets you add your company's icon to&nbsp; your web page</b><br>
                <p>
                    For more information about the shortcut icon, check out <a href="/ssw/Redirect/ShortcutIcon.htm"
                        target="_blank">msdn.microsoft.com</a>
                    <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif"
                        width="17" height="11">
                </p>
                <p>
                    &nbsp;</p>
                <p>
                    <span class="productBox">We have a similar rule in <a href="/ssw/Standards/Rules/RulestoBetterWebsitesGraphics.aspx#Favicon">
                        Rules To Better Websites - Graphics </a></span>
                </p>
                <br />
                <p>
                    <span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code
                        Auditor</a> to check for this rule.</span></p>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/SPSiteFavicon.aspx">
                    http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterSharePoint/Pages/SPSiteFavicon.aspx</a></font>
            </li>
        </ol>
        <h2>
            Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JL">John Liu</a><br />
        </p>
    </div>
</asp:Content>
