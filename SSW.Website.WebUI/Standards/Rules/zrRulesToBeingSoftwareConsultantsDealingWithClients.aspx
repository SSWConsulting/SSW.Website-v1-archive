<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="Rules to being Software Consultants - Dealing with Clients" %><%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>            Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('696E666F407373772E636F6D2E61753F7375626A6563743D52756C657320746F206265696E6720536F66747761726520436F6E73756C74616E7473202D204465616C696E67207769746820436C69656E7473')">Let us know</a> what you think.</p>
       
    <div class="TableOfContents">
        <div class="floatRight" style="width:40%;">
            <div class="greyBox" style="margin:4px;">
				Part B: <a href="RulesToBeingSoftwareConsultantsWorkingInATeam.aspx">Rules to being Software Consultants - Working in a Team</a>
			</div>
        </div>
        <ol>
            <li><a href="#ExistingClients">Do you prioritize your existing clients over prospective
                ones?</a></li>
            <li><a href="#FollowUp">Do you always follow up your clients?</a></li>
            <li><a href="#Priority">Do you give potential consulting work emails priority?</a></li>
            <li><a href="#BriefProposalOrSpecificationReview">Do you know the difference between a brief proposal and a specification review?</a></li>
            <li><a href="#OfferScrumTeams">Do you offer Scrum Teams options for new projects?</a></li>
            <li><a href="#GetPaidForEstimates">Do you get paid for estimates?</a></li>
            <li><a href="#MeetProspect">For new prospects, do you always meet them to show them
                an estimate?</a></li>
            <li><a href="#CallClient">For existing clients, do you always call them before sending
                a quote?</a></li>
            <li><a href="#TriageAdditionalItemRequests">Do you correctly triage additional item requests?</a></li>
            <li><a href="#FixedPriceOrTimeMaterials">Do you know the difference between Fixed Price and
                Time and Materials work?</a></li>
            <li><a href="#AdHocManagedWork">Do you know the difference between ad-hoc work and project managed work?</a></li>
                
            <li><a href="#DoubleCheckWhenMoreThanTwoHours">Do you double-check the importance of a task when you 
                    realise it's going to take more than 2 hours?</a></li>
            <li><a href="#DontTakeNoAsAnAnswer">Do you know how to be pushy when you need to be?</a></li>
            <li><a href="#Bepersistent">Are you persistent when you think something should be done?</a></li>
            <li><a href="#Quote">Do you always quote in price + GST (Tax)?</a></li>
            <li><a href="#FreeToBillable">Do you know how to turn requests for free work into billable work?</a></li>
            <li><a href="#InvoicingIssues">Do you avoid invoicing issues where possible and resolve
                them quickly when they come up?</a></li>
            <li><a href="#WayMeetingsShouldWork">Meetings - The way meetings should work</a></li>
            <li><a href="#Hospitality">Meetings - Are you hospitable in client meetings at your
                office?</a></li>
            <li><a href="#billmeet">Meetings - Are you clear about billable time in meetings?</a></li>
            <li><a href="#Prepared">Meetings - Do you go to meetings prepared?</a></li>
            <li><a href="#Clarify">Meetings - Do you ask clients the two important questions at
                the beginning of each meeting?</a></li>
            <li><a href="#ExchangeNames">Meetings - Do you exchange names in meetings?</a></li>
            <li><a href="#MoreListenLessTalk">Meetings - Do you listen more than you talk?</a></li>
            <!--<li><a href="#Understand">Persist until you understand what they are saying.</a></li>-->
            <li><a href="#PostClientWork">Do you know the first thing to do when you come off client
                work?</a></li>
            <li><a href="#AskForTasks">Do you know what you should do when you come off billable work?</a></li>
            <li><a href="#FixProblem">Do you fix problems when alerted to them?</a></li>
            <li><a href="#StateUnderstanding">Do you always state your understanding or what you
                have already done to investigate a problem?</a></li>
            <li><a href="#ReliablyDeliver">End of Day - Do you reliably deliver your tasks?</a></li>
            <li><a href="#timesheets">End of Day - Do you enter time sheets?</a></li>
            <li><a href="#BookNextDate">End of Day - Do you always pencil in the next date on your last day at the client?</a></li>
            <li><a href="#PlanAhead">End of Day - Do you plan the night before what you are doing the next day?</a></li>
            <li><a href="#InformFreeOverTime">End of Day - Do you let your client know when you work overtime
                and it is not charged?</a></li>                
            <li><a href="#BrowniePoints">Do you make sure you get brownie points?</a></li>
            <li><a href="#PositiveLanguage">Speaking - Do you speak in a positive language to clients?</a></li>
            <li><a href="#ClientLove">Do you build the client relationship by completing "Client
                Love" each week?</a></li>
            <li><a href="#ClientsUsingMessenger">Do you contact your clients using IM/Windows Live Messenger?</a></li>
            <li><a href="#LeaveMessages">Do you leave messages when your phone call is unanswered?</a></li>
            <li><a href="#FixProblemsFast">Do you fix problems fast?</a></li>
            <li><a href="#CallTwice">Do you try second time straight away when you are calling a client?</a></li>
			<li><a href="#SetupDevTraining">Do you know how to configure Developer Training?</a></li>
			<li><a href="#RecordDisagree">Do you put a record when you disagree with something?</a></li>
			<li><a href="#NoFightWithCustomer">Do you know that it's bad to win the fight, but lose the customer?</a></li>
			<li><a href="#NumbersGiveToClient">Do you know the numbers you give clients?</a></li>
			
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="ExistingClients">Do you prioritize your existing clients over prospective</a>
                    ones?</h2>
                <p>
                    Your existing clients should always be the first thing on your mind. Any work relating
                    to <i>existing</i> clients should be done before looking into anything else, including
                    <i>prospective</i> client work.
                </p>
                <p>
                    In order to gain a good reputation in the industry, it is vital to make existing
                    clients happy. If you are seen as being more interested in getting new clients than
                    satisfying old ones, not only will you not receive return business, but you may
                    have lost credibility in the industry and the chance of referrals from their contacts.
                </p>
                <p>
                    A good way to think of it is "is the ball in their court?" This means that your
                    client is never waiting for you to do something, and that if there is a bottleneck;
                    it is not on your end.
                </p>
                <p>
                    A good saying pertaining to keeping your existing clients happy is: "A bird in the
                    hand is worth two in the bush".
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/PrioritizeClients.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/PrioritizeClients.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="FollowUp"></a>Do you always follow up your clients?
                </h2>
                <p>
                    If you have followed the previous rule and the ball is always in their court, you
                    need to make sure that they keep playing.
                </p>
                <p>
                    The best way to do this is to make sure you follow up all communications that require
                    a reply, whenever you feel that a bottleneck is forming.
                </p>
                <p>
                    The best ways to follow up a client are:
                </p>
				<ul>
                    <li>Use email<br />
                        If there is no response, find the original email and resend. 
                        See our <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/HurrySomeoneUp.aspx">Rules To Better Email - Do you know how to hurry someone up?</a>, 
                        <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/FollowUpEmailsEffectively.aspx"> Rules to Better Email - Do you always follow up your clients?</a> and 
                        <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/ImportanceOfAGoodSubject.aspx">Rules to Better Email - Do you realize the importance of a good email Subject?</a>
                    </li>
                    <li>Use IM or Skype<br />
                        See our <a href="/ssw/Standards/Rules/RulestoBetterInstantMessenger.aspx#ChatEfficient">Rules To Better Instant Messenger - Do you communicate more efficient?</a></li>
                    <li>Use the phone<br />
                       Call them</li>
                </ul>
                <p>TIP Use <a href="/ssw/redirect/FollowUpThen.htm">http://www.followupthen.com/</a> for your follow up emails</p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/FollowupClients.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/FollowupClients.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="Priority"></a>Do you give potential consulting work emails the next highest
                    priority after existing clients?</h2>
                <p>
                    It is extremely important to demonstrate to potential clients a high level of quality
                    service and attention to their needs; this is why, at SSW, whenever we receive an
                    email from a potential client in relation to possible consulting work, we make sure
                    they receive an answer within 5 minutes of us receiving it. We do this for 2 reasons:
                </p>
                <ul>
                    <li>To show we are keen and give an indication of the level of service they will receive</li>
                    <li>To stop them "shopping around"</li>
                </ul>
                <p>
                    They will quickly recognize that they will not receive that kind of service anywhere
                    else!
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/PotentialConsultingWork.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/PotentialConsultingWork.aspx</a></font> 
            </li>
       
            <li>
                <h2>
                    <a name="BriefProposalOrSpecificationReview"></a>Do you know the difference between
                    a brief proposal and a specification review?</h2>
                <p>
                    There is often a bit of confusion about what constitutes a proposal and what constitutes
                    a specification review.
                </p>
                <p>
                    Brief proposal - free:
                </p>
                <ul>
                    <li>Information about your company</li>
                    <li>A basic overview of what you'll do for them</li>
                    <li>The next steps</li>
                </ul>
                <p>
                    Specification Review - billed:
                </p>
                <ul>
                    <li>A technical document listing in detail what technologies will be used and how</li>
                    <li>Most likely includes initial release plans and ballparks</li>
                </ul>
                <p>
                  See  <a href="/SSW/Standards/Rules/RulestoSuccessfulSalesAccountManagement.aspx#OutcomeInitialMeetingSpecRevieworAdHocWork">
                        Rules to Successful Sales Account Management</a>
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/BriefProposalOrSpecificationReview.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/BriefProposalOrSpecificationReview.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="OfferScrumTeams"></a>Do you offer Scrum Teams options for new projects?</h2>
                <p>
                The Scrum process has been proven to be very effective when developing software. You should offer a choice between a few different scrum teams for a client's project. For example, at SSW, Account Managers send the <a href="/SSW/Standards/Rules/Files/ScrumTeamsOptionEmailTemplate.docx">SSW Scrum Teams Options email template</a> which explains this choice to our clients. Your consultants must be able to explain the Scrum methodology to our clients including the advantages.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/ScrumTeamsOptions.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/ScrumTeamsOptions.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="GetPaidForEstimates"></a>Do you get paid for estimates?</h2>
                <p>
                    A lot of time in a consultancy can be taken up by producing estimates for clients
                    so they can see a ballpark of what they will be spending. Because this time is not
                    billed, it is easy to end up with rushed and inaccurate estimates, leading to problems
                    later in the project.
                </p>
                <p>
                    A better way to go about it is to spend a little more time, and really get down
                    in detail to what needs to be done. This is called a Specification review and is
                    billable.
                </p>
                <p>
                    See <a href="/SSW/Standards/Rules/RulestoSuccessfulSalesAccountManagement.aspx#OutcomeInitialMeetingSpecRevieworAdHocWork">
                        Rules to Successful Sales Account Management</a>.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/GetPaidForEstimates.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/GetPaidForEstimates.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="MeetProspect"></a>For new prospects, do you always meet them to show them an estimate?</h2>
                <p>
                    The findings of the Spec Review (the Initial Release Plan) should be presented at a meeting with the key decision makers 
                    of the project for review and acceptance, generally in the form of a PowerPoint presentation. It is important that all the 
                    required people are in a room together to review the Initial Release Plan.
                </p>
                <p>
                   See <a href="/ssw/standards/rules/RulestoBetterProjectManagement.aspx#SpecificationReviewPresentation">Rules to Better Project Management</a>
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/MeetProspect.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/MeetProspect.aspx</a></font> 
            </li>
               <!-- CS 17.8.08
               ***This rule has been changed. The original rule worked on the basis of telling the client how good we are and then surprising
               them with the figure. The new rule (as per link above) works on the basis that they see how good we are
               from the way we conduct the Specification Review and that there is no surprise on the figure because we keep the client informed
               all the way through the process. ***
                
                <p>
                    If you have spent a long time working on estimates for a project for a new client and you need to convince them to 
                    make a significant decision, you should meet them to show it to them, not just send it to them in an email.
                </p>
                <p>
                    You should never disclose the price until they have seen the solution, preferably on a projector. There is no problem, 
                    at this point, letting them know that it will be expensive, since you are offering the better solution, not the cheaper 
                    one. You want to show the client all of the components of this quality solution.
                </p>
                <p>
                    The Meeting should go roughly as follows:
                </p>
                <ul>
                    <li>Present the quality
                        <ul>
                            <li>We use SSW Code Auditor</li>
                            <li>SSW SQL Auditor</li>
                            <li>SSW Link Auditor</li>
                        </ul>
                    </li>
                    <li>Give examples of bad things other companies do
                        <ul>
                            <li>Catch ex as exception</li>
                            <li>No unit tests</li>
                            <li>Poor communication</li>
                        </ul>
                    </li>
                    <li>Present the solution
                        <ul>
                            <li>Specific to the customer</li>
                            <li>eg. mockups</li>
                        </ul>
                    </li>
                    <li>Present cases where we have saved businesses
                        <ul>
                            <li>Give testimonials with the story of the solution</li>
                            <li>eg. Commonwealth bank</li>
                            <li>Westbus</li>
                            <li>Media Monitors</li>
                        </ul>
                    </li>
                    <li>Give the price
                        <ul>
                            <li>They will balk</li>
                            <li>Ask them what $ they were expecting</li>
                            <li>Ask if there are any more upcoming projects</li>
                        </ul>
                    </li>
                    <li>If they are in the right ballpark and have all their resources ready, ring the boss
                        <ul>
                            <li>Say the client wants a project done with the latest technologies</li>
                            <li>Say they're ready to get the project underway</li>
                            <li>Has more projects</li>
                            <li>Tell him the price is a little high for them to sign up now</li>
                        </ul>
                    </li>
                    <li>The boss offers a compromise
                        <ul>
                            <li>eg. If they pay 60% instead of 50% up front, we'll take $5k off</li>
                        </ul>
                    </li>
                </ul>
            -->
            <li>
                <h2>
                    <a name="CallClient"></a>For existing clients, do you always call them before sending
                    a quote?</h2>
                <p>
                    If you have an existing client, who is already impressed with your work, you don't
                    need to go to the trouble of meeting then to show them an estimate. However, you
                    should at least call them. When you're competing for someone's business, what could
                    be worse than losing the work simply because the client either didn't receive your
                    email, or was too busy to read it? For this reason, always call the client before
                    you send a quote. This way, they know you are about to send them something so will
                    look out for it.
                </p>
                <div class="greyBox">
                    <p>
                        Hi Ed,<br />
                        <br />
                        As per our conversation today, here is a ballpark schedule for the work we talked
                        about. As you can see all the items are listed separately so you can identify how
                        the estimate is put together. I'm very happy to discuss these estimates with you
                        so feel free to give me a call.</p>
                </div>
                <dl class="code">
                    <dd>
                        Figure: Always call the client to let them know that you are about to send a quote
                        across, then send an "<a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouAlwaysSendAnAsPerOurConversationEmail.aspx">
                        As per our conversation</a>" email.
                    </dd>
                </dl>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/CallBeforeQuote.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/CallBeforeQuote.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="TriageAdditionalItemRequests"></a>Do you correctly triage additional item requests?</h2>
                    
                <p>
                    You will typically receive emails and bug reports from the client during the release. 
                    You should not work on any extra features except what is in the release plan. Move
                    only important emails into the current release. 
                   See <a href="/ssw/Standards/Rules/RulestoHappyClients.aspx#TriageAdditionalItemRequests">Rules to Happy Clients</a>
                </p> 
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/TriageAdditionalItemRequests.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/TriageAdditionalItemRequests.aspx</a></font>                    
            </li>
        <!-- See the "More" link...
                <p>
                    During a release for a large project, a customer will send lots of small changes.
                    You can either:</p>
                <ul>
                    <li>Do them as additional tasks in the current release plan, or</li>
                    <li>Put them in a future release (preferred)</li>
                </ul>
                <p>
                    You could use a release plan similar to the following:</p>
                <ul>
                    <li>Release01_Mockup</li>
                    <li>Release02_ChangesFromMockup</li>
                    <li>Release03_CustomerModule</li>
                    <li>Release04_Changes</li>
                    <li>Release05_OrderModule</li>
                    <li>Etc.</li>
                </ul>
                <dl class="good">
                    <dt>To: Evan Lin - SSW<br />
                        From: Alan Ha - FinaMetrica
                        <br />
                        Subject: Client List for Administrators<br />
                        <br />
                        Hi Evan,<br />
                        <br />
                        Can you plese add sort function (like the one in office 2007 - see below) next to
                        the fields: Last Name, First Name, Advisers and Organization. This should be applied
                        to all the relevant pages which have these fields in the list i.e. adviser list
                        for administrators, client list for advisers, etc. Please use the text Ascending
                        instead of "smallest to Largest" and Descending for "Largest to Smallest".<br />
                        <br />
                        Thanks,<br />
                        Alan<br />
                        <br />
                    </dt>
                    <dd>
                        Figure: The above is a sample of the customer's request, and should go into the
                        changes release, not the current release.</dd></dl>
                <br />
            </li>
            -->
            <li>
                <h2>
                    <a name="FixedPriceOrTimeMaterials"></a>Do you know the difference between Fixed Price
                    and Time and Materials work?</h2>
                <p>
                    There are two fundamental ways any consultant can bill clients:
                </p>
                <p>
                    <b>Time and Materials</b>
                </p>
        
                <p>
                    Time and materials is the standard mode of operation where the client is billed for the time 
                    spent by the consultant. There is no warranty on time and materials work.
                </p>
                <p>
                    <b>Fixed Price</b>
                </p>
                <p>
                    Fixed price is where the client is billed a fixed amount agreed between the client and the 
                    consultant. Fixed price contracts have the following conditions:
                </p>    
                    <ul>
                    <li>All specification work to be conducted on a Time and Materials basis</li>
                    <li>All screen mock-ups and business rules must be signed by the client</li>
                    <li>A fixed price can only be done on a release by release basis, not on an entire project (this protects everyone)</li>
                    <li>A 20% premium is added to the release estimates - just like an insurance premium because the consultant is carrying the risk</li>
                    <li>Variations/change requests through the development and testing of the release are moved to the next release (otherwise dependencies are too affected)</li>
                    <li>Development is conducted off-site (to prevent unauthorised scope-development)</li>
                    <li>50% of the fixed price is payable before work commences, the balance is payable at the delivery
                    of the first external test please</li>
                    <li>There is a 30 day warranty on <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/BugDefinition.aspx">bugs</a> which commences when the first external test please is issued</li>
                    <li>The following release cannot commence until the prior release is signed-off.</li>
                    </ul>
               <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/FixedPriceAndTimeMaterialsWork.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/FixedPriceAndTimeMaterialsWork.aspx</a></font> 
                 
            </li>
            <li>
                <h2>
                    <a name="AdHocManagedWork"></a>Do you know the difference between ad-hoc work and project managed work?</h2>
                <p>
                    When working on a Time and Materials basis there are two different management arrangements depending on 
                    what the client requires.
                </p>
                <p><b>Ad Hoc Work</b></p>
                <p>
                    Work in an ad-hoc basis allows tasks to be done as they are requested without any formal approval process. This is a simple 
                    approach but provides little in the way of management or accountability. This may be suitable for small, ongoing work such
                    as application maintenance with longstanding clients.
                </p>
                <p>
                    The ad-hoc work approach should not generally be used for project work where the client wants accountability on project 
                    elements such as time, scope, quality and cost. An exception exists where SSW provides resources to work under a non-SSW 
                    project manager who has responsibility for the project.
                </p>
                <p><b>Managed Work</b></p>
                <p>
                    The alternative is to work with a project manager, specification and release plan. In this approach, a method
                    of project management is applied to provide control on the elements of time, scope, quality and cost.
                </p>
                <p>
                    This method is recommended for any work which is substantial and where the client wants a greater degree of control.
                </p>
                <p>
                The <a href="RulestoSuccessfulSalesAccountManagement.aspx#OutcomeInitialMeetingSpecRevieworAdHocWork">managed approach</a> is SSW's prefer method of work.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/Ad-hocWorkAndProjectManagedWork.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/Ad-hocWorkAndProjectManagedWork.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="DoubleCheckWhenMoreThanTwoHours"></a>Do you double-check the importance of a task when you 
                    realise it's going to take more than 2 hours?
                </h2>
              <p>
                Frequently when you are working on an ad-hoc basis or under tight deadlines managers or clients will "shoot
                from the hip" and ask for tasks without necessarily thinking much about them. Some of these tasks will be
                critical, some will be less so. It's important you don't waste time on unimportant tasks. There are 
                plenty of important tasks to keep you busy!
              </p>
              <p>
                If you think the task you have been given is going to take more than 2 hours, stop work, call the client and 
                confirm they'd like you to keep going on that task. Sometimes the client will say keep going; sometimes they will say thanks for checking with them and ask you
                to work on something else. 
              </p>
              <p>
                If you can, don't wait until two hours is up before checking - check as soon as you realise it is likely to take
                more than two hours.
              </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/DealingwithClients_ChecktheTime.jpg"/>
                    </dt>
                    <dd>
                        Figure: Check the time and then check with the client to make sure they want you to keep going
                    </dd>
                </dl>
               <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/DoubleCheckWhenMoreThanTwoHours.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/DoubleCheckWhenMoreThanTwoHours.aspx</a></font>     
            
            </li>
            <li>
                <h2>
                    <a name="DontTakeNoAsAnAnswer"></a>Do you know how to be pushy when you need to
                    be?</h2>
                <p>
                    As a consultant, it is important to realise that all of your time is valuable.
                </p>
                <p>
                    In the situation where you are at a client site and your time is being billed, don't
                    be conscientious and quiet. You need to make sure that there are no bottlenecks slowing
                    you down. Make sure you have everything you need and, if you need to ask a question,
                    keep asking until you get an answer.
                </p>
                <p>
                    Client will always prefer a slight irritation at the time rather than an inflated
                    invoice with no result later on.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/ToBePushy.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/ToBePushy.aspx</a></font> 
            </li>
            <li><a name="Bepersistent"></a>
                <h2>
                    Are you persistent when you think something should be done?</h2>
                <p>
                    You need to be persistent. You should make sure that you don't let good ideas go
                    because you get ONE no, you should put it on a list and bring it up with your boss
                    a few times.
                </p>
                <p>
                    This is a very important concept, just because you get answered no, it does not
                    mean that it is a bad idea, or that it will not benefit the company. You may get
                    the answer 'No' for reasons that you do not know about, such as financial difficulties,
                    or it is too busy at the moment to worry about. You should make these ideas into
                    a list, and remember to bring them up with the boss at a more appropriate time.
                    If you are not satisfied with the result, talk to your boss about your idea, so
                    you understand why they made the decision they did. It is important however to realize
                    that not all ideas are good ideas and you will have to accept that when you get
                    it wrong.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/PersistentWork.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/PersistentWork.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="Quote"></a>Do you always quote price + GST (Tax)?</h2>
                <p>
                    Is your price:
                </p>
                <ul>
                    <li>$100 per hour + GST (the $100 being the net amount)</li>
                    <li>$110 per hour (the $110 being the total amount)</li>
                </ul>
                <p>
                    We say the first one. When providing quotes to prospects/clients, it is always better
                    to display the net value + 10% GST rather than the total.
                </p>
                <p>
                    The reasons for this are:
                </p>
                <ul>
                    <li>It avoids any confusion as to whether GST is included.</li>
                    <li>This net amount is the REAL cost to the customer, as they get the tax back (in Australia).</li>
                    <li>The net value is lower and appears more attractive to the client.</li>
                    <li>The 10% GST charged to the client is not income for your company. In Australia,
                        we collect this 10% on behalf of the Australian Taxation Office.</li>
                    <li>The client will receive back this 10% GST from the Australian Tax Office when they
                        do their quarterly BAS/GST Return.</li>
                </ul>
                <dl class="bad">
                    <dt>The total fixed price total is $AUD 66,000 - please find quote attached. </dt>
                    <dd>
                        Bad Example</dd></dl>
                <dl class="good">
                    <dt>The total fixed price total is $AUD 60,000 + GST (10%). Please find quote attached.
                    </dt>
                    <dd>
                        Good Example</dd></dl>
                <p>
                    <b>Note</b> : SSW and other Australian companies do not charge GST to external clients
                    outside of Australia.</p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/QuotePricePlusGST.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/QuotePricePlusGST.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="FreeToBillable"></a>Do you know how to turn requests for free work into
                    billable work?</h2>  
                <p>
                    Often clients will call up asking for a short task to be performed. You need to
                    know how to let them know that the time will be charged.
                </p>
                <dl class="good">
                    <dt>If it was a quick 5 mins I would do it straight away... however I need to do a little
                        investigation... first impression is that it might take me a couple of hours...
                        if that is OK then I would need you to authorize me to go ahead.
                        <br />
                        Let me know... </dt>
                    <dd>
                        Good example
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/DealingwithClients-Floodgates.jpg">
                    </dt>
                    <dd>
                        Figure: Careful! One small free task can turn into a dam-breaking torrent of free work.
                    </dd>
                </dl>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/FreeToBill.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/FreeToBill.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="InvoicingIssues"></a>Do you avoid invoicing issues where possible and resolve
                    them quickly when they come up?</h2>
                <p>
                    The least pleasant part of the consulting industry is dealing with clients who don't
                    want to pay for your services.
                </p>
                <p>
                    It's important that the client is <strong>*always made aware*</strong> from the beginning what they will and will
                    not be charged for. That way, they will never receive an invoice they
                    are not expecting and so will be happy to pay them.
                </p>
                <p>
                    If an issue does come up, make sure you come to an agreement quickly and don't let
                    the issue fester as it can lead to a lack of customer satisfaction and people can
                    start digging their heels in, leading to a lot of time wasted on working out whether
                    the client will pay or not.
                </p>
                <p>
                    If someone else needs to be consulted for approval (e.g. the boss) get them on the phone
                    straight away, rather than speaking to them later and then having to organize yet
                    another meeting with the client.
                </p>
				<dl class="goodImage">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/confrn.jpg"/>
                    </dt>
                    <dd>
                        Figure: Use the conference button
                    </dd>
                </dl>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/AvoidInvoicingIssues.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/AvoidInvoicingIssues.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="WayMeetingsShouldWork"></a>Meetings - The way meetings should work</h2>
                <p>
                    Office meetings often are ineffective, because:
                </p>
                <ul>
                    <li>There is a lot of discussion but no resulting "action items"</li>
                    <li>Time is wasted digressing to unrelated topics</li>
                    <li>People forget the meeting is on and do not attend</li>
                    <li>People turn up late with no notice</li>
                </ul>
                <p>
                    To ensure your meetings are productive and successful, you should:
                </p>
                <ul>
                    <li>Create a meeting agenda prior to the meeting. Give each attendee a copy. If the
                        discussion strays from the topic, the agenda will help you keep it on track.
                    </li>
                    <li>Send <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/SendOutlookCalendarAppointmentsAppropriate.aspx">an
                        appointment</a> to all meeting attendees to ensure the meeting appears on their
                        calendar. </li>
                    <li>If you are going to be late, contact the organizer or the person in charge of the
                        meeting to let them know that you are running late and what time you will be arriving.</li>
                    <li>To improve future meetings, at the end of the meeting, do a quick debrief to see
                        how long the meeting took, if anything was covered that didn't need to be, etc.</li>
                </ul>
                <dl class="badImage">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/MeetingNoAgenda.JPG" alt="Meeting without agenda" />
                    </dt>
                    <dd>
                        Figure: Bad example - meeting with No Agenda
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/MeetingWithAgenda.JPG" alt="Meeting with agenda" />
                    </dt>
                    <dd>
                        Figure: Good example - meeting with Agenda
                    </dd>
                </dl>     
                <p>Every Outlook appointment must have:</p>
                <ol>
                    <li>A good subject, to let attendees know the purpose of the meeting, see our rule <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/ImportanceOfAGoodSubject.aspx">Do you realize the importance of a good email Subject?</a></li>
                    <li>A good description of the location, including detailed information like location name and street</li>
                    <li>The message itself must contain:
                        <ol>
                            <li>A link to the location with instructions to print it eg. Print this map <a href="/ssw/company/directions">www.ssw.com.au/ssw/company/directions</a> or a google map link</li>
                            <li>The final step in the agenda being "Set a date for the next meeting"</li>
                            <li>A note mentioning if the meeting is billable or not</li>
                            <li>Your standard footer in message (same footer as in mail messages)</li>
                            <li>A URL mentioning <a href="/ssw/Redirect/TipsForMeeting.htm">Tips for better meetings</a></li>
                        </ol>
                    </li>
                    </ol>
                    <dl class="good">
                        <dt>
                            Hi Bill Northwind
                            <ul>
                                <li>Print map <a href="http://www.ssw.com.au/ssw/company/directions">www.ssw.com.au/ssw/company/directions</a></li>
                                <li>FYI the account manager is not billable, the developers are billable</li>
                                <li>For meetings tips see <a href="http://www.ssw.com.au/SSW/standards/rules/RulesToBeingSoftwareConsultantsDealingWithClients.aspx">Rules to being Software Consultants - Dealing with Clients</a></li>
                            </ul>
                        </dt>
                        <dd>Figure - Message example</dd></dl>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/WayMeetingsShouldWork.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/WayMeetingsShouldWork.aspx</a></font> 
			</li>
            <li>
                <h2>
                    <a name="Hospitality"></a>Meetings - Are you hospitable in client meetings at your
                    office?</h2>
                <p>
                    When a client arrives, your job is to make them feel comfortable and impress them
                    with your professionalism. It is important that clients have a consistent experience
                    in their contact with your company.
                </p>
                <br />
                <dl class="bad">
                    <dt>
                        <ul>
                            <li>Leaving the client standing at the reception while finishing what you were doing</li>
                            <li>Offering them tea, coffee or biscuits (not everyone likes tea/coffee)</li>
                        </ul>
                    </dt>
                    <dd>
                        Figure: Bad example
                    </dd>
                </dl>
                <br />
                <dl class="good">
                    <dt>
                        <ul>
                            <li>Be dressed appropriately</li>
                            <li>Greet them warmly</li>
                            <li>Have a firm handshake</li>
                            <li>Make eye contact and smile</li>
                            <li>Direct them to wait in the boardroom (so they can see all the marketing materials
                                on the walls)</li>
                            <li>Notify the project manager/developer who are included in the meeting</li>
                            <li>Ask someone to bring couple of glasses of water into the meeting (as everyone drinks
                                water)</li>
                            <li>Join the meeting in the boardroom: 
                                <ul>
                                    <li>Show some enthusiasm when meeting with the client</li>
                                    <li>Hand over, and collect, business cards - (organize in front of you, to help you remember their names)</li>
                                    <li>Use their names a few times early on to help you remember their name </li>
                                    <li>Greet them warmly</li>
                                    <li>Have a firm handshake</li>
                                    <li>Make eye contact and smile</li>
                                </ul>
                            </li>
                        </ul>
                    </dt>
                    <dd>
                        Figure: Good Example - You did some research before the meeting</dd></dl>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/HospitableInClientMeeting.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/HospitableInClientMeeting.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="billmeet"></a>Meetings - Are you clear about billable time in meetings?</h2>
                <p>
                    Meetings are an area some clients think will be free, so always mention it.</p>
                <p>
                    As stated in SSW's <a href="/ssw/Standards/Forms/ConsultingOrderTermsConditions.aspx">
                        Terms and Conditions</a>:</p>
                <p>
                    In an hourly work agreement, the initial meeting with the customer will be conducted
                    by SSW at no cost. Subsequent meetings are considered as specification time and
                    will be charged at the agreed rate. The minimum time chargeable for on-site work
                    is 2 (two) hours per person per visit. The minimum time chargeable for off-site
                    work is 15 (fifteen) minutes per person per request.
                </p>
                <p>
                    In some occasions it may be necessary to compromise by charging for the developer's
                    time but not the project manager's.
                </p>
               <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/BillableTime.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/BillableTime.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="Prepared"></a>Meetings - Do you go to meetings prepared?</h2>
                <p>
                    Before you attend a meeting you must come prepared with details about the client;
                    meaning no unnecessary questions. By unnecessary, I mean you should already have
                    the answers to these questions. Extensive research is impressive to clients.
                </p>
                <p>
                    So you are talking to a client about their ice cream chain?</p>
                <dl class="bad">
                    <dt>How many outlets do you have?
                        <br />
                        Where is the main outlet? </dt>
                    <dd>
                        Figure: Bad examples - you should already know the answers to these questions by
                        use of research tools such as the Internet</dd></dl>
                <dl class="good">
                    <dt>I noticed you have x amount of outlets, are you planning to open up more, when and
                        where?<br />
                        Which of your products contribute most to your gross profit?<br />
                        How do most of your customers hear about you?<br />
                        Do you have a customer loyalty program? Is it working?<br />
                        Where are some of the biggest challenges / opportunities for you at the moment /
                        in the future? </dt>
                    <dd>
                        Figure: Good Examples</dd></dl>
                <p>
                    By asking questions, you show interest as well as initiating conversation - remember
                    to get the customer talking.</p>
                <p>
                    Look for points of pain and build on them - if there's no pain it's hard to fix
                    the problem properly.</p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/MeetingsPrepared.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/MeetingsPrepared.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="Clarify"></a>Meetings - Do you ask clients the two important questions
                    at the beginning of each meeting?</h2>
                <p>
                    It is essential to clarify the purpose and time of meetings.<br />
                    When you commence each meeting you should ask the following two questions:</p>
                <ol>
                    <li>What are the points you want to cover in this meeting?</li>
                    <li>How long will this meeting be?</li>
                </ol>
                <p>
                    By asking these two questions you define both the client's and your expectations
                    from the meeting; eliminating one of the factors which contribute to time-wastage.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/TwoImportantQuestions.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/TwoImportantQuestions.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="ExchangeNames"></a>Meetings - Do you exchange names in meetings?</h2>
                <p>
                    It is important to build a relationship of mutual respect with clients. A natural
                    and simple way of doing this is through exchange of names. You introduce yourself
                    and give them a card and in response they introduce themselves (giving details,
                    including name and position, which you MUST ALWAYS remember).</p>
                 <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/ExchangeNames.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/ExchangeNames.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="MoreListenLessTalk"></a>Meetings - Do you listen more than you talk?</h2>
                <p>
                    For meetings with clients, aim for a ratio of 70% to 30% - that is, 70% of the time
                    the customer should be talking. Remember the purpose of the meeting is to meet the
                    client's needs. You can still convey your message to your clients by adding to what
                    they have to say, rather than presenting a prepared speech to them.</p>
                <p>
                    It's important to ask probing questions and then listen to the answers.
                </p>
                <dl class="good">
                    <dt>Client: We had a problem in China
                        <br />
                        You: What was the problem? </dt>
                    <dd>
                        Figure: Good Example
                    </dd>
                </dl>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/ListenMoreThanTalk.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/ListenMoreThanTalk.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="PostClientWork"></a>Do you know the first thing to do when you come off
                    client work?</h2>
                <p>
                    Here are the first things you should do EVERY time you come off client work:</p>
                <ol>
                    <li>Get a reference from the last client
                        <ul>
                            <li>It is a good way to check the client is happy</li>
                            <li>If your company is a Microsoft Gold Certified Partner, these references can lead
                                to competencies such as Custom Development Solutions and ISV/Software Solution</li>
                            <li>An example of what to say to the client is: "We are a Microsoft Gold Certified Partner
                                and I would like to submit a short description of the project to Microsoft, you
                                will receive an email from Microsoft asking you to approve the reference. How does
                                that sound?"</li>
                            <li>We would also love a testimonial to add to our website. Would you be happy to give
                                a testimonial for the work we've done for you? Can you please email it to me?</li>
                        </ul>
                    </li>
                </ol>
                <br />
                <ol start="2">
                    <li>The next thing to do is to call your last few clients. You should always be in contact
                        with them at least every 6 months
                        <ul>
                            <li>Before the call always prepare.
                                <ul>
                                    <li>Refresh your memory about the company, project and contact before calling (have
                                        a look at their website; have a look at their competitors etc.)</li>
                                    <li>Check the upcoming events (Check the calendar on the Home Page to see what's coming
                                        up)</li>
                                    <li>Know the topic of the upcoming user group</li>
                                    <li>Draft out some suggestions in an email (don't send yet)</li>
                                </ul>
                            </li>
                            <li>Decide on what value-add opportunities you are going to offer them. Some examples:
                                <ul>
                                    <li>A relevant and useful URL of an article</li>
                                    <li>Mention something relevant to their project from a User Group presentation you saw</li>
                                    <li>Maybe you can also invite them to a free Tech Breakfast</li>
                                    <li>Maybe an upcoming User Group would be useful. It's a good place to have free training,
                                        and to build contacts and socialize (lots of IT managers and developers). Email
                                        the <a href="/ssw/NETUG/Default.aspx">User Group</a> link</li>
                                    <li>Ask them about their website. See if any work needs to be done - Mention the need
                                        for <a href="/ssw/Standards/Rules/RulesToBetterWebsitesTuningAndMaintenance.aspx">maintenance</a></li>
                                </ul>
                            </li>
                            <li>Call and chat to them about the work you did with them. Ask how everything's going,
                                and if the application was successful
                                <ul>
                                    <li>If yes - great, see what else you can do.</li>
                                    <li>If not - then find out why (was it a technical issue, or the app not meeting the
                                        business needs) and offer to improve it. You can offer them a free consultation
                                        with one of our account managers.</li>
                                    <li>Take some notes on what they liked about the solution.</li>
                                </ul>
                            </li>
                            <li>Always ask if they know of some other projects we could help them with, or if they
                                know of anybody that may need some software development gurus.</li>
                            <li>Send a follow up email
                                <ul>
                                    <li>Send an "<a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToHappyClients/Pages/DoYouAlwaysSendAnAsPerOurConversationEmail.aspx">
                                as per our conversation</a>". Include some of your notes, a thank you for the
                                        time, and CC a project manager. If they were interested in a consultation, then
                                        ask the project manager to follow up</li>
                                    <li>Document the call date, and email subject line & results in the Notes field for
                                        the client in your corporate database</li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ol>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/FirstThingToDoAfterComeOffClientWork.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/FirstThingToDoAfterComeOffClientWork.aspx</a></font> 
            </li>
            
            <li>
                <h2>
                    <a name="AskForTasks"></a>Do you know what you should do when you come off billable work?</h2>
                <p>
                    At a consulting company, billable work is always the first priority. 
                    When you finish all the client tasks assigned to you, you should let your project manager know with your skills.<br /> 
                    When you finish billable work, you should:
                </p>
                <ol>
                    <li>Speak with your project manager eg. "Do you have any more client tasks?"</li>
                    <li>Update your IM status and add "free" to the subject so the project manager can type "free" and see who is available.</li>
                    <li>
                        Each Monday send<br />
                        <div class="Quote">
                            <b>Subject:</b> I'm Free<br />
                            <br />
                            <b>Text:</b><br />
                            Hello Project Managers<br />
                            <br />
                            My last project was xxxx<br />
                            My skills are: windows forms, reporting services, and workflow<br />
                            My profile is: xxxx
                        </div>                    
                    </li>
                </ol>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/ComeOffBillableWork.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/ComeOffBillableWork.aspx</a></font> 
            </li>
            
            <li>
                <h2>
                    <a name="FixProblem"></a>Do you fix problems when alerted to them?</h2>
                <p>
                    When someone brings to your attention that they are not happy with something, do
                    you address the problem and not ignore it? For example, if your boss tells you they
                    are unhappy that you do not have a release plan for the development you are working
                    on, you should create a release plan right away. Do not ignore the problem as it
                    will only escalate, fix it now!
                </p>
                <p>
                    This is especially important if someone has followed you up. Try to get back to
                    them as soon as possible with a response as it shows you care about what they care
                    about.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/FixProblemsWhenAlertToThem.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/FixProblemsWhenAlertToThem.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="StateUnderstanding"></a>Do you always state your understanding or what
                    you have already done to investigate a problem?</h2>
                <p>
                    When you seek advice or help from another, firstly, you need to establish with them:
                </p>
                <ul>
                    <li>Your understanding and,</li>
                    <li>Methods you have previously attempted in order to resolve the problem</li>
                </ul>
               <p>Tip: Be aware that you don't want to reply with <a href="/ssw/redirect/lmg.htm">http://lmgtfy.com/</a>  :-)</p> 
                <img alt="IM Icon" src="/ssw/Standards/Rules/Images/ImIcon.jpg" align="right" />
                <dl class="bad">
                    <dt>How do you xxxx? </dt>
                    <dd>
                        Figure: Bad Example - By not stating what you have previously attempted to resolve
                        the problem, the person you are seeking advice from may be wasting time if they
                        suggest methods you have already done.</dd></dl>
                <dl class="good">
                    <dt>I have searched Google but no luck... How do you xxxx? </dt>
                    <dd>
                        Figure: Good Example - The person you are seeking advice from will not suggest for
                        you to do the same methods again and will look for other ways to resolve the issue.</dd></dl>
                <p>
                    Another rule that closely links to this can be found in <a href="/ssw/standards/rules/RulestoBetterInstantMessenger.aspx#Research">
                        RulestoBetterInstantMessenger.aspx</a>
                </p>
               <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/StateUnderstanding.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/StateUnderstanding.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="ReliablyDeliver"></a>Do you reliably deliver your tasks?</h2>
                <p>
                    Some tasks are either time-critical or you give a promise to do them promptly. It's
                    very important that these tasks are given a high priority.
                </p>
                <p>
                    If you're not going to be able to deliver a task on-time, you should let the appropriate
                    people know right away.
                </p>
                  <dl class="goodImage">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/tickingclock.JPG" alt="A ticking clock" />
                    </dt>
                    <dd>
                        Figure: Some tasks are time critical, if you have agreed on something, and then notify the person when you know you will miss the deadline.
                    </dd>
                </dl> 
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/ReliablyDeliverTasks.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/ReliablyDeliverTasks.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="timesheets"></a>Do you enter detailed and accurate time sheets?</h2>
                <p>
                    It is essential that a company keeps a record of how much time its employees are spending on billable and non-billable work. This helps at invoicing time, and to make sure the clients see exactly where their time and money is being spent. One of the primary responsibilities as a developer is to complete timesheets. See <a href="RulesToBetterTimesheets.aspx">Rules to better timesheets</a> for more.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/DetailedAndAccurateTime.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/DetailedAndAccurateTime.aspx</a></font> 
            </li>
            <li>
                <a name="BookNextDate"></a><h2>Do you always pencil in the next date on your last day at the client?</h2>
                <p>
                    A common mistake for developers is to say "See you later, call me sometime next month".
                </p>
                <p>
                    On your last day of consulting with a client you should always book in the next date. 
                    Be aware of the main blockage people get, which  the client is saying "How about I check by calendar and get back to you?". And often this never happens.
                </p>
                 A better approach is to reduce the risk by:
                <ul>
                    <li>saying that you are only pencilling it in and it can be cancelled, and</li>
                    <li>bringing some urgency (by saying your calendar fills up quick)</li>
                </ul>
                <p>
                    So try something like "My calendar fills up really quick, how about I pencil you in.... How about we say 2 weeks time? Don't forget you can cancel it anytime."
                </p>                
                <dl class="goodImage">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/PencilIn.JPG" alt="pencil in" />
                    </dt>
                    <dd>
                        Figure: Plan ahead at the end of your day eg. "How about we pencil in my next visit, say 2 weeks time?"
                    </dd>
                </dl> 
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/PencilIn.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/PencilIn.aspx</a></font>     
            </li>
            <li>
                <h2>
                    <a name="PlanAhead"></a>Do you plan the night before what you are doing the next
                    day?</h2>
                <p>
                    It's often easy to lose track of what you're doing, especially if you have a busy
                    day full of meetings and rushing around, it can often be easy to sign off and not
                    think about tomorrow until you have to. But what if you're not coming in to the
                    office the next day? You might be booked in to work at a client site first thing
                    in the morning.
                </p>
                <p>
                    For this reason, it's a good idea to end each day by having a quick glance at your
                    calendar. If you're especially busy, it can also be a good idea to have a paper
                    printout of your week so you can look at your appointments in the car or on the
                    move.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/PlanForNextDay.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/PlanForNextDay.aspx</a></font> 
            </li>
            <li><a name="InformFreeOverTime"></a>
                <h2>
                    Do you let your client know when you work overtime and it is not charged?</h2>
                <p>
                    At times we have to work overtime on a project and the client is not charged for
                    the total hours worked. When this occurs it is important to let the client know.
                    If a client does not know, how can they be grateful? A happy client is achieved
                    in small bite sized steps. Informing the client of overtime that is not charged
                    is just one of those small steps.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/LetClientKnowWorkOT.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/LetClientKnowWorkOT.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="BrowniePoints"></a>Do you make sure you get brownie points?</h2>
                <p>
                    People are not mind readers (unless they are telepathic!), so when you get good
                    feedback from a client, make sure you get the recognition for it. There is nothing
                    wrong with getting brownie points for the work you have done and making sure the
                    boss at the client site and your manager know about it.
                </p>
                <dl class="good">
                    <dt>
                        <table>
                            <tr>
                                <td width="50%">
                                    <table width="100%">
                                        <tr>
                                            <td>
                                                <b>To:</b>
                                            </td>
                                            <td>
                                                John Smith - CEO Qwerty Organization
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>CC:</b>
                                            </td>
                                            <td>
                                                Adam Cogan - SSW Manager
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>From:</b>
                                            </td>
                                            <td>
                                                Sophie Belle - SSW Developer
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Subject:</b>
                                            </td>
                                            <td>
                                                .NET Development Work for Qwerty Organization by SSW
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <p>
                                                    John,
                                                </p>
                                                <p>
                                                    FYI - see next email. As you can see, I am loved :)
                                                </p>
                                                <p>
                                                    Regards,
                                                    <br />
                                                    Sophie Belle
                                                    <br />
                                                    <a href="/ssw" target="_blank">www.ssw.com.au</a>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>To:</b>
                                            </td>
                                            <td>
                                                Sophie Belle - SSW Developer
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>From:</b>
                                            </td>
                                            <td>
                                                Amanda Panda - Programmer / Analyst Qwerty Organization
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>Subject:</b>
                                            </td>
                                            <td>
                                                .NET Development Work for Qwerty Organization by SSW
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <p>
                                                    Sophie,
                                                </p>
                                                <p>
                                                    Thanks for the latest release.<br />
                                                    It is fantastic! Thank you for all your hard work and commitment to helping implement
                                                    this solution.
                                                </p>
                                                <p>
                                                    Regards,
                                                    <br />
                                                    Amanda Panda
                                                    <br />
                                                    Programmer / Analyst<br />
                                                    Qwerty Organization
                                                </p>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </dt>
                    <dd>
                        Figure: Developers, when you get good feedback from anyone at the client's company,
                        forward their comments onto the boss at the client's company and CC your manager.
                    </dd>
                </dl>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/BrowniePoints.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/BrowniePoints.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="PositiveLanguage"></a>Speaking - Do you speak in a positive language to
                    clients?</h2>
                <p>
                    A sentence can be phrased in many ways. It is important to use positive language
                    when speaking to clients. Instead of saying "I will NOT do X until you do Y", you
                    can say "When you do Y, I will be happy to do X".</p>
                  <dl class="bad">
                    <pre>We will need your agreement on the mockup, and as soon as you are happy with it, we will develop it to the agreed mockup. We will not be able
                    to change the mockup once made and you are happy with it.</pre>
                    <dd>Bad example</dd>
                  </dl> 
                  <dl class="good">
                    <pre>We will develop the report once you are happy with and have signed off the mockup.</pre>
                    <dd>Good example</dd>
                  </dl>    
                  <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/PositiveLanguage.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/PositiveLanguage.aspx</a></font>    
            </li>
            <li><a name="ClientLove"></a>
                <h2>
                    Do you build the client relationship by completing "Client Love" each week? (aka Customer Love)</h2>

