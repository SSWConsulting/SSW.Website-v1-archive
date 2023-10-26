<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft Internet Explorer Suggestions"  %>

 
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
<div class="TableOfContents">
	<h3>Internet Explorer Suggestions</h3>
	<ol>
		<li><a href="#LoadTimeinStatusBar">Help me know how long the page took to load</a></li>
		<li><a href="#ITEditUndoLastCloseWindow">Help me restore the last closed window</a></li>
		<li><a href="#UndoRedirect">Help me undo a Hotel broadband inflicted Redirect</a></li>
		<li><a href="#MultipleExternalTools">Help me manage External Tools easily</a></li>
		<li><a href="#AddonsURL">Help me decide if I need the add-ons functionality by giving me a URL and a description</a></li>
		<li><a href="#Windowsshell">Help me take advantage of great IE developments in Windows, not just IE</a></li>
		<li><a href="#TabbedBrowsing"><strike>Help me have fewer IE windows through tabbed browsing</strike></a><span style="font-weight: bold; color: red">* Fixed by Microsoft in IE7 *</span></li>
		<li><a href="#ITShowURLAddress">Help me see the full URL of a locally saved web pages</a></li>
		<li><a href="#WindowsUpdate">Help me navigate IE easily by making "Windows Update" consistent</a></li>
		<li><a href="#rssatom">Help me manage RSS feeds in IE like it's done in Firefox</a></li>
		<li><a href="#downloadfeatures">Help me Improved Download Management</a></li>
		<li><a href="#passwordstorage">Help me manage website passwords</a></li>
		<li><a href="#SeparateEngine"><strike>Help me update IE without updating Windows</strike></a><span style="font-weight: bold; color: red">* Fixed by Microsoft in IE7 *</span></li>
		<li><a href="#SelectMultipleText">Help me select multiple pieces of text</a></li>
		<li><a href="#ProxyServer">Help me see I set a proxy server and forgot about it</a></li>
		<li><a href="#PrintComputerName">Help me print the computer name when printing webpages</a></li>
		<li><a href="#DocumentSize">Help me see the file size of a page including and excluding images</a></li>
		<li><a href="#OptionsDisable">Help me work out if the option is enabled or disabled easily</a></li>
		<li><a href="#SpellChecking">Help me spell check</a></li>
		<li><a href="#SideBySide">Help me run IE6 and IE7 side by side on the same PC</a><span style="font-weight: bold; color: red">* Update: Nothing changed in IE7 unfortunately *</span></li>
		<li><a href="#AddCheckBox">Help me save my option on the download file dialog</a></li>
		<li><a href="#BetterBar">Help me easily search by URL History</a></li>
		<li><a href="#DeleteAll">Help me 'Delete All' temporary files for a specific domain</a></li>
		<li><a href="#ReopenPreviousBrowsing">Help me reopen a previous browsing sessions</a></li>
		<li><a href="#WorkOffline">Help me work offline</a></li>
		<li><a href="#MoreColumns">IE - Help me know the slow or noisy tab</a></li>
		<li><a href="#FunctionalityMissing">Location aware functionality not in IE</a></li>
		<li><a href="#IESupport">Canvas and SVG - when will IE support it?</a></li>
		<li><a href="#IE9RichTextCommField">IE9 and Rich Text Comment field</a></li>
		<li><a href="#IE9Request">IE9 request - if only I could open the last ones I closed</a></li>
		<li><a href="#MoreTabs">IE - Help me know the slow or noisy tab </a></li>
		<li><a href="#DragOfTabs">IE9 - Cool dragging of tabs (like Chrome) </a></li>
	</ol>
