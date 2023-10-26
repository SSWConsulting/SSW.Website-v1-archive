<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Websites &#8211; Layout/Formatting & Content" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>Do you agree with them all? Are we missing some? Email us your tips, thoughts or arguments. <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230546F25323042657474657225323057656273697465732532304C61796F7574')"> Let us know</a> what you think.</p>
    <p><img src="/ssw/Images/Validation/redstar.gif" alt="Redstar" width="18" height="14" /> Indicates important rule</p>

    <div class="greyBox">
        <p>Rules moved to <a href="http://rules.ssw.com.au/WebSites/RulesToBetterWebsitesLayout/" target="_blank">Rules to Better Websites - Layout And Formatting on rules.ssw.com.au</a>.</p>
    </div>
    
    <div class="TableOfContents">
        <h3>SSW Rules to Better Websites &#8211; Layout/Formatting &amp; Content</h3>
        <ol>
            <%--<li><a href="#homepage-video">Videos - Do you have a video on the homepage of products websites?</a></li>
            <li><a href="#WriteInEyeWitnessStyle">Web content - Do you write in the newsreader and eye witness style?</a></li>
            <li><a href="#IndicateRequiredFields">Forms - Do you indicate which fields are required and validate them?</a><img src="/ssw/Images/Validation/redstar.gif" alt="" width="18" height="14" /></li>
            <li><a href="#LinkButton">Forms - Do you know when to use links and when to use buttons?</a><img src="/ssw/Images/Validation/redstar.gif" alt="" width="18" height="14" /></li>
            <li><a href="#Banana-rule">Do you have a call to action on your web pages (aka The Banana Rule)?</a><img src="/ssw/Images/Validation/redstar.gif" alt="" width="18" height="14" /></li>
            <li><a href="#ImageWorthMillionWords">Figures - Do you use images to reduce the words?</a></li>
            <li><a href="#AlwaysAddFiguretoImages">Figures - Do you add useful figure text (aka a caption) to avoid a lot of text over images?</a></li>
            <li><a href="#GoodBadImages">Figures - Do you use 'Bad Example' and 'Good Example' with ticks and crosses in captions?</a></li>
            <li><a href="#AddFigureWithRightCode">Figures - Do you use the right HTML code to add the useful figure/caption?</a></li>
            <li><a href="#MessageBox">Do you use the right HTML/CSS code to add a message box?</a></li>
            <li><a href="#acknowledge">Do you always acknowledge your work?</a></li>
            <li><a href="#PrintWell">Printing - Do you have a print.css file so your web pages are nicely printable?</a></li>
            <li><a href="#MultipleBrowserCompatibility">Do you check your website is multi-browser compatible (tested on the main web browsers)?</a></li>
            <li><a href="#Beyond-Responsive">Do you know to go Beyond Responsive Web Design when targeting mobile devices?</a></li>
            <li><a href="#Responsive">Do you design your web pages to work on mobile/tablets screens (AKA Responsive web design)? </a></li>
            <li><a href="#loginDialog">Authentication - Do you have a user friendly registration and sign in screen?</a></li>
            <li><a href="#EmailvsUserName">Authentication - Do you use email address instead of user name?</a></li>
            <li><a href="#ForgotPassword">Authentication - Do you have a 'Forgot my password' link?</a></li>
            <li><a href="#RememberMeCheckbox">Authentication - Do you have a 'Remember Me' checkbox?</a></li>
            <li><a href="#Signmeinautomatically">Authentication - Do you have a 'Sign me in automatically' check box?</a></li>
            <li><a href="#LogoutShortCut">Authentication - Do you have a 'Logout' short cut?</a></li>
            <li><a href="#ResultsScreen">Do you have a consistent search results screen? (aka the Google Grid)</a></li>
            <li><a href="#NoScrollBar">Do you avoid horizontal scroll bars?</a></li>
            <li><a href="#OversizedWidth">Printing - Do you check for oversized Images and table?</a></li>
            <li><a href="#AvoidWidthOnTableTag">Do you know table tags should not specify the width?</a></li>
            <li><a href="#AvoidUsingFlashSilverlight">Do you avoid using Flash/Silverlight?</a></li>
            <li><a href="#CSSStyle">Do you use DocType in Web Pages while using CSS style sheets?</a></li>
            <li><a href="#ResultsInComboBoxes">Do you include the number of results in your drop down list?</a></li>
            <li><s><a href="#BackLink">Do you use &quot;&lt; Back&quot; instead of &quot;&lt; Previous&quot; or other variations?</a></s> <span style="color:#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/WebSites/RulesToBetterWebsitesLayout/Pages/UseBackLink.aspx"> sharepoint.ssw.com.au/Standards/WebSites/RulesToBetterWebsitesLayout/Pages/UseBackLink.aspx</a></span></li>
            <li><a href="#PredictiveText">Do you use predictive-textboxes instead of normal combo or text boxes?</a></li>
            <li><a href="#AddDatetoCalendar">Can your users easily add an event to their calendar?</a></li>
            <li><a href="#CorrectDefault">Do you have the correct default for a URL field?</a></li>
            <li><a href="#EmbedFont">Do you know how to effectively use non-standard font on your website?</a></li>
            <li><a href="#choosingFonts">Do you know it's important to make your fonts different?</a></li>
            <li><s><a href="#NoResetButton">Do you avoid having Reset buttons on webforms?</a></s><span style="color:#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Websites/RulesToBetterWebsitesLayout/Pages/NoResetButton.aspx"> sharepoint.ssw.com.au/Standards/Websites/RulesToBetterWebsitesLayout/Pages/NoResetButton.aspx</a></span></li>
            <li><a href="#StatusIcon">Do you use icons in web pages to indicate status directly?</a></li>
            <li><a href="#Apostrophes">Do you use correct symbols for apostrophes?</a></li>
            <li><a href="#AddRules">How do you get your rule added?</a></li>
            <li><a href="#SetMaxWidth">Do you set the maximum width for your page?</a></li>
            <li><a href="#ShowDownloadProgress">Do downloads show progress and total size?</a></li>
            <li><a href="#AssociatedControl">Good Forms: Do you click a label and have the focus set to the field by using &lt;label&gt;?</a></li>
            <li><a href="#FieldHints">Good Forms: Do you provide field hints?</a></li>
            <li><a href="#breathingRoom">Do you provide enough "breathing room" around the text?</a></li>
            <li><a href="#SeparateError">Good Forms: Do you provide red errors next to the field?</a></li>
            <li><a href="#FieldSet">Good Forms: Do you provide grouping using &lt;fieldset&gt;?</a></li>
            <li><a href="#ImproveSearch">Search Results - Do you always give more information under &#8220;Did not match anything&#8221;?</a></li>
            <li><a href="#KeepSameRatio">Do you keep the same height / width ratio as the original image?</a></li>
            <li><a href="#HeadingStrongBold">Do you know not to use bold or strong tags inside Headings?</a></li>
            <li><a href="#TimesNewRoman">Do you know not to use Times New Roman font in your site?</a></li>
            <li><a href="#URLTitleCase">Do your page names use Title Case?</a></li>
            <li><a href="#WebSlices">Do you use IE Web Slices to give website users regular updates?</a></li>
            <li><a href="#ContentFormat">Do you know what format your content should be in? (Docs or Web pages)</a></li>
            <li><a href="#FriendlyURL">Do you know to use friendly URL's where you can?</a></li>--%>
        </ol>
    </div>

    <div id="mainContent">
        <ol>
            <%--<li>
                <h2>Videos - Do you have a video on the homepage of products websites?<a name="homepage-video"></a></h2>
                    <p>The best way to show the features of a product is creating a video. The information you are able to communicate in seconds of a video would take hundreds of words of text to explain.</p>
                    <p>Videos are also important for services, but for products it should be <strong>in the homepage</strong>.</p>
                    <dl class="goodImage">
                        <dt><img src="Images/dropbox-homepage.jpg" alt="Dropbox homepage" /></dt>
                        <dd><a href="https://www.dropbox.com/" target="_blank">Good Example - Dropbox homepage</a> has no text but a video that shows nicely how it works</dd>
                    </dl>
                    <h4>Videos are also good for SEO</h4>    
                    <p>By embedding videos onto your website it will help get the videos more views, which is a determinant for Google nowadays.</p>
            </li>
            <li>
                <h2><a name="WriteInEyeWitnessStyle"></a>Web content - Do you write in the newsreader and eye witness style?</h2>
                    <p>General web content should always be written as if read by a newsreader. It is objective and describes its content professionally. A good example of this is Wikipedia.</p>
                    <dl class="badImage">
                        <dt>
                            <p class="greyBox" style="width: 480px;">
                            I don't like JavaScript. I prefer jQuery because...</p>
                        </dt>
                        <dd>Figure: Bad Example - using 1st person writing makes it sound like opinion</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt>
                            <p class="greyBox" style="width: 480px;">
                            jQuery is superior to JavaScript for this because...</p>
                        </dt>
                        <dd>Figure: Good Example - using 3rd person writing makes it sound like fact</dd>
                    </dl>
                    <p>However, when quoting a testimonial, you should use 1st person writing as if a newsreader had crossed over to an eye witness for a personal view of the topic.</p>
                    <dl class="badImage">
                        <dt>
                            <p class="greyBox" style="width: 480px;">
                            Don Bradman thought that SSW's work was fantastic!</p>
                        </dt>
                        <dd>Figure: Bad Example - impersonal</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt>
                            <p class="greyBox" style="width: 480px;">
                            Don Bradman says: "I thought that SSW's work was fantastic!"</p>
                        </dt>
                        <dd>Figure: Good Example - 1st person in this context is appropriate</dd>
                </dl>
            </li>

            <li>
                <h2>
                    <a name="IndicateRequiredFields"></a>Forms - Do you indicate which fields are required and validate them?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Important Rule" width="18" height="14" /></h2>
                    <p>Always indicate which fields are required. Users get frustrated when they experience a wasted trip to the server, just because they did not get an obvious indication of what was required first time around.</p>
                    <dl class="badImage">
                        <dt><img src="Images/Required-field_Bad-example.jpg" alt="Bad example of Web Sites Required Fields" /></dt>
                        <dd>Figure: Bad example - No visual indication for required fields when a user first sees the form</dd>
                    </dl>
                    <p>A designer will know the best way to indicate required field depending on the layout. However if you are in doubt and don&#8217;t have a designer around, a red asterisk is definitely the best option.</p>
                    <dl class="goodImage">
                        <dt><img src="Images/Redstar_Good-example.jpg" alt="Use a simple asterisk character" /></dt>
                        <dd>Figure: Good Example - A visual indication of what fields are required (use a red asterisk if you are not a designer)</dd>
                    </dl>
                    <h4>More Information</h4>
                    <p>You should combine these visual indicators with appropriate client and server side validators to make sure that your data conforms to business requirements. Adding a RequiredFieldValidator to the above textboxes gives you data validity check with minimal coding.</p>
                    <dl class="badImage">
                        <dt>
                            <pre>&lt;asp:Textbox runat="Server" ID="email" /&gt;</pre>
                        </dt>
                        <dd>Figure: Bad Example - No validator used, so the user won't know the email is required</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt>
                            <pre>&lt;asp:Textbox runat="Server" ID="email"/&gt;
    <br />&lt;asp:RequiredFieldValidator runat="Server" ControlToValidate="email" ErrorMessage="Please enter an email address"
    <br />ID="emailReqValidator" /&gt;</pre>
                        </dt>
                        <dd>Figure: Good Example - an ASP.NET validator in use, to indicate the fields required</dd>
                    </dl>
                    <div class="greyBox"><p><strong>Note: </strong>For ASP.NET Dynamic Data although validation is done differently (under the covers it is using a field template + the ASP.NET validator)</p></div>
            </li>

            <li>
                <h2>
                    <a name="LinkButton"></a>Forms - Do you know when to use links and when to use buttons?<img src="/ssw/Images/Validation/redstar.gif" alt="Important Rule" width="18" height="14" /></h2>
                    <p>It seems nearly all web developers are confused whether they should use hyperlinks or buttons on forms. The recommendation is that whenever data is being submitted (e.g. Save, Cancel, Apply) you should use a button, otherwise use a link.</p>
                    <p>This is because hyperlinks indicate navigation - &quot;If I click this link, I'll be taken somewhere else&quot;.</p>
                    <p>Whereas a button indicates that something is being processed - &quot;When I click this, I'm agreeing that something is being submitted&quot;</p>
                    <h4>Note: If you are using an automated link checker</h4>
                    <p>It is important you use buttons for updating or deleting data on your website. The main reason is problems will occur when you run a link checker (we run <a href="/ssw/LinkAuditor/"> SSW Link Auditor</a>), and you have data driven pages with &quot;Update&quot; or &quot;Delete&quot; hyperlinks. The link checker will try to go to all associated links and potentially delete a lot of data from your website database.</p>
                    <p>But you say &quot;My Delete links have JavaScript protection e.g. Are you sure you want to delete?&quot;. It is still no good because link checkers ignore all JavaScript validation.</p>
                    <p>Thus, we must have:</p>
                    <ul>
                        <li>Password protected areas on the website when we can update the database records via the web</li>
                        <li>All update ability must be via buttons, not hyperlinks (as buttons are known on the web to submit a form).</li>
                    </ul>
                    <p>That being said, there are a couple of exceptions to this rule.</p>
                    <ol>
                        <li>If you want the user to be able to right click and &quot;Open in New Window&quot;</li>
                        <li>If you want a consistent design feel (and there is no confusion that the link is accepting data)</li>
                    </ol>
                    <dl class="image">
                        <dt><img src="Images/LinksExample.gif" alt="Links Example" /></dt>
                        <dd>Figure: An exception to the rule - an &quot;Update&quot; button inside the datagrid would look inconsistent</dd>
                    </dl>
                    <dl class="badImage">
                        <dt><img src="Images/LinkVsButton.gif" alt="Links Vs Button" /></dt>
                        <dd>Figure: Bad Example - The &quot;sign in&quot; hyperlink should be a button</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt><img src="Images/Logon.gif" alt="Correct sign in" /></dt>
                        <dd>Figure: Good Example - This is a perfect example of how a good sign in screen should look</dd>
                    </dl>
            </li>

            <li>
                <h2><a name="Banana-rule"></a>Do you have a call to action on your web pages (aka The Banana Rule)?</h2>
                    <p>If you want users to take action on the web page content, add a &quot;banana&quot; - something that makes it obvious what the user is supposed to do.</p>
                    <p>For example, if your page is selling software, make it easy for your users to make a purchase. People don't have a lot of time to read your entire page and find the right link, so it is important to grab their attention by using a &quot;banana&quot;.</p>
                    <h4>Why do we call it "banana rule"?</h4>
                    <p>
                    How would you get a monkey pay attention to something? You could lure him by tempting
                    him with a banana. Once we have the monkeys attention focused on the banana, he
                    will try to get his hands on it regardless of the barriers on his way.</p>
                    <dl class="image">
                        <dt><img src="Images/MonkeyWithBanana.gif" alt="Getting attention of monkey with banana" /></dt>
                        <dd>Figure: If the monkey can see the banana, he will do whatever it takes to get it</dd>
                    </dl>
                    <p>Here are some examples of how the "banana rule" should be applied:</p>
                    <dl class="badImage">
                        <dt><img src="Images/BadBananaQantas.png" alt="Bad use of banana in Qantas.com.au" /></dt>
                        <dd>Figure: Bad Example &#8211; "Points+Pay"button takes the attention over "Go", which should be the "banana"</dd>
                    </dl>
                    <dl class="badImage">
                        <dt><img src="Images/CodeAuditorBananaBad.gif" alt="Bad use of banana in ssw.com.au" /></dt>
                        <dd>Figure: Bad Example - Can you see the "banana" here? There is none. The goal is to get someone to try the software by clicking on the "Try It Now" link and it isn't clear</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt><img src="Images/amazonBanana.gif" alt="Good use of banana in amazon.com" /></dt>
                        <dd>Figure: Good Example - Can you see the banana here on the Amazon page? It is the &quot;Add to Shopping Cart&quot; button</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt><img src="Images/CodeAuditorBanana.gif" alt="Good use of banana in ssw.com.au" /></dt>
                        <dd>Figure: Good Example - Can you see the banana here on the SSW page? It is the &quot;Free Download&quot; button</dd>
                    </dl>
                    <p>So, remember most pages need a "banana" to get them to where you want them. "Bananas" are big, simple and stand out from the rest of the page</p>
                    <dl class="goodImage">
                        <dt><img src="Images/BestBananaCodeAuditor.png" alt="Good use of banana in ssw.com.au" width="500px"/></dt>
                        <dd>Figure: Better Example - The banana stands out more and is placed in a more prominent position. It's OK to have two bananas if they take you to the same goal</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt><img src="Images/BananaTeamviewer.png" alt="Good use of banana in Teamviewer.com"/></dt>
                        <dd>Figure: Great Example - Team Viewer also has a good banana</dd>
                    </dl>
            </li>
            
            <li>
                <h2><a name="ImageWorthMillionWords"></a>Figures - Do you use images to reduce the words?</h2>
                    <p>An image is worth a thousand words, it's true. So if you can remove text and replace with an image, do so.</p>
                    <p>So we need a better way to present an image on our website and it should be easy enough to create a decent look.</p>
                    <dl class="badImage">
                        <dt>
                            <pre>You then have this pretty white flower with a green stem standing on a water pond. It is beautiful.</pre>
                        </dt>
                        <dd>Figure: Bad example - Here we have text describing a flower</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt><img src="Images/flower.jpg" /></dt>
                        <dd>Figure: Good example - Here we have a picture (could be a screen capture) which avoids a thousand words</dd>
                    </dl>
                    <p>What else can you do?</p>
                    <ul>
                        <li>Use good captions - See <a href="#AlwaysAddFiguretoImages">Do you add useful and bold figure text (aka a caption) to avoid a lot of text over images?</a></li>
                        <li>Use good HTML - See <a href="#AddFigureWithRightCode">Do you use the right HTML/CSS code to add the useful figure/caption?</a></li>
                    </ul>
            </li>

            <li>definitely

                <h2>
                    <a name="AlwaysAddFiguretoImages"></a>Figures - Do you add useful and bold figure text (aka a caption) to avoid a lot of text over images?</h2>
                    <p>When you add an image to a website or application, follow the Microsoft Word standard and use <strong>&quot;Figure: Description&quot;</strong> to describe your images.</p>
                    <p>It's the best way of ensuring you catch users' attention to the content of your page. When you're scanning a newspaper for interesting articles, you'll check out the pictures, read the accompanying description, and if it sounds interesting you'll go back and read the article.</p>
                    <p>Users read websites in a similar fashion. Catch their attention with an image, and then keep it with a useful description. Don't just describe what the image is; say what it's used for in the context of the document. Look at these bad and good captions.</p>
                    
                    <dl class="goodImage">
                        <dt><img src="Images/good-caption.jpg" alt="Good Caption" /></dt>
                        <dd>Figure: Good Example - Some nice useful text describing the image</dd>
                    </dl>
                    <p>It is especially important that images serve a purpose, as opposed to images which are there solely for design.</p>
                    <p>Read <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/HowToUseBalloons.aspx ">Screenshots - Do you use balloons instead of a 'Wall of Text'? </a></p>
            </li>

            <li>
                <h2><a name="GoodBadImages"></a>Figures - Do you use 'Bad Example' and 'Good Example' with ticks and crosses in captions?</h2>
                    <p>The best way to emphasize your point is to "build" the pain first and then show the solution. So we use "Bad Example" and "Good Example" in the captions where possible.</p>
                    <p>To do this, we give a bad example and raise users' expectation first.</p>
                    <dl class="badImage">
                        <dt><img alt="bad example" src="../images/ImageBadExample.gif" /></dt>
                        <dd>Figure: Bad Example - kid not in his seat</dd>
                    </dl>
                    <p>Now we can show the solution and give a good example as the result, make them feel released.</p>
                    <dl class="goodImage">
                        <dt><img alt="good example"  src="Images/kid-in-airplane-seat.jpg" /></dt>
                        <dd>Figure: Good Example - kid in his seat</dd>
                    </dl>
            </li>

            <li>
                <h2>
                    <a name="AddFigureWithRightCode"></a>Figures - Do you use the right HTML/CSS code to add the useful figure/caption?</h2>
                    <dl class="badImage">
                        <dt>
                            <pre>
    &lt;img src="Images/MonkeyWithBanana.gif" alt="Getting attention of monkey with banana" width="381" height="198" /&gt;
    &lt;b&gt;Figure: If the monkey can see the banana, will he do whatever it takes to get it?&lt;/b&gt;
                    </pre>
                        </dt>
                        <dd>Figure: Bad example - because the styling needs to be done here - e.g. adding bold, adding green tick and adding grey border</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt>
                            <pre>
    &lt;dl class="image"&gt;
        &lt;dt&gt;
            &lt;img src="Images/MonkeyWithBanana.gif" alt="Getting attention of monkey with banana" width="381" height="198" /&gt;
        &lt;/dt&gt;
        &lt;dd&gt;Figure: If the monkey can see the banana, will he do whatever it takes to get it?&lt;/dd&gt; 
    &lt;/dl&gt;
                    </pre>
                        </dt>
                        <dd>Figure: Good example - because the CSS adds the styling - border around the image and makes the text bold (Note: SSW specific)</dd>
                    </dl>
            </li>

            <li>
                <h2>
                    <a name="MessageBox"></a>Do you use the right HTML/CSS code to add a message box?</h2>
                <p>
                    Since the dawn of the Internet, user message boxes have troubled developers. Previously,
                    developers only really had a couple of options to inform the user about some information,
                    but now all they need to do is insert the right HTML and the message box will look
                    nice and consistent.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/JsMessageBox.jpg" alt="HTML Message Box" /></dt>
                    <dd>
                        Figure: Bad example - Javascript alerts looks bad</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/HtmlMessageBox.gif" alt="HTML Message Box" /></dt>
                    <dd>
                        Figure: Good example - How a HTML message box should look</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="acknowledge"></a>Do you always acknowledge your work?</h2>
                <p>
                    Why do so many interesting pages have no owner? There are countless articles on
                    the web that have left the reader wondering, "Who wrote this? What is their background?"</p>
                <p>
                    Sometimes, the only available link is a mailto: to email the author, which doesn't
                    say anything about them. Sure, contact info is often a good part of the biography,
                    but it should not be the primary or only piece of data about the author.</p>
                <p>
                    Different article layouts can be:</p>
                <ul>
                    <li>Articles with a column and no authors listed - <strong>Very Bad</strong></li>
                    <li>Articles with authors but no link to their biographies - <strong>Bad</strong></li>
                    <li>Articles with authors but only a &quot;mailto:&quot; link for direct email - <strong>
                        Average</strong></li>
                    <li>Articles with an acknowledgements section and a link to the biographies - <strong>
                        Good</strong></li>
                </ul>
                <p>
                    Users often want to know the people behind information. Biographies and photographs
                    of the authors help make the web a less impersonal place and increase trust. Personality
                    and point-of-view always win over anonymity.</p>
                <p>
                    So every web page or document should have an owner and include a link to their biography.</p>
                <p>
                    Look at this example of <a href="#Acknowledgements">article acknowledgements</a>.</p>
                <p>
                    <strong>Note</strong>: &quot;mailto:&quot; links <a href="/ssw/Standards/Rules/RulesToBetterWebsitesNavigation.aspx#TheIcons">
                        should always have an icon</a> next to them.</p>
            </li>
            <li>
                <h2>
                    <a name="PrintWell"></a>Printing - Do you have a print.css file so your web pages
                    are nicely printable?</h2>
                <p>
                    People often print web pages. As we know reading from a screen is not nearly as
                    good (yet) as reading from paper. But in general web designers don't think about
                    printing when putting a web site up, meaning we're left with web pages that frustratingly
                    don't properly print on to paper. It works in the same way as a regular stylesheet,
                    except it only gets called up when the page is printed, by setting the command media
                    to be "print", as per below:</p>
                <dl>
                    <dt>
                        <pre>
