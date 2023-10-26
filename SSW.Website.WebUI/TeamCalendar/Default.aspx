<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Team Calendar" %>

<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<%@ Register TagPrefix="SSW" TagName="ProductPageSideBar" Src="~/Components/ProductPageSideBar.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="Images/ExchangeTeamCalendar.gif" alt="Team Calendar Logo" width="415" height="82">
    <h2 class="thinner">View all Calendars in your company with SSW Exchange Team Calendar</h2>
</asp:Content>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server">
    <SSW:ProductPageSideBar ID="ProductPageSideBar1" runat="server" ProdID="SSWTC" CatID="4EXOUT" UserGuide="UserGuide.aspx" DownloadID="TC019" BoxShotPath="/ssw/TeamCalendar/Images/productbox.gif"></SSW:ProductPageSideBar>
    <SSW:InfoBox ID="InfoBox1" runat="server" Css="interInfoBox" Text="<h1>Attention: SSW Developers</h1><p>This page is on the old template as the product is low focus/discontinued.</p><a href='/ssw/Products/ProdSummaryList.aspx'>The six products we focus on are</a>"></SSW:InfoBox>

    <div class="softRegion">
        <h1>Awards</h1>
        <div class="sponsorBox">
            <img src="/ssw/Images/Awards/SharewareRiverlinkbutton.gif" alt="Shareware River" width="80" height="28" /><br />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" />
            <img src="/ssw/Images/SoftwareRatingStar.gif" alt="Star" width="13" height="12" /><br />
            <br />
            <img src="/ssw/Images/Awards/coredownload.gif" alt="Core Download" width="86" height="42" />
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
        <p>This product is no longer supported. This is the new way of booking a meeting: <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/SendOutlookCalendarAppointmentsWhenAppropriate.aspx">Do you send Outlook Calendar appointments when appropriate?</a></p>
    </div>

    <p>
        SSW Exchange Team Calendar extracts calendar information stored on your Microsoft Exchange Server and makes it 
	available on the web. Managers and staff have an up-to-date schedule of appointments for all mailboxes on Exchange simply 
	by using their web browser.
    </p>

    <h2 class="thinner">Key Features & Benefits</h2>
    <p>
        <ul>
            <li>You can see how busy everyone in your office is. 
		<li>You can see where and what employees are doing 
		<li>You can assign/edit calendar events to employees that they will see in there MS Outlook calendar page 
		<li>Employees only have to keep their Outlook calendar up to date and 
        the results are instantly available in Exchange Team Calendar.
		<li>Supports palm pilot, Win CE, Outlook Web Access, Outlook.
		<li>Private calendar items and Free time items are not displayed.
	    <li>
            No client settings are required.
        </ul>
    </p>
    <p>
        If someone rings for an employee, instead of running around the office to see whether a employee is in, out to lunch, available 
	or not; you can quickly and easily open up SSW Exchange Team Calendar and view where everyone in the business is. Furthermore if you 
	are a manager and wish to assign some work to an employee, then you can see what an employee is doing, and what they have 
        planned, then make a informed decision to who is able to complete the set work.
    </p>
    <p>
        Employees can easily configure and manage their calendar using Microsoft Outlook or on the web. As soon as the user has entered 
	the task in their calendar, it is available in SSW Exchange Team Calendar.
    </p>

    <p>
        Previous methods of displaying such information was using:
	<ul>
        <li>graphs and lists in Excel </li>
        <li>a database in Access</li>
        <li>a public calendar in Exchange Server</li>
    </ul>
        <p>
            <p>
                Regardless 
        of the method, keeping an employee task list on track and up to date has 
        always been a time consuming practice as most methods involve re-entering 
        data.
            </p>
        </p>
        <p>
            This tool 
        allows you to see everyone in the office's calendar all at once so there 
        is no need to go fumbling though each users calendar to see who is free.
        </p>

        <p>
            <img src="/ssw/TeamCalendar/Images/demo_week.gif" alt="Demo week" border="1" width="550" height="352">
            <br />
            <b>Figure: SSW Exchange Team Calendar extracts calendar information 
		stored on your Microsoft Exchange Server and makes it available on the 
		web</b>
        </p>
        <p>
            More screen shots in the User Guide
        </p>



        <h2 class="thinner">User Guide</h2>

        <p>
            Welcome to the <a href="UserGuide.aspx">User Guide</a>. This help facility is designed to quickly get 
		you up and running using our software.
        </p>
        <SSW:incDemonstration ID="IncDemo" runat="server"></SSW:incDemonstration>

        <h2>How it works</h2>

        <div class="greybox" style="width: 40%; float: right; margin-left: 30px;">
            <b>Get rid of "I don't know" from your office</b>
            <p>
                "Where is Dan?"
		<br />
                <s>"I don't know"</s>
                <br />
            "Look in SSW Exchange Team Calendar."
        </div>

        There are two main ways to track people's calendar items:
  
        <ol>
            <li>Every time someone creates an item in Outlook, you could run a piece of 
    code that takes the calendar item and copies it to a global 
	calendar store. The store you use could be a folder in the Public folders or a database like SQL Server.  
    Once in there&nbsp; you can create a page to query this data source and display 
    the results. 
	Having the code on the client in Outlook and not on the server in Exchange also gives issues. 
	Problems occur trying to keep this data up-to-date as you are 
    limited to just using outlook (no updating entries via Outlook Web Access, no PDA or Mobile phone 
    submissions). You are also duplicating the data so data can get out of sync 
    easily. 
            </li>
            <li>The other option is to just query the user's mailbox directly. This is the 
    simplest method as the user can add and update their calendar from any source 
    and it will show the users current data and never go out of sync. The problem 
    with this is that security is normally compromised because you will have to 
    give someone or everyone permissions to view your mailbox<br />
            </li>
        </ol>
        <p>
            SSW chooses the second option and addressed the security issue by adding an additional user 
	'SSWExchangeTeamCalendar'. This user has all the permissions required without needing to open up 
	mailboxes unnecessarily.
	<p>
        The SSW Exchange Team Calendar web page resides on the same server as Microsoft Exchange Server 
    2000 or 2003 is running.
	Whenever a request is made to the SSW Exchange Team Calendar page, the page queries Exchange Server and returns all the events to all 
	users for that particular time period. You have to make a new user that will have read/write permissions on peoples calendar 
	therefore security is still controllable is not compromised.
	
    </p>


        </p>

        <a name="SystemRequirements"></a>
        <h2>System Requirements</h2>

        <p>
            <ul>
                <li>Microsoft Exchange Server 2000 with Service Pack 3 or Microsoft Exchange Server 
    2003 (running on the same machine as the SSW Exchange Team Calendar .asp pages) </li>
                <li>Microsoft IIS running the SSW Exchange Team Calendar .asp pages.</li>
                <li>Employees using Microsoft Outlook for their Calendar OR Microsoft Outlook 
    2000 or 2003 Web Access via a browser.</li>
                <li>A single Exchange Server setup. Multiple Exchange Servers are not supported.</li>
            </ul>
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

        <br />
        If you can't find what you are looking for in the product documentation 
    then check our <a href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=SSWTC">knowledge 
    base</a> for further information and tips about this product.
        <p>
            Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a> and <a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">feedback</a>
            so that we can evolve our software into a product that matches your requirements. We guarantee a response.
        </p>

        <h2>Links</h2>

        <p>
            <ul>
                <li><a href="HowToBookSomeoneForMeeting.aspx">The right way to book someone in for a meeting</a></li>
            </ul>
            <h2>I'm Sold... What's next?</h2>
            <p>
                <div class="download">
                    <a href="/ssw/Products/ProdCategory.aspx?CategoryID=SSWTC" class="red next">Purchase Full Version</a><br />
                    or 
                    <br />
                    <br />
                    <a href="/ssw/Download/ProdBasket.aspx?ID=TC019">Download Free Trial Version</a>
                </div>
            </p>
    Microsoft and the Office logo are trademarks or registered trademarks of 
	Microsoft Corporation in the United States and/or other countries.
</asp:Content>
