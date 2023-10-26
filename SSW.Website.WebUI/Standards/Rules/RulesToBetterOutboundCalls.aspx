<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Outbound Calls" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>
        As you look at the phone and get ready to make the first outbound call on the seemingly
        endless list in front of you, you're filled with doubt, fear and anxiety. As you
        break out in a cold sweat you've just realised why they call it a cold call. But
        the reluctance and fear that you're feeling can be remedied if you do just follow
        a few simple things before you start your outbound efforts.</p>
    <p>
        You control the image that you project to the world. If you are knowledgeable and
        prepared, you will be more confident and convey a positive self-image. Remember
        that prospects can benefit from your expertise and knowledge and that you are calling
        to offer them something useful. Here's some tips and tricks on how to make your
        outbound efforts more fun and successful.</p>
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532304F7574626F756E6425323043616C6C73')">
            Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#PositiveAffirmation">Do you have the right attitude?</a></li>
            <li><a href="#Database">Do you use your database to find your prospects?</a></li>
            <li><a href="#Targeting">Have you targeted the right people?</a></li>
            <li><a href="#OutboundScript">Do you have an outbound script?</a></li>
            <li><a href="#Rehearsal">Have you rehearsed your outbound script?</a></li>
            <li><a href="#Punch">The Call - Is your introduction short and sweet?</a></li>
            <li><a href="#YesLadder">Does your outbound script build a YES ladder?</a></li>
            <li><a href="#OpenEndedQuestions">Do you ask open ended questions?</a></li>
            <li><a href="#Control">Do you maintain control of the call?</a></li>
            <li><a href="#ColdToWarm">Do you change your cold calls into warm calls?</a></li>
            <li><a href="#CallEnough">Do you call enough people?</a></li>
            <li><a href="#Measure">Do you measure the success of your outbound efforts?</a></li>
            <li><a href="#FollowUpEmail">Do you know how to write a follow-up email after an outbound
                call?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="PositiveAffirmation"></a>Do you have the right attitude?
                </h2>
                <p>
                    Don't you hate people that have a negative spin on everything you do? Those people
                    with a negative attitude are exactly the kind of people that we all try to avoid.
                    So why would it be any different to people on&nbsp;the phone? If you're starting
                    your sales efforts with a negative attitude then you're already behind the eight
                    ball. Having a positive attitude makes a huge difference to your approach and the
                    way you come across to your prospects.
                </p>
                <p>
                    Before any SSW sales staff make any telemarketing calls, as a company standard,
                    the sales person is to note down 3 reasons why the people they are calling are going
                    to want to buy from us.</p>
                <p>
                    For example if you're selling SSW Tech Breakfast here are some typical affirmation
                    statements:
                </p>
                <ul>
                    <li>I've read evaluation forms of people that have attended our events and I know that
                        people will benefit significantly from attending</li>
                    <li>I've investigated our competitors and I know we're offering a much better deal</li>
                    <li>Even if it wasn't a good event I'm a great sales person and I can sell ice to Eskimos!</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="Database"></a>Do you use your database to find your prospects?</h2>
                <p>
                    At SSW we don't believe in picking up the white pages and calling everyone in the
                    book to make a sale. We believe in a more focused approach; we query our own SQL
                    Servers for the prospects we're after. We also frown on buying lists because there's
                    nothing worse than buying databases that have already been used and abused by the
                    people before you. If you've got a business then you should always have a database
                    to capture business and client information which can be queried against.</p>
            </li>
            <li>
                <h2>
                    <a name="Targeting"></a>Have you targeted the right people?</h2>
                <p>
                    We all get sales calls from time to time whether we like it or not. The ones I hate
                    most are the ones where the product/service on offer has no interest to me. It goes
                    without saying then that the success of your cold calling will depend on the prospect
                    list you are using. Ensure the people you're calling are likely to be interested
                    in what you have to offer: Don't call pensioners offering them tickets to the next
                    Eminem concert. Spend extra time on targeting your prospect list.
                </p>
                <p>
                    For example when we try to market our training events we take into consideration:</p>
                <ul>
                    <li>Geographic spread: There's no point in calling people in another state for a half-day
                        training event.</li>
                    <li>Position/Title: In most databases you'll probably have information on the prospect's
                        job title. This is often a good reference point as you will know if you are speaking
                        with a decision maker or not. Assume you're a sales professional for Ferrari: you
                        wouldn't make any sales if you were to speak with CEO secretaries rather than speaking
                        with the CEO's directly! </li>
                    <li>Interests: Some databases hold information about&nbsp;their interests or hobbies.
                        This is a great way of building instant rapport with the person as you have a way
                        of relating to that person. Even if you aren't interested in Rugby, for example,
                        the five minutes you spend on the web researching last weekends results and whose
                        been named in the Wallabies for the upcoming test could end up paying dividends,
                        as the person on the other end of the phone will immediately identify with you.</li>
                </ul>
                <p>
                    Using our own SQL Servers we run queries which are able to identify people from
                    our database that:</p>
                <ul>
                    <li>Are developers (positions such as DBAs, web developers, programmers etc) in the
                        IT industry</li>
                    <li>Have registered themselves as interested in a particular topic (through our website
                        or an answer on one of our evaluation surveys)</li>
                    <li>Live in the right geographic area E.g. NSW</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="OutboundScript"></a>Do have an outbound script?</h2>
                <p>
                    An outbound script forms the foundation of all sales. It is important before you
                    start calling your prospects to have an outbound script memorised. Whilst you will
                    know your script verbatim you should find an equal need to be flexible throughout
                    the conversation and adapt the call to suit each person you call.
                </p>
                <p>
                    As a guide your outbound script should have at least these things:</p>
                <ul>
                    <li>Introduction: introducing yourself, your company and why you are calling</li>
                    <li>Questions that immediately identify the decision maker: E.g. Are you a developer?
                        Are you in IT?</li>
                    <li>How you propose to offer them a solution to their problems and what tool/product
                        they will be utilizing to achieve this.</li>
                    <li>General questions you could ask them, ie. Did you happen to catch the Wallabies
                        thrashing of Italy over the weekend?</li>
                    <li>What contact details you need to collect/confirm</li>
                </ul>
                <p>
                    An important point to remember is that you are speaking with another human and people
                    in general thrive on communication with other people. However, as humans we do not
                    like to be bored by someone just plugging another product. So always approach a
                    call like you're talking with one of your mates. Never repeat the script word for
                    word with no interaction like a parrot!</p>
            </li>
            <li>
                <h2>
                    <a name="Rehearsal"></a>Have you rehearsed your Outbound script?</h2>
                <p>
                    Assume for a minute you're a professional athlete and are preparing for an event
                    at some time in the immediate future. You spend the majority of your time practicing
                    and trying to perfect your shot, jump or speed. Only a fraction of your time is
                    actually spent competing. So why should it be any different in business? This same
                    concept should always be adopted to your outbound script as you're only going to
                    be spending a fraction of the time on the phone and you want to get it right on
                    the day.</p>
                <p>
                    Practice on your script should always be with someone else in your company that
                    has more knowledge of the topic than you. This will give you far greater experience
                    by having to answer questions and deal with stronger objections than what you will
                    more than likely get from your actual call. Remember a professional tennis player
                    does not become number 1 in the world by practising against mere amateurs; he practices
                    against the best to be the best! DO THE SAME!!</p>
            </li>
            <li>
                <h2>
                    <a name="Punch"></a>The Call - Is your introduction short and sweet?</h2>
                <p>
                    The first GOLDEN RULE during your calls which applies from the very second you pick
                    up the phone is ABS - ALWAYS BE SMILING! Whilst this may seem ridiculous you would
                    be surprised how your mood will resinate through the phone. The person on the other
                    end of the phone will know what mood you are in so smile and think of something
                    funny (or fake it till you make it), people are always attracted to other people
                    who are happy and smile.</p>
                <p>
                    When you start calling your prospects with your outbound script, the most important
                    thing to perfect is your introduction. Without a solid introduction your outbound
                    telemarketing efforts are pointless and you may as well hang up there. A call is
                    no different than meeting someone for the first time and first impressions are the
                    ones which stay in people's minds.</p>
                <p>
                    By nature most people are often on the defensive when they know it's a sales call
                    and you'll find the first 5 seconds of your conversation is what makes or breaks
                    your outbound efforts. You'll hear millions of reasons why they don't want to speak
                    to you, such as: &quot;I'm busy&quot;, &quot;Not interested&quot; or&nbsp; &quot;I'm
                    having lunch&quot;. Though some of these may be true, at times, more often than
                    not a great introduction will draw the right person into the call rather than them
                    looking for excuses to get off the line or just hanging up.</p>
                <p>
                    Introductions should include a quick personal introduction of yourself, your company
                    and the reason for your call, all done with one breath without pause. It is equally
                    important you don't give your prospect a chance to speak until you're ready to ask
                    an open ended question.</p>
                <dl class="bad">
                    <dt><b>Scott</b>: Hi, this is Scott from SSW how are you today? (pause) I'm calling
                        you to introduce SSW Upsizing PRO! </dt>
                     <dd>
                        Bad Example - An introduction with pause</dd>
                </dl>
                <dl class="good">
                    <dt>
                        <p>
                            <b>Scott</b>: Hi Mr. Smith, this is Scott from SSW calling about some hands-on developer
                            training, is this a convenient time?</p>
                    </dt>
                    <dd>
                        Good Example - An introduction without pause</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="YesLadder"></a>Does your outbound script build a YES ladder?</h2>
                <p>
                    A good way to avoid the nasty dial tone midway through your introduction is to ask
                    them questions which they will answer &quot;YES&quot; to. This is known in marketing
                    as establishing a YES Ladder. The theory is when prospects become so used to saying
                    yes to you, when you eventually close on them to make a sale they have been put
                    in such a positive mind frame and use to answering YES to the sale. Another good
                    benefit of a YES ladder is to provide you with a chance to screen your prospects
                    and identify the dead leads and get feedback.</p>
                <p>
                    So after you've done your introduction here's an example how your conversation should
                    develop. Lets say we're trying to sell some developer training:
                </p>
                <blockquote>
                    <p>
                        <b>Question 1</b>: Jane, have you considered any extra IT training since starting
                        your job? (those that answer no, you're not likely to be targeting)</p>
                    <p>
                        <b>Prospect</b>: Yes</p>
                    <p>
                        <b>Question 2</b>: So you'd be interested in increasing your technical programming
                        skills then?</p>
                    <p>
                        <b>Prospect</b>: Yes</p>
                    <p>
                        <b>Question 3: </b>Great! We're holding unique hands-on developer training sessions
                        which may benefit you greatly. Is this of interest?</p>
                    <p>
                        <b>Prospect:</b> OOH YES!</p>
                    <p>
                        <b>Scott: </b>(I'll have what she's having!) Fantastic! The courses on offer include
                        our <a href="/ssw/Events/SSWTechBreakfast.aspx">SSW Tech Breakfast</a> etc...</p>
                </blockquote>
                <p>
                    After the prospect has said yes to you three times it's going to be hard for them
                    to decline when you ask them if they would like to find out some more information
                    thus making it hard for them to give you an excuse to get off the phone.</p>
            </li>
            <li>
                <h2>
                    <a name="OpenEndedQuestions"></a>Do you ask open ended questions?</h2>
                <p>
                    The goal of any outbound call is to get the person on the other end of the line
                    involved. The way to do this is to employ a knockout combo. If you were a boxer,
                    you'd follow up a jab with a cross hook and an upper cut! (the good ole one-two-three
                    knockout!). If you're a telemarketer you follow the <a href="/ssw/Standards/Rules/RulestoBetterOutboundCalls.aspx#YesLadder">
                        YES ladder</a> up with open ended questions. Here's how most of your combos
                    should sound:</p>
                <p>
                    For your jab and cross hook combo use questions one, two and three (above in previous
                    rule):</p>
                <p>
                    Then your knockout is going to be something like:</p>
                <p>
                    <blockquote>
                        <b>Question 4: </b>
                    So where do you see yourself fitting in with the move towards .NET for the next
                    few years?
                </p>
                </blockquote>
                <p>
                    This question is great because of the following reasons:</p>
                <ul>
                    <li>Stays on the topic.</li>
                    <li>It's likely the prospect has thought about this.</li>
                    <li>The answer is likely to give you some good points to feed off or identify what doesn't
                        interest them.</li>
                    <li>The question can't be answered with a quick yes or no and the prospect must think
                        about how they really feel/think. This increases their involvement and investment
                        into the conversation bringing you a step closer to a sale. </li>
                </ul>
                <p>
                    Here's an example of the kind of question you DON'T want to ask:</p>
                <blockquote>
                    <b>Dud Question: </b>Do you know a lot about .NET?</blockquote>
                <p>
                    This question is a show stopper! It's too easy for prospects to give a one word
                    response. If they say no, then you've effectively dug a really deep hole for yourself
                    and it's tough to recover from this position to close the prospect. If they say
                    yes, then that's not too bad but they're probably sick of hearing you speak and
                    are waiting for something to wake them up. If you give your callers a sniff of how
                    to finish the call quickly then like a lion to its prey, they'll pounce - NO NOT
                    INTERESTED!</p>
            </li>
            <li>
                <h2>
                    <a name="Control"></a>Do you maintain control of the call?</h2>
                <p>
                    Now we've learnt how to jab (YES ladder), then cross hook (open ended question),
                    it's time to learn how to stay focused in the ring. When we talk about maintaining
                    focus, we're really talking about controlling the conversation. When the conversation
                    is getting a bit off track or the prospect is telling you more information than
                    you need to know, the best way to get the conversation back on track is to ask them
                    a question that is related to the topic to which they are likely to answer &quot;Yes&quot;.</p>
                <p>
                    For example, if I'm on the phone trying to sell a training event, and the conversation
                    started sounding like this:
                </p>
                <blockquote>
                    <p>
                        <b>Scott</b>: I think I've got just what you're after for advanced IT training.</p>
                    <p>
                        <b>Prospect</b>: Really? That reminds me of a time when this other sales person
                        who was trying to sell me tickets to crack pot training events held in an abandoned
                        warehouse. He was the rudest person I'd ever spoken to and he had this funny accent...
                        Blah Blah.</p>
                </blockquote>
                <p>
                    When this happens ask a general question that you know they're going to say &quot;Yes&quot;
                    to like this...</p>
                <blockquote>
                    <p>
                        <b>Good Question</b>: So you'd agree that in today's tough market you've got to
                        stay up to date with today's technological advancements? (No self respecting developer
                        that wants to keep his job would answer no to this question)</p>
                    <p>
                        <b>Prospect</b>: Yes of course.</p>
                    <p>
                        <b>Scott</b>: Well let me show you how you can keep up to date with technology.</p>
                </blockquote>
                <p>
                    See how this tactic forces the prospect to get back on to the topic and think about
                    what you're offering them. So beyond the YES ladder you should always have a few
                    more questions up your sleeve. &nbsp;</p>
                <!-- KM
