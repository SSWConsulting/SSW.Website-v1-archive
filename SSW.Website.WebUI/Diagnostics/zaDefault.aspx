<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Diagnostics - Utility to ensure your system is up to date" %>
<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
<img src="Images/Diagnostics_Logo.gif" alt="SSW Diagnostics">
<h2>Keep your system *fresh* with SSW Diagnostics - The best software version updating tool!</h2>
</asp:Content>

<asp:Content ContentPlaceHolderID="asideright" runat="server">
    <div class="softRegion" style="text-align: center">
        <img src="/ssw/Diagnostics/Images/productbox.gif" alt="SSW Diagnostics" width="165"
            height="190" />
    </div>
    <div class="download">
<a href="/ssw/Company/SoftwareAuditWindows7Logo.aspx" class="image">
                <img src="/ssw/Diagnostics/Images/Win7Logo.jpg" alt="SSW Diagnostics is Certified for Windows 7. Find out how you can do the same"
                    width="131px" height="147px" /></a>
    </div>
            <div id="download" style="width: 157px;" class="download">
            <a class="image">
                <br />
                <img src="/ssw/Images/Button_runnow.png" alt="Run Now" /></a>
            <p>
                * This button uses Microsoft <a href="/ssw/Standards/Rules/RulesToBetterWindowsFormsClickOnce.aspx"
                    target="_blank">ClickOnce</a> technology.
                <br />
                This means the app is always up-to-date. To install you must be connected to the
                Internet.
                <br />
                <br />
                Having trouble behind a firewall? <a href="/ssw/KB/KB.aspx?KBID=Q1470782">see this KB</a>.
            </p>
            <br />
            <p style="text-align: left;">
                <a style="font-size: 9px; color: #666666; line-height: normal;" href="/ssw/Standards/Rules/RulesToBetterWindowsFormsClickOnce.aspx#DownloadType">
                    Why and how did we attempt to get your .NET version?</a></p>
        </div>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="main-left">
        <p>
            <SSW:InfoBox ID="InfoBox1" runat="server" Css="interInfoBox" Text="<h1>Attention: SSW Developers</h1><a href='../Products/prodsummarylist.aspx'>This page is on the new template as it is one of the 6 products we are focused on.</a>">
            </SSW:InfoBox>
        </p>

        <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

        <p>
            This simple, powerful and effective utility keeps your system up to date, and helps
            to resolve intricate software compatibility issues.
        </p>
        <p>
            To aid our developers in analyzing software related issues, it helps if we collect
            some basic information about your system. This utility will help you collect the
            relevant information easily.
        </p>

        <h2 class="thinner">
            Key Features &amp; Benefits</h2>

            <ul>
                <li>Checks required software.</li>
                <li>Checks for and advises on obsolete versions.</li>
                <li>Automatically emails summaries of your software.</li>
                <li>Easily customized to your specific needs.</li>
                <li>Award winning software!</li>
                <li>A $199 value given away 100% free. No Adware or Spyware.</li>
            </ul>

        <dl class="image">
            <dt>
                <img src="Images/ScanReport_5_51.GIF" alt="Scan Results with some red crosses" width="665"
                    height="442"></dt><dd>Figure: The goal is to lose all these red crosses, so you only
                        see green ticks</dd></dl>
        <p>
            More screen shots in the User Guide
        </p>
        <br />
        <h2>
            Upcoming Features</h2>
        <ul>
            <li>Release 10 - Scan "Add/Remove Programs" and add to your online profile</li>
            <li>Release 11 - Auto data updating with Sync Framework</li>
            <li>Release 12 - Add online profile - lists users scans (by PC name) </li>
            <li>Release 13 - Add to online profile, your favourite software with votes and comments</li>
            <li>Release 14 - Add to online profile, your "bad versions" and "good versions"</li>
            <li>Release 15 - Add to product profile, the Health Rating + to windows client</li>
            <li>Release 16 - Add to product profile, popularity of installation</li>
            <li>Release 17 - Integration with related software E.g. <a href="http://alternativeto.net/software/dropbox/" target=_blank>http://alternativeto.net/software/dropbox</a></li>
        </ul>
        <br />
        <h2>
            User Guide</h2>
        <p>
            Welcome to the <a href="UserGuide.aspx">User Guide</a>. This help facility is designed
            to quickly get you up and running using our software.
        </p>
        <SSW:incDemonstration ID="IncDemo" runat="server"></SSW:incDemonstration>
        <SSW:incStars ID="IncStars" SofoTex="4" FileTransit="5" FileHungry="5" runat="server" />
        <br />
        <h2>
            How it Works</h2>
        <p>
            <ol>
                <li>You come across a problem with a program you are running.</li><li>You contact the
                    vendor and the first thing they ask is, &quot;Have you got the latest version of
                    XYZ installed?&quot;</li><li>&quot;One moment, I&#039;ll check.&quot;, you reply.</li><li>
                        Clicking on SSW Diagnostics, your system is checked, and not only does it tell you
                        your version number and whether you need an upgrade, but also where to go to get
                        the upgrade.</li><li>Then with another click, your version list is emailed to the vendor
                            so they can get to work solving your problem.</li></ol>
        </p>
        <h2>
            System Requirements
        </h2>
        <ul>
            <li><a href="/ssw/Database/LinksSoftwareUpdates.aspx#MicrosoftNET">.NET Framework 2.0</a></li></ul>
        <h2>
            Getting Support
        </h2>
        <p>
            If you can&#039;t find what you are looking for in the product documentation then
            check our <a href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=DIAG">knowledge base</a>
            for further information and tips about this product.
        </p>
        <p>
            Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a>
            and <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175','FeedBack')" onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
                onmouseout="javascript:clearStatus(); return true;">feedback</a> so that we
            can evolve our software into a product that matches your requirements. We guarantee
            a response.
        </p>
        <h2>
            I'm Sold... What's next?</h2>
                    <div id="Div2" class="download">
                <br />
                <img src="/ssw/Images/Button_runnow.png" alt="Run Now" /></a>
            <p>
                * This button uses Microsoft <a href="/ssw/Standards/Rules/RulesToBetterWindowsFormsClickOnce.aspx"
                    target="_blank">ClickOnce</a> technology.
                <br />
                This means the app is always up-to-date. To install you must be connected to the
                Internet.
                <br />
                <br />
                Having trouble behind a firewall? <a href="/ssw/KB/KB.aspx?KBID=Q1470782">see this KB</a>.
            </p>
            <br />
            <p style="text-align: left;">
                <a style="font-size: 9px; color: #666666; line-height: normal;" href="/ssw/Standards/Rules/RulesToBetterWindowsFormsClickOnce.aspx#DownloadType">
                    Why and how did we attempt to get your .NET version?</a></p>
        </div>


    </div>
</asp:Content>
