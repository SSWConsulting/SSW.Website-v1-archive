<%@ Page Language="VB" MasterPageFile="~/Masters/RavenSubpage.master"
    AutoEventWireup="false" Title="SSW Rules to Better Websites - Navigation" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>

<asp:Content ID="Title" ContentPlaceHolderID="title" runat="server">
    <h1>SSW Rules to Better Websites - Navigation</h1>
</asp:Content>

<asp:Content ID="Side" ContentPlaceHolderID="sidebarcontainer" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentFull" runat="server">
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>Do you agree with them all? Are we missing some? Email us your tips, thoughts or arguments. <a href="javascript:sendEmail('696E666F407373772E636F6D2E61753F5375626A6563743D52756C657320746F20426574746572205765627369746573204E617669676174696F6E');">Let us know</a> what you think.</p>
    <p>
        <img src="/ssw/Images/Validation/redstar.gif" alt="" width="18" height="14" />
        Indicates important rule
    </p>
    <div class="TableOfContents">
        <b>Rules to Better Websites - Navigation</b><br />
        <ol>
            <li><a href="#DontUseUnderlines">Do you use underlines where you shouldn't?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="" width="18" height="14" /></li>
            <li><a href="#underline">Do you underline links (and include a rollover)?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="" width="18" height="14" /></li>
            <li><a href="#visitedlink">Do you make sure users can see Visited Links?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="" width="18" height="14" /></li>
            <li><a href="#active-state">Do you visually indicate the page you are at on the menu (aka active state)?</a></li>
            <li><a href="#mega-menu">Do you use Mega-menu navigation to improve usability? </a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="" width="18" height="14" /></li>
            <li><a href="#Add-breadcrumbs">Do you add breadcrumb to every page?</a></li>
            <li><a href="#BreadCrumbs">Do you leave your users Bread Crumbs instead of &quot;Return to&quot; links?</a></li>
            <li><a href="#DisplayConsistentInformation">Do you display information consistently?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="" width="18" height="14" /></li>
            <li><a href="#Navigation">Do you make sure your page name is consistent in three places?</a></li>
            <li><a href="#Links">Do you make your links intuitive?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="" width="18" height="14" /></li>
            <li><a href="#EssentialLinks">Do you put all essential links in your website on your navigation bar?</a></li>
            <li><a href="#ChangeDefaultTitle">Do you remember to change the default title of a newly created page?</a></li>
            <li><a href="#webpageacessibility">Do you make your pages easy to access?</a></li>
            <li><a href="#RedundantLinking">Do you avoid redundant linking (aka single link to single location)?</a></li>
            <li><a href="#Dont-link-a-page-to-itself">Do you avoid linking a page to itself?</a></li>
            <li><a href="#howto">Do your wizards include a 'Wizard Breadcrumb'?</a></li>
            <li><a href="#ManageExternalLinks">Do you make external links clear?</a></li>
            <li><a href="#ClickingThrough">Do you save clicking through?</a></li>
            <li><a href="#TheIcons">Do you use icons not to surprise users?</a></li>
            <li><a href="#PasswordPrompt">Do you use an icon so a password prompt should never be a surprise?</a></li>
            <li><a href="#RelatedLinks">Do you have a 'Related Links' section?</a></li>
            <li><a href="#AutoPostBack">Do your controls autopostback?</a></li>
            <li><a href="#AviodEmailHarvesting">Do you avoid email harvesting or spamming by using images?</a></li>
            <li><a href="#BulletpointFullstop">Do you ommit full stops from the end of bullet points?</a></li>
            <li><a href="#DontUseLoginPage">Do you avoid linking users to the sign in page directly?</a></li>
            <li><a href="#SubmenusHaveIcons">Does your menu use an icon to indicate if there is a sub menu?</a></li>
            <li><a href="#ForgotPassword">Forgot Password - Don't ask them to enter their email and click a button again. Read their mind!</a></li>
            <li><a href="#LoginSecurity">Login Security - Do you know the correct error message for an incorrect user name or password?</a></li>
            <li><a href="#AjaxControls">Do you avoid letting the screen go white?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="DontUseUnderlines"></a>Do you use underlines only on links?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="" width="18" height="14"></h2>
                <p>Every user under 40 expects underlined text to be a hyperlink. Never underline text that isn't a link.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/Websites_UnderlineNoHyperlink.gif" alt="Websites - Underline no hyperlink" width="377" height="73" /></dt>
                    <dd>Figure: Never underline the text when it isn't a link (even <a href="/ssw/Redirect/Microsoft/ScottGu.htm" target="_blank" class="external">Scott Guthrie agrees</a>)</dd>
                </dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table1">
                    <tr>
                        <td>We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#BreadCrumbs">SSW Code Auditor</a> to check for this rule.
                        </td>
                    </tr>
                </table>
            </li>
            <li>
                <h2><a name="underline"></a>Do you underline links (and include a rollover)?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="" width="18" height="14"></h2>
                <p>Always make links perfectly clear.</p>
                <p>
                    It's very important that your links stand out from the 
					background as well as the surrounding text. A solid 
					underline and a contrasting color is the usually the best 
					choice, but the exact method is not important as long as the 
					end result stands out. A link should not only be 
					discoverable upon accidental hovering.
                </p>
                <p>
                    Rollovers are important as they offer visual feedback to a 
					user that this link that will take them somewhere. While 
					there are a myriad of ways to do this; you can't go wrong 
					with a simple text color change.
                </p>

                <dl class="badImage">
                    <dt class="greybox">
                        
                            <a href="#" style="color: black; text-decoration: none;border-bottom: 0;">Go to SSW</a>
                       
                    </dt>
                    <dd>Bad Example: This link is hard to recognize.</dd>
                </dl>
                <dl class="goodImage">
                    <dt class="greybox">
                        <a href="#">Go to SSW</a>
                    </dt>
                    <dd>Good Example: This link is obvious.</dd>
                </dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table3">
                    <tr>
                        <td>We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#BreadCrumbs">SSW Code Auditor</a> to check for this rule.
                        </td>
                    </tr>
                </table>
            </li>
            <li>
                <h2><a name="visitedlink"></a>Do you distinguish Visited Links?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="" width="18" height="14"></h2>
                <dl class="image">
                    <dt>
                        <img src="Images/VisitedLinks.gif" alt="Visited Links" width="161" height="189" /></dt>
                    <dd>Figure: Distinguish visited links</dd>
                </dl>
                <p>
                    Distinguishing visited links is very helpful to show where 
					users have been before. Visited links should still stand out 
					but not as obvious as unvisited ones. Give visited links a 
					less saturated colour to give that "used" look and be careful 
					not to overuse css techniques on visited links.
                </p>
                <p>
                    Specifying style for visited links is very simple. Just add 
					this to your CSS file:
                </p>
                        <pre>A:visited
{
color: purple;
}</pre>
            </li>

            <li>
                <a name="active-state"></a>
                <h2>Do you visually indicate the page you are at on the menu (aka active state)?</h2>

                <p>The active menu item should stand out from the others. This way you make it easy for users to know where they are at in the website.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/active-state-bad.jpg" /></dt>
                    <dd>Figure: Bad Example – you can't tell where you are in the site</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/active-state-good.jpg" /></dt>
                    <dd>Figure: Good Example – it’s easy to see where you are at </dd>
                </dl>
            </li>

            <li><a name="mega-menu"></a>
                <h2>Do you use Mega-menu navigation to improve usability?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="" width="18" height="14"></h2>
                <p>So you started your site with simple navigation but then you find yourself a few years later with site navigation that is saturated with links and everything looks messy.</p>
                <p>Mega menu allows you to present your links in groups and make use of typography, icons and supporting images to explain user's choices.</p>
                <p>By dividing site navigation into groups users will have better view of your site's structure at a glance and thus presenting them with meaningful choices. You can also group key pages together and give them emphasis.</p>
                <p>Of course, don't use a mega dropdown menu just because you can. Turning your normal navigation into mega-menu whilst keeping it as one continuous level is generally a no-no. in the same manner, just because mega-menus have room, doesn't mean you should overload them.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/longmenu.jpg" alt="long dropdown menu" width="167" height="406" />
                    </dt>
                    <dd>Figure: Bad Example - Long drop down menu requires scrolling and difficult to see at a glance.</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/megamenu.png" alt="mega menu" width="593" height="421" />
                    </dt>
                    <dd>Figure: Good Example - Links are grouped into distinct category</dd>
                </dl>

            </li>

            <li><a name="Add-breadcrumbs"></a>
                <h2>Do you add breadcrumb to every page?</h2>
                <p>Keep a breadcrumb on every page is necessary. With this navigation tool, users can easily location themselves and find the targets quickly. But don't link yourself!</p>
                <dl class="image">
                    <dt>
                        <img src="Images/WebsiteLayout_Breadcrumb_1.gif" alt="add breadcrumb to the top of the page" /></dt>
                    <dd>Figure: The breadcrumb</dd>
                </dl>
                <p>So every page should have a SiteMapPath Control.</p>
                <dl class="code">
                    <dt>
                        <span style="background-color: Yellow;">&lt;asp:SiteMapPath</span> ID="SiteMapPath1" runat="server" SiteMapProvider="SiteMapProvider1"/&gt;
                    </dt>
                    <dd>Figure: SiteMapPath Control (Note: <a href="/ssw/redirect/ssw/CodeAuditor.htm">Code Auditor</a> checks for the yellow highlighted text)</dd>
                </dl>
            </li>

            <li>
                <h2><a name="BreadCrumbs"></a>Do use Breadcrumbs instead of &quot;Return to&quot; links?</h2>
                <p>
                    Breadcrumbs allow easier browsing experience especially for 
					content-heavy sites where it&#8217;s too easy for users to get 
					lost within pages of complex navigation. In addition to 
					telling users &#8220;You are here? breadcrumbs help your site 
					visitors to learn about your site structure because it&#8217;s 
					indicated by the breadcrumb path.
                </p>
                <p>
                    We always favour breadcrumbs over a single &#8220;Return to&#8230;&#8221; 
					links because users can jump to parent categories.
                </p>
                <p>
                    The term &quot;breadcrumb&quot; comes from the fairy tale of Hansel 
					and Gretel, where they leave pieces of bread while going 
					through the woods, so that they can return back simply by 
					following the trail of breadcrumbs.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/breadcrumbs-bad.gif" alt="Home > SSW Standards > SSW Rules > Rules To Better Website Navigation" /></dt>
                    <dd>Figure: Bad example - poor navigation and it only allows 
					user to move one page back</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/breadcrumbs.gif" alt="Home > SSW Standards > SSW Rules > Rules To Better Website Navigation" /></dt>
                    <dd>Figure: Good example - Breadcrumbs allow user to quickly 
					identify where this page is located</dd>
                </dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table2">
                    <tr>
                        <td>We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#BreadCrumbs">SSW Code Auditor</a> to check for this rule.
                        </td>
                    </tr>
                </table>
            </li>
            <li>
                <h2><a name="DisplayConsistentInformation"></a>Do you display information consistently?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="" width="18" height="14"></h2>
                <p>
                    When redirecting users to another page make sure that the 
					text is consistent between the two pages.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/ConsistentInformation.gif" alt="Consistent Information" width="349"
                            height="236"></dt>
                    <dd>Figure: Good example - Click 
					&quot;More&quot; and the next page begins with the same information</dd>
                </dl>
                <p>
                    As an example, the SSW website follows a consistent order: a 
					summary of the product/service and its benefit followed by a 
					longer paragraph with more information. When we want to 
					redirect users to a page we simply use the summary part of 
					that page as narrative on the other page (e.g. events list). 
					As a result, user will have a nice flow between pages when 
					navigating around the site. <a href="/ssw/Events/">See a 
					live example</a>.
                </p>
                <p>
                    Please Note: the figure here is intended to show the 
					consistency in the text, the use of a link called More is 
					not desirable as per our Google Rule <a href="/ssw/Standards/Rules/RulesToBetterGoogleRankings.aspx#Relevancy">Do your links have relevancy to the page you're linking 
					to?</a>
                </p>
                <p>
                    Please Note #2: This is about the text being consistent. 
					However you should also keep your links consistent.
                </p>
            </li>
            <li>
                <h2><a name="Navigation"></a>Do you make sure your page name is consistent in three places?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="" width="18" height="14"></h2>
                <p>
                    It's a good idea to make sure your page names are consistent 
					between:
                </p>
                <ol>
                    <li>URL</li>
                    <li>Page Title</li>
                    <li>Navigation</li>
                </ol>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadPageName.jpg" alt="" /></dt>
                    <dd>Figure: Bad example - Inconsistancy everywhere!</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodPageName.jpg" alt="" /></dt>
                    <dd>Figure: Good example - Title, Header and Navigation Menu 
					item have the same text.</dd>
                </dl>
            </li>
            <li>
                <h2><a name="Links"></a>Do you make your links intuitive?</h2>
                <p>
                    Hyperlinks are the foundation to website navigation. Without 
					it, the Internet is merely a series of unconnected 
					documents. An intuitive hyperlink is one where the link 
					explains what will happen when it is clicked where they will 
					take the user.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/Websites_NotIntuitiveHyperlinks.gif" alt="Websites - Not Intuitive Hyperlinks"
                            border="1" width="190" height="73"></dt>
                    <dd>Figure: 
					Bad Example - I have no way of knowing that this link allows 
					me to edit my details</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/Websites_IntuitiveHyperlinks.gif" alt="Websites - Intuitive Hyperlinks" /></dt>
                    <dd>Figure: Good Example - I'm pretty certain where this link 
					will take me...</dd>
                </dl>
                <p>
                    This rule also has relevance to <a href="RulesToBetterGoogleRankings.aspx#Relevancy">improve your Google ranking</a>.
                </p>
            </li>
            <li>
                <h2><a name="EssentialLinks"></a>Do you put all essential links in your website on your navigation bar?</h2>
                <p>
                    There are certain links on a website which you want to make 
					VERY simple for users to find. I hate hunting around on a 
					site for a phone numbers. These are the basics which should 
					be easily accessible from every page:
                </p>
                <ul>
                    <li>Home page (top left corner)</li>
                    <li>Contact Us (with a phone number, not a form.submit!)</li>
                    <li>News (especially for journalists)</li>
                    <li>Directions (so prospects and clients can come and 
					visit!)<br />
                        &nbsp;</li>
                </ul>
            </li>
            <li>
                <h2><a name="ChangeDefaultTitle"></a>Do you remember to change the default title of a newly created page?</h2>
                Your site visitors should never see <b>Untitled Page</b> on 
			their browser. When creating a new page, remember to change the 
			default page title. This rule applies whether you are using a Master 
			Page or not.
                <dl class="badImage">
                    <dt>
                        <img alt="Page with a good title" src="/ssw/standards/rules/Images/BadTitle.jpg" />
                    </dt>
                    <dd>Figure: Bad example - A page with the default title
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img alt="Page with a good title" src="/ssw/standards/rules/Images/GoodTitle.jpg" />
                    </dt>
                    <dd>Figure: Good example - A page with a good title
                    </dd>
                </dl>
            </li>
            <li>
                <h2><a name="webpageacessibility"></a>
                    Do you make your pages easy to access?</h2>
                <p>
                    A web page should not be more than 4 levels deep. Use a 
					drop-down menu to help users get to these pages quicker. For 
					larger site, you may want to consider mega dropdown menu.
                </p>
                <p>
                    There is no point of having a web page if it is too hard for 
					the user to access from the main menu or from multiple links 
					on your site.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/drop_down_menu.gif" alt="Drop-down menu"></dt>
                    <dd>Figure: Have a useful navigation system</dd>
                </dl>
                <p>
                    It is important to remember that Menu links are intended as 
					shortcuts to pages, while Breadcrumbs are &quot;where am I?&quot;
                </p>
            </li>
            <li>
                <h2><a name="RedundantLinking"></a>
                    Do you avoid redundant linking (aka single link 
					to single location)?</h2>
                <p>
                    Often pages have 2 or 3 links pointing to the same page - 
					all fairly close to each other, like in one or two 
					paragraphs. It is a good idea to never have multiple links 
					to the *exact* same page for the following reasons:
                </p>
                <ul>
                    <li>Every link distracts the user from reading the main text 
					content</li>
                    <li>They confuse the user as they have to decide which link 
					to click first (and then end up to the same place anyway)</li>
                    <li>They are annoying when the user is trying to be thorough 
					and read the related content and they are repeatedly 
					directed to the same page</li>
                </ul>
                <dl class="bad">
                    <dt class="greybox"><strong><a href="/ssw/Hosting/Default.aspx">SSW Web 
					Hosting</a></strong><br />
                        SSW offers competitive, high performance <a href="/ssw/Hosting/Default.aspx">Windows hosting plans</a>. We use Windows 2003 Servers with 
					the latest security patches and SQL Server 2005 SP1. Our 
					Data center has multiple redundant connections to major 
					backbones, and our support staff are Microsoft Certified. <a href="/ssw/Hosting/Default.aspx">View more about our hosting plans</a> </dt>
                    <dd>Figure: Bad example - Redundant links nearby that point 
						to the same page</dd>
                </dl>
                <dl class="good">
                    <dt class="greybox"><strong><a href="/ssw/Hosting/Default.aspx">SSW Web 
					Hosting</a></strong><br />
                        SSW offers competitive, high performance Windows hosting 
					plans. We use Windows 2003 Servers with the latest security 
					patches and SQL Server 2005 SP1. Our Data center has 
					multiple redundant connections to major backbones, and our 
					support staff are Microsoft Certified. </dt>
                    <dd>Figure: Good example - One link results in clear and 
						readable text
                    </dd>
                </dl>
            </li>

            <li><a name="Dont-link-a-page-to-itself"></a>
                <h2>Do you avoid linking a page to itself?</h2>
                <p>If you have a link on a page that takes you back to the same page, then that is a weird experience. So don't include a link to the very page you are on.</p>
                <p>Exceptions are:</p>
                <ul>
                    <li>Permalink – Because it enables a user to get a link to the current page or bookmark.</li>
                    <li>Logo on the homepage – It’s widely known that clicking on the logo will take you to the homepage and it shouldn’t change if you are already on the homepage. People often click on it to reload the page.</li>
                    <li>Menu items – However you should visually indicate on what page you are on. </li>
                </ul>
            </li>

            <li>
                <h2><a name="howto"></a>Do your wizards include a 'Wizard Breadcrumb'?</h2>
                <p>
                    Headings that direct the user around your web page are 
					important as it gives the user the feeling of confident in 
					using your web page. The user will tend to feel lost and 
					unsure in what he/she should be doing next, if a website 
					dose not directs them properly. Good navigation through 
					directing headings removes this feeling and gives the user 
					confidence. This rule becomes especially important when it 
					comes to shopping applications. Showing the user where they 
					are up to in buying products, previous steps and the next 
					step in the process, gives the user the confidence that they 
					are doing the right steps in purchasing a product. Allowing 
					the user to go back to previous steps allows them to change 
					or review a previous choice. Showing the user where they are 
					up to and what is next shows the user what is left in the 
					process in purchasing a product. Amazon is a very good 
					example of a good shopping Application.
                </p>
                <p>
                    <b>SSW Example:</b>
                </p>
                <ul>
                    <li>Product Basket - Add/Remove products in your shopping 
					Basket</li>
                    <li>Shipping Details - Enter where you would like products 
					shipped</li>
                    <li>Payment Details - Select how you pay and enter details</li>
                    <li>Confirmation of Purchase - Display information about 
					their purchase</li>
                </ul>
                <dl class="image">
                    <dt>
                        <img src="Images/ExamleHeadingforShoppingBasket.gif" alt="Example Header" width="505"
                            height="33" /></dt>
                    <dd>Figure: Simple Header that 
					tells the user where they have come from</dd>
                </dl>
                <p>
                    <b>Amazon Example:</b>
                </p>
                <ul>
                    <li>Welcome Icon - Ordering from Amazon.com is quick and 
					easy</li>
                    <li>Address Icon - Choose a shipping address</li>
                    <li>Ship Icon - Choose your shipping options</li>
                    <li>Pay Icon - Select a payment method</li>
                </ul>
                <p>
                    The following heading from Amazon shows the user at what 
					stage of the ordering process they are at and what they can 
					expect next.This covers the whole billing process.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/amazonshopping.jpg" alt="Amazon Shopping" width="383" height="56" /></dt>
                    <dd>Figure: This is how headings should look</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/virgin-flight-navigation.png" alt="Virgin Flight Booking" width="600" /></dt>
                    <dd>Figure: Virgin Australia uses a more subtle approach</dd>
                </dl>
            </li>
            <li>
                <h2><a name="ManageExternalLinks"></a>Do you make external links clear?</h2>
                <p>
                    When I create links I follow a few basic rules:
                </p>
                <ol>
                    <li>
                        <p>
                            If a link is to an external site, a visual 
							indication should be provided to the user like this: <a href="/ssw/Redirect/Microsoft/microsoft.htm" target="_blank">This is a link to another site</a>
                        </p>
                        <dl class="bad">
                            <dt class="greybox">
                                Search Engines (<a href="/ssw/Redirect/Web/Google.htm" target="_blank" class="ignore"> 
							http://www.google.com</a>
                                is by far the best but try other search engines 
							as well)</dt>
                            <dd>Figure:Bad example-Without visual indication</dd>
                        </dl>
                        <dl class="good">
                            <dt class="greybox">Search Engines (<a href="/ssw/Redirect/Web/Google.htm" target="_blank">http://www.google.com</a>
                                is by far the best but try other search engines 
							as well) </dt>
                            <dd>Figure:Good example-With visual indication</dd>
                        </dl>
                    </li>
                    <li>
                        <p>
                            All external links should NOT open in a New Window - this behaviour should be up to the user's discretion and not pre-determined by your site. New windows opening without the user's permission is considered spam behaviour.
                        </p>
