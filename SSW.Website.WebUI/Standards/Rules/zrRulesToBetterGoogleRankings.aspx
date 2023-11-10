<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Google Rankings" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <img border="0" src="Images/GoogleLogo.gif" align="right" alt="Increase your Google Rankings" width="276" height="110" />
    <p>Google is, by a country mile, the most popular search engine in the world. It's popular because it seems to rank pages so accurately and quickly, time and time again. The secret to its success is its top secret Page Rank Algorithm. Google developed its page ranking system in an effort to increase the quality of search results and has left all of its competitors for dead. As a result, search engine optimization (SEO) gurus are always looking to find new ways to increase their Google rankings. As we all know, a website is a pretty nifty thing to have for a myriad of different reasons. But the truth is that its worth is derived from the people that surf it, and if no one is surfing it, then it becomes useless. So who's the biggest website referrer? The answer is Google in almost every case.</p>
    <p>So what's your position for Google rankings? Our SEO consultants have brought together some common strategies to influence your Google rankings and improve your websites Google Friendliness. You can improve your placement by following this expert guide we have collaborated together, which will result in the promotion of your website. There is a plethora of information out there and we've brought it all together to show you some common strategies to influence your Google rankings and improve your website's &quot;Google Friendliness&quot;.</p>
    <p>Do you agree with them all? Are we missing some? Email us your tips, thoughts or arguments.&nbsp; <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230476F6F676C6525323052616E6B696E6773')"> Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <h3>Rules to Better Google Rankings</h3>
        <ol>
            <li><a href="#HowGoogleRanksPages">Do you know how Google ranks pages?</a></li>
            <li><a href="#GoogleIndex">Do you know if Google has indexed your page?</a></li>
            <li><a href="#PageRank">Do you know your Page Rank?</a></li>
            <li><a href="#Create">Do you know the best ways to generate traffic to your website?</a></li>
            <li><a href="#InboundLinks">Do you know how to find inbound links to your pages?</a></li>
            <li><a href="#OnPage">Do you use important keywords where it matters?</a></li>
            <li><a href="#DescriptiveTags">Are your &lt;title&gt;, &lt;h1&gt;, and &lt;h2&gt; tags descriptive?</a></li>
            <li><a href="#MetaTags">Do you use META KEYWORDS and DESCRIPTION tags?</a></li>
            <li><a href="#NoMetaTagsToRedirect">Do you use "301" code to redirect renamed or moved pages?</a></li>
            <li><a href="#juicy-words">Do you use "juicy words" in your URLs?</a></li>
            <li><a href="#use-dashes-in-URL">Do you use dashes in your URLs?</a></li>
            <li><a href="#Relevancy">Do your links have relevancy to the page you're linking to?</a></li>
            <li><a href="#DynamicPages">Do you make your data-driven pages easier to find?</a></li>
            <li><a href="#AddErrorMessageForSEO">Do you provide the written text when you publish an image with text in it?</a></li>
            <li><a href="#Alt">Do your picture links use attributes?</a></li>
            <li><a href="#LinkFarms">Do you avoid the temptation of link farms?</a></li>
            <li><a href="#Frames">Do you avoid using frames on your website?</a></li>
            <li><a href="#Include">Do you avoid having important content in JavaScript?</a></li>
            <li><a href="#Submissions">Do you submit all your software to download sites?</a></li>
            <li><a href="#101k">Do you keep your webpages less than 101k?</a></li>
            <li><a href="#Robotstxtfile">Do you use your Robots.txt file effectively?</a></li>
            <li><a href="#GoogleFileSizeLimit">Do you keep your files under the Google file size limit?</a></li>


            <li><a href="#DomainRegister">Do you know to register your domain for a long time?</a></li>
            <li><a href="#USEnglish">Spelling - Do you use US English?</a></li>
            <li><a href="#GooglePlacesEntry">Do you have a Google Places entry?</a></li>
            <li><a href="#IISThings">Do you know the IIS things to do?</a></li>
            <li><a href="#FixUglyURL">Do you know to fix your ugly URL's?</a></li>

            
        </ol>
    </div>
    
    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="HowGoogleRanksPages"></a>Do you know how Google ranks pages?</h2>
                <h4>What makes Google so successful?</h4>
                <p>The answer to that is Google's Page Rank Algorithm. You can read about the early days of the page rank algorithm here: <a target="_blank" href="http://infolab.stanford.edu/~backrub/google.html" class="external">The Anatomy of a Large-Scale Hypertextual Web Search Engine</a>.</p>
                <p>The actual Page Rank algorithm looks like this: <strong>PR(U) = (1-d) + d * sum<sub>V</sub>(PR(V)/N(V)). </strong>Here PR = Page Rank, U is the page we're looking at, d is a constant damping factor and V is a page that links to our page.</p>
                <p>The basic premise that comes from this algorithm is:</p>
                <div class="greyBox">
                    <p>When I link to your page, I'm casting a vote that your page is good and the more links (votes) that are received the better the page is.</p>
                </div>
                <p>This statement alone sent shockwaves through the web community and sent many web masters on an endless quest for links. All pages begin with an equal page rank, which is then moved around based on the internal and external links to and from that page.</p>
                <p>It's important not to forget that Page Rank is not the only factor involved in a search. Essentially Google completes the following steps when you perform a search:</p>
                <ol>
                    <li>Finds all pages matching the keywords of the search</li>
                    <li>Rank accordingly using "on the page" factors (proximity between words, frequency, repetition etc.)</li>
                    <li>Calculate the relevancy of <a href="/ssw/Standards/Rules/RulestoBetterGoogleRankings.aspx#Relevancy"> inbound anchor text</a></li>
                    <li>Uses the page rank to decide what order to display the results in</li>
                </ol>
                <p>So looking for people to link to your site will only become important if you've got the first three discriminating factors nailed.</p>
            </li>

            <li>
                <h2><a name="GoogleIndex"></a>Do you know if Google has indexed your page?</h2>
                <p>First things first. Check if your web page has been indexed by Google. Don't be surprised if Google is already one step ahead of you - its Google bots could have already crawled your site without you knowing. So what's the best way to find out if Google has indexed your web page? Just search for its exact link.</p>
                <p>If you can't find it, go to <a href="https://www.google.com/webmasters/tools/submit-url" target="_blank">Google's Search Console</a> and submit your URL. Note that internal pages should be crawled automatically, so you only need to inform the root of the site.</p>
            </li>

            <li>
                <h2><a name="PageRank"></a>Do you know Page Rank in no longer relevant?</h2>
                <p>Back in 2010, the first step to increasing your Google ranking was to know what you're current Page Rank was. That's how people would track the relevance of a website.</p>
                <p>The only way to find out the page rank of a page is to <a href="http://toolbar.google.com/" target="_blank">download the Google toolbar</a> (for IE on Windows only). Page Rank is actually a measure of how likely it is that your page will be found relative to all others during a random search.</p>
                <p>Google calculates this as an integer between 1 and 2 million. This scale is then mapped to give the page rank of between 1 and 10. This means that it's not entirely accurate. Imagine that your website has a 'real' page rank of 1,000,000 and one of your competitors' page has a page rank of 1,000,001. All other things being equal, he will beat you although both page ranks will show up as the same when scored out of 10.</p>
                <dl class="image">
                    <dt><img src="Images/ToolBarPageRank.gif" alt="Google Toolbar" title="Google Toolbar" width="570" height="106" /></dt>
                    <dd>Figure: The page rank of the Sydney .NET User Group is 5</dd>
                </dl>
            </li>

            <li>
                <h2><a name="Create"></a>Do you know the best ways to generate traffic to your website?</h2>
                    <p>Creating more pages with links to the others is a good way to generate traffic to your website. It follows the rule that having more pages is better than having excessively long pages. For the pages you create, here are some methods to increase their Google performance:</p>
                        <ul>
                            <li>Writing Blogs about it</li>
                            <li>Recording videos to be embedded</li>
                            <li>Sharing in social medias, like Twitter, Facebook, and LinkedIn</li>
                            <li>Getting other websites to link to them</li>
                        </ul>
            </li>

            <li>
                <h2><a name="InboundLinks"></a>Do you know how to find inbound links to your pages?</h2>
                    <p>Who's linking to you is an important question for SEO strategies, and one that can be easily answered. To find out how many inbound links you have and where they're coming from, go to www.google.com and type in "link:" then the URL of your page. Click this link and <a target="_blank" href="https://www.google.com/?gfe_rd=cr&ei=rps7VumlEIGC8QfOwKeICA&gws_rd=cr&fg=1#safe=off&q=link:http:%2F%2Fwww.ssw.com.au" class="external"> see who is linking to SSW</a></p>
            </li>

            <li>
                <h2><a name="OnPage"></a>Do you use important keywords where it matters?</h2>
                    <p>As a general rule, you should try to get all the great keywords in the title, headings and first few paragraphs of your content.</p>
                    <p>Let's use this page as an example. Before it was written, we thought about some keywords people would use if looking for some Google tips and tricks on how to increase your rankings. The words used for the URL were chosen with Search Engine Optimization in mind. Here are a few more of my keywords we expect to be relevant in searches:</p>
                    <ul>
                        <li>Increase Google Friendliness</li>
                        <li>Better/Increase Google Ranking</li>
                        <li>Search Engine Optimization (Note: In Australia we spell optimization with an &quot;s&quot; [optimisation] but most people searching online would use the American way of spelling it. So this have to be taken into consideration)</li>
                    </ul>
                    <p><strong>This page is a testimony to the fact that keywords and content are the keys to better Google rankings. </strong> It is in Google's first results if you search for: <a target="_blank" href="https://www.google.com/search?hl=en&lr=&ie=UTF-8&oe=UTF-8&q=better+google+rank&gws_rd=cr,ssl&ei=_aM7VqivN4GJwgSuk4vYBA" class="external">better Google rank</a> It still ranks very well in other search engines.</p>
            </li>

            <li>
                <h2><a name="DescriptiveTags"></a>Are your &lt;title&gt;, &lt;h1&gt;, and &lt;h2&gt; tags descriptive?</h2>
                    <p>The &lt;title&gt;, &lt;h1&gt;, and &lt;h2&gt; tags need to be descriptive. They should briefly describe the purpose or content of the page. Have a look at the following two images. The first image is a bad example as the title bar and page heading are not very descriptive. The second image is a better example as title bar and page heading are more informative.</p>
                    <dl class="badImage">
                        <dt><img src="Images/BadMetaKeywords.gif" alt="Bad Meta Keywords" width="570" height="140" /></dt>
                        <dd>Figure: Bad Example - a non-descriptive title</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt><img src="Images/GoodMetaKeywords.gif" alt="Good Meta Keywords" width="570" height="139" /></dt>
                        <dd>Figure: Good Example - a descriptive title</dd>
                    </dl>
                    <p class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</p>
                    <p class="productBox">We have a program called <a href="/ssw/LinkAuditor/">SSW Link Auditor</a> to check for this rule.</p>
            </li>

            <li>
                <h2><a name="MetaTags"></a>Do you use META KEYWORDS and DESCRIPTION tags?</h2>
                    <p>One of the easiest ways to get the ball rolling with your web pages and being noticed by search engines is to use META tags. Search engines use META tags to categorize your website's content. Many web masters took this as an opportunity to abuse the META tags and the earlier less sophisticated search engines found that the quality of search results was suffering. Luckily today's search engines like Google don't give the META tags so much weight when determining search engine results pages. In any case, we know that search engines do consider them so we think it would be silly to overlook such a quick and easy task to complete.</p>
                    <p>There are many kinds of META tags you should use, These are the most common:</p>
                    <p><strong>META-DESCRIPTION</strong>: Search engines will often use the information in the META DESCRIPTION tag as well as the TITLE to describe your site in the short description that goes along with the link in your search engine rankings.</p>
                    <p><strong>META-KEYWORDS</strong>: This hold words that you can use to help search engines classify your content. The keywords you use must be relevant and must appear in the body text.</p>
                    <p class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</p>
            </li>

            <li>
                <h2><a name="NoMetaTagsToRedirect"></a>Do you use "301" code to redirect renamed or moved pages?</h2>
                    <p>Don't lose your Google juice when you rename a file. Do not use META refresh to redirect pages - "301" code is the most efficient and Search Engine Friendly method for webpage redirection. There are different ways to implement and it should preserve your search engine rankings for that particular page. If you have to change file names or move pages around, always use the code "301", which is interpreted as "moved permanently".</p>
                    <h3>How to do a "301" redirect</h3>
                        <p>Any time you move a page or just delete a page you should add a "301" redirect to a new page or a page for missing pages.</p>
                          <ol>
                            <li><b>You can add a 301 redirect in code</b> <br />
                                Response.PermanentRedirect("~/MyNewPage.aspx")<br /> 
                                Although this works well it is difficult to manage the list of redirects and you need to keep the page around.
                            </li>
                            <li><b>You can write an HTTP handler</b><br />
                                This is better as you can choose where to store the redirect list, but you still need to manage a custom codebase.
                            </li>
                            <li><b>You can use rewrite maps in IIS URL Rewrite to add a number of redirects.</b><br />
                                See <a href="http://ruslany.net/2010/05/storing-url-rewrite-mappings-in-a-separate-file/">Storing URL rewrite mappings in a separate file</a> for an explanation of how to use rewrite maps.
                            </li>
                        </ol>
                        <p><strong>Note: </strong>If you are using a source control, like TFS, lock the old file so no-one can edit it by mistake.</p>
                </li>


            <li>
                <h2><a name="juicy-words"></a>Do you use "juicy words" in your URLs?</h2>
                    <p>When you create a page URL, remove all the filler words and just keep the main keywords. This way your URL's are more friendly.</p>
                    <dl class="bad">
                        <dt>http://northwind.com/how-do-i-find-the-version-of-the-word-document.html</dt>
                        <dd>Figure: Bad example - The filler words remain</dd>
                    </dl>
                    <dl class="good">
                        <dt>http://northwind.com/find-word-document-version.html </dt>
                        <dd>Figure: Good example - The filler words removed and only Juicy words remain</dd>
                    </dl>
            </li>

            <li>
                <h2><a name="use-dashes-in-URL"></a>Do you use dashes in your URLs?</h2>
                    <p>For maximum readability use dashes in your URLs. This also helps with Google crawling.</p>
                    <p><strong>Note:</strong> this is only for the pages within a site - it is not for the domain. Domains suck when they have "-" in them.</p>
                    <dl class="bad">
                        <dt>http://northwind.com/WordDocumentVersion.html</dt>
                        <dd>Figure: Bad example - No dashes in URL</dd>
                    </dl>
                    <dl class="good">
                        <dt>http://northwind.com/word-document-version.html</dt>
                        <dd>Figure: Good example - Dashes help with readability</dd>
                    </dl>
                    <p>However, consistency is also important. If your site already has URLs in another format (E.g. the SSW site has used MixedCase URLs for many years), then it is OK to remain consistent.</p>
            </li>

            <li>
                <h2><a name="Relevancy"></a>Do your links have relevancy to the page you're linking to?</h2>
                    <p>We know that the way your inbound links are worded do make a difference, they play an important factor when Google searches are made by search engine users. Google uses the words between your &lt;a href&gt; tags to decide which websites are the most relevant to the search terms.</p>
                    <p>For example, if SSW had a million inbound links that described the site like this...</p>
                        <pre>&lt;a href=&quot;http://www.ssw.com.au&quot;&gt;Movies for Free&lt;/a&gt;</pre>
                    <p>...when someone searches for "free movies" on Google, it would point to us.</p>
                    <p>So what does this mean? All those that are pointing to pages on your website that are displayed as 'More', 'Link', 'This' or 'Click Here' <strong>aren't</strong> doing you any favors when it comes to increasing your Google rankings.</p>
                    <dl class="bad">
                        <dt>&quot;For tips and tricks to increase your Google Ranking Click
                            <!-- SSW Code Auditor - Ignore next line -->
                            <a href="/ssw/Standards/Rules/RulesToBetterGoogleRankings.aspx">here</a>&quot;
                        </dt>
                        <dd>Figure: Bad Example #1 - Link does not increase your rankings</dd>
                    </dl>
                    <br />
                    <dl class="bad">
                        <dt>&quot;For tips and tricks to increase your Google Ranking
                            <!-- SSW Code Auditor - Ignore next line -->
                            <a href="/ssw/Standards/Rules/RulesToBetterGoogleRankings.aspx">Click Here</a>&quot;
                        </dt>
                        <dd>Figure: Bad Example #2 - Link does not increase your rankings</dd></dl>
                    <br />
                    <dl class="bad">
                        <!-- SSW Code Auditor - Ignore next line -->
                        <dt>&quot;<a href="/ssw/Standards/Rules/RulesToBetterGoogleRankings.aspx">Link</a> for
                            tips and tricks to increase your Google Ranking&quot;
                        </dt>
                        <dd>Figure: Bad Example #3 - Link does not increase your rankings</dd></dl>
                    <br />
                    <dl class="bad">
                        <dt>&quot;For tips and tricks to increase your Google Ranking read
                            <!-- SSW Code Auditor - Ignore next line -->
                            <a href="/ssw/Standards/Rules/RulesToBetterGoogleRankings.aspx">this</a>&quot;
                        </dt>
                        <dd>Figure: Bad Example #4 - Link does not increase your rankings</dd></dl>
                    <br />
                    <dl class="bad">
                        <dt>&quot;For tips and tricks to increase your Google Ranking
                            <!-- SSW Code Auditor - Ignore next line -->
                            <a href="/ssw/Standards/Rules/RulesToBetterGoogleRankings.aspx" title="Rules To Better Google Rankings">Click Here</a>&quot;<br />
                        </dt>
                        <dd>Figure: Bad Example #5 - Better than the ones above (scroll and hold over link to see the difference)</dd>
                    </dl>
                    <br />

                    <dl class="good">
                        <dt>&quot;For tips and tricks to increase your Google Rankings go to our
                            <!-- SSW Code Auditor - Ignore next line -->
                            <a href="/ssw/Standards/Rules/RulesToBetterGoogleRankings.aspx">Rules to Better Google Rankings</a>&quot;
                        </dt>
                        <dd>Figure: Good Example - Descriptive link</dd>
                    </dl>
                    <p>This rule also has relevance for <a href="RulesToBetterWebsites.aspx">easier website navigation</a>.</p>
                    <p class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</p>
                    <p class="productBox">We have a program called <a href="/ssw/LinkAuditor/">SSW Link Auditor</a> to check for this rule.</p>
            </li>

            <li>
                <h2><a name="DynamicPages"></a>Do you make your data-driven pages easier to find?</h2>
                    <p>Google crawls data-driven websites. There are a few considerations when it comes to optimizing a data-driven website. The best way to get your database-driven website crawled by Google is to have an index of your dynamic pages so that the Google bots have a singular point of reference to your dynamic pages. It's a slow process, but it will be well worth it.</p>
                    <p>Take a look at how we tackle this issue. We have a knowledge base with hundreds of pages and we list them all here on our Knowledge Database index page. We know that Google has crawled them because it shows up on Google results. We applied a <a href="https://support.google.com/webmasters/answer/156184?hl=en" target="_blank">sitemap</a>.</p>
                <dl class="image">
                    <dt><img src="/ssw/Standards/Rules/Images/kbsearch.gif" alt="Screenshot of SSW knowledge base page with 'Knowledge Base Index' link" width="768" height="476" /></dt><dd>Figure: It is hard for search engines to know which option from the drop down field they should go into. Here we add a link to our Knowledge Base Index.</dd></dl>
                <dl class="image">
                    <dt><img src="/ssw/Standards/Rules/Images/KbIndex.gif" alt="KB Index" width="570" height="415" /></dt>
                    <dd>Figure: By default the dynamic pages behind this page would be invisible to Google. You need to provide a link that will make them visible to Google.</dd>
                </dl>
            </li>

            <li>
                <h2><a name="AddErrorMessageForSEO"></a>Do you provide the written text when you publish an image with text in it?</h2>
                    <p>This is one of the most common errors tech bloggers do. Most bloggers do not think (or remember) to add more than just the image of the error screen capture.</p>
                    <p>If you add the text of the error message it will help others when they search, and help their Google juice.</p>
                    <p>Let's look at 3 examples:</p>
                    <dl class="badImage">
                        <dt><img src="Images/BadExampleErrorMSG.jpg" alt="Bad Example Error MSG" /></dt>
                        <dd>Figure: Bad Example - this image gives no context of the surrounding areas, and without the text as well you get no google love</dd>
                    </dl>
                    <dl class="image">
                        <dt><img src="Images/OKExampleForErrorMSG.jpg" alt="OK Example For Error MSG" /></dt>
                        <dd>Figure: OK Example - this image is great because it gives context by including the surrounding area, but you still need the text for SEO benefits</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt><img src="Images/OKExampleForErrorMSG.jpg" alt="OK Example For Error MSG" /><br />
                            Microsoft SharePoint Designer <br />
                            User-defined workflows have been disabled by the SharePoint Administrator. User-defined workflows will be unable to run.</dt>
                        <dd>Figure: Good example - if you add the image and this text above, you get full marks</dd>
                    </dl>
            </li>

            <li>
                <h2><a name="Alt"></a>Do your picture links use attributes?</h2>
                    <p>What do you do when you want images to link to your site? In the case of images, Google will look for the "alt" text and factor this into the search results. So when you ask someone else to link to your site with an image you should always add attributes like &quot;alt&quot; and &quot;title&quot; into the code. Here's an example. Hold the cursor over the image below and see what happens.</p>
                    <dl class="badImage">
                        <dt><a href="/ssw/Default.aspx">
                            <img border="0" src="/ssw/Images/SSWLogo/SSWLogo_NoText_NoShadow.gif" alt="SSW Logo NoText NoShadow" /></a><br />
                            <pre>&lt;a href="/ssw/Default.aspx"&gt;
        &lt;img src="/ssw/Images/SSWLogo/SSWLogo_NoText_NoShadow.gif" width="169" height="132"&gt;
    &lt;/a&gt;</pre>
                        </dt>
                        <dd>
                            Figure: BAD EXAMPLE (scroll over - you will see nothing)</dd></dl>
                <!-- SSW Code Auditor - Ignore next line -->
                <dl class="goodImage">
                    <dt><a href="/ssw/Default.aspx">
                        <img border="0" src="/ssw/Images/SSWLogo/SSWLogo_NoText_NoShadow.gif" alt="SSW Logo [Search engines will index this text]" title="SSW Logo [Search engines will index this text]" /></a><br />
                        <pre>&lt;a href="/ssw/Default.aspx"&gt;
    &lt;img src="/ssw/Images/SSWLogo/SSWLogo_NoText_NoShadow.gif"  
        <span class="highlight">alt="SSW Logo [Search engines will index this text]" </span>
