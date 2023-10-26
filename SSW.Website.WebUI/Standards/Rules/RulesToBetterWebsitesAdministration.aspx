<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Websites - Development" %>

<%@ Import Namespace="System.Configuration" %>
<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>
        Do you agree with them all? Are we missing some? Email us your tips, thoughts or
        arguments. <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230546F253230426574746572253230576562736974657325323041646D696E697374726174696F6E')">
            Let us know</a> what you think.</p>
    <p>
        <img src="/ssw/Images/Validation/redstar.gif" alt="Important" />
        Indicates important rule</p>
    <div class="TableOfContents">
        <b>Rules to Better Websites - Development</b>
        <ol>
            <li><a href="#DesignedForGoogle">Is your website designed to improve your Google Ranking?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></li>
            <li><a href="#WebsiteStructure">Is your website structured?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></li>
            <li><a href="#MSExpressionWeb">Do all your employees know the quickest way to fix small
                web errors?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></li>
            <li><a href="#RightFiles">Warning: Do you edit right files?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></li>
            <li><a href="#linkbot">Who tells you about bad links - customers or an automated program?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></li>
            <li><a href="#LoadTest">Do you run load tests on your website?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></li>
            <li><a href="#ValidateSetup">Do you have a Validation Page for your web server?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></li>
            <li><a href="#EasyMaintain">Do you make your site so it is easy to maintain?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></li>
            <li><a href="#FTPSyncStraightAway">Do you synchronize files and folders using FTPSync
                or Beyond Compare?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></li>
            <li><a href="#StagingServer">Do you use a staging server?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></li>
            <li><a href="#querystring">Do you always use query strings?</a>
                <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></li>
            <li><a href="#WebPageSize">Do you restrict your web pages to a reasonable size?</a></li>
            <li><a href="#tracking">Do you use a stats program?</a></li>
            <li><a href="#WhereClause">Do you build criteria by using a where clause?</a></li>
            <li><a href="#AvoidMailTo">Do you avoid using mailto: on your website?</a></li>
            <li><a href="#404">Do you replace the 404 error with a useful error page?</a></li>
            <li><a href="#URL">Do you replace the 404 error with a useful error page? (Part 2: And
                avoid changing the URL)</a></li>
            <li><a href="#CustomizedErrorPage">Do you use a customized error page to handle an unhandled
                error occurs on your website?</a></li>
            <li><a href="#MaxLength">Do you always use the MaxLength property to the same as the
                length of the field in the table</a></li>
            <li><a href="#names">Do you name web pages to be consistent with database tables?</a></li>
            <li><a href="#UseaStyleSheetforFormatting">Do you use a style sheet for all your formatting?</a></li>
            <li><a href="#UseHeadingTags">Do you make sure every page has a heading tag - H1, H2
                or H3?</a></li>
            <li><a href="#UseDLTag">Do you use &lt;DL&gt; tag for captions?</a></li>
            <li><a href="#AvoidFONTTags">Do you avoid FONT tags throughout your site?</a></li>
            <li><a href="#NoASPTagsInPlainHTML">Do you avoid using ASP/ASP.NET tags in plain HTML?</a></li>
            <li><a href="#DisplayCode">Do you know the best way to display code on your website?</a></li>
            <li><a href="#ValidateHtml">Do you check if your page contains malformed Html?</a></li>
            <li><a href="#DefaultPage">Do you always have a default/index page?</a></li>
            <li><a href="#AnchorCaseSensitive">Do you know that Anchor's are case sensitive?</a></li>
            <li><a href="#AnchorSpaces">Do you know that Anchor's cannot contain spaces?</a></li>
            <li><a href="#AnchorContent">Do you know that Anchor's cannot contain text or other tags?</a></li>
            <li><a href="#AnchorName">Do you know that Anchor Name must not start with a #?</a></li>
            <li><a href="#NoUNC">Do you avoid using UNCs in HREFs?</a></li>
            <li><a href="#NoExternalCSS">Do you make sure that your page can be saved offline?</a></li>
            <li><a href="#NoCodeBaseNorClassID">Do you use the &quot;type&quot; attribute in &lt;object&gt;
                tags?</a></li>
            <li><a href="#Debug">Do you make sure you remove the debug page attribute?</a></li>
            <li><a href="#HTMLValidate">Do you use Markup Validation Service to check your HTML
                and XHTML code?</a></li>
            <li><a href="#CSSValidate">Do you use CSS Validation Service to check your CSS Style
                Sheet?</a></li>
            <li><a href="#EmptyQuotes">Do you close quotations of all your html attributes?</a></li>
            <li><a href="#EmptyTags">Do you close your html tags?</a></li>
            <li><a href="#FunnyCharacters">Do you check for funny characters (including apostrophes)?</a></li>
            <li><a href="#GenericExHandler">Do you have generic exception handler in your Global.asax?</a></li>
            <li><a href="#2ExceptionForGenericExHandle">Do you understand that there are 2 other
                types of errors</a></li>
            <li><a href="#Precompilation">Do you precompile your ASP.NET 1.1 and 2.0+ sites?</a></li>
            <li><a href="#WAP">Do you avoid using Web Site Projects?</a></li>
            <li><a href="#AJAX">Do you use AJAX on your web site?</a></li>
            <li><a href="#WebsiteRunning">Do you check if your website is running?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="DesignedForGoogle"></a>Is your website designed to improve your Google
                    Ranking?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></h2>
                <p>
                    Google is by a country mile the most popular search engine in the world. It's popular
                    because it seems to rank pages so accurately and quickly time and time again. The
                    secret to its success is its top secret PageRank Algorithm. Google developed its
                    page ranking system in an effort to increase the quality of search results and has
                    left all of its competitors for dead. As a result search engine optimization (SEO)
                    gurus are always looking to find new ways to increase their Google rankings. As
                    we all know, a website is a pretty nifty thing to have for a myriad of different
                    reasons. But the truth is that it's worth is derived from the people that surf it,
                    and if no one is surfing it, then it becomes useless. So who's the biggest website
                    referrer? The answer is Google in almost every case.</p>
                <p>
                    So design your website with this in mind. In the eyes of a search engines, there
                    are good and bad ways that you can design your website. Here's a list of <a href="RulesToBetterGoogleRankings.aspx">
                        suggestions to improve your Google ranking and other search engine optimization
                        tips</a></p>
            </li>
            <li>
                <h2>
                    <a name="WebsiteStructure"></a>Is your website structured?<img src="/ssw/Images/Validation/redstar.gif"
                        alt="Important" /></h2>
                <p>
                    I think the following structure allows you to keep your website clean of clutter:
                </p>
                <ul>
                    <li>/Images - for all static images</li>
                    <li>/Images/Dynamic - for all images used in dynamically generated pages
                        <br />
                        NOTE: the reason we use two images directories is so we can exclude images used
                        by dynamically generated pages from our link checking program. This is so we can
                        work out the TRUE orphan images (and believe me, like coat-hangers they multiply
                        quickly ...)</li>
                    <li>/Includes - for all include files</li>
                    <li>/Bin - for mdb's, dll's and udl's</li>
                    <li>/Shop - for the shopping basket and related pages</li>
                    <!--SSW Code Auditor - Ignore next line(HTML)-->
                    <li>/Clients - for the client login page and related pages</li>
                    <li>/Reports - for any SQL Server Reporting Services</li>
                    <li>/zsMaintenance - for the administration section to modify web site settings</li>
                    <li>/zsValidate - for all web server status and validation checks</li>
                </ul>
                <p>
                    The root directory should be clean, having only:
                </p>
                <ul>
                    <li>default (.aspx, .asp, .htm)</li>
                    <li>global.asa</li>
                    <li>application.sln<br>
                        &nbsp;</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="MSExpressionWeb"></a>Do all your employees know the quickest way to fix
                    small web errors?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></h2>
                <p>
                    Firstly, I am appalled at how many companies I see that do NOT use a GUI for editing
                    HTML pages. They use some text editor to get their HTML perfect. In addition the
                    Mary from Marketing doesn't change intranet pages herself. She sends text changes
                    she wants to the control freaks that run the web site.</p>
                <p>
                    Imagine this scenario... Mary notices a small error on a page in her intranet <a
                        href="/ssw/Redirect/IntranetMarketingPressReleaseStandard.htm">http://Intranet/Marketing/PressReleaseStandard.aspx</a>
                    She is a good employee... She fires up an email and reports the spelling error to
                    <a href="javascript:var e1='%73s%77.%63%6fm&#046;&#097;&#117;',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='%69%6e&#102;%6f';var e0=e2+e3+'@'+e1;(window.location?window.location.replace(e0):document.write(e0));"
                        title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">
                        info@s*w.com.au</a>. As she sends it she says to herself &quot;That it took
                    more time to report the error than it would have taken me to fix it&quot;.
                </p>
                <p>
                    Well this should NEVER be the case if you have IE6 or IE7 and Microsoft Expression
                    Web installed. IE allows the current page to be modified by loading up the source
                    file in Microsoft Expression Web. That means that making quick changes to your website
                    are truly just a few clicks away. Microsoft Expression Web will take a web address
                    like http://intranet/marketing/PressReleaseStandard.aspx and opens the actual source
                    code file (not the HTML output), if the website is a local network shared directory.</p>
                <p>
                    IMPORTANT: When using this function to edit pages always make sure the page is being
                    viewed from an intranet server, eg 'bee'. If the page is being viewed on an external
                    server, (eg. http://www.ssw.com.au), then Microsoft Expression Web will have problems
                    capturing the server side script. This missing server side script will automatically
                    be substituted for HTML, which will create errors when trying to save. Potentially
                    loosing all the updated data.<br>
                    <br>
                    Note: To be able to edit pages through Microsoft Expression Web the file extension
                    must be associated with Microsoft Expression Web. The steps to do this are:</p>
                <ol>
                    <li>Create a new text file</li>
                    <li>Change the extension from .txt to .aspx or .htm (depending if your website is in
                        .NET)</li>
                    <li>Right click and choose &quot;Open With&quot; and &quot;Choose Program...&quot;</li>
                    <li>Select &quot;Microsoft Expression Web&quot; and tick &quot;Always use the selected
                        program to open this kind of file&quot;</li>
                    <li>Click OK</li>
                </ol>
                <dl class="image">
                    <dt>
                        <img src="Images/DefaultMSExpressionWeb.gif" alt="Default Microsoft Expression Web" /></dt>
                    <dd>
                        Figure: First you need to' make Microsoft Expression Web the default for .aspx files</dd>
                </dl>
                <p>
                    Now you need to add the edit icon to your IE6 or IE7 toolbar. Once this has been
                    added those small changes that you need to make to your website should only be one
                    click away.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/MSExpressionWeb.gif" alt="Microsoft Expression Web" /></dt>
                    <dd>
                        Figure: Now you can open the web page with Microsoft Expression Web automatically</dd>
                </dl>
                <br />
                <p>
                    <b>NOTE to Administrators:</b> If your employees are only able to edit pages in
                    their rendered form (HTML file that is rendered from the original file), your FrontPage
                    Server Extensions may have become corrupt. To resolve this problem remove and reinstall
                    FrontPage Server Extensions from IIS using Windows Setup in Add/Remove Programs.
                    After completing this it is important to configure and extend the FrontPage Server
                    Extensions on any web that is required to be accessed through Microsoft Expression
                    Web.&nbsp; You may also need to Recalculate your web and Tighten Security by running
                    the Detect and Repair option on the Check Server Health administration page.<br />
                    <br />
                    <dl class="image">
                        <dt>
                            <img src="Images/FPSE_Error.gif" alt="Installing FPSE Error" /></dt>
                        <dd>
                            Figure: Error when installing FrontPage Server Extension</dd><br />
                    </dl>
                    You might get this error when you install FrontPage Server Extension. If so, then
                    below is the solution:
                    <pre>
1. run regedit.exe
2. go to KEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\
3. delete pendingfilerenameoperations
                    </pre>
                    <br />
                    **<font color="red"><b>WARNING</b></font>: You need to install the FrontPage Server
                    Extension on the web server, not on the client **<br />
                    **<font color="red"><b>WARNING</b></font>: You should not install FrontPage Server
                    Extension on a Reporting Services box, because there will be potential conflicts**<br />
                    **<font color="red"><b>WARNING</b></font>: You first need to check out the page
                    by using MS Visual Studio**<br />
                    <br />
            </li>
            <li>
                <h2>
                    <a name="RightFiles"></a>Warning: Do you edit right files?
                </h2>
                <p>
                    If you use Microsoft Expression Web (was FrontPage) as your editor, and you copy
                    and paste formatted text (especially from Microsoft Word) into Microsoft Expression
                    Web, it will paste in unwanted tags as it intelligently (joke) decides to keep the
                    formatting. If your site uses CSS for formatting this is going to cause problems.
                    Therefore always paste in unformatted text.</p>
                <dl class="goodCode">
                    <img src="Images/FPSE_Correct_Output.gif" alt="Original aspx file" />
                    <dd>
                        Figure: Original .aspx file with one click editing
                    </dd>
                </dl>
                <dl class="badCode">
                    <img src="Images/FPSE_Incorrect_Output.gif" alt="Rendered HTML file" />
                    <dd>
                        Figure: Rendered HTML file from original .aspx file
                    </dd>
                </dl>
                <br />
                <br />
            </li>
            <li>
                <h2>
                    <a name="linkbot"></a>Who tells you about bad links - customers or an automated
                    program?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></h2>
                <p>
                    Many webmasters work with sites that have grown large over time and have consequently
                    become difficult to maintain. They fix problems as customer report bugs. A better
                    approach is to use a utility that will analyze your whole site and report any problems.
                    <a href="/ssw/Standards/DeveloperInternet/HowtoFixBrokenLinks.aspx">Details</a></p>
            </li>
            <li>
                <h2>
                    <a name="LoadTest"></a>Do you run load tests on your website?</h2>
                <p>
                    Once you have a website up and running, it is important to make sure that it keeps
                    running under load. Local testing of the website will not always reveal the latent
                    problems in the website when it is subjected to thousands of users. Typical issues
                    that result from inadequate load testing are:
                    <ul>
                        <li>503 Service Is Temporarily Unavailable</li>
                        <li>Very slow load times</li>
                        <li>Application Crashes due to:
                            <ul>
                                <li>Insufficient resources - so application pools are recycled</li>
                                <li>Too many concurrent users causing race conditions</li>
                                <li>Too many users trying to connect to the database</li>
                            </ul>
                        </li>
                    </ul>
                </p>
                <p>
                    Load Tests help you <b>avoid these issues</b> by prempting them before you go live.
                    Some issues might be resolved by getting a better web server, while others might
                    require code changes and optimizations.</p>
                <p>
                    In <b>Visual Studio 2005 - Software Testers Edition</b>, there is a built in Test
                    Project to conduct load testing.</p>
                <p>
                    <ol>
                        <li>From the <b>Test</b> menu select <b>New Test</b></li>
                        <li>Select <b>Web Test</b> and <b>Create a new Test Project</b><br />
                            <img src="Images/add_new_test.gif" alt="Add a new Web Test" /></li>
                        <li>Name the Test Project &lt;Namespace&gt;.WebUI.Tests</li>
                        <li>An Internet Explorer window will open with a recorder toolbar. Navigate to the web
                            pages that need to be Load Tested<br />
                            <img src="Images/record_website.gif" alt="Record the pages you want to Load Test" /></li>
                        <li>Click Stop when you are finished recording the pages to be tested</li>
                        <li>Click the <b>Run</b> button to make sure the tests run<br />
                            <img src="Images/run_webtest.gif" alt="Test our recorded test" /></li>
                        <li>Add a new Load Test<br />
                            <img src="Images/add_load_test.gif" alt="Add Load Test" /></li>
                        <li>Follow the <b>Load Test Wizard</b>:
                            <ul>
                                <li><b>Load Pattern</b> - Define the number of users hitting the site</li>
                                <li><b>Test Mix</b> - Select the web test you recorded earlier</li>
                                <li><b>Browser Mix</b> - Specify different types of browsers (leave as default)</li>
                                <li><b>Network Mix</b> - Specify connection speeds of users (leave as default)</li>
                            </ul>
                        </li>
                        <li>Click <b>Finish</b></li>
                        <li>Click <b>Run</b> to run the load test<br />
                            <img src="Images/run_load_test.gif" alt="Run Load Test" /></li>
                        <li>This will kick off the load test and show a live graph of user load, requests per
                            second and response time</li>
                    </ol>
                </p>
            </li>
            <li>
                <h2>
                    <a name="ValidateSetup"></a>Do you have a Validation Page for your web server?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></h2>
                <p>
                    How can you know that all components are working correctly on your site? We believe
                    it is vitally important to have a 'Validate Setup' page. This page will check the
                    server and make sure:</p>
                <ul>
                    <li>all the dlls are present (and registered for COM ones)</li>
                    <li>all the web services are working</li>
                    <li>all the databases are alive, etc.</li>
                </ul>
                <p>
                    You would be surprised how many dependencies a large webpage can have.The advantage
                    of this page is if you ever need to redeploy your application on another server
                    or you have some pages that are just not working as planned you can load up this
                    page and get a quick diagnostics of your website.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/ValidationTests.jpg" alt="Validation Tests"></dt>
                    <dd>
                        Figure: Automatically validating our website</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/ValidateSetup.jpg" alt="Validate Setup"></dt>
                    <dd>
                        Figure: One of the components on this web site is down</dd>
                </dl>
                <p>
                    See <a href="/ssw/Standards/Rules/RulesToBetterUnitTests.aspx#zsValidatePage" class="Internal">
                        SSW Rules - Do you have a zsValidate page to test your website dependencies?
                    </a>
                </p>
            </li>
            <li><a name="EasyMaintain"></a>
                <h2>
                    Do you make your site so it is easy to maintain?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></h2>
                <p>
                    If you have database driven pages on your website, you need a way of updating the
                    data quickly and easily. Each page should have an 'Edit' link at the bottom, which
                    is only visible when the site is running internally, that takes you directly to
                    the page for editing the content on that page.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/MaintenanceDemo.gif" alt="Maintenance Demo" /></dt>
                    <dd>
                        Figure: Embedded links allow SSW Employees to maintain testimonial entries easily</dd>
                </dl>
                <p>
                    We also have a section of our website for automatically validating the web server
                    settings, checking for broken links, validating data, setting configuration options
                    and for checking that all necessary COM components and other dependencies are installed
                    and working. <a href="#ValidateSetup">Details</a></p>
            </li>
            <li>
                <h2>
                    <a name="FTPSyncStraightAway"></a>Do you synchronize files and folders using FTPSync
                    or Beyond Compare?<img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></h2>
                <p>
                    An ftp site is just a copy of what you've got locally. Using a "dumb" ftp program
                    allows you to update files you remember have changed, but that's not very efficient.
                    <a href="../DeveloperGeneral/WebdevelopmentTools.aspx#FtpSync">FTP Sync</a> and
                    <a href="../DeveloperGeneral/WebdevelopmentTools.aspx#BeyondCompare">Beyond Compare</a>
                    are ftp programs that compare all the files on the web server to a directory on
                    a local machine. Once FTPSync or Beyond Compare has completed an analysis of the
                    files on the web server, it will compare things like date updated and file size
                    and report which file is newer and what files will be overridden by uploading or
                    downloading. We ONLY make changes on the local machine, so we can always upload
                    files from the local machine to the web server.</p>
                <p>
                    This process allows you to keep a local copy of your live website on you machine
                    - a great backup as a side effect.</p>
                <p>
                    Whenever you make changes on the web-site, as soon as they are approved they should
                    be uploaded. You should tick the box that says 'sync sub folders', but when you
                    click sync be careful to check any files that may be marked for a reverse sync.
                    You should reverse the direction on these files. For most general editing tasks,
                    changes should be uploaded as soon as they are done. Don't leave it until the end
                    of the day. You won't be able to remember what pages you've changed. And when you
                    upload a file, you should synch EVERY file in that directory. It's highly likely
                    that un-synch'ed files have been changed by someone, and forgotten to be uploaded.
                    And make sure that deleted folders in local server are deleted in remote server.</p>
                If you are working on some files that you do not want synced then put a <b><i>_DoNotSyncFilesInThisFolder_XX.txt</i></b>
                file in the folder. (Replace XX with your initials.) So if you see files that are
                to be synced (and you don't see this file) then find out who did it and tell them
                to sync. The reason you have this txt file is so that people don't keep telling
                the web master about the unsynced files.
                <p>
                    NOTE: Immediately before deployment of an ASP.NET 2.0 application with FTPSync,
                    you should ensure that the application compiles - otherwise it will not work correctly
                    on the destination server (even though it still works on the development server).</p>
            </li>
            <li>
                <h2>
                    <a name="StagingServer"></a>Do you use a staging server?<img src="/ssw/Images/Validation/redstar.gif"
                        alt="Important" /></h2>
                <p>
                    After you've done your work locally using TFS, upload the site to a staging server
                    and send an internal "Test Please" pointing to it. At SSW we use http://mockup.us.ssw.com.au/.</p>
                <p>
                    Client then can review the site on this URL too. Once approved, simply sync the
                    website to the live server.</p>
            </li>
            <li>
                <h2>
                    <a name="querystring"></a>Do you always use query strings?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></h2>
                <p>
                    When you build a web application, any dynamic page you think a user may wish to
                    bookmark directly should be controlled through querystring values rather than form
                    values. In other words, search mechanisms should use the HTTP GET Request and Querystring
                    values, rather than a POST with Form values. This allows:</p>
                <ul>
                    <li>Bookmarking of the pages
                        <li>Gives the user to the ability to change the querystring values in the address bar,
                            rather than having to go back to the input form.</li>
                </ul>
                <dl class="image">
                    <dt>
                        <img src="Images/URL.gif" alt="URL" class="thinBorderBlack" /><br />
                        <img src="Images/GoogleTextBox.gif" alt="Google Text box" class="thinBorderBlack" /></dt>
                    <dd>
                        Figure: The URL should always have all the parameters the user enters. Here Google
                        is a good example.</dd>
                </dl>
                <p>
                    You may hear that query strings are bad and they leave you wide open to SQL Injection
                    Attacks (especially when you use SQL statements in the URL). I don't subscribe to
                    the security issues being the determining factor... if I am determined enough, I
                    can write a little application to send POST data to the webpage instead of in the
                    query string. Both methods are open to SQL injection and invalid parameters, so
                    you need to code to prevent that either way.</p>
                <p>
                    The bottom line is that if you are not giving appropriate parameters in the query
                    string then you are reducing functionality.</p>
                <p>
                    Note: We all agree bookmarks are useful - it's the same for query strings.</p>
            </li>
            <li>
                <h2>
                    <a name="WebPageSize"></a>Do you restrict your web pages to a reasonable size?</h2>
                <p>
                    Web page size is an important factor. You want your page to look really good and
                    have lots of nice looking images and large detailed backgrounds BUT this all comes
                    at a cost. Not everyone is on broad band Internet and not everyone is prepared to
                    wait for a large page to load. On average you should not have a web page that is
                    over 101k in size. (This includes everything that a user has to load on that page.
                    i.e. images, html, etc.)</p>
                <p>
                    It's also good practice to keep your pages less than 101k because that is the size
                    of the Google cache. See our <a href="RulesToBetterGoogleRankings.aspx#101k">Rules To
                        Better Google Rankings</a> for more information.</p>
                <p>
                    Using Flash is a great way of having a visually intense web sites small enough for
                    people to download. But if you wish to go down this alley, you must have an alternative
                    site because not everyone can see flash on their browser. In addition Google doesn't
                    index flash websites. See our <a href="RulesToBetterGoogleRankings.aspx#Flash">Rules
                        To Better Google Rankings</a></p>
                <p>
                    Only have large file sizes when you know that users will be expecting to download
                    a large file (for example, product documentation)</p>
            </li>
            <li>
                <h2>
                    <a name="tracking"></a>Do you use a stats program?</h2>
                <p>
                    Site Tracking is an important part of any active web page. You need to be able to
                    see what your visitors are viewing, what they aren't, what they spend large amount's
                    of time on, what pages are causing errors, what pages are directing visitors to
                    you, etc. All this information help you better structure your site to what your
                    visitors like. It also allows you to compare site traffic from one month to another.</p>
                <p>
                    I think that the following reports are most useful:
                </p>
                <ul>
                    <li>Which are your most popular pages</li>
                    <li>Which sites are referring the most hits to you</li>
                    <li>Which key words are bring users to your site</li>
                    <li>If you have downloads, which are the most popular</li>
                </ul>
                <p>
                    If you're looking to decide which web stats program to use, we've tested a few so
                    check out the <a href="../DeveloperGeneral/WebdevelopmentTools.aspx#LiveStats">web stats
                        programs we recommend</a>. Depending on your stats software, you can even use
                    them to get the web reports emailed to you on a regular basis.</p>
            </li>
            <li>
                <h2>
                    <a name="WhereClause"></a>Do you build criteria by using a where clause?</h2>
                <p>
                    It is very common to come up with ways to filter data.
                    <br />
                    As an example you could do it like this.</p>
                <pre>ClientSearch.aspx?Client.ClientID='ssw'&amp;Client.CoName='S'</pre>
                <b>Figure: Filtering Data</b>
                <p>
                    >This allows you to easily extract fields and values, but it only works for the
                    fields you hardcode. You could get around it by writing complex code to build a
                    sql query, or ignore the ones that don't match.</p>
                <p>
                    But this gives exact matches. e.g.
                    <pre>ClientID=ssw</pre>
                    What if you want to give the ability to allow the user to be able to use a like
                    e.g.
                    <pre>ClientID like '%ssw%'</pre>
                    Well then I could add something like
                    <pre>ClientSearch.aspx?Client.ClientID=ssw&amp;Client.ClientID.SearchMode=OR</pre>
                </p>
                <p>
                    But why do this when a WHERE clause in SQL can do all this
                    <br />
                    e.g.</p>
                <pre>ClientSearch.aspx?Where=Client.ClientID%20like%20'%ssw%'</pre>
                <b>Figure: Similar matches</b>
                <p>
                    Try this - <a href="/timeproonline/ClientSearch.aspx?Where=Client.ClientID%20like%20'%ssw%'">
                        ClientSearch.aspx?Where=Client.ClientID%20like%20'%ssw%'</a></p>
                <p>
                    The Pros for do this are:
                </p>
                <ul>
                    <li>Quicker development time.</li>
                    <li>SQL is very powerful - say I want to JOIN another table in the WHERE, I could use
                        an IN statement and do a sub query - no extra code by the developer.</li>
                    <li>Matches HTML syntax (named value pair) and as a developer you can get it easy. e.g.
                        <pre>Request.QueryString("Where")</pre>
                    </li>
                </ul>
                <p>
                    The CONS:
                </p>
                <ul>
                    <li>It shows the database schema to the users - there maybe some security concerns by
                        allowing users to see the structure of the database.</li>
                    <li>Security - the where clause could show data we don't want users to see.</li>
                    <li>Got to add a little extra code to avoid <a href="/ssw/KB/KB.asp?KBID=Q995992">sql
                        injection</a>.</li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="AvoidMailTo"></a>Do you avoid using mailto: on your website?</h2>
                <p>
                    Don't ever display valid individual email addresses or mailto:'s on a web site.
                    Nasty people on the web have created "Email Harvesting" tools. These programs search
                    public areas on the Internet to compile, capture, or otherwise "harvest" lists of
                    email addresses from web pages, newsgroups and chat rooms. Any email address that
                    is spelt out can be captured and therefore gets attacked with spam.</p>
                <p>
                    The best way to avoid it is not to display valid individual email addresses in text
                    format (especially in the form of "mailto:") on your website.
                    <br />
                    <br />
                    <b>Your Options:</b>
                </p>
                <ul type="circle">
                    <li>
                        <p>
                            <b>Bad way</b>: using email address in text format</p>
                        <pre>e.g. <a href="javascript:sendEmail('6D61696C746F3A46697273746E616D655375726E616D65407373772E636F6D2E6175')">
                            FirstnameSurname@s*w.com.au</a></pre>
                        <dl class="badCode">
                            <dd>
                                <b>Figure: Bad way</b> - normal email address in text format</dd>
                        </dl>
                    </li>
                    <li>
                        <p>
                            <b>OK way</b>: use image</p>
                        <pre>e.g. FirstnameSurname
<img src="/ssw/Images/sswLogo/ssw_com_au_NoShadow.gif" class="email" alt="email" /></pre>
                        <dl class="badCode">
                            <dd>
                                <b>Figure: Just an OK way </b>- using an image &#8211;not friendly for a user as
                                they can&#8217;t just click the link to create a new email</dd>
                        </dl>
                    </li>
                    <li>
                        <p>
                            <b>Old way</b>: use "*"or other symbol in the domain</p>
                        <pre>
 e.g. <a href="mailto:FirstnameSurname@s*w.com.au">FirstnameSurname@s*w.com.au</a></pre>
                        <dl class="badCode">
                            <dd>
                                <b>Figure: Just an OK way</b> &#8211; users can click a link to create a new email
                                &#8211; however many don&#8217;t understand the instructions to remove the *</dd>
                        </dl>
                        <p>
                            Note: Please change "*" in "s*w" to a "s".</p>
                        <p>
                            This way works well. Unfortunately, it is not understood by everyone and have had
                            problems in the past.
                        </p>
                        <br />
                    </li>
                    <li>
                        <p>
                            <b>Best way</b>: use JavaScript</p>
                        <p>
                            The best way is a combination of 'good way' and 'better way'.</p>
                        <pre>
 e.g. <a href="javascript:sendEmail('46697273746E616D655375726E616D65407373772E636F6D2E6175')"
     onmouseover="javascript:displayStatus('46697273746E616D655375726E616D65407373772E636F6D2E6175');return true;"
     onmouseout="javascript:clearStatus(); return true;">FirstnameSurname@s*w.com.au</a>
                        </pre>
                        <dl class="goodCode">
                            <dd>
                                <b>Figure: Best way</b> - users can click a link and spam harvesters cannot read
                                the email (see no email in the status bar)
                            </dd>
                        </dl>
                        <br />
                    </li>
                    <li><b>How do you apply this encryption technique:</b>
                        <br />
                        <br />
                    </li>
                    <ol>
                        <li>Store email addresses in the web.config file<br />
                            <pre>&lt;configuration&gt;
   &lt;appSettings&gt;
      &lt;add key="CC" value="Adam Cogan (adamcogan@s*w.com.au)"&gt;</pre>
                            <dl class="goodCode">
                                <dd>
                                    <b>Figure: Add to Web.Config</b>
                                </dd>
                            </dl>
                            <br />
                        </li>
                        <li>Encode them on the server using the BitConverter class<br />
                            <pre>Dim email As String = ConfigurationSettings.AppSettings("SampleEncodedEmailAddress")
Application("SampleEncodedEmailAddress") = BitConverter.ToString( _
ASCIIEncoding.ASCII.GetBytes(email)).Replace("-", "")</pre>
                            <dl class="goodCode">
                                <dd>
                                    <b>Figure: add to a class and then call it to encode the email address </b>
                                </dd>
                            </dl>
                            <br />
                        </li>
                        <li>Decode on the client with a JavaScript function in the JavaScript<br />
                            <pre>&lt;a id="linkContact" href="javascript:sendEmail('44617669644073616D706C652E636F6D2E6175')"&gt;Contact
Adam&lt;/a&gt;</pre>
                            <dl class="goodCode">
                                <dd>
                                    <b>Figure: Add to each .aspx page that shows an email </b>
                                </dd>
                            </dl>
                            <br />
                        </li>
                    </ol>
                    <li>
                        <p>
                            <b>See the sample in action</b></p>
                        <a href="/ssw/Employees/employeesprofile.aspx?EmpID=AC">Here is an example of the email
                            technique to avoid spammers.</a><br />
                        <br />
                    </li>
                    <!-- Removed by AGT, 7 Dec 2007
                    <li><b>Exception</b>: generic company email address
                        <p>
                            e.g.<a href="javascript:var e1='%73s%77.%63%6fm&#046;&#097;&#117;',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='%69%6e&#102;%6f';var e0=e2+e3+'@'+e1;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">info@s*w.com.au</a>
                        </p>
                        <p>
                            However, you can still provide a mailto: to a generic company email address (like
                            <a href="mailto:info@ssw.com.au?Subject=Generic Email Address">info@ssw.com.au</a>).
                            This means people find it easy to email the company but only one person (the one
                            managing info) has to deal with spam. If you search on the site we developed you'll
                            only ever find an info@. We avoid other aliases such webmaster@, sales@ which point
                            the same mail box otherwise you just get all the same spam x 3.</p>
                    </li>
                    -->
                </ul>
                <p>
                    <span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code
                        Auditor</a> to check for this rule.</span>
                </p>
            </li>
            <li>
                <h2>
                    <a name="404"></a>Do you replace the 404 error with a useful error page?</h2>
                <p>
                    Error page, you say? You worked hard to make sure my site has no errors!! Well,
                    surfers don't always type URLs accurately. No website is immune to such errors.
                </p>
                <p>
                    A well-designed custom error page encourages surfers to remain in your site and
                    help them to the right page. Although it's possible to redirect error codes straight
                    to your home page, that doesn't tell visitors what's going on. It's more user-friendly
                    to explain that there was a problem and provide some alternatives. Supply a link
                    to your home page or other links, or offer your site's search function if you have
                    one.
                </p>
                <p>
                    To see an example of our error page click this link <a href="/SSW/SSWCustomError404.html">
                        Error Page</a>
                </p>
                <dl class="image">
                    <pre>&lt;customErrors mode="Off"&gt;&lt;/customErrors&gt;</pre>
                    <dd>
                        <img border="0" src="/ssw/Standards/Rules/Images/Bad.gif" alt="Bad" width="16" height="16" />Figure:
                        This is the default code in the web.config (Bad)</dd>
                </dl>
                <dl class="image">
                    <pre>&lt;customErrors mode="RemoteOnly" defaultRedirect="/ssw/ErrorPage.aspx"&gt;
    &lt;error statusCode="404" redirect="/ssw/SSWCustomError404.aspx"&gt;
&lt;/customErrors&gt;</pre>
                    <dd>
                        <img border="0" src="/ssw/Standards/Rules/Images/Good.gif" alt="Good" width="16"
                            height="16" />Figure: this is the current code in the web.config of the SSW
                        Site (Good)</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="URL"></a>Do you replace the 404 error with a useful error page? (Part 2:
                    And avoid changing the URL)</h2>
                <p>
                    When you request a URL of a file that doesn't exist, you will get an error message.
                    You have to consider that this error message differs depending on which kind of
                    server you are running.
                </p>
                <p>
                    On the IIS the default "HTTP 404 error" page will be shown. This page looks quite
                    ugly, it is not customizable and has nothing to do with the layout and design of
                    the rest of your site. The advantage of this solution is, that it doesn't change
                    the URL in the Address text box of you browser. So it's easy to correct for a user
                    if it's e.g. just a spelling mistake or a forgotten or mixed up letter and the user
                    doesn't have to retype the whole URL.
                </p>
                <!--SSW Link Auditor - Ignore begin-->
                <p>
                    Here is a <a href=" http://www.different-planet.de/homexxxx.htm" title="Example of a normal 404" />
                    standard 404 error page</a><img alt="Open In A New Window" src="/ssw/Images/NewWindow.gif"
                        width="19" height="8" />
                    of the IIS. It does not change the URL.
                    <br>
                    It should look like this in Internet Explorer 6:
                </p>
                <!--SSW Link Auditor - Ignore end-->
                <dl class="image">
                    <dt>
                        <img border="1" src="Images/standart404error.gif" alt="standard 404 error" /></dt>
                    <dd>
                        <img border="0" src="/ssw/Standards/Rules/Images/Bad.gif" alt="Bad" width="16" height="16" />Figure:
                        The default 404 error page of the IIS in IE6 (Bad)</dd>
                </dl>
                <p>
                    Or look like this in Internet Explorer 7:
                </p>
                <dl class="image">
                    <dt>
                        <img border="1" src="Images/standart404error_IE7.gif" alt="standard 404 error" /></dt>
                    <dd>
                        <img border="0" src="/ssw/Standards/Rules/Images/Bad.gif" alt="Bad" width="16" height="16" />Figure:
                        The default 404 error page of the IIS in IE7 (Bad)</dd>
                </dl>
                <p>
                    In .NET you are allowed to define a custom error page. When a user tries to access
                    a URL which doesn't exist, .NET changes the URL and redirects to the custom error
                    page. The original URL is passed as a parameter to the new URL.
                </p>
                <p>
                    The advantage of this solution is, that the page looks nice and you can customize
                    it according to the design and layout of your whole site.
                </p>
                <p>
                    The disadvantage is, that .NET changes the URL. So if the user wants to correct
                    the URL he entered, for example because he just mixed up a letter, then this means
                    quite a lot of work for him. He has to retype the whole URL or at least copy and
                    paste the parameter out of the new URL. This is very uncomfortable for the user.
                </p>
                <p>
                    Here is a <a href="/ssw/Redirect/Web/custerrpage.htm">customized .NET 404 error page</a>.
                    It changes the URL.<br>
                    It should look like this:
                </p>
                <dl class="image">
                    <dt>
                        <img border="1" src="Images/url_asp.gif" alt="URL ASP"></dt>
                    <dd>
                        <img border="0" src="/ssw/Standards/Rules/Images/Bad.gif" alt="Bad" width="16" height="16" />Figure:
                        A customized .NET error page (Bad as the URL changes)</dd>
                </dl>
                <p>
                    Our solution is to show the customized error page while not change the original
                    URL. So if the user wants to do any corrections, e.g. a mixed up letter, he can
                    do that by just editing the URL in the address bar.<br>
                    The advantages of this solution are, that the site looks nice and matches the design
                    of the whole site and that the user can easily change the original URL he typed.
                </p>
                <p>
                    You can try any page name that doesn't exist like xxxx.asp on the URL and it will
                    open our 404 error page. The original URL is not changed in the address bar. It
                    should look like this:
                </p>
                <dl class="image">
                    <dt>
                        <img border="1" src="Images/our_404.gif" alt="Our 404"></dt>
                    <dd>
                        <img border="0" src="/ssw/Standards/Rules/Images/Good.gif" alt="Good" width="16"
                            height="16" />Figure: Our customized 404 error page without change the URL (Good)</dd>
                </dl>
                <p>
                    In order to show the customized error page while not change the original URL, you
                    can use Server.Transfer() to keep the original URL.
                    <br />
                    <dl class="image">
                        <pre>Server.Transfer("/ssw/ErrorPage.aspx")</pre>
                        <dd>
                            Figure: Custom error page handler in Global.asax</dd>
                    </dl>
                </p>
            </li>
            <li>
                <h2>
                    <a name="CustomizedErrorPage"></a>Do you use a customized error page to handle an
                    unhandled error occurs on your website?</h2>
                <p>
                    For ASP.NET website, the detailed information would be presented to the remote machines
                    when an unhandled error occurs if the customErrors mode is <font color="red"><b>off</b></font>.</p>
                <p>
                    This error information is useful for developer to do debugging. However, it would
                    leak out some confidential information which could be used to get into your system
                    by the hackers. We can assume that if a SQL exception occurs by accident, which
                    may expose database sensitive information (e.g. connection string; SQL script).
                    So, to prevent these leaks, you should set the "mode" attribute of the tag
                    <customerrors> 
		to "RemoteOnly" or "On" in the web.config file and create a user friendly customized error page to replace the detailed error information.
			<br />
			
			<dl class="image">
			    <pre>&lt;customErrors mode="Off"&gt;&lt;/customErrors&gt;</pre>
			    <dd><img border="0" src="/ssw/Standards/Rules/Images/Bad.gif" alt="Bad" width="16" height="16" />Figure: Setting "customErrors" attribute to "Off" is security risk (Bad)</dd>
			</dl>
			
			<dl class="image">
			    <pre>&lt;customErrors mode="RemoteOnly" defaultRedirect="GenericErrorPage.htm"&gt;&lt;/customErrors&gt;</pre>
			    <dd><img border="0" src="/ssw/Standards/Rules/Images/Good.gif" alt="Good" width="16" height="16" />Figure: Turning on "customErrors" protects sensitive information against Hacker (Good)</dd>
			</dl>
                </p>
                <dl class="image">
                    <dt>
                        <img border="1" src="Images/UnhandledError.gif" alt="Unhandled Error" /></dt>
                    <dd>
                        <img border="0" src="/ssw/Standards/Rules/Images/Bad.gif" alt="Bad" width="16" height="16" />Figure:
                        Unhandled Error (Bad)</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img border="1" src="Images/SSWCustomError.jpg" alt="Customized Error Page" /></dt>
                    <dd>
                        <img border="0" src="/ssw/Standards/Rules/Images/Good.gif" alt="Good" width="16"
                            height="16" />Figure: The Customized Error Page (Good)</dd>
                </dl>
                <p>
                    To see an example of our customized error page click this link <a href="/ssw/ErrorPage.aspx">
                        Customized Error Page</a>
                </p>
            </li>
            <li>
                <h2>
                    <a name="MaxLength"></a>Do you always use the MaxLength property to the same as
                    the length of the field in the table?</h2>
                <p>
                    <b>Rule 1: </b>Whenever you have a data entry page you should always use the MaxLength
                    property to the same as the length of the field in the table (except for numbers).</p>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State:<input id="State" type="text" name="State"
                        maxlength="3" size="20">(maxlength="3")</p>
                <p>
                    <b>Rule 2: </b>Whenever you have a situation where you are using:</p>
                <ul>
                    <li>the HTML TEXTAREA (does not have the maxlength property), or</li>
                    <li>have a SQL Server table exceeding the limit of 8060 bytes. (Developers sometimes
                        define the table with char/varchar sizes that exceed this, in order to give the
                        user flexibility in which fields they want to store the data).</li>
                </ul>
                <br />
                <dl class="image">
                    <dt>
                        <img alt="" src="Images/checklengthsql.gif" width="328" height="154"></dt>
                    <dd>
                        Figure: Design view of Products table in Northwind</dd>
                </dl>
                <p>
                    Then you need to:</p>
                <ul>
                    <li>add the JavaScript function eg. ValidateLength(control)
                        <li>add 2 properties to every data control&nbsp; eg. dataType="char" onkeyup="validateLength(this)"</li>
                </ul>
                <p>
                    See <a href="#">demonstration</a></p>
            </li>
            <li>
                <h2>
                    <a name="names"></a>Do you name web pages to be consistent with database tables?</h2>
                <p>
                    In a database driven page, it is important that the name of the page is based on
                    the data that the page contains. For example, if a page shows client details and
                    is based on the Client table, then the page should be called Client.aspx Another
                    examples are:
                </p>
                <ul>
                    <li>a search page. This page <a href="/ssw/KB/KBSearch.aspx">ssw/Kb/KBSearch.asp</a>
                        is for searching a table obviously called KB</li>
                    <li>a search results page. This page <a href="/ssw/KB/KBResult.aspx?searchOn=Words&amp;searchFor=problem">
                        ssw/KB/KBResult.aspx?searchOn=Words&amp;searchFor=problem</a> is returning the records
                        for a table called KB</li>
                    <li>a detail page. This page is showing the detail record for a record in the table
                        'KB'<br>
                    </li>
                </ul>
            </li>
            <li>
                <h2>
                    <a name="UseaStyleSheetforFormatting"></a>Do you use a style sheet and heading tags
                    for all your formatting?</h2>
                <p>
                    Formatting rules shouldn't be specified in each individual page of your website.
                    A style sheet should be used to dictate how the fonts, tables etc should be displayed.
                </p>
                <p>
                    This makes your site very easy to maintain. If you ever want to change the entire
                    look and feel you should only have to change one file.
                </p>
                <p>
                    <!--SSW Code Auditor - Ignore next line(HTML)-->
                    Here at SSW we ensure every page has this line: &lt;LINK href="/ssw/Include/ssw.css"
                    type="text/css" rel="stylesheet"&gt;
                </p>
            </li>
            <li>
                <h2>
                    <a name="UseHeadingTags"></a>Do you make sure every page has a heading tag - H1,
                    H2 or H3?</h2>
                <p>
                    Every page should have a &lt;H1&gt;, &lt;H2&gt; or &lt;H3&gt; tag. This has the
                    following benefits:</p>
                <ul>
                    <li>Improves the ranking with the search engines (extra weighting is given to text in
                        H1 and H2)</li>
                    <li>Makes cleaner and leaner html</li>
                    <li>You can edit the page in FrontPage (ctrl+alt+2 same as MS Word) or Dreamweaver without
                        going to the HTML view</li>
                </ul>
                <br>
                <pre>
&lt;p&gt;&lt;span class="Heading"&gt;Introduction&lt;/span&gt;
<br />
&lt;br&gt;Lets chatter about...&lt;/p&gt;
		</pre>
                <img border="0" src="/ssw/Standards/Rules/Images/Bad.gif" alt="Bad" />
                <b>Figure: Bad as it is using span tags and CSS classes to put headings in.</b>
                <pre>&lt;h2&gt;Introduction&lt;/h2&gt;</pre>
                <img border="0" src="/ssw/Standards/Rules/Images/Good.gif" alt="Good" /><b>Figure: Good
                    as it is using heading styles</b>
                <p>
                    To adjust the formatting of the heading tags, you should redefine them in your style
                    sheet:</p>
                <pre>H2
<br />{
<br />font-size: 16px;
<br />font-family: Arial, Helvetica, sans-serif;
<br />}</pre>
                <img border="0" src="/ssw/Standards/Rules/Images/Good.gif" alt="Good" /><b>Figure: Good
                    as it is using heading styles</b> </li>
            <li>
                <h2>
                    <a name="UseDLTag"></a>Do you use &lt;DL&gt; tag for image captions?</h2>
                <p>
                    Image captions can present a bit of a puzzle to people trying to do proper markup.
                    This results in either the completely wrong markup gets used (a caption is not a
                    paragraph) or captions are simply wrapped in &lt;table&gt;s, &lt;div&gt;s and &lt;span&gt;s
                    tag.</p>
                <p>
                    The proper way to insert a caption is to use the <a href="/ssw/Redirect/w3orgDefinition.htm">
                        Definition List</a><img src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17"
                            height="11" />
                    tag</p>
                <dl class="badCode">
                    <dt>
                        <pre>
&lt;table&gt;
 &lt;tr&gt;
  &lt;td&gt;
  &lt;img border="1" src="Images/picture.jpg" alt="Default Front Page" /&gt;
  &lt;/td&gt;
 &lt;/tr&gt;
 &lt;tr&gt;
  &lt;td&gt;
  &lt;b&gt;Figure: this is the image caption&lt;/b&gt;
  &lt;/td&gt;
 &lt;/tr&gt;
&lt;/table&gt;</pre>
                    </dt>
                    <dd>
                        Figure: Incorrect caption as it is using &lt;table&gt; tag</dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        <pre>
&lt;dl class="image"&gt;
 &lt;dt&gt;&lt;img src="Images/picture.jpg" alt="Default Front Page" /&gt;&lt;/dt&gt;
 &lt;dd&gt;Figure: this is the image caption&lt;/dd&gt;
&lt;/dl&gt;</pre>
                    </dt>
                    <dd>
                        Figure: Correct caption as it is using &lt;dl&gt; tag</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="AvoidFONTTags">Do you avoid FONT tags throughout your site?</a></h2>
                <p>
                    And as a consequence of the style sheet no page on our site should have the &lt;Font&gt;
                    tag.
                </p>
                <dl class="badCode">
                    <dt>
                        <pre>
&lt;font face="garamond, times" color="#FF0000" size="+1"&gt;
 this text uses font tag
&lt;/font&gt;</pre>
                    </dt>
                    <dd>
                        Figure: Bad and inflexible text formatting using &lt;font&gt; tag</dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        <pre>
&lt;div class="redText"&gt;this text uses css instead&lt;/div&gt;</pre>
                    </dt>
                    <dd>
                        Figure: Good text formatting using CSS</dd>
                </dl>
                <span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code
                    Auditor</a> to check for this rule. </span></li>
            <li>
                <h2>
                    <a name="NoASPTagsInPlainHTML"></a>Do you avoid using ASP/ASP.NET tags in plain
                    HTML?</h2>
                <p>
                    ASP and ASP.NET tags have no place in plain HTML pages. They simple increase the
                    size of the file and are ignored by browsers, because the need to be processed on
                    the server. When converting ASP.NET pages to plain HTML you must be careful to remove
                    all of these tags.</p>
                <dl class="badCode">
                    <dt>
                        <pre>&lt;%@ Page Language=&quot;C#&quot; %&gt;
&lt;html&gt;
&lt;ssw:inctop id=&quot;inctop&quot; runat=&quot;server&quot;&gt;&lt;/ssw:inctop&gt;</pre>
                    </dt>
                    <dd>
                        Figure: Bad Example - ASP.NET tags accidentaly placed in a plain HTML documents</dd>
                </dl>
                <p>
                    <span class="productBox">We have a program called <a href="/ssw/CodeAuditor">SSW Code
                        Auditor</a> to check for this rule.</span></p>
            </li>
            <li>
                <h2>
                    <a name="DisplayCode">Do you know the best way to display code on your website?</a></h2>
                <p>
                    Any website designer that needs to display code should be aware that there is a
                    very simple method for simply formatting code, and there is a slow and complex method.</p>
                <p>
                    The complex method requires formatting each line with HTML tags (such as &lt;br&gt;
                    and &amp;nbsp;) to ensure the code looks nice and pretty.</p>
                <p>
                    The simpler method uses &lt;pre&gt; tags. Pre (standing for "preformatted") means
                    that the code is formatted exactly as it is written in the HTML window. This means
                    the page designer can format code in a very simple fashion, without worrying about
                    tags.</p>
                <p>
                    I think it's also better to put code in a table, so it's easy to distinguish.</p>
                <p>
                    <b>NOTE:</b> &lt;code&gt; tags should not be used because they only provide the
                    font courier - you still have to manually indent all of your code as in the bad
                    code display example below.</p>
                <dl class="badCode">
                    <dt>
                        <pre>&lt;font face="Courier, Times, Arial, Verdana" size="3"&gt;
<br />public class Configuration&lt;br&gt;
<br />&amp;nbsp;{&lt;br&gt;
<br />&amp;nbsp;&amp;nbsp;public static string MySetting&lt;br&gt;
<br>&amp;nbsp;&amp;nbsp;{&lt;br&gt;
<br>&amp;nbsp;&amp;nbsp;&amp;nbsp;get&lt;br&gt;
<br>&amp;nbsp;&amp;nbsp;&amp;nbsp;{&lt;br&gt;
<br>&lt;/font&gt;</pre>
                    </dt>
                    <dd>
                        Figure: Bad Code Display Example - using &lt;font&gt;</dd>
                </dl>
                <dl class="badCode">
                    <dt>
                        <pre>&lt;code&gt;
<br />public class Configuration&lt;br&gt;
<br />&amp;nbsp;{&lt;br&gt;
<br />&amp;nbsp;&amp;nbsp;public static string MySetting&lt;br&gt;
<br>&amp;nbsp;&amp;nbsp;{&lt;br&gt;
<br>&amp;nbsp;&amp;nbsp;&amp;nbsp;get&lt;br&gt;
<br>&amp;nbsp;&amp;nbsp;&amp;nbsp;{&lt;br&gt;
<br>&lt;/code&gt;</pre>
                    </dt>
                    <dd>
                        Figure: Bad Code Display Example</dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        <pre>&lt;pre&gt;
public class Configuration
{
   public static string MySetting
   {
      get
      {
&lt;/pre&gt;</pre>
                    </dt>
                    <dd>
                        Figure: Good Code Display Example</dd>
                </dl>
                <p class="greyBox">
                    <strong>Tip: </strong>Do not use auto-format (Ctrl-K, Ctrl-F) in Visual Studio when
                    updating page with &lt;pre&gt; tags, or it will destroy all the code formatting.
                    We have made a suggestion to Microsoft to fix this.</p>
            </li>
            <li>
                <h2>
                    <a name="ValidateHtml"></a>Do you check if your page contains malformed Html?</h2>
                <p>
                    Today's web browser are very lenient when it comes to malformed HTML, but such malformed
                    HTML should still be avoided at all cost, otherwise the rendering of your pages
                    will become unpredictable. But such malformed HTML are not easy to pick up, especially
                    if the page is a generated server page, such as .asp or .aspx pages.</p>
                <p>
                    At SSW we integrate an utility call <a href="/ssw/Redirect/SourceForge.htm">Tidy</a>
                    with SSW Code Auditor to provide a powerful and robust solution to this problem.
                    This way Code Auditor can automatically validate our websites and provide an informative
                    report on all malformed html found on our site.</p>
                <p>
                    <span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code
                        Auditor</a> to check for this rule.</span></p>
            </li>
            <li>
                <h2>
                    <a name="DefaultPage"></a>Do you always have a default/index page?</h2>
                <p>
                    Many times a website contains directories that doesn't have an index page. Traditionally,
                    this is usually index.html, but depending on the webserver configurations, default.asp,
                    Default.aspx or index.htm are also common.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/403DirectoryViewError.gif" alt="403 Directory View Error" width="380"
                            height="370"></dt>
                    <dd>
                        Figure: A user should never see something like this...</dd>
                </dl>
                <p>
                    <span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code
                        Auditor</a> to check for this rule.</span></p>
            </li>
            <li>
                <h2>
                    <a name="AnchorCaseSensitive"></a>Do you know that Anchors are case sensitive?</h2>
                <p>
                    Are http://www.ssw.com.au/ssw/NETUG/DeveloperLinks.aspx#usergroups and http://www.ssw.com.au/ssw/NETUG/DeveloperLinks.aspx#UserGroups
                    the same? Well most developers slip up on the case sensitivity of Anchors because
                    they are not case sensitive when they test them in IE. But in Netscape and Opera
                    they are so you need to find them and fix them. The only efficent way of doing this
                    is to run <a href="/ssw/Standards/DeveloperGeneral/WebdevelopmentTools.aspx#BrokenLinks">
                        Xenu Link Scanner</a> and fix the errors reported in the broken local links'
                    section.
                </p>
            </li>
            <li>
                <h2>
                    <a name="AnchorSpaces"></a>Do you know that Anchors cannot contain spaces?</h2>
                <p>
                    When you are defining an anchor name, make sure there are no spaces within the name.
                </p>
                <p>
                    <b>Bad:</b> &lt;a name="Some Anchor Name"&gt;
                </p>
                <p>
                    <b>Good:</b> &lt;a name="SomeAnchorName"&gt;
                </p>
                <p>
                    <span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code
                        Auditor</a> to check for this rule.</span></p>
            </li>
                <li>
                <h2>
                    <a name="AnchorContent"></a>Do you know that Anchor's cannot contain text or other tags?</h2>
                <p>
                   If you add text or tags among an anchor name, this will make the text or tags look like a link, 
                   but actually, an  anchor name is not a link,  if users click the appeared link, no target will go to
                </p>
                <p>
                    <b>Bad:</b> &lt;a name="AnchorName"&gtText&lt;/a&gt;
                </p>
                <p>
                    <b>Good:</b> &lt;a name="AnchorName"&gt;&lt;/a&gt;
                </p>
                <p>
                    <span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code
                        Auditor</a> to check for this rule.</span></p>
            </li>
            <li>
                <h2>
                    <a name="AnchorName"></a>Do you know that Anchor Name must not start with a #?</h2>
                <p>
                    When you are defining an anchor name you DO NOT use a #.<br>
                    When you are referencing an anchor you DO use a #.<br>
                    This is a common mistake.</p>
                <p>
                    <b>Bad:</b> &lt;a name="#SomeAnchorName"&gt;
                </p>
                <p>
                    <b>Good:</b> &lt;a name="SomeAnchorName"&gt;
                </p>
                <p>
                    <span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code
                        Auditor</a> to check for this rule.</span></p>
            </li>
            <li>
                <h2>
                    <a name="NoUNC"></a>Do you avoid using UNCs in HREFs?
                </h2>
                <p>
                    Initially I thought errors of this nature would be picked up in the link checking
                    utility. However that is not the case, because the link checker will not report
                    any problems if you run it locally - which is the normal method. The reason it won't
                    see the problems, is because the link checking utility does not check hard coded
                    links to local servers (e.g. http://localserver/ssw/Default.aspx), so therefore
                    it is testing a page that will exist internally, but the page will not exist when
                    uploaded to the web (eg.<a href="/ssw/Redirect/ssw/sswhome.htm">http://www.ssw.com.au/ssw/Default.aspx</a>).
                </p>
                <p>
                    <b>Bad:</b> &lt;a href="//ant/ssw/LookOut.htm"&gt;<p>
                        <b>Good:</b> &lt;a href="/ssw/LookOut.htm"&gt;</p>
                    <p>
                        <span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code
                            Auditor</a> to check for this rule.</span></p>
            </li>
            <li>
                <h2>
                    <a name="NoExternalCSS"></a>Do you make sure that your page can be saved offline?</h2>
                <p>
                    After the security update MS02-023 or later (including Internet Explorer 6 Service
                    Pack 1), Internet Explorer now blocks access to StyleSheet code if the code is on
                    a different domain/server. This means page with external CSS reference will fail
                    to save offline and will receive a &quot;Error when saving webpage&quot; error message.
                    So if you want to save your page offline, copy the css file to the same server.</p>
                <!--SSW Code Auditor - Ignore next line(HTML)-->
                <pre>&lt;LINK href=&quot;http://anotherserver/ssw/ssw.css&quot; type=text/css rel=stylesheet&gt;</pre>
                <p>
                    <img border="0" src="/ssw/Standards/Rules/Images/Bad.gif" alt="Bad" width="16" height="16" /><b>Figure:
                        Cannot save offline</b></p>
                <!--SSW Code Auditor - Ignore next line(HTML)-->
                <pre>&lt;LINK href=&quot;/ssw/ssw.css&quot; type=text/css rel=stylesheet&gt;</pre>
                <p>
                    <img src="/ssw/Standards/Rules/Images/Good.gif" alt="Good" width="16" height="16" /><b>Figure:
                        Can save offline</b></p>
                <p>
                    <span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code
                        Auditor</a> to check for this rule.</span></p>
            </li>
            <li>
                <h2>
                    <a name="NoCodeBaseNorClassID"></a>Do you use the &quot;type&quot; attribute in
                    &lt;object&gt; tags?</h2>
                <p>
                    Rather than specifying CodeBase or ClassID attributes in an object tag, the preferred
                    method, for portability reasons, is to specify the MIME type. For instance, with
                    Flash, you would specify a type of &quot;application/x-shockwave-flash&quot;. This
                    allows the browser to load the user's preferred plugin instead of specifying a particular
                    object. This also reduces the number of security warnings a user may see.</p>
                <pre>&lt;object classid=&quot;clsid:d27cdb6e-ae6d-11cf-96b8-444553540000&quot;
codebase=&quot;http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0&quot;
width=&quot;120&quot; height=&quot;120&quot; id=&quot;Untitled-1&quot; align=&quot;middle&quot;&gt;
&lt;/object&gt;</pre>
                <img border="0" src="/ssw/Standards/Rules/Images/Bad.gif" alt="Bad" width="16" height="16" /><b>Figure:
                    Bad as it is using the &quot;CodeBase&quot; and &quot;ClassID&quot; attributes</b><br>
                <br>
                <pre>&lt;object type=&quot;application/x-shockwave-flash&quot; width=&quot;120&quot; height=&quot;120&quot; id=&quot;Untitled-1&quot; align=&quot;middle&quot;&gt;
&lt;/object&gt;</pre>
                <img src="/ssw/Standards/Rules/Images/Good.gif" alt="Good" width="16" height="16" /><b>Figure:
                    Good as it is using the &quot;type&quot; attribute</b><br>
                <p>
                    <span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code
                        Auditor</a> to check for this rule.</span></p>
                <span class="productBox">We have a program called <a href="/ssw/LinkAuditor/">SSW Link
                    Auditor</a> to check for this rule. We offer a <a href="/SSW/LinkAuditor/Samples/Rules/ObjectTag.aspx">
                        rule sample page</a> for demo scan.</span> </li>
            <li>
                <h2>
                    <a name="Debug"></a>Do you make sure you remove the debug page attribute?</h2>
                <p>
                    The debug attribute in the web.config file is very useful for ASP.NET developers.
                    When an error occurs the developer gets detailed error report containing the stack
                    trace, line number and what the error is.</p>
                <pre>&lt;%@ Page Language=&quot;vb&quot; <span class="highlight">Debug=&quot;true&quot;</span> %&gt;</pre>
                <p>
                    But when debug attribute in the Web.config file is set to true (by setting debug="true"
                    in your web page), it generates symbolic information (.pdb file) every time the
                    compiler compiles your .aspx pages as well as disables code optimization.,So, it
                    slows down the execution of every page.</p>
                <p>
                    So if you are a developer remember to remove the debug attribute and instead use
                    custom error messages for your web pages</p>
                <p>
                    <span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code
                        Auditor</a> to check for this rule.</span></p>
            </li>
            <li>
                <h2>
                    <a name="HTMLValidate"></a>Do you use Markup Validation Service to check your HTML
                    and XHTML code?</h2>
                <p>
                    Markup Validation Service allows you to check your webpage against the W3C recommendations.
                    When developing webpages you want to create a clean and valid web page. It makes
                    it easyier for someone else to read and add new parts to a web page. Every web language
                    like HTML has its own Syntax it must follow in order to produce a clean and valid
                    web page, Markup Validation Service allows you to achieve that goal. Go to <a href="/ssw/Redirect/validator.htm"
                        class="external">Markup Validation Service</a></p>
                <ol>
                    <li>Enter the URL or Upload HTML file and click Check</li>
                    <li>Review the Results and make changes if web page is not Valid</li>
                </ol>
                <dl class="image">
                    <dt>
                        <img src="Images/validatorChoice.gif" alt="Markup Validation Service" width="378"
                            height="219"></dt>
                    <dd>
                        Figure: You can Choose to Validate by entering a URL or by Uploading a File</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/validatorInfo.gif" border="1" alt="Information from your check"
                            width="497" height="399"></dt>
                    <dd>
                        Figure: Displaying Information about your check</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/validatorResults.gif" border="1" alt="Displaying Results and areas that need fixing"
                            width="500" height="402"></dt>
                    <dd>
                        Figure: Displaying Results and Errors with web page checked</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="CSSValidate"></a>Do you use CSS Validation Service to check your CSS Style
                    Sheet?</h2>
                <p>
                    CSS Validation Service allows you to check your webpage against the W3C recommendations.
                    When developing web pages you want to create a clean and valid web page. It makes
                    it easyier for someone else to read and add new parts to a web page. Every web language
                    like CSS has its own Syntax it must follow in order to produce a clean and valid
                    web page, CSS Validation Service allows you to achieve that goal. Go to <a href="/ssw/Redirect/jigsaw.htm"
                        class="external">CSS Validation Service</a>
                </p>
                <ol>
                    <li>Enter the URL or Upload file or by Direct Input and click Check</li>
                    <li>Review the Results and make changes if web page is not Valid</li>
                </ol>
                <dl class="image">
                    <dt>
                        <img src="Images/CSSValidatorChoice.gif" alt="Markup Validation Service" width="500"
                            height="419"></dt>
                    <dd>
                        Figure: You can Choose to Validate by entering a URL or by Uploading a File</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/CSSValidatorResults.gif" border="1" alt="Displaying Results and areas that need fixing"
                            width="500" height="419"></dt>
                    <dd>
                        Figure: Displaying Results and Errors with web page checked</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="EmptyQuotes"></a>Do you close quotations of all your html attributes?</h2>
                <p>
                    It is always better to make sure there are equivalent closing quotations for HTML
                    attributes. A small mistake of missing a quotation could lead to undesired results
                    on the web page.</p>
                <b>Bad Example :</b><br />
                <pre>&lt;SPAN style="VS FONT-SIZE:12 pt; BACKGROUND: #cccccc;&gt;</pre>
                <b>
                    <img src="/ssw/Standards/Rules/Images/Bad.gif" alt="Bad" width="16" height="16">Figure:
                    Can you see the missing quote? Code Auditor can. (bad code)</b><br />
                <br>
                <b>Good Example :</b><br>
                <pre>&lt;SPAN style="VS FONT-SIZE:12 pt; BACKGROUND: #cccccc;"&gt;</pre>
                <img border="0" src="/ssw/Standards/Rules/Images/Good.gif" alt="Good" width="16"
                    height="16"><b>Figure: All OK (good code)</b><br />
                <p>
                    As you can see from the above example, just missing a quotation makes the whole
                    layout of the text different. So be very careful that you make sure you have closed
                    all opening quotations of attributes with equivalent closing quotations.</p>
                <p>
                    <span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code
                        Auditor</a> to check for this rule.</span></p>
            </li>
            <li>
                <h2>
                    <a name="EmptyTags"></a>Do you close your html tags?</h2>
                <p>
                    It is always better to make sure there are equivalent closing HTML Tags. A small
                    mistake of missing a close tag could lead to undesired results on the web page.</p>
                <b>Bad Example :</b><br />
                <pre>&lt;title&gt;SSW Rules to Better Websites - Development</pre>
                <b>
                    <img src="/ssw/Standards/Rules/Images/Bad.gif" alt="Bad" width="16" height="16">Figure:
                    Can you see the missing tag? Code Auditor can. (bad code)</b><br />
                <br>
                <b>Good Example :</b><br>
                <pre>&lt;title&gt;SSW Rules to Better Websites - Development&lt;/title&gt;</pre>
                <img border="0" src="/ssw/Standards/Rules/Images/Good.gif" alt="Good" width="16"
                    height="16"><b>Figure: All OK (good code)</b><br />
                <p>
                    <span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code
                        Auditor</a> to check for this rule.</span></p>
            </li>
            <li>
                <h2>
                    <a name="Funny"></a><a name="FunnyCharacters"></a>Do you check for funny characters
                    (including apostrophes)?</h2>
                <p>
                    When you copy text from Microsoft Word or Outlook to Visual Studio or Expression Web,
                    it puts in funny characters. A good example is weird apostrophes.</p>
                <ul>
                    <li>shouldnt (Words apostrophe), rather than</li>
                    <li>shouldn't (Front Pages apostrophe)</li>
                </ul>
                <p>
                    The reason for this is Microsoft Word puts garbage apostrophes. Another common reason
                    is Chinese Characters sets.
                </p>
            </li>
            <li>
                <h2>
                    <a name="GenericExHandler"></a>Do you have generic exception handler in your Global.asax?</h2>
                <p>
                    Add your code to handle generic exception of your ASP.NET application in Application_Error.</p>
                <pre>
Sub Application_Error(ByVal sender As Object, ByVal e As 
EventArgs)

Dim objLastError As Exception = Server.GetLastError()
If 
objLastError.InnerException.ToString.IndexOf(&quot;IO.FileNotFoundException&quot;) 
&gt; 0 Then

Dim strQueryString As String = Request.Url.Query.ToString()
If strQueryString.Length = 0 Then
'404 error. Append .error so that IIS will take over it and 
log it in log file correctly.

Response.Redirect(Request.Path + &quot;.error&quot;, True)
Exit Sub
End If
End If

Dim strSubject As String = &quot;Error&quot;

Dim strEmailMessage As String
strEmailMessage += &quot;An error occured on the SSW Website. 
Please send this to the Web Page admin.&quot; &amp; vbNewLine &amp; 
vbNewLine
strEmailMessage += &quot;Server Name: &quot; &amp; 
Request.ServerVariables(&quot;SERVER_NAME&quot;) &amp; vbNewLine
strEmailMessage += &quot;Server IP Address: &quot; &amp; 
Request.ServerVariables(&quot;LOCAL_ADDR&quot;) &amp; vbNewLine
strEmailMessage += &quot;Client IP Address: &quot; &amp; 
Request.ServerVariables(&quot;REMOTE_ADDR&quot;) &amp; vbNewLine
strEmailMessage += &quot;Error In Page: &quot; &amp; Request.Url.ToString() 
&amp; vbNewLine

If Request.UrlReferrer Is Nothing Then
strEmailMessage += &quot;Referring URL: &lt;non available&gt;&quot; &amp; 
vbNewLine
Else
Dim strUrlReferrer As String = 
Request.UrlReferrer.ToString.ToLower
strEmailMessage += &quot;Referring URL: &quot; &amp; strUrlReferrer &amp; 
vbNewLine
' we don't want to know if the user comes in from a bad link 
outside our site - we can't fix that
If strUrlReferrer.IndexOf(&quot;ssw.com.au&quot;) = -1 And 
strUrlReferrer.IndexOf(&quot;ant&quot;) = -1 And 
strUrlReferrer.IndexOf(&quot;localhost&quot;) = -1 And 
strUrlReferrer.IndexOf(&quot;seal&quot;) = -1 Then
strSubject = &quot;Warning Only (bad link outside our site so 
probably not worth fixing)&quot;
strEmailMessage += &quot;Warning Only (bad link outside our site 
so probably not worth fixing)&quot; &amp; vbNewLine
End If
End If

strSubject = &quot;SSW Web Site: &quot; + strSubject + &quot; in page: &quot; + 
Request.Url.ToString

strEmailMessage += vbNewLine &amp; &quot;Error Message: &quot; &amp; 
objLastError.Message &amp; vbNewLine &amp; vbNewLine
strEmailMessage += &quot;Error Stack: &quot; &amp; objLastError.ToString &amp; 
vbNewLine &amp; vbNewLine &amp; vbNewLine
SSWMT.GlobalFunctions.SendEmail(strEmailMessage, strSubject, 
&quot;info@s*w.com.au&quot;, &quot;sswErrorLog@s*w.com.au&quot;, False)

' Move this error to the error page so i can get the error 
message			
If Not 
Convert.ToBoolean(SSWMT.GlobalFunctions.GetWebConfigString(&quot;DisableCustomError&quot;)) 
Then
Server.Transfer(&quot;/ssw/ErrorPage.aspx&quot;)
<br>
End If

End Sub
		</pre>
                <b>Figure: Exception handler in Global.asax.vb</b> </li>
            <li><a name="2ExceptionForGenericExHandle"></a>
                <h2>
                    Do you understand that there are 2 other types of errors that cant be caught and
                    handled by the global exception handler in Global.asax?</h2>
                <dl class="image">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/RulesToBetterWebSitesAdmin36-01.gif" alt="Bad"
                            width="600" height="340"></dt>
                    <dd>
                        Figure: BEE is not an application - there is no way you can put code in the global.asax
                        because it does not exist</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/RulesToBetterWebSitesAdmin36-02.gif" alt="Bad"
                            width="590" height="178"></dt>
                    <dd>
                        Figure: BEE is not an application - there is no way you can put code in the global.asax
                        because it does not exist</dd>
                </dl>
                <p>
                    <span class="productBox">We have a program called <a href="/ssw/LinkAuditor/">SSW Link
                        Auditor</a> to check these two errors. </span>
                </p>
                <br>
            </li>
            <li>
                <h2>
                    <a name="Precompilation"></a>Do you precompile your ASP.NET 1.1 and 2.0+ sites?</h2>
                <p>
                    It always much better for your developers to find errors rather than your clients
                    and end-users. ASP.NET 2.0 has precompilation built-in. However, you can perform
                    similar validation in ASP.NET 1.1 as well. For more information go to <a href="/ssw/KB/KB.aspx?KBID=Q1545246">
                        Precompile ASP.NET Sample in SSW Knowledge Base</a>.</p>
            </li>
            <li>
                <h2>
                    <a name="WAP"></a>Do you avoid using Web Site Projects?</h2>
                <p>
                    If you&#8217;re creating new web apps in ASP.NET 2.0, do you still use <b>Web Site projects</b>?
                    We strongly recommend using the new <b>Web Application projects</b>.</p>
                <p>
                    What&#8217;s the difference between the two? There is a <a href="/SSW/Redirect/MSDN2/WebApplication.htm">
                        detailed comparison here</a>, but to summarize:</p>
                <ul>
                    <li><b>Web Site projects</b> have no project file and it creates multiples assemblies.
                        (This result in a lot of annoying scenarios.)</li>
                    <li><b>Web Application projects</b> have a physical project file and along with all
                        other standalone classes within the project are compiled into a single assembly.</li>
                </ul>
                <br />
                <p>
                    Please see our kb - <a href="/ssw/KB/KB.aspx?KBID=Q1993822">How to upgrade VS 2005 Web
                        Site Projects to be VS 2005 Web Application Projects?</a> to do the upgrade.</p>
            </li>
            <li>
                <h2>
                    <a name="AJAX"></a>Do you use AJAX on your web site?</h2>
                <p>
                    ASP.NET AJAX is a new Web development technology from Microsoft. With ASP.NET AJAX,
                    developers can quickly create pages with sophisticated, responsive user interfaces
                    and more efficient client-server communication by simply adding a few server controls
                    to their pages.
                </p>
            </li>
            <li>
                <h2>
                    <a name="WebsiteRunning"></a>Do you check if your website is running?</h2>
                <p>
                    If you want to know your website is working or not, you need to add a ping check
                    to the machine also a HTTP Content Scan to the website in WhatsUp. We use WhatsUp
                    to do real-time monitoring.<br />
                    Follow these steps to check your website in WhatsUp:
                </p>
                <ol>
                    <li>Add your website as a new device.
                        <dl class="image">
                            <dt>
                                <img src="Images/NewDevice.GIF" />
                            </dt>
                            <dd>
                                Figure: New device</dd>
                        </dl>
                    </li>
                    <li>Ping monitor is added automatically.
                        <dl class="image">
                            <dt>
                                <img src="Images/Ping.GIF" />
                            </dt>
                            <dd>
                                Figure: Ping monitor</dd>
                        </dl>
                    </li>
                    <li>Add a HTTP Content Scan monitor.
                        <dl class="image">
                            <dt>
                                <img src="Images/HTTPContent.GIF" />
                            </dt>
                            <dd>
                                Figure: HTTP Content Scan</dd>
                        </dl>
                    </li>
                    <li>Edit the scan script. In the script you can see 2 key words "Send" and "Expect".<br />
                        "Send" expression is a http request to your website.<br />
                        "Expect" expression is a regular expression to check the key word in response from
                        your website.
                        <dl class="image">
                            <dt>
                                <img src="Images/EditScript.GIF" />
                            </dt>
                            <dd>
                                Figure: Edit scan script</dd>
                        </dl>
                    </li>
                    <li>Add the monitor to your device.
                        <dl class="image">
                            <dt>
                                <img src="Images/AddMonitor.GIF" />
                            </dt>
                            <dd>
                                Figure: Add monitor</dd>
                        </dl>
                    </li>
                </ol>
                <p>
                    Once a device is down or up, a WhatsUp action will tell SQL Reporting Services to
                    send out a notification report.
                    <br />
                    Our report looks like this:
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/NetworkRed.GIF" />
                    </dt>
                    <dd>
                        Figure: Website works</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images/NetworkGreen.GIF" />
                    </dt>
                    <dd>
                        Figure: Website doesn't work</dd>
                </dl>
            </li>
        </ol>
    </div>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TF">Tim Fletcher</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DH">Daniel Hyles</a></p>
    </b>
</asp:Content>