&lt;link rel=&quot;stylesheet&quot; href=&quot;print.css&quot; type=&quot;text/css&quot; media=&quot;print&quot; /&gt;
			    </pre>
                    </dt>
                </dl>
                <p>
                    The <strong>print.css</strong> file should have 100% width and is used to hide elements
                    that you don't want to appear when printing a web page, such as adverts, background
                    and animated images etc.</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/printing-areas.jpg" alt="Printing Areas" />
                    </dt>
                    <dd>
                        Figure: The highlighted areas are set to "display:none" by the print stylesheet</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="MultipleBrowserCompatibility"></a>Do you check your website is multi-browser compatible (tested on the main web browsers)?</h2>
                    <p>Target the most used browsers by default. You should design a website to look good when being viewed in Google Chrome, IE (latest version) and Mozilla Firefox unless the client specifically requests otherwise. There are a lot of other browsers available, but it is important to consider that most other browsers are based on Chrome, IE or Firefox. Pages designed for them should be readable using these other browsers.</p>
                    <p>Note that readable is not perfect. There may be some page elements that are less than perfect, but it's just not worth the ammount of time to fix small bugs on every single browser.</p>
                    <p>In case of major bugs, these are the most typical things that you will need to fix:</p>
                    <ul>
                        <li>JavaScript Menus</li>
                        <li>Dynamic HTML</li>
                        <li>VB Script</li>
                    </ul>
                    <dl class="image">
                        <dt>
                            <img src="Images/GoogleAnalyticsBrowsers2009.jpg" alt="Google Analytics - browsers 2009" /></dt>
                        <dd>Figure: Different Browsers by Google Analytics showing only 4% for Google Chrome and less than 2% for Safari back in 2009. Things have changed a lot</dd>
                    </dl>
                    <dl class="image">
                        <dt>
                            <img src="Images/GoogleAnalyticsBrowsers2013.jpg" alt="Google Analytics - browsers 2013" /></dt>
                        <dd>Figure: In 2013, Google Analytics shows Google Chrome is the most used browser with 40% of the visits</dd>
                    </dl>
                    <p>See more <a href="/ssw/Redirect/Web/OReillyRadar.htm" target="_blank" class="external">statistics on browser usage.</a>
                    <p><strong>Tip:</strong> Use <a href="https://browserling.com/" target="_blank">Browserling</a> to test your site on the main browsers in one click.</p>
            </li>

            <li>
                <h2><a name="Beyond-Responsive"></a>Do you know to go Beyond Responsive Web Design when targeting mobile devices?</h2>
                <p>Responsive Web Design is great. It lets you alter the display of a web page using CSS to better suit screens of different sizes.</p>
                <p>When building websites targeting mobile devices it is only part of the solution however.</p>
                <dl class="image">
                    <dt><iframe width="640" height="360" src="http://www.youtube.com/embed/IUE6Ut0GXi4?rel=0&start=1560&end=1610&autoplay=0&loop=0&playlist=IUE6Ut0GXi4" frameborder="0" allowfullscreen></iframe></dt>
                    <dd>Figure: Watch the <a href="http://tv.ssw.com/4681/writing-mobile-sites-lessons-learned-top-tips-web-developers" target="_blank">clip with Dino Esposito</a> to find out why</dd>
                </dl>
            </li>

            <li>
                <h2><a name="Responsive"></a>Do you design your web pages to work on mobile/tablets screens (AKA Responsive web design)?</h2>
                <p>You may be nicely equipped with a 21" monitor running at a resolution of 1920x1440px at work, but in a business travel or meeting people will only have their mobile phone or tablet.</p>
                <p>Your website should work nicely on screens that vary from a mobile/tablet to a large PC monitor.</p>
                <dl class="goodImage">
                    <dt><img src="Images/Responsive-Design.jpg" alt="Responsive Design" /></dt>
                    <dd>Figure: Good example - A modern website adapts to different screens</dd>
                </dl>
                <p>Know more at <a href="http://www.smashingmagazine.com/2011/01/12/guidelines-for-responsive-web-design/">Responsive Web Design: What It Is and How To Use It</a>.</p>
            </li>
            <li>
                <h2>
                    <a name="loginDialog"></a>Authentication - Do you have a user friendly registration and sign in screen?</h2>
                <p>
                    For a web site that expects a lot of first-time visitors, it is wise to put the
                    user registration form on the same page as the sign in dialog. This saves having the
                    user click on another link to enter their details.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadloginDialog.gif" alt="Bad sign in Dialog" /></dt>
                    <dd>
                        Figure: Bad example - non-friendly sign in screen</dd>
                </dl>
                <p>
                    The image is a bad example of a dialog box because:
                </p>
                <ul>
                    <li>You can easily enter the correct data and click the wrong hyperlink (i.e. Join or
                        sign in)</li>
                    <li>By well-established convention, buttons should be used whenever form data is to
                        be submitted back to the server</li>
                    <li>The &quot;Forgot my Password&quot; link is ambiguous - Does it take me to a new
                        page or do I have to enter the email address field first?</li>
                    <li>A button, not a link, should be used for submitting data, as links don't allow the
                        user to hit &quot;enter&quot;</li>
                </ul>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodloginScreen1.gif" alt="Good sign in Screen 1" /></dt>
                    <dd>
                        Figure: Good example - friendly sign in screen for many new visitors</dd>
                </dl>
                <p>
                    For a web site that expects few first-time visitors, this is a good sign in screen,
                    as it is clean and concise:</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodloginScreen2.gif" alt="Good sign in Screen 2" /></dt>
                    <dd>
                        Figure: Good example - friendly sign in screen for few new visitors</dd>
                </dl>
                <p>
                    Generally, the action buttons should be aligned to the right:</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadloginScreen3.gif" alt="non-friendly sign in screen with action button aligned to the left" /></dt>
                    <dd>
                        Figure: Bad example - non-friendly sign in screen with action button aligned to the
                        left</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodloginScreen3.gif" alt="non-friendly sign in screen with action button aligned to the right" /></dt>
                    <dd>
                        Figure: Good example - friendly sign in screen with action button aligned to the right</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="EmailvsUserName"></a>Authentication - Do you use email address instead
                    of user name?</h2>
                <div class="quoteRightWrap">
                    <blockquote>
                        I do recommend letting users enter their email address instead of a user ID: It's
                        guaranteed to be unique and it is easy to remember.</blockquote>
                    <p>
                        Jakob Nielsen, <a href="/SSW/Redirect/useit1.htm">www.useit.com</a></p>
                </div>
                <p>
                    It is easier for users to remember their frequently accessed email address more
                    so than one of their many user names. For this reason, it is best to use email address
                    instead of user name for the sign in page.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/badNoForgotPasswordLink.jpg" /></dt>
                    <dd>
                        Figure: Bad example - users have to remember which user name applies to this particular
                        website</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/goodForgotMyPasswordLink.jpg" /></dt>
                    <dd>
                        Figure: Good example - users will always remember their primary email address</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="ForgotPassword"></a>Authentication - Do you have a 'Forgot my password'
                    link?</h2>
                <p>
                    It's easy and common for users to forget their passwords, the vital key which grants
                    them access to the services they are eligible for. To cater for this instance, it
                    is important to have a 'Forgot my password' link on the sign in page.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/badNoForgotPasswordLink.jpg" alt="Bad example - no 'forgot password' link" /></dt>
                    <dd>
                        Figure: Bad example - what will happen for the poor user that forgot his password?</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/goodForgotMyPasswordLink.jpg" alt="Good example - 'forgot password' link" /></dt>
                    <dd>
                        Figure: Good example - users have an option if they forget their password</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="RememberMeCheckbox"></a>Authentication - Do you have a 'Remember Me' checkbox?</h2>
                <p>
                    It is always good to provide the user with an option to have their username and password remembered. Doing so means they don't have to type them again.</p>
                <dl class="goodImage">
                    <dt><img src="Images/RememberMeCheckbox.jpg" alt="Remember me checkbox" /></dt>
                    <dd>Figure: 'Remember Me' checkbox in a Windows App</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/timepro-remember.jpg" alt="Remember me checkbox" /></dt>
                    <dd>Figure: 'Remember Me' checkbox in a Web Form</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="Signmeinautomatically"></a>Authentication - Do you have a 'Sign me in automatically'
                    check box?</h2>
                <p>
                    When you present visitors to your site with an opportunity to sign in, you should
                    always include an option to have that person signed in automatically.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/SignInAutomatically.gif" alt="Sign In Automatically" /></dt>
                    <dd>
                        Figure: 'Sign me in automatically' checkbox is available</dd>
                </dl>
                <p>
                    This should be implemented simply by using a check box. A cookie should be stored
                    on the user's computer so that next time they visit your site the sign in process
                    is automatic.
                </p>
            </li>

            <li><a name="LogoutShortCut"></a>
                <h2>Authentication - Do you have a 'Logout' short cut?</h2>
                <p>
                    Although most of the sites have a 'Log Off' submenu, we recommend adding a short
                    cut next to the user name, this will make the 'log Off' operation more convenient.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/NoLogoutShortCut.gif" alt="Bad example - only has a 'Log Off'" /></dt>
                    <dd>
                        Figure: Bad example - Only has a 'Log Off' operation in the submenu</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/LogoutShortCut.gif" alt="Good example - has a 'Logout'" /></dt>
                    <dd>
                        Figure: Good example - Has a 'Logout' short cut next to the user name</dd>
                </dl>
                <h3>
                    ASP.NET source - part of the header</h3>
                <pre>...
