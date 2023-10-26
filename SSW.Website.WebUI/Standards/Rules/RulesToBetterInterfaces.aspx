<%@ Page Language="c#" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Interfaces (General Usability Practices)" Buffer="true" %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <SSW:RandomTestimonial ID="RandomTestimonial1" runat="server" Display="TopCommon" CategoryID="10" />
    <h4>What is software?</h4>
        <blockquote>From a technical perspective, a piece of software comprises forms for managing, collecting and transmitting data.</blockquote> 
        <p>But that is not what a user thinks.</p>
        <blockquote>From the user's perspective software is a computer tool for performing tasks quickly, efficiently, accurately and with a minimum amount of cognitive demand.</blockquote>
    <p>Aim for the second one, there's a big difference.</p>
    <p>The whole point of a good GUI (Graphical User Interface) is being able to understand what is going on without reading every single detail. That is why we prefer big red crosses to say &quot;Don't do that you oaf!&quot; instead of a line of text that says &quot;I think you may want to reconsider your options.&quot;</p>
    
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230496E7465726661636573')"> Let us know</a> what you think.</p>
    
    <div class="TableOfContents">
        <h3>Rules To Better Interfaces (General Usability practices)</h3>
        <dl class="right image">
            <dt><img src="Images/user.jpg" alt="User" /></dt>
            <dd>Figure: A happy user</dd>
        </dl>
        
        <ol>
            <li><a href="#Testing">Do you know the importance of testing your interface?</a></li>
            <li><a href="#SelfEvident">Do you realize that a good interface should not require instructions?</a></li>
            <li><a href="#Affordances">Do you make users intuitively know how to use something?</a></li>
            <li><a href="#IntelligentDesign">Less is More - Do you realize that when it comes to interface design 'less is more'?</a></li>
            <li><a href="#InformationScan">Less is More - Do you know people visually scan, not read?</a></li>
            <li><a href="#ReduceComplexity">Less is More - Do you always try to reduce complexity?</a></li>
            <li><a href="#Story">Do you know to how use storyboards?</a></li>
            <li><a href="#OpticalAlignment">Do you consider optical alignment?</a></li>
            <li><a href="#Matrix">Column Data -  Do you make matrix columns as simple as possible?</a></li>
            <li><a href="#AlphanumericDown">Column Data - Do you do alphanumeric down instead of across?</a></li>
            <li><a href="#ColumnsText">Column Data -Do you know when to use columns or text?</a></li>
            <li><a href="#HomePagePortal">Do you make the homepage as a portal?</a></li>
            <li><a href="#Resolutions">Does your application's interface fit in any screen resolution?</a></li>
            <li><a href="#LoginState">Authentication - Do you make the logged in state clear?</a></li>
            <li><a href="#ExtraInfo">Give Context - Do you include extra information (e.g. Checkboxes)?</a></li>
            <li><a href="#ExtraInfoScreen">Give Context - Do you include extra information (e.g. Screenshots)?</a></li>
            <li><a href="#LogUsage">Do you log usage?</a></li>
            <li><a href="#Wiki">Help - Do you have a wiki for each page or form?</a></li>
            <li><a href="#ErrorDirect">Help - Do you help users when they get errors by directing them to a wiki or KB?</a></li>
            <li><a href="#StrikeThroughCompletedItems">Do you strike-through completed items?</a></li>
            <li><a href="#Metro-UI">Do you use the Metro UI when applicable?</a></li>
            <li><a href="#social-network-links">Do you give the 6 social network options?</a></li>
            <li><a href="#EasySearch">Do you have a "search box" to make your data easy to find?</a></li>
            <li><a href="#gamification">Do you know how to use "gamification"?</a></li>
            <li><a href="#HighlightIncompleteWork">Do you highlight incomplete work with red text?</a></li>
            <li><a href="#TouchInterface">Do you design for touch interfaces?</a></li>
            <li><a href="#Experimentation">Do you encourage experimentation?</a></li>
            <li><a href="#WindowsPhone">Do you know what guidelines to follow for WP8?</a></li>
        </ol>
    </div>

    <div id="mainContent">
        <ol>
            <li><h2><a name="Testing"></a>Do you know the importance of testing your interface?</h2>
                <p>You won’t know if your interface is any good until it’s actually tested! Test, test, test, nothing can possibly replace that first hand data.</p>
                <img style="margin:5px;width:650px;" alt="" src="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesGeneral/PublishingImages/UsabilityTesting.jpg">
            </li>
            <li>
                <h2><a name="SelfEvident"></a>Do you realize that a good interface should not require instructions?</h2>
                <p>The corner stone of good user interface design is that if your users need instructions, you haven't done a good job. Of course with particularly complex applications there will be exceptions to this rule, but all developers should aim to make your interface as self evident as possible.</p>
                <ul>
                    <li>There are no surprises</li>
                    <li>There is no need to use help</li>
                    <li>No excuse for RTFM (read the freaking manual)</li>
                </ul>
                <dl class="image">
                    <dt><img src="Images\SelfEvident.gif" alt="" border="1" /></dt>
                    <dd>Figure: A good interface does not need instructions!</dd>
                </dl>
                <p>A good UI is:</p>
                <ul>
                    <li>Intuitive</li>
                    <li>Feels fast - eg. no white screen, threading code</li>
                    <li>Consistent</li>
                    <li>Minimal popups</li>
                    <li>No clutter - not busy </li>
                    <li>Good error handling</li>
                    <li>Easy to customize + apps (aka a platform)</li>
                    <li>Gamification eg. badges</li>
                </ul>
                <dl class="goodImage">
                    <dt><img src="Images/GoodUITeamViewer.png" alt="Team Viewer Interface" /></dt>
                    <dd>Figure: Good example - Teamviewer's interface requires very little explanation</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/FlyInUrinal.jpg" alt="Fly in a Urinal" /></dt>
                    <dd>Figure: Good Example - See the fly? (an excellent example of usability) Dutch manufacturers realized that a fly painted on the urinal became a &quot;target&quot; for men using the facility. And the fly is positioned in precisely the right place for minimal spillage or splash back. Clever people, those Dutch!</dd>
                </dl>
            </li>

            <li>
                <h2><a name="Affordances"></a>Do you make users intuitively know how to use something?</h2>
                <ol>
                    <li>When we see a door, we immediately know that we can open it and go through it</li>
                    <li>Links in blue and underlined has an affordance of clickability</li>
                    <li>Buttons can be pressed</li>
                    <li>Scrollbar moves the document in the window</li>
                </ol>
                <dl class="badImage">
                    <dt><img src="Images/Bad-Affordance2.jpg" alt="False affordance" /></dt>
                    <dd>Figure: Bad Example -  The affordance of the checkbox makes this UI misleading</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/Bad-FalseAffordance.jpg" alt="False affordance" /></dt>
                    <dd>Figure: Bad Example - If this mop sink didn't look so much like a urinal and wasn't right next to the toilet, maybe the sign wouldn't be necessary.</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/Bad-Affordance3.jpg" alt="False affordance" /></dt>
                    <dd>Figure: Figure: Bad Example - It might not have been a good idea to place a male policeman where the exhaust pipe is.</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/Bad-Affordance.jpg" alt="False affordance" /></dt>
                    <dd>Figure: Bad Example - Old MS Word - Because of the UI, people never knew they could use styles e.g. normal, H1, H2</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/Good-Affordance.jpg" alt="" /></dt>
                    <dd>Figure: Good Example - New MS Word - Because of the new ribbon UI, people intuitively know how to use styles</dd>
                </dl>
            </li>

            <li>
                <h2><a name="IntelligentDesign"></a>Less is More - Do you realize that when it comes to interface design 'less is more'?</h2>
                <p>'Less is more' is the idea that simplicity and clarity lead to good design. The interface design is an attempt to solve the problem of how to communicate clearly.</p>

                <p>How to make a user interface great:</p>
                <ul>
                    <li>Less is more - keep your design as simple and uncluttered as possible</li>
                    <li>Understand the importance of defaults - Aim for 'Next', 'Next', 'Next'</li>
                    <li>Hide advanced options, but make them easy to find!</li>
                </ul>
                <p>Most developers think about user interface last. They spend their time worrying about class design, threading, and system architecture. All this is important, of course. But the user only experiences software on the surface level.</p>
                <p>It might be fantastic under the covers, but if the user interface is not intuitive the user will think the application is just hopeless. If the user interface doesn't afford an easy and simple understanding of how to operate the application, you'll get a lot of unhappy customers and unnecessary support calls.</p>
                <p>Do yourself a favor, take some time to think about UI first.</p>
                <dl class="badImage">
                    <dt><img src="Images/badui2.jpg" alt="Bad UI Example" /></dt>
                    <dd>Figure: Bad Example - An example of a poor UI</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/bad-functionaloverload1.jpg" alt="Bad UI Example" /></dt>
                    <dd>Figure: Bad Example - Functional overload (a programmer probably designed this one)</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/bad-functionaloverload2.jpg" alt="Bad UI Example" /></dt>
                    <dd>Figure: Bad Example - Another example of Functional overload</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesGeneral/PublishingImages/OutlookCom.png" alt="Bad UI Example" /></dt>
                    <dd>Figure: Good Example - Outlook.com (the replacement to Hotmail), streamlined functionality and minimal</dd>
                </dl>
            </li>

            <li>
                <h2><a name="InformationScan"></a>Less is More - Do you know people scan, not read?</h2>
                <p>People rarely read word by word; instead, they scan the page, picking out individual words and sentences that seems more relevant.</p>
                <p>It is important to divide information, not show it all at once. The visual organization of information is vital to legibility. When displaying information or controls, designers need to visually convey:</p>
                <ol>
                    <li>Information structure</li>
                    <li>Relation between elements</li>
                    <li>Importance and relevance of elements</li>
                </ol>
                <dl class="badImage">
                    <dt><img src="Images/bad_informationscan.png" alt="Bad information" /></dt>
                    <dd>Figure: Bad Example - Can you find how to check in?</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/good_informationscan.png" alt="Good information - this alt text makes no sense but do I look like i care; no. maybe the guys in china have the right idea, do a shit job of it and no one will ever bother you about it ever again." /></dt>
                    <dd>Figure: Good Example - What about here? Can you find how to check in?</dd>
                </dl>
                <p>Another example of scanning, not reading is visually mapping.</p>
                <dl class="badImage">
                    <dt><img src="Images/Bad-Mapping.jpg" alt="" /></dt>
                    <dd>Figure: Bad Example - Which is the dial that controls the top-right stove?</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/Good-Mapping.jpg" alt="" /></dt>
                    <dd>Figure: Good Example - In this layout, it's easy to see which dial controls which stove</dd>
                </dl>
                <p>This also applies to text, read our rule on <a href="RulesToBetterInterfaces-Popups-and-Messages.aspx#ShortMessages"> Messages - Do you use messages that are concise and informative?</a></p>
            </li>

            <li>
                <h2><a name="ReduceComplexity"></a>Less is More - Do you always try to reduce complexity?</h2>
                <p>The human brain:</p>
                <ol>
                    <li>Never searches for OR compares all options</li>
                    <li>Prefers smaller sets of options (4 or less)</li>
                    <li>Picks the first option that looks good enough</li>
                    <li>Prefers a shorter option to a longer one</li>
                    <li>Makes a compromise between speed and accuracy</li>
                </ol>
                <p>It's important to keep these in mind when making design decisions or presenting data.</p>
                <p>Our visual short term memory has a capacity of 4 items. So options are easier for our brain to digest when presented in sets of 4.</p>
                <dl class="Image">
                    <dt><img src="Images/4VisualOptions1.jpg" alt="Adobe Illustrator" /></dt>
                    <dd>Figure: Blocks of 4 or less menu items are easier for the brain to consume</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/4VisualOptions2.jpg" alt="Adobe Illustrator" /></dt>
                    <dd>Figure: Even though the iPad has a larger screen estate, it still uses a max of 4 icons across</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/SimpleFormsResolution.png" alt="Good Interface Design Example" /></dt>
                    <dd>Figure: Good Example - A great example of removing complexity.</dd>
                </dl>
            </li>

            <li>
                <h2><a name="Story"></a>Do you know how to use storyboards?</h2>
                <p>Complex documentation can waste time. Many user requirements can be best encapsulated in screen mock-ups. Spend more time on mockups compared with time on documentation.</p>
                <p><a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/SpecificationByMockUp.aspx">Read more about storyboarding</a></p>
            </li>

            <li>
                <h2><a name="OpticalAlignment"></a>Do you consider optical alignment?</h2>
                <dl class="Image">
                    <dt><img src="Images/opticalalignment.jpg" alt="Optical alignment" /></dt>
                    <dd>Figure: In the first example, although the text is technically aligned, it does not 'look' it. In the second one, the "V" has been moved into the margin, but the optical alignment is now correct</dd>
                </dl>
                <p>Not only relevant in typography, optical alignment can also be used in forms and web.</p>
                <dl class="badImage">
                    <dt><img src="Images/bad_opticalalignment.jpg" alt="Bad alignment" /></dt>
                    <dd>Figure: Bad Example - The fields are aligned to the radio buttons, but it doesn't "look" good enough</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/good_opticalalignment.png" alt="Good alignment" /></dt>
                    <dd>Figure: Good Example - It seems neater, even though it is no longer technically aligned</dd>
                </dl>
            </li>
           

            <li>
                <h2><a name="Matrix"></a>Column Data - Do you make matrix columns as simple as possible?</h2>
                <dl class="badImage">
                    <dt><img src="Images/bad-matrixcol.jpg" alt="Bad alignment" /></dt>
                    <dd>Figure: Bad example - Hard to read these columns</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/good-matrixcol.jpg" alt="Good alignment" /></dt>
                    <dd>Figure: Good example - The whole table has been re-written and is now easier to understand</dd>
                </dl>
            </li>

            <li>
                <h2><a name="AlphanumericDown"></a>Column Data - Do you do alphanumeric down instead of across?</h2>
                <p>The search direction of a list should be obvious. When it comes to a multicolumn list, you should always head down instead of across for legibility.</p>
                <dl class="badImage">
                    <dt><img src="Images/bad-alphanum.jpg" alt="Bad alignment" /></dt>
                    <dd>Figure: Bad example - The list columns go across instead of down</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/good-alphanum.jpg" alt="Good alignment" /></dt>
                    <dd>Figure: Good example - The list is going down</dd>
                </dl>
            </li>

            <li>
                <h2><a name="ColumnsText"></a>Column Data - Do you know when to use columns or text?</h2>
                <p>It's OK to use text because it's more natural, but use columns if you need:</p>
                <ul>
                    <li>reordering</li>
                    <li>side by side comparison</li>
                    <li>totals.</li>
                </ul>
                <dl class="Image">
                    <dt><img src="Images/ColumnsText.jpg" alt="Bad alignment" /></dt>
                    <dd>Figure: While text looks friendlier, in terms of presenting data it's not the easiest to read</dd>
                </dl>
            </li>

            <li>
                <h2><a name="HomePagePortal"></a>Do you make the homepage as a portal?</h2>
                <p>You should put all the useful and current information on the homepage and also make it easy to find your core functions there.</p>
                <p>E.g. Top billing customers for the month and a button under it for adding an invoice.<br />
                E.g. See the number of bugs counted by the most common.</p>
                <dl class="image">
                    <dt><img src="Images/HomepagePortal.png" alt="TWA" /></dt>
                    <dd>Figure: The homepage of TWA is a portal.</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/HomepagePortalSoftware.jpg" alt="Adobe Illustrator" /></dt>
                    <dd>Figure: Adobe's Creative Suite also opens a portal 'homepage'.</dd>
                </dl>
            </li>

            <li>
                <h2><a name="Resolutions"></a>Does your application's interface fit in a small screen resolution?</h2>
                <p>One side effect of having busy forms is that it doesn't scale down.</p>
                <p>Each user prefers to have their own resolution. You must check if your controls will fit on the user's screen. Think about on which computers your application will run, and what devices will display it. To be on the safe side, it is advisable to fit your controls on an 1024 x 768px screen. Our projector has that resolution and it may well be used for presenting your application to the client.</p>
                <dl class="badImage">
                    <dt><img src="Images/InterfaceResBadExample.jpg" alt="Bad Interface Design Example" /></dt>
                    <dd>Figure: Bad Example - Form is too large to fit inside 1024x768px resolution</dd></dl>
                <dl class="goodImage">
                    <dt><img src="Images/InterfaceResGoodExample.jpg" alt="Good Interface Design Example" /></dt>
                    <dd>Figure: Good Example - Form fits inside any screen resolution</dd>
                </dl>
                <p>The potential solutions for this problem are:</p>
                <ol>
                    <li>Reorder and move the controls around on the form.</li>
                    <li>Implement Tab pages.</li>
                    <li>Use a wizard type interface, with Next, Back and Finish.</li>
                    <li>Create multiple forms each containing a subset of the controls.</li>
                    <li>Create a menu based form where the items are categories that some form controls fall under.<br />
                        Similar to VS. Net's Tools -&gt; Options. </li>
                    <li>Hide unimportant controls and add the option to show them if necessary</li>
                </ol>
                <p>Read our rule on<a href="RulesToBetterWebsitesLayout.aspx#Resolution"> Do you design your web pages to work on 1024x768px (not 800x600px)?</a> to know more.</p>
                <p>From Adam Cogan (http://www.adamcogan.com/2012/11/18/microsoft-is-onto-something-here/):</p>
                <blockquote>
                    <p>I am amazed how good the split screen is so you can be reading email while continuing to watch that movie.</p>
                    <p>One thing developers need to be aware of when building apps, is to consider the size for the different resolutions in particular when an application is snapped. On the Surface, the snap view divides the screen up into ¼ and ¾, but this will be different on different devices (actually the snap view is always 342 pixels) so you really need to get into responsive designing. For a good user experience, keep the left snap view for reading, not interactive stuff like filling in forms.</p>
                    <p>The great thing for developers is the way you test. With Visual Studio 2012, the emulator simulates the Surface perfectly.</p>
                </blockquote>

                <dl class="Image">
                    <dt><img src="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesGeneral/SiteAssets/Pages/Does-your-application%27s-interface-fit-in-a-small-screen-resolution/SurfaceScreen.jpg" /></dt>
                    <dd>Figure: The Surface screen allows you to place two apps side by side.</dd>
                </dl>
            </li>

            <li>
                <h2><a name="LoginState"></a>Authentication - Do you make the logged in state clear?</h2>
                <p>Remember to make the "logged in" state clear enough to help the user know the current state.</p>
                <dl class="badImage">
                    <dt><img src="Images/weblogin_bad.gif" alt="sample of logged in page" /></dt>
                    <dd>Figure: Bad Example on Web form - The user is logged in, but it isn't very clear</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/weblogin_good.gif" alt="sample of logged in page" /></dt>
                    <dd>Figure: Good Example on Web form - It's clear that the user is logged in</dd>
                </dl>
                <dl class="badImage">
                    <dt><img src="Images/winlogin_bad.gif" alt="sample of logged in form" /></dt>
                    <dd>Figure: Bad Example on Win form - The user is logged in, but it isn't very clear</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/BetterInterface_sqlAuditorLogin.jpg" alt="sample of logged in form" /></dt>
                    <dd>Figure: Good Example on Win form - It's clear that the user is logged in</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/weblogoff.gif" alt="sample of logged off page" /></dt>
                    <dd>Figure: Good Example on Web form - Logged off state</dd>
                </dl>
                <dl class="image">
                    <dt><img src="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesGeneral/SiteAssets/Pages/Authentication---Do-you-make-the-logged-in-state-clear/MetroLoggedIn.jpg" alt="sample of logged on page" /></dt>
                    <dd>Figure: Good Example – Metro UI’s new logged in state</dd>
                </dl>
            </li>


            
            <li>
                <h2><a name="ExtraInfo"></a>Give Context - Do you include extra information (e.g. Checkboxes)?</h2>
                <p>Put in all information, even if some aren't selectable, provided there is context.</p>
                <p>This lets the users see what is available and what isn't, without being overbearing.</p>
                <dl class="badImage">
                    <dt><img src="Images/BadScanOptions.gif" alt="" /></dt>
                    <dd>Figure: Bad Example - The "Check broken links" checkbox in this case is not an option, but showing it gives the user context</dd>
                </dl>
            </li>

            <li>
                <h2><a name="ExtraInfoScreen"></a>Give Context - Do you include extra information (e.g. Screenshots)?</h2>
                <dl class="goodImage">
                    <dt><img src="Images/GoodMoreInfo.png" alt="" /></dt>
                    <dd>Figure: Good Example - The screenshot provides more, useful information and gives the user context</dd>
                </dl>
            </li>

            <li>
                <h2><a name="LogUsage"></a>Do you log usage?</h2>
                <p>So you can see what functions are being used more often (e.g. reports, menu items)</p>
                <p>Plus, you can work out what fields to show on search pages (standard and advanced tabs) and which parameters are being used.</p>
                <dl class="image">
                    <dt><img src="Images/GoodLogUsage.png" alt="Good Log usage" /></dt>
                    <dd>Figure: Keep track of what terms are searched most often.</dd>
                </dl>
                <p>You can achieve this with Redgate's <a href="http://www.red-gate.com/products/dotnet-development/smartassembly/features/">Feature Usage Reporting</a>.</p>

                <dl class="image">
                    <dt><img src="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesGeneral/SiteAssets/Pages/Do-you-log-usage/logusage-smartassembly.png" alt="Good Log usage" /></dt>
                    <dd>Figure: Smart Assembly Professional keeps tracks of usage.</dd>
                </dl>
                <dl class="image">
                    <dt><img src="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesGeneral/SiteAssets/Pages/Do-you-log-usage/logusage-pafortfs.jpg" alt="Good Log usage" /></dt>
                    <dd>Figure: PA for TFS.</dd>
                </dl>
            </li>

            <li>
              <h2><a name="Wiki"></a>Help - Do you have a wiki for each page or form?</h2>
              <p>In agile development; updates, changes and bug fixes happen all the time and an issue that a user encounters today might already is fixed or have a workaround. That is why each page or form should link to a wiki page with any common problems that a user might encounter (and workarounds for them) and planned changes.</p>
              <p>This saves the end user from resorting to crawling the web for solutions.</p>
               <dl class="bad">
                    <dt>
                        <p>
                        <strong>From:</strong> Tech Support<br />
                        <strong>Sent:</strong> Wednesday, 27 January 2010 4:31 PM<br />
                        <strong>To:</strong> Mr Northwind<br />
                        <strong>Subject:</strong> RE: Issue with lab management hosts</p>
                        <p>Hi Mr Northwind</p>
                        <p>There was a bug in Beta2 (fixed in upcoming RC release) wherein even if you have no lab artifacts in a host group, it did not allow you to delete host group from a Project collection in Team Foundation Admin Console UI until you delete the host groups explicitly from all the associated team projects. </p>
                        <ol>
                        <li>
                        <p>Run the following commands to project level association (make sure that there are no Lab environments in this Host Group).</p> 
                        <p><strong>TFSLabConfig.exe DeleteTeamProjectHostGroup  /Collection:&lt;CollectionUrl&gt; /teamProject:* /name:"Testing Host" </strong></p>
                        </li>
                        <li>
                        <p>Delete the host groups from Team Foundation Admin Console UI</p>
                        <p><strong>There was a similar issue with the Library shares also, and has been fixed now.</strong></p>
                        </li>
                        </ol>
                        <p>Regards<br />
                        Tech Support</p>
                        <hr />
                        <p>
                        <strong>From:</strong> Mr Northwind<br />
                        <strong>Sent:</strong> 27 January 2010 10:07<br />
                        <strong>To:</strong> Tech Support<br />
                        <strong>Subject:</strong> Issue with lab management hosts</p>
                        <p>I accidentally (on scvmm) created a folder called "Testing" under by All Hosts group. In TFSAC I added the AllHosts\Testing host. This lead me to other problems so I tried to remove this host from TFS. Guess what? I can't remove any hosts from TFS at all! Even after I deleted it from SCVMM. The error I get is: </p>
                        <p>TF259085: Team Foundation Server could not delete the environment location because the following All Hosts_Testing is currently in use: TeamProjectCollectionhostGroup. Delete the resources at this location, and then try the operation again. (type SoapException)</p>
                        <p>I have no idea what this is telling me. Anyone have any ideas?</p>
                        <p>Thanks!<br />
                        Mr Northwind</p>
                    </dt>
                    <dd>
                     Figure: Bad Example - The user encounters an issue and has to email someone about it
                    </dd>
                    </dl> 
                    <dl class="goodImage">
                    <dt>
                        <img src="Images/InterfacesWiki.png" alt="" /></dt>
                    <dd>
                     Figure: Good Example - The 'Wiki...' link in the bottom left, takes the user to a wiki page with common issues and workarounds for this form (e.g. Creating a Project Portal)
                    </dd>
                </dl>
            </li>

            <li>
                <h2><a name="ErrorDirect"></a>Help - Do you help users when they get errors by directing them to a wiki or KB?</h2>
                <p>Every message box should contain a link to a wiki or KB with more details about the message. In the example of the below error message:</p>
                <dl class="badImage">
                    <dt><img src="Images/NoDirectForError.jpg" alt="No direct for this error" /></dt>
                    <dd>Figure - Bad Example: User now has to google to find out how to fix this error</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/DirectForError.jpg" alt="Direct for this error" /></dt>
                    <dd>Figure - Good Example: If you click on the "Get Help..." link on the bottom of the form it will take you to a wiki page with common issues and resolutions</dd>
                </dl> 
            </li>

            <li>
                <h2><a name="StrikeThroughCompletedItems"></a>Do you strike-through completed items?</h2>
                <div class="infoBox" style="float:right; margin-left:20px;">
                    <h4>Learn how to <a href="/ssw/KB/KB.asp?KBID=Q803334">add &quot;Strike-Through&quot;</a> to your toolbar.</h4>
                </div>
                <p>When you're giving an update on progress on a task list or a schedule, <s>STRIKE OUT</s> the items that have been completed. Not only does it visually explain where you are, it also gives you a great sense of satisfaction...</p>
                <dl class="goodImage">
                    <dt><img src="Images/StrikeThrough.gif" alt="Strike Through" /></dt>
                    <dd>Figure: Good Example - Completed items are struck-through</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/OutlookTaskList.JPG" alt="Strike Through in Outlook" /></dt>
                    <dd>Figure: Good Example - Completed tasks are struck-through</dd>
                </dl>
            </li>

            <li>
                <h2><a name="Metro-UI"></a>Do you use the Metro UI when applicable?</h2>
                <p>Metro is <a href="http://www.microsoft.com/design/" target="_blank">Microsoft&#8217;s UI design</a> guideline.</p>
                <p>From Adam Cogan's blog (http://www.adamcogan.com/2012/11/18/microsoft-is-onto-something-here/)</p>
                <blockquote>
                <p>We now have devices from phones, tablets, work PCs and servers all with the same Metro (don't tell me to call it Modern UI please) tiled user interface.</p>
                <p>What that means for users is that they have the same *one* user experience.</p>
                <p>What that means for developers is that we have the simplest way to build apps that go across these 3 devices.</p>
                </blockquote>

                <dl class="goodImage">
                    <dt><img src="Images/Metro-Good.jpg" alt="Metro UI in TFSPreview" /></dt>
                    <dd>Figure: Good example &#8211; TFSPreview.com adopts the Metro style</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/Metro-Good2.jpg" alt="Metro UI in TimePRO" /></dt>
                    <dd>Figure: Good example &#8211; <a href="https://ssw.sswtimepro.com">ssw.sswtimepro.com</a> has been Metro influenced.</dd>
                </dl>
            </li>

            <li>
                <h2><a name="social-network-links"></a>Do you give the 6 social network options?</h2>
                <p>If users want to make some information public, then make it easy for them.</p>
                <dl class="goodImage">
                    <dt><img src="Images/social-networks.jpg" alt="social networks links" /></dt>
                    <dd>Figure: Good example - Users can easily share information via 6 avenues, Google+, Twitter, Facebook, email, SMS, and copy to clipboard for pasting.</dd>
                </dl>


            </li>

            <li>
                <h2><a name="EasySearch"></a>Do you have a "search box" to make your data easy to find?</h2>
                <dl class="goodImage">
                    <dt><img border="0" src="Images/EasySearch.png" alt="Easy to search" /></dt>
                    <dd>Figure: Good example - a "search box" makes it easy to find data</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img border="0" src="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesGeneral/PublishingImages/win8search.jpg" alt="Easy to search" /></dt>
                    <dd>Figure: Good example - the search bar in Windows 8 is now always in the same position, no matter what program or where you are searching for. You can activate Charms in Windows 8 by mousing to the top right corner.</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img border="0" src="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesGeneral/SiteAssets/Pages/Do-you-have-a-search-box-to-make-your-data-easy-to-find/searchbox.png" alt="Easy to search" /></dt>
                    <dd>Figure: Good Example - TFS Preview has an easy to find search box.</dd>
                </dl>
            </li>

            <li>
                <h2><a name="gamification"></a>Do you know how to use "gamification"?</h2>
                <p>"Gamification" is a method of encouraging user participation. Usually these are a set of fictional incentives such as points or achievement badges.</p>
                <p>It originated with Frequent Flyer programs and has crossed over into the software world with the success of FourSquare.</p>
                <p>This concept is being utilized even in <a href="http://channel9.msdn.com/achievements/visualstudio">Visual Studio</a>.</p>
                <dl class="goodImage">
                    <dt><img src="Images/msdn-statistics.jpg" alt="MSDN Screenshot" /></dt>
                    <dd>Figure: Good Example &#8211; MSDN allows users to score achievement points</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/stack-overflow-points.jpg" alt="Stack Overflow Screenshot" /></dt>
                    <dd>Figure: Good Example &#8211; Stack Overflow uses reputation points, awarded by how useful your answer to other user submitted questions were</dd>
                </dl>
            </li>

            <li>
                <h2><a name="HighlightIncompleteWork"></a>Do you highlight incomplete work with red text?</h2>
                <p>It is important that users of your application who provide feedback have very clear indications of work that is not yet complete, to avoid feedback on sections of your application that are still under development.</p>
                <p>Also, see our <a href="http://www.ssw.com.au/ssw/Standards/rules/rulestobetterwindowsforms.aspx#RedYellowDesigner">rule on colour usage in windows forms</a>.</p>
                <dl class="badImage">
                    <dt><img src="Images/bad-incomplete-work.jpg" /></dt>
                    <dd>Figure: Bad Example - A tester or a product owner who comes to this page may believe that it is broken, or that the developers have 'missed' it. Always be clear about what parts of your application are not yet ready for feedback</dd>
                </dl>
                <dl class="goodImage">
                    <dt><img src="Images/good-incomplete-work.jpg" /></dt>
                    <dd>Figure: Good Example - It is clear to testers and to the product owner that this page is incomplete, but they can get more details from the product backlog</dd>
                </dl>

                <dl class="goodImage">
                    <dt><img src="Images/best-incomplete-work.jpg" /></dt>
                    <dd>Figure: Best Example - Use feature toggles to not show incomplete elements to testers or product owners. See <a href="http://martinfowler.com/bliki/FeatureToggle.html" target="_blank">FeatureToggle by Martin Fowler</a>. Feature Toggling can require a large amount of extra work and so is often only implemented by teams with a need to ship features while others are still in development</dd>
                </dl>
 
            </li>

            <li>
                <h2><a name="TouchInterface"></a>Do you design for touch interfaces?</h2>
                <p>Technology is evolving and your interface needs to stay up to date. Future proof your interface and start designing for touch devices. </p> 
            </li>

            <li>
                <h2><a name="Experimentation"></a>Do you encourage experimentation?</h2>
                <p>Encourage experimentation to increase comfort:</p>
                <ul>
                    <li>Undo</li>
                    <li>Remember your last state</li>
                    <li>Live preview</li>
                </ul>
            </li>

            <li>
                <h2><a name="WindowsPhone"></a>Do you know what guidelines to follow for WP8?</h2>
                <p>Microsoft has published their User Experience Design Guidelines for Windows Phone: <a href="http://msdn.microsoft.com/en-us/library/windowsphone/design/hh202915(v=vs.92).aspx">http://msdn.microsoft.com/en-us/library/windowsphone/design/hh202915(v=vs.92).aspx</a></p> 
            </li>

        </ol>
        <h2>Related Rules</h2>
            <p>Read the specific rules below:</p>
            <ul>
				<li>Rules to Better Interfaces - General</li>
                <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Windows-Applications.aspx">Rules to Better Interfaces - Windows Application</a></li>
                <li><a href="/ssw/Standards/Rules/RulesToBetterInterfaces-Popups-and-Messages.aspx">Rules to Better Interfaces - Popups and Messages</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Controls.aspx">Rules to Better Interfaces - Controls</a></li>	
                <li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Forms.aspx">Rules to Better Interfaces - Forms</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Wizard.aspx">Rules to Better Interfaces - Wizards</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Reports.aspx">Rules to Better Interfaces - Reports, Charts and Dates</a></li>
				<li><a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Mobile.aspx">Rules to Better Interfaces - Mobile UI</a></li>
            </ul>

        <h2>Links</h2>
            <ul>
                <li><a href="/ssw/Redirect/AskTog.htm" target="_blank">http://www.asktog.com/basics/firstPrinciples.html</a></li>
                <li><a href="/ssw/Redirect/Microsoft/MSDNMessageBoxes.htm" target="_blank">http://msdn.microsoft.com/library/Default.asp?url=/library/en-us/dnwue/html/ch09f.asp</a></li>
            </ul>

        <h2>Acknowledgements</h2>
            <p><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></p>

    </div>
</asp:Content>
