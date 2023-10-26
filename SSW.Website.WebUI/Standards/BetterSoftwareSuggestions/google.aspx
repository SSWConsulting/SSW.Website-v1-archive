<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Google Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
        <div class="TableOfContents">
            <ol>
                <li><a href="#Highlight">Improve Highlight Button</a></li>
                <li><a href="#WatchThread">Watch a Thread</a></li>
                <li><a href="#BrokenLinks">Send error report about broken links</a></li>
                <li><a href="#WildcardSearch">Wildcard search</a></li>
                <li><a href="#FixAPI">Fix the Google API</a></li>
                <li><a href="#GreenBar">Get rid of the PageRank Bar and Fix the Duplicate Content Filter</a></li>
                <li><a href="#GoogleSearch">Users should not have to deal with plurals (and especially
                        apostrophes eg. xx vs xx's" vs xxs)</a></li>
                <li><a href="#Subject">Subscribing to the Google Groups </a></li>
                <li><a href="#ProposeNewTime">Gmail - To support "Propose new time"</a></li>
                <li><a href="#PasteImage">Gmail - Support pasting an image from a clipboard</a></li>
                <li><a href="#AddFilterBox">Help me find one of my bookmarks by typing a keyword</a></li>
            </ol>
        </div>
        <ol>
            <li><a name="Highlight"></a>
                <h2>
                    Improve Highlight Button</h2>
                <p>
                    Users of the Google Toolbar may be familiar with the Highlight option, which highlights
                    all occurrences of the current search-word(s) in the current page. This handy feature
                    could be made more useful if it could highlight partial matches.
                </p>
                <p>
                    For example, if the search string "link button" was entered, in addition to highlighting
                    every occurance of both 'link' and 'button', Google would highlight occurances such
                    as 'links' or 'buttons'.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/office1.gif" alt="Office" /></dt>
                    <dd>
                        Figure: Google highlight option.</dd>
                </dl>
            </li>
            <li><a name="WatchThread"></a>
                <h2>
                    Watch a Thread</h2>
                <p>
                    Google Groups is a service that allows you to browse, create and reply to newsgroup
                    postings.</p>
                <p>
                    This service would be greatly enhanced if it allowed the user to specify one or
                    more threads to be 'watched'. Whenever a thread changes, a message can be sent to
                    an email address provided by the user, which can detail not only the thread that
                    has changed, but where the changes have taken place (perhaps using highlighting).</p>
                <dl class="image">
                    <dt>
                        <img src="Images/Google.gif" alt="Google" width="557" height="385" /></dt>
                    <dd>
                        Figure: Browsing Google Groups</dd>
                </dl>
            </li>
            <li><a name="BrokenLinks"></a>
                <h2>
                    Send error report about broken links</h2>
                <p>
                    Wouldnt it be a great world if there were NO BAD links in the world? Well I have
                    a web site with a lot of links to other sites Google has this list in their database.
                    Google also have a database of all pages in the world. So Google could help with
                    the worlds broken links, by offering a service where they send a weekly email (the
                    web master) of links on your site that have gone bad.
                </p>
            </li>
            <li><a name="WildcardSearch"></a>
                <h2>
                    Wildcard search</h2>
                <p>
                    Google please support normal wildcards like:
                    <br>
                    <b></b>
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/GoogleNormalSearch.gif" width="768" height="537"></dt>
                    <dd>
                        Figure: Normal Google search</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/GoogleWildcardSearch.gif" width="768" height="537"></dt>
                    <dd>
                        Figure: Google doesn't support wildcard search</dd>
                </dl>
                <p>
                    Not this strange style:
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/GoogleSynonymSearch.gif" width="768" height="537"></dt>
                    <dd>
                        Figure: Google supports synonym search using the symbol</dd>
                </dl>
            </li>
            <li><a name="FixAPI"></a>
                <h2>
                    Fix the Google API</h2>
                <p>
                    As it stands, the results from the Google API do not closely match the results that
                    an end user would experience. The Google API should be using the same data source
                    as what a normal user would see. Alternatively, the API should be able to specify
                    which server it uses to return search results.
                </p>
                <p>
                    For example - the Google API code below only hits the SSW web site after searching
                    through 10 results (including several from Microsoft that aren't in the web search)
                    for the keyword "Exchange Reporter". In a web search the SSW web site comes first.
                    The two should be consistent. If the API is not accurate, then it is effectively useless
                    for gathering ranking statistics.
                </p>
                <pre> 
	
			private DataSets.ResultHistoryDataset GetRanking(string searchValue)
		{
			// Create a Google Search object

				 
			GoogleSearchWebService.GoogleSearchService s = new GoogleSearchWebService.GoogleSearchService();
			string key = "XXXXXXXX";
			int maxResults = 10;
			int rank = 0;
			int positiveHitCount = 0;
			int currentIndex = 0;
			int page = 0;
			
			// Invoke the search method
			//Google.GoogleSearchResult r = s.doGoogleSearch(key , searchValue + " inurl:www.ssw.com.au", 
			for( page = 0; page  < 3; page +=1)
			{
				GoogleSearchWebService.GoogleSearchResult r = s.doGoogleSearch(key , searchValue ,
					(page * maxResults) + 1  , maxResults,  true , "", false, "","","");
				// Extract the estimated number of results for the search and display it
		
				foreach  (GoogleSearchWebService.ResultElement resultElement in r.resultElements)
				{
					currentIndex ++;

					if (resultElement.URL.StartsWith("http://www.ssw.com.au"))
					{
						positiveHitCount ++;
						if (rank == 0)
						{
							rank = currentIndex;
						}
					}
				}

				//int estResults = r.estimatedTotalResultsCount;
				//this.label1.Text  = Convert.ToString(estResults);
						
			}

			this.resultHistoryDataset1.ResultHistory.AddResultHistoryRow (searchValue, rank,positiveHitCount, maxResults, page , DateTime.Now.Date) ;
			return this.resultHistoryDataset1;

    </pre>
                <b>Figure: Sample API code - this returns different results from a user performing a
                    web search</b> 
            </li>
            <li><a name="GreenBar"></a>
                <h2>
                    Get rid of the PageRank Bar and Fix the Duplicate Content Filter</h2>
                <p>
                    Google is too easily manipulated. All you need to do these days is to create a site
                    and get as many inbound keyword text links as you can to get a high page rank with
                    the Google bar.</p>
                <p>
                    Take our site for an example, our website stays on topic as much as possible and
                    only links to websites that are relevant and decent. On the other hand, my competition
                    employs spam tactics "DELUXE", making it very easy to get links when you don't care
                    where they come from.</p>
                <p>
                    The result is that I slip a little further every month while my spam competition
                    maintains top positions.</p>
                <p>
                    Also many top position holders in my industry have multiple duplicated link pages.</p>
                <p>
                    Current Solution: I must link to spam to survive, risking my future when Google
                    picks this up.</p>
                <p>
                    My preferred solution: Google get rid of that dam green bar and sort out your duplicate
                    content filter!</p>
            </li>
            <li><a name="GoogleSearch"></a>
                <h2>
                    Users should not have to deal with plurals (and especially apostrophes eg. xx vs xx's"
                    vs xxs)</h2>
                <p>
                    I entered "Greg Low DMV", This what came back:<br />
                    <img src="Images/GoogleVideoSearch.gif" /><br />
                    <br />
                    Where is the web cast?<br />
                    <br />
                    Google result for "<a href="/SSW/Redirect/Google/Googlesearch.htm" target="_blank">Greg
                        Low DMV site:microsoft.com</a>" = 0 hits. (BAD -- find the plural)<br />
                    Google result for "<a href="/SSW/Redirect/Google/Googlesearch1.htm" target="_blank">Greg
                        Low DMVS site:Microsoft.com</a>"= the Webcast (SHOULD NOT NEED TO DO THIS)<br />
                    Google result for "<a href="/SSW/Redirect/Google/Googlesearch2.htm" target="_blank">Greg
                        Low DMV's site:Microsoft.com</a>" = 0 hits. (GOOD) (if you put an apostrophes
                    it should respect you are being exact)<br />
                    <br />
                    if you search DMV -- it should find DMVs and DMV's
                </p>
            </li>
            <li><a name="Subject"></a>
                <h2>
                    Subscribing to the Google Groups
                </h2>
                <p>
                    Fox example, "microsoft.public.sqlserver.server" group.
                    <pre>
Can you change the subject from
     Subject: 41 new messages in 13 topics - abridged
to  
     Subject: microsoft.public.sqlserver.server
</pre>
                    With proper subject , threading inside Outlook can work. Currently with changing
                    subjects every day breaks threading.<br />
                    <a href="/ssw/Standards/Rules/RulesToBetterEmail.aspx">Rules to better email</a>
                    for more info.
                </p>
            </li>
            <li>
                <h2>
                    <a name="ProposeNewTime">Gmail - To support "Propose new time"</a>
                </h2>
                <p>
                Suggest gmail to support "propose new time" requests which currently is not working.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/Google_Gmail_NewTime.jpg" alt="Propose new time" /></dt>
                    <dd>
                        Figure: Gmail need to be add support "Propose new time"</dd>
                </dl>
            </li> 
            <li>
                <h2>
                    <a name="PasteImage"></a>Gmail - Support pasting an image from a clipboard
                </h2>
                <p>
                    Suggest gmail to support pasting an image from a clipboard, like <a href="/ssw/Standards/BetterSoftwareSuggestions/TeamFoundationServer.aspx#EmbedImage">the same suggestion for TFS</a>.
                </p>
            </li>
             <li>
            <h2><a name="AddFilterBox">Help me find one of my bookmarks by typing a keyword</a></h2>
            <dl class="image">
              <dt>
                 <img src="Images/Bookmark.jpg" alt="We need a filter text box to locate the bookmark" /></dt>
              <dd>
                 Figure: Add a “Filter” text box on this menu</dd>
             </dl>
            </li>
            
        </ol>
</asp:Content>
