<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="Rules to Happy Clients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <!-- Get Tristan to help with this one.    
<div class="section">
<h1>Our Project Management System</h1>
<h2>Reducing the risk in software development</h2>
</div>

-->
    <dl class="image" style="float: right; clear: right; width: 263px;">
        <dt>
            <img src="Images/SuccessfulProjects_ManagingExpectations.jpg" alt="Making premature statements is not an effective way of managing expectations" /></dt>
        <dd>
            Figure: Making premature statements is not an effective way of managing expectations</dd>
    </dl>
    <p>
        Aiming for 'happy clients' can be an elusive game. Ultimately what makes one client
        happy is different from what makes another happy. However the first step to keeping
        anyone happy is to <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/ManageExpectations.aspx">manage
            expectations</a> from the beginning to the end of a project.
    </p>
    <p>
        The following steps are the processes by which you can manage client expectations
        and, with luck, keep them happy...
    </p>
    <div class="TableOfContents" style="width: 50%;">
        <h3>
            Rules to Happy Clients</h3>
        <ol>
            <li><a href="#TriageAdditionalItemRequests">Do you correctly triage additional item
                requests?</a></li>
            <li><a href="#WeeklyProjectUpdate">Do you send a weekly project update each Monday?</a></li>
            <li><a href="#EmailOverruns">Do you email clients as soon as you realise you will overrun
                your original estimate?</a></li>
            <li><a href="#AsPerOurConversation">Do you always send an "As per our conversation"
                e-mail?</a></li>
            <li><a href="#NotifyClientCodeChanges">Do you notify your project managers and clients
                of code and other application changes?</a></li>
            <li><a href="#ProjectPage">Do you use a project page for your team and client?</a></li>
            <li><a href="#TasksInAdditiontoWorkItems">Do you know what tasks are in a Release Plan
                in addition to Development Work Items?</a></li>
            <li><a href="#ProjProgress">Do you provide project progress report for clients?</a></li>
            <li><a href="#FlexibleOrderingofReleases">Are you flexible with the ordering of your
                releases?</a></li>
            <li><a href="#ObtainApprovalAdditionalItemsExceedEstimates">Do you get approval for
                additional items and when estimates will be exceeded?</a></li>
            <li><a href="#GetWorkApproved">Do you get work approved before you do it?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="TriageAdditionalItemRequests"></a>Do you correctly triage additional item
                    requests?
                </h2>
                <dl class="image" style="float: right; clear: right;">
                    <dt>
                        <img src="Images/SuccessfulProjects_Triage.jpg" alt="Only if it's life and death does it get added 'in this release'" /></dt>
                    <dd>
                        Figure: Only if it's life and death does it get added "in this release"</dd>
                </dl>
                <p>
                    "Triage" is a term originally used to describe the assessment of injured persons
                    into a priority order based on the severity and urgency of their injuries.
                </p>
                <p>
                    While developers don't often deal with real life and death situations very often,
                    the ability to prioritise and action issues that arise can keep the heartbeat of
                    a project steady and strong. Failure to manage additional work requests will have
                    an adverse affect on estimates and deadlines. Additional item requests can consist
                    of of new feature request, bug fixes, modifications, and undiscovered work (i.e.
                    work you didn't initially anticipate). You can manage additional item requests with
                    <a href="/SSW/eXtremeEmails/ManageProjects.aspx#AdditionalItems">eXtreme Emails</a>.
                </p>
                <b>"In this release" OR "in a later release" (or a "changes" release)</b>
                <p>
                    The first step is to analyze the priority of the additional item. Priority is dependant
                    upon the severity of the request. The priority will determine whether the request
                    is done "in this release" or "in a later release".
                </p>
                <p>
                    For example, a crash-to-code bug that prevents one or more users accessing the system
                    is high-priority and will be fixed "in this release". A request for a new screen
                    with a new look-up table that doesn't prevent users from operating the system and
                    will be allocated by the project manager to "a later release".
                </p>
                <p>
                    A client may specify "must be in this release" on an additional item request. This
                    will generally be done as requested unless the request will have a material impact
                    on inflexible time and budget restraints. For example if the work will take 2 extra
                    days which means a critical deadline will be missed, the work will be delayed. Otherwise
                    it can probably go ahead.
                </p>
                <p>
                    A client may request a small feature (e.g. changing the sort order of a combo-box).
                    This work can go in this release so long as such requests are kept to a minimum
                    - less than 1/2 hour.
                </p>
                <b>Approval by project manager and client</b>
                <p>
                    The second step is to obtain approval for any additional item request from both
                    the project manager and the client, and then add the request into the Release Plan
                    marked as an additional item. The work will not proceed without written approval
                    from the client. See more about how to <a href="#ObtainApprovalAdditionalItemsExceedEstimates">
                        Obtain Approval Additional Items Exceed Estimates</a>.
                </p>
                <dl class="good">
                    <dt>To: Evan Lin - SSW<br />
                        From: Alan Ha - FinaMetrica
                        <br />
                        Subject: Client List for Administrators<br />
                        <br />
                        Hi Evan,<br />
                        <br />
                        Can you plese add sort function (like the one in office 2007 - see below) next to
                        the fields: Last Name, First Name, Advisers and Organization. This will be applied
                        to all the relevant pages which have these fields in the list i.e. adviser list
                        for administrators, client list for advisers, etc. Please use the text Ascending
                        instead of "smallest to Largest" and Descending for "Largest to Smallest".<br />
                        <br />
                        Thanks,<br />
                        Alan<br />
                        <br />
                    </dt>
                    <dd>
                        Figure: The above is a sample of the customer's request, and will go into a later
                        (or changes) release, not the current release</dd></dl>
                <p style="color: red">
                    Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouCorrectlyTriageaAditionalItemRequests.aspx">
                        http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouCorrectlyTriageaAditionalItemRequests.aspx</a></p>
            </li>
            <li>
                <h2>
                    <a name="WeeklyProjectUpdate"></a>Do you send a weekly project update each Monday?</h2>
                <p>
                    A simple weekly project update report will be sent to the client and your Project
                    Manager every week. To do this there are 2 simple steps:</p>
                <ul>
                    <li>On Friday Morning do a Weekly Build</li>
                    <li>On Tuesday morning send the email </li>
                </ul>
                <p>
                    The Weekly Project Update report will contain the answers for the following questions:</p>
                <ol>
                    <li>The path of the new package you built last Friday</li>
                    <li>What's the % of the tasks? (Find this in the release folder)</li>
                    <li>What's the % of the budget? (Find this at the <a href="http://www.ssw.com.au/ssw/Standards/Rules/RulestoManagingSoftwareConsultants.aspx#UpdatesProvided">
                        Project Progress Report</a>) </li>
                    <li>Summary information from TFS Progress Report</li>
                </ol>
                <dl class="good">
                    <dt>I am currently working on <b>Swift Release_10_Jobs</b>
                        <br />
                        <br />
                        <ul>
                            <li>I did a build on Friday see http://ant:8000/Swift/</li>
                            <li>It is 60% Complete </li>
                            <li>Budget:</li>
                            <ul>
                                <li>Authorized: $75,000</li>
                                <li>Spent: $39,715</li>
                            </ul>
                            <li>I expect to finish on Fri 30/05/2008</li><br />
                            <br />
                        </ul>
                        Regards,
                        <br />
                        <br />
                        Eric Phan </dt>
                    <dd>
                        Figure: The above is a sample of the weekly project update report.
                    </dd>
                </dl>
                <p style="color: red">
                    Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouSendaWeeklyProjectUpdateEachTuesday.aspx">
                        http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouSendaWeeklyProjectUpdateEachTuesday.aspx</a></p>
            </li>
            <li>
                <h2>
                    <a id="EmailOverruns"></a>Do you email clients as soon as you realise you will overrun
                    your original estimate?</h2>
                <table class="clsSSWTable" cellspacing="2" cellpadding="2" style="width: 400px; float: right">
                    <tr>
                        <td>
                            <strong>To:</strong> Jo<br />
                            <strong>CC:</strong> David (Manager)<br />
                            <p>
                                Dear Jo<br />
                                <br />
                                Release 3 of Target Contacts will take longer than expected.
                                <br />
                                This is to let you know that the data migration of the Coverage Data is more complicated
                                than originally anticipated because and external database (Media Disk) also reads
                                from the coverage table. I am revising the estimate accordingly to 16 hours.
                                <br />
                                <br />
                                Regards, Tim
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong><span style="background-color: #ffffff">Figure: Notify the client of an email
                                like this, that the estimate has been or will be exceeded.</span></strong>
                        </td>
                    </tr>
                </table>
                <p>
                    Do NOT wait until you have met or exceeded an estimate before you notify the client
                    that the project is running late. As soon as you realise that any of your estimates
                    are likely to be exceeded by a margin 10% or greater, then let the customer know
                    ASAP by phone and by email. This will ensure that the client is fully aware of any
                    problems and has a chance to respond to them.</p>
                <p>
                    Never keep the client in the dark when you exceed your estimates as it will only
                    arouse suspicion and mistrust when the project deadline wooshes past!
                </p>
                <br />
                <table class="clsSSWProductTable" summary="LookOut" style="width: 30%" style="clear: both"
                    id="Table10">
                    <tr>
                        <td>
                            <p>
                                We have a program called <a href="/SSW/eXtremeEmails/Default.aspx">SSW eXtreme Emails!</a>
                                that automatically generates emails to notify the client of an exceeded estimate.
                            </p>
                        </td>
                    </tr>
                </table>
                <p style="color: red">
                    Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouEmailClientsAsSoonAsYouRealiseyouwilloverrunyouroriginalestimate.aspx">
                        http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouEmailClientsAsSoonAsYouRealiseyouwilloverrunyouroriginalestimate.aspx</a></p>
            </li>
            <li>
                <h2>
                    <a id="AsPerOurConversation"></a>Do you always send an "as per our conversation"
                    e-mail?</h2>
                <p>
                    At SSW we have a policy of following up <strong>every</strong> telephone conversations
                    with an email that begins with the words &quot;As per our conversation&quot;, with
                    the intent of documenting what was said and agreed upon.</p>
                <p>
                    This is for several reasons:</p>
                <ul>
                    <li>Make sure that we did not get the message wrong</li>
                    <li>Keep an audit trail of agreed decisions</li>
                    <li>Keep people who were not a party to the conversation informed about the progress</li>
                </ul>
                <p>
                    We use this approach internally for conversations between staff members as well.
                    As a result, we send an "as per our conversation" for any conversations between
                    SSW employees that will:</p>
                <ul>
                    <li>Have an impact on other employees</li>
                    <li>Require a task being completed</li>
                    <li>Needs to be referred back to in the future</li>
                </ul>
                <p style="color: red">
                    Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouAlwaysSendAnAsPerOurConversationEmail.aspx">
                        http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouAlwaysSendAnAsPerOurConversationEmail.aspx</a></p>
            </li>
            <li>
                <h2>
                    <a id="NotifyClientCodeChanges"></a>Do you notify your project managers and clients
                    of code and other application changes?</h2>
                <p>
                    You will inform your managers/clients of code changes where possible. To do this,
                    you will put code snippets of the the changes into an email outlining what modifications
                    you made (highlighting changes in yellow).</p>
                <p>
                    This has several benefits:
                </p>
                <ul>
                    <li>Improved visibility and transparency - The project manager can see the work actually
                        being done</li><li>The project manager can raise questions and issues about the code</li><li>
                            We have even found that these emails act as a code repository and backup when there
                            are irrecoverable problems with your source control database</li></ul>
                <dl class="badImage">
                    <dt>
                        <img src="Images/NotifyCodeChangesBad.gif" alt=" " /></dt><dd>Figure:The client/project
                            manager cannot tell what you actually did</dd>
                    <dt>
                        <img src="Images/NotifyCodeChanges.gif" alt=" " /></dt><dd>Figure:Notify the client/project
                            manager of code changes and highlight the code changes</dd></dl>
                <p>
                    For those developers lucky enough to be using Microsoft Team Foundation Server,
                    you will associate your changes with a work item - so that future developers can
                    work out not just WHAT changed - but WHY.</p>
                <p>
                    To do this, you could note the work item in your "Done" email when completing the
                    item. SSW has a tool that does this automatically for you - <a href="/SSW/eXtremeEmails/Default.aspx">
                        SSW eXtreme Emails!</a>. This will help you to create Team Foundation Server
                    work items from your emails automatically and associate your code changes with the
                    original work request with Unix-style diff files. In this way, you will be able
                    to work out WHY a particular change was made in code right back to the original
                    mail item.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/NotePad2DiffFiles.gif" alt=" " /></dt><dd>Figure:Using NotePad2 to
                            view code change (diff files) generated automatically by eXtreme Emails.</dd></dl>
                <p>
                    Even better - when using Team Foundation Server, you can use a Checkin policy to
                    force your developers to associate every checkin with a work item.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/SourceControl_AssociateWorkItems1.gif" alt=" " /></dt><dd>Figure:You
                            can make developers associate checkins with work items with a Checkin Policy (Right
                            Click Project->Team Project Settings->Source Control)</dd>
                    <dt>
                        <img src="Images/SourceControl_AssociateWorkItems2.gif" alt=" " /></dt><dd>Figure:You
                            can make developers associate checkins with work items with a Checkin Policy (Click
                            Add)</dd></dl>
                <p style="color: red">
                    Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouNotifyYourProjectManagersAndClientsOfCodeAndOtherApplicationChanges.aspx">
                        http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouNotifyYourProjectManagersAndClientsOfCodeAndOtherApplicationChanges.aspx</a></p>
            </li>
            <li>
                <h2>
                    <a id="ProjectPage"></a>Do you use a project page for your team and client?</h2>
                <p>
                    A project page is not a place to introduce the project. It will be used to share
                    the project process information between your teammates and clients.</p>
                <p>
                    A project page will contain some basic components:
                </p>
                <ul>
                    <li>Link to mockup, test and live environments</li>
                    <li>Every release of the project</li>
                    <li>Related resource download</li>
                </ul>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/SuccessfulProject_ProjectPage.GIF" alt=" " />
                    </dt>
                    <dd>
                        Figure: A sample of project page</dd>
                </dl>
                <p>
                    An example from <a href="/Projects/AC_MetalCorp/">Metal Corp</a>
                </p>
                <p style="color: red">
                    Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouUseAProjectPageForYourTeamAndClient.aspx">
                        http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouUseAProjectPageForYourTeamAndClient.aspx</a></p>
            </li>
            <li><a name="TasksInAdditiontoWorkItems"></a>
                <h2>
                    Do you know what tasks are in a Release Plan in addition to Development Work Items?</h2>
                <p>
                    Just like building a beautiful house is more than the bricks, a software project
                    is more than the sum of the coding tasks.
                </p>
                <p>
                    In fact, for every 1 hour of 'application building' coding tasks there is between
                    1 and 4 hours of other work which SSW will charge for.
                    <p>
                        Here is a <a href="/SSW/Standards/Rules/RulestoBetterProjectManagement.aspx#ReleaseEstimationProcess">
                            list of the items</a> which SSW considers when estimating a release.
                    </p>
                    <p style="color: red">
                        Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouKnowWhatTasksAreInAReleasePlanInAdditionToDevelopmentWorkItems.aspx">
                            http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouKnowWhatTasksAreInAReleasePlanInAdditionToDevelopmentWorkItems.aspx</a></p>
            </li>
            <li><a name="ProjProgress"></a>
                <h2>
                    Do you provide project progress report for clients?</h2>
                <p>
                    Communication is a critical part in project management and it's essential to provide
                    as much information as possible for your clients so they know the progress. We provide
                    the following two reports for clients:
                </p>
                <ul>
                    <li>Project Progress Report: help our client to review the current project progress,
                        check the status of projects whether they are over or under.
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/ProgressRpt.gif" alt="Project Progress Report" /></dt>
                            <dd>
                                Figure: Project Progress Report</dd>
                        </dl>
                    </li>
                    <li>Project Update from eXtreme Emails, this helps client to understand what's involved
                        in the project.<br />
                        <a href="/SSW/eXtremeEmails/ManageProjects.aspx#StatusUpdate">Using eXtreme Emails!
                            to Manage Projects - Send a Status Update every 2 weeks</a>
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/UpdateRpt.gif" alt="Update Report" /></dt>
                            <dd>
                                Figure: Generate Project Update Report</dd>
                        </dl>
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/UpdateRptMail.gif" alt="Update Report Email" /></dt>
                            <dd>
                                Figure: Update Report Email</dd>
                        </dl>
                    </li>
                </ul>
                <p style="color: red">
                    Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouProvideProjectProgressReportForClients.aspx">
                        http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouProvideProjectProgressReportForClients.aspx</a></p>
            </li>
            <li>
                <h2>
                    <a name="FlexibleOrderingofReleases"></a>Are you flexible with the ordering of your
                    releases?</h2>
                <p>
                    Every now and then your clients are going to want to move on to another release
                    which they see is more important than the current one. Provided that it doesn't
                    have any negative effects on the current release, there will not be any reason why
                    you can't stick to the &quot;customer is always right&quot; philosophy. So what
                    will you do when this happens?</p>
                <ol>
                    <li>Move any left over work/items to the next release</li>
                    <li>Send a debrief to the client with a note eg. As per your request we have just cancelled
                        Release five and will start on Release six. The remaining items have been moved
                        into Release seven.</li>
                    <li>Send a Release Plan for the new release</li>
                </ol>
                <table class="clsSSWProductTable" summary="LookOut" style="width: 33%" id="Table2">
                    <tr>
                        <td>
                            <p>
                                We have a program called <a href="/SSW/eXtremeEmails">SSW eXtreme Emails!</a> that
                                allows us to manage releases and track our project's progress with a built in estimating
                                and reporting tool.
                            </p>
                        </td>
                    </tr>
                </table>
                <p style="color: red">
                    Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/AreYouFlexibleWithTheOrderingOfYourReleases.aspx">
                        http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/AreYouFlexibleWithTheOrderingOfYourReleases.aspx</a></p>
            </li>
            <li>
                <h2>
                    <a name="ObtainApprovalAdditionalItemsExceedEstimates"></a>Do you get approval for
                    additional items and when estimates will be exceeded?</h2>
                <p>
                    Clients tend to pay bills a lot quicker if they have approved the work you have
                    performed! Release Plans are required to be <a href="RulestoBetterProjectManagement.aspx#DetailedReleasePlan">
                        formally approved</a> before work commences. Similarly, any changes to the release
                    plan need approval. Changes to the release plan can take two forms:
                </p>
                <ol>
                    <li><b>Additional items</b> - where additional work is required
                        <ul>
                            <li>Any <a href="#TriageAdditionalItemRequests">triaged</a> additional items not specified
                                in the original release plan (be they features, modifications, bugs)</li>
                            <li>Investigation time for scoping out additional items</li>
                            <li>Adding additional resources onto a project</li>
                            <li>Performing unscheduled tasks such as an additional architecture review or UI audit</li>
                        </ul>
                        <p>
                            It is easy to fall into the trap of "do-and-charge" without seeking further approval
                            for additional tasks. This is often very easy but becomes a problem as soon as someone
                            (typically a new manager) asks "why is this release costing $45,000 when the original
                            estimate was $30,000?" Oops!
                        </p>
                    </li>
                    <li><b>Exceeded estimates</b> - where work takes longer than expected
                        <ul>
                            <li>When it is known that costs will be 15% greater than the original estimate additional
                                approval is required</li>
                            <li>E.g. If the estimate is $9000 SSW will spend up to $10,350 without further approval</li>
                            <li>Note: this is assessed on a release by release basis - you can't try and "make up"
                                in the next release</li>
                        </ul>
                    </li>
                </ol>
                <p>
                    Approval can be given in writing or verbally, confirmed in an "<a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/EmailToMyself.aspx">as
                        per our conversation</a>" email, and then an updated <a href="RulestoBetterProjectManagement.aspx#DetailedReleasePlan">
                            Release Plan</a> is sent.
                </p>
                <p style="color: red">
                    Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouGetApprovalForAdditionalItemsAndWhenEstimatesWillBeExceeded.aspx">
                        http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouGetApprovalForAdditionalItemsAndWhenEstimatesWillBeExceeded.aspx</a></p>
            </li>
            <li>
                <h2>
                    <a name="GetWorkApproved"></a>Do you get work approved before you do it?
                </h2>
                <dl class="image" style="float: right; clear: right; width: 207px;">
                    <dt>
                        <img src="Images/SuccessfulProjects_PuttingOutFires.jpg" alt="Get work approved and spend less time putting out fires" /></dt>
                    <dd>
                        Figure: Get work approved and spend less time putting out fires</dd>
                </dl>
                <p>
                    It's sometimes said that it's easier to ask for forgiveness than it is to seek permission.
                </p>
                <p>
                    The trouble is that the above is predicated on the notion you're doing something
                    wrong, are happy spending time putting out fires that needn't have been lit, and
                    don't mind living with stomach ulcers...
                </p>
                <p>
                    The solution is to get permission for the work you do before you do it. Get permission
                    verbally (<a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/EmailToMyself.aspx">confirmed in writing</a>),
                    by email or with a <a href="RulesToBetterBranding.aspx#EmailSignatures">signature</a>
                    (although that's sometimes a whole lot harder).
                </p>
                <p>
                    Always get permission for:
                </p>
                <ul>
                    <li><a href="#ObtainApprovalAdditionalItemsExceedEstimates">Additional Items</a></li>
                    <li><a href="#ObtainApprovalAdditionalItemsExceedEstimates">Exceed estimates</a></li>
                    <li><a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/PerformMigrationProceduresWithAnApprovedReleasePlan.aspx">Data migration procedures</a></li>
                </ul>
                <p>
                    Having said that you need to manage two potential probems with seeking permission
                    on work before acting:
                </p>
                <ul>
                    <li>Increased dead time while waiting for approval </li>
                    <li>Discouraging initiative to <a href="RulesToBeingSoftwareConsultantsDealingWithClients.aspx#FixProblemsFast">
                        fix problems fast</a> </li>
                </ul>
                <p>
                    These problems are naturally solved through the continual refinement of what can
                    and can't be done without approval. Different clients will have different standards
                    depending on the type of project. From a time perspective the rule of thumb is never
                    spend more than one hour without approval.
                </p>
                <p style="color: red">
                    Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouGetWorkApprovedBeforeYouDoIt.aspx">
                        http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouGetWorkApprovedBeforeYouDoIt.aspx</a></p>
            </li>
        </ol>
        <h2>
            Acknowledgements
        </h2>
        <a href="/ssw/Employees/employeesprofile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/employeesprofile.aspx?EmpID=UM">Ulysses Maclaren</a><br />
        <a href="/ssw/Employees/employeesprofile.aspx?EmpID=CS">Cameron Shaw</a><br />
        <a href="/ssw/Employees/employeesprofile.aspx?EmpID=JK">Justin King</a><br />
    </div>
</asp:Content>
