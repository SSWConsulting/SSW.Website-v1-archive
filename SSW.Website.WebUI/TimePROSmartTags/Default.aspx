<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW - Time PRO! Smart Tags - Utility to connect Office to your Database" %>

<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="Images/TimePROSmartTagsLogo.gif" alt="SSW TimePRO Smart Tags" width="301" height="83">
    <h2>Connect Microsoft Word to your templates and contacts in your database with SSW Smart Tags</h2>
</asp:Content>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server">
    <SSW:ProductPageSideBar ID="ProductPageSideBar1" runat="server" ProdID="TPST" UserGuide="UserGuide.aspx" CatID="TPST" DownloadID="TPST" BoxShotPath="/ssw/TimePROSmartTags/Images/productbox.gif"></SSW:ProductPageSideBar>

    <img src="/ssw/Images/Microsoft/MSOffice.gif" alt="MS Office related product" style="vertical-align: top;" width="30" height="30">
    <SSW:InfoBox ID="InfoBox1" runat="server" Css="interInfoBox" Text="<h1>Attention: SSW Developers</h1><p>This page is on the old template as the product is low focus/discontinued.</p><a href='/ssw/Products/ProdSummaryList.aspx'>The six products we focus on are</a>"></SSW:InfoBox>
    
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
        <p>This product is no longer supported. </p>
    </div>
    <p>
        Office XP offers Smart Tag functionality. Smart Tags recognise text in your Word/Excel or Outlook (with Word as your editor)
			and then offer a range of possible actions and commands. With SSW Time PRO! Smart Tags you can access your corporate
			database from Microsoft Office, and send letters, faxes or emails based on existing templates.
    </p>

    <h2 class="thinner">Key Features &amp; Benefits</h2>


    <p>
        SSW Time PRO! Smart Tags allows you to access your corporate database 
        from Microsoft Office and send letters, faxes or emails based on 
        existing templates.
    </p>

    <ul>
        <li>
            <p align="left">
            Recognizes any Contact Name, Company Name or Customer ID in your 
		corporate database.</li>
        <li>
            <p align="left">
            Generate Letters, Faxes or Emails based on existing templates.</li>
        <li>
            <p align="left">
            Search for a contact.</li>
        <li>
            <p align="left">
            Handle duplicates - if you enter a Surname of 'Smith' then a list 
		of all Smiths will be displayed. You just select the one you want and 
		then you can proceed.</li>
        <li>
            <p align="left">
            Display Contact details in a web page - if you have a web page you 
		use to view your Contact in, then Smart Tags can link in to this web 
		page and display the current Contact information.</li>
    </ul>

    <p>
        <img border="0" src="Images/InsertTemplate.gif" alt="Insert Template" width="560" height="440">
        <br />
        <b>Figure: With SSW Time PRO! Smart Tags you can access your 
			corporate database from Microsoft Office, and send letters, faxes or 
			emails based on existing templates</b><p>
                More screen shots in the User Guide
        <p>
            <h2 class="thinner">User Guide</h2>

            <p>
                Welcome to the SSW Time PRO! Smart Tags <a href="UserGuide.aspx">User Guide</a>. This help facility is designed to let you get quickly up and
		running using SSW Time PRO! Smart Tags.
            </p>

            <table class="clsSSWTable" align="centre" summary="Demo Options" style="{width: 70%; }">
                <tr>
                    <td>
                        <b>Demonstration Options</b>
                        <ul>
                            <li>If you are in Sydney, <a href="/ssw/Company/AboutUs.aspx">call</a>
                                today for a free no-obligation demonstration at your office!
                                <br />
                                <li>If you are not in Sydney, please take advantage of our SSW Phone 
          Walkthrough. The SSW Phone Walkthrough is a service where we will 
          call you, anywhere in the world and once you have installed our product 
          we will guide you over the important features of the software. Saves 
          you time, playing around with the software trying to work out all the 
          useful features, please <a onclick="javascript:sendEmailWithoutSubject('696e666f407373772e636f6d2e6175',this)" encode="696e666f407373772e636f6d2e6175" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style="text-decoration: underline; cursor: pointer">696e666f72407373772e636f6d2e6175 </a>today.
                                </li>
                    </td>
                </tr>
            </table>
        </p>


                <h2>Awards and Ratings</h2>
                <p>
                    Our SSW Products are also listed on Shareware web sites. Some of these sites 
	review and/or rate our products. Here's how our products rated on other third 
	party sites.
                </p>

                <div id="IncStars_pnlSofoTex">

                    <img src="../Images/Awards/SofoTex4Stars40X80.gif" alt="SofoTex awards rates this product" border="0" width="80" height="40">
                    <img id="IncStars_imgSofoTex" src="/ssw/Images/Awards/4Stars.gif" alt="Stars" border="0" width="96" height="20" />
                    <br />
                    <br />

                </div>
                <div id="IncStars_pnlFileTransit">

                    <img src="../Images/Awards/FileTransit40X80.gif" alt="File Transit review for the product" border="0" width="80" height="40">
                    <img id="IncStars_imgFileTransit" src="/ssw/Images/Awards/5Stars.gif" alt="Stars" border="0" width="119" height="20" />
                    <br />
                    <br />

                </div>
                <div id="IncStars_pnlFileHungry">

                    <img src="../Images/Awards/FileHungry40x80.gif" alt="File Hungry review for the product" border="0" width="80" height="40">
                    <img id="IncStars_imgFileHungry" src="/ssw/Images/Awards/5Stars.gif" alt="Stars" border="0" width="119" height="20" />
                    <br />
                    <br />

                </div>






                <h2>How it works</h2>
                <p>
                    SSW Time PRO! Smart Tags incorporates the Office XP Smart Tag technology 
        and connects to your database to provide Search and Letter generation 
        functionality based off your templates. Using a series of simple 
        actions, you can generate custom letters to your Contacts.
		<br />
                </p>
                <h2>System Requirements</h2>
                <p>
                    <a href="/ssw/Database/LinksSoftwareUpdates.aspx#MicrosoftNET">.NET Framework</a>
                </p>

                <h2>What does the unregistered version give me?</h2>

                <p>
                    In respect to the unregistered version we know you want to see it 
		working before you buy it. We aim for that.
                    <br />
                    Note: we also give free version targeted to the little guys<br />
                    More details see <a href="/ssw/KB/KB.aspx?KBID=Q658302">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q658302</a>
                </p>
                <p>
                    SSW provides free phone and email support to answer queries on 
registered products.
                </p>

                <h2>Getting Support</h2>
                <p>
                    Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a> and 
			<a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">feedback</a>
                    so that we can evolve our product in one that 
			matches your requirements.
                </p>

                <h2>I'm Sold... What's next?</h2>
                <p>
                    <div class="download">
                        <a href="/ssw/Products/ProdCategory.aspx?CategoryID=TPST" class="red next">Purchase Full Version</a><br />
                        or 
                        <br />
                        <br />
                        <a href="/ssw/Download/ProdBasket.aspx?ID=TPST">Download Free Trial Version</a>
                    </div>
                </p>
</asp:Content>
