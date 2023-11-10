<%@ page language="VB" masterpagefile="~/Masters/Default.master" autoeventwireup="false"
    title="SSW Rules to Better Websites - Branding and Marketing" %>

<%@ register tagprefix="ssw" tagname="RandomTestimonial" src="~/Components/RandomTestimonial.ascx" %>
<asp:content id="Content1" contentplaceholderid="mainContentPlaceHolder" runat="server">
	<p>
		<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
		</asp:SiteMapPath>
	</p>
	<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
	<div class="TableOfContents">
		<h3>
			Rules to Better Websites - Branding and Marketing</h3>
		
		<p><strong>Rules to Websites - Online Transactions</strong></p>
        <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F25323042657474657225323057656273697465732D4272616E64696E67253230616E642532304D61726B6574696E67')">
        Let us know</a> what you think.</p>

		<ol>
			<%--<li><a href="#headerfooter">Do you use a standard header and footer?</a></li>--%>
			<li><a href="#ContactUs">Do you ensure that your contact details easy to find?</a></li>
			<li><a href="#Testimonials">Do you use testimonials on your website?</a></li>
			<li><a href="#Minimal">Do you go for Minimal design?</a></li>
			<li><a href="#AboutUs">Does your website have an "About Us" section?</a></li>
			<li><a href="#icon">Does your website have a favicon?</a></li>
			<li><a href="#feedbackFooter">Do you have the ability for users to give you free feedback
				and report bugs on every page?</a></li>
			<li><a href="#Critique">Do you do a critique of your competitors websites?</a></li>
			<li><a href="#RightInfo">Do you organize your product information on your website appropriately?</a></li>
			<li><a href="#AvoidUnderConstruction">Do you avoid "Under Construction"?</a></li>
			<li><a href="#Counter">Do you avoid using a Counter?</a></li>
			<li><a href="#progressively">Do you gather more personal information progressively?</a></li>
			<li><a href="#PhoneNumber">Do you know the right format to show your phone number?</a></li>
		</ol>
	</div>
	<br />
	<div id="mainContent">
		<ol>
