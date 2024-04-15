<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master"
    Title="SSW LookOut! for Outlook - Utility to Enforce Email Rules" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ID="Title" ContentPlaceHolderID="title" runat="server">
    <img src="Images/LookOutLogo.gif" alt="SSW LookOut" width="141" height="84" />
    <h2>SSW LookOut! for Outlook - Utility to Enforce Email Rules</h2>
</asp:Content>

<asp:Content ID="Side" ContentPlaceHolderID="sidebarcontainer" runat="server">
    <!--<SSW:ProductPageSideBar runat="server" ProdID="SSWCON" CatID="4EXOUT" PromotionalFlyer="Flyer/lookoutFlyer.pdf"
        UserGuide="UserGuide.aspx" DownloadID="sswcon1" BoxShotPath="/ssw/LookOut/Images/productbox.gif"></SSW:ProductPageSideBar>-->
    <div class="softRegion">
        <h1>Awards</h1>
        <div class="sponsorBox">
            <img src="/ssw/Images/Awards/SharewareRiverlinkbutton.gif" alt="Shareware River review"
                width="80" height="28" /><br />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><br />
            <br />
            <img src="/ssw/Images/Awards/coredownload.gif" alt="Core Download" width="86" height="42" />
        </div>
        <!--<div class="sponsorBox">
				<img src="/ssw/Images/Awards/Tucows40X80.gif" alt="Tuscow review" width="80" height="40" /><br />
				<img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
			</div>
			<div class="sponsorBox">
				<img src="/ssw/Images/Awards/SofoTex4Stars40X80.gif" alt="Sofotex review" width="80" height="40" /><br />
				<img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
			</div>-->
    </div>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

    <SSW:InfoBox runat="server" Css="interInfoBox" Text="<h1>Attention: SSW Developers</h1><p>This page is on the old template as the product is low focus/discontinued.</p><a href='/ssw/Products/ProdSummaryList.aspx'>The six products we focus on are</a>"></SSW:InfoBox>
    <div style="display: none">
        <img src="Images/LookOutLogo.gif" align="right" alt="SSW LookOut" width="141" height="84">
        <div style="display: none">
            <a href="../Redirect/MicrosoftOfficeMarketplace/OfficeMarketplace.htm">
                <img src="http://r.office.microsoft.com/r/rlidMarketplaceLogo" alt="Microsoft Office Marketplace logo"
                    align="right" border="none" width="250" height="52">
            </a>
        </div>
    </div>
    <h3>Manage email more effectively with SSW LookOut! for Outlook</h3>
    <p class="thinner">
        Did you ever hit the send/receive button only to realize that you forgot the attachment,
        or didn't 'reply all'? Email is a fundamental corporate communications tool used
        every day to manage staff, establish contacts and communicate with clients. Use
        SSW LookOut! to organize and manage your email and help ensure email is always an
        advantage to your business and not a liability! With tons of rules and auditing
        checks, SSW LookOut! also notifies the user whether emails are from people within
        their corporate Access or SQL Server database.<!-- CS 14/2/03 waiting for next
    release: or Outlook 
    Address Book or Exchange Contacts list.-->
    </p>
    <!-- CS - removed
   <table class="clsSSWTable" width="90%">
		<tr>
			<td>
				<b>Why has the name changed from SSW Contactor to SSW Lookout ?</b><p>
                We undertook a survey after a demonstration at the Sydney .NET 
                User Group. Here are the results:<p>
                Q: Having just seen a demonstration of this Outlook utility, you 
                can see it enforces email communication rules and adds a column 
                to the Outlook view enabling you to see whether the contact is 
                in the corporate database. What do you think the name should be 
                (voting more than once is OK)?
			    <ul>
                  <li>SSW Lookout! 33%</li>
                  <li>SSW Outlook Auditor 26%</li>
                  <li>SSW Email Buddy 10%</li>
                  <li>SSW Outlook Inspector 5% </li>
                  <li>SSW Outlook Mate 5%</li>
                  <li>SSW Contactor 1%</li>
                  <li>SSW CleanLook! 1% </li>
                </ul>
			</td>
		</tr>
	</table>
    -->
    <h2 class="thinner">Key Features & Benefits</h2>
    <p>
        <table align="right" width="30%">
            <tr>
                <td>
                    <table class="clsSSWTable">
                        <tr>
                            <td>
                                <b>Email Management Too Important for CIOs</b><br />
                                High-profile scandals such as Worldcom and Enron shown that email management is
                                too important for business to be left to CIOs who are more worried about rising
                                costs. <a href="/ssw/Redirect/VNUnetEmailManagement.htm" target="blank">Details</a>
                                <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17"
                                    height="11">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="clsSSWTable">
                        <tr>
                            <td>
                                <b>Never Send An Email In Anger</b><br />
                                Chris Sells says "One of the most important things that I've ever learned about
                                high-tech communications is to never, ever write an email in anger. Or, to be more
                                precise, never *send* an email in anger" <a href="/ssw/Redirect/NeverSendInAnger.htm"
                                    target="blank">Details</a>
                                <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17"
                                    height="11"><br />
                                LookOut! catches angry words and give you a second chance before sending them!
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <ul>
            <li>Cover yourself and automatically obey good email etiquette with a multitude of rules
                and checks</li>
            such as:
            <ul>
                <li>Forgetting to add the attachment</li>
                <li>Sending large emails</li>
                <li>Including
                    inappropriate words in the body of an email</li>
                <li>Forgetting to include a body or
                        subject in the email</li>
                <li>Forgetting to Reply to All</li>
                <li>Forgetting to include
                            a signature for external emails</li>
            </ul>
            <li>Optimise your Outlook settings </li>
            <li>Set the database connection. When a new mail arrives in your Inbox it is automatically
                tagged with Contact information.</li>
            <li>Sort email by Contacts</li>
        </ul>
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <img src="Images/Properties.gif" alt="Properties" width="414" height="463">
                </td>
            </tr>
        </table>
        <p>
            <b>Figure: Use SSW LookOut! to organize and manage your email and help ensure email
                is always an advantage to your business and not a liability!</b>
        </p>
        <p>
            More screen shots in the <a href="UserGuide.aspx">User Guide</a>
        </p>
        <h2>Advanced Options - How it works (Programming Required)</h2>
        <p>
            SSW LookOut! for Microsoft Outlook adds a Client ID field to your Outlook view.
            This allows you to clearly see which emails are from contacts in your corporate
            database, which emails are from within your own corporate Intranet, and which emails
            are from people not currently in your database (potential new clients which you
            must add to your database!).
        </p>
        <p>
            <img src="Images/inbox.gif" alt="Inbox" border="1" width="524" height="73">&nbsp;<br />
            <strong>Figure: SSW LookOut! lets you clearly see which emails are and are not from
                contacts in your corporate database</strong>
        </p>
        <p>
            LookOut! uses the email address to search and match people from your database. It
            is designed to work with any popular database, but currently has only been tested
            extensively with Microsoft Access and Microsoft SQL Server. If you are interested
            to try out on other database(s), <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175','Enquiry%20LookOut%20for%20Outlook')"
                onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
                onmouseout="javascript:clearStatus(); return true;">let us know</a>!
        </p>
        <p>
            &nbsp;
        </p>
        <p>
            <img src="Images/InboxGroup.gif" alt="Inbox group" border="1" width="523" height="318">
            <br />
            <strong>Figure: Your Outlook items can be sorted or grouped with the Client ID</strong>
        </p>
        <p>
            LookOut! operates in two modes, Online and Offline mode.
            <ul>
                <li>Whenever LookOut! is certain that a connection to your corporate database can be
                    made, it will switch to Online mode. A probe test is run to check before the mode
                    switches.</li>
                <li>Similarly, whenever there's an error in trying to connect to your
                        database, LookOut! will switch to Offline mode.</li>
            </ul>
            <p>
                While in Offline mode, LookOut! will not try to scan any new incoming emails for
                their client ID. Contrary to what the name may seem to indicate, LookOut! does not
                keep an open connection to your database, all connections are closed as soon as
                LookOut! is done with them. LookOut!'s Online and Offline modes are also not related
                to Outlook's Online and Offline modes. There is an option for LookOut! to automatically
                try to go Online when it starts.
            </p>
            <h2>Upcoming Features</h2>
            <ul>
                <li>Adding MS CRM (4 and 5) support</li>
            </ul>
            <h2>System Requirements</h2>
            <ul>
                <li>Microsoft Outlook 2003 or later </li>
                <li>Microsoft .NET Framework1.1 or later</li>
                <li><a href="/ssw/Redirect/vbsp4rt.htm" target="_blank">Visual Basic 6 SP4 runtime files</a><img
                    alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif"
                    border="0" width="17" height="11"></li>
                <li><a href="/ssw/Redirect/mdac26.htm" target="_blank">MDAC 2.6</a><img alt="You are going to a site outside of SSW"
                    src="/ssw/Images/LeaveSite.gif" border="0" width="17" height="11"></li>
            </ul>
            <br />
            <h2>What does the unregistered version give me?</h2>
            <p>
                In respect to the unregistered version we know you want to see it working before
                you buy it. We aim for that.
                <br />
                Note: we also give free version targeted to the little guys<br />
                More details see <a href="/ssw/KB/KB.aspx?KBID=Q658302">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q658302</a>
            </p>
            <p>
                SSW provides free phone and email support to answer queries on registered products.
            </p>
            <h2>Support</h2>
            <p>
                If you can't find it in the product documentation then check our <a href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=SSWCON">knowledge base</a> for further information and tips about this product.
            </p>
            <p>
                Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a>
                and <a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));"
                    title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">feedback</a> so that we can evolve our software into a product that matches
                your requirements. We guarantee a response.
            </p>
            <h2>Links</h2>
            <ul>
                <li><a href="/ssw/Standards/DeveloperGeneral/OutlookTools.aspx#OutlookAttachment">Security
                    add-in for Outlook 2000 SP2 or XP</a> </li>
                <li><a target="_blank" href="/ssw/Redirect/Web/CNETEmailPatterns.htm">Email patterns
                    map corporate structure - Figuring out a company's power and communication structure
                    may be as simple as examining patterns of email exchanges, according to new research
                    by some Hewlett-Packard scientists</a>
                    <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17"
                        height="11"></li>
            </ul>
            <!--<h2>I'm Sold... What's next?</h2>
            <div class="download">
                <a href="/ssw/Products/ProdCategory.aspx?CategoryID=SSWCON" class="red next">Purchase Full Version</a><br />
                or
                <br />
                <br />
                <a href="/ssw/Download/ProdBasket.aspx?ID=sswcon1">Download Free Trial Version</a>
            </div>-->
    Microsoft and the Office logo are trademarks or registered trademarks of Microsoft
    Corporation in the United States and/or other countries.
</asp:Content>
