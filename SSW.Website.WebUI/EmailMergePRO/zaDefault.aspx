<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Email Merge PRO! - Mail Merge Utility" %>

<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register Src="~/Components/DiagnosticsForSystemReqirement.ascx" TagName="DiagnosticsForSystemReqirement"
    TagPrefix="SSW" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="asideright" runat="server">
    <p>
        <SSW:ProductPageSideBar ID="ProductPageSideBar1" runat="server" ProdID="MMP" UserGuide="UserGuide.aspx" CatID="4EXOUT"
            DownloadID="EM" BoxShotPath="/ssw/EmailMergePRO/Images/productbox.gif"></SSW:ProductPageSideBar>
        <div class="softRegion">
            <div class="sponsorBox">
                <img src="/ssw/Images/Awards/Tucows40X80.gif" alt="Tucows review" width="80" height="40" /><br />
                <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><img
                    src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><img
                        src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><img
                            src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
            </div>
            <div class="sponsorBox">
                <img src="/ssw/Images/Awards/SofoTex4Stars40X80.gif" alt="Sofotex review" width="80"
                    height="40" /><br />
                <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><img
                    src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><img
                        src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><img
                            src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
            </div>
        </div>
        <SSW:InfoBox ID="InfoBox1" runat="server" Css="interInfoBox" Text="<h1>Attention: SSW Developers</h1><p>This page is on the old template as the product is low focus/discontinued.</p><a href='/ssw/Products/ProdSummaryList.aspx'>The six products we focus on are</a>">
        </SSW:InfoBox>
    </p>
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
<img src="/ssw/Images/Microsoft/MSOutlook.gif" alt="Outlook/Exchange Server related product"
                style="vertical-align: top;" width="30" height="30"><img src="/ssw/EmailMergePro/Images/EmailMergePROLogo.gif" alt="SSW Email Merge PRO!" width="243" height="82" />
<h2 class="thinner">Send your newsletter to thousands of subscribers with SSW Email Merge PRO!</h2></asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

        <p>
            SSW Email Merge PRO! makes sending bulk email a breeze. Especially useful for periodical
            email newsletters, it provides real time tracking information and reports on bounced
            emails, enabling you to keep your subscribers list clean and up-to-date.
        </p>
        <h2 class="thinner">
            Key Features & Benefits</h2>
        <ul>
            <li>Connects to any database with an ODBC driver (e.g. MS ACCESS, MS SQL Server)</li>
            <li>Utilizes an SMTP mail server</li>
            <li>Perfect for HTML emails</li>
            <li>Supports Audit trail into XML</li>
            <li>Supports Resume process by selecting any sent log </li>
            <li>Supports Mail merge into your newsletter using database field </li>
            <li>Supports Custom FROM Address</li>
            <li>Real time preview</li>
            <li>Supports multiple attachments</li>
            <li>Send Progress status emails. e.g. 1%, 50% and 100% completed</li>
            <li>Generate HTML Report for the process result</li>
            <li>Built on the Microsoft .NET Framework</li>
        </ul>
        <img src="Images/EmailMergeProSample.gif" alt="Email Merge Pro Sample" border="0"
            width="450" height="338" />
        <p>
            <b>Figure: SSW Email Merge PRO! makes sending bulk email a breeze</b></p>
    <br />
    <h2 class="thinner">
        Upcoming Features</h2>
    <ul>
        <li>Support Microsoft CRM 3</li>
        <li>Support various data sources, include Outlook address book, XML and Excel files</li>
        <li>Built-in recipients editor to allow updating the recipient list</li>
        <li>Automatic bounce processing</li>
        <li>Automatic removal of duplicate addresses</li>
        <li>Fast multithreaded email address verification</li>
        <li>Built-in HTML editor</li>
        <li>Spell checker</li>
        <li>Scheduling</li>
    </ul>
    <br />
    <h2 class="thinner">
        How It Works</h2>
    <p>
        SSW Email Merge uses SMTP and an ODBC data source to send HTML or text emails. Built
        in VB .NET it requires the Microsoft .NET Framework. It does not require to be installed
        on the mail or web server.</p>
    <br />
    <h2>
        System Requirements
    </h2>
    <ul>
        <li><a href="/ssw/Database/LinksSoftwareUpdates.aspx#MicrosoftNET">.NET Framework 2.0</a></li>
    </ul>
    <SSW:DiagnosticsForSystemReqirement ID="DiagnosticsForSystemReqirement1" runat="server">
    </SSW:DiagnosticsForSystemReqirement>
    <br />
    <h2>
        What does the unregistered version give me?</h2>
    <p>
        In respect to the unregistered version we know you want to see it working before
        you buy it. We aim for that.
        <br />
        Note: we also give free version targeted to the little guys<br />
        More details see <a href="/ssw/KB/KB.aspx?KBID=Q658302">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q658302</a></p>
    <p>
        SSW provides free phone and email support to answer queries on registered products.</p>
    <br />
    <h2>
        FAQ
    </h2>
    <p>
        1. <a href="/ssw/KB/KB.aspx?KBID=Q915578" target="_blank">What is the difference between
            using Email Merge PRO! and the email merge within Microsoft Word?</a>
    </p>
    <h2>
        Getting Support
    </h2>
    <p>
        If you can't find what you are looking for in the product documentation then check
        our <a href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=MMP">knowledge base</a>
        for further information and tips about this product.
    </p>
    <p>
        Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a>
        and <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175')">feedback</a>
        so that we can evolve our software into a product that matches your requirements.
        We guarantee a response.
    </p>
    <h2>
        I'm Sold... What's next?</h2>
    <p>
        <div class="download">
            <a href="/ssw/Products/ProdCategory.aspx?CategoryID=MMP" class="red next">Purchase Full Version</a><br />
            or
            <br />
            <br />
            <a href="/ssw/Download/ProdBasket.aspx?ID=EM">Download Free Trial Version</a>
        </div>
    </p>
</asp:Content>
