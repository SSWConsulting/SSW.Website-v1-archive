<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="Rules to being Software Consultants - Working in a Team" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p> 
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p> 
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230536574757073')">
            Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <div class="floatRight" style="width:40%;">
            <div class="greyBox" style="margin:4px;">
				Part A: <a href="RulesToBeingSoftwareConsultantsDealingWithClients.aspx">Rules to being Software Consultants - Dealing with Clients</a>
			</div>
        </div>
        <ol>
            <li><a href="#OrderOfImportance">Do you do your work in order of importance (AKA Priorities)</a></li>
            <li><a href="#Phone">Do you have your mobile phone on vibrate?</a></li>
            <li><a href="#MakeHardDecisionsEasier">Do you know how to make hard decisions a little easier?</a></li>
            <li><a href="#ManageUp">Do you manage up?</a></li>
            <li><a href="#ChaseManager">Do you chase your manager or does he have to chase you? (AKA Asking for Clarification)</a></li>
            <li><a href="#100MilesanHour">Do you analyze what happened if you find that you were running 100 Miles an hour only to find yourself standing still?</a></li>
            <li><a href="#CCAccountManagerForNewWork">Do you CC your Account Manager on emails relating to new work?</a></li>
            <li><a href="#HelpingCorporateObjectives">Do you help the corporate objectives?</a></li>
            <li><a href="#ProjectUpdate">Do you keep your Project Manager informed of progress?</a></li>
            <li><a href="#BackupsAndTFS">Do you use Source Control and Backups?</a></li>
            <li><a href="#labelbrokenequipment">Do you label broken equipment?</a> </li>
            <li><a href="#Honesty">Do you maintain honesty in your team?</a></li>
            <li><a href="#TeachShareIdeas">Do you teach and share ideas regularly?</a></li>
            <li><a href="#StandardWatchdog">Do you act as a Standards Watchdog?</a></li>            
            <li><a href="#SuggestBetterMethod">Efficiency - Do you suggest a better method if you see one?</a></li>
            <li><a href="#PairWork">Efficiency - Do you always try to work in pairs?</a></li>
            <li><a href="#TwoMonitors">Efficiency - Do you use two monitors?</a></li>
            <li><a href="#QuietTime">Efficiency - Do you utilize quiet time in the morning?</a></li>
            
            <li><a href="#NotifyOthers">Do you notify others about what is happening in the company?</a></li>
            <li><a href="#OfferSpecificCriticism">Do you offer specific criticism?</a></li>
            <li><a href="#DontCriticize">Do you provide the reason behind the rules rather than  blind criticism?</a></li>
            <li><a href="#CorrectingPeople">Do you know the nice way to correct someone?</a></li>
			<li><a href="#Confirmation">Do you avoid confirmations that are just an 'OK' ?</a></li>
            <li><a href="#SecondChance">Do you, when someone does something wrong, give them a second chance?</a></li>
            <li><a href="#OfferPositiveFeedback">Do you offer positive feedback to your team?</a></li>
            <li><a href="#SandwichRule">Do you follow the sandwich rule?</a></li>
            <li><a href="#DressCode">Do you have a dress code?</a></li>
            <li><a href="#NoMusic">Do you avoid listening to music (Zunes and iPods) while at work?</a></li>
            <li><a href="#AskQuestions">Do you ask questions when you're stuck?</a></li>
            <li><a href="#Give100PerCent">Do you give 120% when deadlines are tight?</a></li>
            <li><a href="#GoTwoMiles">Do you go two miles when you're only asked to go one?</a></li>
            <li><a href="#Try">Do you enjoy your job?</a></li>
            <!--<li><a href="#Fun">Don't make fun of your work colleagues!</a></li>-->
            <li><a href="#MrRight">Do you only do what you think is right?</a></li>
            <li><a href="#CorrectEnglish">Speaking - Do you use correct English at work?</a></li>
            <li><a href="#Swearing">Speaking - Do you avoid swearing at work?</a></li>
            <li><a href="#ThumbDrive">Do you always carry a thumb drive with you?</a></li>
            <li><a href="#CopyingStuff">Quality - Do you make your templates accessible to everyone?</a></li>
            <li><a href="#CodeAuditor">Quality - Do you run SSW Code Auditor?</a></li>
            <li><a href="#ErrorLogger">Quality - Do you implement SSW error logger?</a></li>
            <li><a href="#TestPlease">Quality - Do you only deploy after a test please?</a></li>
            <li><a href="#GetAdamToCheck">Quality - Do you get your most experienced co-worker to check your work?</a></li>
            <li><a href="#BlogEntryWithStandardFooter">Do you respond to blogs and usergroups with the standard footer?</a></li>
            <li><a href="#AppropriateResource">Do you know who are the most appropriate resources for a project?</a></li>
            <li><a href="#Report">Do you create a report whenever you need a number from a system?</a></li>
             <!--<li><a href="#MrRight">Do you know who pays the bill?</a></li>-->
            
            <li><a href="#debrief">Do you have a debrief after an initial meeting?</a></li>
            <li><a href="#OfferMobile">Do you offer to give their mobile when taking a call for someone?</a></li>
            <li><a href="#BookAppointment">Do you check someone's calendar and then book the appointment?</a></li>
            
            <li><a href="#HandleEmployee">Do you handle the start of a new work experience employee properly?</a></li>
            <li><a href="#RecurringTask">Do you know the recurring task you have and do you do them on time?</a></li>
            <li><a href="#ShareCalendar">Do you know the ways to share and see others' calendars?</a></li>
            <li><a href="#SetWorkHoursInCalendar">Do you set your work hours in your Calendars?</a></li>
            <li><a href="#ShareCalendarWithAll">Do you share your calendar with everyone? </a></li>
            <li><a href="#FullAccess">Do you allow full access to Calendar Admins? </a></li>
            <li><a href="#InviteSSWAbsence">Do you invite the calendar SSWAbsence when you are out of the office during any of your work hours?</a></li>
            <li><a href="#EnoughNotice">Do you give enough notice for annual leave? (aka Flexibility vs. Substantial Notice)</a></li>
            <li><a href="#CalendarShow">Does your calendar always accurately show where you are?</a></li>
            <li><a href="#PreferStuff">Do you tell your boss what work you prefer but understand when you have to do less interesting stuff?</a></li>
            <li><a href="#ZoomIn">Meetings - Do you always zoom in when using a projector?</a></li>
            <li><a href="#CarUSB">Do you have a USB adaptor in your car?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="OrderOfImportance"></a>Do you do your work in order of importance (aka priorities)</h2>
                    <dl class="image">
                        <dt>
                            <img src="/ssw/Standards/Rules/Images/challenges-ahead-sign.jpg" alt="Challenges ahead sign" />
                            </dt>
                        <dd>Figure: Remove roadblocks</dd>
                    </dl>
                    <p>With a mountain of emails, it is difficult to make sure the most important tasks get done first. You want to keep your clients happy while removing roadblocks for others.
                    <br />
                    This is the order which you should work:<br />
                </p>
                <ol>
                    <li><strong>Urgent emails</strong> - emails with "URGENT" in the subject e.g. URGENT - website is down</li>
                    <li>Emails about <strong>Timesheets</strong> or invoicing issues</li>
                    <li><strong>Your existing clients</strong> - e.g. Normal planned client work and client administration</li>
                    <li><strong>Client work</strong> - Ask others if you can help with their client work </li>
                    <li><strong>Prospective clients</strong> - project management, answering questions and setting up meetings</li>
                    <li>Quick Important emails to 0 (emails with an important flag < 1 hour and not something that can go into a release plan) </li>
                    <li>Uncompleted "<a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterScrumUsingTFS/Pages/SprintPlanning(WHAT)Meeting.aspx">sprints</a>" (was "<a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/DetailedReleasePlan.aspx">release plans</a>") e.g. Normal planned internal work</li>
                    <li>Important emails to 0</li>
                    <li>Help others get their important emails to 0</li>
                    <li>Ping others to see if they need help completing their "<a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/DetailedReleasePlan.aspx">release plan</a>" and "<a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterScrumUsingTFS/Pages/SprintPlanning(WHAT)Meeting.aspx">sprint</a>"</li>
                    <li>Now you are ready to make a new "release plan" (then wait for approval)</li>
                    <li>Get your inbox to 0</li>
                    <li>Phew... Done... </li>
                </ol>
                <dl class="good">                    
                    <dt>
                        <p>Don't move an important task out of your inbox unless:</p>
                            <ol>
                                <li>someone else is going to do it right away</li>
                                <li>it is going into a Sprint folder</li>
                            </ol>
                    </dt>
                    <dd>Figure: Leave it in your inbox &#45; unless you need to delegate an important task</dd>
                </dl>
                
                <dl class="goodImage">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/tasks-illustration.jpg" alt="Tasks" />
                    </dt>
                    <dd>Figure: Efficient people keep a priority list (often written)</dd>  
                </dl> 
                
                <p>Also, it's common that priority orders change, but clients don&#39;t always mean to, so double check that the client means this.</p>
                
                <dl class="good">
                    <dt>
                        When someone is asking you to do a new task, and you are still working on some other task, you should ask:<br /><br />
                        "Are you changing the priority order? Do you want this new task done before the current task I'm working on, which is xxx."                        
                    </dt>
                    <dd>Figure: Confirm with the client "Are you changing the prior order?"</dd>
                </dl>
                
                <dl class="goodImage">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/prioritization.jpg" />
                    </dt>
                    <dd>Figure: Prioritization &#45; The most recent task assigned is not necessarily the most important. Mentally do this (e.g. an air traffic controller does not deal with the newest plane that has popped up on his radar when he has 4 lined up to land</dd>
                </dl>
                
                
            </li>
            <li>
                <h2>
                    <a name="Phone"></a>Do you have your mobile phone on vibrate?</h2>
                <p>
                    If you were talking to someone, trying to come to a conclusion on a topic, when
                    their phone rang; would you want them to answer it? If they were using a loud ring
                    tone, the only way to continue your conversation would be to wait until they had
                    finished or, at least, they would have to get their phone out to hang up. Why should
                    the person who called get preferential treatment and be able to jump the queue?
                    Your mobile phone is a very useful tool. However, it can also be a nuisance. To
                    make sure it doesn't interrupt your daily activities, you should always put it on
                    vibrate.
                </p>
                <p>
                    This has the following advantages and disadvantages:
                </p>
                <p>
                    Advantages:
                </p>
                <ul>
                    <li>You get to only answer the phone when it is convenient for you</li>
                    <li>You won't be interrupting conversations with clients, which can be seen as unprofessional</li>
                    <li>You don't interrupt people's work with loud ring tones.</li>
                </ul>
                <p>
                    Disadvantages:
                </p>
                <ul>
                    <li>If your phone (PDA) is connected to your laptop, you might not notice it ringing</li>
                    <li>As above, but if you're away from your computer, you won't hear it from across the
                        office</li>
                    <li>Women generally keep their phones in their bags and so won't hear it unless it rings
                        loudly</li>
                </ul>
                <p>
                    The following solution should satisfy everyone
                </p>
                <ul>
                    <li>Anyone who keeps their phone in their pocket should have it on vibrate</li>
                    <li>Anyone who keeps their phone plugged into their laptop should have it on low volume
                        settings</li>
                    <li>All phones should be on vibrate or off while in meetings</li>
                    <li>This is a standard (i.e. best practices) and not a rule to be enforced. This leaves
                        room for exceptions such as slightly deaf people or women</li>
                </ul>
            </li>

            <li>
            	<h2><a name="MakeHardDecisionsEasier"></a>Do you know how to make hard decisions a little easier?</h2>
            	    <p style="float:right;">
					
					<img border="1" src="Images/complexity-and-false-hope.jpg" alt="Cartoon - Business decision" /><br />
                                    <b>Figure: Hard decision - this guy needs to state <br />why he recommends this option.</b>

            	</p>
            	<br/>
            	<p>When you are giving someone options, do you recommend one and state why?<br /><br /></p>
            	
                <p>
                    <b>For example:</b>
                    We want to integrate our database with our website so that customers can purchase online.<br /><br />
                </p>
                	
				<b>The choices:</b><br/><br />
				<ol>
					<li>Buy ready made solution.<br/>
						The ready made solution is cheap but it does not really have everything that we need and 
						has features that we may not need.</li><br /><br />
					<li>Build a new solution by third party company.<br/>
						It will be expensive and it will take a long time.</li><br /><br />
					<li>Customize ready made solution (Recommended)<br/>
						We are able to get rid of redundant features and change it to meet our requirements. It is cheaper than building a new solution
						from scratch.</li>
               	</ol>
				<p><br /><br /><b>The decision:</b> Customize ready made solution</p>			
                <p style="height: 210px;">&nbsp;</p>
			</li>

            <li>
                <h2>
                    <a name="ManageUp"></a>Do you manage up?</h2>
                <p>
                    Managing up is providing your manager with an option to approve, rather than asking
                    a general question.
                </p>
                <dl class="bad">
                    <dt>
                        <p>What do you want to charge for Cameron's rate?</p>
                    </dt>
                    <dd>Figure: Bad Example - Nothing to approve</dd>
                </dl>
                <dl class="good">                    
                    <dt>
                        <p>What do you want to charge for Cameron's rate?</p>
                        <p>I would advise the standard $165 + GST until he has more experience.</p>
                        <p>Please approve.</p>
                    </dt>
                    <dd>Figure: Good Example</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="ChaseManager"></a>Do you chase your manager or does he have to chase you? (AKA Asking for Clarification)</h2>
                <p>
                    Managers (or clients), like all of us, are snowed under with work and won't always
                    remember appointments with you. But keeping a good line of communication open is
                    essential and it's up to you to make it happen. No matter that your weekly meeting
                    gets cancelled, or your boss appears to avoid you for the week, stop and talk to
                    them in the corridor, or pick up the phone and give them an update. If you know
                    you've got issues to discuss (such as looming deadlines), don't wait for the client
                    or your manager to bring it up, take a pro-active approach and schedule a meeting.
                </p>
                <p>
                    As a guideline you should not go more than 2 weeks without talking to your boss.
                    And don't forget all the things you've got to say &#45; have a sub-folder in your Inbox
                    such as "Ask the Boss". Next time when the boss asks "does anyone want to speak to me?", look in that folder.
                </p>
                <dl class="bad">
                    <dt>What do you mean?<br /><br />
                    Uly</dt>
                    <dd>Figure: Bad example &#45; bouncing emails back</dd>
                </dl>
               
                <dl class="bad">
                    <dt>I called you... What do you mean?<br /><br />
                    Uly</dt>
                    <dd>Figure: OK example &#45; calling, then bouncing emails back</dd>
                </dl>

                <dl class="good">
                    <dt>(I called you and left a message as I need clarification &#45; so have moved it to &#39;Ask the boss&#39;)<br />
                    FYI Adam I don&#39;t understand xxx</br />
                    Will catch you later about it<br /><br />
                    Uly</dt>
                    <dd>Figure: Good example &#45; No bounce, still owning the task &#45; even though you need clarification</dd>
                </dl>

                <p>You can see more information on this at <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/EmailForTasksNotCommunication.aspx">Do you use email for tasks only &#45; not communication?</a> and <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/SeekClarificationViaTelephoneFirst.aspx">Do you seek clarification via the telephone first?</a></p>

            </li>
            <li>
                <h2>
                    <a name="100MilesanHour"></a>Do you analyze what happened if you find that you were
                    running 100 miles an hour only to find yourself standing still?</h2>
                <p>
                    Sometimes we work at 100 miles an hour, but don&#39;t get anything done. When this
                    happens, do not ignore it, use this time to send your manager an email titled "100
                    miles an hour but standing still" and explain why this happened and how it could
                    be avoided in the future.</p>
            </li>
            <li>
                <h2>
                    <a name="CCAccountManagerForNewWork"></a>Do you CC your Account Manager on emails
                    relating to new work?
                </h2>
                <p>
                    Once a project gets underway, it is not uncommon for the lead developer to take
                    over a lot of the project management workload. Since they are the person most in
                    contact with the client, sometimes new work will be organized through them instead
                    of the Account Manager.
                </p>
                <p>
                    When this is the case, the "As per our conversation" email should CC the Account Manager
                    so he is always aware of all work being done.
                </p>
                <p>
                    If an initial meeting is required for the new work, the Account Manager should be in attendance
                    where possible to help continue the relationship.
                </p>
                
               <dl class="good">                    
                    <dt>
                        <p>Hi Bill,<br />
                           As per our conversation, you want me to work for another 2 weeks to work on this additional work.</p>
                    </dt>
                    <dd>Figure: Good Example - the account manager should be CCed on an email like this.</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="HelpingCorporateObjectives"></a>Do you help the corporate objectives?</h2>
                <p>
                    We know you love your technology but are you helping with the corporate objectives?
                    The best way of doing that is to have a meeting or call with your manager and keeping
                    a word document of the main points to review each month.</p>
                <p>
                    Make it tangible and strike through each point when it has been completed.</p>
            </li>
            <li>
                <h2>
                    <a name="ProjectUpdate"></a>Do you keep your client informed of progress?</h2>
                <dl class="goodImage">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/testEmail.gif" alt="" /></dt><dd>Figure: You are
                            responsible for sending update reports to your clients every Friday</dd></dl>
                <p>
                    A client will always prefer to be told ahead of time if a release is going to take
                    longer than anticipated. It gives them more control of what is going on. The other
                    opinion is landing them with an oversized invoice with no warning.
                </p>
                <p>
                    For this reason, any developer working on a client project should send an updated
                    release plan to the relevant project manager every Friday so that they can call
                    the client, if needs be, to inform them of what's going on and ask "do you want
                    us to continue?".
                </p>
                <dl class="bad">
                    <dt>$100k estimate. Calling the client when you reach $110k to say you have $20k to
                        go. </dt>
                    <dd>
                        Bad Example: Not giving the client enough warning.
                    </dd>
                </dl>
                <dl class="good">
                    <dt>$100k estimate. Calling the client when you reach $80k to say you have $40k to go,
                        and does he want to continue? </dt>
                    <dd>
                        Good Example: Giving the client a warning ahead of time and asking for permission
                        to continue.
                    </dd>
                </dl>
                <p>
                    If you're working to a release plan, <a href="/ssw/Standards/Rules/Images/fridaySign.jpg">
                        here is a reminder</a> about sending updates to put up in your office.
                </p>
            </li>
            <li>
                <h2>
                    <a name="BackupsAndTFS"></a>Do you use Source Control and Backups?
                </h2>
                <p>
                    As a responsible employee, there should be no excuse for ever losing data, especially
                    if it belongs to a client. For this reason, it's important to make sure:
                </p>
                <ul>
                    <li>Your backups are working properly</li>
                    <li>You are using source control for any code you develop</li>
                </ul>
                <p>
                    If you are working onsite, you can still use TFS remotely and it's important to
                    talk the client into this in order to avoid any possible disasters.
                </p>
            </li>
            <li>
                <h2>
                    <a name="labelbrokenequipment"></a>Do you label broken equipment?</h2>
                
                <p><i>Imagine you see one port of a hub not working, what do you do?</i></p>
                <p>
                    When you see something not working like a phone or a powerpoint, don't ignore it,
                    stick a note to it and tell the appropriate person.
                </p>
                <p>We use a form that reminds us what is broken, who we have to call to have
                someone come and fix it, as well as any notes we may need to ensure that the item in question is
                fixed properly or replaced.</p>
               
            </li>
            <li>
                <h2>
                    <a name="Honesty"></a>Do you maintain honesty in your team?</h2>
                <p>
                    It is extremely important to maintain honesty in a team environment. Nothing breaks
                    down a team like a lack of trust. Remember, honesty starts with the small things.
                </p>
                <p>
                    "Lying is all about intent. When you say something you know isn't true in order
                    to influence others, you're lying. If you say something which isn't true but you
                    didn't know it wasn't true, that's not lying. But if you try to influence others
                    by passing off something you don't know is true as truth, you are lying. Even if
                    it subsequently turns out the thing was true."
                    <br />
                    Ole Eichhorn More at <a href="/ssw/Redirect/Honesty.htm">http://www.w-uh.com/posts/030328-lying.html</a>
                </p>
            </li>

            <li>
                <h2>
                    <a name="TeachShareIdeas"></a>Do you teach & share ideas regularly?</h2>
                <p>
                    Each team member has their own set of skills. There is no use hiding those skills
                    "under a bushel". If you can at least share one idea a week the team's shared knowledge
                    increases. This has many positive spin-offs, for example, the teams don't become
                    reliant upon one individual, and when your idea is adopted your confidence increases
                    allowing you to make more contributions in the future. Importantly, it's not only
                    management that should contribute this way. Everyone has something to share. William
                    McKnight, the chair of 3M said "It is essential that we have <i>many people</i>
                    with initiative if we are to continue to grow."
                </p>
                <p>
                    As an example, if you have a handy tip, send an email to SSWDevelopers or add it
                    to the KB.
                </p>
            </li>
            <li>
                <h2>
                    <a name="StandardWatchdog"></a>Do you act as a Standards Watchdog?</h2>
                <p>
                    See <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/StandardsWatchdog.aspx">Is
                        everyone in your team a Standards Watchdog?</a>
                </p>
            </li>
            <li>
                <h2>
                    <a name="SuggestBetterMethod"></a>Efficiency - Do you suggest a better method if
                    you see one?
                </h2>
                <p>
                    Most companies have a series of standards for conducting routine tasks. Of course
                    some of these would have been written years ago, and haven't necessarily been updated.
                    If you can think of a better way of doing something, let the appropriate person
                    know and change the standard. Remember, if everyone contributes, everyone benefits.
                </p>
            </li>
            <li>
                <h2>
                    <a name="PairWork"></a>Efficiency - Do you always try to work in pairs?</h2>
                <p>
                    There are many good reasons why it's better to work in pairs, e.g. it's more efficient.
                    I'm not talking about classical pair programming, as here at SSW we use our own
                    brand... we do put our developers in pairs, but they each have their own computer.
                </p>
                <p>
                    See <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/PairWork.aspx">Rules to Successful Projects - Pair Working</a>
                </p>
            </li>
            <li>
                <h2>
                    <a name="TwoMonitors"></a>Efficiency - Do you use two monitors</h2>
                <p>
                    Studies have shown that you can get up to a 30% increase in productivity by using
                    more than one monitor when you work.
                </p>
                <p>
                    Providing users with the ability to access more information and images simultaneously,
                    multiple monitor configurations allow for more efficient multi-tasking between applications.
                </p>
                <p>
                    For example, if you were a developer; you could have your references in one monitor
                    and your Visual Studio in another, and directly compare the two without compromising
                    on space or layout.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/TwoMonitorsBetterThanOne.JPG" alt="Two Monitors Better Than One " />
                    </dt>
                    <dd>
                       Figure: Two monitors are better than one
                    </dd>
                </dl>
                
            </li>
            <li>
                <h2>
                    <a name="QuietTime"></a>Efficiency - Do you utilize quiet time in the morning?</h2>
                <p>
                    It is important to have a specific period in the day to utilize to full potential.
                    For this reason, at SSW, we do the following until 1pm every day:
                </p>
                <ul>   
                    <li>Quiet time is until lunch time (usually 1pm)</li>
                    <li>You can't interrupt anyone</li>
                    <li>Even if you're near them, still IM 1st and ask to see them when they're free</li>
                    <li>Whisper or talk quietly when you talk</li>
                    <li>No non-urgent phone calls (make calls in the afternoon)</li>
                </ul> 
                <p>
                    Unfortunately, this means that the afternoon becomes a free for all. Although this 
                    scenario is not ideal, it at least gives you the morning to get things done.
                </p>
            </li>
            <li>
                <h2>
                    <a name="NotifyOthers"></a>Do you notify others about what is happening in the company?
                </h2>
                <p>
                    When something happens in your company, always send around an email so that the
                    whole team is kept in the loop. Examples of events that you should send an email
                    around for:</p>
                <ul>
                    <li>An update to a company standard or procedure (including a link to it)</li>
                    <li>Births and marriages</li>
                    <li>Employees who are starting or finishing</li>
                    <li>Anything significant that is happening in your life or the life of a loved one</li>
                </ul>
                <p>
                    You should really feel free to share any good news you have with everyone. It will
                    make the office feel more like a family and not just a place to turn up to work.
                </p>
                
                
                 <dl class="good">
                    <dt>
                    Subject RE: Vacation<br /><br />
                    Hi Guys, <br /><br />
                    I'm heading to Sanya with my wife and kid this weekend, still remember the good time I had there last year at the MVP China Summit; also I think I do need to recharge myself for a little bit after long time working over 12 hours almost every day. <br /><br />
                    Pretty excited right now as this will be the very 1st official trip that I take with my kid, hope he will likes the beach. <br /><br />
                    Be prepared for more photos from my Nikon D80, I think it will be having a hard time during these 5 days.<br /><br />
                    Will be back next Thursday, so if you need me for anything, call my mobile by skypein: **** **** (if you are in Sydney), or 139 **** **** (if you are in Beijing) <br />
                    </dt>
                    <dd>Figure: Good Example</dd>
                 </dl>
     
            </li>
            <li>
                <h2>
                    <a name="OfferSpecificCriticism"></a>Do you offer specific criticism?</h2>
                <p>
                    Every day I come across something that could be improved. I believe that, if we're
                    not making improvements, we're going backwards. But I don't make suggestions or
                    criticisms without being specific.
                </p>
                <dl class="bad">
                    <dt>"Do you know our sales process is hopeless, what are you going to do about it?"</dt><dd>Figure:
                        Bad Example - Non specific criticism</dd></dl>
                <p>
                    When I find a problem, I pinpoint it directly (and recommend a solution):
                </p>
                <dl class="good">
                    <dt>"The current sales process does not ensure that a prospect is followed up by a phone
                        call within 7 days of an initial meeting. Please create a workflow in CRM4, have it tested by the sales manager, and then we will email the sales team to inform them about the improvement." </dt>
                    <dd>
                        Figure: Good Example - Offering criticism in this way ensures that something will
                        happen to fix the problem.
                    </dd>
                </dl>
                <p>
                    Of course there are times that you can 'feel' that a problem exists, but you may not even be sure how are unable to pinpoint it, or can't think of a good solution. In this instance you should speak
                    to someone who you think may be able to identify a solution, come to an agreement,
                    and then request that action be taken.
                </p>
                <p>
                    When criticism is general, it is impossible to know what to fix.
                </p>
                <dl class="good">
                    <dt>
                    <strong>Quote #1:</strong> I don't mind being called a shit boss, just explain why.<br /><br />
                    Adam Cogan, The Oaks (with David Klein) 2002<br /><br />
                    <strong>Quote #2:</strong> How can you be influential, if you can't explain why.<br /><br />
                    Alison Young, SSW Boardroom 22/1/2009
                    </dt>
                    <dd>
                         Figure: Relevant quotes that encourage you to be specific
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="DontCriticize"></a>Do you provide the reason behind the rules rather than blind criticism?</h2>
                <table align="right">
                    <tbody>
                        <tr>
                            <td>
                                <dl class="badImage">
                                    <dt>
                                        <img src="/ssw/standards/rules/Images/DontCriticize.jpg" alt="Don't Criticize" width="176"
                                            height="172" />
                                         <br />"The whipping must continue until moral improves"   
                                    </dt>
                                    <dd>
                                        Figure: Bad Example</dd>
                                </dl>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <p>
                    A long time ago BF Skinner, a psychologist, proved through experiments that an animal
                    rewarded for good behavior will learn much more rapidly and retain what it learns
                    far more effectively than an animal punished for bad behavior (<em>Fundamental Techniques
                        in Handling People, Brian Elfstrom</em>). If you criticize your staff:<br />
                </p>
                <ul>
                    <li>You don't make lasting changes </li>
                    <li>They will resent you, resulting in lower productivity and employee morale</li>
                </ul>
                <p>
                    An example: If one of your responsibilities is to make sure all your developers
                    have signed released plans you can run around with a lot of authority telling them
                    they'd better comply, but at soon as you're not around, they will resent you and
                    not bother about it.
                </p>
                A better approach is, when you see developers not using signed release plans:<br />
                <ul>
                    <li>Ask, "Is there anything I can do to make it easier for you to complete the release
                        plan or make it simpler to produce?" </li>
                    <li>Explain that release plans are there to make sure we are working on authorized work
                    </li>
                    <li>Explain that release plans make sure we get paid for our work - without them it
                        is hard to track work done on a project </li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="CorrectingPeople"></a>Do you know the nice way to correct someone?</h2>
                <p>
                    When you notice that someone has done something against our standards, make sure
                    you are tactful in your corrections; especially if the person you are correcting
                    is a client.
                </p>
                <dl class="bad">
                    <dt>Subject: RE: Meeting<br />
                        <br />
                        Hi Mary,<br />
                        <br />
                        FYI - an appointment would have been better. See rule #48 in <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/SendOutlookCalendarAppointmentsAppropriate.aspx">
                            Rules to better Email</a> </dt>
                    <dd>
                        Figure: Bad Example</dd></dl>
                <dl class="good">
                    <dt>Subject RE: Meeting<br />
                        <br />
                        Hi Mary,<br />
                        <br />
                        I noticed you did not send an appointment for this meeting. I hope you don't mind,
                        but I have gone ahead and created one so we don't all have to create one individually.
                        <br />
                        We have a number of helpful standards like this which you can have a look at in
                        our <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/SendOutlookCalendarAppointmentsAppropriate.aspx">Rules to
                            better Email</a> if you're interested. </dt>
                    <dd>
                        Figure: Good Example</dd></dl>
            </li>

			<li>
                <h2>
                    <a name="Confirmation"></a>Do you avoid confirmations that are just an 'OK' ?</h2>
                <p>
                   Misunderstanding due to miscommunication can cause major disasters at work or in life (see: <a href="/ssw/Redirect/StandardsRules/Wikipedia.htm" target="_blank" class="external">http://en.wikipedia.org/wiki/Tenerife_disaster</a>).  A good communication strategy when receiving instructions is to repeat back what's being said to avoid misunderstanding.
                </p>
				<p>Question: Please get the manager to sign the time sheets off once completed</p>
                <dl class="bad">
                    <dt>"OK"  or "Roger That" </dt>
                    <dd>
                        Figure: Bad Example</dd></dl>
                <dl class="good">
                    <dt>I will get the manager to sign the time sheets off once completed.</dt>
                    <dd>
                        Figure: Good Example</dd></dl>
            </li>

            <li>
                <h2>
                    <a name="SecondChance"></a>Do you, when someone does something wrong, give them a second
                    chance?</h2>
                <div class="greyBox">
                    <p>
                        "A great man shows his greatness," said Carlyle, "by the way he treats little men".
                        Bob Hoover, a famous test pilot and frequent performer at air shows, was returning
                        to his home in Los Angeles from an air show in San Diego. As described in the magazine
                        <i>Flight Operations</i>, at three hundred feet in the air, both engines suddenly
                        stopped. By deft maneuvering he managed to land the plane, but it was badly damaged
                        although nobody was hurt.
                    </p>
                    <p>
                        Hoover's first act after the emergency landing was to inspect the airplane's fuel.
                        Just as he suspected, the World War II propeller plane he had been flying had been
                        fuelled with jet fuel rather than gasoline.
                    </p>
                    <p>
                        Upon returning to the airport, he asked to see the mechanic who had serviced his
                        airplane. The young man was sick with the agony of his mistake. Tears streamed down
                        his face as Hoover approached. He had just caused the loss of a very expensive plane
                        and could have caused the loss of three lives as well.
                    </p>
                    <p>
                        You can imagine Hoover's anger. One could anticipate the tongue-lashing that this
                        proud and precise pilot would unleash for the carelessness. But Hoover didn't scold
                        the mechanic; he didn't even criticize him. Instead, he put his big arm around the
                        man's shoulders and said. "To show you I'm sure that you'll never do this again,
                        I want you to service my F-51 tomorrow."
                    </p>
                </div>
                <p>
                    One of my staff, I wont tell you Edward's last name ;) , offered to help clean up
                    my laptop by backing up my files, reformatting and starting from scratch. For some
                    reason or another, all of my emails and client work were destroyed. Naturally I
                    was upset, but instead of coming down on him like a ton of bricks, I:
                </p>
                <ol>
                    <li>Went through the steps he took</li>
                    <li>Identified where he did not do what he was supposed to, and</li>
                    <li>Showed him the company standard for backups</li>
                </ol>
                <p>
                    By giving him a second chance, I ensured that he and others would not make the same
                    mistake again, without making him feel any worse than he already did.
                </p>
            </li>
            <li>
                <h2>
                    <a name="OfferPositiveFeedback"></a>Do you offer positive feedback to your team?
                </h2>
                <p>
                    Receiving positive feedback makes everyone feel good. Forgetting to recognize success
                    means the team has no motivation to succeed.
                </p>
                <p>
                    This is a simple rule - if someone goes beyond the call of duty, you thank them.
                </p>
            </li>
            <li>
                <h2>
                    <a name="SandwichRule"></a>Do you follow the sandwich rule?</h2>
                <p>
                    The sandwich rule approach is an effective way to provide feedback to other team
                    members and clients.</p>
                <ol>
                    <li>Start with positive feedback</li>
                    <li>Give your recommendations for improvement</li>
                    <li>End with some additional positive feedback (you may repeat #1)</li>
                </ol>
                <p>
                    This optimistic approach allows you to maintain a healthy relationship with your
                    team members and clients.</p>
            </li>
            <li>
                <h2>
                    <a name="DressCode"></a>Do you have a dress code?</h2>
                <p>
                    The way you and all members of your team present themselves is a crucial part of
                    creating a good impression for your clients, particularly in their first encounters
                    with you.
                </p>
                <p>
                    One aspect of this is dress code. Dress code is important for two reasons:
                    <ul>
                        <li>Looking professional and equipped for business. You don't need to go overboard,
                            at SSW we ask our employees to wear a nice shirt (business or polo), trousers, non-white
                            socks and black shoes (no sneakers, joggers or thongs). </li>
                        <li><a href="/ssw/Standards/Rules/RulesToBetterBranding.aspx#BrandingEmployees">Branding</a></li>
                    </ul>
                </p>
                <p>
                    Everyone wears their SSW shirt to work on Mondays and are encouraged to wear SSW
                    attire whenever they are in a public environment such as a User Group, Tech Breakfast,
                    or seeing clients. When you represent SSW formally (e.g. at a conference stand)
                    wearing SSW attire is mandatory. Of course, feel free to wear your SSW shirt every
                    day of the week!<br />
                </p>
                <p>
                    In addition, we ask our employees to make sure they put their shoes back on if they
                    are going to leave their desk for 2 main reasons:
                </p>
                <ol>
                    <li>Maintaining a professional look, especially if a client happens to come in unexpectedly
                    </li>
                    <li>Safety.</li>
                </ol>
                <p>
                    Making sure your team members care about their personal presentation will assist
                    in how effectively this comes across.
                </p>
                <p>
                    Most of these go without saying, but of course things such as wearing a belt, shaving
                    off your weekend facial growth, doing your hair, using deodorant and having clean
                    teeth and nice breath all help. Particular attention to detail in these matters
                    should be shown when attending clients' premises.
                </p>
                <p> "Well they say that you can never over dress :-)<br />
                    &nbsp;We want you to feel comfortable, so we don't wear suits... <br />
                    &nbsp;but on the other hand we don't wear jeans...nice shirts make the man..."<br />
                    - <a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Adam.aspx">Adam Cogan</a> - SSW Chief Architect, Microsoft Regional Director and Visual Studio ALM MVP
                 </p>
                <table border="0" id="table1">
                    <tbody>
                        <tr>
                            <td width="203" valign="top">
                                    <dl class="goodImage">
                                        <dt><img border="1" src="Images/DressCode_Good.jpg" width="203" height="326" alt="Good example" /></dt>
                                        <dd>Figure: Good Example</dd>
                                    </dl>
                            </td>
                            <td valign="top" width="203">
                                <dl class="badImage">
                                        <dt><img border="1" src="Images/DressCode_Bad.jpg" width="150" height="326" alt="Bad example" /><br /></dt>
                                        <dd>Figure: Bad Example</dd>
                                </dl>
                            </td>
                        </tr>
                    </tbody>
                </table>
                
            </li>
            <li>
                <h2>
                    <a name="NoMusic"></a>Do you avoid listening to music (Zunes and iPods) while at work?
                </h2>
                <p>
                    I love my new Zune and I know others love their iPods, but should we be using them
                    at work? Is there a way to use them effectively at work? I've had the "music debate"
                    with numerous people about using personal music in the workplace.
                </p>
                <p>
                    Regardless of whether it is AC/DC or DotNetRocks, music/podcasts should not be used in the work place because:
                </p>
                <ul>
                    <li>I want my team to work with each other, and I don't mind that they hear other conversations
                        going on. Hopefully if they hear about a problem they can fix quickly, they'll help
                        each other out. Let me give you an example... say Andrew (who is busy working on
                        another project) overhears Marlon say "Cool I found this great code generator, but
                        I can't get past this error". I want Andrew to be able to quickly offer up advice
                        (assuming he knows the answer already) to fix Marlon's problem before an issue develops.
                        In this case he would say "Hey we don't use that code generator, you need to use
                        <a href="../DeveloperGeneral/netTools.aspx">SSW's standard code generator</a>"
                    </li>
                    <li>It's been suggested that <a href="/ssw/Redirect/CodingHorror/MultiTaskingMyth.htm"
                        class="external" target="_blank">multi-tasking lowers your ability to efficiently
                        carry out a task</a> (e.g. doing your task at hand along with listening to tunes)
                        - by as much as 20%! </li>
                    <li>It can be anti-social - some people can shelter themselves </li>
                    <li>It regularly leads to "oh, I love this song, you should hear it" which subsequently
                        turns into a bigger distraction from work for multiple people </li>
                </ul>
                <p>
                    Others have said I am wrong with reasons like:
                </p>
                <ul>
                    <li>"It helps me give you 100% - since the office is noisy I can concentrate and I need
                        to block out a noisy environment".
                        <br />
                        Isn't the music just creating an additional noise source? </li>
                    <li>"It helps me relax".
                        <br />
                        Yes I love hearing a good song, for example, when I hear Robbie Williams' "Better
                        man" it gets me pumped a bit and I guess it has a positive effect on a my state
                        of mind. I am unconvinced it helps me program better. </li>
                </ul>
                <p>
                    There is, however, a use for it being "background" music in some scenarios; like
                    when you are doing time consuming mindless stuff like fixing data, building VPCs/VMWares
                    or waiting for long builds.
                </p>
                <p>
                    I've also been into a few offices that use ambient music to subdue their employees.
                    Again, I'm not convinced of this as a method mostly due to the fact that your not
                    likely to be able to attend to everyone's tastes, and you're even more likely to
                    intensify the "oh, I love this song" factor.
                </p>
                <p>
                    Note: Please see our <a href="RulesToBetterDeadTime.aspx#AudioDevice">Rules To Better
                        Dead Time</a> for how we like to effectively use audio devices like Zunes and
                    iPods when we're not at work.
                </p>
            </li>
            <li>
                <h2>
                    <a name="AskQuestions"></a>Do you ask questions where you're stuck?
                </h2>
                <p>
                    I've seen developers sit with their faces to the screen, isolating themselves from
                    the team, trying to solve a problem on their own. If you're stuck on one bug for
                    more than an hour, ask someone to help. No-one gets a medal for solving a problem
                    on their own in 2 days, when it could've been solved by 2 people in a couple of
                    hours.
                </p>
            </li>
            <li>
                <h2>
                    <a name="Give100PerCent"></a>Do you give 120% when deadlines are tight?
                </h2>
                <p>
                    There are times when you can happily work your standard hours, but there are times
                    when your whole team would appreciate some hard work. This should not be the standard,
                    but extra work at certain times is a given in a professional industry.
                </p>
            </li>
            <li>
                <h2>
                    <a name="GoTwoMiles"></a>Do you go two miles when you're only asked to go one?
                </h2>
                <p>
                    This idea is different from the above rules in that it strikes at the heart of our
                    everyday behavior, not just when a crisis is looming. <a href="/ssw/Redirect/Admin/Matthew5v41.htm" target="Blank">The Lord Jesus said </a>
                    <img src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17" height="11" />
                    "And whoever compels you to go one mile, go with him two.". While not everyone chooses
                    to agree with everything He said and did, it's a valid point when it came to creating
                    a positive team environment. If you're willing to help others above and beyond the
                    call of duty a whole ream of benefits flow:
                </p>
                <ul>
                    <li>People begin to share responsibility for work that traditionally is claimed as "not my problem"</li>
                    <li>Others will return the favor when you really need it</li>
                    <li>The sense of work-place isolation disappears</li>
                    <li>Productivity lifts as tasks can be achieved quicker</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="Try"></a>Do you enjoy your job?</h2>
                <p>
                    The expectation from me [Adam Cogan] is:
                </p>
                <ul>
                    <li>#1 is to put your heart into your job and enjoy yourself</li>
                    <li>Get your Employee Responsibilities done (scheduled recurring events)</li>
                    <li>Improve SSW to become a better place every week</li>
                    <li>Improve yourself to become a better person every week</li>
                </ul>
                <p>
                    If you find yourself not enjoying your job this is not necessarily a bad thing.
                    You should make a commitment to give it a go and try to make it work. When you have
                    decided you are unhappy you should talk to your boss and figure out what is making
                    you unhappy. The fact is that there are some jobs that you are not suited to. It
                    is probably best for everyone that you start to think about moving on and trying
                    something that may make you happier.
                </p>
                <p>
                    The number 1 cause of stress in this industry is caused by impending budgets. The
                    best way to handle this is to give realistic estimates, and imform the clients as
                    soon as it looks like they will be exceeded. A client who has accepted the realities
                    of his project is less scary than working on code that's already over-budget with
                    an impending unknown client reaction.
                </p>
            </li>

            <li>
                <h2>
                    <a name="MrRight"></a>Do you only do what you think is right?</h2>
                <p>
                    If someone asks you to do something you believe is unethical please ring them up
                    straight away and discuss the issue.
                </p>
            </li>
            <li>
                <h2>
                    <a name="CorrectEnglish"></a>Speaking - Do you use correct English at work?</h2>
                <p>
                    Communication and how you express yourself to your co-workers and clients is reflective
                    of the company you work for. At SSW, we find it beneficial to practice correct English,
                    as it displays our professionalism and courtesy. For example:
                </p>
                <dl class="bad">
                    <dt>"It's going good" </dt>
                    <dd>
                        Bad Example - using incorrect English</dd></dl>
                <dl class="good">
                    <dt>"It's going well"</dt><dd>Good Example - using correct English</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="Swearing"></a>Speaking - Do you avoid swearing at work?
                </h2>
                <p>
                    Swearing is not acceptable at SSW. For those who work at SSW and do not follow this
                    standard, we encourage them to do five push-ups or, alternatively, run outside and
                    back. If nobody paid attention to our standard, people would get comfortable with
                    bad language and the work environment would suffer.
                </p>
            </li>
            <li>
                <h2>
                    <a name="ThumbDrive"></a>Do you always carry a thumb drive with you?</h2>
                <p>
                    Always carry your thumb drive with you - in your pocket, on your key chain or even
                    around your neck. Thumb drives are particularly useful for storage of large files.
                    A good team member will always have their thumb drive available at the drop of a
                    hat.
                </p>
                <dl class="image">
                    <dt><img src="/ssw/standards/rules/images/ThumbDrive.jpg" alt="Thumb Drive" /></dt>
                    <dd>Figure: Thumb drives are becoming increasingly popular in large corporations as well. Check out this <a href="/SSW/Redirect/ComputerWorld.htm" class="external" target="_blank">Computer World article</a></dd>
                </dl>
            </li>
            <li>
                <h2><a name="CopyingStuff"></a>Quality - Do you make your templates accessible to everyone?</h2>
                <p>A common mistake for anyone in an organization is to use code/emails that you have previously written, and stored somewhere on your computer, and change around key bits to make it relevant.</p>
                <p>The problem with this is that you make it impossible for anyone else in your organization to do the same task to the same quality level. </p>
                <p>Make sure your company has a common code base email template store and endeavor to improve it regularly. This shares knowledge across your organization and makes sure everyone is working to the level that your company standards require. </p>
                <p>For SSW, we have the <a href="/ssw/NetToolkit/">SSW .NET Toolkit</a> which showcases our rules and standards and uses our SSW.Framework. We also have a file location \\skunk\ssw\KB\CodeBase to store useful code snippets.</p>
            </li>
            <li>
                <h2>
                    <a name="CodeAuditor"></a>Quality - Do you run SSW Code Auditor?</h2>
                <p>
                    Whenever you are writing code, you should always make sure it conforms to all of
                    your company standards.
                </p>
                <p>
                    No matter how good a coder you are, you will always miss some of them some of the
                    time, so it's a really good idea to have a tool that automatically scans your code
                    and reports on what you need to change in order to improve your code.
                </p>
                <p>
                    SSW Code Auditor is such a tool and its proper application to your code can cut
                    down on hours lost on testing and bug fixing later down the line.
                </p>
                See <a href="/ssw/Standards/Rules/RulesToBetterdotNETProjects.aspx#CAFxCop">Do you Add
                    SSW Code Auditor, NUnit and Microsoft FxCop project files to your Solution?</a>
                <br />
                See <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/CheckCodeByCodeAuditorBeforeCheckIn.aspx">Do you
                    check your code by Code Auditor before check-in?</a>
                <br />
            </li>
            <li>
                <h2>
                    <a name="ErrorLogger"></a>Quality - Do you implement SSW error logger</h2>
                <p>
                    When building an application for a client, you should implement functionality which
                    will notify you personally whenever it throws an exception and log the issue for
                    review.
                </p>
                <p>
                    There are a few reasons to do this:
                </p>
                <ul>
                    <li>It gives you a sense of ownership of the project</li>
                    <li>It makes finding out what's going wrong easier</li>
                    <li>You can keep a history so you can see if there are any recurring exceptions</li>
                    <li>You can ensure the long term quality of you application</li>
                    <li>You are not just washing your hands and leaving at the end of the release</li>
                </ul>
                <p>
                    You will find that this will lead to more clients who are happy to use you into
                    the future because they know that you care about their application.
                </p>
            </li>
            <li>
                <h2>
                    <a name="TestPlease"></a>Quality - Do you only deploy after a test please?</h2>
                <p>
                    In order to ensure the quailty of the code you deploy, make sure you don't deploy
                    until you have got your code fully tested.
                </p>
                <p>
                    For more information on this, see <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/InternalTestPlease.aspx">
                        Rules to Successful Projects</a>.
                </p>
            </li>
            <li>
                <h2>
                    <a name="GetAdamToCheck"></a>Quality - Do you get your most experienced co-worker
                    to check your work?</h2>
                <p>
                    It never hurts to get the advice of your co-workers, and getting advice from someone
                    who's been doing what you're doing for a while will always teach you something new
                    and improve the quality of your work
                </p>
                <p>
                    For development, as your application starts to develop into a usable entitiy, make
                    sure you get your Chief Architect (or equivalent) to have a look at what you're
                    doing and weigh in with their advice.
                </p>
            </li>
            <li>
                <h2>
                    <a name="BlogEntryWithStandardFooter"></a>Do you respond to blogs and usergroups
                    with the standard footer?</h2>
                <p>
                    If you see something in a blog that interests you or that you disagree with, reply
                    to it. You should not be afraid to voice your opinion and it's a great way to make
                    a name for yourself and your company on the world wide web.
                </p>
                <p>
                    Whenever anyone in your organization responds to a blog entry, forum, or usergroup,
                    they should always use the <a href="/ssw/standards/rules/RulesToBetterBranding.aspx#EmailSignatures">
                        standard company footer</a>.
                </p>
                <p>
                    This will help with <a href="/ssw/standards/rules/RulesToBetterBranding.aspx">branding</a>,
                    company recognition, and brings a sense of unity to everyone within your company
                    when they see each other's entries.
                </p>
            </li>
            <li>
                <h2>
                    <a name="AppropriateResource"></a>Do you know who are the most appropriate resources for a project?
                </h2>
                
                <p>
                    SSW has staff <a href="/ssw/standards/Forms/ConsultingOrderTermsConditions.aspx">varying in experience and price</a>. 
                </p>
                <p>
                    While all staff pass strict recruitment procedures including technical and communication assessments, all staff
                    have different skill sets. For example, some have a broader level of knowledge and some are more proficient at project 
                    management. 
                </p>
                <p>
                    When determining which staff are appropriate for which projects you need to analyze the needs of the project.
                    Some may not require management skills, for example if we are providing resources to another technical
                    organization, while some projects may require only a narrow field of knowledge, e.g. writing stored procedures.
                    For any major project a broad spectrum of individuals may be required which will utilize each level of SSW staff. 
                </p>
                <p>
                    SSW also has a great team of resources based out of our Beijing office which can contribute greatly to the 
                    coding requirements of the project.            
                </p>
            </li>
            <li>
                <h2>
                    <a name="Report"></a>Do you create a report whenever you need a number from a system?</h2>
                <p>
                    Whenever you need a number from a system you should think of how you can create a report, so next time you can press a button to get the result. </p>
<p>Ideally do the report in Excel and save it in a folder Eg. \\server\Reports_Adhoc.</p>
<P>If you find yourself doing adhoc reports, or random SQL queries you should make sure the boss knows you could not find the data you needed.</P>
                    <dl class="goodImage">
                    <dt>
                        <img src="Images/CreateReport.JPG" alt="Eg. Email your boss to ask a number" />
                    </dt>
                    <dd>
                        Figure: Sample Email -- Send an email to your boss for a number. 
                    </dd>
                </dl>
            </li>
            
            
            <li>
                <h2>
                    <a name="debrief"></a>Do you have a debrief after an initial meeting?</h2>
                <p>
            There is always something we can learn from our interactions with clients.<br />
            Initial meetings are a great opportunity to learn how we can fine tune our sales skills. Because there are always 2 SSW representatives in initial meetings with clients (usually an account manager and a developer) you should hold a debrief after the meeting on the way back to the office.
            Questions that you should ask each other are:<br />
            <br />
            1.	Did I do or say anything wrong?<br />
            2.	Was I listening to the client or was I talking too much?<br />
            3.	Did I give the client my full attention?<br />
            4.	Is there anything I could have done better?<br />
            5.	Do you think I connected with the client?<br />
            6.	How can we improve our sales process from what we learned in this meeting?<br />
            <br />
            You should be as honest as possible with each other during the debrief but always use the <a href="#SandwichRule">sandwich rule</a>.<br />
            Any good ideas or suggested changes should be emailed to <a href="javascript:sendEmail('6D61696C746F3A4164616D436F67616E407373772E636F6D2E6175')">Adam</a>.
             </p>
            </li>
            
        <!--li><a name="MrRight"></a><h2>Do you know who pays the bill?</h2>
            <ol>
			    <li>Don't offer to pay you attract the wrong types of people</li>
			    <li>Some people automatically offer to pay the bill</li>
			    <li>Don't offer and don't accept</li>
			    <li>Yes we can all afford the bill, say "Let's split the bill"</li>
			    <li>The worst thing is that you attract the wrong type of people and</li>
			    <li>You don't want to attract resentment</li>
			    <li>If you invited others to the restaurant you may pay on some occasions or</li>
			    <li>If you split the bill and you drank more than other guests, make sure to contribute more.</li>
            </ol>!-->
           
           <li>
                <h2>
                    <a name="OfferMobile"></a>Do you offer to give their mobile when taking a call for someone?</h2>
                <p>
                    Imagine you get a call and they want to speak to Adam and he is at lunch or somewhere. What do you do?
                </p>
                    <dl class="bad">
                    <dt>Sorry, Adam is at lunch. Please call later.
                    </dt>
                    <dd>
                        Bad Example</dd></dl>
                
                    <dl class="good">
                    <dt>Mark Fonsca from 3000AD wants to reschedule the meeting he had booked with you for 9:30am this Wednesday (ANZAC day). Please call him on  0414 912 053.
                    </dt>
                    <dd>
                        Good Example</dd></dl>                    
            </li>

           <li>
                <h2>
                    <a name="BookAppointment"></a>Do you check someone's calendar and then book the appointment? </h2>
                <p>
                   Imagine someone wants an appointment with a team member who has <a href="/ssw/Standards/Rules/RulesToBeingSoftwareConsultantsWorkingInATeam.aspx#ShareCalendarWithAll">shared their calendar</a> with you. Offer to look up the calendar and book in time straightaway.
                </p>
                 <dl class="bad">
                    <dt>Try calling him.
                    </dt>
                    <dd>
                        Bad Example</dd></dl>
                <dl class="good">
                    <dt>
                    Sure, I'll just look up Adam's calendar and see when he's free.
                    </dt>
                    <dd>
                        Good Example</dd></dl>        
            </li>
            
            
			<li>	
			<h2><a name="HandleEmployee"></a>
			    Do you handle the start of a new work experience employee properly?</h2>
                <br />
                <p>There are a few things that should be done before a new work experience employee starts at SSW.</p> 
                <ol>
                    <li>Advise the Networking team so they can have a laptop ready if the employee doesn't have their own</li>
                    <li>Send an email to everyone (in our case SSWSydneyAll) to let them know someone new is starting so they can introduce themselves when they see them.</li>
                </ol>
                               
            </li>
            <li>
                <a name="RecurringTask"></a> <h2>Do you know the recurring task you have and do you do them on time?</h2>
                <p>
                    Recurring tasks are the tasks that have been allocated to you to be done on a periodical basis. 
                    You may not have a specific task email in your inbox telling you to do this. 
                    However, these kinds of tasks are normally very important as they keep our system running. 
                    For example: We have Network Health report send to tell our Network Administrators that 
                    everything in our network is running ok, so it will be the network administrator's responsibility 
                    to check these reports daily to make sure all issues are fixed or escalated. 
                </p>
                <p>
                    Check your employee responsibilities and make sure you do all of your recurring tasks on time and efficiently. 
                    If there is any roadblock stopping you, you need to escalate the issue to your manager immediately. 

                </p>
            </li>
            <li>
            <h2><a name="ShareCalendar"></a>
              Do you know the ways to share and see others' calendars?</h2>
              <p>There are 3 ways of sharing and seeing others' calendars.</p>
              <ul>
                <li>Option 1: Shared Outlook Calendars
                  <dl class="image">
                    <dt>
                      <img src="Images/Team_ShareCalendar_Outlook.GIF" alt="Sharing your calendar or seeing others' calendars via Outlook" />
                    </dt>
                    <dd>Figure: In Outlook, click on "Share Calendar" so other people can see when you are busy or free</dd>
                  </dl>
                </li>
                <li>Option 2: Using SharePoint's calendars
                  <dl class="image">
                    <dt><img src="Images/Team_ShareCalendar_SharePoint.GIF" alt="Sync calendar between Outlook and SharePoint" /></dt>
                    <dd>Figure: SharePoint's 2010 Calendar list sees users who have chosen to sync their data. The user in Internet Explorer can see 4 free days</dd>
                  </dl>
                Note: The disadvantage of the SharePoint calendar is every new employee that arrives (or those that leave), must share (or unshared) their calendars in their Outlook client.
                </li>
                <li>Option 3: Using the CRM Service Calendar
                <p>
                    This will only show appointments that have been tracked in CRM, and so is a great way to keep track of important things like leave or client work.
                </p>
                </li>
              </ul>
            </li>
            <li>
            <h2><a name="SetWorkHoursInCalendar"></a>Do you set your work hours in your Calendars?</h2>
            <p>You should always set your working hours in your outlook calendar so others knows when you are working, this will help us to do resource scheduling. 
            This is especially important for people who are not working as full time, e.g. part-time, contractors etc.</p>
            <p>You can find this setting in File | Options | Calendar Options, it looks like below:
              <dl class="image">
               <dt><img src="Images/CalendarOptions.jpg" alt="Choose your working hours" /></dt>
               <dd>Figure: Outlook Calendar options for working hours settings</dd>
               </dl>
            </p>
            <p>
            Once you setup this, you will be able to see grey area in "Scheduling assistant" so you know what's the best time to book that person.
               <dl class="image">
               <dt><img src="Images/SchedulingAssistant.jpg" alt="You can see the working hours in Scheduling Assistant." /></dt>
               <dd>Figure: Working hours will be shown in Scheduling Assistant</dd>
               </dl>
            </p>
            </li>
            <li>
            <h2><a name="ShareCalendarWithAll"></a>Do you share your calendar with everyone? </h2>
            <p>
            Being aware of other member's availability is very important in a team environment. 
            Although you can send appointments to relevant people, the rest of the team doesn't know your 
            status but they may want to book you to attend another important client meeting. 
            </p>
            <p>
            We always follow option 1 in the following rule:  
            <a href="/ssw/Standards/Rules/RulesToBeingSoftwareConsultantsWorkingInATeam.aspx#ShareCalendar">Do you know the ways to share and see others'calendars?</a> 
            to share our calendar with everyone in the company.
            </p>
            <dl class="image">
                <dt>
                    <img src="images/ShareCalendarALL.jpg" alt="Share your calednar with SSWALL" />
                </dt>
                <dd>
                    Figure: Share your Outlook Calendar with the whole team                
                </dd>
            </dl>
            </li>
            <li>
                <h2><a name="FullAccess"></a>Do you allow full access to Calendar Admins?</h2>
                <p>There are occasions that you are not able to access your computer to send sick emails, or you get a call from your client on the way to the office that you have to drive to client site straight away; when such things happen, you need someone else to update your calendar when you call in, so others are aware of your availabilities. </p>
                <p>So always make sure the admin people are able to access your calendar with full permission in order to add/edit/delete appointment for you. </p>
                <p>Note: Beijing Office employees also need to do the same to SSWBeijingAdmin.</p>
                <dl class="image">
                    <dt><img src="images/CalendarPermissions.jpg" alt="Click on Calendar Permissions" /></dt>
                    <dd>Figure: Click on "Calendar Permissions"</dd>
                </dl>
                <dl class="image">
                    <dt><img src="images/CalendarProperties.jpg" alt="Set full access to admins" /></dt>
                    <dd>Figure: Give admins full access to your calendar</dd>
                </dl>
               <p>Once the permission is given, open other people's calendar is as easy as 2 steps:
               </p>
               <ol>
                   <li>Go to the Calendar tab in outlook and click "open a Shared Calendar"
                         <dl class="image">
                        <dt>
                            <img src="images/OpenSharedCalendar.jpg" alt="Open a Shared Calendar" />
                        </dt>
                        <dd>Figure: Opening a shared calendar</dd>
                        </dl>
                   </li>
                   <li>Choose the calendar you want to open in the pop up form:
                       <dl class="image">
                        <dt>
                            <img src="images/SharedCalendar.jpg" alt="Choose the calendar you want to open" />
                        </dt>
                        <dd>Figure: Find the calendar you want</dd>
                        </dl>
                        Then you can have this shared calendar shown in your Outlook.
                   </li>
               </ol>
                
            </li>

            <li>
            <h2><a name="InviteSSWAbsence"></a>Do you invite the calendar SSWAbsence when you are out of the office during any of your work hours?</h2>
                <p>
                 People take leave all the time, and it can be frustrating to find out that someone is not in the office after you've already 
                 sent an email to book them for a meeting. <br />
                 You should have a centralized system to check for everyone's availability. 
                </p>
                <p>
                 At SSW, we have the SSWAbsence calendar to track everyone's leave status. 
                 This requires people to send their leave request as an appointment to SSWAbsence. 
                </p>
                <p>
                  Since SSWAbsence is just a calendar, we also send leave requests to SSWAdmin, so the managers are always notified of 
                  what's going on, although normally these managers will delete the notification rather than add it to their own calendar by accepting it.
                </p>
              <dl class="image">
                <dt>
                    <img src="images/FWSSWAbsence.jpg" alt="Forward your leave request also to SSWAbsence" />
                </dt>
                <dd>
                    Figure: Always forward your leave request to "SSWAbsence" and "SSWAdmin" so others know where you are                 
                </dd>
                </dl>
                <dl class="image">
                <dt>
                    <img src="images/saddog.jpg" alt=" Sad Dog" />
                </dt>
                 <dd>Figure: Missing Uly while he is away</dd>
                </dl>
            </li>
            <li>
              <h2><a name="EnoughNotice"></a>Do you give enough notice for annual leave? (aka Flexibility vs Substantial Notice)</h2>
              <p>
               <strong>For employees:</strong><br />
               Tell your managers and co-workers as soon as you know when you will be away. If you're planning to be away for any substantial amount of time (say 3 days or more), make sure you have told everyone who will need to know about 4 weeks in advance whenever possible. Most importantly, ensure that your clients are not left in a difficult position while you are gone.
              </p>
              <dl class="bad">
                    <dt>
                    [Appointment to SSWAbsence and SSWAdmin]<br /
                    FYI (You can delete this since it will be shown on the SSWAbsence calendar)<br /><br />
                    Hi Admin,<br />
                    I'm going to Brazil for 2 weeks on Monday... wish me luck :)
                    </dt>
                <dd>
                      Figure: Bad Example - not enough notice for substantial leave</dd></dl>
                <dl class="good">
                    <dt>
                    [Appointment to SSWAbsence and SSWAdmin]<br />
                    FYI (You can delete this since it will be shown on the SSWAbsence calendar)<br /><br />
                    Hi Admin,<br />
                    I want to book a ticket to go to Brazil for 2 weeks.<br />
                    I'd like to leave in about 4 weeks.<br />
                    Please approve
                    </dt>
                    <dd>Figure: Good Example - appropriate notice given</dd>
                </dl>
                <p>Generally,people who need to know include:</p>
                <ol>  
                  <li>Your managers</li>
                  <li>Your current client</li> 
                  <li>Your close co-workers</li>
                </ol>
                <p>
                <strong>For employers:</strong><br />
                 Give your employees a bit of flexibility for small leave periods (say 1-2 days). As an employer, you should allow these small periods of leave with little to no notice.<br />
                 This will remove the incentive for employees to lie and say they are sick when they need time off with short notice.
                </p>
            </li>
            <li>
            <h2><a name="CalendarShow"></a>Does your calendar always accurately show where you are?</h2>
            <p>The follow steps will help you to setup your calendar to allow us track your current availabilities and improve our team collaboration.</p>
            <p>Step 1: Set your work hours in Outlook<br />
             Read rule: <a href="/ssw/Standards/Rules/RulesToBeingSoftwareConsultantsWorkingInATeam.aspx#SetWorkHoursInCalendar">Do you set your work hours in your Calendars?</a>
            </p>
            <p>
            Step 2: Set your work hours in CRM<br />
            Read rule: <a href="/ssw/standards/rules/rulestobettermicrosoftcrm.aspx#SetWorkHours">Do you set your work hours in CRM / Users? </a>
            </p>
            <p>
            Step 3: Share your outlook calendar with everyone<br />
            Read rule: <a href="/ssw/Standards/Rules/RulesToBeingSoftwareConsultantsWorkingInATeam.aspx#ShareCalendarWithAll">Do you share your calendar with everyone?</a> 
            </p>
            <p>
            Step 4: Allow calendar admins to have full access to your calendar<br />
            Read rule: <a href="/ssw/Standards/Rules/RulesToBeingSoftwareConsultantsWorkingInATeam.aspx#FullAccess">Do you allow full access to Calendar Admins? </a>
            </p>
            <p>
            Step 5: Send your leave appointments to SSWAbsence<br />
            Read rule: <a href="/ssw/Standards/Rules/RulesToBeingSoftwareConsultantsWorkingInATeam.aspx#InviteSSWAbsence">Do you invite the calendar SSW Absence when you are out of the office during any of your work hours?</a>            
            </p>
            </li>

            <li>
              <h2><a name="PreferStuff"></a>Do you tell your boss what work you prefer but understand when you have to do less interesting stuff?</h2>
              <p>Technical staffs often have a very clear idea of what kind of work they want to do. They might want to develop expertise in SharePoint, CRM or SQL Server. They should always keep their boss informed of what kind of work interests them and on which they want to focus. Managers often have many staff to keep in mind and unless you remind them they may well forget and give a hot opportunity to another staff member. </p>
              <p>You should also let your manager know what work you'd prefer NOT to do. This might be older technology, testing or niche areas. Despite the expression of your preferences to avoid particular types of work you should understand that your manager will sometimes unavoidably have to give you tasks in those areas. </p>
               <dl class="image">
                 <dt>
                    <img src="images/PreferStuff.jpg" alt="Tell the boss what work you prefer to do." />
                  </dt>
                  <dd>
                    Figure: Clearly tell your manager what work you prefer to do, but don't scream when you are asked to do other, less interesting work.              
                   </dd>
                </dl>
            </li>
            <li>
              <h2><a name="ZoomIn"></a>Meetings - Do you always zoom in when using a projector?</h2>
              <p>It is a common problem that people will tend to use the default screen resolution when displaying something on a projector for a room full of people to read. This is difficult for people to see because of the distances involved.<br />
                 It is always better to zoom in by holding down the CTRL button and scrolling up on the mouse.</p> 
               <dl class="image">
                 <dt>
                    <img src="/ssw/standards/rules/images/ZoomInEmail.jpg" alt="Zoom in email " />
                  </dt>
                  <dd>
                    Figure: Zoom in email             
                   </dd>
                </dl>
            </li>
            <li>
                <a name="CarUSB"></a>
                <h2>Do you have an USB adaptor in your car?</h2>
                <p>Car manufacturers should get rid of the cigarette lighter, smokers use the usual portable lighters and everyone else uses them as a power source. So instead , why not just give us lots of USB ports to plug in our phone, iPod, camera and all the other gadgets we all seem to carry around these days!<br />
                   In the meantime, buy a 1000mA Car USB Adaptor (there are heaps of places you can buy one, and <a href="/ssw/Redirect/GoogleSearchCar.htm" class="external" target="_blank"> Google Search results</a> will show you heaps of places to start)</p>
                <p>Note: Don't get the old 400mA adaptors (which supply enough power for the majority of USB devices) instead, get a more powerful one for items such as the 5G iPods and new mobile phones.</p>
                <dl class="image">
                    <dt><img src="/ssw/standards/rules/images/car_usb_adaptor.jpg" alt="Car USB Adaptor" /></dt>
                    <dd>Figure: Have an USB adaptor in your car</dd>
                </dl>

            </li>
        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=UM">Ulysses Maclaren</a><br />
    </p>
</asp:Content>
