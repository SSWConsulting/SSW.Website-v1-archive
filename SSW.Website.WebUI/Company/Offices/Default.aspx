<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.Master" Title="SSW Consulting - Our Offices" %>

<%@ Register Src="~/Components/AboutUs.ascx" TagName="AboutUs" TagPrefix="ssw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>Our Offices</h1>
    <h2>Where to find our team of experts</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>
        <a name="AboutUs"></a>SSW Offices:</h2>
    <ul>
        <li><a href="#Sydney">Sydney</a></li>
        <li><a href="#Melbourne">Melbourne</a></li>
        <li><a href="#Brisbane">Brisbane</a></li>
        <li><a href="#Newcastle">Newcastle</a></li>
        <li><a href="#Hangzhou">Hangzhou</a></li>
        <li><a href="#Strasbourg">Strasbourg</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div class="section">
        <h2><a name="Sydney"></a>Sydney | Australia <span class="flag-icon flag-icon-au"></span></h2>
        <img src="/ssw/images/raven/offices-sydney.png" class="left" />
        <p>Level 1, 81 - 91 Military Road,<br />
            Neutral Bay, NSW 2089</p>
        <p><strong>Phone: +61 2 9953 3000</strong></p>
        <p><a href="/ssw/Company/Offices/Sydney/">Learn more about our Sydney office</a><br />
            <a href="/ssw/Company/Offices/Sydney/Directions/" class="directions">Directions to SSW Sydney</a></p>
    </div>
    <div class="section">
        <h2><a name="Melbourne"></a>Melbourne | Australia <span class="flag-icon flag-icon-au"></span></h2>
        <img src="/ssw/images/raven/offices-melbourne.png" class="left" />
        <p>Level 1, 370 Little Bourke Street,<br />
            Melbourne, VIC 3000</p>
        <p><strong>Phone: +61 3 9005 2034</strong></p>
        <p><a href="/ssw/Company/Offices/Melbourne/">Learn more about our Melbourne office</a><br />
            <a href="/ssw/Company/Offices/Melbourne/Directions/" class="directions">Directions to SSW Melbourne</a></p>
    </div>
    <div class="section">
        <h2><a name="Brisbane"></a>Brisbane | Australia <span class="flag-icon flag-icon-au"></span></h2>
        <img src="/ssw/images/raven/offices-brisbane.png" class="left" />
        <p>Level 1, 471 Adelaide Street,<br />
            Brisbane, QLD 4000</p>
        <p><strong>Phone: +61 7 3077 7081</strong></p>
        <p><a href="/ssw/Company/Offices/Brisbane/">Learn more about our Brisbane office</a><br />
            <a href="/ssw/Company/Offices/Brisbane/Directions/" class="directions">Directions to SSW Brisbane</a></p>
    </div>
    <div class="section">
        <h2><a name="Newcastle"></a>Newcastle | Australia <span class="flag-icon flag-icon-au"></span></h2>
        <img src="/ssw/images/raven/offices-newcastle.png" class="left" />
        <p>432 Hunter Street,<br />
            Newcastle, NSW 2300</p>
        <p><strong>Phone: +61 2 4063 2095</strong></p>
        <p><a href="/ssw/Company/Offices/Newcastle/">Learn more about our Newcastle office</a><br />
            <a href="/ssw/Company/Offices/Newcastle/Directions/" class="directions">Directions to SSW Newcastle</a></p>
    </div>

    <div class="section">
        <h2><a name="Hangzhou"></a>Hangzhou | China <span class="flag-icon flag-icon-cn"></span></h2>
        <img src="/ssw/images/raven/offices-hangzhou.jpg" class="left" />
        <p>Level 3, Room 304-1, Building 2, Star City Development Building, 406 Xintiandi Street<br />
            Hangzhou City, Zhejiang Province</p>
        <p><strong>Phone: +86 571 8517 8910</strong></p>
        <p><a href="http://www.ssw.com.cn/contactUS?lang=zh-CN?utm_source=referral&utm_medium=sswaustralia">Learn more about our Hangzhou office</a><br />
            <a href="/ssw/Company/Offices/Hangzhou/Directions/" class="directions">Directions to SSW Hangzhou</a></p>
    </div>

    <div class="section">
        <h2><a name="Strasbourg"></a>Strasbourg | France <span class="flag-icon flag-icon-fr"></span></h2>
        <img src="/ssw/images/raven/offices-strasbourg.jpg" class="left" />
        <p>1 Rue de la Porte Blanche, 67000, Strasbourg, France</p>
        <p><strong>Phone: +33 3 67 39 05 39</strong></p>
        <p><a href="https://ssw.fr/?utm_source=referral&utm_medium=sswaustralia">Learn more about our Strasbourg office</a><br />
            <a href="/ssw/Company/Offices/Strasbourg/Directions/" class="directions">Directions to SSW Strasbourg</a></p>
    </div>

    <hr />

    <div class="greybox">
        <p>Our staff are ready to <a href="/ssw/Consulting/Remote-Work.aspx">work remotely</a> for any country globally. We have worked for clients from the <strong>USA</strong>, <strong>Canada</strong>, <strong>the UK</strong>, and even European countries, such as <strong>France</strong>, <strong>Germany</strong>, and as far north as <strong>Sweden</strong>.</p>
    </div>

    <p>If you require any further information, don't hesitate to <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175')" onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;" onmouseout="javascript:clearStatus(); return true;" name="ContactUs">contact us</a>.</p>
    <p>Visit our worldwide website: <a href="http://www.ssw.com" target="_blank">ssw.com</a>.</p>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebarcontainer" runat="server">
    <ssw:AboutUs ID="AboutUs" runat="server" />
</asp:Content>