<br />                                    
                                    &lt;% If (userName &lt;&gt; String.Empty) Then%&gt;
                                    <br />
                                    &lt;div class="loggedin"&gt;Logged in as &lt;a href=/ssw/Shop/ClientDetail.aspx&gt;&lt;%=userName%&gt;&lt;/a&gt;
<br /><span class="highlight">&lt;strong&gt;(&lt;a href=/ssw/Shop/sign in.aspx?Action=Logout>Logout&lt;/a&gt;)&lt;/strong&gt;</span> &lt;/div&gt;
                                    <br />
                                    &lt;%End If%&gt;
<br />
                                    ...
<br />
                                </pre>
            </li>
            <li>
                <h2>
                    <a name="ResultsScreen"></a>Do you have a consistent search results screen? (aka the Google Grid)</h2>
                <p>
                    Every website out there has a page which displays the results of a search. I am
                    amazed that no standard has been adopted throughout the Web as nearly every site
                    seems to have a different way of displaying data.</p>
                <p>
                    However, Google is a very good example for displaying search results. Their result
                    pages are clear and efficient, especially for a large result set.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/GoogleSearchResult.jpg" alt="Google result" /></dt>
                    <dd>
                        Figure: Good example &#8211; adopt <a href="http://www.google.com.au/search?hl=en&q=ssw&btnG=Google+Search&meta=">Google's search result layout</a>  </dd>
                </dl>
                <p>                    
                So adopt Google's search result layout and it will give new and regular users a better navigation experience.
                Here's our standard layout for our search function.
                </p>
                <p>Want the 'Google grid'? Then follow these rules to help users to navigate:
                    </p>
                <ol>
                    <li>Filters at the top (if more than one search parameter,then add a "search" button)</li>
                    <li>The number of results found + how many seconds the search took to execute</li>
                    <li>A statement that explains the criteria that you used for searching (or keep the criteria in the text box like google does)</li>
                    <li>The number of pages found (hyperlinks centered in the middle), and these hyperlinks
                        should be shown on the footer of the page only.</li>
                </ol>
                <dl class="image">
                    <dt>
                        <img src="Images/Rule-weblayout-searchresult-1.gif" alt="Result Pages" /></dt>
                    <dd>
                        Figure: The header of <a href="/ssw/Products/ProdCategoryList.aspx">SSW results screen
                        </a>- filter, number of results found, search criteria and time taken</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/Rule-weblayout-searchresult-2.gif" alt="Result Pages" /></dt>
                    <dd>
                        Figure: Good example - The footer of <a href="/ssw/Products/ProdCategory.aspx?CategoryID=CODAUD">SSW product order listing page</a>
                        has the hyperlinks for pages 1 to 10 centered</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/GoodGoogle.jpg" alt="Result Pages" /></dt>
                    <dd>
                        Figure: Google's classic search results</dd>
                </dl>
                <p>
                    Examples of pages that follow this rule:</p>
                <ul>
                    <li><a href="/ssw/Products/ProdCategory.aspx?CategoryID=CODAUD">SSW Product order listing page</a></li>
                    <li><a href="/ssw/Download/Download.aspx">SSW download listing page</a></li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="NoScrollBar"></a>Do you avoid having a horizontal scroll bar?</h2>
                <p>
                    One of the most annoying things when you're surfing a site is to have to use a horizontal
                    scroll bar to view all of the information. Not being able to view all the information
                    from left to right of screen, makes the web page harder and slower to read. The
                    Reader should find the web page easy to navigate, to make viewing the website an
                    enjoyable experience.</p>
                <p>
                    Therefore it is bad web design to use a horizontal scroll bar. When designing your
                    site, the page text should respect the user's desire to resize the browser window
                    and have text wrap correctly. Also, you should take into consideration the effect
                    that different screen resolutions will have on how much can fit onto the screen.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadHorizontalScrollBar.jpg" alt="Bad Horizontal Scroll Bar" /></dt>
                    <dd>
                        Figure: Bad Example - Using pre code tags and having lines exceed screen size</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodHorizontalScrollBar.jpg" alt="Good Horizontal Scroll Bar" /></dt>
                    <dd>
                        Figure: Good Example - Using pre code tags and having lines not exceed screen size</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="OversizedWidth"></a>Printing - Do you check for oversized images and table?</h2>
                <p>
                    An oversized image or table on your page can greatly reduce your page's readability
                    and disrupt its layout. It can also cause problems in printing, waste natural resources
                    and inflict pain and suffering.</p>
                <p>
                    That's why you should limit all your images and tables to a maximum of 600 pixels
                    wide.</p>
                <p class="productBox">
                    We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#IMGWidth">SSW Code Auditor</a>
                    to check for this rule.</p>
                <p>
                    Some have said 600 pixels is too small, if you resized a large image you can't read
                    the text - we think if you have an image that is large, then there must be reasons.</p>
                <ol>
                    <li>If we are trying to show an overall layout, then it is OK for the text to be too
                        small to see.</li>
                    <li>If we are trying to show specific details - either a feature or a problem, then
                        it is OK to crop the image so that they fit the size.</li>
                </ol>
                <p>
                    Also, if you are resizing in Photoshop you can easily resize the image and yet put
                    the zoom out on a part that you want the reader to read (combining both options).</p>
            </li>
            <li>
                <h2>
                    <a name="AvoidWidthOnTableTag"></a>Do you know table tags should not specify the
                    width?</h2>
                 inl    Table should always use its default width unless you really need to specify width,
                    if you do need to specify width, the best place to do so would be in CSS file.</p>
            </li>
            <li>
                <h2>
                    <a name="AvoidUsingFlashSilverlight"></a>Do you avoid using Flash/Silverlight?</h2>
                <p>
                    Public Websites done completely with Flash or Silverlight can be very eye-catching
                    and used in the right spots can achieve way more than you can ever achieve with
                    HTML. But beware because:</p>
                <ul>
                    <li>It does not work on an iPhone or iPad</li>
                    <li>Flash/Silverlight can be slow loading, especially if the visitor is not using a
                        fast Internet connection. If your website doesn't load within 5 seconds, they're
                        gone. (There are techniques to overcome this)</li>
                    <li>It is bad for search engine rankings as there is no content for search engine spiders
                        to crawl through. (There are techniques to overcome this)</li>
                    <li>Navigation via the back button (and Browser History). (There are techniques to overcome
                        this)</li>
                    <li>Accessibility</li>
                    <li>Often seen with busy designs that turn off or distract visitors. Look at the biggest
                        ecommerce sites and you notice that none of them are Flash websites</li>
                    <li>In many cases it unnecessarily creates page bloat</li>
                    <li>You can *almost* get the same effects and functionality using jQuery, but faster
                        and lighter</li>
                    <li>You get an inconsistent UI if you use it for controls such as text boxes</li>
                    <li>Flash and Silverlight do not support CSS, so you need to follow unfamilar concepts
                        for re-skinning</li>
                </ul>
                <p>
                    Finally, and saddest of all, when Flash/Silverlight is used, it is over used.</p>
                <div class="greyBox">
                    <p>
                        Footnote #1: It is clear that Flash has been quite successful - the penetration
                        of its run time is 99% on PCs.</p>
                    <p>
                        Footnote #2: Silverlight is catching up and nearing 80%. Microsoft could get near
                        100% if they included it with Windows Update.</p>
                    <p>
                        Footnote #3: All this is now history with iPhone and iPads. The youngsters buying
                        these devices today will be the IT managers of tomorrow. They are not going to approve
                        a technology that does not support something they grew up with.</p>
                </div>
            </li>
            <li>
                <h2>
                    <a name="CSSStyle"></a>Do you use DocType in Web Pages while using CSS style sheets?</h2>
                <p>
                    If you are using CSS style sheet, by default without DOCType specified Browser will
                    set itself to Quirks Mode, where the browser assumes you are using old fashion style
                    sheet, and the markup may go wrong.</p>
                <p>
                    <strong>How to fix?</strong></p>
                <p>
                    You will include a DOCType from W3C (they are a well known web standard provider),
                    as a result IE6 will give a standard mode translation for your HTML and give out
                    correct result. See a tip on W3C <a href="/ssw/Redirect/DOCType.htm">Don't forget to
                        add a doctype</a><img src="/ssw/Images/LeaveSite.gif" alt="Leave Site" /></p>
                <div class="greyBox">
                    XHTML 1.0 Strict, Transitional, Frameset
                    <ul>
                        <li>&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Strict//EN&quot; &quot;<a
                            href="/ssw/Redirect/W3CStrict.htm">http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd</a>&quot;&gt;</li>
                        <li>&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot; &quot;<a
                            href="/ssw/Redirect/W3CTransitional.htm">http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd</a>&quot;&gt;</li>
                        <li>&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Frameset//EN&quot; &quot;<a
                            href="/ssw/Redirect/W3CFrameSetXHTLM.htm">http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd</a>&quot;&gt;</li>
                    </ul>
                    <br />
                    XHTML 1.1 DTD
                    <ul>
                        <li>&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.1//EN&quot; &quot;<a href="/ssw/Redirect/W3CXHTML11.htm">http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd</a>&quot;&gt;</li>
                    </ul>
                </div>
                <dl class="goodCode">
                    <dd>
                        Figure: Good Example - Sample DocType</dd></dl>
                <p class="productBox">
                    We have a program called <a href="/ssw/CodeAuditor/#CSSStyle">SSW Code Auditor</a>
                    to check for this rule.</p>
            </li>
            <li>
                <h2>
                    <a name="ResultsInComboBoxes"></a>Do you include the number of results in drop down
                    list?
                    <img src="Images/redstar.gif" alt="Redstar" width="18" height="14" /></h2>
                <p>
                    When designing your web site, it's a good idea to help your users where possible.
                    When you use a combo box, it's very helpful to be able to see at a glance how many
                    results can be expected.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/ComboBox2.gif" alt="Combobox 2" /></dt>
                    <dd>
                        Figure: Bad Example - You can't tell the number of results</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/ComboBox1.gif" alt="Combobox 1" /></dt>
                    <dd>
                        Figure: Good Example - The number of results is clearly displayed</dd>
                </dl>
            </li>
            <li><s>
                <h2>
                    <a name="BackLink"></a>Do you use &quot;&lt; Back&quot; instead of &quot;&lt; Previous&quot;
                    or other variations?</h2>
                <p>
                    According to <a href="/ssw/Redirect/MSDNWizards.htm">http://msdn.microsoft.com/en-us/library/ms816514.aspx</a>,
                    the commands for navigating through a wizard should be &quot;&lt; Back&quot; and
                    &quot;Next &gt;&quot;.</p>
                <p>
                    When your site needs a link to iterate backwards through records we recommend that
                    you use &quot;&lt; Back&quot; instead of &quot;&lt; Previous&quot;.</p>
                <p>
                    There are a few reasons for this:</p>
                <ol>
                    <li>This is the standard used in Microsoft Installation files. MSIs are the most widely
                        used installation package available today.</li>
                    <li>Internet Explorer and several other lesser known browsers use a Back button to iterate
                        back through webpages, so your visitors will automatically know what your &quot;&lt;
                        Back&quot; link does.</li>
                    <li>It is important to keep a consistency on your pages.</li>
                </ol>
                <p>
                    Below is an example of a Good&nbsp;&quot;&lt; Back&quot; link versus some Bad variations.</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/textboxeswithshowbutton.gif" alt="Good" /></dt>
                    <dd>
                        Figure: A Good example of a &quot;&lt; Back&quot; link</dd>
                </dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/badpreviouslink.gif" alt="Bad" /></dt>
                    <dd>
                        Figure: This is Bad because it says &quot;Previous&quot; instead of &quot;Back&quot;</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/badbacklink.gif" alt="Good" /></dt>
                    <dd>
                        Figure: This is bad because it has too many &quot;&lt;&quot;s or it has no space
                        between the &quot;&lt;&quot; and the &quot;Back&quot;</dd></dl>
                <p class="productBox">
                    We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#BackLink">SSW Code Auditor</a>
                    to check for this rule.</p>
                <p class="productBox">
                    We have a program called <a href="/ssw/LinkAuditor/">SSW Link Auditor</a> to check
                    for this rule. We offer a <a href="/SSW/LinkAuditor/Samples/Rules/ReadingBackLink.aspx">
                        rule sample page</a> for demo scan.</p>
            </s></li>
            <li>
                <h2>
                    <a name="PredictiveText"></a>Do you use predictive-textboxes instead of normal combo
                    or text boxes?</h2>
                <p>
                    When getting users to choose data from a medium-long list, or to enter data that
                    has been predefined (such as Country names), it is a good idea to use a predictive-text
                    combos rather than normal combo or text boxes. A good implementation of predictive-text
                    combos will also perform a type-ahead affect, providing the user with a richer experience.
                </p>
                <p>
                    Also, predictive textboxes can be used with validation, or without. In instances
                    where you don't mind if users add data to your collection you can turn validation
                    off; however, to keep your collection clean, it is recommended to use validation.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/PredTextBad.gif" alt="Incorrect use of data entry tools" /></dt>
                    <dd>
                        Figure: Bad Example - Using a Textbox and Combo to enter list data</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/TypeAhead.gif" alt="Good Example of predictive textboxes" /></dt>
                    <dd>
                        Figure: Good Example - Predictive-Text combo with Type Ahead</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/PredTextValidation.gif" alt="Good Example of predictive textboxes" /></dt>
                    <dd>
                        Figure: Good Example - Predictive-Text combo with and without validation</dd>
                </dl>
                <p>
                    To see this in action try our Predictive-Text
                        Combos demo.</p>
                <p>
                    The predictive-text combo control used in our demo can be found on <a href="/ssw/Redirect/TheCodeProject.htm">
                        The Code Project</a><img src="/ssw/Images/LeaveSite.gif" alt="Leave Site" />
                    under the ASP.NET Controls Section listed as <a href="/ssw/Redirect/ComboBoxControl.htm">
                        ComboBox Control for ASP.NET</a><img src="/ssw/Images/LeaveSite.gif" alt="Leave Site"
                            width="17" height="11" />.</p>
                <p>
                    <a href="/ssw/Redirect/DBCombo.htm">DBCombo.Net</a><img src="/ssw/Images/LeaveSite.gif"
                        alt="Leave Site" />
                    is another predictive-text box written in .NET that allows users to type in what
                    they are looking for and then provides a <a href="/ssw/Redirect/GoogleSuggest.htm">Google
                        Suggest</a><img src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17" height="11" />
                    style drop down showing the matching results.</p>
            </li>
            <li>
                <h2>
                    <a name="AddDatetoCalendar"></a>Can your users easily add an event to their calendar?</h2>
                <p>
                    If you have a date for any event appearing on your site, you should make it as easy
                    as possible for the user to add it to their Outlook calendar. This is why we use
                    ICS links for all dates on our site</p>
                <div class="greyBox">
                    <strong>Next User Group Meeting:</strong><br />
                    Wednesday, 15 February 2006 5:45 PM
                </div>
                <dl class="badCode">
                    <dd>
                        Figure: Bad Example - User cannot add reminder</dd></dl>
                <div class="greyBox">
                    <strong>Next User Group Meeting:</strong><br />
                    Wednesday, 15 February 2006 5:45 PM
                    <p>
                        <a href="/ssw/NETUG/SydneyDotNETUsersGroup.ics">
                            <img src="/ssw/Images/IconVCS.gif" alt="Outlook Calendar" align="left" alt="Click here to download" /></a>
                        <a href="/ssw/NETUG/SydneyDotNETUsersGroup.ics">Outlook reminder</a>
                    </p>
                </div>
                <dl class="goodCode">
                    <dd>
                        Figure: Good Example - Showing use of Calendar icon</dd></dl>
                <p>
                    By clicking the calendar icon you can easily add reminder to remind you about particular
                    event out of your busy schedule.</p>
                <p>
                    You have 2 options - VCS and ICS. Both let you add appointments to your calendar.
                    We use ICS because it allows to collaborate information between personal information
                    management programs like Microsoft outlook, Mozilla Calendar, MacOSX etc. over the
                    Internet, independently of differences between program vendors or operating systems,
                    which is not allowed with VCS.</p>
                <p>
                    It is always preferred to use <a href="/ssw/Standards/Rules/RulesToBetterWebsitesNavigation.aspx#TheIcons">
                        standard icons</a> to give user a proper idea about the file. User can quickly
                    get the idea by just looking at the icon.</p>
            </li>
            <li><a name="CorrectDefault"></a>
                <h2>
                    Do you have the correct default for a URL field?</h2>
                <p>
                    Most developers seem to validate a URL and tell the user what they have done wrong
                    after with a message box like:</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/error-cannot-save-record.gif" alt="Error message 'Cannot save record'" /></dt>
                    <dd>
                        Figure: Bad way of using a validation message to tell the user to enter a correct
                        URL</dd>
                </dl>
                <p>
                    The better way is to have the user avoid the error with a good default.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/textfieldnonpopulate.gif" alt="image showing blank textfield" /></dt>
                    <dd>
                        Bad example - The user has a good chance of entering the URL in the incorrect format</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/textfieldpopulate.gif" alt="image showing a textfield pre-populated with 'http://www.'" /></dt>
                    <dd>
                        Good example - User immediately knows the format expected</dd>
                </dl>
            </li>
            <li><a name="EmbedFont"></a>
                <h2>
                    Do you know how to effectively use non-standard font on your website?</h2>
                <p>
                    In some cases you may need to display text content on your page with a specific
                    font. Unfortunately web browsers don't provide an easy way to deliver rich typography
                    without sacrificing some functionality. Common approaches include:</p>
                <ol>
                    <li>Display the text as an image</li>
                    <li>Embed the font to your page</li>
                    <li>Use third party plug-ins</li>
                </ol>
                <p>
                    Each method mentioned above has their disadvantages. #1 and #3 won't produce accessible
                    content and #2 only works best in older version of IE.</p>
                <p>
                    A group of designers and web developers has developed <a href="/SSW/Redirect/Mikeindustries.htm"
                        class="external">sIFR</a>, a method of inserting text rendered in typeface of
                    your choice. This works by using a combination of JavaScript, CSS and Flash to produce
                    fully accessible text content whilst maintaining a rich typeface presentation.</p>
                <dl class="badImage">
                    <dt>
                        <img src="images/EmbedFont_bad.gif" alt="Embed font - bad example" /></dt>
                    <dd>
                        Figure: Bad Example - Font Embedding doesn't produce the same result in different
                        browsers</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/EmbedFont_good.gif" alt="Embed font - good example" /></dt>
                    <dd>
                        Figure: Good Example - A rich typeface that we can select, copy and paste</dd>
                </dl>
            </li>
            
            <li><a id="choosingFonts"></a>
                <h2>
                    Do you know it's important to make your fonts different?</h2>
                <p>
                    If your styles are going to be different, then make it obvious that they are different. Don't be timid about it! This is a great time to be daring!</p>
                <p>"Different" can mean many things: different font family, different style, different size, different color. But the most important thing is to make it obvious that they are different.</p>
                <p>Partial differences is when people get confused and start asking things like "this looks a bit strange, but I don't know why. Is that intentional?"</p>
                <p>Compare the follow two examples:</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/choosingFontsbad.png" alt="" /></dt>
                    <dd>
                        Figure: Bad Example - The heading and body text is very simlar, only 2px font-size difference.</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/choosingFontsgood.png" alt="" /></dt>
                    <dd>
                        Figure: Good Example - The heading as been bolded and the content font size decreased to make it more obvious that the two are different styles.</dd>
                </dl>
                <p>Picking your fonts carefully applies to all forms of design where text is involved. Unfortunately, deciding what sort of differences look good and what doesn't is extremely subjective and is a skill that gets developed overtime.</p>
            </li>
            <li><s><a id="NoResetButton"></a>
                <h2>
                    Do you avoid having Reset buttons on webforms?</h2>
                <p>
                    Why do web pages have Reset buttons? I have been entering forms on the web for more
                    years than I care to remember, but have never needed to click this button. The worst
                    thing is I have accidentally hit it a few times after - I have a habit of doing
                    3 things at once - it happens just after I have finished entering everything and
                    click the first button.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/ResetButton.gif" alt="The Reset button isn't useful at all" /></dt>
                    <dd>
                        Figure: The Reset button isn't useful at all</dd>
                </dl>
                <p class="productBox">
                    We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check
                    for this rule.</p>
                <span class="productBox">We have a program called <a href="/ssw/LinkAuditor/">SSW Link
                    Auditor</a> to check for this rule. We offer a <a href="/SSW/LinkAuditor/Samples/Rules/NoResetButton.aspx">
                        rule sample page</a> for demo scan.</span> </s></li>
            <li><a name="StatusIcon"></a>
                <h2>
                    Do you use icons in web pages to indicate status directly?</h2>
                <p>
                    People may not pay attention on some important words in your pages. While adding
                    a simple and clear icon beside the words will make difference. Here are some examples:</p>
                <dl class="image">
                    <dt>
                        <img src="images/WebLayout_StatusIcon_Error.gif" /></dt>
                    <dd>
                        Figure: Icon to indicate an empty shopping cart</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="images/WebLayout_StatusIcon_Warning.gif" /></dt>
                    <dd>
                        Figure: Icon to warn some functionality may not work</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="images/WebLayout_StatusIcon_OK.gif" border="0" /></dt>
                    <dd>
                        Figure: Icon of OK</dd>
                </dl>
                <p>
                    We have another similar rule for WinForm application - <a href="http://rules.ssw.com.au/DesignandPresentation/RulesToBetterInterfacesPopupsAndMessages/Pages/Messages---Do-you-use-green-tick,-red-cross-and-spinning-icon-to-show-the-status.aspx">
                        Do you use green tick, red cross and spinning icon to show the status?</a></p>
                        <p>You can get <a href="http://www.ssw.com.au/ssw/standards/images/OurTicksCrosses/browse.aspx">SSW's ticks and crosses here.</a></p>
            </li>
            <li><a name="Apostrophes"></a>
                <h2>
                    Do you use correct symbols for apostrophes?</h2>
                <p>
                    "&amp;apos;" is not a valid HTML entity. It is a standard entity in XML and thus
                    in XHTML. Browsers which does not support XHTML, like IE, will have problem to display
                    it correctly.</p>
                <p>
                    In fact, you can use "&amp;#039;" instead of it.</p>
                <dl class="badCode">
                    <dt>Source Code: If you can't find what you are looking for in the product documentation<br />
                        Display: If you can't find what you are looking for in the product documentation
                    </dt>
                    <dd>
                        Figure: Bad Example - use &amp;apos;</dd>
                </dl>
                <dl class="goodCode">
                    <dt>Source Code: If you can&amp;#039;t find what you are looking for in the product
                        documentation<br />
                        Display: If you can&#039;t find what you are looking for in the product documentation
                    </dt>
                    <dd>
                        Figure: Good Example - use &amp;#039;</dd>
                </dl>
                <span class="productBox">We have a program called <a href="/ssw/LinkAuditor/">SSW Link
                    Auditor</a> to check for this rule. We offer a <a href="/SSW/LinkAuditor/Samples/Rules/NoInvalidHTMLEntity.aspx">
                        rule sample page</a> for demo scan.</span> </li>
            <li><a name="AddRules"></a>
                <h2>
                    How do you get your rule added?</h2>
                <p>
                    The style in a website should always be kept consistent, so it's necessary for us
                    to have a "rule" for adding new rules.</p>
                <p>
                    We follow this method to add a rule to our website:</p>
                <ol>
                    <li>explanation of the problem</li>
                    <li>sample good code</li>
                    <li>sample bad code</li>
                </ol>
                <p>
                    When we need to use image to draw attention from user, we also have rules on this:<br />
                    <a href="#GoodBadImages">Do you use 'Bad Example' and 'Good Example' in captions?</a><br />
                    <a href="#ImageWorthMillionWords">Do you add images and reduce the words?</a>
                </p>
                <p>
                    When we need to include code in the rule, we follow our rule as well:
                    <br />
                    <a href="/ssw/Standards/templates/SSWWebTemplate.aspx#html">HTML tags for including
                        source code</a>
                </p>
            </li>
            
            <li><a name="SetMaxWidth"></a>
                <h2>Do you set the maximum width for your page?</h2>
                <p>
                    The text in a page should fit within the width for increased readability.<br />
                    This is done by setting the max-width property in the CSS.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/Bad_MaxWidth.jpg" alt="" /></dt>
                    <dd>
                        Figure: Bad Example - The max-width property is not set in the css</dd>
                </dl>
                <p>
                    In the above example, the max-width property is not set. So, it takes you beyond
                    the download image</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/Good_MaxWidth.JPG" alt="" />
                    </dt>
                    <dd>
                        Figure: Good Example - The max-width property is set in the css</dd>
                </dl>
                <p>
                    The max-width property is set in the css so that the download image can be easily
                    seen.</p>
            </li>
            <li><a name="ShowDownloadProgress"></a>
                <h2>Do downloads show progress and total size?</h2>
                <p>
                    When a user downloads a file from your site, do they see a progress bar along with
                    the total size and estimated time, or do they just see the size of the download
                    slowly increasing with no way of knowing when it will finish?</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/DownloadBadNoProgress.jpg" alt="image showing download with no progress" /></dt>
                    <dd>
                        Figure: Bad example - there is no indication of the total size of the download or
                        the percent complete, thus no estimate of how long left</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/DownloadGoodWithProgress.jpg" alt="image showing download with progress, size, percent complete, etc" /></dt>
                    <dd>
                        Figure: Good example - percent complete, time left, total size and a progress bar
                        are all shown</dd>
                </dl>
                <p>
                    The change in code to achieve this can be as little as one line of code:
                </p>
                <pre class="code">Response.AddHeader("Content-Length", file.Length.ToString())</pre>
                <p>
                    A full code example can be found here: <a href="/SSW/Redirect/Xefteri.htm">http://www.xefteri.com/articles/show.cfm?id=8</a>.</p>
            </li>
            <li>
                <h2>
                    <a name="AssociatedControl"></a>Good Forms: Do you click a label and have the focus
                    set to the field by using &lt;label&gt;?</h2>
                <p>
                    When adding input boxes to collect data, please always have a &lt;label&gt; tag
                    associated with your &lt;input&gt; tag to link the labels with their respective
                    edit controls. This improves accessibility and gives nice focusing stuff (when you
                    click the label).</p>
                <dl class="code">
                    <dt>
                        <pre>&lt;p&gt;
    &lt;label for=&quot;EmailAddress&quot;&gt;Email&nbsp;Address&lt;/label&gt;
    &lt;input id=&quot;EmailAddress&quot;&nbsp;type="text"/&gt;
