<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Link Auditor - Tool to Automate Link Validation" %>

<%@ Register TagPrefix="SSW" TagName="ProductTestimonial" Src="~/Components/ProductTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="images/LinkAuditor-logo.png" />
    <h2>The best tool to check and validate your website's links</h2>
</asp:Content>

<asp:Content ContentPlaceHolderID="asideright" runat="server">
    <div id="additionalInfo" class="noPrint">
        <p><img src="images/productBox.gif" width="163" height="190" /></p>
        <div id="productSidebar" class="noPrint">
            <div class="download">
                <p><a href="/ssw/Products/ProdCategory.aspx?CategoryID=LAU" class="button next red btn">Purchase</a>
                <a href="http://sswlinkauditor.com/" target="_blank" class="button next ignore btn">Website</a></p>
            </div>
        </div>
    </div>
    <h6>Product Info</h6>
    <div class="section">
        <ul>
            <li><a href="/ssw/LinkAuditor/UserGuide.aspx">Screenshots</a></li>
            <li><a href="/ssw/LinkAuditor/Flyer/linkauditorflyer.pdf">Promotional Flyers</a></li>
        </ul>
    </div>
    <SSW:InfoBox ID="InfoBox1" runat="server" Css="interInfoBoxSide" Text="<h1>Attention: SSW Developers</h1><a href='../Products/prodsummarylist.aspx'>This page is on the new template as it is one of the 6 products we are focused on.</a>"></SSW:InfoBox>
    <SSW:ProductTestimonial ID="ProductTestimonial" runat="server" ProdID="LAU" CatID="10DOTNET"
        Display="SideBarRight"></SSW:ProductTestimonial>

    <h6>Awards</h6>
    <div class="section">
        <img src="/ssw/Images/Awards/Tucows40X80(bw).gif" width="80" height="41" class="award">
        <img src="/ssw/Images/Awards/SofoTex5Stars40X80(bw).gif" class="award" width="80" height="40">
    </div>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <meta id="keywords" name="keywords" content="check links, validate links, best tool, automatically, locate broken links, scan schedule, Increase Google Page Rank, Download Free" />
    <meta name="description" content="The best tool to check and validate your website's links, Take control of your website and automatically locate broken links, Increase Google Page Rank for your website pages, Scan your website automatically by setting a schedule, Free trial version" />

    <div id="productInfo">
        <div id="productDescription">

            <div class="greybox">
                <h4>This is an old page. Check out the new website at <a href="https://sswlinkauditor.com/" target="_blank">sswlinkauditor.com</a></h4>
            </div>

            <div id="productHighlights">
                <div class="noneFloat">


                    <ul class="good">
                        <li>Take control of your website and automatically locate broken links.</li>
                        <li>Increase Google Page Rank for your website pages.</li>
                        <li>Scan your website automatically by setting a schedule.</li>
                    </ul>
                </div>
            </div>

            <p>
                Are you finding it impossible to manage links on your ever growing website? A common
                problem companies face is maintaining links over ever growing web sites. SSW Link
                Auditor is a simple and powerful solution to the problem. This fast and effective
                utility keeps your website up to date, and helps to resolve intricate linking and
                referencing issues. An added benefit you get is an increase in Google Page Rank
                for your pages.
            </p>
            <p>
                Built in C#, SSW Link Auditor lets you take control of your website and automatically
                locate broken links,
                <br />
                allowing you to focus on the content of your website.
            </p>
            <p>
                As an example, SSW has 166,000 links and 1,500 pages to maintain. SSW Link Auditor
                is a simple and powerful solution to our problem.
            </p>
            <h2>Key Features & Benefits</h2>
            <p>
                The main SSW Link Auditor features are:
            </p>
            <ul class="good">
                <li>Reports on broken and warning links</li>
                <li>Reports on broken anchors</li>
                <li>Follow redirect and META refresh tag pages</li>
                <li>Reports on links which do not follow SSW Link Auditor Rules</li>
                <li>Check pages' Google PageRank and Inclusion</li>
                <li>Utilizes multithreading for improved performance</li>
                <li>Resolves intricate linking and referencing issues</li>
                <li>Scheduled scanning</li>
                <li>Support for Scanning SharePoint 2010 sites</li>
            </ul>
            <br />
            <table border="0" cellspacing="0" class="normal tblScreenshots">
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial1.gif" alt="screen shot" width="180" height="141" />
                    </td>
                    <td valign="top">
                        <b>Great, user-friendly wizard style interface</b> With our <a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx">standards compliant</a> user interface, you are sure to have a consistently
                        great operating environment with SSW products.
                        <br />
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial9.gif" alt="Partial Screen Shot 9" width="180" height="150" />
                    </td>
                    <td valign="top">
                        <b>Different scan types support</b> We offer 4 different kinds of project templates,
                        to make your scan much easier and faster.
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial2.gif" alt="Partial Screen shot 2" width="180" height="141" />
                    </td>
                    <td valign="top">
                        <b>Command line execution support </b>You can run SSW Link Auditor in command line,
                        furthermore, you can save your settings in a project file, and then use this to
                        do a scheduled scanning, which makes your scan more flexible.
                        <br />
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial3.gif" alt="Partial Screen Shot 3" width="180" height="141" />
                    </td>
                    <td valign="top">
                        <b>Utilizes multithreading for improved performance</b> SSW Link Auditor supports
                        multi-thread scan, which can highly increase performance, you can choose the number
                        of threads to be started.
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial4.gif" alt="Partial Screen Shot 4" width="180" height="141" />
                    </td>
                    <td valign="top">
                        <b>Resolves intricate linking and referencing issues</b> SSW Link Auditor can be
                        configured to deal with intricate links and references; it's very useful even for
                        large and very complicated sites.
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial5.gif" alt="Partial Screen Shot 5" width="180" height="141" />
                    </td>
                    <td valign="top">
                        <b>Uses the power of Microsoft SQL Reporting Services </b>This means you can change
                        existing reports, or build new ones with an easy to use, and industry standard reporting
                        tool. <a href="/ssw/LinkAuditor/UserGuide.aspx#RSReports">Details...</a>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial6.gif" alt="Partial Screen Shot 6" width="180" />
                    </td>
                    <td valign="top">
                        <b>Customized authentication</b> To check links which need authentication, you can
                        assign a username/password pair and choose a proxy first. <a href="/ssw/KB/KB.aspx?KBID=Q1748183">Details...</a>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td width="100">
                        <img src="Images/ScreenPartial7.gif" alt="Partial Screen Shot 7" width="180" height="141" />
                    </td>
                    <td valign="top">
                        <b>Improve your Google PageRank</b> Is the link <a href="http://www.ssw.com.au/ssw/Default.aspx">www.ssw.com.au/ssw/Default.aspx</a> and <a href="http://www.ssw.com.au/SSW/Default.aspx">www.ssw.com.au/SSW/Default.aspx</a> the same. Well to most Microsoft developers
                        it is the same, because IIS is not case sensitive. However other web servers are
                        case sensitive and for this reason Google is case sensitive. So these 2 links will
                        give mean your PageRank is split across 2 different pages. So use Link Auditors
                        Inconsistently Cased Links report to increase your page ranking.
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
            <p>
                Features also include:
            </p>
            <ul>
                <li>Case insensitive reporting option</li>
                <li>Customized authentication </li>
                <li>Inconsistently cased links report (useful for improving Google rankings) </li>
            </ul>
            <p>
                See more screenshots in the <a href="UserGuide.aspx">Link Auditor User Guide</a>.
            </p>
            <h2 class="thinner">Upcoming Features</h2>
            <ul>
                <li>More Google juice tips</li>
                <li>Support for Scanning SharePoint 2013 sites</li>
                <li>Generating Google Site Maps</li>
                <li>On-the-fly HTML and CSS validation</li>
                <li>SQL Compact support</li>
                <li>Support for analyzing JavaScript</li>
            </ul>
            <br />
            <h2>How it Works</h2>
            <p>
                SSW Link Auditor is a powerful utility that enables you to take control of your
                website and automatically locate broken links. This fast and effective utility resolves
                intricate linking and referencing issues.
            </p>
            <p>
                <a href="../Standards/DeveloperInternet/HowtoFixBrokenLinks.aspx#comparison">Compare</a>
                SSW Link Auditor to other products on the market.
            </p>
            <br />
            <h2>System Requirements
            </h2>
            <ul>
                <li><a href="/ssw/Database/LinksSoftwareUpdates.aspx#MicrosoftNET">.NET Framework 4.5</a></li>
                <li><a href="http://www.microsoft.com/sqlserver/2008/en/us/default.aspx">SQL Server
                    2008/2012</a></li>
            </ul>
            <br />
            <a name="Rules"></a>
            <h2>Predefined Rules - these are rules link auditor has</h2>
            <p>
                <a href="/ssw/Standards/Rules/RulesToBetterSSWProducts.aspx">Do they go in Code Auditor
                    or Link Auditor?</a>
            </p>
            <ol>
                <li><a href="/ssw/Standards/Rules/RulesToBetterGoogleRankings.aspx#DescriptiveTags">Are your &lt;title&gt;, &lt;h1&gt;, and &lt;h2&gt; tags descriptive?</a></li>
                <li><a href="/ssw/Standards/Rules/RulesToBetterGoogleRankings.aspx#Relevancy">Do your
                    links have relevancy to the page you're linking to?</a></li>
            </ol>
            <h2>What does the unregistered version give me?</h2>
            <p>
                In respect to the unregistered version we know you want to see it working before
                you buy it. We aim for that.
                <br>
                Note: we also give free version targeted to the little guys<br>
                More details see <a href="/ssw/KB/KB.aspx?KBID=Q658302">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q658302</a>
            </p>
            <p>
                SSW provides free phone and email support to answer queries on registered products.
            </p>
            <h2>Getting Support</h2>
            <p>
                If you can't find it in the product documentation then check our <a href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=LAU">knowledge base</a> for further information and tips about this product.
            </p>
            <p>
                Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a>
                and <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175','FeedBack on SSW Link Auditor')"
                    onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
                    onmouseout="javascript:clearStatus(); return true;">feedback</a> so that we
                can evolve our software into a product that matches your requirements. We guarantee
                a response.
            </p>
            <h2>I'm Sold... What's next?</h2>
            <div class="download">
                <a href="/ssw/Products/ProdCategory.aspx?CategoryID=LAU" class="red next btn">Purchase Full Version</a><br>
                or
                <br />
                <br />
                <a href="/ssw/Download/ProdBasket.aspx?ID=LA">Download Free Trial Version</a>
            </div>
        </div>
    </div>
</asp:Content>
