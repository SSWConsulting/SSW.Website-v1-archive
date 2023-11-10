<%@ Page Language="VB" AutoEventWireup="true" MasterPageFile="~/Masters/Default.master"
    Title="SSW Rules to Successful Projects" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%--<script runat="server">
    'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
    '    Response.Status = "301 Moved Permanently"
    '    Response.AddHeader("Location", "http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/Default.aspx")
    'End Sub
</script>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <!--SSW Code Auditor - Ignore next line-->
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <!--SSW Code Auditor - Ignore next line-->
    <ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" categoryid="10" />
    <!--SSW Code Auditor - Ignore next line-->
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
    <div class="infoBox" style="float: left; width: 60%; min-width: 200px;">
        <h4>
            What is a successful project?</h4>
        <p>
            A successful project for a developer might mean something different compared to
            a project-manager and again quite different for the client.</p>
        <p>
            Since our focus is on the client, a successful project for SSW refers to:<br />
            <b>When a client receives what he's been expecting, on time and for the estimated amount
                of money</b>.</p>
        <p>
            Project managers define this as: <b>On Time, On scope and On budget</b>.</p>
        <p>
            "A successful project is where everyone involved is happy with the final outcome."</p>
        <p>
            Note:The promise of a successful project is something we all at SSW work harder
            to achieve, but working harder is not the answer. Software companies need to work
            smarter before, during, and after development, to ensure that the client gets not
            only what they want, but what they need.</p>
    </div>
    <div class="multimediaBox" style="float: left; width: 20%;">
        <a href="media/RulesToSuccessfulProjects.wmv">Download video</a>
        <p>
            <strong>Duration:</strong> 47 minutes 56 Seconds<br />
            <strong>Size:</strong> 19.2MB
        </p>
    </div>
    <div id="intro" style="clear: both;">
        <p>
            What is it that makes a good software development consultancy? What sets one company
            completely above the other? What makes a project completely successful?
        </p>
        <p>
            There's no doubt custom software development is a challenging industry. According
            to the Standish Group Report, 1999: Nearly 75% of all development projects missed
            their target release date or never ship at all. But what I find so interesting is
            that at least 7 of the 10 most common signs of product development failure are present
            <i>before</i> the design is created or a single line of code is written. (John S.
            Reel 1999).
        </p>
        <p>
            The promise of a successful project is something we all work harder to achieve,
            but working harder is not the answer. Software companies need to work smarter before,
            during, and after development, to ensure that the client gets not only what they
            want, but what they need.
        </p>
        <p>
            There are real gurus in this field like <a href="/ssw/Redirect/homepageJoelOnSoftware.htm"
                target="_blank">Joel Spolsky</a>
            <img src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17" height="11" />,
            <a href="/ssw/Redirect/XP/AmazonExtremeProgramming.htm" target="_blank">Kent Beck
            </a>
            <img src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17" height="11" />,
            <a href="/ssw/Redirect/XP/AmazonPeopleWare.htm" target="_blank">Tom DeMarco and Timothy
                Lister</a>
            <img src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="16" height="11" />.
            We like what they say, but we also reckon they miss a few things as well - everyone
            has their own ideas. These are the rules we run by every day. We believe they can
            help every software developer and team manager to deliver better code and a better
            end product.
        </p>
        <p>
            Do you agree with them all? Are we missing some? Email us your tips, thoughts or
            arguments. <a href="javascript:sendEmail('696E666F407373772E636F6D2E61753F7375626A6563743D52756C657320746F205375636365737366756C2050726F6A65637473')">
                Let us know</a> what you think.
        </p>
    </div>
    <p>
        Note: This page has been moved to SharePoint - <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/Default.aspx">
            Rules to Successful Project</a>.
    </p>
    <div class="TableOfContents">
        <b>Rules to Successful Projects</b>
        <ol>
            <!--SSW Code Auditor - Ignore next line-->
            <li><a href="#Consistency">Do you understand the value of consistency?</a></li>
            <!--SSW Code Auditor - Ignore next line-->
            <li><a href="#Rules">Do you know that Rules are made for the guidance of wise men and
                the obedience of fools?</a></li>
            <!--SSW Code Auditor - Ignore next line-->
            <li><a href="#ManagingExpectations">Do you manage clients expectations?</a></li>
            <li><a href="#ShortLongRelationships">Do you pursue a short or long-term relationship
                with Clients?</a></li>
            <li><a href="#ManageProjects">Management - Is your client clear on how you manage projects?</a></li>
            <!--SSW Code Auditor - Ignore next line-->
            <li><a href="#Deadlines">Management - Do you enforce deadlines, and a status meeting?</a></li>
            <li><a href="#ApprovedReleasePlan">Management - Do you only work from an approved release
                plan?</a></li>
            <li><a href="#ReleaseDebrief">Management - Do you have a Release Debrief?</a></li>
            <li><a href="#BugDefinition">Management - Is your client clear on the definition of
                a bug?</a></li>
            <li><a href="#verbalcontact">Management - Do you maintain verbal contact with your client?</a></li>
            <li><a href="#WhoHasAuthority">Management - Do you know who has authority?</a></li>
            <li><a href="#SpecinBiteSizePieces">Management - Do you spec in bite-sized pieces?</a></li>
            <li><a href="#SpecificationbyMockUp">Do you conduct specification analysis by creating
                mock-ups?</a></li>
            <li><a href="#ProjectPage">Do you give each project a project page (that you refer customers
                to)?</a></li>
            <li><a href="#Research">Do you conduct Market Research via the Web?</a></li>
            <li><a href="#investigate">Searching: Do you know the four important sites for when
                you're stuck?</a></li>
            <li><a href="#Googler">Searching: Do you know how to be a great Googler?</a></li>
            <li><a href="#EnterpriseSearch">Searching: Can you instantly find any file on your computer
                or network?</a></li>
            <li><a href="#FactorInvestigationTime">Management - Do you always inform your client
                how long a task took?</a></li>
            <li><a href="#XP">Management - Do you use XP wisely?</a></li>
            <li><a href="#DailyStandUpScrum">Management - Do you have daily stand-up meetings (Scrums)?</a></li>
            <li><a href="#MorningGoals">Management - Do you send Morning Goals?</a></li>
            <li><a href="#new_version">Do you allow users to check for a new version easily?</a></li>
            <li><a href="#database">Do you keep the best possible bug database?</a></li>
            <li><a href="#log">Do you log every error?</a></li>
            <li><a href="#ProvideDiagnostics">Do you provide your users with Diagnostics?</a></li>
            <li><a href="#FixBugs">Management - Do you fix bugs first?</a></li>
            <li><a href="#Refactor">Do you re-factor?</a></li>
            <li><a href="#zzoldfiles">Do you zz old files?</a></li>
            <li><a href="#ManageRecurringTasks">Do you know the best way of managing recurring tasks?</a></li>
            <li><a href="#ClearQAStandards">Do you always fix it - or at least report it?</a></li>
            <li><a href="#TestPlease">Do you conduct an internal "test please" prior to releasing
                a version to a client?</a> </li>
            <li><a href="#TestPlease4Steps">Do you know the 4 steps to do a "Test Please"?</a></li>
            <li><a href="#RewardforCompletion">Do you Reward your developers for completing a release
                on time and budget?</a></li>
            <li><a href="#KB">Do you have a knowledge base?</a></li>
            <li><a href="#RemoteSupport">Do you know the best way to give the best customer support?</a></li>
            <li><a href="#FixPCUpdates">Do you always install latest updates when you fix someone
                else's PC?</a></li>
            <li><a href="#back-end">Is a back-end structural change going to be a hassle?</a></li>
            <li><a href="#environment">Do you have separate development, testing and production
                environment?</a></li>
            <li><a href="#StandardWatchdog">Is everyone in your team a Standards Watchdog?</a></li>
            <li><a href="#RuleIcon">When you follow a rule do you know to refer to it (including
                the icon)?</a></li>
            <li><a href="#candidates">Do you thoroughly test employment candidates?</a></li>
            <li><a href="#Healthy">Do you have a healthy team?</a></li>
            <li><a href="#MinimiseDistractions">Do you deal with distractions?</a></li>
            <li><a href="#ToolBox">Do you always carry your Tool Box?</a></li>
            <li><a href="#intranet">Do you use an Internet/Intranet for sharing common information
                such as Company Standards?</a></li>
            <li><a href="#intranetstep4">Do you know the best CMS solutions for your Internet/Intranet?</a></li>
            <li><a href="#Email">Do you manage your email?</a></li>
            <li><a href="#Papers">Do you manage your papers?</a></li>
            <li><a href="#TreatFreebiesasCustomers">Do you treat freebies as real customers?</a></li>
            <li><a href="#NoPerformanceWithoutMetrics">Do you avoid reviewing performance without
                metrics?</a></li>
            <li><a href="#RingBell">Do you ring a bell or similar when you secure a big deal or
                make a sale?</a></li>
            <li><a href="#CAPassCheckin">Do you check your code by Code Auditor before check-in?
            </a></li>
            <!--SSW Code Auditor - Ignore next line-->
            <li><a href="#UseSourceControl">Do you know you should always use a source control system?
            </a></li>
            <li><a href="#LegalDocs">Do you know what to look out for when signing legal documents?</a></li>
            <li><a href="#AskClientstoInitialYourWork">Do you ask clients to initial your work?</a></li>
            <li><a href="#PairWork">Do you always try and work in pairs?</a></li>
            <li><a href="#MigrationProcedures">Do you perform migration procedures with an approved
                release plan?</a></li>
            <!--SSW Code Auditor - Ignore next line  word should ignore -->
            <li><a href="#ReferToRules">Do you know you should always refer to rules instead of
                explaining it?</a></li>
        </ol>
    </div>
    <br />
    <div id="mainContent">
        <ol>
            <li><a id="Consistency"></a>
                <h2>
                    Do you understand the value of consistency?</h2>
                <p>
                    <!--SSW Code Auditor - Ignore next line-->
                    If you need to do something more than once, then there should be a standard for
                    it. At the heart of our philosophy on creating rules and standards is the idea of
                    consistency.
                </p>
                <p>
                    Say we are creating a windows forms application. We can expect to:</p>
                <ul>
                    <li><b>Improve productivity - because there are less decisions to make, and you build
                        on existing work.</b>
                        <br />
                        For example, we don't need to discuss the pros and cons of MDI versus SDI because
                        there is <a href="RulesToBetterWindowsForms.aspx#AvoidMDI">already a standard.</a><br />
                        <br />
                    </li>
                    <li><b>Improve quality - because you are following best practices.</b><br />
                        For example, which logging library is better out of <a href="RulesToBetterWindowsForms.aspx#ExceptionManagement">
                            Microsoft Application Block</a> or <a href="RulesToBetterWindowsForms.aspx#Log4Net">
                                Log4NET</a>.<br />
                        <br />
                    </li>
                    <li><b>Improve communications - because people know what to expect.</b>
                        <br />
                        For example, when we complete a task we are clear and educate the customer by including
                        a screenshot, the code and the time taken. We are consistent on whether we call
                        it a bug or a feature because we <a href="#BugDefinition">define what's a bug.</a><br />
                        <br />
                    </li>
                    <li><b>Get straight to the meat of the customer's problem.</b><br />
                        For example, our developers don't need to decide whether to implement baseforms
                        or user controls. They already know because it's covered in <a href="/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx#UserControls">
                            Rules to Better Windows Forms Applications.</a> </li>
                </ul>
                <p>
                    At SSW we create standards for all manner of processes: from coding practices to
                    project proposals and how to lock the office up at night. From the developer's perspective,
                    consistency means that we understand each other's code, and if we don't know something,
                    a standard will often save us asking someone. No more Chinese whispers, and less
                    time wasted. From the customer's perspective, consistency leads to a reliable and
                    repeatable experience.
                </p>
                <p>
                    The following story illustrates these values:</p>
                <div class="greyBox">
                    <p>
                        <b>The Barber </b>(excerpt from "The E Myth" page 105)
                    </p>
                    <p>
                        I went to a barber who, in our first meeting, gave me one of the best haircuts I
                        had ever had. He was a master with the scissors and used them exclusively, never
                        resorting to electric shears as so many others do. Before cutting my hair, he insisted
                        on washing it, explaining that the washing made cutting easier. During the haircut,
                        one of his assistants kept my cup of coffee fresh. In all, the experience was delightful,
                        so I made an appointment to return.
                    </p>
                    <p>
                        When I returned, however, everything had changed. Instead of using the scissors
                        exclusively, he used the shears about 50 percent of the time. He not only didn't
                        wash my hair but never even mentioned it. The assistant did bring me a cup of coffee,
                        but only once, never to return. Nonetheless, the haircut was again excellent.
                    </p>
                    <p>
                        Several weeks later, I returned for a third appointment. This time, the barber did
                        wash my hair, but after cutting it, preliminary to a final trim. This time he again
                        used the scissors exclusively, but, unlike the first two times, no coffee was served,
                        although he did ask if I would like a glass of wine. At first I thought it might
                        be the assistant's day off, but she soon appeared, busily working with the inventory
                        near the front of the shop.
                    </p>
                    <p>
                        As I left, something in me decided not to go back. It certainly wasn't the haircut-he
                        did an excellent job. It wasn't the barber. He was pleasant, affable, seemed to
                        know his business. It was something more essential than that.
                    </p>
                    <p>
                        There was absolutely no consistency to the experience.
                    </p>
                    <p>
                        The expectations created at the first meeting were violated at each subsequent visit.
                        I wasn't sure what to expect. And something in me wanted to be sure. I wanted an
                        experience I could repeat by making the choice to return.
                    </p>
                    <p>
                        The unpredictability said nothing about the barber, other than that he was constantly
                        - and arbitrarily - changing my experience for me. He was in control of my experience,
                        not I. And he demonstrated little sensitivity to the impact of his behaviour on
                        me. He was running the business for him, not for me. And by doing so, he was depriving
                        me of the experience of making a decision to patronize his business for my own reasons,
                        whatever they might have been.
                    </p>
                    <p>
                        It didn't matter what I wanted.
                    </p>
                    <p>
                        It didn't matter that I enjoyed the sound of scissors and somehow equated them with
                        a professional haircut.
                    </p>
                    <p>
                        It didn't matter that I enjoyed being waited on by his assistant.
                    </p>
                    <p>
                        It didn't matter that I enjoyed the experience of having my hair washed before he
                        set to work and that I actually believed it would improve the quality of the haircut.
                    </p>
                    <p>
                        I would have been embarrassed to ask for these things, let alone to give my reasons
                        for wanting them. They were all so totally emotional, so illogical. How could I
                        have explained them, or justified them, without appearing to be a boob?
                    </p>
                    <p>
                        What the barber did was to give me a delightful experience and then take it away.
                    </p>
                    <p>
                        What you do in your model is not nearly as important as doing what you do the same
                        way, each and every time.
                    </p>
                </div>
                <dl>
                    <dd>
                        Figure: The Barber, Excerpt from &quot;The E Myth&quot; p 10</dd></dl>
                <p>
                    Standards don't need to come at the expense of creativity. Following standards means
                    less time doing the administrative stuff and more time for the creative. Of course
                    standards are works in progress, and so we are always on the look out for improvements.
                    <!--SSW Code Auditor - Ignore next line-->
                    That's why standards should be shared with everyone.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/DoYouUnderstandTheValueOfConsistency.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/DoYouUnderstandTheValueOfConsistency.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="Rules"></a>Do you know that Rules are made for the guidance of wise men and
                    the obedience of fools?</h2>
                <p>
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    This means that standards shouldn't be followed blindly and may need improving.<br />
                    Note: With respect to these rules, if you think something can be done better, than
                    we have documented here, please let us know.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/Rules.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/Rules.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="ManagingExpectations"></a>Do you manage clients expectations?</h2>
                <p>
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    Software development can be painful and costly. Hang on, that should say &quot;Software
                    development IS painful and costly.&quot; Well, not always, but it has been observed
                    that in 1999 &quot;75% of all development projects missed their target release date
                    or never ship at all.&quot; Projects often fail because clients think suppliers
                    under-deliver and over-charge. The client and the supplier have different expectations
                    about the goals of the project. This difference of opinion often leads to a projects
                    absolute failure.
                </p>
                <p>
                    <b>Don't give ranges!</b> Let's say a prospect asks me &quot;how much to do this
                    Release?&quot; I could say - &quot;somewhere between $15k - $20k&quot;. I hear 20,
                    the prospect hears 15. I'm pleased we got it done for $25k with a whole bunch of
                    changes, the client is annoyed we didn't get it done in 12. So I never give a range
                    to a client. I tell them that the first Release, along with its spec is likely to
                    take $20k. That's two guys working full time for two weeks.
                </p>
                <p>
                    <b>Be upfront about bugs</b> I don't believe there is such a thing as bugless software.
                    It's important to admit that bugs will happen. Bugs will get through testing, and
                    bugs will cause a headache in production. In a fixed price agreement we cover bugs,
                    because the goal posts are stuck in the ground, but in hourly-rate work, bugs are
                    covered by the client. See <a href="/ssw/Standards/Forms/ConsultingOrderTermsConditions.aspx">
                        what is covered in fixed price contracts</a> for more information in relation
                    to what is and what is not a bug.</p>
                <p>
                    <b>Fixed prices don't solve anything: </b>A big fixed-price contract can also be
                    dangerous in managing expectations because it removes flexibility. If you deliver
                    exactly what the spec says, the client can quite easily be unhappy, because the
                    hundred and one things they thought of during development weren't included. I recommend
                    fixed-prices in Releases of no more than 3 weeks development which helps alleviate
                    this problem. It will often occur that in the middle of a fixed price contract a
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    client will ask you to add extra functionality. You should not do any such items
                    straight away, but turn this request into a task for future development. At SSW
                    we convert the task into an email, then use <a href="/ssw/ExtremeEmails/Default.aspx">
                        SSW eXtreme Emails!</a> to generate a release plan for all the extra items once
                    the fixed price contract has been <i>signed off</i>. It is important that the customer
                    is always clear on what is part of a fixed price contract and what is not, that
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    is why you should always finish a fixed price contract and have it signed off before
                    starting extra work.
                </p>
                <p>
                    <b>Talk dollars at the first meeting:</b> Talking dollars with the client is often
                    something consultants don't like doing after the initial meeting. I've heard of
                    consultants refraining from sending invoices when a project is suffering a few delays,
                    or the client is unhappy with the application state. What makes this consultant
                    think that if the client is unhappy to receive an invoice now, they'll be happy
                    to receive it in two months? We send invoices for time and material projects every
                    week, this way the client is informed of costs every week, and if a hassle arises,
                    it's trapped straight away.</p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/manageexpectations.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ManageExpectations.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="ShortLongRelationships"></a>Do you pursue short or long-term relationships
                    with clients?</h2>
                <p>
                    I have been told that it's good to treat clients the same way you would treat a
                    prospective partner - that is, with lots of TLC.
                </p>
                <p>
                    The first kind of approach is where you try and seal the whole deal in one go: "I
                    think we would work well together, would you like to get married and have two children?"
                </p>
                <p>
                    The usual response is "Get lost you loser."
                </p>
                <p>
                    The second and more appropriate approach is asking something like "Would you like
                    to have coffee together?". You have a greater chance the prospective partner will
                    say "yes"...
                </p>
                <p>
                    Unless you are a great salesperson, who has constant exposure to new clients, then
                    I suggest you use the 2nd approach. Clients are likely to be frightened off with
                    huge quotations, so by segmenting the project into smaller projects it waives some
                    uncertainties.</p>
                <p>
                    For example:</p>
                <div class="greyBox">
                    <p>
                        The initial meeting concludes with us telling the clients that we will prepare a
                        proposal (for free), which will have a series of release plans costing $100K.</p>
                </div>
                <dl class="bad">
                    <dd>
                        <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                        Figure: Any new prospect should not be handled in this way, as it is too big of
                        a figure for a first taste of your work</dd></dl>
                <div class="greyBox">
                    <p>
                        To conclude the initial meeting, we tell the clients there are two options to consider.
                        The next step is the Specification Review, which will take 2 days with 3 developers.
                    </p>
                </div>
                <dl class="good">
                    <dd>
                        Figure: Clients are more likely to appreciate this approach, as they are given the
                        option of proceeding with a small project with prospects of continuing to work with
                        you based on how well the previous project went</dd></dl>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ShortLongRelationships.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ShortLongRelationships.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="ManageProjects"></a>Management - Is your client clear on how you manage projects?</h2>
                <p>
                    Software must help a business become more efficient and build better relationships
                    with their clients. This means that software must also be cost-effective and quick
                    to market. Traditionally, software has been slow to build and difficult to change.
                </p>
                <p>
                    SSW's Rules to Better Project Management, built on eXtreme Programming, allows businesses
                    to address their most important challenges first, and respond quickly to a changing
                    commercial environment. We prefer to work on-site, in close consultation with you
                    and your business users, becoming an integrated part of your team. We believe <a
                        href="RulesToBetterProjectManagement.aspx">these rules deliver functional, value-adding
                        software - faster</a>.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ManageProjects.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ManageProjects.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="Deadlines"></a>Management - Do you enforce deadlines, have a project release
                    plan, a debrief, a mark /10 and a status meeting?</h2>
                <p>
                    Developers love doing things in their own time, investigating interesting things
                    they find on the web and generally they're easily distracted. If they don't have
                    a project plan constantly in front of them they'll never deliver on time!
                    <br />
                    For every project you must have 3 essential things:</p>
                <ol>
                    <li>Every 2 weeks the developer has a meeting with the client to discuss the status
                        of project.<br />
                        If you can't have a meeting, a phone call is fine. </li>
                    <li>A <a href="/ssw/ExtremeEmails/ManageProjects.aspx#StatusUpdate">status update</a>
                        if the release is not yet complete </li>
                    <li>If the release is finished then it will be a release debrief. </li>
                </ol>
                <p>
                    Often when things are going right, the tendency is to let things be. A better idea
                    is to figure out why things are going right, and work out how you can repeat it.<br />
                    For example, if your client calls and says, &quot;We think Dan has shown very professional
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    conduct and has delivered a high-quality solution&quot;, you should look at how
                    the project was run.
                    <br />
                    Was the solution high-quality because your developer followed your coding standards?
                    Was his professional conduct due to lots of customer interaction and polite and
                    clear communication?</p>
                <p>
                    Of course, if in your release debriefing you find that the client is unhappy due
                    to bad conduct, scope creep, or poor quality code, you need to check that your standards
                    are being followed to ensure a positive experience in the next debriefing.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/EnforceDeadlinesHaveAProjectReleasePlanADebriefAMark10AndAStatusMeeting.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/EnforceDeadlinesHaveAProjectReleasePlanADebriefAMark10AndAStatusMeeting.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ApprovedReleasePlan"></a>Management - Do you only work from an approved
                    release plan?</h2>
                <p>
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    Unless you are working under an ad-hoc basis you should always be working from a
                    <a href="/ssw/ExtremeEmails/ManageProjects.aspx#CreateFirstReleasePlan">signed release
                        plan</a>.
                </p>
                <p>
                    At the start of each release put together a release plan which is then sent to the
                    client for approval. Arrange an appointment (subject &quot;Debrief: Project Name&quot;)
                    for your project manager to come in and do a review in 2 weeks. This doesn't set
                    unrealistic schedules, but puts pressure on the developer to have something done
                    by then.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ApprovedReleasePlan.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ApprovedReleasePlan.aspx</a></font>
            </li>
            <li><a name="ReleaseDebrief"></a>
                <h2>
                    Management - Do you have a Release Debrief?</h2>
                <p>
                    At the conclusion of the internal and external "test please", but before deployment,
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    you should meet with the client to discuss the release. The purpose of the meeting
                    is to:
                </p>
                <ul>
                    <li>Compare what we were ask to do</li>
                    <ul>
                        <li>vs What we did</li>
                    </ul>
                    <li>Compare estimates estimated costs for that release</li>
                    <ul>
                        <li>vs actual</li>
                    </ul>
                    <li>Review any additional items</li>
                    <ul>
                        <li>vs items moved to the following release</li>
                    </ul>
                    <li>Monitor any known metrics of the project</li>
                    <ul>
                        <li>Eg. Lines of code</li>
                        <li>Eg. Lines of markup e.g HTML, XAML</li>
                    </ul>
                    <li>What went well</li>
                    <ul>
                        <li>vs what didn't go well</li>
                        <li>Ask for a mark out of 10 for how well the release went</li>
                    </ul>
                    <li>Any other issues to do with time, scope, cost or quality</li>
                    <li>Decide to proceed to deployment</li>
                    <li>Next Releases</li>
                </ul>
                <p>
                    Other Tips:</p>
                <ul>
                    <li>The confirmation email subject should be "Northwind - ProjectName - Release02 Debrief"</li>
                    <li>You can send a release debrief email with <a href="/ssw/ExtremeEmails/ManageProjects.aspx#ReleaseDebrief">
                        eXtreme Emails</a></li>
                    <li>A release debrief should be held even if an external "test please" hasn't been passed.
                    </li>
                    <li>A release debrief should be scheduled for no later than 1 week after the initial
                        estimated completion date. </li>
                </ul>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ReleaseDebrief.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ReleaseDebrief.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="BugDefinition"></a>Management - Is your client clear on the definition of
                    a bug?</h2>
                <p>
                    The answer to this question can make or break contracts. We think that it's such
                    a fundamental issue it has to be captured clearly. This is how we strictly define
                    it:</p>
                <p>
                    A bug is a new reproducible coding error that causes an unexpected defect, fault,
                    flaw, or imperfection in a computer program. If the software does not perform as
                    the developers intended, it is most likely a bug.</p>
                <p>
                    You can tell it is a bug when:</p>
                <ol>
                    <li>It is able to be reproduced</li><li>The application <b>crashes to code </b>(runtime
                        <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                        errors should be handled or avoided). This does not include bugs in third party
                        products (e.g. Blue screen of death, or crashing in a third party data grid that
                        we cannot control)</li><li>The application displays <b>incorrect values</b></li><li>
                            The application is <b>missing specified functionality </b>that was agreed in the
                            Mock-ups or specification
                            <br />
                        </li>
                </ol>
                <p>
                    <b>Examples of what is a Bug:</b></p>
                <p>
                    Examples of what <b>IS</b> included in a fixed price contract (i.e. bugs). These
                    are primarily technical (rather than business logic) errors made by the developer.
                    Technical workarounds because of unforeseen limitations of technology are covered
                    by a fixed price contract.</p>
                <ol>
                    <li>A sum total is negative instead of positive because the developer used the wrong
                        operator (plus instead of minus) to calculate the running balance. <b>(This is a bug
                            because it crashes to code)</b> </li>
                    <li>The application crashes because it doesn't check that a connection is valid before
                        running a stored procedure. <b>(This is a bug because it crashes to code)</b>
                    </li>
                    <li>The output HTML in the application is not correctly formatted, and does not display
                        in the specified browser (e.g. Internet Explorer 5). <b>(This is a bug because it displays
                            incorrect values and crashes to code)</b> </li>
                    <li>The fixed price contract says that the converted VB.NET Windows Forms application
                        has &quot;comparable&quot; or the same functionality as Access. The original application
                        uses Docmd.SendObject (i.e. uses Outlook), which has the brokers &quot;from&quot;
                        address. The converted application uses reporting services (as recommended by the
                        developer). However, this always has the same &quot;from&quot; address - and functionality
                        has been lost. The modifications to use a web service for the &quot;from&quot; address
                        are covered by the fixed contract. <b>(This is a bug because it is missing specified
                            functionality)</b></li>
                    <li>Defaults are in the UI mock-ups, but they are not in the final application <b>(this
                        is a bug because it displays incorrect values)</b>
                        <br />
                    </li>
                </ol>
                <p>
                    <b>Examples of what is NOT a Bug:</b><br />
                </p>
                <ol>
                    <li>Any problem caused by software or an application not written by SSW.</li><li>The
                        customer requirement was not included in the user interfacemock-ups/specifications.</li><li>
                            The client decides that they don't like the look of the current form even though
                            it is the same as shown in the specification and wants the buttons at the bottom
                            of the form instead of at the top.</li><li>The original specification states that the
                                <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                                total price excludes GST, but it really should have included GST. This is a change
                                to the specification, and is not included in the contract.</li></ol>
                <p>
                    <b>Work items in TFS:</b><br />
                </p>
                <p>
                    At SSW, we use TFS as our source control and project tracking system. Using it allows
                    us to create work items such as user stories, bugs, tasks, test cases etc.<br />
                    We only create bugs in TFS for defects, faults, flaws, or imperfections that fulfill
                    our definition of a bug. For everything else we use other work item types.
                </p>
                <dl class="image">
                    <dt>
                        <img alt="Do I create this as a bug, or a task?" src="Images/WorkItemsTFS.jpg" />
                    </dt>
                    <dd>
                        Figure: Do I create this as a bug, or a task?
                    </dd>
                </dl>
                <p>
                    More specifically, when using <a href="/ssw/ExtremeEmails/Default.aspx">SSW eXtreme
                        Emails!</a> during a fixed price contract, any new features or modifications
                    (non-bug items) not in the original Pre-Release plan are additional work and are
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    outside the scope of the contract. Any Incidents which <b>are</b> bugs should be
                    marked as additional items and be completed in the current release if possible.
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    Most importantly, after the Pre-Release plan has been sent, <b>an Incident should NOT
                        be entered as an item (additional or otherwise) in ANY releases if they are not
                        a bug</b>. Instead, move all non-bug items to the zsUnallocated folder for future
                    review after the warranty period for the fixed price contract has passed.</p>
                <p>
                    If you see a bug in an SSW software product, please report the issue following the
                    steps outlined the <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">SSW
                        Bug or Enhancement Reporting Standard</a>.</p>
                <table class="clsSSWTable" cellspacing="2" cellpadding="2">
                    <tr>
                        <td>
                            Note: The above is our definition. Others have different definitions that we do
                            <b>not</b> subscribe to:
                            <ul>
                                <!--<li><a target="_blank" href="/ssw/Redirect/KB/KBQ720494BugNet.htm">http://www.bugnet.com/promo/faq.html#What
                                    is a bug?</a><img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site"
                                        width="17" height="11" />
                                    <br />
                                    <br />
                                </li>-->
                                <li><a target="_blank" href="/ssw/Redirect/KB/KBQ720494JoelOnSoftware.htm">http://www.joelonsoftware.com/articles/fog0000000029.html</a><img
                                    src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17"
                                    height="11" />
                                    <br />
                                    <br />
                                </li>
                            </ul>
                        </td>
                    </tr>
                </table>
                </p>
                <p>
                    <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/BugDefinition.aspx">
                        http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/BugDefinition.aspx</a></font>
            </li>
            <li><a id="verbalcontact"></a>
                <h2>
                    Management - Do you maintain verbal contact with your client?</h2>
                With the convenience and cost-effectiveness of email, it is tempting to resort to
                emails for client contact. We sometimes forget that our clients are people just
                like us who need human interaction to ensure everything is OK. This is why it is
                essential that you maintain verbal contact before, during and after a project. What
                does this mean?
                <ol>
                    <li>Let the client know what to expect in terms of communication, i.e. :
                        <ol>
                            <li>"The first step is, we send you a release plan to approve. Once approved we can
                                begin work"</li><li>"Every morning expect a 'Morning Goals' email with a list of tasks
                                    the developers will be working on that day"</li><li>"Every time a task is done, you
                                        will get an email with information about the task such as time taken, screen shots
                                        and code snippets"</li><li>"If you need to change the priority of a task, just let us
                                            know and we will consider it for inclusion either in this or the next release depending
                                            on its importance"</li></ol>
                    </li>
                    <li>Avoid going more than 3 days without a phone call</li><li>If you are put onto an
                        existing project, it is good practice to call the client and introduce yourself.
                        For example, "Hi, I'm Andrew. I'll be taking over from Mark on your project. Mark
                        has filled me in on the specifics and I'm keen to get involved."</li></ol>
                <p>
                    If you maintain an open channel of verbal communication with your client, it helps
                    to break down communication barriers, lets the client know that you are friendly
                    and involved, and makes them feel comfortable with you and SSW.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/Verbalcontact.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/Verbalcontact.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="WhoHasAuthority"></a>Management - Do you know who has authority?</h2>
                <table width="40%" align="right" cellpadding="5" class="clsSSWTable" id="Table3">
                    <caption align="bottom">
                        Figure: Sample Change Request Confirmation email
                    </caption>
                    <tr>
                        <td>
                            <p>
                                <strong>To:</strong> Angelo;<br />
                                <strong>Cc:</strong> John, Sophie<br />
                                <strong>Subject: </strong>Changes Requested by Sophie</p>
                            <p>
                                As per our conversation, Sophie has requested the following changes to your application:
                                modifying rptContractRenewal to include the &quot;MaidenName&quot; field from the
                                ClientContact Table, and positioning right next to the Surname field.</p>
                            <p>
                                Please let us know ASAP if you don't want this problem fixed.</p>
                            <p>
                                Thanks,
                                <br />
                                John<br />
                                www.ssw.com.au
                            </p>
                        </td>
                    </tr>
                </table>
                <p>
                    Ok, once a project gets going, you can end up dealing with many people on the client
                    side. From the Boss to the Business Decision Maker (we call them the "Company Champion")
                    through to Mary the receptionist (aka "users"), everyone has something to say about
                    the software as it is being developed. However, when you are working on a Time &amp;
                    Materials basis in a rapid development environment with continually changing specs,
                    you have to be certain that the work you are doing is authorized by the person who
                    signs the cheques.</p>
                <p>
                    So, say Alan from Accounts would like the Username and Password authentication to
                    have a "remember me" checkbox for the Accounts module. This sounds reasonable, but
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    it doesn't mean that you should charge right in and start coding.
                </p>
                <p>
                    As an example, this is how we govern this process:
                </p>
                <ul>
                    <li>At the beginning of the project one of the client staff is assigned as Company Champion.
                        This person has full authority from the Business Decision Maker of the client as
                        to what work is IN or OUT. Every new item of work must be authorized by this Company
                        Champion.
                        <br />
                        <br />
                    </li>
                    <li>Whenever someone who ISN'T the Company Champion makes a request for work, the Company
                        Champion must be CC'd. If Mary the receptionist has not done this, the developer
                        sends the email again to himself, and CC's the Company Champion (CC'ing other relevant
                        people - if they may give feedback on the task) to let them know about the request.
                        <br />
                        <br />
                    </li>
                    <li>We make the assumption that the task is good to go, so it is the Company Champion's
                        job to make sure that they reply ASAP if they don't want the problem fixed.</li>
                </ul>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/WhoHasAuthority.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/WhoHasAuthority.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="SpecinBiteSizePieces"></a>Management - Do you spec in bite-sized pieces?</h2>
                <p>
                    The first problem with specs is that nobody writes them. Joel Spolsky <a href="/ssw/Redirect/JoelOnSoftwareSpecs.htm"
                        target="_blank">says</a>
                    <img src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17" height="11" />
                    "Writing specs is like flossing: everyone agrees that it's a good thing, but nobody
                    does it". We know developers like writing code more than specs, but the rule is
                    developers don't code without a spec (including a release plan).
                </p>
                <p>
                    The second problem is that when people do write them, they try and spec the whole
                    project, spending months detailing every Use Case, Business Rule and Process Flow
                    Diagram. The client spends lots of money and sees no real progress, and the requirements
                    change and the process begins again.
                </p>
                <p>
                    For example, if your client wants an application that manages Customers and Customer
                    Projects, get the whole Customer phase up and running before you get Customer Projects
                    running. This way you have two 1 month deadlines, instead of 1 two month deadline.
                </p>
                <p>
                    At SSW we spec in two phases, the first to get an overview of the project, the second,
                    to focus on the detail of first few releases only:
                </p>
                <ul>
                    <li><a href="RulestoBetterProjectManagement.aspx#InitialReleasePlanBallpark">Spec Review,
                        or Initial Release Plan</a></li>
                    <li><a href="RulestoBetterProjectManagement.aspx#DetailedReleasePlan">Detailed Release
                        Plan</a> - this phase is repeated through the project</li>
                </ul>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/SpecinBiteSizePieces.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/SpecinBiteSizePieces.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="SpecificationbyMockUp"></a>Do you conduct specification analysis by creating
                    mock-ups?</h2>
                <p>
                    Complex documentation can waste time. Many user requirements can be best encapsulated
                    in screen mock-ups.
                </p>
                <p>
                    Spend more time on mockups over time on word documents, because they identify basic
                    functionality and minimizing refactoring.
                </p>
                <p>
                    And more amazingly they identify small but important requirements that often lead
                    to more requirements. Eg. a message to a user, where the customer wants the URL
                    to be clickable (meaning the standard MessageBox will not be appropriate..
                </p>
                <p>
                    Here are some hot tips on mock-ups:
                </p>
                <ul>
                    <li>Avoid the thought of a "throw away" prototype. An example of a throw away prototype
                        is when you design screens in Access, but the application will be HTML. So design
                        the screens you and the customer are happy with the technology you will be using,
                        and then use them in the app. </li>
                    <li>It is best to have a designer and developer and customer working together.</li>
                    <li>Get the mock-ups <a href="#AskClientstoInitialYourWork">physically initialed</a>,
                        especially if you are performing a fixed-price contract. Yes paperless is great
                        - but not in this case.</li>
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    <li>Mockups should cost the customer money</li>
                    <li>A tip I picked up from Tom Howe was always add a client's branding into the mockup
                        - it makes a big impression</li>
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    <li>Mock-ups should follow <a href="RulesToBetterInterfaces.aspx">standard interface
                        rules</a></li>
                    <li>Write the related business rules at the bottom of each screen - and turn into unit
                        tests.</li>
                </ul>
                <p>
                    There are five primary types of mock-ups:
                </p>
                <ul>
                    <li>Hand drawn Mockup;</li>
                    <li>Wireframe Mockup;</li>
                    <li>Developer HTML Mockup;</li>
                    <li>Designer HTML Mockup;</li>
                    <li>Designer Photoshop Mockup. (recommended)</li>
                </ul>
                <p>
                    More details on the different types of mockups/prototypes:
                </p>
                <ul>
                    <li>A 'Hand drawn Mockup' - A sketch:<br />
                        <!--SSW Code Auditor - Ignore next line -->
                        Copy from <a href="http://www.sapdesignguild.org/editions/edition7/images/sketch.jpg"
                            target="_blank">A 'Hard drawn Mockup' example</a>
                        <dl class="image">
                            <dt>
                                <img alt="Had drawn Mockup" src="Images/HDMockup.jpg" /></dt>
                            <dd>
                                Figure: Hand drawn mockup example - recommended to do with customer, however doesn't
                                deal with any styling/color issues, so Photoshop Mockups is still needed.</dd>
                        </dl>
                    </li>
                    <li>A 'Wireframe Mockup' - A layout of how controls would look in static form, no interaction
                        in image format. e.g Visio or hand-drawn:<br />
                        <a href="/projects/ml_elaw/scenarios/index.html" target="_blank">An example of Wireframe
                            Mockup</a>
                        <dl class="image">
                            <dt>
                                <img alt="Wireframe Mockup" src="Images/WireframeMockup.jpg" /></dt>
                            <dd>
                                Figure: Wireframe mockup example - not recommended as it completely thrown out.</dd>
                        </dl>
                    </li>
                    <li>A 'Developer HTML Mockup' - These are mockups in a Web/Windows Forms/Access UI with
                        limited functionality:<br />
                        <a href="/Projects/AC_Metalcorp/Default.aspx" target="_blank">An example of an ugly
                            Develop HTML Mockup</a>
                        <dl class="image">
                            <dt>
                                <img alt="Developer HTML Mockup" src="Images/DeveloperHTMLMockup.jpg" /></dt>
                            <dd>
                                Figure: Developer HTML Mockup example - not recommended as it is a bad starting
                                point from a HTML view and refactoring later is harder (if even possible) + this
                                reeks of Bodgy Brothers and doesn't do a very good sales job.</dd>
                        </dl>
                    </li>
                    <li>A 'Designer HTML Mockup' - These are also mockups in a Web/Windows Forms with full
                        CSS Styling and graphic designer enhancements: <a href="/projects/ml_elaw/html/clientpage.html"
                            target="_blank">An example of an pretty Designer HTML Mockup</a>
                        <dl class="image">
                            <dt>
                                <img alt="Designer HTML Mockup" src="Images/HTMLMockup.jpg" /></dt>
                            <dd>
                                Figure: Designer HTML Mockup - not recommend because it is time consuming to make
                                changes (which is what you are doing at the beginning of a project)</dd>
                        </dl>
                    </li>
                    <li>A 'Designer Photoshop Mockup' - These are concept mockups in Photoshop providing
                        a guidance of the final look with full styling.<br />
                        Don't go down the track of giving a customer a few concepts - there becomes too
                        much mixing and matching when they see them.<br />
                        Once the images are approved, then the designers slice them up and turn them into
                        HTML<br />
                        Note: slicing is the exporting of each image:
                        <dl class="image">
                            <dt>
                                <img alt="Designer Photoshop Mockup" src="Images/PSMockup.jpg" /></dt>
                            <dd>
                                Figure: Designer Photoshop Mockup example - recommended as quick to change, when
                                changes happen (especially in early stages of a project)</dd>
                        </dl>
                    </li>
                </ul>
                <%--                    <p>
                        Here's a <a href="/Projects/AC_Metalcorp/Default.aspx">sample series of mock-up screens</a>.
                    </p>--%><%--                <p>
                    SSW offers four types of mock-ups:
                </p>
                    <ul>
                        <li>A wireframe mockup - A layout of how controls would look in static form, no interaction in image format. e.g Visio
                        <dl class="image">
                            <dt><img alt="Wireframe mockup" src="Images/Wireframe.jpg" width="400" height="358" /></dt>
                            <dd>Figure: Wireframe mockup example</dd>
                        </dl>
                        </li>
                        <li>A developer mockup - These are mockups in a Web/Windows Forms/Access UI with limited functionality
                        <dl class="image">			
                            <dt><img alt="Developer Web UI mockup" src="Images/Mockup.jpg" width="400" height="284" /></dt>
                            <dd>Figure: Developer Web UI mockup example</dd>
                        </dl>
                        </li>
                        <li>A designer mockup - These are also mockups in a Web/Windows Forms with full CSS Styling and graphic designer enhancements
                        </li>
                        <li>A designer concept mockup - These are concept mockups in Photoshop providing a guidance of the final look with full styling
                        <dl class="image">			
                            <dt><img alt="Designer Concept mockup" src="Images/Concept.jpg" width="600" height="402" /></dt>
                            <dd>Figure: Developer Web UI mockup example</dd>
                        </dl>
                        </li>
                    </ul>
                    --%><p>
                        <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                        These mock-ups should also have a notes section with the business rules that apply
                        to the page. If there are a lot of rules then it is acceptable to link off to a
                        word document.
                    </p>
                <dl class="goodImage">
                    <dt>
                        <img alt="Good Mockup" src="Images/Mockup_1.jpg" /></dt>
                    <dd>
                        Figure: Good Example - This mockup states the rules that apply to the page</dd>
                </dl>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/SpecificationByMockUp.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/SpecificationByMockUp.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="ProjectPage"></a>Do you give each project a project page (that you refer
                    customers to)?</h2>
                <p>
                    A project page is not a place to introduce the project. <a href="RulestoHappyClients.aspx#ProjectPage">
                        See our rules to happy clients</a></p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ProjectPage.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ProjectPage.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="Research"></a>Do you conduct Market Research via the Web?</h2>
                <p>
                    Why write code when you may not need to write any at all? In every industry Market
                    Research is conducted before a product is developed. Why is IT any different? Doing
                    Market Research focuses the product on the right set of people so you can satisfy
                    their needs. If you can't connect the dots between the work you do and how it helps
                    the customer, consider investing your time elsewhere. Market Research bridges the
                    gap between the techies and the users.</p>
                <p>
                    A great way we get feedback on upcoming projects is by putting <a href="/Projects/Public.aspx">
                        our specs of upcoming projects</a> on the web and inviting user comments - not
                    forgetting to acknowledge their contribution. Often Surfers will tell you what is
                    needed to make the product great instead of just good, or you may be told that there
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    is already a program out there that does the job. You should also spend two days
                    looking for similar products and speaking to users about the features. Since the
                    specs are full of screen captures, this allows us to think of our end-users and
                    increases the likelihood of creating a great product which our users love.</p>
                <p>
                    Who comes first? The Technology or the User? I even wonder about Microsoft, they've
                    built this great .Net technology which works fine in Notepad but now we're waiting
                    for the Visual Studio interface. They are going to shoehorn a user interface and
                    experience onto the framework so the user experience is likely to be a compromise.
                    What great products are designed this way? Do tailors measure their clients after
                    the suit has been sewn together? I'm sure Microsoft spend heaps of time and money
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    discussing the specs amongst themselves, but I believe they should've put the interface/Images
                    on the web so that experienced users could voice their opinion and offer suggestions
                    early in the product cycle. Instead we wait for the beta versions - if you offer
                    a suggestion now, there is no time for it to be implemented as the shipping deadline
                    is too close. The only contribution we can make at this stage is finding bugs!
                </p>
                <p>
                    So balance engineering, business and usability, put your specs on the web, keep
                    them updated with changes, and listen to your users!
                    <br />
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/Research.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/Research.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="investigate"></a>Searching: Know the four important sites for when you're
                    stuck</h2>
                <p>
                    You've come across an error you can't fix. Do you:
                </p>
                <ul>
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    <li>Start coding?</li><li>Start thinking about how you should write the function before
                        <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                        coding?</li><li>Put it off till later?</li><li>How should I know? - I never really analyze
                            these things</li><li>Investigate to see whether someone else has come across the same
                                problem?</li></ul>
                <p>
                    If you think about the problem, you are brighter than the average programmer. In
                    software development it is highly possible that someone else has encountered the
                    same problem you are trying to solve. And if so they may have even made that solution
                    public, even better still, the developer may have compiled their solution in a <a
                        href="/ssw/Standards/DeveloperGeneral/TheBest3rdPartyTools.aspx">very handy 3rd
                        party utility</a> you can download.
                </p>
                <p>
                    This is the way in which we investigate issues:
                </p>
                <ol>
                    <li>stack Overflow <a href="/ssw/Redirect/stackflow.htm" target="_blank">http://www.stackoverflow.com</a></li>
                    <li>Search Engines (<a href="/ssw/Redirect/Web/Google.htm" target="_blank">http://www.google.com</a><img
                        src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17" height="11" />
                        is by far the best but try other search engines as well)</li><li>Microsoft Knowledge
                            Base - <a href="/ssw/Redirect/Microsoft/MicrosoftSupport.htm" target="_blank">http://support.microsoft.com/support</a>
                            (Great for issues/bugs in your programs)</li><li>Newsgroups <a href="/ssw/Redirect/Web/GoogleGroups.htm"
                                target="_blank">http://groups.google.com</a><img src="/ssw/Images/LeaveSite.gif"
                                    alt="Leave Site" width="17" height="11" /></li></ol>
                <p>
                    This applies whenever you are writing specifications or dealing with support issues
                    and Bugs in your programs.
                    <br />
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/Investigate.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/Investigate.aspx</a></font>
            </li>
            <li><a id="Googler"></a>
                <h2>
                    Searching: Do you know how to be a great Googler?</h2>
                The best developers are also extremely good at finding a solution to a problem they
                don't know.
                <p>
                    I am pretty good at Googling. When I can't find something, I ask my friend Scotty
                    on IM. Scott Hanselman is the best Googler I know. He can find anything in 2 minutes...</p>
                <strong>Tips:</strong>
                <ol>
                    <li>Think of a piece of the code that will be in the answer</li><li>Include the company
                        name if possible</li><li>Use the advanced searching functionality</li><li>Use quotation
                            marks when you're searching for an exact string</li><li>Include the technology used
                                if appropriate</li></ol>
                <p>
                    If someone asks you for help searching, always tell them the keywords - that will
                    help them learn to search better.</p>
                <p>
                    For example, take <a href="/ssw/Redirect/smh.htm" target="_blank">www.smh.com.au</a><img
                        src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17" height="11" />,
                    a leading Australian news website. If you search on the key words 'Australia' and
                    'news' you wont find it on the first page, but if you add 'Sydney' (a word from
                    the company name) then you're number 1...
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/Googler.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/Googler.aspx</a></font>
            </li>
            <li>
                <h2>
                    Searching: <a id="EnterpriseSearch"></a>Can you instantly find any file on your
                    computer or network?</h2>
                <p>
                    Often you will want to quickly find a file on your computer or local network. On
                    the web, with the advances in search engines this seems so easy. New enterprise
                    search tools are now making this same feat possible for your desktop. Your tool
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    should index all your local files and emails, and also allow you to search your
                    entire network.</p>
                <p>
                    Using either <a href="../../Redirect/GoogleSearch.htm" target="_blank">Google Desktop
                        Search</a><img src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17" height="11" />
                    or <a href="../../Redirect/MSNSearch.htm" target="_blank">MSN Desktop Search</a><img
                        src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17" height="11" />
                    will allow you to instantly search for a name and find all correspondence with that
                    person. Even if there has been no contact for 6 months, you can resume the discussion
                    as if it were yesterday.<br />
                </p>
                <p>
                    Follow our standard on <a href="../DeveloperInstallationNetworkSetup/DesktopSearch.aspx">
                        setting up Enterprise Search</a></p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/EnterpriseSearch.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/EnterpriseSearch.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="FactorInvestigationTime"></a>Management - Do you always inform your client
                    how long a task took?</h2>
                <p>
                    Put 'Actual Time Taken' into your email. It's all about education and accountability
                    - a customer that understands how long things take is better than one who doesn't.
                </p>
                <p>
                    During the course of a Time and Materials projects, a client will often ask for
                    an estimate on a particular piece of work. Of course we duly go about investigating
                    the work to deliver to the client the required estimate.
                </p>
                <p>
                    Sometimes, due to the nature of the work, the time taken to investigate is completely
                    out of proportion to the time taken to complete the work. As an example, if you
                    are working on a legacy ASP application with loads of spaghetti code, and the client
                    wants a particular bug fixed, it can take 2 hours to locate the bug, and then only
                    15 minutes to fix it. When you report to the client the estimate for 'how long'
                    - ensure you include the 2 hours investigation, not just the time to fix it. Thus,
                    you need to put 'Actual Time Taken: 2:15'</p>
                <table class="clsSSWProductTable" summary="LookOut" style="width: 500" id="Table12">
                    <tr>
                        <td>
                            <p>
                                We have a program called <a href="/ssw/ExtremeEmails/Default.aspx">SSW eXtreme Emails!</a>
                                that allows you to use Email as a task tracking, estimating and reporting tool.
                            </p>
                        </td>
                    </tr>
                </table>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/FactorInvestigationTime.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/FactorInvestigationTime.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="XP"></a>Management - Do you use XP wisely?</h2>
                <table align="right">
                    <tr>
                        <td width="220">
                            <img src="/ssw/Images/Anthrax.gif" width="200" height="258" alt="Figure: You need to check up on your developers every 2 weeks. Then you'll never be fooled!" />
                            <p>
                                <b>Figure: You need to check up on your developers every 2 weeks. Then you'll never
                                    be fooled!</b></p>
                        </td>
                    </tr>
                </table>
                <p>
                    eXtreme Programming is a big concept which we try to use here. I don't adhere to
                    every idea, but there are some very practical rules I follow which improves the
                    way we develop on large projects:</p>
                <ol>
                    <li>Releases - Never set a deadline more than 3 weeks from the previous deadline. Deliverables
                        become a lot easier to manage and meet when they're small. </li>
                    <li>Unit Tests - Write tests before you write code. Unit Tests become a way of life
                        and although they're expensive at the beginning, they pay off during the course
                        of the project. To find out more about Unit Tests see <a href="RulesToBetterUnitTests.aspx">
                            Rules To Better Unit Tests</a> and for unit tests in the GUI of SSW Code Auditor
                        please go to <a href="/ssw/Standards/Rules/RulesToBetterRegularExpressions.aspx#testregex">
                            Rules to Better Code</a></li>
                    <li>Validation Tests - To find out more about Validation Tests see <a href="/ssw/standards/Rules/RulesToBetterWebsitesDevelopment.aspx#ValidateSetup">
                        Rules To Better Website Development</a></li>
                </ol>
                <p>
                    Here are the rules we don't agree with:</p>
                <ol>
                    <li>Metaphors - the client description</li><li>Physical Cards - emails are much better
                        - we use <a href="/ssw/ExtremeEmails/Default.aspx">SSW eXtreme Emails</a></li><li>Pair
                            Programming:
                            <ul>
                                <li>XP says 2 people at one PC - we have two developers on their own PC's sitting next
                                    to each other.</li><li>We fix production code in pairs. 'Too Expensive' some say. Yes
                                        it's pricey, but it's better quality. </li>
                            </ul>
                        </li>
                </ol>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/XP.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/XP.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="DailyStandUpScrum"></a>Management - Do you have daily stand-up meetings (Scrums)?
                </h2>
                <p>
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    A tight project team should have a daily 'scrum' stand-up meeting every morning.
                    It's held standing-up so it's short and to the point. No-one wants to stand around
                    waffling. Three essential questions must be asked:</p>
                <ol>
                    <li>What did you do yesterday?</li>
                    <li>What are you going to do today?</li>
                    <li>Do you have any roadblocks?</li>
                </ol>
                <p>
                    Asking these questions of every project member means no-one can hide and must contribute.
                    Further, if there is a disconnect between what was promised and what was performed,
                    the Project Manager discovers issues quickly, the team becomes aware of progress
                    and members are accountable for the promises they make and break. The team's successes
                    and failures are shared, and anyone who knows the answer to someone else's problem
                    can help with a solution after the meeting.
                </p>
                <p>
                    Another few questions you might be interesting in asking are:
                </p>
                <ol>
                    <li>Who were you working with?</li>
                    <li>How long before the next 'debrief Meeting'?</li>
                    <li>Do you think the client is happy?</li>
                </ol>
                <table align="right">
                    <tr>
                        <td width="200">
                            <img src="Images/NewStandUpImage.jpg" width="200" height="303" alt="Figure: There is no sense in putting a Band-Aid on a patient's scraped knee if there is a big knife in his eye!" />
                            <p>
                                <b>Figure: There is no sense in putting a Band-Aid on a patient's scraped knee if there
                                    is a big knife in his eye!</b></p>
                        </td>
                    </tr>
                </table>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/scrumEmail.gif" alt="Schedule a daily recurring scrum meeting in Outlook" /></dt><dd>Figure:
                            Schedule a daily recurring scrum meeting in Outlook</dd></dl>
                <p>
                    <strong>What happens if people are missing?</strong></p>
                <p>
                    The meeting is held with the remaining people.
                </p>
                <p>
                    If the Project manager is not in the office for the scrum meeting then they must
                    be conference called. If the Project manager cannot be contacted then the "Lead
                    Developer" will conduct the scrum and send a "Scrum done" email to the team on the
                    outcomes of the meeting.
                </p>
                <p>
                    Note: The client is required at the stand up meeting if the project is managed by
                    the client (<a href="RulesToBeingSoftwareConsultantsDealingWithClients.aspx#AdHocManagedWork">ie
                        Ad Hoc work</a>).
                </p>
                <p>
                    <strong>What happens when you run out of tasks? </strong>
                </p>
                <p>
                    The goal is to be productive for 8 hours of the day, so communicate with the rest
                    of the developers and work with them on any other outstanding tasks. If there are
                    no more tasks then an email to the Project manager stating "I have run out of tasks
                    and stopping work on Release X".
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/DailyStandUpScrum.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/DailyStandUpScrum.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="MorningGoals"></a>Management - Do you send Morning Goals?
                </h2>
                <table align="right">
                    <tr>
                        <td>
                            <dl class="goodImage">
                                <dt>
                                    <img src="Images/MorningGoals.jpg" alt="Morning Goals Email" /></dt><dd>Figure: Sample
                                        Morning Goals Email</dd></dl>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
                <p>
                    At SSW we email the tasks we plan to achieve that day (only!) to our client (CCing
                    our manager) within 10 minutes of sitting at the desk, before we make any phone
                    calls or write any emails. This ensures our clients are fully aware of the work
                    taking place - and gives them a chance to change the priorities. It also allows
                    us to get better at estimating what we will achieve in a day. These updates are
                    particularly useful for off-site work and most on-site work - unless a client chooses
                    to manage the project down to the task level, and performs daily status checks.
                    We:
                </p>
                <ul>
                    <li>Forward the previous morning goal from yesterday, striking out completed items</li><li>
                        Comment (in a different colour) and give the reason whether any items were not completed
                    </li>
                    <li>Copy outstanding items to today's morning goals, appending any new information</li><li>
                        If we are working on-site we always send our morning goals from our SSW mail account,
                        not an internal account the client may choose to give us. This enables us to keep
                        a record of the email, and also keeps the branding consistent. If this is not possible,
                        we always CC our SSW account (and then move the emails into your &quot;<a href="RulestoBetterEmail.aspx#SavedItems">Saved
                            Items</a>&quot; when you get back to the office)</li><li>If something more important
                                arises during the day, we note it down on the next days morning goals.</li><li>If a
                                    task is huge (e.g. clean up my email inbox) and we only aim to do a portion of it,
                                    we say so in the morning goals as well.<br />
                                    <dl class="goodImage">
                                        <dt>
                                            <img src="Images/MorningGoalAims.gif" alt="Morning Goal Aims" /></dt><dd>Figure: Morning
                                                Goal Item with a mini goal (140 emails)</dd></dl>
                                    <br />
                                </li>
                </ul>
                <table class="clsSSWProductTable" cellpadding="5">
                    <tr>
                        <td>
                            Note: You can use <a href="/ssw/ExtremeEmails/Default.aspx">SSW eXtreme Emails!</a>
                            to send morning goals automatically.
                        </td>
                    </tr>
                </table>
                <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                Morning goals should be sent to the client, CCing the people you are working with.
                If working internally, the client is your boss or product manager.
                <p>
                    We no longer do this, we now do our daily stand-up meetings (Scrums) because it
                    is more effective with interactions between team members.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/MorningGoals.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/MorningGoals.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="new_version"></a>Do you allow users to check for a new version easily?</h2>
                <p>
                    It is important to give users the ability to check for a new version of the application
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    they are using. And once located it should be easily downloaded and installed. We
                    place:
                </p>
                <ol>
                    <li>A tick or a cross on the main menu</li><li>and a &quot;Check for Updates&quot; option
                        in our Help menu.</li></ol>
                <br />
                Remember:
                <ul>
                    <li>This is mainly for Windows Forms, but you can do the same for new versions of Web
                        Applications - e.g. a knowledge base package or Reporting Services Application.</li><li>
                            You can do a complete check of your PC at the click of a button using <a href="/ssw/Diagnostics/Default.aspx">
                                <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                                SSW Diagnostics</a></li><li>Since this check occurs over the web, you should use <a
                                    href="RulesToBetterWindowsForms.aspx#GuiThreading">threading</a> to avoid slowing
                                    down the forms responsiveness. This is a generic component that is available in
                                    the <a href="/ssw/NETToolkit/Default.aspx">SSW .NET Toolkit</a>.</li><li>If the UI is
                                        a Windows Service, be aware that they don't open up the UI very often. Therefore
                                        you can't rely on this method. In a coming release Diagnostics will ask for your
                                        email and let you know when updates are available for you PC.</li></ul>
                <p>
                    &nbsp;
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/MSN.gif" alt="Check for Updates" /></dt><dd>Figure: BAD UI - a nagging
                            message box that forces the User to click OK</dd></dl>
                <p>
                    &nbsp;
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodUI.gif" alt=" " /></dt><dd>Figure: Show a Tick when the application
                            is up to date</dd></dl>
                <p>
                    &nbsp;
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/BadUI.gif" alt=" " /></dt><dd>Figure: Show a Cross when the application
                            is out of date</dd></dl>
                <p>
                    <br />
                    To keep the consistent look and consistent code, we have implemented our version
                    checker as a user control.<br />
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/VersionStatusControl.gif" alt=" " /></dt><dd>Figure: SSW.Framework.WindowsUI.VersionStatus</dd></dl>
                <p>
                    As it is a user control, we can easily implement this in all our applications. We
                    just need to place the user control on the winform, and have the ProductDownloadID
                    and ProductLatestVersionURL entered with the correct values.<br />
                </p>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/VersionStatusProperties.gif" alt=" " /></dt><dd>Figure:
                            Enter the ProductDownloadID and ProductLatestVersionURL</dd></dl>
                <p>
                    &nbsp;
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/checkforupdates.gif" alt="Check for Updates" /></dt><dd>Figure: Include
                            'Check for Updates' in your applications</dd></dl>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/AllowUsersToCheckNewVersionEasily.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/AllowUsersToCheckNewVersionEasily.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="database"></a>Do you keep the best possible bug database?</h2>
                <p>
                    There are 101 bug databases on the market at the moment and of course many companies
                    make up their own in-house system. Historically these have been Access or VB apps,
                    but the latest fashion is to use Web-based apps. Because you will use it all day
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    long, it should be rich-client. But as your clients will need to report bugs as
                    well, web-access is also important.
                </p>
                <p>
                    <img src="Images/bugs.jpg" alt="Bugs" align="left" width="120" height="90" />
                    This is a common scenario: Your tester/client finds a bug, they sign in to your
                    on-line bug database, and enter the data, they save the error message as a gif and
                    upload the image. As Project Manager, you get notified by email of the bug, you
                    sign in to the application, view the image, review the status, assign a priority,
                    and assign it to a developer. The developer receives the email, logs on and sets
                    about fixing the bug. When completed, he logs back on to the application, enters
                    a completed date, and an email is sent to the tester/client. The tester/client logs
                    on, and is told what to test, reviews the work, enters a checked by date, and the
                    final email is sent to the manager who closes the bug.
                </p>
                <p>
                    Phew! That sounds like a lot of steps which is why most people resort to just sending
                    an email. I believe most people send requests for tasks via email, if this is the
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    case, why should developers have a separate &quot;to-do&quot; list, in the form
                    of a bug-database in which they re-enter data?
                </p>
                <p>
                    Exchange Server and Public Folders (made available on the Internet) are the best
                    solution. The benefits are:
                </p>
                <ul>
                    <li>Developers are working solely from their email which they are familiar with, and
                        don't have to switch applications when working on their &quot;to-do&quot;list</li><li>
                            They don't have to re-enter data</li><li>Managers can see important information like
                                Tasks Completed and Tasks Assigned. The reports are ASPX pages that read from Exchange
                                Server via OLEDB</li><li>Clients can see what developers are working on via a URL to
                                    the Public Folder</li></ul>
                <table class="clsSSWProductTable">
                    <tr>
                        <td>
                            You can use build own solution or use <a href="/ssw/ExtremeEmails/Default.aspx">SSW
                                eXtreme Emails!</a>
                        </td>
                    </tr>
                </table>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/KeepBestPossibleBugDatabase.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/KeepBestPossibleBugDatabase.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="log"></a>Do you log every error?</h2>
                <table>
                    <tr>
                        <td>
                            <dl class="goodImage">
                                <dt>
                                    <img src="Images/imgErrorHandle.gif" alt=" " /></dt><dd>Figure: Log every error!</dd></dl>
                        </td>
                    </tr>
                </table>
                <p>
                    When you walk into a clothes store to exchange a pair of jeans, you expect to be
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    treated with respect. The sales person should talk to you at your level, deal with
                    your issues, and in a polite and fair way handle your problem. Why do Developers
                    think they can treat their users so poorly?
                </p>
                <p>
                    Every error message you put into your products is an opportunity for good service.
                    Users don't want to see &quot;Run-time error. Can't save record with zero length
                    string&quot; The User will receive messages that help them through the situation.
                </p>
                <p>
                    Not to say though that there is any ideal error message - a great error is one that
                    has been eliminated! We believe that every unhandled error is our fault - not a
                    user error. We weren't smart enough to ensure that the user would never encounter
                    this problem. It could be we failed to create the right interface, we wrote sloppy
                    code or that we didn't test well enough.
                </p>
                <p>
                    In the old days we used to store unhandled errors in a local Access db, but in the
                    connected world, to ensure that all unhandled errors are dealt with as quickly as
                    possible, SSW applications now automatically email unhandled errors to our Exchange
                    Server. This is a proactive and polite approach of dealing with unhandled errors.
                    If it's serious we will contact the client to resolve the situation - they get a
                    bit of a surprise and think we have ESP!
                </p>
                <p>
                    Remember what it is like to have good service in a restaurant. A good waiter knows
                    when to interrupt you, when to leave you alone and how to do it all in a courteous
                    and respectful way.
                </p>
                <p>
                    At SSW all errors are caught and emailed to support@s*w.com.au. (Note: Please change
                    "*" in "s*w" to a "s") They then go into a public folder 'Support' where a web service
                    logs the error into a database.</p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/DoYouLogEveryError.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/DoYouLogEveryError.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="ProvideDiagnostics"></a>Do you provide your users with Diagnostics (aka refactor
                    tools?)</h2>
                <p>
                    We recommend adding these menus to your Tools Menu:</p>
                <ul>
                    <li>Tools - Validate Schema (with <a href="/ssw/SQLDeploy/Default.aspx">SSW SQL Deploy</a>)</li><li>
                        Tools - <a href="/ssw/Standards/Rules/RulesToBetterInterfaces-WinApp.aspx#ValidateData">
                            Validate Data</a></li><li>Tools - <a href="/ssw/Standards/Rules/rulestobetterwindowsforms.aspx#UnitTests">
                                Run Unit Tests</a> (with NUnit)</li><li>Tools - View Application Errors (with SSW Exception
                                    Logger)</li><li>Tools - Validate PC (with <a href="/ssw/Diagnostics/Default.aspx">SSW
                                        Diagnostics</a>)<br />
                                    </li>
                </ul>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ProvideUsersWithDiagnostics.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ProvideUsersWithDiagnostics.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="FixBugs"></a>Management - Do you fix bugs first?</h2>
                <p>
                    This rule has been important to me for a long time. Fix bugs before adding functionality.
                    There are a number of reasons the most important is that bugs get more expensive
                    as they get older. This is important because, in general, a bug will be more complex
                    to fix the longer you wait to fix it. And it's far better to get the developer who
                    created it to fix it while it's still fresh in their mind.
                </p>
                <p>
                    If there isn't a rule 'Bugs first' then too many developers have a tendency to focus
                    on the new 'interesting' functionality, than fixing that bug they left yesterday...
                </p>
                <p>
                    There are other pressures like the project plan is behind schedule or the client
                    is telling you that they want this feature added, and leave the &quot;bug fixes&quot;
                    in the existing code till later. This is a deadly mistake. At SSW we always fix
                    known bugs first.
                    <br />
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/FixBugsFrst.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/FixBugsFrst.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="Refactor"></a>Do you Re-factor?</h2>
                <p>
                    What about bugs that aren't really &quot;bugs&quot;? An example could be an incorrect
                    naming convention, or a spelling mistake in a folder name. At some point in the
                    future this is going to cause a headache. Developers are going to have to factor
                    in this error meaning errors will be built on errors.
                </p>
                <p>
                    What do you do when you see a directory structure like this:
                </p>
                <ul>
                    <li>SSW/Images</li><li>PDI/Images</li><li>ABC/Image</li></ul>
                <br />
                <ol type="a">
                    <li>Leave it, it is only a little inconsistency after all, and fixing it may cause some
                        bad links and why fix something that isn't broken?</li><li>OR fix the inconsistency
                            straightaway?</li></ol>
                <p>
                    For me the only answer is b). Tackle these problems head on, in line with the fourth
                    principle of eXtreme Programming - courage. Fix the problem now and save it from
                    becoming a bigger problem later.
                </p>
                <p>
                    The best way to keep consistency is to use 'Lint Testing tools'. When you find lint
                    on your jacket, your jacket doesn't stop working, but you fix it anyway because
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    you care about how you look and the impression you give. You should treat your code
                    the same way. The &quot;lint testing&quot; tools I use are <a href="/ssw/CodeAuditor/Default.aspx">
                        Code Auditor</a>, <a href="/ssw/SQLAuditor/Default.aspx">SQL Auditor</a> and
                    <a href="/ssw/LinkAuditor/Default.aspx">Link Auditor</a>.</p>
                <!--
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/Re-factor.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/Re-factor.aspx</a></font>
                    -->
                <!--li>
		<h2><a name="9steps"></a>Do you complete the 9 steps for each release?</li></h2>
		<p>
		<ol>
			<li>Determine the priorities</li>
			<li>Write the Emails (Client Stories) </li>
			<li>Creating a Release Plan </li>
			<li>Reviewing the Release </li>
			<li>Develop and Reply Done </li>
			<li>Find an available developer and send them a 'Test Please' email<ul>
				<li>Get it tested internally </li>
				<li>Get it tested by the customer</li>
			</ul></li>
			<li>Approve the Release (Debrief) </li>
			<li>Complete the Release </li>
			<li>Send the 'Install Please' email </li>
		</ol><br />More info see <a href="/ssw/ExtremeEmails/ManageProjects.aspx">http://www.ssw.com.au/ssw/ExtremeEmails/ManageProjects.aspx</a-->
            </li>
            <li>
                <h2>
                    <a id="zzoldfiles"></a>Do you 'zz' old files?</h2>
                <p>
                    When you are regularly creating new releases of a cool .NET application or simply
                    producing new proposals in Microsoft Word, files will inevitably become outdated.
                    At SSW we are aggressive in killing any unused files. Rather than hit the DELETE
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    key we put a 'zz' at the front of the filename. The old versions should not be deleted
                    straight away - it is just an unnecessary risk!<br />
                    Note: If your solution is under Source Control System, do not zz the file but delete
                    it instead. Let Source Control System manage it.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/checkforupdates.gif" alt="Check for Updates" /></dt><dd>Figure: Include
                            'Check for Updates' in your applications</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/ObseleteOldFilesAggressively.gif" alt="Obsolete old files aggressively" /></dt><dd>Figure:
                            'ZZ' your files rather than deleting them!</dd></dl>
                <p>
                    Note: Other systems are used that are less aggressive than our 'zz' rule.</p>
                <ul>
                    <li>In .NET, the keyword <a target="_blank" href="/ssw/Redirect/Obselete.htm">obselete</a><img
                        border="0" src="/ssw/Images/LeaveSite.gif" alt="Leave site" width="17" height="11" />
                        <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                        is used to mark types and members of types that should no longer be used - these
                        then turn up as a compiler warning.</li><li>In HTML, the keyword <a target="_blank"
                            href="/ssw/Redirect/Deprecated.htm">deprecated</a><img border="0" src="/ssw/Images/LeaveSite.gif"
                                alt="leave site" width="17" height="11" />
                            is used.</li></ul>
                <p>
                    Both allow for some backward compatibility. If you want to pussy foot around then
                    do this, then later 'zz' the files.
                    <br />
                    See our <a href="RulesToBetterSQLServerDatabases.aspx#ZSPrefix">Rules to Better SQL
                        Server Databases - Do you add zs prefix to table name?</a>
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ZZOldFiles.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ZZOldFiles.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="ManageRecurringTasks"></a>Do you know the best way of managing recurring
                    tasks?
                </h2>
                <p>
                    Recurring tasks are tasks that happen on a regular basis, but not necessarily every
                    day (and therefore potentially easy to forget!)They might be personal tasks, such
                    as changing the oil in your prized Datsun 120Y every six months, or booking a holiday
                    for you and your partner a month before your anniversary. They could be work related
                    tasks, such as updating your profile on the Microsoft Gold Partner website (every
                    three months), running financial reports on a monthly basis, or even watering the
                    office plants every week.
                </p>
                <p>
                    Now managing those tasks can be difficult. "Just stick an appointment in Outlook"
                    - yes I've heard and tried that method. Outlook is perfect when you are the one
                    performing the task. But it's nowhere near perfect if you're managing people who
                    are allocated to perform the task. In fact it's a disaster, because when that person
                    leaves, (or just changes job role) that scheduled task/reminder disappears with
                    them.
                </p>
                <p>
                    The other problem with Outlook is if you are an organization that relies upon <a
                        href="/ssw/Standards/Rules/RulesToBetterEmail.aspx#InboxTaskListOnly">email as a
                        to do/task list</a>, Outlook doesn't send an automated email.
                </p>
                <p>
                    After reviewing a few different options, we decided <a href="/SSW/Standards/Rules/UsingGoogleCalendar.aspx">
                        using Google Calendar to manage recurring tasks</a> was the best option.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/BestWayOfManagingRecurringTasks.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/BestWayOfManagingRecurringTasks.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="ClearQAStandards"></a>Do you always fix it - or at least report it?</h2>
                <p>
                    Are your Quality Assurance standards clearly understood? In the course of development
                    and testing, programmers will often encounter bugs or problems. How do you deal
                    with these? You can either:</p>
                <ol>
                    <li>Pretend you didn't see the problem</li><li>Fix it on the spot</li><li>Report it
                        so someone else can fix it</li></ol>
                <p>
                    The best solution is to use a combination or 2 and 3. If it's a small problem (less
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    than 15 mins) you should fix it on the spot. If it will take more time, you should
                    email the issue so someone else can fix it. While this can cause unforeseen delays,
                    it's better to get 2 things done at 100% than get 4 things done at 75%! This way
                    of approaching problems ensures that errors are not forgotten.</p>
                <p>
                    The question is whether you use the 'Tree Approach' to problems or the 'Straight
                    through to Goal approach'. In the Tree Approach, you branch away from your main
                    task and do 2. and 3. when you see a problem. In the Straight to the Goal Approach
                    you do 1. and only work on your primary task. At SSW we try to balance short term
                    productivity with long term improvements to our website products and processes;
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    We use the Tree approach - although as a minimum you should at least report issues
                    that arise.</p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/FixItOrReportIt.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/FixItOrReportIt.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="TestPlease"></a>Do you conduct an internal "test please" prior to releasing
                    a version to a client?
                </h2>
                <div class="greyBox" style="margin: 4px; width: 40%; float: right">
                    <p>
                        <b>Does the Test Please principle apply to more than code?</b>
                    </p>
                    <p>
                        Yes! a test please, aka peer review highlights unseen errors, proposes new ideas
                        for consideration or confirms the existing work as the best solution. A peer review
                        can also effect cultural change amongst your development team as developers become
                        more open to critiques of their work and comfortable with a 'continuous learning'
                        environment. A "Test Please" will also be applied to:
                    </p>
                    <ul>
                        <li>Brief proposals</li>
                        <li>Release plans</li>
                        <li>Estimates</li>
                        <li>Anything else being sent to the customer</li>
                    </ul>
                    </p>
                </div>
                <p>
                    Test, test, test! Testing is the most critical part of any project. Before the delivery
                    of any release the application must pass an internal "test please". Clients quickly
                    become disillusioned if you have delivered a bug-riddled application.
                </p>
                <p>
                    There are a number of different types of tests that you can perform:
                </p>
                <ul>
                    <li>Unit Testing - the smallest testable part of an application that validate the individual
                        units of source code are working properly. Unit tests does not cover the UI layer
                        and there is no industry standard 3rd party tool to perform this task.</li>
                    <li>White Box Testing</li>
                    <li>Black Box Testing</li>
                    <li>Integration Testing</li>
                    <li>User Acceptance Testing (UAT)</li>
                </ul>
                <p>
                    <b>Developer responsibilities</b>
                    <br />
                    <!--SSW Code Auditor - Ignore next line-->
                    <asp:Panel CssClass="interInfoBoxSide" Style="width: 50%;" ID="pnlInfo" runat="server">
                        <h1>
                            Attention: SSW Developers</h1>
                        <ul>
                            <li>Q: Who is our "Tester #1" and our "Tester #2"?<br />
                                A: Our "Tester #1" for Web and Silverlight Applicaitons is Brite Cheng.<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;Our "Tester #1" for Windows and Rich Clients Application
                                is Evan Lin.<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;Our "Tester #2" for Web and Windows both is Lei Xu.<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;Note : Try a work experience person too.(eg. Anit Patel)<br />
                                <br />
                                This is from <a href="/ssw/StandardsInternal/InductionTraining/EmployeeResponsibilities.aspx">
                                    Employee Responsibilities.</a> </li>
                            <li>Q: If you are asked to do a "Test Please" for a Windows App, do you do it on "your
                                PC" or a "Fresh VPC"?<br />
                                <!--SSW Link Auditor ?Ignore begin -->
                                <!-- SSW Code Auditor - Ignore next line-->
                                A: You will use a VPC <a href="file://badger/c$/DataVPCs">\\badger\c$\DataVPCs</a>.<br />
                                <!--SSW Link Auditor ?Ignore end -->
                                <div class="infoBoxBeijing">
                                    <h4>
                                        Beijing Office</h4>
                                    <!--SSW Link Auditor - Ignore begin-->
                                    <!-- SSW Code Auditor - Ignore next line-->
                                    Beijing Office VPC location <a href="file://gerbil/f$/DataVPCs">\\gerbil\f$\DataVPCs</a></div>
                                <!--SSW Link Auditor - Ignore end-->
                            </li>
                            <li>Q: If you are asked to do a "Test Please" for a Web App, do you do it on "your PC"
                                or a "Fresh VPC"?
                                <br />
                                A: Your PC is fine - however you need to know if you test in IE7, IE6 or Firefox.
                            </li>
                            <li>Q: What priority is a 'test please' task?
                                <br />
                                A: Well it is your job to make sure they are testing it as soon as possible (all
                                testing must be started within an hour of the email being sent and takes priority
                                over any other non-billable work). </li>
                        </ul>
                        <!-- SSW Code Auditor - Ignore next line-->
                        After a test is done, please update our <a href="http://mermaid/Products/Lists/Test%20Please%20History/">
                            Test Please History</a> with the result and feedback.
                        <br />
                        <br />
                        <br />
                        <b>Attention: SSW Project Managers</b><br />
                        <br />
                        4 hours of Test Please time will be needed for each release, this allows one 2 hour
                        test please every week.
                        <br />
                    </asp:Panel>
                    <ol>
                        <li>At the end of a release prepare a "Test Please" email. (You can use <a href="/SSW/ExtremeEmails/ManageProjects.aspx#">
                            eXtreme Emails</a> to do this)</li>
                        <li>Have 2 experienced testers to test, the second tester will only test after the first
                            tester has finished testing and given it a pass</li>
                        <li>Specify exactly what is required to be tested. Be specific e.g. run Timesheet report</li>
                        <li><a href="RulestoHappyClients.aspx#TriageAdditionalItemRequests">Triage</a> emails
                            as they come in for completion in this release, or a later release</li>
                        <li>Keep a schedule of testers changing them only on a release by release basis - never
                            change testers within a release</li>
                        <li>Delay the build until the testers have replied DONE. It is possible to proceed with
                            a build even with a test fail if the bugs existed in the previous version and they
                            are being worked on</li>
                        <li>Randomly have the manager do a "Test Please" as well. He gives a pass or fail on
                            the job the testers did. If the testers didn't do a good job, they stay on the schedule
                            and test next time</li>
                        <li>When you receive a "Test Please Succeeded" from both testers (and never before)
                            prepare a "Test Please" for the client. (If you are requested to issue a non-tested
                            release to a client state "Has not passed internal testing" in the email)</li>
                    </ol>
                </p>
                <p>
                    <b>Tester responsibilities</b>
                </p>
                <dl class="image" style="float: right; clear: right; width: 232px;">
                    <dt>
                        <img src="Images/pic16-TestingDoYouWantThemT.gif" alt="Do you want users to have good first impressions?" /></dt>
                    <dd>
                        Figure: Do you want users to have good first impressions?</dd>
                </dl>
                <ol>
                    <li>Confirm you are a tester - If the developer did not name you, make sure he corrects
                        himself and resends the 'test please' email. </li>
                    <li>Ensure you are working on the Standard Operating Environment specific to the client</li>
                    <li>Use <a href="/ssw/Standards/DeveloperGeneral/networkTools.aspx#TeamViewer">Team
                        Viewer</a> if you aren't available locally</li>
                    <li>Test within the hour - testing is typically urgent</li>
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    <li>Know what to test - The areas requiring testing should be specified in the email,
                        test the whole application if not specified</li>
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    <li>Be thorough - anything from a crash-to-code bug to a minor UI change should be reported
                        (one email at a time)</li>
                    <li>Classify issues accordingly to "this release" or "next release" following the <a
                        href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">report bug/enhancement</a>
                        standard so the manager can triage requests correctly. Any crash to code bugs must
                        be fixed in the current release. The project manager may override your prioritisation.</li>
                    <li>"Reply to all" for each bug or feature (to ensure no issue is reported twice)</li>
                    <li>Specify how you replicated the bug through clear instructions and screenshots</li>
                    <li>Use SSW eXtreme Emails to reply to the 'test please' email with "Test Please Succeeded
                        (as no Critical bugs)" or "Test please failed (as per critical bugs reported)"
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/rulest7.gif" alt="" /></dt>
                            <dd>
                                Figure: This is how to reply failed to a "test please" email</dd>
                        </dl>
                    </li>
                </ol>
                <p>
                    <strong>Note 1: </strong>View a sample <a href="/ssw/ExtremeEmails/Reports/TestPleaseReport.htm">
                        Test Please Report</a> that we use for all development. This report gets automatically
                    generated with our tool, <a href="/ssw/ExtremeEmails/Default.aspx">SSW eXtreme Emails!</a>.<br />
                    <strong>Note 2: </strong>As 64bit platform has been quickly adopted, testers should
                    consider to test the application on 64bit platform, these will include Windows Vista
                    x64, Windows Server 2008 x64.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/InternalTestPlease.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/InternalTestPlease.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="TestPlease4Steps"></a>Do you know the 4 steps to do a "Test Please"?</h2>
                <p>
                    The client agrees that prior to a version being submitted to the client, the SSW
                    developers will:
                </p>
                <ul>
                    <li>Perform automated testing with SSW Link Auditor (for Web Apps)</li>
                    <li>Perform automated testing via Unit Tests</li>
                    <li>Perform an internal "Test Please" (aka "Alpha Testing" eg. only that pages or forms
                        load, not checking the business rules)</li>
                    <li>Then send a "Test Please" to the client (aka "Acceptance Testing" to check the business
                        rules)</li>
                </ul>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/TestPleaseFourSteps.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/TestPleaseFourSteps.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="RewardforCompletion"></a>Do you Reward your developers for completing a release
                    on time and budget?</h2>
                <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                <p>
                    When your team has completed a release successfully, they should be rewarded with
                    a morale boosting event!&nbsp; Each team member is provided with a budget of $50
                    for use at a communal event e.g. lunch/dinner/cinema/bowling.&nbsp; The following
                    conditions must be met:<br />
                    &nbsp;</p>
                <ol>
                    <li>Budget - the release must be completed within the budget allocated</li>
                    <li>Scope - no more than 50% cut-out in items (count the work hours removed compared
                        to the original total)</li>
                    <li>Quality - must pass test please and get a mark of 7/10 or above from the client</li>
                    <li>Time - the release cannot be delivered 50% over time e.g. if the planned finish
                        date was 14 days (two weeks) after the start, then the release must be delivered
                        less than 21 days after the start date</li>
                    <li>Release debrief - sent to the client and completed and a review of "Rules to better
                        project management" by the project manager<br />
                    </li>
                </ol>
                <p>
                    &nbsp;</p>
                <table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Index" style="width: 60%;"
                    id="Table2">
                    <tr>
                        <td>
                            <p>
                                <strong>Subject</strong>: &quot;Release completed on budget and customer happy -
                                reward!&quot;
                                <br />
                                &nbsp;<br />
                                New,</p>
                            <ul>
                                <li>Release - on time<ul>
                                    <li>Done.&nbsp; Release was handed over on the deadline.</li>
                                </ul>
                                </li>
                                <li>Release - on budget<ul>
                                    <li>Done. The release was fixed price</li>
                                </ul>
                                </li>
                                <li>Scope - no more than 50% cut-out in items (count the work hours removed compared
                                    to the original total)<br />
                                    <ul>
                                        <li>Done.&nbsp; No items were cut from the release plan</li>
                                    </ul>
                                </li>
                                <li>Quality - must pass test please and get a mark of 7/10 or above from the client<ul>
                                    <li>Test please passed.&nbsp; The client assigned 8/10</li>
                                </ul>
                                </li>
                                <li>Release debrief to the client to be completed<ul>
                                    <li>Release debrief completed.&nbsp; Rules to better project management reviewed.&nbsp;
                                        Greater visibility of progress would be beneficial and remote access to staging
                                        server during development.<br />
                                        &nbsp;</li>
                                </ul>
                                </li>
                            </ul>
                            <p>
                                Our team will be celebrating our success by going for lunch.</p>
                            <p>
                                Developers,</p>
                            <p>
                                Congratulations on completing the project on time!&nbsp; We will celebrate by going
                                for lunch together at Bistro Paris on Friday!&nbsp; We have a budget of $50 per
                                team member!</p>
                            <p>
                                Robin,</p>
                            <p>
                                If you are available it would be great if you could join us.&nbsp; Meet at the SSW
                                office in Neutral Bay at 12:45pm.</p>
                            <p>
                                &nbsp;</p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong><span style="background-color: #ffffff">Figure: Email to accountant/team members
                                and client informing of release success and reward event</span></strong>
                        </td>
                    </tr>
                </table>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/RewardDevelopersForCompletion.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/RewardDevelopersForCompletion.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="KB"></a>Do you have a Knowledge Base (KB)?
                </h2>
                <table border="0" width="100%" id="table_added1">
                    <tr>
                        <td rowspan="2" width="58%" valign="top">
                            Do you know what the most useful thing on Microsoft web site is for me? It is their
                            knowledge base at <a href="/ssw/Redirect/Microsoft/MicrosoftSupport.htm" target="_blank">
                                http://support.microsoft.com/support</a>
                            <img src="/ssw/Images/LeaveSite.gif" alt="Leave site" width="17" height="11" />
                            When I have a problem it is my first port of call - it allows me to help myself.
                            <p>
                                So, if you answer questions on your products to customers, you are wasting time
                                if you don't have a knowledge base. Just think, you might not be answering Harry's
                                question if he could have looked it up himself.
                            </p>
                            <p>
                                Now of course there are many customers who don't look for a KB, but instead you
                                fire off the same old email that you already know is an MDAC related error, and
                                your current solution is to tell them to run SSW Diagnostics and get all the green
                                ticks.
                                <br />
                                <br />
                                The basic rule is don't send back the answer in your email - instead send back the
                                link. More specifically:</p>
                        </td>
                        <td width="40%">
                            <table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Index" align="right"
                                style="width: 100%;" id="Table25">
                                <tr>
                                    <td>
                                        <p>
                                            Dear Harry,</p>
                                        <p>
                                            Thank you for taking the time to report the issue for SSW Code Auditor. I'm happy
                                            to let you know that this is a known issue and has been addressed in our knowledge
                                            base. Please see <a href="/ssw/KB/KB.asp?KBID=Q260000">http://www.ssw.com.au/ssw/KB/KB.asp?KBID=Q260000</a>
                                            for details.</p>
                                        <p>
                                            Kind Regards,<br />
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td rowspan="2" width="1%">
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" height="12" style="padding-bottom: 4px">
                            <dl class="good">
                                <dd>
                                    Figure: Responding to a known issue with a KB article</dd></dl>
                        </td>
                    </tr>
                </table>
                <table border="0" width="100%" id="table1">
                    <tr>
                        <td valign="top" colspan="2" rowspan="10">
                            <ol>
                                <li>If you can answer a support email then reply to the support email (using one of
                                    the 4 templates on the right)
                                    <ul>
                                        <li>TO: the client</li>
                                        <li>CC: the developer and your manager with the KB link</li>
                                    </ul>
                                    <br />
                                </li>
                                <li>If you can&#8217;t answer the question then reply to the support email<br />
                                    <ul>
                                        <li>TO: the client and the developer</li>
                                        <li>CC: your manager</li>
                                        <li>Ask the customer if they can get diagnostics to all green ticks.</li>
                                        <li>Ask the developer to &#8220;Please action?"</li>
                                    </ul>
                                </li>
                            </ol>
                            <br />
                            Notice how by just giving them the URL, this email does the job of encouraging them
                            to use your knowledge base in the future. You need to make sure the support staff
                            <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                            know that there are really only 4 types of emails customers should be receiving
                            (see the 4 grey boxes).
                        </td>
                    </tr>
                    <tr>
                        <td width="40%">
                            <table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Index" align="right"
                                style="width: 100%;" id="Table26">
                                <tr>
                                    <td>
                                        <p>
                                            Dear Harry,</p>
                                        <p>
                                            Thank you for taking the time to report the issue for SSW Code Auditor.</p>
                                        <p>
                                            I am sorry to let you know that I cannot reproduce this.</p>
                                        <p>
                                            Could you please provide me with more details, or even better would I be able to
                                            connect to your PC - it is simple and you can see everything I do. To do so, you
                                            can send me an appointment for an appropriate time or add me to your MSN Messenger,
                                            my address is xxx@s*w.com.au</p>
                                        <p>
                                            P.S. Don't forget to run <a href="http://www.ssw.com.au/diagnostics">SSW Diagnostics</a>,
                                            ensuring that you only get green ticks.</p>
                                        <p>
                                            Kind Regards,
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td rowspan="2" width="1%">
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" height="12" style="padding-bottom: 4px">
                            <dl class="good">
                                <dd>
                                    Figure: Responding when you cannot reproduce the issue</dd></dl>
                        </td>
                    </tr>
                </table>
                <table border="0" width="100%" id="table_added">
                    <tr>
                        <td rowspan="4" width="58%" valign="top">
                            <p>
                                Things are running well when you have support staff adding new KB for:
                            </p>
                            <ul>
                                <li>Known issues</li><li>Hot tips</li><li>Performance tips</li></ul>
                            <p>
                                KBs also play a very important role in getting a product released. You will never
                                get every feature done or bug fixed - we all know it. Focus on getting a version
                                out. It is usually more important to have a version available than having no version
                                at all. When you are looking down the Project Plan, decide on what the MUST HAVES
                                are. The others features and known bugs will have to remain outstanding. All the
                                <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                                longer term bugs should go into the KB. We also put in the feature requests that
                                we plan on doing. This way our customers know of our exciting features coming in
                                future versions of our software.
                            </p>
                            <p>
                                However DON'T write a KB article if fixing the bug and making a new version solves
                                the problem. You'll have to fix the problem anyway, so don't waste time writing
                                a KB, just email the new version. Please see <a href="/ssw/ExtremeEmails/ManageProjects.aspx#Develop">
                                    How to Develop and Reply "Done"</a></p>
                        </td>
                        <td width="40%">
                            <table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Index" align="right"
                                style="width: 100%;" id="Table5">
                                <tr>
                                    <td>
                                        <p>
                                            Dear Harry,</p>
                                        <p>
                                            Done.</p>
                                        <p>
                                            The code changed from<br />
                                            <br />
                                            xxx<br />
                                            to<br />
                                            yyy</p>
                                        <p>
                                            Thanks for reporting this bug - our software gets better with help from every customer
                                            like you.<br />
                                            <br />
                                            This fix will be available in the next version shortly. Stand by, you will be notified.</p>
                                        Kind Regards,
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td rowspan="5" width="1%" valign="top">
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" height="12" style="padding-bottom: 4px">
                            <dl class="good">
                                <dd>
                                    Figure: Informing of a Fix (Email 1 of 2)</dd></dl>
                        </td>
                    </tr>
                    <tr>
                        <td width="40%">
                            <table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Index" align="right"
                                style="width: 100%;" id="Table6">
                                <tr>
                                    <td>
                                        <p>
                                            Dear Harry,</p>
                                        <p>
                                            Thank you for taking the time to report the issue for SSW Code Auditor. I'm happy
                                            to let you know that this problem is fixed in this release.</p>
                                        <p>
                                            Please download the new version at <a href="/ssw/Download/download.aspx">http://www.ssw.com.au/ssw/download</a></p>
                                        <p>
                                            I welcome more feedback it really helps.</p>
                                        <p>
                                            P.S. Don't forget to run SSW Diagnostics and gets all green ticks <a href="/ssw/Diagnostics/Default.aspx">
                                                www.ssw.com.au/diagnostics</a></p>
                                        Kind Regards,
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" height="12" style="padding-bottom: 4px">
                            <dl class="good">
                                <dd>
                                    Figure: Informing of a New Version (Email 2 of 2)</dd></dl>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" valign="top">
                            <p>
                                You don't need to be Microsoft to build a KB. A Knowledge Base does not need to
                                be complicated. We use a simple knowledge base which is located at <a href="/ssw/KB/kb.aspx">
                                    http://www.ssw.com.au/ssw/KB</a><br />
                            </p>
                        </td>
                    </tr>
                </table>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/KB.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/KB.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="RemoteSupport">Do you know the best way to give the best customer support?</a></h2>
                <p>
                    There are a few methods to control a client's machine remotely, all of them have
                    the same functionality, but different usage, and different pros and cons. First,
                    you need to know whether that's a server running server OS (eg: Windows Server 2003),
                    or an end user machine running workstation OS (eg: Windows XP).
                </p>
                <p>
                    For server machines, we recommend using either Windows' built-in Remote Desktop
                    (also knows as "Terminal Services" in Windows 2000) or VNC-based tool. Remote Desktop
                    provides each authenticated user a Windows logon session that is not shared, if
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    your client lives in a place where the time zone is different, Remote Desktop should
                    be your first choice as it doesn't need the client's interaction once Remote Desktop
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    is enabled (typically it should have been enabled for a server for the ease for
                    remote maintenance and monitoring).
                </p>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/RemoteDesktop.gif" alt=" " /></dt><dd>Figure: Enabled Remote
                            Desktop</dd></dl>
                <p>
                    Note: Remote Desktop works for workstation OS too, but it's not recommended as it
                    might leave a security risk on client's machine afterward if client forgets to disable
                    it. Most users don't need Remote Desktop to be enabled. Also, because of the End
                    User License Agreement (EULA), XP only allows 1 user at a time, if you sign in to
                    client's XP machine, the client will be logged off.
                </p>
                <br />
                <p>
                    TeamViewer allows you remote to client almost the same as Remote Desktop. Furthermore,
                    client can see what you do on his PC because you use the same session. Another functionalities
                    will assist your supporting, you can chat with client in TeamViewer and transfer
                    files to client's desktop.
                </p>
                <br />
                <p>
                    For the VNC-based remote tool, one of the main difference of VNC-based remote tool
                    is it shares the same logon session with the user who is currently logged on the
                    machine. The server administrator doesn't need to give us the Windows' username
                    and password nor create a temporary user account for us. And because of both parties
                    will share the same logon session, we see what the clients see, and so do they.
                    Some clients may prefer this as they know what's happening exactly, which is important
                    for a server.
                    <br />
                    The VNC tools we prefer: <a href="/ssw/Redirect/tightvnc.htm" class="newWindow" target="_blank">
                        TightVNC</a> and <a href="/ssw/Redirect/ultravnc.htm" class="newWindow" target="_blank">
                            UltraVNC</a>.
                </p>
                <br />
                <p>
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    For supporting end users' workstation machines remotely, here is the order you should
                    try with the end users:
                </p>
                <ol>
                    <li>Remote Assistance in MSN is what you try first. It will work unless the user is
                        behind a firewall or router.</li>
                    <li>Remote Support in TeamViewer, it&#8217;s so easy and simple and works in most environment.</li>
                    <li>Your second option is to try UltraVNC SC - there is no screwing with firewalls at
                        client side and it is free.</li>
                    <li>The final option is to try Copilot - there is no screwing with firewalls at both
                        sides. Only downside is it is not free.</li>
                </ol>
                <p>
                    See following standards:
                </p>
                <ol>
                    <li>How to use <a href="/ssw/Standards/Support/RemoteSupportViaMSN.aspx" class="newWindow"
                        target="_blank">MSN for Remote Support</a> </li>
                    <li>How to use <a href="/ssw/Standards/Support/RemoteSupportViaTeamViewer.aspx" class="newWindow"
                        target="_blank">TeamViewer for Remote Support</a> </li>
                    <li>How to use <a href="/ssw/Standards/Support/RemoteSupportViaUltraVNC.aspx" class="newWindow"
                        target="_blank">UltraVNC SC for Remote Support</a> </li>
                    <li>How to use <a href="/ssw/Standards/Support/RemoteSupportViaCopilot.aspx" class="newWindow"
                        target="_blank">Copilot for Remote Support</a> </li>
                </ol>
                <p>
                    Here is a sample script you can follow: <a href="/ssw/Standards/Support/RemoteSupportSampleScript.aspx">
                        SSW Remote Support Standard</a>
                </p>
                <p>
                    See useful tools <a href="/ssw/Standards/DeveloperGeneral/networkTools.aspx#TeamViewer">
                        The Best 3rd Party Network Tools - TeamViewer</a>.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/RemoteSupport.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/RemoteSupport.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="FixPCUpdates"></a>Do you always install latest updates when you fix someone
                    else's PC?</h2>
                <p>
                    When you fix someone else's PC (locally or remotely), one of the best practices
                    is always make sure it has the latest updates.<br />
                    <br />
                    To achieve this, we run <a href="/ssw/Redirect/MicrosoftUpdate.htm">Microsoft Updates</a>
                    (<b>not</b> to confuse with Windows Updates) and install all latest updates for
                    all the known Microsoft products.<br />
                    Note: "Windows Update" only updates the operating system, where "Microsoft Update"
                    updates other products as well, such as Microsoft Office, SQL Server, etc.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/MicrosoftUpdateGood.gif" alt="Microsoft Update" /></dt><dd>Figure:
                            Microsoft Update (Good - all updates are installed)</dd></dl>
                <br />
                Next, install <a href="/ssw/Diagnostics">SSW Dianostics</a> and check the latest
                version of other applications are installed.
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/DiagnosticsGood.gif" alt="SSW Diagnostics" /></dt><dd>Figure:
                            SSW Diagnostics (Good - all updates are installed)</dd></dl>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/FixPCUpdates.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/FixPCUpdates.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="back-end"></a>Is a Back-end structural change going to be a hassle?</h2>
                <p>
                    Why don't most programmers plan ahead? Take an average VB or Access application
                    that you sell to a few customers. When the customer wants a new version, there is
                    no problem giving the customer the new mdb or exe. But what if you made a back-end
                    structural <a href="DataSchemaStandard.aspx">changes to your database</a>? Big hassle!
                    You need to compare the database to remind you what was changed. Sure there are
                    utilities for this - for Access backends you can use <a href="/ssw/DataRenovator/Default.aspx">
                        SSW Data Renovator</a> or for SQL Server backends there is <a href="/ssw/Redirect/RedGateSQLDataCompare.htm"
                            target="_blank">Red-gate SQL Compare</a><img src="/ssw/Images/LeaveSite.gif" alt="leave site"
                                width="17" height="11" />
                    - but why go to this trouble.
                </p>
                <p>
                    Take a version control approach. It doesn't have to be too complicated, but you
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    should keep a history of structure changes in a table. Some developers <a href="RulesToBetterSQLServerDatabases.aspx#General">
                        use a text file (.sql)</a> or hardcode it in code, that's fine, just don't make
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    changes in the interface (i.e.. Access or Enterprise Manager). Changes should be
                    made programmatically, or in a method that they can be played back.
                </p>
                <p>
                    An assumption to this is you have a front-end and backend table that is used to
                    record the version number.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/imgTableWithCrossThroughIt.gif" alt="Table with cross through it"
                            width="300" height="252" /></dt><dd>Figure: Never make a change manually in Enterprise
                                Manager or Access</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/SaveChangeScript.gif" alt=" " />
                    </dt>
                    <dd>
                        Figure: Always save your changes in script</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/ChangeScripts.gif" alt=" " />
                    </dt>
                    <dd>
                        Figure: Name them in the order they're executed</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/SampleTable.gif" alt=" " />
                    </dt>
                    <dd>
                        Figure: An example of a backend table recording the version numbers</dd></dl>
                <p>
                    <b>Tip:</b> If you&#8217;re using Next Gen and you&#8217;re changing just one table,
                    then just regenerate for that table</p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Deploy">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/SQLDeploy/Default.aspx">SSW SQL Deploy</a>
                            to solve this problem and automatically make schema changes.
                        </td>
                    </tr>
                </table>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/DoYouStopDealingWithDataAndSchema.aspx">
                    http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/DoYouStopDealingWithDataAndSchema.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="environment"></a>Do you have separate development, testing and production
                    environment?</h2>
                <p>
                    It is important to maintain three separate environments for development, testing
                    and production. Some companies skip the testing server because it can be a hassle
                    to copy new files, register DLLs and deploy backend changes. This will usually result
                    in higher support costs and unhappy users due to simple bugs that could have being
                    found in testing.</p>
                <p>
                    The best solution is to use build scripts (.bat and .vbs files) to automatically
                    create a setup package that can be used to deploy to testing and production environment.
                    For backend changes, you can either include the change scripts with the setup package
                    (if it's localised database), or run those scripts as part of your deployment process.</p>
                <p>
                    Read more about setup packages at <a href="/ssw/Standards/wisesetup/WiseStandards.aspx">
                        SSW's Wise Standard for Products.</a></p>
                <p>
                    <strong>Now make each environment clear.</strong>
                </p>
                <p>
                    Whenever an application has a database, have a visual indicator. I recommend a different
                    background color for each environment
                </p>
                <ul>
                    <li><span class="highlight" style="background-color: #FF0000">Red</span> for the <strong>
                        Development</strong> database, </li>
                    <li><span class="highlight" style="background-color: #ffff00">Yellow</span> for the
                        <strong>Test</strong> database and </li>
                    <li><span class="highlight" style="background-color: #CCCCCC">Grey (no colour)</span>
                        for the <strong>Production</strong> database</li></ul>
                <p>
                    Note: The Yellow might have been Orange (kind of like traffic lights) but the color
                    palette in Word doesn't give Orange.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/WordColorPallete.GIF" alt="colors in Word color pallete" /></dt><dd>Figure:
                            colors in Word color palette</dd></dl>
                <p>
                    This prevents testers from accidentally entering test data into production version.
                </p>
                <p>
                    <strong>Windows Forms Tip:</strong> Implement in the base form in the header
                    <br />
                    <strong>ASP.NET 2.0 Tip:</strong> Implement in the master form in the header</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/dev_test_prod_servers.gif" alt=" " /></dt><dd>Figure: Spice up your
                            environments with different colors</dd></dl>
                <p>
                    An application of this rule is how we identify our CRM servers - see rule <a href="/ssw/Standards/Rules/RulestoBetterMicrosoftCRM.aspx#Environment">
                        Do you identify Development, Test and Production CRM Web Servers by colors?</a></p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/SeparateDevelopmentTestingAndProductionEnvironment.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/SeparateDevelopmentTestingAndProductionEnvironment.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="StandardWatchdog"></a>Is everyone in your team a Standards Watchdog?</h2>
                <p>
                    &quot;An ounce of prevention is worth a pound of cure&quot; goes the saying. Having
                    a strict coding standard is prevention. To create good code you must have good standards,
                    such as commenting standards, naming standards, versioning standards and more.
                </p>
                <table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Index" align="right"
                    style="width: 60%;" id="Table8">
                    <tr>
                        <td>
                            <strong>To:</strong> Peter<br />
                            <strong>CC:</strong> Adam (Manager)<br />
                            <p>
                                Dear Peter<br />
                                <br />
                                While you were away, I came across a page called ApplicationForm.aspx which was
                                giving an error:
                                <br />
                                'The conversion of a char data type to a datetime data type resulted in an out-of-range
                                datetime value.'
                                <br />
                                This happened when I entered '13/06/2002' into a the 'Start Date' field of the form.
                            </p>
                            <p>
                                The error occurs because you are not using the default language of the server which
                                is 'English' - for the users of this database FRDC. This is the same as US English
                                format of Months first, then Days, then a four digit Year (mm/dd/yyyy). Instead,
                                you used 'British English' on the FRDC database which has a format of dd/mm/yyyy.
                                Please use the standard as per <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#MiddleTier">
                                    Rules to Better SQLServer Databases, Rule 1200 (Middle Tier Section)</a>
                            </p>
                            <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                            Please note that whilst inserting data from your Front End application, you should
                            <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                            not use the format dd/mm/yyyy. Instead you should use yyyy/mm/dd
                            <p>
                                Let's fix it together when we get to work tomorrow.<br />
                                <br />
                                Cheers, DDK
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong><span style="background-color: #ffffff">Figure: Make sure you let your client
                                know you find a standards violation</span></strong>
                        </td>
                    </tr>
                </table>
                <p>
                    <br />
                    Every member of a team plays important role in maintaining standards. Whether it's
                    my code or someone else's, I always keep an eye out for mistakes.</p>
                <p>
                    When I come across an error, I never just fix it, as the developer who made it is
                    likely to make it again. I write an email to the person explaining what has been
                    done wrong and how to do the right thing. I CC the manager so they are aware of
                    the situation.
                </p>
                <p>
                    Of course, with everyone doing this in the office, it's not a matter of finger pointing,
                    we all truly work together to write better code.
                </p>
                When you notice someone doing the wrong thing
                <ul>
                    <li>First time just send an email with a pointer to the rule</li><li>Second time, have
                        a very quick chat with them</li><li>Third time call them in and give them a formal talk
                            about it</li></ul>
                <p>
                    If you don't have the confidence to talk to the person, send an email from info.
                    The important thing is to talk about it at the time.&nbsp;</p>
                <p>
                    Clearly, this standard does not just apply to writing better code, it applies to
                    <b>all company standards</b>. Standards are important because they ensure your experience
                    at work is consistent and enjoyable. For example, if there was no standard to stack
                    the dishes in the dishwasher when you were finished using them, dishes would build
                    up and create a big mess in the kitchen!
                </p>
                <p>
                    Equally important is your responsibility to ensure that others are doing their best
                    to maintain and follow the standards.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/StandardsWatchdog.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/StandardsWatchdog.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="RuleIcon"></a>When you follow a rule do you know to refer to it (including
                    the icon)?</h2>
                <dl class="goodImage">
                    <dt>
                        <img src="images/RuleReferrence.GIF" /></dt>
                    <dd>
                        Good Example</dd>
                </dl>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/FollowARuleAndReferToItIncludingIcon.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/FollowARuleAndReferToItIncludingIcon.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="candidates"></a>Do you thoroughly test employment candidates?</h2>
                <p>
                    Do you rely entirely on the claims of Recruitment Agencies when selecting new employees?
                    If you do, it may be a very costly mistake. I have been giving coding tests to new
                    employees for 10 years. A candidate has to prove they can walk the walk before they
                    can join our team.
                </p>
                <p>
                    I give a Project Management test to coders as well. I want my coders to be able
                    to contribute to the working of a project from end to end. They need to be able
                    to communicate with not only sales and marketing staff, but also clients and people
                    that walk off the street! Clients typically think developers (aka computer nerds)
                    come from another planet. Getting Project Managers at the go between is good, but
                    on many jobs it just adds a layer and an unnecessary cost to a job. Recruiting developers
                    that understand the ins and outs of project management means that that developers
                    have less reliance on a Project Manager, they get to speak to customers more (a
                    very good thing) and the customer gets a cheaper solution.
                </p>
                <p>
                    Another thing is that when interviewing you have to go on your instinct a bit. This
                    won't always work, but as Joel says, &quot;a bad candidate will cost a lot of money
                    and effort and waste other people's time fixing all their bugs.&quot; It's best
                    to let a good candidate slip occasionally than let a bad one spoil your coding and
                    client relationships. Joel again: &quot;If you have any doubts whatsoever, No Hire.&quot;</p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/TestEmploymentCandidates.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/TestEmploymentCandidates.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="Healthy"></a>Do you have a healthy team?</h2>
                <p>
                    Developers are notoriously unhealthy people. They don't exercise enough, don't sleep
                    enough and eat the wrong food. An unhealthy developer is not going to be able to
                    concentrate or put in the hard-yards when required, nor are they going to be very
                    happy. In the office I try to look after them as best I can by:</p>
                <ul>
                    <li>Not having chocolate biscuits and instead keeping a bowl of fruit</li><li>Not having
                        coke machines and instead having a purified cold water bottle in the middle of the
                        office</li><li>Encouraging them to do as much exercise as possible - even doing push-ups
                            every day. </li>
                    <li>And instead of dinners for birthdays where you eat and drink all night, every few
                        months we always do something fun for someone's birthday, like indoor climbing,
                        ten-pin bowling or even a bush walk in the Blue Mountains.</li></ul>
                <p>
                    I also conduct a monthly weigh-in, with incentives to look after yourself. I don't
                    encourage my developers to stay up all night investigating new stuff, and I take
                    them away for a two weeks every year to work by the beach and get some fresh air
                    into their system, as well some early morning swims.
                </p>
                <p>
                    I find that encouraging a healthy life-style really helps my team be more productive
                    and have more fun.
                    <br />
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/HealthyTeam.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/HealthyTeam.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="MinimiseDistractions"></a>Do you deal with distractions?</h2>
                <p>
                    Keeping your mind on the job is so important if you're trying to solve a bug and
                    finalising a task to meet this afternoon's deadline. These are a few practical suggestions
                    which are standards in the SSW office to help me keep &quot;in the zone&quot;...
                </p>
                <ol>
                    <li>Program the XP way - programming in pairs means you won't cruise the web or play
                        Solitaire, you'll be forced to focus</li><li>Don't interrupt people unnecessarily when
                            they're working - create comprehensive standards for people to refer to</li><li>Avoid
                                multi-tasking as much as possible, don't open one email, respond to half the questions,
                                and then open another. Complete the first, and delete.</li><li>Set your Browser default
                                    to &quot;About:Blank&quot; so you don't get distracted by msn.com</li><li><a href="/ssw/Standards/Rules/RulesToBetterEmail.aspx#MinimiseOutlookDistractions">
                                        Minimise Outlook distractions</a></li><li><a href="RulestoBetterInstantMessenger.aspx#MinimiseMSNMessengerDistractions">
                                            Minimise MSN Messenger distractions</a><br />
                                        </li>
                </ol>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/DealWithDistractions.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/DealWithDistractions.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="ToolBox"></a>Do you always carry your Tool Box?</h2>
                <table align="right" width="20%" id="Table9">
                    <tr>
                        <td>
                            <img src="Images/StBernardDog.jpg" border="1" alt="Carry the right tools and you'll rescue someone, one day..."
                                width="200" height="162" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Figure: St. Bernards are known for rescuing lost mountaineers, bringing life saving
                                provisions</b>
                        </td>
                    </tr>
                </table>
                <p>
                    Microsoft tools are the most important tools I have. I spend most of my time using
                    Outlook, Visual Studio .NET, SQL Server Enterprise Manager and Access. However Microsoft
                    tools don't do everything I want to do. Rather than spending my time recreating
                    the wheel, I am always on the look out for non-Microsoft options or extensions that
                    will save me time.</p>
                <p>
                    Not only software, carrying your own hardware and peripherals will save you hours
                    one day: network cables, cross-over cables, wireless cards, blank CD's, blank floppy's,
                    software CD's, screw-drivers, even a text book or two. We have one guy in our office
                    who carries two bags, each weighing about 10 kgs. He is the SSW St. Bernard!
                </p>
                <p>
                    A spanner might get a plumber through 90% of jobs, but he'll get stuck on the last
                    10% if he doesn't carry anything else. I carry <a href="/ssw/Standards/DeveloperGeneral/Favourite3rdPartyTools.aspx">
                        these tools</a> in my Tool Box every day. I hope you find them useful.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ToolBox.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ToolBox.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="intranet"></a>Do you use an Internet/Intranet for sharing common information
                    such as Company Standards?</h2>
                <p>
                    Employees need easy access to standards that are used everyday. We maintain standards
                    at SSW for any activity that can be standardized including coding practices, naming
                    conventions, standard form layouts and documents. There are also internal standards
                    like expense and leave procedures.
                </p>
                <p>
                    The first step is to use HTML rather than MS Word documents.
                </p>
                <p>
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    The second step is to think about location. Should it go on a Web site or Intranet?
                    We believe in dividing it up into 2 groups:
                </p>
                <ul type="disc">
                    <li>Public - e.g. /Standards</li><li>Private - e.g. /Standardsinternal</li></ul>
                The benefit with standards on the Web is to get feedback from other developers.
                See our <a href="/ssw/Standards/DeveloperSQLServer/SQLServerStandard_1_ObjectNaming.aspx">
                    SQL Server Naming Standards</a> for an example.
                <p>
                    The third step is to decide on a web page theme so every page is consistent. I am
                    continually surprised at how much time is wasted by managers explaining to web designers
                    the corporate template - so get smart and do one up that <a href="/ssw/Standards/Templates/SSWWebTemplate.aspx">
                        they can follow</a>.</p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/InternetOrIntranetForSharingCommonInformation.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/InternetOrIntranetForSharingCommonInformation.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="intranetstep4"></a>Do you know the best CMS solutions for your Internet/Intranet?</h2>
                <p>
                    The forth step is to decide on the CMS solution. The main choices are:
                </p>
                <ul type="disc">
                    <!--SSW Code Auditor - Ignore next line-->
                    <li><a href="http://www.dotnetnuke.com" class="external" target="_blank">www.DotNetNuke.com</a></li><li>
                        <!--SSW Code Auditor - Ignore next line-->
                        <a href="http://www.microsoft.com/office/preview/servers/sharepointserver/highlights.mspx"
                            class="external">Microsoft SharePoint 2007</a></li><li>www.CommunityServer.org</li><li>
                                Microsoft ASP.NET 2.0 hand coded pages</li></ul>
                <p>
                    There are pros and cons to all and it depends on what functionality/customization
                    you need but we lean towards DotNetNuke and SharePoint for most solutions.
                    <br />
                    See <a href="/SSW/Company/ContentManagement.aspx">DotNetNuke and SharePoint Development
                        - The leading CMS Solutions</a>.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/BestCMSSolutionsForInternetOrIntranet.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/BestCMSSolutionsForInternetOrIntranet.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="Email"></a>Do you manage your email?</h2>
                <p>
                    Having hundreds of emails in your inbox is not uncommon. But it's very uncommon
                    to find people who successfully manage their inbox. Instead they let their inbox
                    become a great black hole with no business value. Email has a bad name in business
                    primarily because people don't treat email correctly. Email can be a vital tool
                    to your company, and your software development project, but it has to be managed.
                    Here's a <a href="RulesToBetterEmail.aspx">series of rules</a> that govern how we
                    use our Inbox.</p>
                <p>
                    We also use <a href="/ssw/ExchangeReporter/Default.aspx">SSW Exchange Reporter</a>.</p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ManageEmail.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ManageEmail.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="Papers"></a>Do you manage your papers?</h2>
                <p>
                    It is common during the course of a project to assemble a pile of papers of notes
                    and other information related to the client you are working with. Some of these
                    will be tasks that relate to the project, some will be general information that
                    does not require any action, and some will have no use. In any case, it's important
                    that you don't lose anything that may be needed later.
                </p>
                <p>
                    At SSW we use the following system for managing papers around the office: All SSW
                    staff are allocated a physical inbox. You must check it daily to ensure that is
                    is kept empty - this is where papers relating to your projects will end up.</p>
                <ol>
                    <li><b>Paper is related to a task:</b>
                        <ul type="disc">
                            <li>Send an email to yourself with 'Note to self' in the subject line, and the task
                                in the body.</li><li>Throw the paper away.<br />
                                </li>
                        </ul>
                    </li>
                    <li><b>Paper has no use:</b>
                        <ul type="disc">
                            <li>Throw the paper away! Examples of this would include your own notes that are no
                                longer relevant.
                                <br />
                            </li>
                        </ul>
                    </li>
                    <li><b>Paper is not a task but needs to be kept anyway:</b><br />
                        <ul type="disc">
                            <li>The SSW filing system is split into 3 categories: current clients, past clients
                                and SSW internal. It is your responsibility to make a new folder if one doesn't
                                exist for your client (filing supplies and the label maker are in the machine room).
                                Write the ClientID and your initials and date in the top right hand corner of the
                                paper. e.g. HOED - CA - 11/11/2000.</li><li>Hopefully any papers you may have will be
                                    related to current clients. Paper in this category include Non Disclosure Agreements,
                                    and Terms and Conditions. File the paper in the clients folder. </li>
                        </ul>
                    </li>
                </ol>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ManagePapers.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ManagePapers.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="TreatFreebiesasCustomers"></a>Do you treat freebies as real customers?</h2>
                <p>
                    In the course of business I often provide some services or products to selected
                    customers free of charge or at a discount rate. Often because you're waiving one
                    rule (the &quot;please pay me&quot; one!) you waive all your normal rules of service.
                    This is a very bad habit for two reasons:
                </p>
                <ol>
                    <li><b>Freebies/discounts need just as strict controls as regular projects</b>
                        <p>
                            When you are giving something away at a discount or for free you are expecting a
                            loss compared with a regular client. If you fail to follow regular processes not
                            only will you incur an even greater loss you provide a lesser standard of service
                            and put greater risk on the success of the project.
                        </p>
                        <p>
                            <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                            A discount or freebie should follow all the standard processes such as:
                            <br />
                            <ul>
                                <li><a href="RulestoSuccessfulSalesAccountManagement.aspx#PrepareInitialMeeting">initial
                                    meetings</a></li>
                                <li><a href="RulestoSuccessfulSalesAccountManagement.aspx#BindingWrittenClientContract">
                                    written contracts</a></li>
                                <li><a href="RulestoBetterProjectManagement.aspx#SpecificationReview">specification
                                    reviews</a></li>
                                <li><a href="RulestoBetterProjectManagement.aspx#DetailedReleasePlan">release plans</a></li>
                                <li><a href="RulestoSuccessfulProjects.aspx#MorningGoals">morning goals</a></li>
                                <li><a href="RulestoHappyClients.aspx#TriageAdditionalItemRequests">triaging additional
                                    items</a></li>
                                <li><a href="RulestoSuccessfulProjects.aspx#ReleaseDebrief">release debriefs</a></li>
                            </ul>
                        </p>
                    </li>
                    <li><b>Feedback on service</b>
                        <p>
                            Often the people you choose to provide a freebie are the best people to provide
                            feedback on your product or services. When you waive all your standard processes,
                            they have no opportunity to review how you conduct your business. So if I'm offering
                            a freebie (or any discount), I ensure every normal standard of business is followed
                            (including sending $0 invoices!) and I ensure I get valuable feedback to help me
                            run SSW better.
                        </p>
                    </li>
                </ol>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/TreatFreebiesAsRealCustomers.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/TreatFreebiesAsRealCustomers.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="NoPerformanceWithoutMetrics"></a>Do you avoid reviewing performance without
                    metrics?</h2>
                <table align="right" id="Table11">
                    <tr>
                        <td>
                            <dl class="goodImage">
                                <dt>
                                    <img src="Images/PerformanceMetrics.gif" alt=" " /></dt><dd>Figure: An example from
                                        SSW LookOut!</dd></dl>
                        </td>
                    </tr>
                </table>
                <p>
                    If a client says &quot;This application is too slow, I don't really want to put
                    up with such poor performance. Please fix.&quot; We don't jump in and look at the
                    code and clean it up and reply with something like &quot;I've looked at the code
                    and cleaned it up - not sure if this is suitable - please tell me if you are OK
                    with the performance now&quot;
                </p>
                <p>
                    Instead we:
                </p>
                <ul>
                    <li>Ask the client to tell us how slow it is (in seconds) and how fast they ideally
                        would like it (in seconds) </li>
                    <li>Add some code to record the time the function takes to run </li>
                    <li>Reproduce the steps and record the time</li><li>Change the code </li>
                    <li>Reproduce the steps and record the time again</li><li>Reply to the customer. &quot;Was
                        12 seconds, is now 8 seconds.&quot;</li></ul>
                <p>
                    This is because performance is an emotional thing, sometimes it just <em>feels</em>
                    slower. Without numbers, a person cannot really know for sure whether something
                    has become quicker.
                </p>
                <p>
                    For sample code on how to measure performance for windows application form, please
                    refer to rule <a href="/ssw/Standards/Rules/RulesToBetterUnitTests.aspx#Performance">
                        Do you have tests for Performance?</a> on Rules To Better Unit Tests.
                    <br />
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/NoPerformanceWithoutMetrics.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/NoPerformanceWithoutMetrics.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="RingBell"></a>Do you ring a bell or similar when you secure a big deal, make
                    a sale or get some great feedback?</h2>
                <p>
                    A great way of motivating your staff is to have some form of recognition in place;
                    happy employees are good employees! One of the simplest ways to achieve this is
                    by having a bell located within the office for employees to ring when they have
                    made a large sale, secured a big deal or some important news to announce. By showing
                    appreciation to your employees you encourage all your staff to perform.</p>
                <p>
                    At SSW whenever a big new project is signed up or we sell an enterprise license
                    for one of our products we send an email to all staff and then ring the bell, which
                    is located in the middle of the office.</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodNewsEmail.gif" alt=" " /></dt><dd>Figure: We send around an email
                            like this and ring the bell when we get good news!</dd></dl>
                <p>
                    Similarly, when we get some feedback we will send around an email, and store the
                    email in a public folder.</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/Feedback.gif" alt=" " /></dt><dd>Figure: Store your feedback in a public
                            folder</dd></dl>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/RingBell.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/RingBell.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="CAPassCheckin"></a>Do you check your code by Code Auditor before check-in?
                </h2>
                <p>
                    SSW Code Auditor is a tool to keep your code healthy.
                    <br />
                    If your project on TFS hasn't been checked by Code Auditor and you don't want to
                    spend time on passing all the rules, you can check your code bit by bit. Make sure
                    every file you check in TFS has passed Code Auditor check. Then you can enforce
                    our standards on the project step by step.
                </p>
                <p>
                    See <a href="RulesToBeingSoftwareConsultantsWorkingInATeam.aspx#CodeAuditor">Do you
                        run SSW Code Auditor?</a>
                    <br />
                    See <a href="/ssw/Standards/Rules/RulesToBetterdotNETProjects.aspx#CAFxCop">Do you Add
                        SSW Code Auditor, NUnit and Microsoft FxCop project files to your Solution?</a>
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/CheckCodeByCodeAuditorBeforeCheckIn.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/CheckCodeByCodeAuditorBeforeCheckIn.aspx</a></font>
            </li>
            <li>
                <h2>
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    <a id="UseSourceControl"></a>Do you know you should always use a source control
                    system?
                </h2>
                <p>
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    You should always use a source control system! SSW uses and recommends Team Foundation
                    Server (TFS). Source control allows the tracking of changes to code. As well as
                    a backup of your source code, this is very useful when debugging and fixing errors
                    to locate changes that have been introduced.
                </p>
                <p>
                    <a href="/ssw/Standards/Rules/RulesToBetterSourceControl.aspx">SSW Rules to Better Source
                        Control</a>
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/UseSourceControlSystem.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/UseSourceControlSystem.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a id="LegalDocs"></a>Do you know what to look out for when signing legal documents?</h2>
                <p>
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    Make sure there are no specific damages mentioned in any legal document. They should
                    always be left to the relevant courts to decide.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/LookOutForSigningLegalDocs.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/LookOutForSigningLegalDocs.aspx</a></font>
            </li>
            <li><a name="AskClientstoInitialYourWork"></a>
                <h2>
                    Do you ask clients to initial your work?
                </h2>
                <dl class="image" style="float: right; clear: right; width: 440px;">
                    <dt>
                        <img src="/SSW/Standards/Rules/Images/SuccessfulProjects_Signature.jpg" alt="A signature can be very valuable but sometimes hard to obtain" /></dt>
                    <dd>
                        Figure: A signature can be very valuable but sometimes hard to obtain</dd>
                </dl>
                <p>
                    A persons signature is extremely valuable. Getting a signature is hardwork. Sales
                    people use all sorts of euphemisms to avoid that confronting request: "if you could
                    just sign here..."
                </p>
                <p>
                    However, requesting a signature (or just an initial) on non-contractual type documents,
                    especially screen-shots or data-schemas, is very beneficial. When you ask a client
                    to 'review this screen mock-up' they will generally take a cursory glance, perhaps
                    make a comment or two and then move on to something else. Asking them to then initial
                    the print-out of the screen mock-up always makes them take a second or third look,
                    ask someone else, or at least spend a few more minutes working out whether it's
                    correct.
                </p>
                <p>
                    Training clients to continually review work carefully leads to more better quality
                    work.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/AskClientsToInitialYourWork.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/AskClientsToInitialYourWork.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="PairWork"></a>Do you always try and work in pairs?
                </h2>
                <dl class="image" style="float: right; clear: both;">
                    <dt>
                        <img src="Images/ProjectManagement_PairProgramming_Luge.jpg" alt="Do you always try to work in pairs?" /></dt>
                    <dd>
                        Figure: Do you always try to work in pairs?</dd>
                </dl>
                <p>
                    There are many good reasons why it's better to work in pairs.
                </p>
                <ul>
                    <li>Less time stuck on a problem - you have someone familiar with the project to help
                        you work through the problem</li>
                    <li>Your code will have less strange workarounds - because if something doesn't add
                        up to a developer, he has someone to ask</li>
                    <li>Cleaner code - because you know someone else is going to be looking at your code</li>
                    <li>Support - when you need changes down the track, you have 2 people to call on</li>
                </ul>
                <p>
                    But I don't promote classical pair programming which is two developers on one machine.
                    At SSW we use our own type. We do put our developers in pairs, but they each have
                    their own computer.
                </p>
                <p>
                    It's also a good idea for non-programmers to work in pairs. You can keep each other
                    motivated, there is always someone to help if you get stuck, and you absorb knowledge
                    from each other. Experience shows that developers are more productive this way.
                </p>
                <p>
                    If you are not sitting next to a person working on the same project, then fix it.
                    If you cannot then at least mention it to your manager.
                </p>
                <p>
                    Is there an Overhead?</p>
                <p>
                    Some projects are done quicker with 2 people - especially when they are complex.
                    But on most projects there is an overhead, because of the extra communication between
                    the developers - you now have to please someone else - not just yourself.
                </p>
                <p>
                    We generally estimate the overhead as 20% extra. But this is more than offset by
                    the cleaner code and better solutions that come from two brains working together.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/PairWork.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/PairWork.aspx</a></font>
            </li>
            <li><a name="MigrationProcedures"></a>
                <h2>
                    Do you perform migration procedures with an approved release plan?</h2>
                <p>
                    A migration from one technology to another is a process fraught with danger. Everyone
                    would love the "upgrade" button to work perfectly but it doesn't. Expect any migration
                    to fail first go. Any statement that "I didn't expect to have any problems" shows
                    inexcuseable ignorance.
                </p>
                <p>
                    A release plan for a migration will typically include:
                </p>
                <ol>
                    <li>Business purpose for migration</li>
                    <li>Test migration</li>
                    <li>User Acceptance Testing of the test migration</li>
                    <li>Rollback procedure</li>
                    <li>Decommissioning procedure</li>
                </ol>
                <p>
                    Approved release plans are mandatory for a migrations such as:
                </p>
                <ul>
                    <li>Exchange Server 2003 to 2007</li>
                    <li>ISA Server to a hardware firewall</li>
                    <li>Phone system to VoIP</li>
                    <li>etc</li>
                </ul>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/PerformMigrationProceduresWithAnApprovedReleasePlan.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/PerformMigrationProceduresWithAnApprovedReleasePlan.aspx</a></font>
            </li>
            <li>
                <h2>
                    <!--SSW Code Auditor - Ignore next line   should-not-will rule -->
                    <a name="ReferToRules"></a>Do you know you should always refer to rules instead
                    of explaining it?</h2>
                <p>
                    When a new programmer on your team needs to get up and running on the SharePoint
                    image you know the right and wrong way to say it</p>
                <div class="greyBox">
                    Sit with John Liu and he will get you up on our SharePoint image
                </div>
                <dl class="bad">
                    <dd>
                        Bad Example: Explain how to run on SharePoint image</dd></dl>
                <div class="greyBox">
                    Get the URL to the standard from our intranet, if the standard is unclear, check
                    your changes with John Liu and then make them
                </div>
                <dl class="good">
                    <dd>
                        Good Example: Refer to SharePoint rules</dd></dl>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ReferToRules.aspx">
                    http://sharepoint.ssw.com.au/Standards/Management/RulesToSuccessfulProjects/Pages/ReferToRules.aspx</a></font>
            </li>
        </ol>
    </div>
</asp:Content>