&lt;/p&gt;</pre>
                    </dt>
                </dl>
                <p>
                    Tip: To do this in ASP.NET use the AssociatedControlID parameter on your &lt;asp:Label&nbsp;/&gt;
                    controls.</p>
                <dl class="code">
                    <dt>
                        <pre>&lt;p&gt;
    &lt;asp:Label ID=&quot;EmailLabel&quot; runat=&quot;server&quot; Text=&quot;Email&nbsp;Address&quot; AssociatedControlID="EmailAddress"/&gt;
    &lt;asp:TextBox ID=&quot;EmailAddress&quot; runat=&quot;server&quot;/&gt;
&lt;/p&gt;</pre>
                    </dt>
                </dl>
            </li>

            <li><a name="FieldHints"></a>
                <h2>Forms - Do you provide field hints?</h2>
                <p>
                    Please provide a hints column so users know what the purpose of the data is. Don't
                    worry if this means one column of fields with a long page. This is ok in the Web
                    2.0 world!</p>
                <dl class="image">
                    <dt>
                        <img src="Images/FieldHints.JPG" alt="field hints" /></dt>
                    <dd>
                        Figure: Field Hints</dd>
                </dl>
            </li>

            <li><a id="breathingRoom"></a>
                <h2>
                    Do you provide enough "breathing room" around the text?</h2>
                <p>
                    The main objective is to provide enough "breathing room" around the text. This will
                    enable user to easily shift their focus on a specific area of a page. This is quite
                    a common technique in print design but lately made its way to web design as one
                    of many distinguishing &#8220;Web 2.0&#8221; styles.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/breathingRoomBad.gif" alt="" /></dt>
                    <dd>
                        Figure: Bad Example - The textboxes and "grouping" box creates a clustered feel</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/breathingRoomGood.gif" alt="Sufficient breathing room" /></dt>
                    <dd>
                        Figure: Good Example - Sufficient breathing room makes it easier for the user to
                        focus on an a specific area</dd>
                </dl>
            </li>

            <li><a name="SeparateError"></a>
                <h2>Forms - Do you provide red errors next to the field?</h2>
                <p>
                    Too often error messages are a summary at the top or the bottom of the page. Instead
                    please provide an error message per validation error, next to the field (and in
                    red!).</p>
                <dl class="image">
                    <dt>
                        <img src="Images/SeparateError.JPG" alt="provide red errors next to the field" /></dt>
                    <dd>
                        Figure: Provide red errors next to the field</dd>
                </dl>
            </li>

            <li><a name="FieldSet"></a>
                <h2>Forms - Do you provide grouping using &lt;fieldset&gt;?</h2>
                <p>
                    <strong>FieldSet</strong> element allows you to group thematically related controls
                    and labels. Grouping controls makes forms more accessible and easier for users to
                    understand the purpose of filling the forms. See example below using "Your Details"
                    and "Event Details".</p>
                <dl class="image">
                    <dt>
                        <img src="Images/FieldSet.JPG" alt="provide red errors next to the field" /></dt>
                    <dd>
                        Figure: Use FieldSet for grouping</dd>
                </dl>
                <p>
                    Here's an example of code.</p>
                <dl class="code">
                    <dt>
                        <pre>
