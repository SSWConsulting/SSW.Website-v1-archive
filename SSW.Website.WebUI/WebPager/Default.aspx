<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Web Pager - Deliver the Web to Your Inbox" %>

<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server">
    <SSW:ProductPageSideBar ID="ProductPageSideBar1" runat="server" ProdID="WP" CatID="3WEB" DownloadID="WP" UserGuide="UserGuide.aspx" BoxShotPath="/ssw/webpager/Images/productbox.gif"></SSW:ProductPageSideBar>
    <SSW:InfoBox ID="InfoBox1" runat="server" Css="interInfoBox" Text="<h1>Attention: SSW Developers</h1><p>This page is on the old template as the product is low focus/discontinued.</p><a href='http://skunk/ssw/Products/ProdSummaryList.aspx'>The six products we focus on are</a>"></SSW:InfoBox>
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="/ssw/WebPager/Images/WebPagerLogo.gif" alt="Web Pager Logo" width="191" height="83">
    <h2>Have web pages emailed to your inbox on a schedule with SSW Web Pager</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

    <p align="left">
        SSW Web Pager is a utility that sends any web page to 
		your inbox. This utility has many applications - from emailing you the 
		latest news daily to emailing&nbsp; daily and monthly HTML reports to 
		your administrator. Everything you need will be in one centralized 
		location - <b>the Inbox</b>, saving you from opening many web pages to 
		view all the pages you visit daily.
    </p>

    <p>
        It's perfect for:
		<ul>
            <li>for the millions of page that don't have an RSS feed</li>
            <li>for emailing you news pages before you hop on the train to work </li>
            <li>for checking a webpage with all your server status so you know what up or down</li>
        </ul>
    </p>


    <h2 class="thinner">Key Features & Benefits</h2>
    <p>The main SSW Web Pager features are:</p>
    <ul>
        <li>Sends Web pages to your Inbox</li>
        <li>Centralized work area, all your websites in your Inbox</li>
        <li>Able to daily or monthly reports in HTML form to Inbox</li>
    </ul>

    <h2 class="thinner">How it Works</h2>
    <p>When you run the SSW Web Pager there will be a step by step wizard to guide you through the process. </p>
    <p class="thinner">
        The application is split into two processes. The 
		first process is the configuration step, the second is the mailer step.
    </p>

    <p>View the <a href="UserGuide.aspx">Web Pager User Guide</a> for more information.</p>
    <h2 class="thinner">Sample Mail</h2>
    <p>SSW Web Pager Sends web pages to your Inbox, For Example:</p>
    <img src="Images/MSDNMail.gif" width="525" height="371"><br>
    <b>Figure: Google News delivered to your inbox</b><br>
    <br>
    <a name="XHTMLCompliant"></a>
    <h2>The email comes to your inbox XHTML compliant</h2>
    <p>
        The purpose for this is to implement a feature in a later release that
		will be able to highlight new changes from the previous schedule email
		by doing an XML diff on the XHTML.
    </p>
    <img src="Images/XMLSourceCode.gif" width="550" height="246"><br>
    <b>Figure: XHTML Source Code</b>
    <br>
    <br>

    <h2>System Requirements </h2>
    <ul>
        <li><a href="/ssw/Database/LinksSoftwareUpdates.aspx#MicrosoftNET">.NET Framework 1.1</a></li>
    </ul>

    <h2>Getting Support </h2>
    <p>
        If you can't find what you are looking for in the product documentation then check our 
		<a href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=WP">knowledge base</a> for further information and tips about 
		this product.
    </p>
    <p>
        Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a> and
        <!--<A href="mailto:info@ssw.com.au?subject=FeedBack on SSW Link Auditor">feedback</A>-->
        <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','FeedBack on SSW Link Auditor',this)" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style="text-decoration: underline; cursor: pointer">696e666f72407373772e636f6d2e6175</a>
        so that we can evolve our software into a product that matches your requirements. We guarantee a response.
    </p>

    <h2>Video Demo</h2>
    <p>
        See SSW Web Pager in action. Download the  
		<a href="Demo/WebPager_v2.wmv">
            <img src="/ssw/Images/WindowsLogo2.gif" align="texttop" width="18" height="17">SSW Web Pager 
		Video Demo</a>(6.2mb).
    </p>
    <p>
        <img src="Images/VideoDemo.gif" alt="Windows Media" width="469" height="497"><br>
        <b>Figure: SSW Web Pager 
		Video Demo</b>
        <p>
            &nbsp;<h2>I'm Sold... What's next?</h2>
            <p>
                <div class="download">
                    <a href="/ssw/Products/ProdCategory.aspx?CategoryID=WP" class="red next">Purchase Full Version</a><br>
                    or 
                    <br>
                    <br>
                    <a href="/ssw/Download/ProdBasket.aspx?ID=WP">Download Free Trial Version</a>
                </div>
            </p>
</asp:Content>