<%--			Removing because this rule is so stupid I don't even know where to begin to fix it
        <li>
				<h2>
					<a name="headerfooter"></a>Do you use a standard header and footer?</h2>
				<p>
					You should use a default header and footer that gets displayed on every page. A
					great idea is to always include your phone number on the footer, so if prospects
					want to give you a call, they don't have to hunt around for the "Contact Us" link.
					Don't forget an ALT tag. Checking all your Images have ALT tags is a good way of
					<a href="RulestoBetterGoogleRankings.aspx#Alt">improving your Google ranking</a>,
					and seeing as though your footer is on every page, it's only going to give you a
					leg-up.</p>
				<p>
					Administratively, you only need one header file and one footer file. When you want
					to place the contents of that file into another HTML page, you can simply use an
					include:</p>
				<p>
					e.g. &lt;!--#include virtual="/includes/header.htm"--&gt;
				</p>
				<p>
					This way formatting and style sheets is easy to manage and consistent for all pages.
					Whenever you need to make a change to the web page, you can simply edit one header
					file and all the files that use that include will be updated.
				</p>
				<dl class="image">
					<dt>
						<img src="/ssw/Images/ft_ssw.gif" alt="www.ssw.com.au | SSW | Call Now +61 2 9953 3000"
							border="1" width="339" height="73"></dt><dd>Figure: Have a standard footer across every
								page</dd></dl>
				<p>
					For an ASP.NET page use this code:
				</p>
				&lt;%@ Register TagPrefix="ssw" TagName="incTop" Src="/ssw/Include/incTop.ascx"
				%&gt;<br>
				&lt;%@ Register TagPrefix="ssw" TagName="incBottom" Src="/ssw/Include/incBottom.ascx"
				%&gt;<br>
				Contents will go here ...
				<p>
					&lt;ssw:incbottom id="incBottom" runat="server"&gt;&lt;/ssw:incbottom&gt; &lt;/body&gt;
					&lt;/html&gt;
				</p>
				<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
					id="table13">
					<tr>
						<td>
							We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check
							for this rule.
						</td>
					</tr>
				</table>
                </li>--%>
				<li>
					<h2>
						<a name="ContactUs"></a>Do you ensure that your contact details easy to find?</h2>
					<p>
						It's crucial that contact details are placed exactly where the user expects to find
						them - preferably on every page. People will often come to your site just to find
						a phone number or an email address, so make sure they're search isn't harder than
						it needs to be.
					</p>
					<p>
						SSW has its contact details in the top navigation, which is found on all pages across
						the site.
					</p>
					<dl class="image">
						<dt><img src="Images/MarketingContactBar.gif" alt="" border="1" /></dt>
						<dd>Figure: SSW's contact details on the web site</dd></dl>
				</li>
				<li>
					<h2>
						<a name="Testimonials"></a>Do you use testimonials on your website?</h2>
					<p>
						Testimonials are a great way of making people comfortable with dealing with your
						company. They give the website a positive vibe and provide users with something
						relational that they will identify with (problems solved, needs met, people made
						happy, economic crisis avoided, etc)</p>
					<p>
						SSW have a random testimonials box up the top of many pages. One example is the
						<a href="/ssw/Company/AboutUs.aspx">About Us</a> page.</p>
					<dl class="image">
						<dt><img src="Images/MarketingTestimonials.gif" alt="" border="1" width="600" height="172" /></dt>
						<dd>Figure: Testimonials as displayed on SSW's About Us page</dd>
					</dl>
					<p>
						Another alternative is having the testimonials listed down the right hand side of
						the screen. An example of this can be seen at: <a target="blank" href="/ssw/Redirect/Codesmith.htm">http://www.ericjsmith.net/codesmith/</a>.
					</p>
					<p>
						An interesting spin on the previous link is a website that still has the testimonials
						down the right hand side of the page, however it displays exerts of these testimonials
						in comic book style speech bubbles. An example of this can be seen at: <a href="/ssw/Redirect/RichTextBox/RichTextBox.htm">http://www.richtextbox.com/richtextbox/</a>.
					</p>
				</li>
				<li>
					<h2><a name="Minimal"></a>Do you go for Minimal Design?</h2>
				    <p>
					    Not only do we try to keep our designs clean and simple without too many images,
					    we also try to minimise the number of words. If something can be revised to make
					    it cleaner and simpler, we will always do it. A lack of superfluous words means
					    your readers don't get bored and will stick around longer.
				    </p>
                    <dl class="image">
                        <dt><img src="Images/MinimalDesignImage.jpg" alt=""/></dt>
                        <dd>Figure: Testimonials as displayed on SSW's About Us page</dd>
                    </dl>
				    <p>
					    Web minimalism and simplicity means emphasizing what is essential and important 
					    to your readers. Remove every non-essential or unimportant element. Readers only 
					    have so much attention to give, if you present them with less they will have more 
					    attention to give to each element.
				    </p>
				    <h3>Benefits of Simple Design</h3>
				    <ul>
                        <li>Pages load faster  </li>
                        <li>Clearer and easier to scan</li>
                        <li>Easy to navigate</li>
                        <li>Quicker to design (more profitable)</li>
                        <li>Quicker to build</li>
                        <li>Quicker to redesign</li>
                        <li>Easier to maintain</li>
                        <li>Easier to make work on different browsers</li>
                    </ul>
                </li>
				<li>
					<h2><a name="AboutUs"></a>Does your website have an 'About Us' section?</h2>
					<p>
						One of the first things you need to include when building a website is an 'About
						Us' section. An 'About Us' section gives the website credibility and more importantly
						gives readers an overview of you and your company.
					</p>
					<p>
						At SSW we based our 'About Us' page on 4 criteria; these are 4 aspects that we feel
						potential clients would want to know. Below is an example of the most important
						aspects we felt needed to be addressed on the SSW 'About Us' page:
					</p>
					<ol>
						<li><b>Target</b>
							<ul>
								<li>Our location - Sydney</li>
								<li>We specialise 'in .NET solutions for ...'</li>
								<li>Products offered: 24 developer utilities for .NET developers</li>
							</ul>
						</li>
						<li><b>Credibility</b>
							<ul>
								<li>SSW has been running Microsoft .NET User Group for 10 years </li>
								<li>Chief Architect is the Australian Microsoft Regional Director</li>
							</ul>
						</li>
						<li><b>Services Offered</b>
							<ul>
								<li>Technologies we use</li>
								<li>Customized software solutions</li>
							</ul>
						</li>
						<li><b>Goals</b>
							<ul>
								<li>To develop customized solutions for each client to meet specific specifications</li>
							</ul>
						</li>
					</ol>
					<p>
						To see the final result of these standards, see SSW <a href="/ssw/Company/AboutUs.aspx"> 'About Us'</a>.
					</p>
				</li>
				<li>
					<h2><a name="icon"></a>Does your website have a favicon?</h2>
					<p>
						Don't forget to add a favicon to the address bar of your website! That extra bit of polish gives your site credibility.
					</p>
					<p>
						Simply add the following within the head tags on your document:
					</p>
                    <div class="code">
						&lt;head&gt;<br />
						&lt;LINK REL="SHORTCUT ICON" HREF="/ssw/Images/icossw_v2.ico"&gt;<br />
						&lt;/head&gt;<br />
                    </div>
                </li>
				<li>
					<h2><a name="feedbackFooter"></a>Do you have the ability for users to give you free
						feedback and report bugs on every page?</h2>
					<p>
						How come there are so many pages I see that don't have an email address on the page?
						Every page on your site should have an email hyperlink.
					</p>
					<p>
						Even better make it easy for visitors to report the actual page they are referring
						to. A simple mail link will give users an easy way to report bugs or give feedback
						(check out the bottom of this page). By putting this code in your footer template,
						users will see this link on every page.
					</p>
					<p>
						&lt;a href="mailto:infomation@***.com.au?subject=FeedBack&amp;body=&lt;%=Request.ServerVariables("URL")%&gt;"&gt;
						Feedback Please &lt;/a&gt;
					</p>
				</li>
				<li>
					<h2>
						<a name="Critique"></a>Do you do a critique of competitor's websites?</h2>
					<p>
						Here are my thoughts on a couple of product sites critiqued against our criteria.
						The following are the first 3 things I look on a product site:</p>
					<ul>
						<li>Screenshots</li>
						<li>Testimonials</li>
						<li>Product Box</li></ul>
					<p>
						<a target="_blank" class="external" href="/ssw/Redirect/TotalAcccessAnalyzer.htm">Total Access Analyzer</a>
					</p>
					<p>
						<img src="/ssw/Standards/Rules/Images/Good.gif" alt="" width="16" height="16"/> The good points about the website:</p>
					<ul>
						<li>They have a user friendly left navigation bar allowing quick access to product specific
							information.</li>
						<li>There is heaps of information to be read if you choose to.</li>
						<li>I really like the "Convince Your Boss" section.</li>
						<li>I think the "Quick Tour" is good with heaps of detailed information.</li></ul>
					<p>
						<img src="/ssw/Standards/Rules/Images/Bad.gif" alt="" width="16" height="16"/> The bad points about the website:</p>
					<ul>
						<li>Seems busy</li>
						<li>Took a while to find the screen shots - should be more obvious.</li>
						<li>A significant amount of reading is required to understand what the product will
							do for you.</li>
						<li>No links to product support or knowledge base.</li>
						<li>No screen shots.</li></ul>
					<p>
						<a target="_blank" class="external" href="/ssw/Redirect/SQLServer/SQLCompare.htm">SQL Compare</a></p>
					<p>
						<img src="/ssw/Standards/Rules/Images/Good.gif" alt="" width="16" height="16"/> The good points about the website:</p>
					<ul>
						<li>Aesthetically pleasant with a simple easy to read layout.</li>
						<li>Links are provided to more detailed information.</li>
						<li>Access to evaluation copy and help files.</li></ul>
					<p>
						<img src="/ssw/Standards/Rules/Images/Bad.gif" alt="" width="16" height="16"/> The bad points about the website:</p>
					<ul>
						<li>Screen shots are given but what is the purpose of making them so small I have to
							click every single image.</li>
						<li>When you open up the first page you should see a quick summary of what the product
							will do for you. Such as the key features and benefits.</li>
						<li>No description of system requirements.</li>
						<li>No description of how it works.</li></ul>
					<p>
						<a target="_blank" class="external" href="/ssw/Redirect/Fileware2.htm">FTP Sync</a>
						</p>
					<p>
						<img src="/ssw/Standards/Rules/Images/Good.gif" alt="" width="16" height="16"/> The good points about the website:</p>
					<ul>
						<li>Summarises the product benefit well in one short paragraph.</li></ul>
					<p>
						<img src="/ssw/Standards/Rules/Images/Bad.gif" alt="" width="16" height="16"/> The bad points about the website:</p>
					<ul>
						<li>Screen shot available but not on the first page.</li>
						<li>They have all the changes from previous releases on the main page - would have been
							better to have a link - it is assuming that all visitors are existing users who
							are very familiar with all the feature which I doubt is the case.</li>
						<li>Aesthetically dull, no pictures or branding incorporated.</li>
						<li>Information is not organized in any logical structure that entices web surfers to
							purchase.</li>
						<li>No system specifications outlined.</li>
						<li>Lacks structure. When you open up the first page you should see a quick summary
							of what the product will do for you. Such as the key features and benefits.</li>
						<li>When you open up the first page you should see a quick summary of what the product
							will do for you. Such as the key features and benefits.</li>
						<li>No description of system requirements.</li>
						<li>Combining it with a whole lot of other products - should have a dedicated page per
							product.</li></ul>

					<p>
						<a target="_blank" class="external" href="/ssw/Redirect/RichTextBoxEditor.htm">Rich Text Box</a>
						</p>
					<p>
						<img src="/ssw/Standards/Rules/Images/Good.gif" alt="" width="16" height="16"/> The good points about the website:</p>
					<ul>
						<li>They have a user friendly tool bar allowing quick access to product specific information.</li>
						<li>Testimonials standout.</li>
						<li>Feature section is good - Where appropriate information has been summarised or put
							into a table.</li>
						<li>Compact design all in one screen full with links for more detailed information and
							a good menu bar at the top.</li>
						<li>Links are used frequently for access to more detailed information.</li>
						<li>There is a screen shot with a really good online demo.</li>
						<li>A lot of effort has been taken to make this site look aesthetically very pleasing.</li></ul>
					<p>
						<img src="/ssw/Standards/Rules/Images/Bad.gif" alt="" width="16" height="16"/> The bad points about the website:</p>
					<ul>
						<li>There are buttons in the top header which do nothing. I know now that is the intention
							but I think confusion should be avoided.</li>
						<li>A lot of advertising clutter leaving web surfers confused as to where to go next.</li></ul>

					<p>
						<a href="/ssw/CodeAuditor/">SSW Code Auditor</a></p>
					<p>
						<img src="/ssw/Standards/Rules/Images/Good.gif" alt="" width="16" height="16"/> Good points:</p>
					<ul>
						<li>Outlines the problems that the program solves well</li>
						<li>Good feature overview</li>
						<li>Has box shot, giving the product some identity.</li>
						<li>Has links to further information about related technologies (e.g. regular expressions).</li>
						</ul>
					<p>
						<img src="/ssw/Standards/Rules/Images/Bad.gif" alt="" width="16" height="16"/> Bad points:</p>
					<ul>
                        <li>Testimonial is meaningless</li>
						<li>Screenshot doesn't illustrate purpose of application</li>
						<li>Too much content on one page, with no easy way to get to a specific area. Much of
							the content doesn't need its own section, and could be condensed to simply enhance
							the feel of the site.</li>
						<li>No clear links to product knowledge base until the bottom of the page</li>
						<li>Section about FxCop could be put on a separate page, with a feature comparison table,
							which is then linked to with a navigation item. This content won't be of interest
							to many surfers. Those who do know FxCop will see the link and click through.</li>
						<li>Report demo should be made clearer. People want to see this.</li>
					</ul>
				</li>
					<li>
						<h2>
							<a name="RightInfo"></a>Do you organize your product information on your website
							appropriately?</h2>
						<table align="right">
							<tr>
								<td>
									<img border="1" src="Images/ScreenCodeAuditor.jpg" alt="Organize your product information"
										width="375" height="281">
								</td>
							</tr>
							<tr>
								<td>
									<b>Figure: How to organize your product information.</b>
								</td>
							</tr>
						</table>
						<p>
							The way you present information to prospective clients determines its effectiveness.
							In a cluttered environment we skilfully organize information for the greatest impact.
							When advertising software we like to use the following standard.</p>
						<ol>
							<li><strong>First Sentence (aka Tag Line)</strong>
								<br>
								This is a one line sentence that explains the benefits of using the software. This
								description is non-technical, but should give an idea of who the software is for.
								E.g. "Automate your code reviews with SSW Code Auditor"</li>
							<li><strong>First Paragraph</strong>
								<br>
								A paragraph that describes in greater the detail what the software does, what Microsoft
								products it works with (e.g. Access, Outlook, SQL Server etc) and any initial technical
								notes. E.g. "SSW SQL Total Compare resolves data conflicts with SQL Server Replication.
								This tool reports the differences between the Publisher and Subscribers the data."</li>
							<li><strong>Key Features &amp; Benefits</strong>
								<br>
								It's now time to convince the web surfer that they want the product. This section
								needs to summarize in bullet points why this product is going to solve their problems.
								If necessary group the benefits into logical categories.</li>
							<li><strong>Screen Shots</strong>
								<br>
								One screen shot on the first page is important for customers to get the look and feel of the application. Then link to more screenshots.</li>
							<li><strong>A Recorded Demonstration</strong><br>
								Customers love demonstrations especially when they are faced with using a product
								that they have never used before. An .avi is a great and innovative way to coach
								people on how to use products, and work with regardless of where they are around the
								world.</li>
							<li><strong>Testimonials</strong><br />
								Place a testimonial from another user who's already using the software. Customer's tesimonial tends
								to be informal and the message can be easily understood by your visitors.</li>

							<li><strong>User Guide</strong>
								<br>
								This is help facility is designed to quickly get you up and running. Once again
								if you can offer it to customers make sure you let them know about it</li>
							<li><strong>How it works</strong>
								<br>
								This is a brief technical description of what goes on behind the scenes</li>
							<li><strong>System Requirements</strong><br>
								The minimum system specifications to run the application.</li>
							<li><strong>Support</strong><br>
								One of the most important attributes that customers of software products look for
								when they make a purchase is whether or not there will be support if they are stuck
								and having difficulties with the software. One very cost effective method of support
								is to provide a <a href="/ssw/KB/KBSearch.aspx">knowledge base</a> where customers are free to seek the answers to their
								own problems.</li>
		</ol>
                        </li>
		<li>
			<h2>
				<a name="AvoidUnderConstruction"></a>Do you avoid "Under Construction"?</h2>
			<p>
				If all you have time to ftp up is a couple of simple html pages with few contact
				details and a brief "About Us", then leave it as that. Writing "Under Construction"
				says "We have a few ideas, but we really just don't have the resources to get our
				website together at the moment." Bad idea.
			</p>
			<dl class="image">
				<dt>
					<img src="Images/Websites_UnderConstruction.jpg" alt="Websites Under Construction"
						width="99" height="99"></dt>
				<dd>
					Figure: "We just can't get our act together on our website"</dd></dl>
		</li>
		<li>
			<h2>
				<a name="Counter"></a>Do you avoid using a Counter?</h2>
		
		<p>
			In the past, Web people thought it would be useful to tell people how many visitors
			the site has had. The idea behind it was that each visitor would see a figure and
			think "oh, this site must be good, it has had X number of visitors" and elect to
			stay with the site. It was basically a gimmick. So counters were born in various
			shapes and sizes and more and more sites used them until someone realised it wasn't
			actually adding anything useful to the site: the numbers meant nothing to the visitor
			especially if they were really high. And if the numbers were low or perceived to
			be low, depending on how long the site had been up, then visitors often left before
			going any further. Plus the counters were virtually useless for Web site owners.
			They didn't provide any useful information other than the fact that there were a
			certain amount of visitors. There was no way of knowing how many of these visitors
			were "unique" i.e. new to the site.
		</p>
		<p>
			Behind-the-scenes Web tracking software now makes it possible to get rid of the
			counters and most professional sites have. Google Analytics allows them to track their visitors much more comprehensively and use the
			statistics to guide their marketing efforts.</p>
            <p>See our <a href="http://rules.ssw.com.au/WebSites/RulestoBetterGoogleAnalyticsReports/Pages/default.aspx"> to Better Google Analytics Reports</a></p>
            </li>
		<li>
			<h2>
				<a name="progressively"></a>Do you gather more personal information progressively?</h2>
		
		<p>
			Most people don't like to disclose personal information and in some cases will give
			you dud data. This is more often the case when people are required to give a lot
			of information at one time. What we have found at SSW is that you will get better
			quality personal information at intervals and not all at once.</p>
            <p>
			For example: Lets say I go to a website to download some software, but to do this
			the company requires me to give my Name, Address, Phone Numbers & email address.
			The likelihood of them receiving my correct details are limited as I don't know
			what they will do with these details and I don't know the company at all. However,
			if that same company only asked me for my user name and email
			address only I would be more inclined to leave them the correct information as this
			is not as intrusive and a lot quicker. I would also be more inclined to go back
			to that website and download more, which is when you ask the user for that little
			bit more information.</p>
            <p>
			The second time round that company may ask me for my real name and a phone
			number. Again this is not as daunting because as the user I have already given this
			company some of my information and feel that I can trust them a bit more than the
			average company.</p>
            <p>
			The third time I go to download they ask me for a little bit more information, so
			by the time I have visited their site to download I have effectively given that
			company all my personal information.</p>
			<p>
			Of course this does not guarantee that people will cease inputting dud data, it does
			decrease the chances though!</p>
			</li>
			<li>
			<a name="PhoneNumber"></a><h2>Do you know the right format to show your phone number?</h2>
			<p>
			Basically every phone number should have +country code because then when you are in another country you can dial anyone without knowing the special numbers to go international.
			</p>
			<p>		
			<img src="/ssw/Standards/Rules/Images/Bad.gif" alt="" width="16" height="16"/> Bad: (503) 629-4000
			</p>
			<p>
			<img src="/ssw/Standards/Rules/Images/Good.gif" alt="" width="16" height="16"/> Good: +1 (503) 629-4000 			
			</p>
			</li>
		</ol>
	</div>
	<br />
	<h2>
		Acknowledgements</h2>
	<p>
		<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>		
</asp:content>
