<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Managing Software Consultants" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
    <p>
        Some clients are very interested in our methodology, others are only concerned that
        we deliver the goods. A common question is &quot;What do we have to do to get the
        most out of you?&quot; This is what we tell them.
    </p>
    <p>
        Firstly, &quot;Software projects are joint endeavours&quot;. We both have responsibilities
        to ensure the end result makes both parties happy.</p>
    <p>
        I've taken some thought about my experiences working with many different clients
        over the years, and created some rules which we think assist our clients to work
        with us in delivering the best software.
    </p>
    <p>
        Do you agree with them all? Are we missing some? Email us your tips, thoughts or
        arguments. <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304D616E6167696E67253230536F667477617265253230436F6E73756C74616E7473')">
            Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <h3>
            Rules to Managing Software Consultants</h3>
        <ol>
            <li><a href="#KnowWhatisGoingOn">Do you know what is going on?</a></li>
            <li><a href="#ProductOwner">Do you provide a Product Owner?</a></li>
            <li><a href="#SpecificRequirements">Are you specific in your requirements?</a></li>
            <li><a href="#ReadEmailCarefully">Do you read and manage your emails carefully?</a></li>
            <li><a href="#RespondQuickly">Do you respond to queries quickly?</a></li>
            <li><a href="#ConductUserTesting">Do you conduct user acceptance testing thoroughly?</a></li>
            <li><a href="#Bugs">Do you know who pays for 'bugs'?</a></li>
            <li><a href="#ChangesBudgetTime">Do you remember any changes you request will impact on budget and time?</a></li>
            <li><a href="#ExistingIssues">Are you aware of existing issues?</a></li>
            <li><a href="#DeadlinesMove">Do you understand deadlines often move or scope has to change?</a></li>
            <li><a href="#SignTimeSheets">Do you sign the consultants timesheets every day?</a></li>
            <li><a href="#WantAPM">Do you use an experienced project manager or a Scrum Team?</a></li>
            <li><a href="#UpdatesProvided">Do you get regular updates on costs and progress?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="KnowWhatisGoingOn"></a>Do you know what is going on?</h2>
                <p>
                    We've all heard horror stories of tradesmen causing chaos: &quot;I asked them to
                    fix a tap, but after the sink broke we had to move out for 6 weeks while the carpet
                    was dry-cleaned and new floor-boards were laid.&quot; This problem generally occurs
                    after you have let the supplier have a free-for-all in your house while you're at
                    work: &quot;Just let yourself in, the keys under the mat, and get the job done&quot;.</p>
                <p>
                    My Father-in-Law is Greek and I have noticed he gets more out of a tradesman than
                    anyone else. Bottom line is he watches what they're doing and then gets on their case
                    early when things aren't perfect. Whether it's carpet layers not matching the patterns
                    together or plasterers leaving unsightly corners - as soon as he spots a problem
                    he confronts them straight away and gets them to rectify it.
                </p>
                <p>
                    With any professional consultant or tradesman you should always take a hands-on
                    approach with the project, stay on top of the important issues, and be ready to
                    get involved when you see a problem.
                </p>
                <p>
                    Of course, as your relationship builds with the consultant or tradesman, and they
                    become more aware of your expectations, you can divulge greater trust and leave
                    them to it.
                </p>
                <p>
                    So insist your software consultants <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/Verbalcontact.aspx ">maintain verbal contact</a> with you.
                </p>
                 <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouKnowEhatIsGoingOn.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouKnowEhatIsGoingOn.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ProductOwner"></a>Do you provide a Product Owner?</h2>
                <p>
                    There are lots of stakeholders in a software project. Users, Marketing, Managers,
                    they all have requirements for the new system but if the spec becomes a free-for-all,
                    it is more likely the project will be steered off-course.</p>
                <p>
                    Select a "<a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/WhoHasAuthority.aspx">Product Owner</a>" - who is the sole person able
                    to make scope decisions and authorize work.
                </p>
                <p>
                    Remember it's all too tempting to allow the DBA to authorise work 
                    without seeking proper authority, so insist that your software consultants 
                    follow <a href="RulestoHappyClients.aspx#GetWorkApproved">the standard on getting work approved</a> through a Product Owner.                    
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouProvideAProductOwner.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouProvideAProductOwner.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="SpecificRequirements"></a>Are you specific in your requirements?</h2>
                <p>
                    When you're scoping the work to be completed, ensure you are as accurate as possible
                    in your requirements. Saying "I want to keep contact details on my clients" is likely
                    to require later clarification. Instead say: "I want to record my clients' firstname,
                    surname, mobile phone, email address & Instant Messenger messenger address." This
                    way, you'll get exactly what you want. Even better, use screen shots or mock-ups.
                </p>
                <p>
                    The best way for this to work is to break tasks into the smallest possible <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/SpecinBiteSizePieces.aspx">bit size pieces</a>
                    and ensure that those pieces are in the project plan explicitly.
                </p>
                <p>
                    Sometimes software developers miss a related item which you might consider 'blindingly
                    obvious.' For example you might ask them to fix a combo box on one form in a legacy
                    application. But they mightn't know about the three other forms that the same type
                    of combo appears on. So if you also want them fixed, then let them know about them!
                </p>
                <p>
                    Insist your software consultants <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/SpecificationByMockUp.aspx">conduct specifications by creating mock-ups</a>.               
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/AreYouSpecificInYourRequirements.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/AreYouSpecificInYourRequirements.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ReadEmailCarefully"></a>Do you read and manage your emails carefully?</h2>
                <p>
                    Email has a bad name in business primarily because people don't treat email correctly.
                    Email can be a vital tool to your company, and your software development project,
                    but it has to be managed. Email should be an accurate record of requests, conversations,
                    and decisions. Emails are legal documents and should be treated with the same care
                    as any other correspondence with clients or employees. Email is also an extremely
                    effective task tracking tool, and requests made by email should be treated with
                    the same seriousness as Project Plans and other directives.
                </p>
                <p>
                    Software developers send many queries via email, we ask that you pay close attention
                    to your Inbox and respond promptly.
                </p>
                <p>
                    Insist your software consultants follow the standards to <a href="/ssw/Standards/Rules/RulestoBetterEmail.aspx">better email</a>
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouReadAndManageYourEmailsCarefully.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouReadAndManageYourEmailsCarefully.aspx</a></font>
            </li>      
            <li>
                <h2>
                    <a name="RespondQuickly"></a>Do you respond to queries quickly?</h2>
                <p>
                    Now we're working, you'll get loads of questions. Most software projects demands
                    close interaction with the Client. As the developers are usually working to tight
                    budgets and schedules, getting quick answers to questions is a must. The Product Owner should be able to answer developer's questions within 4 hours. Otherwise
                    decisions will be delayed and costs increase.
                </p>
                <p>
                    A good way to fix this problem is to insist your software consultants contact you via <a href="RulesToBeingSoftwareConsultantsDealingWithClients.aspx#ClientsUsingMessenger">MSN/Live Messenger</a>.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouRespondToQueriesQuickly.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouRespondToQueriesQuickly.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ConductUserTesting"></a>Do you conduct user acceptance testing thoroughly?</h2>
                <p>
                    The shorter the time period between development and testing, the quicker it will
                    be to solve them. When your developers get you a test version, have your resources
                    available to review the version and get feedback to them straight away.
                </p>
                <p>
                    Insist your software consultants run a <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/InternalTestPlease.aspx">test please</a> with you every week.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouConductUserAcceptanceTestingThoroughly.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouConductUserAcceptanceTestingThoroughly.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="Bugs"></a>Do you know who pays for 'bugs'?</h2>
                <p>
                    You WILL discover bugs in any newly developed software. This is perfectly normal.
                    It's important to have a common understanding with your software developers about
                    what to do when they arise.
                </p>
                <p>
                    'Bugs' are generally a consequence of the development team not knowing every possible
                    scenario when adding error handling. Generally speaking it takes developers just
                    as long to add the error handling before you test it than after you test it. Bugs
                    can also occur when development requirements change on the spot or work is not sufficiently
                    specified.
                </p>
                <p>
                    For these reasons, fixing such issues is generally billable work on time & material
                    contracts. On fixed-price contracts, bugs are generally fixable within the warranty
                    period at no cost to you.
                </p>
                <p>
                    <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/BugDefinition.aspx">What is a bug?</a>
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouKnowWhoPaysForBugs.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouKnowWhoPaysForBugs.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ChangesBudgetTime"></a>Do you remember any changes you request will impact on budget and time?</h2>
                <p>
                    Often towards the end of a project, you may request extra pieces of functionality
                    ("Can you add a second email address field into the Client Contact form?"), or maybe
                    another report is required. Even in the middle of a project extra work can be requested
                    as project goals move. So long as there isn't a technical or business problem with
                    the request, the work will be scheduled by the developers and done.
                </p>
                <p>
                    Every new item that is requested increases the total hours and scope of the project
                    and therefore the cost. If the project has a drop-dead date or budget, don't ask
                    for things that will blow these deadlines out. Or, if you want your developers to
                    work to a budget, ask them to let you know what 'can't be done.'
                </p>
                <p>
                    Insist your software consultants correctly <a href="RulestoHappyClients.aspx#TriageAdditionalItemRequests">triage additional item requests</a>.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouRememberThatAnyChangesYouRequestWillImpactOnBudgetAndTime.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouRememberThatAnyChangesYouRequestWillImpactOnBudgetAndTime.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ExistingIssues"></a>Are you aware of existing issues?</h2>
                <p>
                    No doubt there will be a time when you get new developers to work on an existing
                    application. Known issues with the existing application should be clearly delineated
                    as much as possible. But new bugs will occur when changes have unforeseen effects
                    on functionality down the line. This is to be expected.
                </p>
                <p>
                    Once again it's a matter of working with your developers in being clear in requirements
                    and testing as changes are made to ensure these issues are trapped as early as possible.
                </p>
                <p>
                    Ask your SSW developer to add a test case which will mean in the future important functionality will never
                    "disappear" or break.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/AreYouAwareOfExistingIssues.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/AreYouAwareOfExistingIssues.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="DeadlinesMove"></a>Do you understand deadlines often move or scope has to change?</h2>
                <p>
                    If you have a tight schedule and deadline for the release, we need you to be clear with
                    your developers right at the beginning about what needs to be done and when. Most developers
                    generally can't guarantee they can work with your deadlines, but they'll be honest
                    up front about when items can be completed.</p>
                <p>
                    Your budget and deadline may mean some items will not get done.</p>
                <p>
                    Sometimes their estimate on items are way too short or too long. It is very hard
                    to be 100% accurate when estimating hours to complete work.
                </p>
                <p>
                    The best way to keep track is to insist on a <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/EnforceDeadlinesHaveAProjectReleasePlanADebriefAMark10AndAStatusMeeting.aspx">weekly release update/debrief</a>.
                </p>
                <div class="scrumBox">
                    <p>
                        <strong>For Scrum Projects:</strong></p>
                            <p>Deadlines don't move, features do. At your Daily Scrum the team may decide that a Story or Stories will not be completed by the end of the Sprint. Make sure you are involved in the Daily Scrums to keep informed which Stories won't make the Sprint.
                        
                    </p>
                </div>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouUnderstandDeadlinesOftenMoveOrScopeHasToChange.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouUnderstandDeadlinesOftenMoveOrScopeHasToChange.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="SignTimeSheets"></a>Do you sign the consultants timesheets every day?</h2>
                <p>
                    Many software developers will work on-site, especially on time & material contracts.
                    Before they leave your offices every day, ask them to present their diary, or whatever
                    method they use for recording time, for checking and signing. This way, you can see what was done 
                    and raise any issues with developers.
                </p>
                <p>
                    Insist your software consultants ask you to <a href="RulesToBetterTimesheets.aspx#Diary">sign their timesheets</a> every day.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouSignTheConsultantsTimesheetsEveryDay.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouSignTheConsultantsTimesheetsEveryDay.aspx</a></font>
            </li>
                

            <li>
                <h2>
                    <a name="WantAPM"></a>Do you use an experienced project manager or a Scrum Team?</h2>
                <p>
                    Some clients think that a Project Manager is just a resource that increases the cost of a project. But a house does not get
                    built if you leave the architect, carpenters, electricians and plumbers to just work it out between themselves. The house
                    DOES get built if the foreman is keeping everyone on their toes making sure they are doing their job. 
                </p>
                <p>
                    Insist your <a href="RulestoBetterProjectManagement.aspx#ManageReleaseDevelopmentProcess">Project Manager maintains a strict project schedule</a>.
                </p>    
                <div class="scrumBox">
                    <p>
                        <strong>For Scrum Projects:</strong></p>
                        <p>In Scrum projects the role of project manager is split into three roles: ScrumMaster, Product Owner and Team. Each role is essential. </p>
                        
                        <p>For more information go to <a href="http://www.scrumalliance.org/articles/39-glossary-of-scrum-terms">Scrum Terms</a> and <a href="http://www.scrumalliance.org/pages/scrum_roles">Scrum Roles</a>.</p>
                </div>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouUseAnExperiencedProjectManagerOrAScrumTeam.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouUseAnExperiencedProjectManagerOrAScrumTeam.aspx</a></font>
            </li>    
            <li>
                <h2>
                    <a name="UpdatesProvided"></a>Do you get regular updates on costs and progress?</h2>
                
                <p>
                    You're the one paying the bills, make sure you know where the costs are and how the project is progressing.
                </p>
                <p>
                    Insist on receiving the following reports on a weekly basis as a minimum:                
                </p>    
                <ul>
                    <li>Current project costs (from the timesheets directly). This allows you to see the actual costs of the project
                    on a weekly basis.
                        <p>
                            <img src="images/projectprogresscapture.JPG" alt="project progress report" /><br />
                            <b>Figure: Project Progress report</b>
                        </p>
                     </li>
                     <li>Current hours remaining and hours completed for the current sprint:
                        <p>
                            <img src="images/burndown.JPG" alt="Burndown report from TFS" /><br />
                            <b>Figure: Burndown report showing the progress of the team in the current sprint</b>
                        </p>
                        <p>
                         <strong>Questions the Burndown and Burn Rate report helps answer: </strong>
                        </p>
                         <ol>
                         <li>Is the team likely to finish the iteration on time?</li>
                         <li>Will the team complete the required work, based on the current Burn Rate?</li>
                         <li>Has the team added work to the iteration?</li>
                         <li>How much work does each team member have?</li>
                         <p><a href="http://msdn.microsoft.com/en-us/library/dd380678(VS.100).aspx">How to Use the Burndown and Burn Rate Report</a></p>
                         </ol>
                        <p>
                            <img src="images/storiesOverview.JPG" alt="Stories overview report from TFS" /><br />
                            <b>Figure: Stories report showing the progress of the User Stories in the current sprint</b>
                        </p>
                         <p>
                         <strong>Questions the Stories Overview report helps answer: </strong>
                        </p>
                         <ol>
                         <li>How much work does each story require?</li>
                         <li>How much work has the team completed for each story?</li>
                         <li>Are the tests for each story passing?</li>
                         <li>How many active bugs does each story have?</li>
                         <p><a href="http://msdn.microsoft.com/en-us/library/dd380648(VS.100).aspx">How to Use the Stories Overview Report</a></p>
                         </ol>
                    </li>
                    <li>What has been completed and what is outstanding (from the Release Plan Work Item list). This allows you to see the
                    actual progress of the Release.
                        <p>
                            <img src="images/projectupatecapture.JPG" alt="project update report" /><br />
                            <dl class="bad">
                            <dd>Bad example: Release Plan update using eXtremeEmail not TFS</dd>
                            </dl>
                        </p> 
                        <p>
                            <img src="images/projectprogresstfs.JPG" alt="Project progress report from TFS" /><br />
                            <dl class="good">
                            <dd>Good example: Release Plan update using TFS</dd>
                            </dl>
                        </p>
                    </li>
                </ul>    
                
                <p>
                    If you need more than this you just need to ask your project manager (but be aware that extra reporting costs time)
                
                </p>
                 <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouGetRegularUpdatesOnCostsAndProgress.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToManagingSoftwareConsultants/Pages/DoYouGetRegularUpdatesOnCostsAndProgress.aspx</a></font>
            </li>
        
        <h2>
            Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=CS">Cameron Shaw</a><br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
        </p>
        <p>
            All work is performed according to our standard <a href="/ssw/Standards/Forms/ConsultingOrderTermsConditions.aspx">
                Consulting Order Terms & Conditions</a>.
        </p>
        </ol>
 </div>  
</asp:Content>