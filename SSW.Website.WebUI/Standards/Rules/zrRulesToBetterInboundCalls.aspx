<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Inbound Calls" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>

<script runat="server">
     
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load
        
        If Server.MachineName = ConfigurationManager.AppSettings("MasterServer") Then
            lbComplaint.Visible = True
        End If
        
    End Sub
  
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>
        The way that your company answers phone calls is vitally important as it is often
        the first point of contact between your staff and potential clients. First impressions
        last and if the first impression starts off badly you've already got to make some
        extra ground to get back on par. Our initial phone conversations need to reaffirm
        the professional image that they have formed of SSW. Prospective clients may call
        5 or 6 consultancies but only meet with 1 or 2 so we need to stand out. This starts
        at the very first phone call.
    </p>
    <p>
        The benefits of a strong phone manner are such that clients retain positive perceptions
        of the service provided by the company and the staff that they interact with. Another
        great benefit of a proper phone etiquette is the chance to up sell, promote complimentary
        services or promote a better understanding between yourself and your customer. Here's
        a series of rules that detail some of the issues involved with maintaining a proper
        phone etiquette.
    </p>
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230496E626F756E6425323043616C6C73')">
            Let us know</a> what you think.</p>
    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
        style="width: 100%">
        <tr>
            <td>
                <p>
                    <b>Rules to Better Inbound Calls</b>
                </p>
                <ol>
                    <li><a href="#ReasonsForCall">Can you list the reasons why people call?</a></li>
                    <li><a href="#Preparation">Are you prepared for your inbound calls?</a></li>
                    <li><a href="#Details">Do always get your prospect's full contact details?</a></li>
                    <li><a href="#Introduction">Do you introduce yourself correctly?</a></li>
                    <li><a href="#CommunicatingEffectively">Are you communicating effectively?</a></li>
                    <li><a href="#AskHighGainQuestions">Do you ask prospects high-gain questions?</a></li>
                    <li><a href="#messages">Do you give informative messages?</a></li>
                    <li><a href="#Transfer">Do you know how to transfer a call quickly?</a></li>
                    <li><a href="#Upsell">Do you up-sell your most valuable product/service?</a></li>
                    <li><a href="#Action">Do you finish the conversation with something to action?</a></li>
                    <li><a href="#MakeComplaintsPositive">Do you make complaints a positive experience</a></li>
                    <li><a href="#Handset">Do you use a headset?</a></li>
                    <li><a href="#OnlyClient">Do you avoid putting your phone calls on hold?</a></li>
                    <li><a href="#HoldMusic">Do you use on hold music or an on hold message?</a></li>
                    <li><a href="#ScreenUnwantedCalls">Do you screen unwanted sales calls?</a></li>
                </ol>
            </td>
        </tr>
    </table>
    <ol>
        <li>
            <h2>
                <a name="ReasonsForCall"></a>Can you list the reasons why people call?</h2>
            <p>
                First things first. You need to be able to list some of the main reasons why people
                may call you. When you know what some of these are it puts you in a better position
                to prepare yourself for action or an intelligent and helpful response. For example,
                if you're a restaurant you better have your reservation systems close to the phone
                and if you're a bank you better be ready for some abuse. At SSW we find that people
                call us for only a few reasons:</p>
            <ul>
                <li>For <a href="#Preparation">information</a> about our consulting, products or events</li>
                <li>To <a href="#Transfer">speak to someone specific</a></li>
                <li>And not very often to <a href="#MakeComplaintsPositive">complain</a></li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="Preparation"></a>Are you prepared for your inbound calls?</h2>
            <p>
                When you go to meetings to attract business, you always walk in knowing about what
                they want. Why should phone calls be any different?
            </p>
            <p>
                We use an inbound calls script. Having an inbound script does a couple of great
                things for you. It allows you to control the flow of the conversation, it also makes
                sure that you're asking them the right questions, and most importantly, you know
                when to listen and take notes. At SSW when someone calls we always have an email
                open to jot down notes as well as a solid set of probing questions ready to
                ask the prospect.
            </p>
            <p>
                If the call is regarding consulting these are the kinds of questions we ask:
            </p>
            <ol>
                <li>Can I get your name, company, phone number and email?</li>
                <li>How did you find out about SSW?</li>
                <li>Do you have a website? If yes, what is the URL so I can look at it while we speak?
                    (note the technology from the URL)</li>
                <li>Can I just ask, are you from a technical background?</li>
                <li>Have you given much thought to what you want your system to achieve (for example,
                    we are currently doing an application that does....) ? </li>
                <li>(Technical clients) Do you have a formal spec? </li>
                <li>(Technical clients) Have you chosen the technology - .NET, Web or Rich Client?</li>
                <li>Have you got an idea when you would like this project completed?</li>
                <li>What's your role in the project and how important is this project to your business?</li>
                <li>Do you have a bit of a ballpark of what you want to spend? (Silence). Are you thinking
                    of 10k, 50k or 100k (Silence). (If they ask you for a ballpark, say: 'There are
                    a number of factors involved, so it's too early for me to say at the moment, I will
                    be in a much better position to work out a price once we've had a chance to meet
                    and talk about your requirements.)</li>
                <li>Have you spoken to any other IT companies? Do you mind me asking who they were?</li>
                <li>Before we go, let me confirm my understanding of your requirements.</li>
                <li>Can I just explain to you how we move forward. We will have a free initial meeting with
                    a Developer and a Project Manager to get a thorough understanding of your requirements.
                    At that meeting we will also explain our development methodology and fees. </li>
                <li>Now, would you prefer to meet at our offices in Neutral Bay, or is it easier for
                    you (First Name) if we come to you? (confirm date and time)</li>
                <li>Is there anyone else from your company who should be at that meeting? I'm just trying
                    to understand how the decision to work with SSW would be made. (confirm you have
                    the decision maker). </li>
                <li>Now get full details (<a href="#Details">Below</a>)</li>
            </ol>
            <p>
                If the call is regarding events these are the kinds of questions we ask:
            </p>
            <ol>
                <li>Which event are you interested in? The User Group, Tech Breakfast or Conference?</li>
                <li>Would you like me to register your attendance to the event?</li>
                <li>What event information do you require?</li>
            </ol>
            <br />
        </li>
        <li>
            <h2>
                <a name="Details"></a>Do you always get your prospect's full contact details?</h2>
            <p>
                How many times has another staff member given you a phone number to call back which
                was wrong? This should never happen. I know this sounds like a bit of a no brainer
                but as a simple rule we say that you should always get the prospect's full contact
                details. These details should then be added to your company database (just in case
                that post-it note they wrote it on disappears). Here are some of the important details
                that need to be recorded:</p>
            <ul>
                <li>Full name</li>
                <li>Company</li>
                <li>Position</li>
                <li>Phone number (work and mobile)</li>
                <li>Email address</li>
                <li>Company address</li>
                <li>How many employees does your company have? (This determines whether we go there
                    or they come here.)</li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="Introduction"></a>Do you introduce yourself correctly?</h2>
            <p>
                Ever wondered why 007 always introduced himself as "Bond, James Bond"? Well, If
                he introduced himself as just James everywhere he went you wouldn't think very much
                of this international man of espionage and danger would you? By using your full
                name it instantly gives you authority. It's also useful in situations where your
                name is common like Peter, John or Jane.
            </p>
            <p>
                Just remember that first impressions last so you need to make sure you're kind and
                courteous when you answer the phone and introduce yourself. An example of a good
                and positive welcome could be:
            </p>
            <p>
                <b>&nbsp;&nbsp;&nbsp; Stephen:</b> SSW Stephen Bennett speaking<br />
                <br />
                Notice the use of your full name. When you pick up the phone from someone who was
                on hold you start with:</p>
            <p>
                <b>&nbsp;&nbsp;&nbsp; Stephen: </b>Stephen Bennett speaking
            </p>
        </li>
        <li>
            <h2>
                <a name="CommunicatingEffectively"></a>Are you communicating effectively?</h2>
            <p>
                I've had many sales calls from people who should really reassess their day jobs.
                When you speak to a sales person and they're like UM...AH...ER it doesn't instil
                a great deal of confidence in the offering. Phone conversations where people are
                mumbling and stumbling don't create a very positive impression. You should always
                aim to communicate your ideas and answer any questions that callers have promptly,
                clearly and effectively. If you speak with confidence, it will always inspire confidence
                in you and your company. Here are some general rules of thumb to follow for effective
                communication:
            </p>
            <ul>
                <li>Speak clearly, don't mumble</li>
                <li>Don't talk too quickly</li>
                <li>Don't eat or drink whilst on the phone - there's nothing worse than the sound of
                    someone eating an apple on the other end</li>
                <li>Know how to vary your voice</li>
                <li>When you are talking about products and services you should be able to slow down
                    and emphasize the important points</li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="messages"></a>Do you give informative messages?</h2>
            <p>
                <table class="clsSSWtable" align="right" width="40%">
                    <tr>
                        <td>
                            Subject: Phone message from John Smith<br />
                            Adam,<br />
                            <br />
                            John Smith called today at 11:20am
                            <br />
                            RE: Database consultation<br />
                            Contact Number: 03 9922 1100<br />
                            <br />
                            Rebecca
                        </td>
                    </tr>
                </table>
                Giving your fellow employees informative messages is important. Follow these steps
                to make sure you are providing people with all the information they need to action
                the message.
                <br />
                <br />
                <ul>
                    <li>Type the message directly into an email not a piece of paper even if it means putting
                        the caller on hold for 15 seconds</li>
                    <li>Ask for what it is with regard to.</li>
                    <li>Ask for the number.</li>
                </ul>
                <br /><br />
            </p>
        </li>
        <li><a name="AskHighGainQuestions"></a>
            <h2>
                Do you ask prospects high-gain questions?
            </h2>
            <p>
                Getting the right information from prospects helps you prioritize potential leads
                and projects and won't have you running around unnecessarily after hot air.
            </p>
            <p>
                High-gain questions allow you to get information that otherwise won't necessarily
                be provided. Important information isn't often volunteered by smart prospective
                clients.
            </p>
            <p>
                First of all, you've got to ask because if you don't ask, you don't get. For example,
                "if everything in the proposal was ok, what date were you thinking of starting the
                project?" Such a simple question like that avoids spending priority time on clients
                who weren't thinking of starting the project until the next year!
            </p>
            <p>
                If a client is reluctant to answer simple questions, a good way of eliciting a response
                is to provide options for them to choose. For example "if everything in the proposal
                was ok, would you kick this project off next week, or next month, or later on the
                year?", or "ok, so you don't have a set budget but what kind of ballpark were you
                thinking of, $25k, $150k or $300k?"
            </p>
            <p>
                If you ask a prospect a question, you should patiently wait for the answer. If you
                jump in with an answer before they do you've saved them from having to answer the
                question themselves.
            </p>
        </li>
        <li>
            <h2>
                <a name="Transfer"></a>Do you know how to transfer a call quickly?
            </h2>
            <p>
                How often has the connection dropped out while a call centre operator was trying
                to transfer you, or perhaps you get put straight through to someone's voice mail,
                meaning you need to hang up and call again. You should have a simple method for
                transferring calls that ensures the caller doesn't go around in circles or is left
                waiting for ages, wondering what is going on.
                <br />
                <br />
                At SSW we use Instant Messenger. e.g.
            </p>
            <ul>
                <li>When a caller asks to be transferred say "Just putting you through" (Instead of
                    "Hang on" which doesn't give the caller any indication of what is going on).</li>
                <li>IM e.g. Stephen: "Stephen, Colin from Microsoft Events, Line 1."</li>
                <li>Stephen responds "OK", and then pick up the call, following the rule above</li>
                <li>If Stephen doesn't respond or messages &quot;Busy&quot;, Stephen is with a client
                    or away from his desk. Then ask is there anything I can help you with?&nbsp; Take
                    a message or try and assist the caller yourself</li>
            </ul>
            <p>
                More <a href="RulestoBetterInstantMessenger.aspx">Rules to Better Instant Messenger</a>
            </p>
        </li>
        <li>
            <h2>
                <a name="Upsell"></a>Do you up-sell your most valuable product/service?
            </h2>
            <p>
                Nine times out of ten prospects come to your organization to seek a solution to
                a problem or need. By doing so, they place a certain amount of trust in you and
                your judgments. They trust that you can alleviate their problems, address their
                needs and sometimes suggest an alternative plan of action.
            </p>
            <p>
                Whenever I come across an Upsizing PRO! customer that is still having problems with
                upsizing to SQL Server, they probably need some help beyond what our program can
                provide. So I always tell them about how SSW has upsized smoothly for many clients
                and that we can help them. Though this example may not come across as an up-sell,
                little suggestions like these could bring you more consulting but it shows that
                you're on the ball and looking out for your customers needs. Customers normally
                appreciate this sentiment. You need to remember that prospects don't always know
                exactly what they want or need and that's exactly why they've gone to the experts
                - YOU.
            </p>
        </li>
        <!--
<li>		
<h2><a name="Listening"></a>Are you listening to the conversation?
	</h2>
</li>

	
<p> Are you listening? Are you asking questions? The more they talk the better. 
But it is important that YOU control the conversation (e.g. you need to be 
focused on selling the service and talking about yesterdays weather won't bring 
you any closer to closing the deal. You want to know as much about your client 
as possible. Don't forget to have a blank email open and jot down the important points 
as the conversation progresses.</p>

-->
        <li>
            <h2>
                <a name="Action"></a>Do you finish the conversation with something to action?</h2>
            <p>
                Having a nice chat with clients is great but you should always finish the conversation
                with something to action. For example if they wanted their requirements changed
                you should send them a confirmation email, if they wanted to schedule a meeting
                you should send them an Outlook appointment. Here are some more examples of typical
                things you action after a call:
            </p>
            <ul>
                <li>Add contact details to company database</li>
                <li>Pass the call to someone else</li>
                <li>Start work</li>
                <li>Remind yourself to follow up with another phone call</li>
            </ul>
        </li>
        <!--
<li>
<h2><a name="SelfAudit"></a>Do you audit yourself?</h2>
</li>
	
<ol type="a">
	<br /><li> 
	Record your conversation and play it back you will be surprised 
  		 at how you want to improve</li>
	<li>Do you give yourself a debrief</li>
	<li> Every now and then stop and ask yourself how did I go?</li>
	<li> Look at ways you can improve yourself<br />
&nbsp;</li>
</ol>
-->
        <li>
            <h2>
                <a name="MakeComplaintsPositive"></a>Do you make complaints a positive experience?</h2>
            <dl class="image" style="float: right; clear: right; width: 289px; margin-right: 2em;">
                <dt>
                    <img src="images/InboundCalls_Conference-SwitchBoardOperator.jpg" alt="Conference in another person to solve the problem - it's a lot easier than it used to be" /></dt>
                <dd>
                    Figure: Conference in another person to solve the problem - it's a lot easier than
                    it used to be</dd>
            </dl>
            <p>
                When a client complains I have a choice: solve the problem or ignore it. I prefer
                the first option. Here's how you do it:
            </p>
            <ol>
                <li>Stay relaxed, listen carefully and acknowledge the concerns</li>
                <li>Isolate the issues.
                    <p>
                        e.g. invoicing ("I don't want to pay this bill") or development quality ("my application
                        is down")
                    </p>
                </li>
                <li>Conference in the appropriate resources.
                <p>e.g the account manager or project manager</p>
                    <asp:Label ID="lbComplaint" runat="server" Visible="false"></asp:Label>                 
                    <SSW:InfoBox runat="server" width="25%" Css="interInfoBoxSide" text="<h1>Attention: SSW Developers</h1><br/><ol><li>Conference in the relevant Account Manager</li><li>If still no resolution conference in Adam. If Adam not available conference in Bao(Bao has authorization to write off up to $5000)</li></ol>">
     </SSW:InfoBox>                    
                </li>
                <li>Follow up the proposed solution in writing
                    <p>
                        e.g. "John, as per our conversation, David K will be on-site 9am tomorrow morning"
                    </p>
                </li>
                <li>When the problem is finally solved, confirm so in writing, including the cause of
                    the problem and what was done to fix it
                    <p>
                        e.g. "John, I'm glad David K was able to restore your application last night after
                        the cleaners accidently bumped the power cord on the server. David K just plugged
                        the power cable back in and fixed the error log. As discussed it would be a good
                        idea to lock the server room"
                    </p>
                </li>
            </ol>
            <p>
                Remember, someone will complain about what you do no matter how 'perfect' you are.
                That doesn't matter. It's how you deal with the complaint that matters. Everyone
                should leave the experience of your business with a great taste in their mouth.
            </p>
            <div class="greyBox">
                <p>
                    Remember it is Important to Resolve a Clients Complaint because studies have shown
                    that:
                </p>
                <ul>
                    <li>For every customer that complains, there may be 26 others that will not tell you
                        they are dissatisfied</li>
                    <li>Of this 26:
                        <ol>
                            <li>Up to 19 will not come back</li>
                            <li>Most will tell nine to ten others</li>
                            <li>At least three will tell more than 20 people</li>
                        </ol>
                    </li>
                    <li>For every dissatisfied customer whose complaint you handle well:
                        <ol>
                            <li>Ninety-Five percent will become loyal</li>
                            <li>They will recommend you to five others</li>
                        </ol>
                    </li>
                    <li>Thus, resolving a complaint efficiently and fairly, you will retain the customer's
                        loyalty and potentially gain five new customers.</li>
                </ul>
            </div>
        </li>
        <li>
            <h2>
                <a name="Handset"></a>Do you use a headset?</h2>
            <p>
                When we're speaking on the phone and taking down notes on your computer life is
                just a hell of a lot easier when you've got both of your hands free so you can type
                away as you please. There's a simple solution - use headsets. With these not only
                can you type furiously with both hands but they're supposed to be a lot more ergonomically
                friendly.</p>
            <p>
                USB headsets are preferred over direct audio input/output as they can be plugged
                into any machine and work without requiring drivers to be installed. Despite USB
                having a higher initial overhead than unplugging the audio line ins/outs to get
                the equivalent of speaker mode, by conferencing calls you don't explicitly require
                people to gather in the one location, and background noise is reduced.</p>
        </li>
        <li>
            <h2>
                <a name="OnlyClient"></a>Do you avoid putting your phone calls on hold?</h2>
            <p>
                I absolutely hate being put on hold. When I call someone up to buy something and
                I get put on hold so that they can pick up another call, it amazes me how they are
                willing to jeopardize a hot prospect for an anonymous phone call. I think that when
                you have the momentum of the conversation going, the last thing you should do is
                put someone on hold to answer another call.<br />
                <br />
                Of course, if you are the only one in the office, you should always pick up the
                other phone.</p>
        </li>
        <!--
<li>
<h2><a name="MonitorProgress"></a>Do you monitor your progress?</h2>
</li>
  <p>It is important to set goals and get a rating sheet every day</p>
-->
        <li>
            <h2>
                <a name="HoldMusic"></a>Do you use on hold music or an on hold message?
            </h2>
            <p>
                Being on hold is often a frustrating experience for most customers (yours truly
                included), so it's a really good idea to employ tactics so that time can fly by
                a bit quicker. A good way to do this is to keep the caller distracted with music
                or a message that they can listen to.</p>
        </li>
        <li>
            <h2>
                <a name="ScreenUnwantedCalls"></a>Do you screen unwanted sales calls?</h2>
            <p>
                Everyday businesses get hounded by sales calls; recruiters, cleaners, printer cartridges
                - the list goes on. When you receive a call for 'the manager' or 'for Tim', that
                sounds suspicious, ask the caller to provide the full name of the person they are
                seeking. If they can't, or don't provide a believable context, screen the call.
            </p>
        </li>
    </ol>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></p>
</asp:Content>
