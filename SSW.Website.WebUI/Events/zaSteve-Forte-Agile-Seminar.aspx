<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/SubPage.master"
    Title="Steve Forte Half-day Agile Seminar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider"
            CurrentNodeStyle-CssClass="current" PathSeparator=" &raquo; " PathSeparatorStyle-CssClass="separator"
            CssClass="breadcrumblight">
        </asp:SiteMapPath>
    </p>
    <div id="eventsummary">
        <h1>
            <img src="/ssw/Training/images/thumb_Scrum_Training.jpg" alt="course image" class="thumbnail" />Steve
            Forte
            <br />
            Half-day Agile Seminar</h1>
        <ul class="vitals">
            <li>Presenter
                <ul>
                    <li>Steve Forte</li>
                </ul>
            </li>
            <li>Duration
                <ul>
                    <li>3 hours</li>
                </ul>
            </li>
            <li>Price
                <ul>
                    <li>Free</li>
                </ul>
            </li>
        </ul>
        <ul class="schedule">
            <li><strong>SSW Sydney</strong>
                <ul>
                    <li>19 May 2010 <span>Complete!</span></li>
                </ul>
            </li>
        </ul>
    </div>
    <h1>
        Agile Development, Tools and Teams</h1>
    <p>
        One of the most popular Agile project management and development methods, Scrum
        is starting to be adopted at major corporations and on very large projects. After
        an introduction to the basics of Scrum like: project planning and estimation, the
        Scrum Master, team, product owner and burn down, and of course the daily Scrum,
        Stephen (a certified Scrum Master) shows many real world applications of the methodology
        drawn from his own experience as a Scrum Master.
    </p>
    <p>
        Negotiating with the business, estimation and team dynamics are all discussed as
        well as how to use Scrum in small organizations, large enterprise environments and
        consulting environments. Stephen will also discuss using Scrum with virtual teams
        and an off-shoring environment. We'll then take a look at the tools we will use
        for Agile development, including planning poker, unit testing, and much more. There
        will be plenty of time for Question and Answer. This seminar is a jump start for
        a certified scrum master exam.
    </p>
    <table class="outline" width="100%">
        <tr>
            <th scope="row">
                Agenda
            </th>
            <td>
                <ul>
                    <li>Introduction to Agile Development and Scrum</li>
                    <li>Agile Estimation</li>
                    <li>Implementing Scrum with remote and offshore teams</li>
                    <li>Agile Tools, Test Driven Development, and Continuous Integration</li>
                </ul>
            </td>
        </tr>
        <tr>
            <th scope="row">
                Location
            </th>
            <td>
                Hosted by SSW<br />
                Gateway Court Suite 10<br />
                81 - 91 Military Road<br />
                Neutral Bay<br />
                <a href="/ssw/Company/Directions/NeutralBay/Default.aspx">Directions</a>
            </td>
        </tr>
        <tr>
            <th scope="row">
                Times
            </th>
            <td>
                Wednesday 19th May 2010<br />
                9:00am - 12:00pm
            </td>
        </tr>
    </table>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="http://www.ssw.com.au/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
        <br />
        <a href="http://www.stephenforte.net" target="_blank">Steve Forte</a>
    </p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="rounded">
        <h3>
            Sessions</h3>
    </div>
    <div class="section offer">
        <div class="customworkshop">
            <h3>
                Need custom training?</h3>
            <p>
                Interested in scrum for your company? Let us bring the training to you! Drop a line
                to <a onclick="javascript:sendEmailWithSubject('756C7973736573407373772E636F6D2E6175','Scrum Training - http://www.ssw.com.au/events/ScrumTrainingCourse.aspx',this)"
                    category="Ulysses" process='true' onmouseover="self.status='mailto:' + decodeit('756C7973736573407373772E636F6D2E6175 '); return true;"
                    onmouseout="self.status='';return true;" style="text-decoration: underline; cursor: pointer">
                    756C7973736573407373772E636F6D2E6175 </a>to begin.
            </p>
            <p>
                See a <a href="/ssw/training/PowerSessions.aspx">full list</a> of other available
                training courses</p>
        </div>
    </div>
    <div class="section">
        <h3>
            About the presenter</h3>
        <p>
            <img src="images/steveforte_thumb.jpg" class="thumbnail" /><a href="http://www.stephenforte.net/">Steve
                Forte</a>, MVP, is the Chief Strategy Officer of Telerik, a Microsoft Gold Certified
            partner. Forte is the founder of the NYC .NET Developer User Group, and has written
            several books on application and database development.</p>
    </div>
</asp:Content>