</div>
<div id="mainContent">
	<ol>
	<li>
		<h2><a name="LoadTimeinStatusBar"></a>
		Help me know how long the page took to load</h2>
		When IE finishes loading a page, the status bar simply displays a 
		'Done'. What is should display is 'Done. Load Time xx 
		seconds'. This will help both the developer and the typical user to 
		detect performance issues. This is a standard in <a href="../Rules/RulesToBetterWindowsForms.aspx#TimeToLoad">Rules to Better Windows Forms</a>.
	</li>
	<li><h2><a name="ITEditUndoLastCloseWindow"></a>Help me restore the last closed window</h2>
		<p>
			Quite often I accidentally close an IE window by mistake. It would be very handy to be able to reopen the 
			last closed window using an File-Re-open Last Window option. Not sure if this can happen, but when I 
			accidentally close an IE window by mistake, I would like to be able to do a Control+Z to undo it and have the window open again.
			I would like to reboot my PC and all my IE windows come back. Note: Firefox allows you reopen your tabs.
		</p>
		<dl class="image">
		<dt><img src="Images/IERestoreTabs.jpg" alt=""/></dt><dd>Figure: I want IE to have this "Recently Closed Tabs" feature</dd></dl>
	</li>
	<li><h2><a name="UndoRedirect"></a>
            Help me undo a hotel broadband inflicted Redirect</h2>
            <p>
                I am travelling in (say) NZ and accessing the Net through the Hotel's broadband access system. 
                If I have to reboot I save all my current open tabs when I close down Internet Explorer.
            </p>
            <p>
            <!--SSW Code Auditor - Ignore next line(HTML)-->
                After I reboot and reopen IE every page is redirected to the hotel broadband login homepage. Aaaaaaaaaahhhh... 
                Not happy. I won't be able to remember and I am not going through all my history for the last week.
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/IE_UR_1.jpg" alt="All pages have been redirect to hotel page" /></dt>
                <dd>
                    Figure: All pages have been redirect to hotel page.</dd>
            </dl>
        </li>
	<li>
		<h2><a name="MultipleExternalTools"></a>
		Help me manage External Tools easily</h2>
		<p>
		Crazy Browser and Firefox supports a custom list of external tools. Currently IE allows very limited support for this eg. addition to the basic list of programs for email, news, and editing. Currently, to edit the list of external tools you often need to use a registry hack. IE should allow you to set custom executables as 
		external tools in the Internet Options dialog. This would let me use lots of automated tools that are command-line driven.
		</p>
		
		<dl class="image">
		<dt><img alt="IExplore" src="Images/IExplore1.jpg" width="199" height="175"></dt><dd>Figure: Crazy Browser's list of external tools</dd></dl>
		<p>
			And please make it consistent with Visual Studio.NET Tools  External Tools
		<dl class="image">
		<dt><img src="Images/VS68.gif" alt="Visual Studio.NET" width="600" height="367" /></dt><dd>Figure: Visual Studio has an external tools option</dd></dl>
		<dl class="image">
		<dt><img src="Images/FirefoxExternalTools.jpg" alt="FireFox Add-ons"/></dt><dd>Figure: IE needs the same "Tools | Add-ons" ability as Firefox</dd></dl>
	</li>

	<li><h2><a name="AddonsURL"></a>Help me decide if I need the add-ons functionality by giving me a URL and a description</h2>
		<p>We suggest that there are a description and URL for each one to get more info about each one (to help the user decide if they need the add-ons functionality)<br />
		<dl class="image">
		<dt><img src="Images/ManageAddons.gif" width="567" height="532" /></dt><dd>Figure: Manage Add-ons Dialog in IE</dd></dl>	
		</p>
	</li>

	<li>
		<h2><a name="Windowsshell"></a>
		Help me take advantage of great IE developments in Windows, not just IE</h2>
		<p>The main purpose of Internet Explorer should be to render web pages. There is no point having a massive UI shell 
			it should be kept to a minimum, just like it is now. If individuals need more they can download an 
			add-on. 
			This gives consumers more choices and is the way to go. I could add on the Google Toolbar or the Altavista Toolbar 
			depending on my needs.
		</p>
		<p>
			Gestures are a very handy feature in some other browsers, such as 
			Opera and Firefox, where specific mouse movements can be associated 
			with actions. For example, holding down the button and moving the 
			mouse to the right navigates forward in your browser history.
		</p>
		<p>
			It is clear to see the great ideas in Firefox, wouldn't it be even better 
			if we could all use these innovations in our own Windows applications. Build 
			them into Windows not into IE. Seeing these changes in the next service pack 
			for windows would be great. 
		</p>
	</li>
	<li>
		<h2><a name="TabbedBrowsing"></a>
		<strike>Help me have fewer IE windows through tabbed browsing</strike> - <span style="color: #ff0000">* Fixed by Microsoft in IE7 *</span></h2>
		<p>
			It is quite obvious that tabs, such as those used in Mozilla 
			Firefox and Visual Studio .NET are here to stay. In today's world where people have more and more applications open, 
			tabs help to reduce clutter in the taskbar.</p>
	</li>
	
	<li>
		<h2><a name="ITShowURLAddress"></a>
		Help me see the full URL of a locally saved web pages</h2>
			<p>
				When you save a document from IE using the browser's 'Save As...' feature, when you look 
				at the HTML, you will see a comment showing the URL address it was when you saved it. This 
				way you can always know where that particular document came from without having to keep 
				the URLs somewhere else or manually editing the document. I want it to go a step further by adding an info bar.
 			</p>
 			<p>
 				Eg. When you open up a page from "C:\dataAdam\Test.htm", then there should be an info bar like this that says "This is a Saved Copy of the web page 
				<a href="/ssw/">www.ssw.com.au</a>... Click here to load the page".
 			</p>
		<dl class="image">
		<dt><img src="Images/address.gif" alt="Address" width="522" height="267" /></dt><dd>Figure: An info bar indicating the live source would be good</dd></dl>
	</li>
	<li>
		<h2><a name="WindowsUpdate"></a>
		Windows Update on the Tools menu is inconsistent with other Microsoft products</h2>
		<p>The menu location of "Window Update" on IE is inconsistent with other Microsoft products. On IE it is located on the Tools menu (Tools | Windows Update), but on other Microsoft products (including Visual Studio and Office XP) it is located on the Help menu (Help | Check for Updates). Please refer to our <a href="http://www.ssw.com.au/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx#ConsistentInformation" target="_blank">SSW Ruels to Better Windows Forms Applications</a>
		</p>
	</li>
	<li>
		<h2><a name="rssatom"></a>
		Help me manage RSS feeds in IE like it's done in Firefox</h2>
	
		<p>	There is no need for a full RSS reader in IE. However the Live 
			Bookmarks feature in Mozilla Firefox is simple and effective. It 
			creates a special folder in your bookmarks list and adds a separate 
			link inside that folder for each post in the RSS feed.
		</p>
		<p>If there is an .rss file then this icon shows  the .rss reference is pulled from the META tag
 eg. &lt;link id=&quot;RSSLink&quot; title=&quot;RSS&quot; type=&quot;application/rss+xml&quot; rel=&quot;alternate&quot; 
		href=&quot;http://blogs.ssw.com.au/andrewweaver/rss.aspx&quot;&gt;&lt;/link&gt;</p>
		<dl class="image">
		<dt><img src="Images/livebookmarks.jpg" alt="Live book marks" width="226" height="93" /></dt><dd>Figure: Live Bookmarks in Firefox</dd></dl>
	</li>
	<li>
		<h2><a name="downloadfeatures"></a>
		Improved Download Management</h2>
		<p>	
			It would be good if there were better download features similar to those found in other programs (eg. Firefox, Getright Lite etc). 
			Getright Lite allows the user to have more options of views to see a transfer queue, download later, throttle the download.
		</p>
		<p>
		    I should not need 3rd party software to be able to resume a download! The download manager in IE should be 
		    able to handle the situations like connection drop. 
		</p>
		<dl class="badImage">
		    <dt><img src="images/IEDownloadWindowXP.GIF" border="0" width="505" height="268" /></dt><dd>Figure: Bad Example - IE's download window is too simply, there is no way to resume an interrupted download session</dd></dl>
		<p>
		    We have also tested this on Vista/IE7+, however it's kind of sad, there is no improvement. Also, when I disconnect the Internet connection, the download window is just 
		    staying there, no indication of the status at all. 
		</p>
		<dl class="badImage">
		    <dt><img src="images/IEDownloadWindow.GIF" border="0" width="384" height="272" /></dt><dd>Figure: Bad Example - Vista/IE7's download window is simply hanging there when the connection drops</dd></dl>		
		<dl class="goodImage">
		    <dt><img src="images/GetRightDownload.GIF" border="0" width="373" height="215" /></dt><dd>Figure: Good Example - GetRight can help you to resume download and manage your sessions</dd></dl>
		<dl class="goodImage">
		    <dt><img src="images/FirefoxDownloadManager.GIF" border="0" width="507" height="250" /></dt><dd>Figure: Good Example - FireFox has a download manager that allows you to restart an interrupted download session</dd></dl>
		<p>
		    Note: Better download managers than the one that comes built into IE7
		</p>
		<ul>
		    <li><a href="/ssw/Redirect/GetRight.htm" class="external">GetRight</a></li>
		    <li><a href="/ssw/Redirect/FlashGet.htm" class="external">FlashGet</a></li>
		</ul>
		
	</li>
	<li>
		<h2><a name="passwordstorage"></a>
		Help me manage website passwords</h2>
		<p>It would be nice if there was a safe password storage facility (like Password Minder) / Auto Form Filler found in MSN Desktop.