<%--                        <p>
                            When we have a page that opens in a new window BUT 
							doesn't leave our site e.g.
                            <pre>&lt;a href=&quot;http://www.ssw.com.au/whatever.asp?id=123&quot; target=&quot;_blank&quot;&gt;</pre>
                            we give the user a visual indication so they are not 
						surprised. But this is pretty rare.
                        </p>
                        <dl class="bad">
                            <dt class="greybox"><a href="/ssw/Standards/Rules/RulestoSuccessfulProjects.aspx">Rules to successful projects</a> </dt>
                            <dd>Figure:Bad example - Without visual indication</dd>
                        </dl>
                        <dl class="good">
                            <dt class="greybox"><a href="/ssw/Standards/Rules/RulestoSuccessfulProjects.aspx" target="_blank">Rules to successful projects</a> </dt>
                            <dd>Figure:Good example - With visual indication</dd>
                        </dl>--%>
                    </li>
                    <li>
                        <p>
                            External links should always go through a Redirect 
							file to allow monitoring of click-throughs. We store 
							all redirects in a redirect folder - 
							/ssw/Redirect/[SubCategoryAsRequired] to <a href="/ssw/Standards/Rules/RulesToBetterGoogleRankings.aspx#Robotstxtfile">avoid reducing our Google Ranking</a>.
                        </p>
                        <p>
                            <b>Developer Note:</b> Do not use META refresh - 
							instead, use server-side code (such as an ASP 
							Response.Redirect), as this will send the proper 
							&quot;Object moved&quot; message to the client and the 
							redirect will be picked up by <a href="/ssw/Standards/DeveloperGeneral/WebdevelopmentTools.aspx#BrokenLinks">SSW Link Auditor</a>. There is also the 
							possibility that the user has disabled META 
							refreshes in the browser security options, as the 
							redirect is performed on the client, not the server.
                        </p>
                        <dl class="bad">
                            <dt class="greybox">Microsoft Knowledge Base - <a href="/SSW/Redirect/Microsoft/MSSupport.htm" target="_blank">http://support.microsoft.com/support</a> (Great 
							for issues/bugs in your programs)
                            </dt>
                            <dd>Figure:Bad example - Go through a direct link</dd>
                        </dl>
                        <dl class="good">
                            <dt class="greybox">Microsoft Knowledge Base - <a href="/ssw/Redirect/Microsoft/MicrosoftSupport.htm"
                                target="_blank" class="external">http://support.microsoft.com/support</a> (Great for 
							issues/bugs in your programs) </dt>
                            <dd>Figure:Good example - Go through a redirect file</dd>
                        </dl>
                        <dl class="code">
                            <dt>
                                &lt;%
