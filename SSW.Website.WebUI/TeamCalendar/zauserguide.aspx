<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>
<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Team Calendar for Exchange 2000 & 2003 - Screenshots" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <a href="/ssw/TeamCalendar/">SSW TeamCalendar</a> > Screenshots<br>
    <br>
    <!--
			This is the main document.
			-->
    <div id="printTitle" style="display: none;">
        <span>

            <script type="text/javascript">
						document.write("<h1>" + document.title + "</h1>");
            </script>

        </span>
    </div>

        <div class="discontinued-greybox">
            <p>This product is no longer supported. This is the new way of booking a meeting: <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/SendOutlookCalendarAppointmentsWhenAppropriate.aspx" target="_blank">Do you send Outlook Calendar appointments when appropriate?</a></p>
        </div>

    <img src="Images/TeamCalendarLogo.gif" alt="SSW Team Calender" width="482" height="82">
    <p>
        <b>Share your Calendar with SSW Team Calendar for Exchange 2000</b></p>
    <p>
        SSW Team Calendar for Exchange 2000 extracts calendar information stored on your
        Microsoft Exchange Server and makes it available on the web. Managers and staff
        have an an up-to-date schedule of appointments for all mailboxes on Exchange simply
        by using their web browser.</p>
    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
        style="{width: 100%}">
        <tr>
            <td>
                <b>SSW TeamCalendar User Guide</b><br>
                <!--	<a href="#Pre">1.</a> Prerequisites<br /> -->
                <a href="#InstallGuide">1.</a> Installation Guide<br>
                <a href="#LDCalendar">2.</a> Loading Team Calendar<br>
                <a href="#Settings">3.</a> Settings<br>
                <a href="#useTcalendar">4.</a> Using SSW Team Calendar<br>
                <a href="#BTcalendarpg">5.</a> Bookmark Team Calendar Pages<br>
            </td>
        </tr>
    </table>
    <h2>
        Installation Guide<a name="InstallGuide"></a></h2>
    <p>
        <a href="Installation/">Installation Guide</a>
        <p>
            <h2>
                Loading Team Calendar<a name="LDCalendar"></a></h2>
            <p>
                To start Team Calendar load up your Internet Browser and enter in
                <!-- SSW Code Auditor - Ignore next line: sample -->
                http://localhost/TeamCalendar (this assumes that you have Team Calendar loaded on
                the computer you are on)&nbsp;</p>
            <p>
            <!--SSW Code Auditor - Ignore next line(HTML)-->
                By default the login credentials are:<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>User:</b> admin<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Password:</b>
                admin
                <p>
                    &nbsp;</p>
                <p>
                    There are 2 users that you can configure. The Admin Login allows you to modify settings
                    and add/edit users items. The Users Login is there for people to view the information
                    but not add or modify any data.</p>
                <p>
                    &nbsp;</p>
                <h2>
                    Settings<a name="Settings"></a></h2>
                <p>
                    <img src="Images/demo_opt.gif" alt="Demo Menu" width="550" height="513">
                    <br />
                    <strong>Figure: Team Calendar is configured through the options page</strong></p>
                <p>
                    In here you can configure site settings and also select the users that will not
                    be shown on Team Calendar. You can access this by clicking on Calendar Options in
                    the drop down menu at the top of every page.
                </p>
                <h2>
                    Using SSW Team Calendar<a name="useTcalendar"></a></h2>
                <p>
                    <img src="Images/demo_week.gif" alt="Demo week" width="550" height="352">&nbsp;<br />
                    <strong>Figure: The weekly view lists users and displays the times they are busy during
                        that day (Indicated by the Blue images). The current day is always highlighted in
                        RED </strong>
                </p>
                <p>
                    &nbsp;</p>
                <p>
                    <img src="Images/demo_now.gif" alt="Demo now" width="550" height="365">&nbsp;<br />
                    <strong>Figure: You can quickly and easily review the status of your employees over
                        a 30 min period </strong>
                </p>
                <p>
                    &nbsp;</p>
                <p>
                    <img src="Images/demo_pweek.gif" alt="Demo weekly" width="550" height="406">&nbsp;<br />
                    <strong>Figure: You can select a particular user and see the tasks the user has for
                        that day or week...</strong></p>
                <p>
                    &nbsp;</p>
                <p>
                    <img src="Images/demo_month.gif" alt="Demo Monthly" width="550" height="305"><br />
                    <strong>Figure: Or Month. </strong>
                </p>
                <h2>
                    Bookmark Team Calendar Pages<a name="BTcalendarpg"></a></h2>
                <p>
                    Team Calendar includes the current date in the default URL (e.g. CalendarDay.asp).
                    This means you can bookmark Team Calendar, and always have the current day returned
                    when you open the bookmark.</p>
                <p>
                    In addition you can specify a time period in the query string to give you future
                    information if required:</p>
                <ul>
                    <li>DAY=today</li><li>DAY=nextday</li><li>DAY=previousday</li><li>MONTH=nextmonth</li><li>
                        MONTH=previousmonth</li><li>YEAR=nextyear</li><li>YEAR=previousyear</li></ul>
                <p>
                    A typical query string is like: http://YOURMAILSERVER/teamcalendar/CalendarDay.asp?DAY=1&amp;MONTH=1&amp;YEAR=2005&amp;USER=</p>
                <p>
                    So you can change your query string to be like: http://YOURMAILSERVER/teamcalendar/CalendarDay.asp?DAY=<b>nextday</b>&amp;USER=</p>
</asp:Content>
