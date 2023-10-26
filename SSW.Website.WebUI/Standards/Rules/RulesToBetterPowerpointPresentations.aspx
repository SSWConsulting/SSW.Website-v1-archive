<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="Rules to Better Powerpoint Presentations" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>
        Do you agree with them all? Are we missing some? Email us your tips, thoughts or
        arguments. <a href="javascript:sendEmail('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f253230426574746572253230536f75726365253230436f6e74726f6c')"
            onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f253230426574746572253230536f75726365253230436f6e74726f6c');return true;"
            onmouseout="javascript:clearStatus(); return true;">Let us know </a>what you
        think.</p>
    <div class="TableOfContents">
        <p>
            <b>Rules to Better Powerpoint Presentations</b></p>
        <ol>
            <li><a href="#UseTheTemplate">Do you know if you are using the template?</a></li>
            <li><a href="#OnTheLatestTemplate">Do you know how to see if your PowerPoint is using the latest template?</a></li>
            <li><a href="#ChooseRightLayout">Do you know how to choose right layout for your presentation?</a></li>
            <li><a href="#LimitNumberOfFonts">Do you limit the number of fonts?</a></li>
            <li><a href="#LimitAmountOfText">Do you limit the amount of text on your slides?</a></li>
            <li><a href="#AddYourLogoAndTagline">Slide Master - Do you have your logo and tagline at the bottom?</a></li>
            <li><a href="#AddPreSetupSlide">Prior - Is your first slide 'Pre-setup'?</a></li>
            <li><a href="#AddTwitterBackChannel">Prior - Do you setup a Twitter backchannel beforehand?</a></li>
            <li><a href="#QuestionWhoIsYourAudience">Do you have a few slides to find out a little bit about who is in your audience?</a></li>
            <li><a href="#AboutPresenter">Do you have an 'About Presenter' slide?</a></li>
            <li><a href="#UseTheSameAgendaAndSummarySlide">Do you use the same Agenda and Summary slide?</a></li>
            <%--<li><a href="#addtagline">Do you know the way to add tagline into master page?</a></li>--%>
            <li><a href="#DivideTalkWithSectionBreakSlides">Do you have a 'section break' slide?</a></li>
            <li><a href="#DemoSlide">Do you know the right way to do a 'Demo' slide?</a></li>
            <li><a href="#QuestionsForTheAudience">Do you use standard question mark when you are going to ask the audience something?</a></li>
            <li><a href="#HighQualityImages">Do you use high quality images?</a></li>
            <li><a href="#KeepPresentationToAFewPoints">Do you keep your presentation simple?</a></li>
            <li><a href="#ToDoInRed">Do you make 'TODO' items in red?</a></li>
            <li><a href="#PPTTester">Do you get your "PPT Tester" to do a 'Test Please'(preferably a designer)?</a></li>
            <li><a href="#BiggerScreenshot">Do you use the full slide for screenshots?</a></li>
            <li><a href="#BulletPointsToRedAndGreen">Do you know how to change bullet points?</a></li>
            <li><a href="#Intro-QA">Do you use a word document to record your audience's Questions and Answers?</a></li>
            <li><a href="#ThankYouSlide">Do you finish your presentation with a 'Thank You' slide?</a></li>
            <li><a href="#SlideShare">Do you know to Slideshare your PowerPoint (before the presentation)?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="UseTheTemplate"></a>Do you know if you are using the template?</h2>
                <p>
                    PowerPoint templates are designed to engage your audience visually and save you
                    time. When you start creating a new presentation file so you get the correct look
                    and feel straight away.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/bad_cover.gif" alt="not follow SSW brand" />
                    </dt>
                    <dd>
                        Figure: Bad Example - Not using the corporate template (in this case not SSW)
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/good_cover.jpg" alt="SSW PowerPoint Template" /></dt>
                    <dd>
                        Figure: Good Example - That's a mighty fine looking template you got there</dd></dl>
                <p>
                    More information:
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/noTemplate.jpg" alt="" /></dt>
                    <dd>
                        Figure: Bad Example - Not starting with the correct template</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/templateApplied02.gif" alt="Find SSW template from My template" />
                    </dt>
                    <dd>
                        Figure: Good Example - Starting with the correct template
                    </dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/UseTheTemplate.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/UseTheTemplate.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="OnTheLatestTemplate"></a>Do you know how to see if your PowerPoint is using the latest template?</h2>
                <dl class="image">
                    <dt>
                        <img src="Images/CheckTemplate.jpg" alt="Check Template" /></dt>
                    <dd>
                        Figure: This is how you can see if you are using the template file
                    </dd>
                </dl>
                <p>
                    Unfortunately, there is no easy solution to this. What we need is a 'version' field
                    and an 'Update' button - See our <b><a href="/ssw/Standards/BetterSoftwareSuggestions/Office.aspx#Version">
                        Suggestions to Microsoft PowerPoint: Check for Updates</a></b></p>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/OnTheLatestTemplate.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/OnTheLatestTemplate.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ChooseRightLayout"></a>Do you know how to choose right layout for your
                    presentation?</h2>
                <p>
                    Different layouts have different purposes. While the default layout is nice; it's
                    not the only option available. But remember to keep all things in moderation. You
                    want the audience to focus on the content, not guessing what layout the next slide
                    will use.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/layout.gif" alt="" /></dt>
                    <dd>
                        Figure: Don't use the same layout for all slides, instead choose the right 'layout'
                        for the each slide (this is called the layout library)</dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/ChooseRightLayout.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/ChooseRightLayout.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="LimitNumberOfFonts"></a>Do you limit the number of fonts?</h2>
                <p>
                    Each font or style (italics or bold) should be used consistently throughout your
                    presentation. While a different font face or color is a simple way of highlighting
                    certain terms you want for focus, too much of it will do exactly the opposite and
                    distract the audience.
                </p>
                <p>
                    The rules are:</p>
                <ul>
                    <li>Use one font per presentation </li>
                    <li>Use one style (eg. bold or color) per slide if possible</li>
                    <li>Steer clear of excessively bright colors or any flourished type face (both are hard
                        to read)</li>
                </ul>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadLimitFont.jpg" alt="too many fonts used for headers" /></dt>
                    <dd>
                        Figure: Bad Example - 2 fonts are used, 2 styles are used, and flourished type face
                        used. This all makes your slide hard to read for the audience</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodLimitFont.jpg" alt="" /></dt>
                    <dd>
                        Figure: Better Example - Even though there are a lot of words, the main ones are
                        clear because there is only one font used, with color to emphasize</dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/LimitNumberOfFonts.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/LimitNumberOfFonts.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="LimitAmountOfText"></a>Do you limit the amount of text on your slides?</h2>
                <p>
                    Your audience cannot listen to you and read your slides at the same time. Therefore,
                    you should not show too much text on your slides. The best presenters use hardly
                    any text at all in their slides.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadLessText.jpg" alt="Too much text-content in one single slide" /></dt>
                    <dd>
                        Figure: Bad Example - Too much text/content on this slide</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodLessText.jpg" alt="" /></dt>
                    <dd>
                        Figure: Good Example - Less is more</dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/LimitAmountOfText.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/LimitAmountOfText.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="AddYourLogoAndTagline"></a>Slide Master - Do you have your logo and tagline at
                    the bottom?</h2>
                <p>
                    Add your logo and tagline for marketing purposes. The general concept is to use
                    a catchphrase that will sum up the tone of a brand and to reinforce the audience's
                    memory of your company/product.</p>
                <p>
                    Neither of these elements are intended to distract, so they are placed in the footer
                    of the slide. It is present, but the influence is subtle and your audience's focus
                    will remain squarely on the content.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/tagLine.gif" alt="" /></dt>
                    <dd>
                        Figure: Include a Logo and Tagline at the bottom of the 'slide master' for branding
                        purposes</dd>
                </dl>
                <h1>
                    More Information: Do you know the way to add the tagline into slide master?</h1>
                <p>
                    Adding the tagline and logo in the slide master will duplicate it automatically
                    across all slides. This will dictate the size and font of text present on all slides.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/master-2.gif" alt="" /></dt>
                    <dd>
                        Figure: Step 1 - Click 'Slide Master' button on the 'View' ribbon</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/master-3.gif" alt="" /></dt>
                    <dd>
                        Figure: Step 2 - Add your Logo and Tagline at bottom of the slide
                    </dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/AddYourLogoAndTagline.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/AddYourLogoAndTagline.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="AddPreSetupSlide"></a>Prior - Is your first slide 'Pre-setup'?</h2>
                <p>
                    You may be a natural born public speaker, but you will not be able 'wing' a presentation.
                    Setting up a presentation takes time and practice. You want web pages already open,
                    you want VMs ready and demos good to go.</p>
                <p>
                    So document the steps to undertake prior to starting and you will present in a snappier
                    fashion and not need to say the lame statement "hope the demo gods are kind to me
                    today".
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/preslide.gif" alt="" /></dt>
                    <dd>
                        Figure: Use a Pre-setup slide prior to the presentation and your pace will be snappier</dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/IsYourFirstSlide'Pre-setup'.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/IsYourFirstSlide'Pre-setup'.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="AddTwitterBackChannel"></a>Prior - Do you setup a Twitter backchannel beforehand?</h2>
                <p>
                    Create a hashtag for your presentation prior to the presentation and display it
                    your introduction slide! Twitter backchannels are valuable sources of feedback.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/PPTwit.jpg" alt="" /></dt>
                    <dd>
                        Figure: A Twitter hashtag allows the attendees to have a backchannel that can be
                        used to talk about your presentation, during your presentation</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/PPTwit2.jpg" alt="" /></dt>
                    <dd>
                        Figure: (optional) Midway through the presentation have a slide where you say "Let's
                        see if any questions have arisen"</dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/AddTwitterBackChannel.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/AddTwitterBackChannel.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="QuestionWhoIsYourAudience"></a>Do you have a few slides to find out a little bit
                    about who is in your audience?</h2>
                <p>
                    If you are presenting to people who you already know, then you have an enormous
                    advantage over someone who is going to face an audience they have never previously
                    met.</p>
                <p>
                    It is best to confirm who you are speaking to via a few slides. Then you can make
                    subtle changes during your presentation so your audience gets:</p>
                <ul>
                    <li>What is important for them</li>
                    <li>Interesting to them</li>
                    <li>Relevant to them</li>
                </ul>
                <dl class="image">
                    <dt>
                        <img src="Images/developer.gif" alt="" /></dt>
                    <dd>
                        Figure: Ask "How many developers here?"</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/manager.gif" alt="" /></dt>
                    <dd>
                        Figure: Ask "How many managers here?"</dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/QuestionWhoIsYourAudience.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/QuestionWhoIsYourAudience.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="AboutPresenter"></a>Do you have an 'About Presenter' slide?</h2>
                <p>
                    Always introduce yourself *after* you have asked the audience who they are. Don't
                    be shy, tell them:</p>
                <ul>
                    <li>Who are you? (optional - include something personal)</li>
                    <li>What you do (your service or product)?</li>
                    <li>What makes you qualified to speak on this topic?</li>
                </ul>
                <dl class="image">
                    <dt>
                        <img src="Images/aboutAdam.gif" alt="" /></dt>
                    <dd>
                        Figure: Talk about yourself after you know the audience a little. It is not great
                        to bring up the 'About' slide too early</dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/AboutPresenter.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/AboutPresenter.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="UseTheSameAgendaAndSummarySlide"></a>Do you use the same layout for Agenda and Summary
                    slide?</h2>
                <p>
                    A PowerPoint presentation is a verbal essay and it follows a structure. Shown at
                    the start of the presentation, the Agenda slide sets expectation.
                </p>
                <p>
                    At the end the Summary slide should be identical, and summarize what you just spoke
                    about.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/agenda.gif" alt="" /></dt>
                    <dd>
                        Figure: Slide for agenda</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/summary.gif" alt="" /></dt>
                    <dd>
                        Figure: Slide for summary (is the same as agenda)</dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/UseTheSameAgendaAndSummarySlide.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/UseTheSameAgendaAndSummarySlide.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="DivideTalkWithSectionBreakSlides"></a>Do you have a 'section break' slide?</h2>
                <p>You should have a good cover slide for each section of your presentation. They are called "section break" slides and are meant to visually divide the content structure. These slides should be
                    consistent so they do not confuse the audience.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterPowerpointPresentations/PublishingImages/CoverSlide.jpg"
                            alt="Chapter slide" /></dt>
                    <dd>
                        Figure: Good example - This is very clear that we are up to part 2 of the presentation
                    </dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/DivideTalkWithSectionBreakSlides.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/DivideTalkWithSectionBreakSlides.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="DemoSlide"></a>Do you know the right way to do a 'Demo' slide?</h2>
                <p>
                    By placing a little visual cue on your slide, you can remind yourself to show a
                    demo to the audience. Avoid displaying the word 'demo', because when out of time,
                    presenters skip them and leave the audience felling ripped off.
                </p>
                <p>
                    The icon allows you to skip it when running short on time, without upsetting the
                    audience.
                </p>
                <dl class="BadImage">
                    <dt>
                        <img src="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterPowerpointPresentations/PublishingImages//demobad.gif"
                            alt="" /></dt>
                    <dd>
                        Figure: Bad example - demo text shown. The problem is if you run out of time you
                        need to say "Sorry, let's skip that demo since I am short of time". Then the audience
                        feels cheated</dd>
                </dl>
                <dl class="GoodImage">
                    <dt>
                        <img src="Images/demo.gif" alt="" /></dt>
                    <dd>
                        Figure: Use an icon to indicate a "demo time"</dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/DemoSlide.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/DemoSlide.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="QuestionsForTheAudience"></a>Do you use standard question mark when you are going to ask the audience something?</h2>
                <p>
                    In a similar fashion to the <a href="#Demoslide">Do you remind yourself to do a demo?</a>
                    rule, you can also add a visual cue for any audience participation you would like,
                    such as questions or voting.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/SSWQuestionMark.gif" alt="" /></dt>
                    <dd>
                        Figure: Use an "?" image to tell the presenter to ask a question (if you don't have
                        an image - just use the "?" text)
                    </dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/QuestionsForTheAudience.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/QuestionsForTheAudience.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="HighQualityImages"></a>Do you use high quality images?</h2>
                <p>
                    Never stretch small, low-resolution photos to make it fill up the space. This degrades
                    the resolution and the image will appear very coarse and granular on the projection
                    screen.</p>
                <p>
                    The quality of your images is a subconscious message to your audience. If you use
                    low quality pictures, then you unintentionally suggest the same message about your
                    product.</p>
                <p>
                    For this reason, we encourage you to choose only high quality photos and to avoid
                    cartoons and word art.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/low_d.gif" alt="" /></dt>
                    <dd>
                        Figure: Bad Example - What is this monstrosity!</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/high_d.jpg" alt="" /></dt>
                    <dd>
                        Figure: Good Example - Looks classy, that
                    </dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/HighQualityImages.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/HighQualityImages.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="KeepPresentationToAFewPoints"></a>Do you keep your presentation simple?</h2>
                <p>
                    Making your presentation over-complicated is a very easy trap to fall into. Many
                    speakers make the mistake of giving way too much information.</p>
                <p>
                    In reality, giving a presentation is an entirely different genre from writing a
                    technical report.</p>
                <p>
                    <strong>KISS</strong> - In its polite form, this stands for <strong>K</strong>eep
                    <strong>I</strong>t <strong>S</strong>hort and <strong>S</strong>imple.</p>
                <ul>
                    <li>In 20 minutes, you only have time for two major points</li>
                    <li>In 30 minutes you might make three major points</li>
                    <li>In 40-45 minutes you might be able to cover four major points, but three points
                        and a longer time for questions would be a better alternative</li>
                </ul>
                <p>
                    Most experienced and talented TV presenters stick to making three points in half
                    an hour - this is surely a lesson for anyone planning a presentation.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/sweetkiss.jpg" alt="" /></dt>
                    <dd>
                        Figure: The sweet KISS of success is to only have a few points that you want the
                        audience to take away</dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/KeepPresentationToAFewPoints.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/KeepPresentationToAFewPoints.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ToDoInRed"></a>Do you make 'TODO' items in red?</h2>
                <p>
                    You might have plenty of ideas when you are preparing your presentation. Add these
                    in your TODO items - utilize them to attract your attention later in case you run
                    out of time.
                </p>
                <p>
                    Note: We suggest you keep them consistent with VS.NET e.g. "TODO: xxx"
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/Todo.jpg" alt="" /></dt>
                    <dd>
                        Figure: Put your working "TODO:" notes in red</dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/ToDoInRed.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/ToDoInRed.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="PPTTester"></a>Do you get your "PPT Tester" to do a 'Test Please'(preferably
                    a designer)?</h2>
                <p>
                    Image is everything. Improve the way you market, educate and promote yourself with
                    striking presentations. Your content might be great - but if it is displayed poorly
                    - it will be overshadowed by its flaws. Use a designer to make your presentation
                    stand out.</p>
                    <p><b>Related links</b></p>
                    <p><a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/InternalTestPlease.aspx">Do you conduct a "test please" internally and then with the client?</a></p>
                <dl class="image">
                    <dt>
                        <img src="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterPowerpointPresentations/PublishingImages/before_after.jpg"
                            alt="" /></dt>
                    <dd>
                        Figure: Before and after... Designers can make anything look good
                    </dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/PPTTester.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/PPTTester.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="BiggerScreenshot"></a>Do you use the full slide for screenshots?</h2>
                <p>
                    Small images are hard to see. Remember your audience sitting at the back of the room. Especially for screenshots displaying important text, use all your real estate.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/badSmall.jpg" alt="" /></dt>
                    <dd>
                        Figure: Bad example - the image doesn't cover the whole slide</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/goodbig.jpg" alt="" /></dt>
                    <dd>
                        Figure: Good example - Cover the whole slide with your image to make it easier for
                        people to see from the back row</dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/BiggerScreenshot.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/BiggerScreenshot.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="BulletPointsToRedAndGreen"></a>Do you know how to change bullet points?</h2>
                <p>
                    Make your positive and negative points a tick and cross.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/TicksBad.jpg" alt="" /></dt>
                    <dd>
                        Figure: Bad example - it's not clear which are good and bad points</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/TicksGood.jpg" alt="" /></dt>
                    <dd>
                        Figure: Good example - It's far more obvious which ones are the good points and
                        which are the bad</dd>
                </dl>
                <h1>
                    More information: How to do it</h1>
                <p>
                    <a href="/ssw/Standards/BetterSoftwareSuggestions/Office.aspx#RulesTicksCross">Note:
                        Microsoft should make this easier - see our suggestion</a></p>
                <dl class="Image">
                    <dt>
                        <img src="Images/RulesBullets01.jpg" alt="" /></dt>
                    <dd>
                        Figure: Right click the desired text and navigate to "Bullets and Numbering..."</dd>
                </dl>
                <dl class="Image">
                    <dt>
                        <img src="Images/RulesBullets02.jpg" alt="" /></dt>
                    <dd>
                        Figure: Select "Picture..." then "Import..." in the new window.</dd>
                </dl>
                <dl class="Image">
                    <dt>
                        <img src="Images/RulesBullets03.jpg" alt="" /></dt>
                    <dd>
                        Figure: Paste your navigation path (eg. \\skunk\ssw\Images\TickCross) in the
                        path and select the appropriate image</dd>
                </dl>
                <dl class="Image">
                    <dt>
                        <img src="Images/RulesBullets04.jpg" alt="" /></dt>
                    <dd>
                        Figure: The bullet is now loaded!</dd>
                </dl>
                <dl class="Image">
                    <dt>
                        <img src="Images/RulesBullets05.jpg" alt="" /></dt>
                    <dd>
                        Figure: Congratulations - your bullet points now show your positive and negative points</dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/DoyouknowhowtoChangeBulletPoints.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/DoyouknowhowtoChangeBulletPoints.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="Intro-QA"></a>Do you use a word document to record your audience's Questions and Answers?</h2>
                <p>
                    Open a word doc at the start of your presentation. It is a good idea to have some interaction with your audience in the form of Q&amp;A.
                    This will instill a lasting message long after your presentation is over.</p>
                <p>
                    By opening a word document on the screen or projector, everyone in the room will
                    be clear about the questions being asked and the answers being given. This will
                    also help you address any open issues after the presentation.
                </p>
                <dl class="image">
                    <dt>
                        <img src="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterPowerpointPresentations/PublishingImages/RecordQA.jpg"
                            alt="Chapter slide" /></dt>
                    <dd>
                        Figure: A nice presenting technique is to write any questions and answers from your
                        audience (live on stage)</dd>
                </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/Intro-QA.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/Intro-QA.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ThankYouSlide"></a>Do you finish your presentation with a 'Thank You' slide?</h2>
                    <p>
                    Always end your presentation with a 'Thank You' slide. More than being polite, it
                    makes clear that this is the last slide and presentation is over. You can also take
                    the opportunity to inform the audience of your contact details.</p>
                    <p>
                    Even better; if you did a good job, you might get a clap (or in Adam's case, a cough).</p>
                    <dl class="goodImage">
                        <dt><img src="Images/ThankSlide.jpg" alt="SSW Thank You slide" /></dt>
                        <dd>Figure: Always finish with a 'Thank You' slide</dd>
                    </dl>
                <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/ThankYouSlide.aspx">
                    http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/ThankYouSlide.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="SlideShare"></a>Do you know to Slideshare your PowerPoint (before the presentation)?</h2>
                <p>
                    What is Slideshare? <a shape="rect" href="http://www.slideshare.net/" shape="rect">Slideshare</a>
                    is an online archive of presentations and other documents. It is the best way to
                    store your training material for search engines and is easily accessible. Follow
                    these steps to ensure you get as much coverage as possible before and after your presentation.<p>
                        <ol>
                            <li>Prepare your PowerPoint as normal. Refer to <a shape="rect" href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/default.aspx"
                                shape="rect">SSW Rules to Better Presentations.</a> </li>
                            <li>Work on your presentation from SharePoint to allow sharing.
                            </li>
                            <li>Get your content checked by a tester and a designer (See our Rule: <a shape="rect"
                                href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/DoyougetsomeonetodoaTestPlease.aspx"
                                shape="rect">Do you get someone to do a 'Test Please'?</a>) </li>
                            <li>Before you upload to Slideshare, add two slides:
                                <ol>
                                    <li>On the last slide, add a generic Slideshare link such as http://www.slideshare.net/YourAccount
                                        - eg <a shape="rect" href="http://www.slideshare.net/SSWConsulting/" shape="rect">
                                            http://www.Slideshare.net/SSWConsulting/</a> </li>
                                    <li>On the first slide add a note that contains the version. This is so that you can compare easily what version is on SharePoint and what is on Slideshare </li>
                                </ol>
                            </li>
                            <li>Rename your PowerPoint to include the version number. For example, if the file in
                                SharePoint is called “SharePoint-Jonah-Lomu-of-CMS.pptx” it will be renamed to “SharePoint-Jonah-Lomu-of-CMS-ver1-9.pptx”
                            </li>
                            <li>Upload to Slideshare </li>
                            <li>Don’t forget to add a “_OnSlideshare.txt” in SharePoint that contains the url
                            </li>
                            <li>Now you can present! </li>
                        </ol>
                        <dl class="image">
                            <dt>
                                <img alt="" src="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/PublishingImages/slideshareend.jpg"
                                    complete="complete" />
                            </dt>
                            <dd>
                                Figure: At the end – an example of a Slideshare link slide</dd>
                        </dl>
                        <font color="red">*Note: Moved to <a href="http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/Do-you-know-to-Slideshare-your-PowerPoint.aspx">
                            http://rules.ssw.com.au/Communication/RulesToBetterPowerpointPresentations/Pages/Do-you-know-to-Slideshare-your-PowerPoint.aspx</a></font>
            </li>
        </ol>
    </div>
    <h2>
        <a name="Acknowledgements"></a>Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TKK">Tristan Kurniawan</a><br />
    </p>
</asp:Content>