&lt;fieldset&gt;
    &lt;legend&gt;Your Details&lt;/legend&gt;
    &lt;p&gt;
        &lt;label for="FirstName"&gt;First Name: &lt;/label&gt;
        &lt;input id="FirstName" type="text" /&gt;&lt;br /&gt;
        &lt;label for="LastName"&gt;Last Name: &lt;/label&gt;
        &lt;input id="LastName" type="text" /&gt;&lt;br /&gt;
        &lt;label for="EmailAddress"&gt;Email Address: &lt;/label&gt;
        &lt;input id="EmailAddress" type="text" /&gt;
    &lt;/p&gt;
&lt;/fieldset&gt;</pre>
                    </dt>
                    <dd>
                        Figure: example code of fieldset</dd>
                </dl>
                <p>
                    And what the code produces is</p>
                <dl class="image">
                    <dt>
                        <img src="Images/FieldSetExample.JPG" alt="Figure: View of the example code" /></dt>
                    <dd>
                        Figure: View of the example code</dd>
                </dl>
                <p>
                    Things to remember:</p>
                <ol>
                    <li>Wrap logical control groups in a &lt;fieldset&gt;.</li>
                    <li>The first child of a &lt;fieldset&gt; <u>must always</u> be a &lt;legend&gt;.</li>
                    <li>You can hide the legend using CSS if you want ( legend { display: none; } ). E.g.,
                        it's hidden in the figure 'Use FieldSet for grouping' and a heading is shown instead.</li>
                </ol>
            </li>
            <li><a name="ImproveSearch"></a>
                <h2>Search Results - Do you always give more information under &#8220;Did not match anything&#8221;?</h2>
                <p>
                    When you ring up a company and ask &#8220;do you sell boxes?&#8221; it is not not
                    expected to hear them say &#8220;no&#8221; and hang up.</p>
                <p>
                    They should answer the question and suggestion something (E.g. No, but we sell plastic
                    containers, would you like that instead?&#8221;)</p>
                <p>
                    Websites are continually saying &#8220;404 &#8211; page not found&#8221; or &#8220;you
                    search did not match anything&#8221;..... this should be avoided.</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodSearchExample.JPG" alt="Amazon site will give you other choices when no matched results" /></dt>
                    <dd>
                        Figure: Good Example &#8211; If you don&#8217;t match anything on Amazon, it gives
                        you some other choices to click on.</dd>
                </dl>
            </li>
            <li>
                <a name="KeepSameRatio"></a><h2>Do you keep the same height / width ratio as the original image?</h2>
                <p>
                    In img tag of HTML, there are 2 attributes - height and width. If the height / width
                    ratio doesn't match that of original image, the image will be stretched.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/StretchedLogo.jpg" alt="Stretched image which looks ugly" /></dt>
                    <dd>
                        Figure: Bad example - Stretched image which looks ugly</dd>
                </dl>
                <p class="productBox">
                    We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#IMGWidth">SSW Code Auditor</a>
                    to check for this rule.
                </p>
            </li>
            <li>
                <h2>
                    <a name="HeadingStrongBold"></a>Do you know not to use bold or strong tags inside Headings?</h2>
                <p>
                    You should avoid any extra bold tag in your heading text because is unnecessary.</p>
            </li>
            <li>
                <h2>
                    <a name="TimesNewRoman"></a>Do you know not to use Times New Roman font in your site?</h2>
                <p>
                    You should avoid using Times New Roman font to improve the readability of your pages
                    instead use Verdana or Arial fonts
                </p>
            </li>
            <li><a name="URLTitleCase"></a>
                <h2>Do your page names use dashes between words or Title Case?</h2>
                <p>
                    The text of a URL should make sense and relate to the content of the relevant page.
                    Apart from helping with Google Juice users frequently read URL's.
                </p>
                <p>
                    There are a few options for how you format the text of a URL. The following suggestions
                    are in preference order:
                </p>
                <ol>
                    <li>Capitalize each word (Title Case): RulesToBetterWebsiteLayouts.aspx</li>
                    <li>Dashes between words: rules-to-better-website-layouts.aspx - This option appears
                        to be most common and <a href="http://www.craigbailey.net" target="_blank">Craig Bailey</a>'s
                        preferred way, but I'm always typing directly into the address bar of IE and it's
                        unnatural to type "-"'s </li>
                    <li>Upper case for appropriate words: RulestoBetterWebsiteLayouts.aspx</li>
                    <li>Underscores between words: rules_to_better_website_layouts.aspx</li>
                    <li>Lower case for all words: rulestobetterwebsitelayouts.aspx</li>
                </ol>
            </li>
            <li>
                <h2>
                    <a name="WebSlices"></a>Do you use IE Web Slices to give website users regular updates?</h2>
                <p>
                    Microsoft has a great feature in Internet Explorer called Web Slices which allow
                    users to take segments from a website and subscribe to updates from them.
                    <br />
                    Here's an example screenshot from the calendar on <a href="http://www.ssw.com.au/ssw/">
                        our home page:</a>
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/WebSlices.jpg" alt="Web Slices" /></dt>
                </dl>
                <p>
                    You can read more about web slices and how to implement them in <a href="http://msdn.microsoft.com/en-us/library/cc196992(VS.85).aspx">
                        Microsoft's official guide on the subject</a>.</p>
            </li>
            <li>
              <h2><a name="ContentFormat"></a>Do you know what format your content should be in? (Docs or Web pages)</h2>
              
                <p>When considering the format:</p>
                <ul>
                <li>99% of external content should be HTML, forms are a PDF exception</li>
                <li>for knowledge workers, someone like matt wants to create the content, copy and paste images into word is miles better than using a web interface</li>
                <li>creating standard pages in a wiki or a page is the same in SharePoint 2010, all pages are wiki pages</li>
                <li>even a Microsoft whitepaper should be in HTML, with an option to download a PDF </li>                
              </ul>
              <p>You could create a Word document and save it as HTML, but can you re-edit in Word and re-publish? Not really and the HTML output from Word is notoriously difficult to edit in the future. </p>
               <dl class="image">
                    <dt>
                        <img src="Images/SPWordDoc.jpg" alt="SharePoint word document" /></dt>
                    <dd>Figure: For your SharePoint intranet, use word documents. The reason it is faster than doing web pages. </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/PublicSiteWithHTML.jpg" alt="Public site using html" /></dt>
                    <dd>Figure: For your public site, avoid .docs and .pdfs. Use HTML web pages</dd>
                </dl>
            </li>
            <li>
             <h2><a name="FriendlyURL"></a>Do you know to use friendly URL's where you can?</h2>
              <p>You can install the IIS <a href="http://learn.iis.net/page.aspx/460/using-the-url-rewrite-module/">URL Rewrite Module</a> for IIS7 you can make ugly URL's much more friendly.</p>
              <dl class="image">
                    <dt>
                        <img src="Images/RewriteHTML.jpg" alt="Rewrite the HTML" /></dt>
                    <dd>Figure: Rewrite both the HTML in the page and the incoming URL's to be friendly </dd>
                </dl>
              <p>
               The caveat here is that it will only work if the URL is in the clear on the page.<br />
                Note: This could only be done with certain links as others are postbacks as well.
              </p>
            </li>
        </ol>
    </div>
    <br />
    <br />
    <h2>
        <a name="Acknowledgements"></a>Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TKK">Tristan Kurniawan</a>
    </p>--%>
</asp:Content>
