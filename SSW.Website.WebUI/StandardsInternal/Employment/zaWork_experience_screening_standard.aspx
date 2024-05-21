<%@ Page Language="C#" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Work Experience Screening Standard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <div id="intro">
        <p>
            SSW gets a lot of interest from students or up and coming programmers wanting to
            participate in our work experience program. However, if not managed properly, and
            if we get the wrong sort of people in, instead of being an asset to the company
            and learning, they can end up unmotivated and taking up more time than they save.
        </p>
        <p>
            For this reason, we use a system whereby we carefully screen work experience prospects
            and help them to develop through their time here by monitoring their progress.
        </p>
    </div>
    <div class="TableOfContents">
        <h3>
            Work Experience Screening</h3>
        <ol>
            <li><a href="#PhoneScreening">Phone Screening</a></li>
            <li><a href="#Meeting">Meeting</a></li>
            <li><a href="#Testing">Testing</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="PhoneScreening"></a>Phone Screening</h2>
                When we get the phone call from the interested person, we discuss some or all of
                the following:
                <ul>
                    <li>Qualifications (i.e. get a copy of their CV)</li>
                    <li>Previous experience (i.e. references)</li>
                    <li>Past work examples (i.e. try to get hold of some previous work examples, old applications
                        or websites, etc)</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="Meeting"></a>Meeting</h2>
                Once the applicant has been deemed appropriate for the position, we get them in
                for a meeting with a project manager who will explain what will be expected of them
                in their time at SSW:
                <ul>
                    <li>Ask them what they want from the experience</li>
                    <li>Let them know clearly what SSW expects from them</li>
                    <li>They should have some level of programming background</li>
                    <li>They need to be fairly autonomous and self motivated</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="Testing"></a>Testing</h2>
                <p>
                    After the candidate has been accepted, they will be coming in on a full time basis
                    9-6, 5 days a week, and will be given a number of training materials during their
                    time here.
                </p>
                <p>
                    Every 2 weeks, they will be asked to sit a test to monitor their progress and allow
                    them to see how their knowledge is progressing.
                </p>
                <p>
                    There will be 3 of these tests in total, and they will be on the following topics:
                </p>
                <ul>
                    <li>Databinding in ASP .NET</li>
                    <li>Databinding in Winforms</li>
                    <li>RegEx</li>
                </ul>
                <p>
                    On top of this, each work experience candidate will be assigned a mentor from the
                    china office who they can ask questions if needed and who will guide them through
                    working with one of the internal product releases.
                </p>
            </li>
        </ol>
        <br />
        <h2>Acknowledgements</h2>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=UM">Ulysses Maclaren</a>
    </div>
</asp:Content>