Response.Redirect(&quot;http://www.link.com&quot;)
%&gt;
                            </dt>
                            <dd>Figure: Sample Code for a Redirect File</dd>
                        </dl>
                    </li>
                    <li>
                        <p>
                            External link images should be inserted by CSS and 
							not embedded in the page source.</p>
                            <dl class="bad image">
                                <dt>
                                    <img src="images/BadLink.gif" />
                                </dt>
                                <dd>Figure:Bad example - Why is this in my 
									source code?</dd>
                            </dl>
                            <dl class="image">
                                <dt>
                                    <img src="images/GoodLink.gif" />
                                </dt>
                                <dd>Figure:Good example - Icon is added by CSS 
									via a simple declaration.</dd>
                            </dl>
                    </li>
                </ol>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table13">
                    <tr>
                        <td>We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.
                        </td>
                    </tr>
                </table>
            </li>
            <li>
                <h2><a name="ClickingThrough"></a>Do you save clicking through?</h2>
                <dl class="goodImage">
                    <dt>
                        <img src="images/Clickingthrough.jpg" />
                    </dt>
                    <dd>Figure:Good example - Information is shown 
									on hover, not an additional link</dd>
                </dl>
            </li>
            <li>
                <h2><a name="TheIcons"></a>Do you use icons not to surprise users? (aka use 
					the correct image for files)</h2>
                <p>
                    When a user clicks on a hyperlink they expect to open an 
					html file. If you click on a hyperlink (but it is actually a 
					.doc file) you wait and wait while it takes forever to 
					instantiate an instance of Microsoft Word in the background.
                </p>
                <p>
                    Don't surprise users use the following icons:
                </p>
                <table style="width: 738px;" cellpadding="3" cellspacing="0" class="style1">
                    <tr>
                        <th scope="col">File Type
                        </th>
                        <th scope="col">Example
                        </th>
                    </tr>
                    <tr>
                        <td>PDF
                        </td>
                        <td>
                            <img src="/ssw/Images/IconPdf.png" alt="Icon PDF" />
                            This is a PDF file
                        </td>
                    </tr>
                    <tr>
                        <td>JPG
                        </td>
                        <td>
                            <img src="/ssw/Images/IconJpg.gif" alt="Icon JPG" />
                            This is a Image file
                        </td>
                    </tr>
                    <tr>
                        <td>DOC or DOT
                        </td>
                        <td>
                            <img src="/ssw/Images/IconDoc.png" alt="Icon DOC" />
                            This is a Word Document file
                        </td>
                    </tr>
                    <tr>
                        <td>XLS
                        </td>
                        <td>
                            <img src="/ssw/Images/IconXls.gif" alt="Icon XLS" />
                            This is an Excel Spreadsheet file
                        </td>
                    </tr>
                    <tr>
                        <td>PPT
                        </td>
                        <td>
                            <img src="/ssw/Images/IconPPT.png" alt="Icon PPT" />
                            This is a PowerPoint file
                        </td>
                    </tr>
                    <tr>
                        <td>TXT
                        </td>
                        <td>
                            <img src="/ssw/Images/IconTxt.gif" alt="Icon TXT" />
                            This is a Text file
                        </td>
                    </tr>
                    <tr>
                        <td>AVI,MOV,MPG etc.
                        </td>
                        <td>
                            <img src="/ssw/Images/IconMov.gif" alt="Icon MOV" />
                            This is a Video file
                        </td>
                    </tr>
                    <tr>
                        <td>WAV,WMA,MP3 etc.
                        </td>
                        <td>
                            <img src="/ssw/Images/IconMus.gif" alt="Icon MP3" />
                            This is a Music file
                        </td>
                    </tr>
                    <tr>
                        <td>SNP
                        </td>
                        <td>
                            <img src="/ssw/Images/IconSnp.gif" alt="Icon SNP" />
                            This is an Access Database snapshot file 
							(discontinued and not recommended)</td>
                    </tr>
                    <tr>
                        <td>EPS
                        </td>
                        <td>
                            <img src="/ssw/Images/IconEps.gif" alt="Icon EPS" />
                            This is an EPS file
                        </td>
                    </tr>
                    <tr>
                        <td>ICS or VCS
                        </td>
                        <td>
                            <img src="/ssw/Images/IconVCS.gif" alt="Icon VCS" />
                            This is a calendar file
                        </td>
                    </tr>
                    <tr>
                        <td>EXE or ZIP
                        </td>
                        <td>
                            <img src="/ssw/Images/Download.gif" alt="Download" />This 
							is an executable or zip file
                        </td>
                    </tr>
                    <tr>
                        <td>mailto:
                        </td>
                        <td>
                            <img src="/ssw/Images/IconMailTo.gif" alt="Icon MailTo" />
                            This will send an email
                        </td>
                    </tr>
                    <tr>
                        <td>XML / RSS
                        </td>
                        <td>
                            <img src="/ssw/Images/IconXML.gif" alt="Icon XML" />
                            This will subscribe to RSS</td>
                    </tr>
                    <tr>
                        <td>ODF</td>
                        <td>
                            <img src="/ssw/Images/IconOFT.gif" alt="Icon ODF" />
                            This is an Outlook Item Template</td>
                    </tr>
                    <tr>
                        <td>Page                         </td>
                        <td>
                            <img src="Images/ms_lock.gif" alt="" width="20" height="20">
                            This is a link to password protected page
                        </td>
                    </tr>
                </table>
                <b>Figure:&nbsp; Don't surprise users.&nbsp; Warn them by using the following 
			icons</b><br />
                <br />
                <br />
                <dl>
                    <dt>
                        <img border="0" src="Images/GoogleIcons.gif" alt="Image good link" /></dt>
                    <dd>Figure: FYI there are the same images used by Google at <a href="http://desktop.google.com/features.html">GoogleDesktopSideBar.htm</a><br />
                        <br />
                    </dd>
                </dl>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/IconImageBad.gif" alt="Image bad link" /></dt>
                    <dd>Figure: Bad Example - The user would expect all these 
				hyperlinks to work the same way<br />
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/IconImageGood.gif" alt="Image good link" /></dt>
                    <dd>Figure: Good Example - The pdf icon (before a hyperlink) 
				indicates it is not a web page<br />
                    </dd>
                </dl>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table13">
                    <tr>
                        <td>We have a program called <a href="/ssw/CodeAuditor/">SSW 
					Code Auditor</a> to check for this rule.
                        </td>
                    </tr>
                </table>
            </li>
            <li>
                <h2><a name="PasswordPrompt"></a>Do you use an icon so a password prompt should 
					never be a surprise?</h2>
                <dl class="badImage">
                    <dt>
                        <img src="Images/PasswordProtectedPagesNeedKey.gif" alt="Password prompt as a surprise"
                            width="406" height="428"></dt>
                    <dd>Figure: Bad Example -  
					because when you click &quot;Building 100&quot; you get a password 
					prompt as a surprise</dd>
                </dl>
                <p>
                    Don't surprise users put a lock icon
                    <img src="Images/ms_lock.gif" alt="" width="20" height="20">
                    <!--SSW Code Auditor - Ignore next line(HTML)-->
                    to indicate the link is a password protected page and login 
					required. <a href="/SSW/Standards/Rules/RulesToBetterWebsitesNavigation.aspx#TheIcons">This icon is one of the icons that we use to avoid 
					surprising users</a>
                </p>
            </li>
            <li>
                <h2><a name="RelatedLinks"></a>Do you have a 'Related Links' section?</h2>
                <p>
                    Do you make sure you have a 'Related Links' section at the 
					bottom of each page? This will avoid problems like:
                </p>
                <ol>
                    <li>
                        <p>
                            <strong>Orphan pages.</strong> You should always 
							give your visitors somewhere to go on each page and 
							never leave them at a &quot;dead end.&quot; Some people will 
							actually bookmark certain pages in your site and 
							return directly there, rather than go through the 
							home page. If that page is an &quot;orphan&quot; and not 
							linked to another page in your site, your visitor 
							will leave thinking you have nothing else to offer 
							and nowhere to get there if you do and you may have 
							missed out on a sale.
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>Long Pages.</strong> Surfers tend not to 
							scroll too much so if you have all your information 
							on one page and your visitors have to continually 
							scroll down, they may get bored and go elsewhere. As 
							a result, they could miss vital information. All 
							important content should be at the top of the page 
							and if you have a lot of information, link it to 
							another page so visitors can see at a glance the 
							information available.
                        </p>
                    </li>
                </ol>
            </li>
            <li>
                <h2><a name="AutoPostBack"></a>Do your controls autopostback?</h2>
                <p>
                    When visitors are navigating through your site and they need 
					to make a selection from a control with fixed values, it is 
					best to have the control automatically post back. This makes 
					navigating your site quicker as the user does not have to 
					click other buttons to see the changes which they have made. 
					It is also important to remember that controls which do not 
					have set values, such as text boxes, should have a &quot;Show&quot; 
					button available to click once the visitor is finished 
					entering their data.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/comboswithshowbutton.gif" alt="Bad" border="1" width="545" height="120" /></dt>
                    <dd>Figure: Bad Example - because the combos can be set to autopostback 
					and should not have a &quot;Show&quot; button.</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/autopostbackcombos.gif" alt="Combo boxes with fixed values" border="1"
                            width="545" height="120" /></dt>
                    <dd>Figure: Good Example - 
					because the combo boxes have fixed values and can 
					autopostback.</dd>
                </dl>
                
                <dl class="badImage">
                    <dt>
                        <img src="Images/textboxeswithnoshowbutton.gif" alt="Bad" border="1" width="432"
                            height="88" /></dt>
                    <dd>Figure: Bad Example -  because the text 
					boxes do not have fixed data and thus should have a &quot;Show&quot; 
					button.</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/textboxeswithshowbutton.gif" alt="Good" border="1" /></dt>
                    <dd>Figure: Good Example -  because there is a &quot;Show&quot; button as the text boxes do not contained fixed data.</dd>
                </dl>

                <dl class="goodImage">
                    <dt>
                        <img src="Images/autopostbackandshowbutton.gif" alt="Good" border="1" width="615"
                            height="181" /></dt>
                    <dd>Figure: Good Example -  because the 
					combos can be set to autopostback while the text boxes have 
					the &quot;Show&quot; button available.</dd>
                </dl>
            </li>
            <li>
                <h2><a name="AviodEmailHarvesting"></a>Do you avoid email harvesting or spamming by using images?</h2>
                <p>
                    Do you want to avoid email harvesting or spamming? This will 
					avoid such spamming problems:
                </p>
                <ol>
                    <li>
                        <p>
                            <strong>Email Address display.</strong> Simply use 
							email images e.g.
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>Email Address link for mailto.</strong> Use 
							JavaScript function for generating mailto from 
							encrypted text. e.g.
                        </p>
                    </li>
                </ol>
            </li>

            <li>
                <h2><a name="BulletpointFullstop"></a>Do you know when to use full stops at the end of bullet points?</h2>
                <p>There are two types of bullet list. The first type of bullet list is the most common, where each bullet point is a sentence fragment that will form a complete sentence if read together with the introductory line. For this type, place full stop at the end of the last point. For example:</p>
                <div class="greyBox">
                    <p>UI may refer to:</p>
                    <ul>
                        <li>User interface</li>
                        <li>User interaction.</li>
                    </ul>
                </div>
                <p>The second type is when each bullet point is a full sentence. It features a capital letter at the start and a full stop at the end of each bullet point. For example:</p>
                <div class="greyBox">
                    <p>User Interface Fundamentals:</p>
                    <ul>
                        <li>Your design should make simple, common tasks simple to do, communicating clearly and simply in the user's own language, and providing good shortcuts that are meaningfully related to longer procedures.</li>
                        <li>Your design should keep all needed options and materials for a given task visible without distracting the user with extraneous or redundant information. Good designs don't overwhelm users with too many alternatives or confuse them with unneeded information.</li>
                        <li>Your design should keep users informed of actions or interpretations, changes of state or condition, and errors or exceptions that are relevant and of interest to the user through clear, concise, and unambiguous language familiar to users.</li>
                    </ul>
                </div>
            </li>

            <li>
                <h2><a name="DontUseLoginPage"></a>Do you avoid linking users to the sign in page directly?</h2>
                <p>
                    When you are adding a hyperlink which links to a web 
					application that requires a
                    <!--SSW Code Auditor - Ignore next line(HTML)-->
                    login, do not use the login page (login.asp or login.aspx or 
					login.php) for the value of the &quot;href&quot; attribute, use the 
					default page (or other pages) instead.
                </p>
                <p>
                    Thus, if a user is already logged in, he will go to the 
					default page. If not, the
                    <!--SSW Code Auditor - Ignore next line(HTML)-->
                    page will redirect him to the login page. But if you use the 
					sign in page, the user has to sign in again though he's 
					already logged in.
                </p>
                <dl class="badImage">
                    <dt>
                        <!--SSW Code Auditor - Ignore next line(HTML)-->
                        <img src="Images/BadNoUseLogin.GIF" alt="Bad" /></dt>
                    <dd>Figure: Bad Example - Linked to the login page.</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodNoUseLogin.GIF" alt="Good" /></dt>
                    <dd>Figure: Good Example - Linked to the default page.</dd>
                </dl>
            </li>
            <li>
                <h2><a name="SubmenusHaveIcons"></a>Does your menu use an icon to indicate if there is a sub menu?</h2>
                <p>
                    Too many sites expect the user to hover and wait to 
					'discover' if there are sub menus. Use an icon and avoid the 
					surprises.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/SubmenusHaveIcons_Good.gif" alt="Good" />
                    </dt>
                    <dd>Figure: Good Example - This menu clearly shows which items have submenus</dd>
                </dl>
                <p><a href="http://www.worleyparsons.com/csg/infrastructureandenvironment/resource_infrastructure/Pages/default.aspx"
                        target="_blank">WorleyParson</a> submenus were also
						designed with this in mind.</p>
            </li>
            <li>
                <h2><a name="ForgotPassword"></a>Forgot Password - Don't ask them to enter their email and 
					click a button again. Read their mind!</h2>
                <p>
                    Unfortunately here is the normal routine to get an email 
					with your password.
                </p>
                <ol>
                    <li>You go to a Login form, enter your email and password, 
					and click the 'Login' button.</li>
                    <li>You get a validation message like 'Incorrect Password'.</li>
                    <li>Then you have to click a 'Forgot Password' link to go to 
					another 'Get Password' form, and then they almost always ask 
					you to enter your email again and then click 'Get Password' 
					button.</li>
                </ol>
                <dl class="code">
                    <dt>
                        <b>Question:</b>
Why do 99% of the web sites out there, ask you to
- Enter you email again (they have already got it)
- Then click 'Get Password' (you have already clicked the link 'Forgot Password')

<b>Answer:</b> 
Because they are not trying to read your mind.

                    </dt>
                </dl>
                <!-- SSW Code Auditor - Ignore next line-->
                <b>The goal should be:</b>
                <p>
                    Be more efficient and user-friendly and save them a step. 
					Please DO NOT bother users to do any more redundant work.
                </p>
                <p>
                    Instead enter their email when they click 'Forgot Password' 
					link.
                </p>
            </li>
            <li>
                <h2><a name="LoginSecurity"></a>Login Security - Do you know the correct error message for an incorrect user name or password?</h2>
                <p>
                    When a user fails to sign in due to invalid email or 
					password, you might have the well intention of letting them 
					know by telling them exactly which one is invalid.
                </p>
                <p>
                    However this is not secure. It makes it easier for bad guys 
					(e.g., hacker) to get access to your account and do 
					malicious things to the site and with your information.
                </p>
                <!-- SSW Code Auditor - Ignore next line-->
                <p>
                    The more secure message should be 'Invalid email or 
					password'.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="/ssw/standards/rules/Images/GoodLoginError.gif" alt="Good message for invalid account" />
                    </dt>
                    <dd>Figure: Good example - for security reasons, you don't say if it 
						was an invalid user name or password.</dd>
                </dl>
                <p>
                    See <a href="/ssw/shop/Login.aspx">Login.aspx</a> for a real 
					example.
                </p>
            </li>

            <li>
                <h2><a name="AjaxControls"></a>Do you avoid letting the screen go white?</h2>
                <p>
                    use jQuery or Ajax controls whenever possible to send requests without feedback on the process. This is to avoid a "white" blank page, while the page reloads. Similar ideas are like a save button that disables after the first click so it can't be hit multiple times.
                </p>
                <dl class="badImage">
                    <dt>
                        <img border="0" src="Images/Bad-AjaxControls.jpg" alt="" />
                    </dt>
                    <dd>Figure: Bad example - An Ajax control which automatically disables the save button would make this message unnecessary.</dd>
                </dl>
            </li>
        </ol>
    </div>
    <br />

    <h2><a name="AcknowledgementsLikeThis"></a>Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TKK">Tristan Kurniawan</a><br />
    </p>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeaderScripts">

    <style type="text/css">
        .style1 {
            margin-right: 191px;
        }
    </style>

</asp:Content>

