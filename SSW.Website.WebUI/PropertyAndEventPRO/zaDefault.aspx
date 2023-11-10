<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Property and Event PRO! - Access Global Replace Tool" %>

<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server">
    <SSW:ProductPageSideBar ID="ProductPageSideBar1" runat="server" ProdID="PROPER" CatID="2ACCESS" UserGuide="UserGuide.aspx" DownloadID="PROPE_2000" BoxShotPath="/ssw/PropertyAndEventPro/Images/productbox.gif"></SSW:ProductPageSideBar>
    <h6>Awards</h6>
    <div class="section">

        <div class="sponsorBox">
            <img src="/ssw/Images/Awards/SharewareRiverlinkbutton.gif" alt="Shareware river" width="80" height="28" /><br />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="star" width="13" height="12" />
        </div>
    </div>
    <SSW:InfoBox ID="InfoBox1" runat="server" Css="interInfoBox" Text="<h1>Attention: SSW Developers</h1><p>This page is on the old template as the product is low focus/discontinued.</p><a href='/ssw/Products/ProdSummaryList.aspx'>The six products we focus on are</a>"></SSW:InfoBox>

</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="Images/PropertyEventPROLogo.gif" alt="Property and Event PRO" width="336" height="82" />
    <h2>Developed for the Access Developer wanting to do a global replace</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
        <p>This product is no longer supported. </p>
    </div>

    <p>
        SSW Property and Event PRO! allows you to set values for properties 
      and events across your whole database with an easy-to-use interface. You can also apply 
	  conditions based on any property to alter the affect of your changes. Anything that you 
	  can do in Access application development, SSW Property and Event PRO! can do across your 
	  whole database.
    </p>


    <p>
        You can select the forms or controls you wish to update by specifying 
	  criteria based on any property that is normally available to you in design view.
    </p>
    <p>
        <img src="Images/SpecifytheObjectTypeTextBoxBackColour.gif" alt="Properties" border="1" width="500" height="352">
        <br>
        <b>Figure: SSW Property and Event PRO! allows you to set values for 
	properties and events across your whole database with an easy-to-use 
	interface</b>
    </p>


    <h2 class="thinner">Key Features & Benefits</h2>
    <p>
        <ul>
            <li>Make changes to any property in the access database.</li>
            <li>Make changes to any event in the access database.</li>
            <li>Provide conditions to only change certain properties and events.</li>
        </ul>
        More screen shots in the User Guide
    </p>



    <h2 class="thinner">User Guide</h2>
    <p>
        Welcome to the <a href="UserGuide.aspx">User Guide</a>. This help facility is designed to quickly 
		get you up and running using our software.
    </p>
    <SSW:incDemonstration ID="IncDemo" runat="server"></SSW:incDemonstration>

    <h2>How it works</h2>
    <p>
        SSW Property and Event PRO! helps you develop consistent, user-friendly 
		applications in Microsoft Access.
    </p>

    <p>
        Your Access database consists of many objects such as forms, command buttons and 
	  text boxes. Each of these has many properties and events that define the way 
	  they look and function. E.g. the textbox object has a backcolor property, a 
	  fontname property and an OnClick event, among others.
    </p>

    <p>
        SSW Property and Event PRO! allows you to set these values across your whole 
	  database with an easy-to-use interface. You can also apply conditions based on 
	  any property to alter the affect of your changes.
    </p>

    <p>Here are some practical examples of what you can achieve in less than 1 minute:</p>

    <ul>
        <li>Make every label in your database bold.</li>
        <li>Position a common object such as your close button in the same place on every form.</li>
        <li>Make your database play a warning sound when a user presses delete on a selection of your forms.</li>
        <li>Cause a calendar to pop up when a user double clicks in any text box that contains a date across 
				your whole database.</li>
    </ul>
    <h2>System Requirements</h2>
    <a href="/ssw/Redirect/Access/Access.htm" target="_blank">Microsoft Access</a>



    <h2>What does the unregistered version give me?</h2>
    <p>
        Unregistered versions of SSW Property and Event PRO! provide full functionality for 10 uses. 
		SSW provides free 
		phone and email support to answer queries on registered products.
    </p>
    <h2>Support</h2>
    <p>
        Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a> and <a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">feedback</a>
        so that we can evolve our software into a product that matches your requirements. We guarantee a response.
    </p>
    <p>
        If you can't find it in the product documentation then check our <a href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=PROPER">knowledge 
      base</a> for further information and tips about this product.<br>
        <br>
    </p>
    <h2>I'm Sold... What's next?</h2>
    <div class="download">
        <a href="/ssw/Products/ProdCategory.aspx?CategoryID=PROPER" class="red next">Purchase Full Version</a><br>
        or 
        <%-- Comment out by Luke Chou, cause we're releasing version Access 2007
    <br><br><a href="/ssw/Download/ProdBasket.aspx?ID=PROPE_97">Download Free Trial Version</a><br>(For Access 97)
        --%>
        <br />
        <br />
        <a href="/ssw/Download/ProdBasket.aspx?ID=PROPE_2000">Download Free Trial Version</a><br>
        (For Access 2000,2002,2003)
    </div>
</asp:Content>
