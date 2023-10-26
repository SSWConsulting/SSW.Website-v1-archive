<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="Microsoft Project Server Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	    <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath>
    </p>
    <div class="TableOfContents">
            <h3>Microsoft Project Server Suggestions</h3>
                <ol>
                    <li><a href="#ShowTaskNotes">Task notes field should be shown and editable in Project Center views</a></li>
                    <li><a href="#NotSoNiceUI">Not so nice UI</a></li>
                    <li><a href="#SeeBetterInfo">Help me see better information about my resources</a></li>
                </ol>
    </div>
    <ol>
        <li>
            <h2><a name="ShowTaskNotes"></a>Task notes field should be shown and editable in Project Details View</h2>
            <p>Project Server task notes field should be accessible via the Project Center view of a project. You should be able to see the entire contents of the task notes, and they should be editable.</p>
            <dl class="image">
                <dt><img src="images/ProjectServerNotes.GIF" alt="Project Server notes" /></dt>
                <dd>Figure: Can't view task notes via the Project Center views</dd>
            </dl>
        </li>

        <li>
            <h2><a name="NotSoNiceUI"></a>Not so nice UI</h2>
            <p>I really think the experience is rough and bumpy... I have soooo much feedback to give, but not enough time. I think it would take me more than a couple of days if I was to complain about everything.</p>
            <p>Anyway this UI is one example... You just don't know what to do... It just works... but it is not the perfect timesheeting system.</p>
            <dl class="image">
                <dt><img src="images/NotSoNiceUI.jpg" alt=" Lots of work needed on this" /></dt>
                <dd>Figure: Lots of work needed on this</dd>
            </dl>
            <dl class="image">
                <dt><img src="images/NotSoNiceUI2.jpg" alt="This is the originating UI" /></dt>
                <dd>Figure: This is the originating UI</dd>
            </dl>
        </li>

        <li>
            <h2><a name="SeeBetterInfo"></a>Help me see better information about my resources</h2>
            <p>The Resources tab in PWA shows me my resources with very little control of the view.  I would like to customize my view so I can see the records and the columns that I'm interested in.</p>
            <p>Suggestions:</p>
            <ol>
                <li>The Standard Rate column should be included in one of the 5 built in views</li>
                <li>The normal way to customize views should be there&#8230;. so if I want to add the Standard Rate column in the grid &#8211; please add a Library Tab</li>
            </ol>
            <dl class="image">
                <dt><img src="images/Project-Server_limited-views.jpg" alt="Project-Server_limited-views" /></dt>
                <dd>Figure: I am given a limited number of views and no way to edit them</dd>
            </dl>
            <dl class="image">
                <dt><img src="images/Project-Server_define-views.jpg" alt="Project-Server_defined-views" /></dt>
                <dd>Figure: I expect it to be like Sharepoint where I can define my own views. So in PWA, please add a Library tab (with the section in red) so I can add new columns and filter the resources</dd>
            </dl>

        </li>

    </ol>
    <h2>Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TK">Tim Kremer</a><br />
    </p>
</asp:Content>