<br /> 
        <span class="highlight">title="SSW Logo [Search engines will index this text]"</span> width="169" height="132"&gt;
&lt;/a&gt;</pre>
                    </dt>
                    <dd>
                        Figure: GOOD EXAMPLE (scroll over)</dd></dl>
                <p>For images, <a href="/ssw/Standards/Rules/RulesToBetterWebsitesDevelopment.aspx#UseDLTag">use &lt;dl&gt; tag in the mark-up</a>. This way Google will index your image even more accurately.</p>
                <p class="productBox">
                    We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</p>
            </li>

            <li>
                <h2><a name="LinkFarms"></a>Do you avoid the temptation of link farms?</h2>
                    <p>There are some SEO techniques that are quick and easy fixes, like being in a link farm. To join a link farm people pay to be part of a collection of webpages where their sole purpose is to provide interconnecting links and harvest pages ranking amongst members. Many of these &quot;get ranked quick&quot; methods have some serious repercussions. If you are caught in a link farm or have hidden text in your pages, you'll eventually get caught and sentenced with the Google &quot;death penalty&quot;. In some cases, entire domains were removed from the search engine indexes in order to prevent them from influencing search results. So after all is said and done a safe and sure fire way to increase your website's Page Rank is to provide useful information that other websites will want to link to. Google's ideal of the Internet is that it should be filled with webpages that have high-quality information and based on this ideal it rewards high-quality content and penalizes crud.</p>
                    <p>Many of these link farms and websites that subscribe to them have been identified and banned by Google so you should never be lured into the temptation of quick easy SEO solution. Employing dodgy optimization techniques is a gamble; you're gambling that the smart people over at Google aren't as smart as you.</p>
            </li>


            <li>
                <h2><a name="Frames"></a>Do you avoid using frames on your website?</h2>
                    <p>Websites that use frames often don't get crawled by search engine spiders. The web was designed in such a way that every URL is supposed to correspond to a webpage, and with framed websites this is not the case. We recommend that you avoid frames altogether. Here is what Google says on <a href="https://support.google.com/webmasters/answer/34445?hl=en" target="_blank">Frames</a>:</p>
                    <blockquote>Google supports frames and iframes to the extent that it can. Frames can cause problems for search engines because they don't correspond to the conceptual model of the web. In this model, one page displays only one URL. Pages that use frames or iframes display several URLs (one for each frame) within a single page. Google tries to associate framed content with the page containing the frames, but we don't guarantee that we will.</blockquote>
            </li>

            <li>
                <h2><a name="Include"></a>Do you avoid having important content in JavaScript?</h2>
                    <p>Many websites use JavaScript for fancy menus, dropdowns or scroll overs. However, sometimes search engines can't read JavaScript in all of our pages. It's known that Google can index some content inside JavaScript, but the really important content should be placed in normal HTML so that you know it will be indexed. This keeps the code clean and helps search engines index pages.</p>
            </li>

            <li>
                <h2><a name="Submissions"></a>Do you submit all your software to download sites?</h2>
                    <p>As suggested a great way to increase your websites search engine rankings is to get inbound links towards your website. Being a software vendor we do this by submitting our products to freeware/shareware download sites like Shareware River and Tucows. So if you find a site that accepts software submissions make sure you submit your entire product range, not just one.</p>
            </li>

            <li>
                <h2><a name="101k"></a>Do you keep your webpages less than 101k?</h2>
                    <p>In the past, Google crawl was limited to 100kb page size. These days, Google will index more than 101K of a page (actually Google will index up to 2.5MB of an HTML file), but there’s still a good reason to recommend keeping to under a hundred links or so: the User Experience. Remember the more small pages you have, more links you'll get.</p>
                    <p class="productBox">We have a program called <a href="/ssw/LinkAuditor/">SSW Link Auditor</a> to check for this rule. We offer a <a href="/SSW/LinkAuditor/Samples/Rules/LessThan101K.aspx"> rule sample page</a> for demo scan.</p> 
            </li>

            <li>
                <h2><a name="Robotstxtfile"></a>Do you use your Robots.txt file effectively?</h2>
                <p>If you decide to you use the <a href="https://www.ssw.com.au/ssw/Standards/Rules/RulesToBetterWebsitesNavigation.aspx#ManageExternalLinks"> redirect</a> method when linking to external pages from your site, it's a good
                    idea to have a <a href="http://www.robotstxt.org/" alt="robots text" target="_blank" class="external">robots.txt</a> file in your root directory. In the robots.txt file, you specify that the robot (or spider as they're sometimes known) should not look in the redirects folder. This will avoid the problem that can sometimes occur, where a Google search will incorrectly display content from another site as if it was from your site. Also, this avoids incorrect hits on your redirects, mucking up your statistics which is one of the main reasons you would use redirects in the first place!</p>
            </li>


            <li>
                <h2><a name="GoogleFileSizeLimit"></a>Do you keep your files under the Google file size limit?</h2>
                    <p>As per Google on <a href="https://developers.google.com/webmasters/control-crawl-index/docs/robots_txt?hl=en">Robots.txt Specifications</a>:</p>
                    <blockquote>A maximum file size may be enforced per crawler. Content which is after the maximum file size may be ignored. Google currently enforces a size limit of 500kb.</blockquote>
                    <p>Regarding other files:</p>    
                    <ul>
                        <li>All files larger than 30MB will be completely ignored.</li>
                        <li>HTML, the search appliance indexes up to 2.5MB of the document, caches it, and discards the rest.</li>
                        <li>A non-HTML format, the search appliance:
                            <ol>
                                <li>Downloads the non-HTML file.</li>
                                <li>Converts the non-HTML file to HTML.</li>
                                <li>If the converted content is less than 4,000,000 bytes, indexes the first 2MB of the HTML file. (Take note that 4MB=4,194,304 bytes.) If the converted content exceeds 4,000,000 bytes, the document is not indexed. However, the document and a link to it do appear in search results. </li>
                                <li>Caches the first 2MB of the HTML file.</li>
                                <li>Discards the rest of the HTML file and the non-HTML file.</li>
                            </ol>
                        </li>
                    </ul>
            </li>

            <li>
                <h2><a name="DomainRegister"></a>Do you register your domain for a long time?</h2>
                    <p>If you own a domain and want Google to instantly recognize it as a permanent domain then register the maximum (10 years for .com depending on the domain provider) you can in one go. Google will assume it is permanent and rate you higher sooner.</p>
                    <dl class="goodImage">
                        <dt><img src="/ssw/Standards/Rules/Images/PermanentRegister.jpg" alt="Permanent register" /></dt>
                        <dd>Figure: Good example, domain was registered for 10 years</dd>
                    </dl>
            </li>

            <li>
                <h2><a name="USEnglish"></a>Spelling - Do you use US English?</h2>
                    <p>Did you know that all pilots around the world must speak English? Back then, the decision of what language to use was made as English, since the US invented the first plane. Like the sky, in the web world, it is better to use one version of English. Since the US invented the web, let's go with that.</p>
                    <p>If you are an Australian or British this rule is controversial, but it is worth it for the following reasons:</p>
                    <ul>
                        <li>Cater for the majority. Most web traffic is from American users and they expect American (most probably will assume it is an error)</li>
                        <li>On the practical side, more web searches are going to be returned for US spelling of words.</li>
                    </ul>
                    <dl class="image">
                        <dt><img src="Images/SetLanguage.png" alt="Set Language" /></dt>
                        <dd>Figure: Click "Set Language" to verify you are using US English.</dd>
                    </dl>
                    <dl class="badImage">
                        <dt><img src="Images/AUEnglish.png" alt="Australian English" /></dt>
                        <dd>Figure: Bad Example - US is not the default selected</dd>
                    </dl>
                    <dl class="goodImage">
                        <dt><img src="Images/USEnglish.png" alt="US English Selected" /></dt>
                        <dd>Figure: Good example - US is the selected language</dd>
                    </dl>
                    <p>Don't forget <a href="/ssw/Standards/Rules/RulesToBetterTechnicalDocumentation.aspx#WordSpellingAndGrammarChecker"> to check your pages for spelling errors</a> after making edits.</p>
            </li>

            <li>
                <h2><a name="GooglePlacesEntry"></a>Do you have a Google Places entry?</h2>
                    <p>With Google's <a href="http://googleblog.blogspot.com/2010/10/place-search-faster-easier-way-to-find.html">
                        increased emphasis on local search</a> and <a href="http://www.seobook.com/localization">
                            promoting local services</a>, it is important that companies have a Google Places entry (previously referred to as Google Local Business
                    Center) so that their businesses can be found easily in searches. Click here to
                    <a href="http://www.google.com/local/add/businessCenter">Add your business.</a></p>
                    <p>Having a Google Places entry will allow their entries to display when users search for services in a local area e.g. 'Sydney .NET consultants'.</p>
                    <dl class="goodImage">
                        <dt><img src="Images/ssw-google-places.jpg" alt="Google Places" /></dt>
                        <dd>Figure: Good example - Google Places lets SSW rank highly in local search</dd>
                    </dl>         
            </li>

            <li>
                <h2><a name="IISThings"></a>Do you know the IIS things to do?</h2>
                    <p>There are a number of things you can do to make your content more search-friendly in IIS.</p>
                    <ul>
                        <li>Make content search engine-friendly</li>
                        <li>Improve volume and quality of traffic</li>
                        <li>Control how search engines will access and display content </li>
                        <li>Inform search engines about locations that are available for indexing</li>
                        <li>Show broken pages</li>
                    </ul>
                    <p>You can use the <a href="http://www.iis.net/extensions/SEOToolkit">IIS SEO</a> Toolkit to find most of your problems.</p>
                    <dl class="image">
                        <dt><img src="Images/AnalyseSite.jpg" alt="Analyze your site" /></dt>
                        <dd>Figure: Analyzing your site is easy</dd>
                    </dl>  
                    <dl class="badImage">
                        <dt><img src="Images/ProblemsYouHave.jpg" alt="Check the problems you have " /></dt>
                        <dd>Figure: Bad example - You never know how many problems you have until you try</dd>
                    </dl> 
                    <p>See <a href="http://weblogs.asp.net/scottgu/archive/2009/06/03/iis-search-engine-optimization-toolkit.aspx">ScottGu's post on IIS Search Engine Optimization Toolkit</a> for more information</p>
            </li>

            <li>
                <h2><a name="FixUglyURL"></a>Do you know to fix your ugly URL's?</h2>
                    <p>Ugly URL's don't only make it difficult for users to browse your site, they can also impact your Google rankings.</p>
                    <div class="greyBox">
                    e.g. 
                    http://www.northwind.com/MyInternalDB/UserDatabase/ProductList.aspx?productname=Access                 
                    </div>
                    <b>Figure: If you have a nasty URL like this</b>
                    <p>You should fix it up to look more like this:</p>
                    <div class="greyBox">
                    e.g. 
                    http://www.northwind.com/products/access               
                    </div>
                    <b>Figure: Wow, your user could even guess the URL for "Word"</b>
                    <ol>
                        <li>Add in Global.asax a route<br />
                            <pre class="code">
                     protected void Application_Start(object sender, EventArgs e)
                                {
                        //RouteTable and PageRouteHandler are in System.Web.Routing
                        RouteTable.Routes.Add("ProductRoute", new Route("products/{productname}", new PageRouteHandler("~/MyInternalDB/UserDatabase/ProductList.aspx.aspx")));
                                }
                    </pre>
                    <b>Figure: OK example - create a static route if you only have a few rewrites </b>
                        </li>
                        <li>Use the URL Rewriting Module for IIS7</li>              
                    </ol>
                    <dl class="image">
                        <dt><img src="Images/IIS7Rewrite.jpg" alt="IIS7 Rewrite " /></dt>
                        <dd>Figure: Good example - An IIS7 Rewrite is much easier to manage</dd>
                    </dl>  
            </li>

            
        </ol>
    </div>
    <div id="acknowledgements">
        <h2>
            Acknowledgements</h2>
        <ul>
            <li><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></li>
            <li><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TK">Tim Kremer</a></li>
            <li>Jade Mitchell</li>
        </ul>
    </div>
</asp:Content>
