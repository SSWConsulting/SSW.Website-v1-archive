<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Suggestions for TFS Azure &#8211; Agile Project Management" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230536574757073')"> Let us know</a> what you think.</p>
    
    <h3>TFS Azure &#8211; Agile Project Management</h3>
    <div class="TableOfContents">
        <ol>
            <li><a href="#Make-Admin-Mode-more-obvious">Administration Mode is less than obvious</a></li>
            <li><a href="#Admin-stuff-off-homepage">Move the admin stuff off the home page, into the menu drop down</a></li>
            <li><a href="#the-back-button">The back button &#8211; ooowww!</a></li>
            <li><a href="#adding-member">Adding a member is not so intuitive</a></li>
            <li><a href="#Nice-URLs-dont-have-spaces">Nice urls don't have %20</a></li>
            <li><a href="#Store-list-activity">Store a list activity</a></li>
            <li><a href="#Rename-team">Allow me to rename a team and keep the links working</a></li>
            <li><a href="#Gallery">I would love a gallery</a></li>
            <li><a href="#AddFavourite">In IE, 'Add a Favourite' should mention the Team Project name first</a></li>
            <li><a href="#intro-sentences">TFSPreview - Intro sentences would help</a></li>
            <li><a href="#LiveID-Skype">TFSPreview - Support LiveID + Skype </a></li>
            <li><a href="#jquery-validation">TFSPreview &#8211; Lets improve the validation with the muscle of jQuery</a></li>
            <li><a href="#projector">TFSPreview - unreadable on a projector</a></li>
            <li><a href="#custom-right-click">TFSPreview - Allow customization of the right click menu</a></li>
            <li><a href="#bug-or-PBI">TFSPreview Board - Help me tell the difference between a Bug and a PBI</a></li>
            <li><a href="#roadmap">Help me create a roadmap for a project</a></li>
            <li><a href="#add-notes">Help me to add notes for the Sprint Retrospective *during* the Sprint</a></li>
            <li><a href="#admin-settings">Help me to understand that my settings have been saved on the Administer account iterations page</a></li>
            <li><a href="#backlog-view">Improve Product Backlog View</a></li>
            <li><a href="#share-URL">TFSPreview - I want a URL to share with my Product Owner (aka the Customer)</a></li>
            <li><a href="#rollover-on-title">TFSPreview &#8211; Add rollover on PBI Title, to indicate clickable link</a></li>
            <li><a href="#highlight-row">Board - Highlight the selected row when clicked with the mouse (in the white space of row)</a></li>
            <li><a href="#nice-URL">Have a nice URL like GitHub</a></li>
            <li><a href="#looking-for-love">TFSPreview and SharePoint 2010 &#8211; looking for love</a></li>
            <li><a href="#avoid-getting-error">TFSPreview - Adding TFS Server - avoid me getting an error</a></li>
            <li><a href="#guidance-on-bugs">Guidance on Bugs</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="Make-Admin-Mode-more-obvious"></a>Administration Mode is less than obvious</h2>
                <p>A user does not know they are in administration mode. Why? Well the 'NorthwindScrum' project is bold and not the 'Exit Administration' link</p>
                <dl class="image">
                    <dt><img src="Images/tfs-azure-add-red-cross.jpg" alt="Figure: A user does not know they are in administration mode. Add the red cross and rename to Close Administration View"/></dt>
                    <dd>Figure: A user does not know they are in administration mode. Add the red cross and rename to 'Close Administration View'</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/tfs-azure-ppt-ui.jpg" alt="Figure: Copying PowerPoint UI for its Master View mode would help "/></dt>
                    <dd>Figure: Copying PowerPoint's UI for its Master View mode would help </dd>
                </dl>
            </li>

            <li>
                <h2><a name="Admin-stuff-off-homepage"></a>Move the admin stuff off the home page, into the menu drop down</h2>
                <p>Moving this into a dropdown menu would make the home page cleaner... and this info would be available on all pages - not only when you are on the home page.</p>
                <dl class="image">
                    <dt><img src="Images/tfs-admin-stuff-off-menu.jpg" alt="Figure: Moving this to  menu drop down would be better"/></dt>
                    <dd>Figure: Moving this to  menu drop down would be better</dd>
                </dl>
            </li>

            <li>
                <h2><a name="the-back-button"></a>The back button &#8211; ooowww!</h2>
                <p>Yes, I know it is the big things that matter :-)</p>
                <dl class="image">
                    <dt><img src="Images/tfs-back-button.jpg" alt="Figure: Can we have something like the top left (good example), rather than the bottom right (bad example)"/></dt>
                    <dd>Figure: Can we have something like the top left (good example), rather than the bottom right (bad example)</dd>
                </dl>
                <p>So 2 things to fix. The position of the button and the style...</p>
                <ul>
                    <li>The web has meant that navigation is now expected at the top of a form. So I would move it to the top left of the white popup form</li>
                    <li>Also in this case an icon would be better than text</li>
                </ul>

            </li>

            <li>
                <h2><a name="adding-member"></a>Adding a member is not so intuitive</h2>
                <dl class="image">
                    <dt><img src="Images/tfs-adding-member-1.jpg" alt="Figure: I want to add a 3rd member&#8230; how?"/></dt>
                    <dd>Figure: I want to add a 3rd member&#8230; how?</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/tfs-adding-member-2.jpg" alt="Figure: In these 2 places please add Add Member"/></dt>
                    <dd>Figure: In these 2 places please add "Add Member"</dd>
                </dl>
                <h4>More Information</h4>
                <p>This is how you do it currently... which is not too obvious</p>
                <dl class="image">
                    <dt><img src="Images/tfs-adding-member-3.jpg" alt="Figure: Step 1 of adding a Member"/></dt>
                    <dd>Figure: Step 1 of adding a Member</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/tfs-adding-member-4.jpg" alt="Figure: Step 2 of adding a Member. Really finding this add members (underlined) hyperlink is too hard"/></dt>
                    <dd>Figure: Step 2 of adding a Member. Really finding this "add members" (underlined) hyperlink is too hard</dd>
                </dl>
                <p>PS: You don't need the text "You can add and remove members from this screen" - it is just noise</p>
                <p>PPS: You need to say "Adding a member is simple, just ask for their Live ID email"- it makes it clear that Live IDs are required.</p>
            </li>

            <li>
                <h2><a name="Nice-URLs-dont-have-spaces"></a>Nice urls don't have %20</h2>
                <p>DefaultCollection = Good<br />
                My Team = Bad</p>
                <p>I am just pointing out that if you look at the 2 arrows (below)&#8230; you have a space in one and not in the other.</p>
                <p>I am only referring here to the 'out of the box' experience...</p>
                <p>I understand some people will put spaces in their own names.</p>
                <p>That said: I believe that people should be warned/stopped from putting spaces into fields that render in the URL</p>
                <dl class="image">
                    <dt><img src="Images/tfs-url-with-spaces.jpg" alt="Figure: The green is good... the red is bad "/></dt>
                    <dd>Figure: The green is good. The red is bad</dd>
                </dl>
            </li>

            <li>
                <h2><a name="Store-list-activity"></a>Store a list activity</h2>
                <p>I would love to see new section 'Summary of Activity'</p>
                <p>I could see when the others last logged in... and what recent projects they have been working on, when they last jumped on.</p>
                <p>Also recent files... their checkins... the work items that they have been working on...</p>
                <p>PS: Links to reports would be even nicer gold plating </p>
                <dl class="image">
                    <dt><img src="Images/tfs-is-eric-logged-on.jpg" alt="Figure: Has Eric logged on? Has he done anything? "/></dt>
                    <dd>Figure: Has Eric logged on? Has he done anything?</dd>
                </dl>
            </li>

            <li>
                <h2><a name="Rename-team"></a>Allow me to rename a team and keep the links working</h2>
                <p>I can rename a team (e.g. from the auto-generated "My Team" into something more meaningful).</p>
                <p>However this means that all links are invalid and if users are already working with the backlog items, then they will get ugly errors.</p>
                <dl class="image">
                    <dt><img src="Images/tfs-rename-team.jpg" alt="Figure: Rename Team? "/></dt>
                    <dd>Figure: I want to eliminate this error message</dd>
                </dl>
                <p>That is a nice error message... well as nice I have seen for a while... but the goal should be to remove this error message altogether.</p>
                <p>I would like to see this happen by adding in an entry into Tools | Options &#8230; auto populate it with:</p>

                <h4>Additional URLs</h4>
                <table class="clsSSWTable" width="50%">
                    <tbody>
                    <tr>
                        <th>Name</th>
                        <th>Description</th>
                        <th>&nbsp;</th>
                    </tr>
                    <tr>
                        <td>[ NorthindOldName ]</td>
                        <td>[ (auto added from Rename) ]</td>
                        <td>[ &nbsp;delete&nbsp; ]</td>
                    </tr>
                    <tr>
                        <td>[ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ]</td>
                        <td>[ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ]</td>
                        <td>&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <p>Obviously you would not be able to name a project to one that is used (e.g. the old name NorthwindOldName) until they had removed this record.</p>
                <h4>More Information:</h4>
                <p>To do it you could use:<br />
                <a href="http://www.iis.net/download/URLRewrite" target="_blank">http://www.iis.net/download/URLRewrite</a> <br />
                or<br />  
                <a href="http://urlrewriter.net/" target="_blank">http://urlrewriter.net/</a>  Open Source URL Rewriter for .NET / IIS / ASP.NET<br />
                or<br />
                URL Routing - system.web.routing in asp.net 4 (recommended)<br />
                <a href="http://weblogs.asp.net/scottgu/archive/2009/10/13/url-routing-with-asp-net-4-web-forms-vs-2010-and-net-4-0-series.aspx" target="_blank">http://weblogs.asp.net/scottgu/archive/2009/10/13/url-routing-with-asp-net-4-web-forms-vs-2010-and-net-4-0-series.aspx</a></p>

                <h4>Even Better:</h4>
                <p>If you had an extensive model (like MVC Orchard&#8217;s Gallery) then I am sure I could get Tiago Pascoal to write this add-in.</p>
            </li>

            <li>
                <h2><a name="Gallery"></a>I would love a Gallery</h2>
                <p>Hi, VS team! If you had an extensive model (like MVC Orchard&#8217;s Gallery) then I am sure you could sit back and relax and let guys like Tiago Pascoal do all the work.</p>
                <dl class="image">
                    <dt><img src="Images/tfs-orchard-example.jpg" alt="Figure: Orchard example "/></dt>
                    <dd>Figure: Make TFS Azure a platform... like MVC Orchard</dd>
                </dl>
                <p>In the CMS Orchard, modules are great. They can:</p>
                <ul>
                    <li>be additional fields or functionality to existing features </li>
                    <li>be a widget (that you can add to various zones and layers) </li>
                    <li>create a new administration menu option with all kinds of wonderful new features</li>
                </ul>
                <p><strong>So the possibilities for devs are pretty endless.</strong></p>
                <p>Basic Orchard CMS website owner with no development skills can experience:</p>
                <ul>
                    <li>a wonderful array of modules via the Gallery</li>
                    <li>a simple Gallery where they download, install, and enable a module with only 2 clicks</li>  
                    <li>an ever growing list of modules that keeps growing and growing as developers create more</li>
                </ul>
                <p><strong>The community does the work. Awesome.</strong></p>
            </li>

            <li>
                <h2><a name="AddFavourite"></a>In IE, 'Add a Favourite' should mention the Team Project name first</h2>
                <dl class="image">
                    <dt><img src="Images/IE-add-favourite.jpg" alt="IE-add-favourite "/></dt>
                    <dd>Figure: Change from "Welcome - Microsoft Team Foundation Server" to "SSW - Microsoft TFS Online"</dd>
                </dl>
            </li>

            <li>
                <h2><a name="intro-sentences"></a>TFSPreview - Intro sentences would help</h2>
                <dl class="image">
                    <dt><img src="Images/intro-sentences-1.jpg" alt="Intro sentences suggestion"/></dt>
                    <dd>Figure: How about a sentence at the top E.g. Here the Product Owner adds user stories and prioritizes them</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/intro-sentences-2.jpg" alt="Intro sentences suggestion"/></dt>
                    <dd>Figure: How about a sentence at the top E.g. Here the team use this for their daily standups. Select the 'Person' combo on the right to highlight your items. Then proceed with answering the 3 questions for the daily standup</dd>
                </dl>
            </li>

            <li>
                <h2><a name="LiveID-Skype"></a>TFSPreview - Support LiveID + Skype </h2>
                <p>I have noticed that a lot of people (general VS devs) don't have a LiveID... or tell me they don't remember what it was.</p>
                <p>Now Microsoft has purchased Skype... consider allowing us to sign in with Skype?</p>
                <p>As a minimum it would help when LiveID is down or has cookie problems (which has been happening for years)</p>
                <dl class="image">
                    <dt><img src="Images/liveID.jpg" alt="LiveID authentication"/></dt>
                    <dd>Figure: Let&#8217;s make this LiveID authentication screen less of a barrier</dd>
                </dl>
            </li>

            <li>
                <h2><a name="jquery-validation"></a>TFSPreview &#8211; Lets improve the validation with the muscle of jQuery</h2>
                <p>Validation should be inline using jquery etc</p>
                <p>Let's keep up with asana.com which has a nice responsive UI, with nice validation.</p>
                <dl class="badImage">
                    <dt><img src="Images/jquery-validation-bad.jpg" alt="jQuery validation bad"/></dt>
                    <dd>Figure: Bad example &#8211; Not easy to know I have made 3 mistakes here. I don&#8217;t want to read a Message box (it is so 1980s)</dd>
                </dl>

                <dl class="image">
                    <dt><img src="Images/jquery-validation.jpg" alt="jQuery validation"/></dt>
                    <dd>Figure: If you have not tried Asana.com for 10 minutes, you should. It is a lovely approach to work items</dd>
                </dl>

                <dl class="goodImage">
                    <dt><img src="Images/jquery-validation-good.jpg" alt="jQuery validation good"/></dt>
                    <dd>Figure: Good example &#8211; Asana.com has lovely control validation, powered by jQuery</dd>
                </dl>

            </li>

            <li>
                <h2><a name="projector"></a>TFSPreview - unreadable on a projector</h2>
                <ol>
                    <li>
                        <p>The font is too small for this page &#8211; nobody could read it in the room&#8230;.. totally unreadable on a projector<br />
                        Not very Web 2.0</p>
                        <p>Note:  Specifically the stuff highlighted was the problem&#8230;.. it was a demo nightmare</p>
                    </li>
                    <li>
                        <p>In addition there is *no way* to manually change the font of the text highlighted.<br />
                        Why?<br /> 
                        It is a HTML field after all</p>
                    </li>
                    <dl class="image">
                        <dt><img src="Images/let-me-change-font.jpg" alt="change font"/></dt>
                        <dd>Figure: It is a HTML field &#8211; let me change the font &#8211; better still change the out of the box experience</dd>
                    </dl>
                </ol>
            </li>

            <li>
                <h2><a name="custom-right-click"></a>TFSPreview - Allow customization of the right click menu</h2>
                <p>Suggestions:</p>
                <ul>
                    <li>Allow customization of the right click menu</li>
                    <li>Out of the box add menu item &#8220;Add: Bug&#8221;</li>
                </ul>
                <dl class="image">
                    <dt><img src="Images/custom-right-click.jpg" alt="should have Add: Bug option"/></dt>
                    <dd>Figure: I should have another option "Add: Bug"</dd>
                </dl>
            </li>

            <li>
                <h2><a name="bug-or-PBI"></a>TFSPreview Board - Help me tell the difference between a Bug and a PBI</h2>
                <h4>What I would like out of the box:</h4>
                <p>To enable me to tell if it is a bug or a bug, I would like the font to be red... Even nicer add a little Bug icon.</p>

                <h4>What I would like in terms of global customization:</h4>
                <p>But even better... I expect that I could define this at a global field level. Yes I know this is formatting, but I think formatting should be included in the global field level.</p>
                <p>Even better isolate it out into a skin/theme file... Then I could develop a cool one. Examples:</p>
                <ul>
                    <li>IBM blue - based on my company</li>
                    <li>Window 8 tile theme / metro</li>
                    <li>Apple iPad style</li>
                </ul>

                <dl class="image">
                    <dt><img src="Images/bug-or-pbi.jpg" alt="which are bugs"/></dt>
                    <dd>Figure: Currently I can't tell which ones are bugs. I would like the font to be red... Even nicer add a little Bug icon</dd>
                </dl>

                <dl class="image">
                    <dt><img src="Images/bug-or-pbi2.jpg" alt="something different"/></dt>
                    <dd>Figure: (Advanced) If I wanted something different to what is in the box, I would like to define it and then it would also show in other places like the backlog</dd>
                </dl>
            </li>

            <li>
                <h2><a name="roadmap"></a>Help me create a roadmap for a project</h2>
                <p>Currently there is no option for creating a roadmap containing the large stories ("Epics").</p>
                <dl class="image">
                    <dt><img src="Images/epic.jpg" alt="epic checkbox"/></dt>
                    <dd>Figure: On the PBI add checkbox "Epic". Even better give us the ability to add tags (with a built in one called "Epic")</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/epic2.jpg" alt="roadmap"/></dt>
                    <dd>Figure: Add a node "Roadmap" that shows "Epics". This will be useful to put on the boardroom wall to help implement this rule: <a href="https://www.ssw.com.au/rules/do-you-have-a-war-room-summary">Do you have a war room?</a></dd>
                </dl>
            </li>

            <li>
                <h2><a name="add-notes"></a>Help me to add notes for the Sprint Retrospective *during* the Sprint </h2>
                <p>It is easy when the Sprint Retrospective time comes, to forget some of the events that have caused problems during the Sprint. Therefore people bring up things that they recall e.g things that happened in the last day or two. </p>
                <p>A solution is to have a place to add the notes as you go. Currently there is no place to store notes from the Sprint that we can use as part of our retrospective. </p>
                <p>Note: Even a link to a SharePoint wiki would do (not ideal)</p>
                <dl class="image">
                    <dt><img src="Images/retro-notes.jpg" alt="retro notes"/></dt>
                    <dd>Figure: We need one more tab, with one field called "Retro notes"</dd>
                </dl>
            </li>

            <li>
                <h2><a name="admin-settings"></a>Help me to understand that my settings have been saved on the Administer account iterations page</h2>
                <p>On a web page, generally, people expect to change options and click a save button.</p>
                <p>Currently when a user changes a setting, the AJAX animations appear <strong>very</strong> briefly. Many students in my Scrum class were unsure if their settings had been saved and asked:</p>
                <p><em>"Where is the save button on this page?"</em></p>
                <dl class="image">
                    <dt><img src="Images/save-btn.jpg" alt="Where is the save button?"/></dt>
                    <dd>Figure: Where is the save button? The first circle is a very unusual thin line that is meant to indicate saving is in progress. The second circles appear ever so briefly</dd>
                </dl>
            </li>

            <li>
                <h2><a name="backlog-view"></a>Improve Product Backlog View</h2>
                <p>To assist with management of a large Product Backlog it would be helpful to have:</p>
                <ul>
                    <li>A column to show type (either PBI or Bug)</li>
                    <li>A column for severity (for Bugs)</li>
                    <li>Bold on the PBIs that are Epics</li>
                </ul>
                <p>PS: Customizing of columns would be nice too&#8230; but the default experience is what is important.</p>
                <dl class="image">
                    <dt><img src="Images/backlog-view.jpg" alt="Add some columns to the default experience"/></dt>
                    <dd>Figure: Add some columns to the default experience</dd>
                </dl>
            </li>

            <li>
                <h2><a name="share-URL"></a>TFSPreview - I want a URL to share with my Product Owner (aka the Customer)</h2>
                <p>I would love a customer portal for each team project (I need a wiki and document library).</p>
                <p>This is how it might work...</p>
                <dl class="image">
                    <dt><img src="Images/sharepoint-create.jpg" alt="In SharePoint 2010 , Click Create"/></dt>
                    <dd>Figure: In SharePoint 2010 , Click "Create"</dd>
                </dl>
                
                <p>Come to a form to enter some parameters...</p>
                <p>And a link in TFSPreview.com would be added to my SharePoint (or Office365)</p>
                <p><strong>More Information:</strong></p>
                <dl class="image">
                    <dt><img src="Images/sharepoint-team-portal.jpg" alt="Hook it up"/></dt>
                    <dd>Figure: Hook it up to TFSPreview.com E.g. Enter 2 parameters such as "URL" and "Team Project Name" and then a new link appears (E.g. "SharePoint Team Portal")</dd>
                </dl>
                <dl class="image">
                    <dt><img src="Images/busted-site.jpg" alt="After clicking on create"/></dt>
                    <dd>Figure: Note: This is the busted site I get today (with TFS2010 and SharePoint), if I click on "Create"</dd>
                </dl>
            </li>

            <li>
                <h2><a name="rollover-on-title"></a>TFSPreview &#8211; Add rollover on PBI Title, to indicate clickable link</h2>
                <p>I was watching a team that did not know you could click on the "PBI title".</p>
                <p>In the Board View, to help make it clear that the PBI text is clickable, add a rollover as per this rule <a href="http://www.ssw.com.au/ssw/standards/rules/RulesToBetterWebsitesNavigation.aspx#underline">Do you underline links (and include a rollover)?</a> </p>
                <dl class="image">
                    <dt><img src="Images/rollover-on-title.jpg" alt="Have a rollover on title"/></dt>
                    <dd>Figure: On the Board tab, when hovering over the text, underline it to indicate it is clickable</dd>
                </dl>
            </li>

            <li>
                <h2><a name="highlight-row"></a>Board - Highlight the selected row when clicked with the mouse (in the white space of row)</h2>
                <p>In a daily standup (and sprint review) currently it is easy to get lost regarding what item is currently being discussed.</p>
                <p>Please allow visually highlighting a row. It will provide some clarity around the item being discussed (during a stand up or sprint review).</p>
                <p>From a customer in a retro:</p>
                <blockquote class="quote">
                <p><em>"Adam, during today's session, I was forever trying to work out which item was being discussed."<br />
                <span>James Fox</span></em></p>
                </blockquote>
                <dl class="image">
                    <dt><img src="Images/highlight-row.jpg" alt="Allow highlighting a row"/></dt>
                    <dd>Figure: Allow highlighting a row</dd>
                </dl>
            </li>

            <li>
                <h2><a name="nice-URL"></a>Have a nice URL like GitHub</h2>
                <p>I would like a nice url to add to my Bio&#8230; such as TFSPreview.com/AdamCogan</p>
                <p>See below for an example:</p>
                <dl class="image">
                    <dt><img src="Images/github.jpg" alt="Github example"/></dt>
                    <dd>Figure: Grant have a nice Gitrub URL: <a href="http://github.com/gskinner" target="_blank">github.com/gskinner</a></dd>
                </dl>
            </li>

            <li>
                <h2><a name="looking-for-love"></a>TFSPreview and SharePoint 2010 &#8211; looking for love</h2>
                <p>Do what do I use for a wiki?</p>
                <p>This message indicates I can setup SharePoint if I start reading... I think you should save their time and say "Sorry, you cant have SharePoint Integration"</p>
                <dl class="image">
                    <dt><img src="Images/looking-for-love.jpg" alt="Clicking Team Project Portal should tell me it is not supported on TFSPreview.com"/></dt>
                    <dd>Figure: Clicking "Team Project Portal" should tell me it is not supported on TFSPreview.com</dd>
                </dl>
            </li>

            <li>
                <a name="avoid-getting-error"></a><h2>TFSPreview - Adding TFS Server - avoid me getting an error</h2>
                <p>I am hoping you can fit this into the Winnowing machine because otherwise...</p>
                <p>Users first experience when connecting to TFSPreview will be:</p>
                <ul>
                    <li>Click <strong>Connect</strong>
                    <li>Type the url they think will work eg. ssw.tfspreview.com  ...or the new name eg. tfs365 :-) </li>
                    <li>Boom - error</li>
                </ul>
                <dl class="image">
                    <dt><img src="Images/vs-error.jpg" alt="Visual Studio error"/></dt>
                    <dd>mmm...Do we want people needlessly getting this error?</dd>
                </dl>
                <h4>Suggestion</h4>
                <dl class="image">
                    <dt><img src="Images/vs-error-suggestion.jpg" alt="suggestion to switch to Https"/></dt>
                    <dd>Figure: When you type 'tfspreview' then switch it to "HTTPS"</dd>
                </dl>
            </li>

            <li>
                <h2><a name="guidance-on-bugs"></a>Guidance on Bugs</h2>
                <p>On my last PSD scrum course... the 1st question after demoing TFSPreview was:</p>
                <blockquote>
                    <p><em>When do you choose a "bug" instead of a "PBI"?<br />
                    And what are the pros and cons?</em></p>
                </blockquote>
                <p>I am sure my answer was not the same as other trainers. And what about all other devs that don't do training... Those guys make their decisions based on their own screwed up dev experiences</p>
                <dl class="image">
                    <dt><img src="Images/guidance-on-bugs.jpg" alt="guidance-on-bugs.jpg"/></dt>
                    <dd>Figure: I would like some guidance with a little "info" tip here. My bug guidance is to use that term carefully. Any feedback on <a href="https://www.ssw.com.au/rules/definition-of-a-bug">Is your client clear on the definition of a bug?</a> is welcome</dd>
                </dl>
                
            </li>

        </ol>
    </div>
    
    <h2>Acknowledgments</h2>
        <p><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></p>
</asp:Content>