I want to be able to view all the passwords I have stored for different sites, and be able to delete them.
		</p>
	</li>
	<li>
		<h2><a name="SeparateEngine"></a>
		<strike>Help me update IE without updating Windows</strike> - <span style="color: #ff0000">* Fixed by Microsoft in IE7 *</span></h2>
	
		<p>	Why havent Microsoft released IE 7? Because it is part of the OS. The only way they can do it 
			would be via new versions of Windows or Service Packs. I dont agree with that. I think it should 
			be separated from the OS for 2 reasons:</p>
		<ul>
			<li>We need updates at least once a year</li>
			<li>There could be a great reduction in security issues by separating this further from the OS and stopping buffer overruns.
				Firefox has 0 Critical Security Alerts since it came out  mostly because it runs on the XUL framework with abstracts 
				from the OS.</li>
		</ul>

		<p>
			Firefox	<a href="/ssw/Redirect/Secunia/MozillaFirefox.htm">http://secunia.com/product/4227/</a>
		</p>
		<dl class="image">
			<dt><img src="Images/firefoxalerts.jpg" alt="Firefox Alerts!" width="443" height="230" /></dt>
			<dd><strike>Figure: Firefox errors</strike></dd>
		</dl>
		<dl class="image">
			<dt><img src="Images/FireFox3Alert.png" alt="Firefox 3.x Alerts!" width="443" height="230" /></dt>
			<dd>Figure: Firefox 3.x errors</dd>
		</dl>
		<p> <a href="/ssw/Redirect/secunia/MicrosoftInternetExplorer.htm">http://secunia.com/product/11/</a>*NOT GOOD*</p>
		<dl class="image">
			<dt><img src="Images/iealerts.jpg" alt="IE 7 Alerts!" width="443" height="230" /></dt>
			<dd><strike>Figure: IE errors</strike></dd></dl>
		<dl class="image">
			<dt><img src="Images/IE7Alert.png" alt="IE 7 Alerts!" width="443" height="230" /></dt>
			<dd>Figure: IE7 errors</dd>
		</dl>
	</li>
			
	<li>
		<h2><a name="SelectMultipleText"></a>
		Help me select multiple pieces of text</h2>
		<p>Internet Explorer should have the ability to let us select multiple pieces of text.
		Sometimes we would like to select multiple pieces of text (usually links) and paste into a document.
		</p>
		<dl class="image">
			<dt><img src="Images/SelectMultipleText.gif" alt="Microsoft Word" width="247" height="47" /></dt><dd>Figure: We can select multiple pieces of text in Microsoft Word.</dd></dl>
	</li>
	
	<li>
		<h2><a name="ProxyServer"></a>
		Help me see I set a proxy server and forgot about it</h2>
		<p>When you get this</p>
		<dl class="image">
			<dt><img src="Images/IECannotFindServer.gif" alt="IE - Cannot find server" width="507" height="862" /></dt><dd>Figure: IE - Cannot find server.</dd></dl>
		<p>Sometimes it is purely because you added a proxy and you forgot.<br>
		This info should show on the "Cannot find server" page with a button to open the "Local Area Network (LAN) Settings" dialog.
		</p>
		<dl class="image">
			<dt><img src="Images/ProxyServer.gif" alt="LAN Settings - Proxy server is used" width="384" height="339" /></dt><dd>Figure: LAN Settings - Proxy server is used.</dd></dl>
	</li>		
	<li><h2><a name="PrintComputerName"></a>
		Help me print the computer name when printing webpages</h2>
		<p>We should have a '<b>&c</b>' to show the computer name.<br>
		<dl class="image">
			<dt><img src="Images/IEPageSetup.gif" alt="Page Setup" width="673" height="590" /></dt><dd>Figure: IE's page setup</dd></dl>
		<p>Read the same request for Microsoft Word on our <a href="Office.aspx#PrintComputerName">Microsoft Office Suggestions</a>.</p>				
	</li>
	
	<li>
	<h2><a name="DocumentSize"></a>
	Help me see the file size of a page including and excluding images</h2>
	<p>The Page Properties in Internet Explorer is useful to view file size information of a web page. The file size displayed on this window however can confuse a user as it is unclear whether this figure includes images attached to that page.</p>
	<p>I would also like to see the file size displayed on this window including images attached to that page.</p>
	<dl class="image">
	<dt><img src="Images/pageproperties.gif" width="395" height="502" /></dt><dd>Figure: Add a new property called Size including Images" under "Size"</dd></dl>
	</li>

	<li>
	<h2><a name="OptionsDisable"></a>
	Help me work out if the option is enabled or disabled easily</h2>
	<p>The disable ones are counter-intuitive. "Ticking" something normally means turning something on, not turning something off.</p>
	<dl class="image">
	<dt><img src="Images/IE7Options.gif" width="413" height="512" /></dt><dd>Figure: Internet Explorer 7 Options window</dd></dl>
	</li>

	<li><h2><a name="SpellChecking"></a>Help me spell check</h2>
	IE should be able to do spell checking like how Firefox does.
	<dl class="image">
	<dt><img src="Images/IE_SpellChecking.gif" width="528" height="264" /></dt><dd>Figure: spell checking in Firefox</dd></dl>
	</li>

	<li><h2><a name="SideBySide"></a>help me run IE6 and IE7 side by side on the same PC - <span style="color: #ff0000">* Update: Nothing changed in IE7 unfortunately *</span></h2>
	<p>Why does the IE team not design you to run IE6 and IE7 side by side on the same PC? <br />
	Seems a strange thing to not keep on shipping...	
	</p>
	</li>
	
    

    <li><h2><a name="AddCheckBox"></a>Help me save my option on the download file dialog</h2>
	    <p>
	    Does the below dialog annoy everyone?
	    </p>
	    <dl class="image">
	        <dt><img src="Images/IE_AddCheckBox.jpg" alt="Show Image but popup a download dialog" /></dt>
	        <dd>Figure: Want to show a image but popup a download dialog</dd>
	    </dl>	
	    <p>
	        Add check box: [x] Always do this action in future
	    </p>
	</li>
    <li>
        <h2><a name="BetterBar"></a>Help me easily search by URL History</h2>
        <p>
        How did I miss this, 2 words and I have found the URL?
        </p>
        <p>
        What a quick way to find a URL.
        </p>
        <dl class="image">
	        <dt><img src="Images/IE_1.jpg" alt="Good address bar should like this" /></dt>
	        <dd>Figure: IE need a better address bar like this.</dd>
	    </dl>	
    </li>
        
		<li><h2><a name="DeleteAll"></a>
            
                Help me 'Delete All' temporary files for a specific domain</h2>
            <p>
                I would like another option "Delete all for current domain  (microsoftsharepoint.com)".
            </p>
            <p>
                I don't want to "Delete All".
            </p>
            
            <dl class="image">
                <dt>
                    <img src="Images/IEOptions_DeleteAll.jpg" alt="Would like another Delete option" /></dt>
                <dd>Figure: Only "Delete All" option is available</dd>
            </dl>
        </li>
        
        <li><h2><a name="ReopenPreviousBrowsing"></a>
            
                Help me reopen a previous browsing sessions</h2>
        <p>Say you have 3 IE sessions and each one has 3 tabs. If I'm forced to shut down my machine, how do I reopen all those browser sessions?</p>
        <p>IE needs to extend the current <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"Reopen Last Browsing Session" feature <br/>
        to<br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"Reopen Previous Browsing Sessions" and include a sub-menu with a number of previous sessions. I would say 10 prior sessions would be a nice number.
        </p>
        <p>Note: The 3rd Party Addin for IE8 called IEPRO does not have this feature either.</p>
            <dl class="image">
                <dt>
                    <img src="Images/BrowsingSession_1.jpg" alt="Would like open more than the last browsing session" /></dt>
                <dd>Figure: I want to open more than the last browsing session</dd>
            </dl>
            <dl class="image">
                <dt>
                    <img src="Images/BrowsingSession_2.jpg" alt="After install the Google toolbar, the last browsing session will be lost" /></dt>
                <dd>Figure: This is the same feature as above but is lost when you install the Google toolbar</dd>
            </dl>
        <p>Firefox does this well, IE does not.</p>
           <dl class="image">
                <dt>
                    <img src="Images/ReopenClosedTabInFirefox.jpg" alt="You can easily reopen the tab you closed in Firefox. " /></dt>
                <dd>Figure: It is easy to open a recently closed tab in Firefox. Not in IE </dd>
            </dl>
          <p>Tip: Did you know it's actually possible in IE?<br />
             Answer: Use the shortcut Ctrl+Shift+T, but it's not in the menus. IE users are not mind readers.
          </p>
          <p>Add the same menu item "Open last closed browser tab", please.</p>
          <p>Tip: How to remember this shortcut?
             Answer: It is the equivalent of Ctrl+T, which inserts a tab. 
             To do the reverse, add "Shift" and it does the reverse</p>
        </li>
        <li>
           <h2><a name="WorkOffline"></a>Help me work offline</h2>
           <p>IE8 broke it.... Firefox works much better when offline</p>
           <dl class="image">
                <dt>
                    <img src="Images/IE8CannotWorkOffline.jpg" alt="IE8 can't work offline" /></dt>
            </dl>
        </li>
        <li>
          <h2><a name="MoreColumns"></a>IE - Help me know the slow or noisy tab</h2>
          <p>I hate not knowing which tab is playing sound and which one is making my PC slow.</p>
          <ul>
            Add 2 more columns
            <li>Sound playing now</li>
            <li>Processor%</li>
            <dl class="image">
                <dt>
                    <img src="Images/TwoMoreColumns.jpg" alt="We need two more columns to show the sound playing and the processor." /></dt>
                <dd>Figure: Add 2 more columns</dd>
            </dl>
          </ul>
        </li>
        <li>
          <h2><a name="FunctionalityMissing"></a>Location aware functionality not in IE</h2>
          <p>BTW damn shame that we seem to be missing this functionality in IE</p>
            <dl class="image">
              <dt>
                 <img src="Images/MissingFunctionality01.jpg" alt="Functionality missing 01" /></dt>
            </dl>
            <dl class="image">
              <dt>
                 <img src="Images/MissingFunctionality02.jpg" alt="Functionality missing 02" /></dt>
            </dl>
            <p>
            More at <br />
            <a href="http://www.youtube.com/watch?v=siOHh0uzcuY&feature=related">http://www.youtube.com/watch?v=siOHh0uzcuY&feature=related</a>
            </p>
        </li>
        <li>
           <h2><a name="IESupport"></a>Canvas and SVG - when will IE support it?</h2>
          <p>
           Clearly it is missing from Google's presentation<br />
           <a href="http://www.youtube.com/watch?v=siOHh0uzcuY&feature=related">http://www.youtube.com/watch?v=siOHh0uzcuY&feature=related</a>
          </p>
          <p>Anybody think this is hurting IE's market share?</p>
          <p>
          Anybody consider this is solved, since we now have:<br />
          &nbsp;&nbsp;&nbsp;'SVG Web' is a JavaScript library <br />
          &nbsp;&nbsp;&nbsp;at <a href="http://code.google.com/p/svgweb">http://code.google.com/p/svgweb </a><br />
          Or<br />
          'Google Chrome Frame', an open source plug-in that brings Google Chrome's JavaScript engine to Internet Explorer<br />
           At <a href="https://developers.google.com/chrome/chrome-frame/">https://developers.google.com/chrome/chrome-frame/</a> 
          </p>
            <dl class="image">
              <dt>
                 <img src="Images/HTML5Support.jpg" alt="HTML 5 Support " /></dt>
            </dl>
        </li>
        <li>
          <h2><a name="IE9RichTextCommField"></a>IE9 and Rich Text Comment field</h2>
          <p>For the last few years, I have been hoping that Scott Guthrie would give us a rich text field in Silverlight (and supported copying and pasting images on the clipboard)... Like Word gives us today.</p>
          <p>Would it be better for IE9 to give us an awesome Rich Text Control that does this?</p>
          <p>I am thinking about the use in CRM, TFS and SharePoint; however every blog out there could use it in their comments...<br /> 
             And everyone would want to use IE over the other browsers.</p>
          <p>
           Here is just one example of people kind of requesting this feature on codeplex:<br />
           <a href="http://codeplex.codeplex.com/workitem/4756">http://codeplex.codeplex.com/workitem/4756</a> <br />
           Allow formatting in comments<br />
          </p>
          <p>
           Here is an other<br />
           At <a href="http://msdn.microsoft.com/en-us/library/community/add/ff400237.aspx">http://msdn.microsoft.com/en-us/library/community/add/ff400237.aspx</a> 
           <dl class="image">
              <dt>
                 <img src="Images/CommunityContent.jpg" alt="Community Content " /></dt>
                <dd>Figure: This does not allow adding an image (ideally you want to paste from the clipboard)</dd>
            </dl>
          </p>
        </li>
        <li>
         <h2><a name="IE9Request">IE9 request - if only I could open the last ones I closed</a></h2>
          <dl class="image">
              <dt>
                 <img src="Images/ViewByLastClosed.jpg" alt="View by Last Closed " /></dt>
                <dd>Figure: Add "View by Last Closed"</dd>
            </dl>
        </li>
        <li>
         <h2><a name="MoreTabs">IE - Help me know the slow or noisy tab</a></h2>
         <p>I hate not knowing which tab is playing sound and which one is making my PC slow</p>
         <ul>
          Add 2 more columns
          <li>Sound playing now</li>
          <li>Processor %</li>
         </ul>
          <dl class="image">
              <dt>
                 <img src="Images/MoreColumns.jpg" alt="More columns" /></dt>
                <dd>Figure: Add 2 more columns</dd>
            </dl>
        </li>
        <li>
          <h2><a name="DragOfTabs">IE9 - Cool dragging of tabs (like Chrome)</a></h2>
          <p>I find it an awesome feature for organizing tab groups…. See the dotted lines<br/>
              (Of course work with the VS team so the feature is consistent).
          </p>
          <dl class="image">
              <dt>
                 <img src="Images/OrganizeIETabs.jpg" alt="Organize your IE tabs" /></dt>
                <dd>Figure: Organize your IE tab mess, by dragging out the tab… see the dotted lines</dd>
            </dl>
        </li>
    </ol>
</div>
<h2>Acknowledgements</h2>	
<p>
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=EF">Edward Forgacs</a><br>
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JH">Joe Hardy</a><br>
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TO">Tatham Oddie</a> 
</p> 
</asp:content>