<ul>

	<li>Have a definitive objective for your call: to make the appointment, to inform, to question, to talk to a certain person or to sell.</li>
	<li>Have a script memorised but be able to improvise when necessary.</li>
	<li>Don't lose sight of your objective no matter where the call goes.</li>
	<li>Remain in control and take action by closing for your goal.</li>
	<li>Set a realistic call objective which propels your prospect towards a decision.</li>
	<li>Develop interest-gathering opening lines.</li>
	<li>Use humor and sincerity. </li>
	<li>Ask questions that make prospects think.</li>
	<li>Show enthusiasm through your voice, it's contagious.</li>
</ul></p>
-->
            </li>
            <li>
                <h2>
                    <a name="ColdToWarm"></a>Do you change your cold calls into warm calls?
                </h2>
                <p>
                    Sometimes if your cold calling isn't working, no matter how much you try or how
                    great your list is, you might need to convert your cold calls into warm calls. In
                    a nutshell a warm call is a cold call where the prospect has exposure to your company
                    or what you're trying to sell.</p>
                <p>
                    At SSW we convert our cold calls into warm calls by sending prospects a mail out,
                    either via email, fax, or snail mail. This is what we call a pre-call strategy.
                    This often helps as it allows your prospects a chance to decide if it does or doesn't
                    interest them.
                    <br />
                    <br />
                    If you've already sent them some form of direct marketing your introduction should
                    sound like:
                    <blockquote>
                        <b>Good Intro: </b>I sent you a fax the other day regarding our training you are
                        interested in</blockquote>
                    Always assume that they have got it and read it and are interested. Try to resist
                    questions like :
                    <blockquote>
                        <b>Dud Question: </b>Did you get my fax?
                    </blockquote>
                    You never want them to say no to you. See the <a name="RightQuestions">YES ladder</a>
                    for more details.</p>
            </li>
            <li>
                <h2>
                    <a name="CallEnough"></a>Do you call enough people?</h2>
                <p>
                    All sales are a numbers game. Outbound calling is a game of attitude and numbers.
                    If you call enough people and have a positive attitude (ABS); you have a higher
                    probability of success. Outbound calling is also an acquired skill. You acquire
                    it by practicing and being prepared. The only way to get better at it is to make
                    more of them and practice, practice, practice. So when you're starting your outbound
                    calls you need to swallow that lump in your throat and fire away. Along the way
                    you'll feel disenchanted and rejected but sooner or later it will start to click
                    and as you become more confident, you become a better telemarketer.</p>
            </li>
            <li>
                <h2>
                    <a name="Measure"></a>Do you measure the success of your outbound efforts?</h2>
                <p>
                    At the end of the day, when all the people on your prospect list have been called
                    and you're just about ready to throw in the towel, there's still one more task to
                    complete. You need to remember that an outbound campaign is just like any other
                    business campaign - it needs to show a ROI (Return on Investment). Management need
                    to be made aware of its success or its failures.<br />
                    <br />
                    At SSW every time a Tech Breakfast call is made, it is logged in our database as
                    one of either 5 states: Interested, Not Interested, N/A (Engaged call back), Not
                    Contactable and Sale. We run a query at the end of the day to find out how many
                    people were:</p>
                <ul>
                    <li>Emailed the invitation </li>
                    <li>Called (attempted and successful)</li>
                    <li>Sold</li>
                    <li>Hot leads (Interested)</li>
                    <li>Dead leads (Not Interested &amp; Not Contactable)</li>
                </ul>
                <p>
                    These details are then emailed to the manager for review on a weekly basis.
                </p>
            </li>
            <li>
                <h2>
                    <a name="FollowUpEmail"></a>Do you know how to write a follow-up email after an
                    outbound call?</h2>
                <p>
                    When sending a standardized follow-up email after an out-bound call, you should
                    always try to tailor your email to each client.</p>
                <p>
                    If you don't then the client will ignore your email.</p>
                <p>
                    These are the 5 things that you should include in your follow-up email:</p>
                <ol>
                    <li>Record what was said in the conversation including:
                        <ul>
                            <li>the projects they are working on</li>
                            <li>their priorities</li>
                            <li>the technologies they are interested in</li>
                        </ul>
                    </li>
                    <li>When you will call them back </li>
                    <li>Other relevant answers to questions in the script you are using.</li>
                    <li>A little footer, with a clear division to the 'spam'/'canned' text </li>
                    <li>Indent the spam text</li>
                </ol>
                <p>
                    All this information is important as it gives the next salesperson who speaks to
                    this person a good background on your interaction with them.</p>
                <dl class="badCode">
                    <dt class="greyBox" style="padding: 15px; margin-bottom: 10px;">
                        <p>
                            <b>To Marlon</b></p>
                        <p>
                            As per our conversation, I look forward to seeing you at the SharePoint 101 workshop.</p>
                        <p>
                            Feel free to contact me for more information.
                        </p>
                        <div style="max-width: 520px; background: white; border: grey 1px solid; padding: 15px;">
                            <font color="red">SharePoint 101 for Business</font><br />
                            <p>
                                This workshop will provide the attendee with:</p>
                            <ul>
                                <li>An understanding of the SharePoint feature set </li>
                                <li>An in depth understanding of how key features of SharePoint can enhance business
                                    processes </li>
                                <li>An understanding of the costs, timelines, staff involvement and commitment a business
                                    will incur when implementing SharePoint </li>
                            </ul>
                            <a>Learn more.</a>
                            <table class="outline">
                                <tr>
                                    <th>
                                        Date:
                                    </th>
                                    <td>
                                        Wednesday 21 April
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        Time:
                                    </th>
                                    <td>
                                        8:00am - 11:00am
                                    </td>
                                </tr>
                                <tr>
                                    <th style="vertical-align: top;">
                                        Address:
                                    </th>
                                    <td>
                                        Suite 10, 81-91 Military Road Neutral Bay 2089 NSW
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        Food:
                                    </th>
                                    <td>
                                        Breakfast is provided
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        Cost:
                                    </th>
                                    <td>
                                        No Charge
                                    </td>
                                </tr>
                            </table>
                            <img src="/ssw/Images/Button_Register.gif" alt="Register online now" />
                        </div>
                    </dt>
                    <dd>
                        Bad Example: Bad Example ?the next time you call you will NOT 'remember' any details
                        of the client and have to start COLD again</dd>
                </dl>
                <dl class="goodCode">
                    <dt class="greyBox" style="padding: 15px; margin-bottom: 10px;"><b>To Marlon</b>
                        <p>
                            As per our conversation, you are currently using Team Foundation Server 2008 to
                            manage small development projects and source control.
                        </p>
                        <p>
                            If you are looking to upgrade to TFS 2010, we have a special offer. We will:</p>
                        <ol>
                            <li>Migrate your old version to the new version</li>
                            <li>Give you a Scrum master for the first 2 week print FREE of charge</li>
                        </ol>
                        <p>
                            The Scrum master will be involved in all the meetings, daily Scrum and ensure that
                            the burn down is happening as it should be. Additional to this, we will have a TFS
                            MVP and Microsoft Regional Director over seer the project from SSW, ultimately any
                            problems which arise, we will have access to immediate solutions.</p>
                        <p>
                            I will contact you in 1 month and we will discuss how things are going and your
                            thoughts to our offer.</p>
                        <p>
                            I have also included information on our seminars below just in case anyone was interested.</p>
                        <p>
                            Feel free to contact me for more information.</p>
                        <p>
                            Phil</p>
                        <div style="max-width: 520px; background: white; border: grey 1px solid; padding: 15px;">
                            <font color="red">SharePoint 101 for Business</font><br />
                            <p>
                                This workshop will provide the attendee with:</p>
                            <ul>
                                <li>An understanding of the SharePoint feature set </li>
                                <li>An in depth understanding of how key features of SharePoint can enhance business
                                    processes </li>
                                <li>An understanding of the costs, timelines, staff involvement and commitment a business
                                    will incur when implementing SharePoint </li>
                            </ul>
                            <a>Learn more.</a>
                            <table class="outline" style="background-color: White;">
                                <tr>
                                    <th scope="row">
                                        Date:
                                    </th>
                                    <td>
                                        Wednesday 21 April
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">
                                        Time:
                                    </th>
                                    <td>
                                        8:00am - 11:00am
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" style="vertical-align: top;">
                                        Address:
                                    </th>
                                    <td>
                                        Suite 10, 81-91 Military Road Neutral bay 2089 NSW
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">
                                        Food:
                                    </th>
                                    <td>
                                        Breakfast is provided
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">
                                        Cost:
                                    </th>
                                    <td>
                                        No Charge
                                    </td>
                                </tr>
                            </table>
                            <img src="/ssw/Images/Button_Register.gif" alt="Register online now" />
                        </div>
                    </dt>
                    <dd>
                        Good Example: the next time you call you will be able to 'remember' plenty of details
                    </dd>
                </dl>
            </li>
        </ol>
    </div>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></p>
    </div>
</asp:Content>