<dl class="image" style="float: right; clear: right; width: 232px;">
<dt>
<img alt="Client Love" src="Images/LoveClientsImage.jpg"/>
</dt>
</dl>

                <p>
                    Being a good developer is not enough. There are multiple factors that can affect
                    whether a project proceeds in a positive or a negative way. One factor that can
                    have a significant impact on a project is the relationship between the developer
                    and the client.</p>
                <p>
                    A great way of taking a small step each week is to do something on a more personal
                    basis for the client.</p>
                <p>
                    Each week give some love to your client. "Client Love", as I have seen, varies a
                    lot. Here are some things I have seen:</p>
                <ul>
                    <li>The developer notices that the topic of the upcoming SSW Tech Breakfast is appropriate
                        and rings the client to offer them a free ticket.</li>
                    <li>The developer sends them a SMS on the weekend saying... "I was just thinking about
                        your project and I think this might be a good idea?</li>
                    <li>The developer works back and gives a call on the way home to tell them what they
                        did extra in their own time.</li>
                    <li>The developer sends an IM with a link to a web article that would interest them.</li>
                    <li>The developer buys the client their favourite coffee.</li>
                    <li>The developer talks and listens to the client about non work related things. People
                        generally love talking about themselves and appreciate it when someone listens;
                        most people don't take the time to listen. Here are some examples I have seen:
                        <ul>
                            <li>How was your weekend?</li>
                            <li>What are you doing this weekend?</li>
                            <li>General talking about their family / remembering the names of their family members.</li>
                            <li>General talking about their hobbies.</li>
                        </ul>
                    </li>
                </ul>
                <p>
                    The tasks don't have to cost anything. Free tasks are more thoughtful and show the
                    client you are thinking about them.</p>
                <p>
                    Tasks should be completed whilst on client work. Once client work is completed,
                    the developer should move onto the <a href="#PostClientWork">
                        Post Client Work</a> rule.
                </p>
                <p>
                    Extra Reading: For some, the above comes naturally. For the rest of us, we highly
                    recommend the book "How to Win Friends and Influence People" written by Dale Carnegie.
                    It is an easy read, the principles are easy to implement and will not only change
                    your client relationships but enhance all the relationships in your life for the
                    better.</p>
                <p>
                    See <a href="/SSW/Standards/Rules/RulestoSuccessfulSalesAccountManagement.aspx#ReviewClientLove">
                        Rules to Successful Sales Account Management</a>
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/BuildClientLove.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/BuildClientLove.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="ClientsUsingMessenger"></a>Do you contact your clients using IM/Windows Live Messenger?
                </h2>
                <p>
                    Having your clients as Instant Messenger contacts can improve your efficiency in project work. You can get a fast solution 
                    to road blocks and solve little problems quickly, as well as develop a better relationship!
                    </p>
                    <p>
                    Of course any important chats should be <a href="RulestoBetterInstantMessenger.aspx#ImportantChatsEmail">confirmed 
                    via email</a>. 
                    </p>
                                    <dl class="good">
                    <dt>
                        <p>
                        Hey Simon                        
                        </p>
                        <p>
                            I find having my clients available on Windows Live Messenger (Instant Messenger/MSN) is extremely useful. Are you 
                            on Messenger? If so, can I please add you as a contact? I'll add the above email address, let me know if you use a different one. 
                        </p>
                        <p>
                            Cheers<br />
                            Cameron Shaw<br />
                            www.ssw.com.au 
                                                        
                        </p>
                    </dt>
                    <dd>
                        Figure: It's easy to get your clients on Instant Messenger, you only have to ask!
                    </dd>
                </dl>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/ContactClientViaMSN.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/ContactClientViaMSN.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="LeaveMessages"></a>Do you leave messages when your phone call is unanswered?</h2>
                <p>
                    If you call a client or team member, and for some reasons he/she do not attend your
                    call, then you MUST leave messages to ensure a response.</p>
                <p>
                    Your messages must contain <i><b>your name (firstname and lastname)</b></i>,<i> <b>purpose
                        of calling</b></i>, and<i><b> your contact number</b></i>. Below ia a good
                    messages example:</p>
                <ol>
                    <dl class="good">
                        <dt>
                            <tab><i>Hi Ms. Emma, this is Alvin Shen from SSW. I am calling to follow up our meeting 
                                    yesterday about your company website. Please return my call on 9953 3000. Thank 
                                    you.</i></tab>
                        </dt>
                    </dl>
                </ol>
                <p>
                   Confirm the voice message with an email. 
                </p>
                <p>
                    There are several advantages leaving messages when your call is unanswered:</p>
                <ul>
                    <il>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <li>He/she may know who calls and be able to return your call.</li>
						
						
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <li>If your message is urgent, he/she may return your call straight 
                                        away (even though he/she is VERY busy).</li>
						
						
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </il>
                </ul>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/LeaveMSG.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/LeaveMSG.aspx</a></font> 
            </li>
            <li>
                <h2><a name="FixProblemsFast"></a>
            
                Do you fix problems fast?
               </h2>
            <p>
                A problem, like a wound, gets worse the longer it remains untreated, so fix problems fast. Problems come in endless contexts but 
                here's how we deal with some specific examples:
            </p>
                <ol>
                    <li><a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/FixBugsFrst.aspx">Fix bugs first</a></li>
                    <li><a href="RulesToBetterInboundCalls.aspx#MakeComplaintsPositive">Make client complaints a positive experience</a></li>
                </ol>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/FixProblemsQuickly.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/FixProblemsQuickly.aspx</a></font> 
            </li>
            <li>
                <h2><a name="CallTwice"></a>
            
                Do you try second time straight away when you are calling a client?
            </h2>
                <p>
                    When you call a client, always try a second time straight away.  
                    Sometimes they are not at the phone, sometimes there is a technical issue or some other reason, 
                    and you should try to call again to make sure you give the client enough time to pick up your call.                                     
                </p>
               <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/TrySecondTime.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/TrySecondTime.aspx</a></font> 
            </li>
			<li><h2><a name="SetupDevTraining"></a>
				Do you know how to get started with your Training?</h2>
				<p>Start the day on a good foot by asking:</p>
				<ul>
                    <li>The plan today is XXX?</li>
                    <li>What do you want to cover today?</li>
                    <li>What do you already know?</li>
                    <li>Do you want lectures/Hands on labs/mixture?</li>
                    <li><s>Let them There will be preparation time equal to the training time. i.e. 2 days training needs 2 days prep</s></li>
				</ul>
				<font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/GetStartedWithTraining.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/GetStartedWithTraining.aspx</a></font> 			
			</li>
			<li><h2><a name="RecordDisagree"></a>
				Do you put a record when you disagree with something?</h2>
				<p>
				    When you disagree with something, you must put a record (email) and CC all the people involved, because:
				</p>
			    <ol>
			        <li>Later down the track you can say: "I told you so" ;-)</li>
			        <li>People read it later, after they cooled down from the meeting, and see it as useful input</li>
			    </ol>
                <dl class="badCode">
                    <dt>
                        "I knew it before, Silverlight shouldn't be used for the Northwind project"
                    </dt>
                    <dd>Bad example</dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        "I disagree doing the Northwind Project in Silverlight, I recommend doing it in Flash, because ...."
                    </dt>
                    <dd>Good example</dd>
                </dl>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/PutARecordForDisagree.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/PutARecordForDisagree.aspx</a></font> 
			</li>
			<li><h2><a name="NoFightWithCustomer"></a>
				Do you know that it's bad to win the fight, but lose the customer?</h2>
				<p>
				 The impulse to win an argument and prove that you are right can be a strong driving force, but it's important not to let it take priority over keeping a good client.
				</p>
                <p>
                If the client is unhappy or upset, it's more important to show empathy and demonstrate that you understand your client's point of view, as it is more likely to win you future work.
                </p>
                <p>
                Make sure you start a reply to an angry client with something like "I understand your frustration, and I think I can stop this happening again".
                </p>
                <p>
                At this point in time, you want to aim for a compromise, where each party meets the other somewhere in the middle.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/NoWinTheFight.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/NoWinTheFight.aspx</a></font> 
			</li>
			<li>
			  <h2><a name="NumbersGiveToClient"></a>Do you know the numbers you give clients?</h2>
			  <p>When working on an hourly basis, you can confuse clients when sometimes you try to talk about a few hours here and a few hours here or there.</p>
			  <p>Simply things and just give them these 3 numbers:</p>
			  <table>
			   <tr>
			    <td width="50%">
			      <table width="100%">
			        <tr>
			          <td>$ Billed to date</td>
			          <td>__$xx__(accurate on Tuesday)</td>
			        </tr>
			        <tr>
			          <td>Burndown Days Remaining</td>
			          <td>__8__</td>
			        </tr>
			        <tr>
			          <td>Calendar Days Booked</td>
			          <td>__4days x 2__</td>
			        </tr>
			        <tr>
			        <td>Next meeting (for Review and Retro)</td>
			        </tr>
			      </table>
			    </td>
			   </tr>
			  </table>
			  <dl class="greyBox">
			    <div>
			      <p>Hi Andrew,<br />
                    Please find the Burndown report below. I have looked at a few tasks with Zune and re-estimated them.</p>
                   <ul>
                    <li>Product owner:Andrew</li>
                    <li>Scrum master:Paul</li>
                    <li>Team:Mark L,Zune,Tristan,Trevor</li>
                    <li>$ Billed to date:$20,000 </li>
                    <li>Days remaining:(around 50 hours based on chart below)=7+days</li>
                    <li>Days booked in are 4 days x 2
                      <ul>
                        <li>ML and ZV - Mon 5th</li>
                        <li>ML and ZV - Tue 6th</li>
                        <li>ML and ZV - Mon 12th</li>
                        <li>ML and ZV - Tue 13th</li>
                      </ul>
                    </li>
                    <li>Only the 14th we will
                      <ul>
                        <li>Move any remaining tasks to Sprint 4</li>
                        <li>Have a Review Meeting (show and tell) at 10am ?2 hours</li>
                        <li>Have a Retrospective Meeting at 12 noon ?2 hours</li>
                        <li>Have a Planning Meeting at 2pm</li>
                      </ul>
                    </li>
                    Please let us know if you have any questions or concerns.
                   </ul>
			    </div>
			  </dl>
			  <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/NumbersGiveToClients.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBeingSoftwareConsultants-DealingWithClients/Pages/NumbersGiveToClients.aspx</a></font> 
			</li>
			
        </ol>
    </div>
<br />
    <h2>
        Acknowledgments</h2>
    <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=UM">Ulysses Maclaren</a><br />
    </p>
</asp:Content>
