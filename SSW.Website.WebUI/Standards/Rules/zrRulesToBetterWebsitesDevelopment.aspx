<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Websites - Development" %>

<%@ Import Namespace="System.Configuration" %>
<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" categoryid="10" />
    <p>
        Do you agree with them all? Are we missing some? Email us your tips, thoughts or
        arguments. <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230546F2532304265747465722532305765627369746573253230446576656C6F706D656E74')">
            Let us know</a> what you think.</p>
    <p>
        <img src="/ssw/Images/Validation/redstar.gif" alt="Important" />
        Indicates important rule</p>
    <div class="TableOfContents">
        <h3>Rules to Better Websites - Development</h3>
        <ol>

            
            

            <li><a href="#HTMLValidate">Do you use Markup Validation Service to check your HTML and XHTML code?</a></li>
            <li><a href="#CSSValidate">Do you use CSS Validation Service to check your CSS Style Sheet?</a></li>

            <li><a href="#BuildBeforeDeploy">Do you release build your web applications before you deploy them?</a></li>
            <li><a href="#WAP">Do you avoid using Web Site Projects?</a></li>
            
            <li><a href="#NoSourceCode">Do you avoid deploying source code on the production server?</a></li>

            <li><a href="#JQuerySelector">Do you avoid using document.getElementById(id) and document.all(id) to get a single element, instead use selector $(#id)?</a></li>
            <li><a href="#AutoGenerate">Do you know how to generate maintenance pages?</a></li>
           
            <li><a href="#DataBindingDesigner">Do you always use the Visual Studio designer for data binding where possible?</a></li>
            
            <li><a href="#WindowsIntegrated">Do you use Windows Integrated Authentication?</a></li>
            
            <li><a href="#JQuery">Do you use jQuery instead of JavaScript?</a></li>
            <li><a href="#JQueryVisual">Do you know what are the best examples of visually cool jQuery plug-ins?</a></li>
            <li><a href="#JQueryTechnical">Do you know what are the best examples of technically cool jQuery plug-ins?</a></li>

            <li><a href="#do-not-use-onload-to-open-windows">Do you know windows must not be opened in the OnLoad event?</a></li>
        </ol>

        <h3>Rules to Better Websites - Development - MOVED to rules.ssw.com.au</h3>
        <ol>
            <li><a href="https://rules.ssw.com.au/avoid-using-mailto-on-your-websites">Do you avoid using mailto: on your website?</a></li>
            <li><a href="https://rules.ssw.com.au/how-to-fix-small-web-errors">Do all your employees know the quickest way to fix small web errors?</a> <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></li>
            
            <li><a href="https://rules.ssw.com.au/run-load-tests-on-your-website">Do you run load tests on your website?</a> <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></li>
            <li><a href="https://rules.ssw.com.au/have-a-validation-page-for-your-web-server">Do you have a Validation Page for your web server?</a> <img src="/ssw/Images/Validation/redstar.gif" alt="Important" /></li>

            <li><a href="https://rules.ssw.com.au/build-criteria-by-using-a-where-clause">Do you build criteria by using a where clause?</a></li>
            
            <li><a href="https://rules.ssw.com.au/use-link-auditor">Who tells you about bad links - customers or an automated program? [MOVED TO RULES.SSW.COM.AU]</a></li>
            
            <li><a href="https://rules.ssw.com.au/always-use-query-strings">Do you always use query strings? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/name-webpages-consistently-with-database-tables">Do you name web pages to be consistent with database tables? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/avoid-using-uncs-in-hrefs">Do you avoid using UNCs in HREFs? [MOVED TO RULES.SSW.COM.AU]</a></li>

            <li><a href="https://rules.ssw.com.au/the-right-technology">Do you know the right technology? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/the-steps-to-do-after-adding-a-page">After adding a rule on aspx page - what are the steps to do? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/design-to-improve-your-google-ranking">Is your website designed to improve your Google Ranking? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/structured-website">Is your website structured? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/make-your-site-easy-to-maintain">Do you make your site so it is easy to maintain? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/do-you-include-google-analytics-in-your-website">Do you use a stats program? [MOVED TO RULES.SSW.COM.AU]</a></li>
            
            <li><a href="https://rules.ssw.com.au/use-type-attribute-in-object-tags">Do you use the &quot;type&quot; attribute in &lt;object&gt; tags? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/precompile-your-asp-net-1-1-and-2-0-and-later-sites">Do you precompile your ASP.NET 1.1 and 2.0+ sites? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/use-html-maxlength-to-limit-number-of-characters">Do you always use the MaxLength property to the same as the length of the field in the table [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/remove-the-debug-attribute-in-webconfig-compilation-element">Do you make sure you remove the debug page attribute? [MOVED TO RULES.SSW.COM.AU]</a></li>

            <li><a href="https://rules.ssw.com.au/404-useful-error-page">Do you replace the 404 error with a useful error page? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/404-error-avoid-changing-the-url">Do you replace the 404 error with a useful error page? (Part 2: And] avoid changing the URL) [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/close-quotations-of-html-attributes">Do you close quotations of all your html attributes? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/keep-webpages-under-101kb">Do you restrict your web pages to a reasonable size? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/do-you-use-the-best-deployment-tool">Do you synchronize files and folders using FTPSync or Beyond Compare? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/check-your-website-is-running">Do you check if your website is running? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/do-not-use-linkbutton">Don't use LinkButton? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/keep-your-databinder-eval-clean">Do you keep your databinder.eval clean? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/always-put-javascript-in-a-separate-file">Do you always put JavaScript in a separate file? [MOVED TO RULES.SSW.COM.AU]</a></li>
             <li><a href="https://rules.ssw.com.au/avoid-using-reportviewer-local-processing-mode">Do you avoid using ReportViewer local processing mode? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/have-generic-exception-handler-in-your-global-asax">Do you have generic exception handler in your Global.asax? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/use-sso-for-your-websites">Do you use SSO (Single sign-on) for your websites? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/have-a-stylesheet-file">Do you use a style sheet and heading tags for all your formatting? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/use-heading-tags-h1-h2-h3">Do you make sure every page has a heading tag - H1, H2 or H3? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/figures-do-you-use-the-right-html-css-code-to-add-the-useful-figure-caption">Do you use &lt;DL&gt; tag for captions? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/do-you-know-font-tags-are-no-longer-used">Do you avoid FONT tags throughout your site? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/avoid-using-asp-asp-net-tags-in-plain-html">Do you avoid using ASP/ASP.NET tags in plain HTML? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/best-way-to-display-code-on-your-website">Do you know the best way to display code on your website? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/always-have-a-default-index-page">Do you always have a default/index page? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/chose-efficient-anchor-names">Do you chose efficient anchor names? [MOVED TO RULES.SSW.COM.AU]</a></li>
            <li><a href="https://rules.ssw.com.au/use-server-side-comments">Do you use server side comments? [MOVED TO RULES.SSW.COM.AU]</a></li>

            <li><a href="https://rules.ssw.com.au/when-anchor-should-run-at-server">Do you know anchor should "run at server"? [MOVED TO RULES.SSW.COM.AU]</a></li>

        </ol>

    </div>
    <div id="mainContent">
        <ol>
           

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
                </p>
                <ul type="circle">
                    <li>
                        <pre>e.g. <a href="javascript:sendEmail('46697273746e616d655375726e616d65407373772e636f6d2e6175')">
                            <script language="javascript" type="text/javascript">                                document.write(decodeEmail('46697273746e616d655375726e616d65407373772e636f6d2e6175'))</script>
                        </a></pre>
                        <dl class="badCode">
                            <dd>
                                <b>Figure: Bad way</b> - normal email address in text format</dd>
                        </dl>
                    </li>
                    <li>
                        <pre>e.g. FirstnameSurname
<img src="/ssw/Images/sswLogo/ssw_com_au_NoShadow.gif" class="email" alt="email" /></pre>
                        <dl class="goodCode">
                            <dd>
                                <b>Figure: Good way</b> - use image</dd>
                        </dl>
                    </li>
                    <li><b>Better way</b>: encryption technique
                        <br />
                    </li>
                    <ol>
                        <li>Store email addresses in the web.config file<br />
                            <pre>&lt;configuration&gt;
    &lt;appSettings&gt;
    <!--SSW Code Auditor - Ignore next	line(HTML)-->
        &lt;add key="SampleEncodedEmailAddress" value="David@sample.com.au" /&gt;
    ...&lt;/appSettings&gt;
&lt;/configuration&gt;</pre>
                        </li>
                        <li>Encode them on the server using the BitConverter class
                            <br />
                            <pre>Dim email As String = ConfigurationSettings.AppSettings("SampleEncodedEmailAddress")
Application("SampleEncodedEmailAddress") = BitConverter.ToString( _
ASCIIEncoding.ASCII.GetBytes(email)).Replace("-", "")</pre>
                        </li>
                        <li>Decode on the client with a JavaScript function in the JavaScript<br>
                            <pre>&lt;a id="linkContact" href="javascript:sendEmail('44617669644073616D706C652E636F6D2E6175')"&gt;CONTACT
David&lt;/a&gt;</pre>
                            <p>
                                See the
                                <asp:HyperLink ID="linkContact" runat="server">sample</asp:HyperLink>
                                in action.</p>
                        </li>
                    </ol>
                    <li>
                        <p>
                            <b>Best way</b>: use image with JavaScript</p>
                        <p>
                            The best way is a combination of 'good way' and 'better way'.</p>
                        <p>
                            This is how <a href="/ssw/Employees/employeesXML.aspx">we get around the problem</a>.</p>
                    </li>
                    <li>
                        <p>
                            <b>Old way</b>: use "*"or other symbol in the domain</p>
                        <p>
                            e.g. <a href="mailto:FirstnameSurname@s*w.com.au">FirstnameSurname@s*w.com.au</a></p>
                        <p>
                            Note: Please change "*" in "s*w" to a "s".
                        </p>
                        <p>
                            This way works well. Unfortunately, it is not understood by public.</p>
                    </li>
                </ul>
                <p>
                    <span class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code
                        Auditor</a> to check for this rule.</span>
                </p>
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
                        'KB'
                    </li>
                </ul>
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
                </p>
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
                    <a name="Precompilation"></a>Do you precompile your ASP.NET 1.1 and 2.0+ sites?</h2>
                <p>
                    It always much better for your developers to find errors rather than your clients
                    and end-users. ASP.NET 2.0 has precompilation built-in. However, you can perform
                    similar validation in ASP.NET 1.1 as well. For more information go to <a href="/ssw/KB/KB.aspx?KBID=Q1545246">
                        Precompile ASP.NET Sample in SSW Knowledge Base</a>.</p>
            </li>
            <li>
                <h2>
                    <a name="BuildBeforeDeploy"></a>Do you release build your web applications before
                    you deploy them?</h2>
                <p>
                    Additionally to the reasons found on rule <a href="http://sharepoint.ssw.com.au/Standards/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/DistributeAProductInReleaseMode.aspx">
                        Do you always deploy Release builds to production</a>, there are more reasons
                    doing this with ASP.NET
                    <ul>
                        <li>ASP.NET conducts a batch compilation on "release builds", which means it tries to
                            compile all files in the current folder into one DLL</li>
                        <li>No resource caching is performed on debug build assemblies, which means that each
                            request/response for a resource is not cached</li>
                    </ul>
                </p>
                <p>
                    According to <a href="/ssw/Redirect/MSDN/ReleaseDeploy.htm">MSDN web developer tips</a>,
                    you can choose one of the following to release build your web application
                    <ul>
                        <li>In web.config file, set &lt;compilation debug="false"/&gt;</li>
                        <li>Disable the &lt;compilation debug="true"/&gt; switch for all ASP.NET applications
                            on the server by setting the following in Machine.config
                            <dl class="goodCode">
                                <dt>
                                    <pre>
    &lt;system.web&gt; 
        &lt;deployment retail="true"/&gt; 
    &lt;/system.web&gt;
</pre>
                                </dt>
                                <dd>
                                    The setting in machine.config will also turn off trace output in a page and detailed
                                    error messages remotely</dd>
                            </dl>
                            Machine.config file is typically located at %SystemRoot%\Microsoft.NET\Framework\%VersionNumber%\CONFIG.
                        </li>
                    </ul>
                </p>
            </li>
            <li>
                <h2>
                    <a name="WAP"></a>Do you avoid using Web Site Projects?</h2>
                <p>
                    If you're creating new web apps in ASP.NET 2.0, do you still use <b>Web Site projects</b>?
                    We strongly recommend using the new <b>Web Application projects</b>.</p>
                <p>
                    What's the difference between the two? There is a <a href="/SSW/Redirect/MSDN2/WebApplication.htm">
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
                <h2><a name="NoSourceCode"></a>Do you avoid deploying source code on the production server?</h2>
                <p>
                    When you are deploying an ASP.NET project (no matter it's a Web site or a Web application),
                    do not copy all files of this project to the production server because source code
                    will be deployed during this simple copy and it makes easier for others to access
                    or tamper the source code of your site.
                </p>
                <p>
                    Instead, please use 'Publish' utility to deploy your Web site or Web application.
                    This utility can remove the source code from the site.</p>
                <ol>
                    <li>
                        <p>
                            Web Site Project</p>
                        <p>
                            <b>Publish Web Site</b> dialog box is designed to precompile and deploy your Web
                            site to a new location (whatever it is, ftp://..., http://... or drive:\path). During
                            the deployment, source code are removed automatically. Besides, the precompilation
                            process finds any compilation errors and identifies the errors in the configuration
                            file.
                        </p>
                        <p>
                            To access this dialog box, please open a Web site that you want to deploy and click
                            <b>Build</b> menu, then click <b>Publish Web Site</b>.</p>
                        <dl class="image">
                            <dt>
                                <img alt="Open it" src="Images/PublishWebsite.jpg" />
                            </dt>
                            <dd>
                                Figure: How to open <b>Publish Web Site</b> dialog box
                            </dd>
                        </dl>
                        <dl class="image">
                            <dt>
                                <img alt="Open it" src="Images/PublishWebsiteDialog.JPG" />
                            </dt>
                            <dd>
                                Figure: <b>Publish Web Site</b> dialog box
                            </dd>
                        </dl>
                        <p>
                            See more about <a href="/ssw/redirect/microsoft/PublishWebSite.htm">Publishing Web Sites</a>.</p>
                    </li>
                    <li>
                        <p>
                            Web Application Project</p>
                        <p>
                            The <b>Publish Web</b> dialog box enables you to build and publish a Web application
                            project to a new location. Like <b>Publish Web Site</b> dialog box, this utility
                            can remove source code. However you have to select <b>Only files needed to run this
                                application</b> to specify it. Other benefit of this utility is that potential
                            errors and compile-time errors in the Web.config file and in other non-code files
                            can be found.
                        </p>
                        <p>
                            To access this dialog box, open a Web application project that you want to publish
                            and click <b>Publish</b> ApplicationName on the <b>Build</b> menu.</p>
                        <dl class="image">
                            <dt>
                                <img alt="Open it" src="Images/PublishWebApp.jpg" />
                            </dt>
                            <dd>
                                Figure: How to open <b>Publish Web</b> dialog ('WebApp' is the name of this application)
                            </dd>
                        </dl>
                        <dl class="image">
                            <dt>
                                <img alt="Open it" src="Images/PublishWebAppDialog.JPG" />
                            </dt>
                            <dd>
                                Figure: <b>Publish Web </b>dialog box
                            </dd>
                        </dl>
                        <p>
                            See more about <a href="/ssw/redirect/microsoft/PublishWebApp.htm">How to Publish Web
                                Applications</a>.</p>
                    </li>
                </ol>
            </li>
            
       
            <li>
                <h2><a name="JQuerySelector"></a>
                    Do you avoid using document.getElementById(id) and document.all(id) to get a single
                    element, instead use selector $(#id)?</h2>
                <p>
                    $(#id) is a selector of jQuery. It gets the single element with the given id.</p>
                <p>
                    <a href="/ssw/redirect/jQuery.htm" target="_blank">jQuery</a> is a fast and concise
                    JavaScript Library that simplifies how you traverse HTML documents, handle events,
                    perform animations, and add Ajax interactions to your web pages. jQuery is designed
                    to change the way that you write JavaScript.</p>
                <p>
                    With jQuery, you can write less code but do more work.</p>
                <dl class="badCode">
                    <dt>
                        <pre>
&lt;h1 id="Head1"&gt;Hello&lt;/h1&gt;
&lt;script type="text/javascript" language="javascript"&gt;
<label style="background-color: Yellow;">
    document.all("Head1")</label>.style.color="red";
&lt;/script&gt;
                        </pre>
                    </dt>
                    <dd>
                        Figure - Bad Code.</dd>
                </dl>
                <dl class="badCode">
                    <dt>
                        <pre>
&lt;h1 id="Head1"&gt;Hello&lt;/h1&gt;
&lt;script type="text/javascript" language="javascript"&gt;
<label style="background-color: Yellow;">
    document.getElementById("Head1")</label>.style.color="red";
&lt;/script&gt;
                        </pre>
                    </dt>
                    <dd>
                        Figure: Bad Code.</dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        <pre>
&lt;h1 id="Head1"&gt;Hello&lt;/h1&gt;
&lt;script type="text/javascript" language="javascript"&gt;
<label style="background-color: Yellow;">
    $("#Head1")</label>.css("color","red");
&lt;/script&gt;
                        </pre>
                    </dt>
                    <dd>
                        Figure: Good Code - Using $("#Head1")</dd>
                </dl>
            </li>
            <li>
                <h2><a name="AutoGenerate"></a>
                    Do you know how to generate maintenance pages?</h2>
                <p>
                    In every application you focus on is the important business problems e.g. Invoices
                    with multiple deliveries. Plus you have lots of lookup tables e.g. CustomerCategory.
                    It is smart to work on the important business problems and have the lookup tables
                    done automatically using a code generator.<br />
                    The code generators to generate maintenance pages automatically, come from MS and
                    from 3rd parties. The current choices are:
                </p>
                <ol>
                    <li>We recommend <a href="/ssw/Standards/DeveloperGeneral/netTools.aspx#NetTiers">NetTiers
                        (a template for Code Smith) in our 'The Best 3rd Party .NET Tools'</a>. It is an
                        open source template and the output code is of good quality. There are many amazing
                        features:<br />
                        <ul>
                            <li>Creates a full website project, already pre-configured and ready to begin coding
                                against your data immediately. </li>
                            <li>Creates a full set of administration web controls, that serves as a basic yet fully
                                functional web administration console for database. </li>
                            <li>Creates a full set of typed DataSource controls for your entire API with design
                                time support, they are similar to the ObjectDataSource, only these are full featured
                                and are actually developer friendly. </li>
                            <li>Creates a full webservice API for your domain, perfect for a .net winforms or smart
                                client application and is simple to configure. </li>
                        </ul>
                    </li>
                    <li><a href="/ssw/Standards/DeveloperGeneral/netTools.aspx#AspDB">AspDB</a> is an alternative
                        choice. You can click via a code generator (Designer) to produce a complete and
                        acceptable Web DB application in several minutes. </li>
                    <li><strike><a href="/ssw/Standards/DeveloperGeneral/netTools.aspx#BLinQ">BLinQ</a>
                        is a tool to generate websites that use LinQ to show and edit data. </strike>DEAD
                        - now replaced by ASP.NET Dynamic Data. </li>
                    <li>ASP.NET Dynamic Data provides the Web application scaffolding that enables you to
                        build rich data-driven Web applications. This scaffolding is a mechanism that enhances
                        the functionality of the existing ASP.NET framework by adding the ability to dynamically
                        display pages based on the data model of the underlying database, without having
                        to create pages manually.
                        <br />
                        <span style="color: #EF0000"><b><del>WARNING: ASP.NET Dynamic Data is in Beta and not
                            installed on SEAL and SEALUS.</del></b></span> ASP.NET Dynamic Data has been
                        released in VS.NET 2008 SP1. </li>
                </ol>
            </li>
            <li>
                <h2><a name="ReportViewer"></a>
                    Do you avoid using ReportViewer local processing mode?</h2>
                <p>
                    <a href="/ssw/redirect/msdn/ReportViewerControl.htm">ReportViewer control</a> is
                    a powerful control designed for Windows application and Web application to process
                    and display reports. This control can be configured to run in local processing mode
                    and remote processing mode.<br />
                    <ul>
                        <li>Local Processing Mode<br />
                            This mode uses <a href="/ssw/redirect/msdn/CreatingClientReportDefinition.htm">client
                                report definition (.rdlc) files</a>, all report processing is performed on the
                            computer that hosts the application. All data used by the report must be retrieved
                            from data that the client application provides, so you have to configure the ReportViewer
                            control's Data sources, Report parameters.<br />
                            See <a href="/ssw/redirect/msdn/ConfiguringReportViewer.htm">Configuring ReportViewer
                                for Local Processing</a> for more information.</li>
                        <li>Remote Processing Mode<br />
                            This mode needs the Microsoft SQL Server 2005 Reporting Services report server,
                            The report server processes the data and renders the report into an output format.
                            The ReportViewer control retrieves the finished report from the report server and
                            displays it on the screen, so you have to configure the ReportViewer control's report
                            server information.
                            <br />
                            See <a href="/ssw/redirect/msdn/ConfiguringReportViewerforRemotProcessing.htm">Configuring
                                ReportViewer for Remote Processing</a> for more information. </li>
                    </ul>
                </p>
                <p>
                    If you use local processing mode in your Web application, there are more configuration
                    to do for the ReportViewer control, report processing will also slow down the web
                    server.
                </p>
            </li>
            <li>
                <h2><a name="DataBindingDesigner"></a>
                    Do you always use the Visual Studio designer for data binding where possible?</h2>
                <p>
                    It's convenient and efficient for developers to use designer for databinding instead
                    of using code. It also can be easily reviewed and understood by other developers.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images\CreateDataSource.png" alt="Create Data Source" />
                    </dt>
                    <dd>
                        Figure - Create DataSource (Good).</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images\ChooseBusinessObject.png" alt="Choose a business object" />
                    </dt>
                    <dd>
                        Figure - Choose a business object (Good).</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images\ChooseMethod.png" alt="Choose a method" />
                    </dt>
                    <dd>
                        Figure - Choose a method (Good).</dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img src="Images\ConfigureDisplayValue.png" alt="Select display / value field for the ListBox" />
                    </dt>
                    <dd>
                        Figure - Select display / value field for the ListBox (Good).</dd>
                </dl>
                <dl class="badCode">
                    <dt>
                        <pre>
private void RefreshLeftData()
{
    List&lt;Para&gt; listLeft = lawFirm.GetParaLeft();
    lstLeft.DataSource = listLeft;
    lstLeft.DataTextField = "ParaName";
    lstLeft.DataValueField = "ParaID";
    lstLeft.DataBind();
}
                        </pre>
                    </dt>
                    <dd>
                        Figure: Bad Code - Databinding by code.</dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        <pre>
public static List&lt;Para&gt; CreateLeftPara()
{
    ClsLawFirm bLawFirm = new ClsLawFirm();
    return bLawFirm.GetParaLeft();
    
}
                        </pre>
                    </dt>
                    <dd>
                        Figure: Good Code - Databinding by designer</dd>
                </dl>
                See our <a href="RulesToBetterWindowsForms.aspx#DataBindingDesigner">SSW Rules to Better
                    Windows Forms Applications - Do you always use the Visual Studio designer for data
                    binding where possible?</a> </li>
            <li>
                <h2><a name="SSO"></a>
                    Do you use SSO (Single sign-on) for your websites?</h2>
                <p>
                    Many companies have more than one web applications running under different versions
                    of .NET framework in different subdomains, or even in different domains. They want
                    to let the user sign in once and stay logged in when switching to a different web
                    site, and this is SSO (Single Sign-On).
                </p>
                <p>
                    In ASP.NET the logged-in user status is persisted by storing the cookie on the client
                    computer, base on this mechanism, they are two possible solutions.
                </p>
                <ol>
                    <li>Share one cookie across the web applications.
                        <br />
                        The Forms authentication cookie is nothing but the container for forms authentication
                        ticket. The ticket is encrypted and signed using the &lt;machineKey&gt; configuration
                        element of the server's Machine.config file. So if the web applications are hosted
                        on the same machine, the point is to create a shared authentication cookie. Configure
                        the web.config and create the cookie manually can achieve this.
                        <br />
                        Following scenarios may suit this solution.
                        <br />
                        <ul>
                            <li>SSO for parent and child application in the virtual sub-directory</li>
                            <li>SSO for two applications in two sub-domains of the same domain</li>
                        </ul>
                    </li>
                    <li>Create its own cookie for each site by calling a page which can create cookie in
                        its own domain.
                        <br />
                        If the web applications are hosted on different machine, it is not possibly to share
                        a cookie. In this case each site will need to create its own cookie, call the other
                        sites and ask them to create their own ones.
                        <br />
                        Following scenarios may suit this solution.
                        <br />
                        <ul>
                            <li>SSO for two applications in different domains</li>
                        </ul>
                    </li>
                </ol>
            </li>
            <li>
                <h2><a name="WindowsIntegrated"></a>
                    Do you use Windows Integrated Authentication?</h2>
                <p>
                    Windows Integrated Authentication is the preferred option 
					for use with intranet applications. When using Windows 
					Integrated security, you don't need to implement
                    the sign in system and user accounts database. The biggest 
					advantage is if the user is already logged in to your domain 
					they don't need to sing in to your application, it 
					automatically logs them in instead of them having to sign in 
					manually.
                </p>
            </li>
            
            <li>
                <h2><a name="JQuery"></a>
                    Do you use jQuery instead of JavaScript?</h2>
                <p>
                    jQuery is the MUST HAVE tool for web developers. There are 3 good reasons why you
                    should use jQuery.</p>
                <ol>
                    <li>Cross Browsers (IE 6.0+, Firefox 2+, Safari 3.0+, Opera 9.0+, Chrome)</li>
                    <li>Powerful and easy to use
                        <ul>
                            <li>Same selectos as CSS</li>
                            <li>Designer can learn it fast </li>
                            <li>More readable JavaScript code</li>
                        </ul>
                    </li>
                    <li>Plug-ins - Tons of useful plug-ins and functionalities</li>
                </ol>
                <dl class="badCode">
                    <dt>
                        <pre>
window.onload = function() { 
	alert("Welcome"); 
}
                   </pre>
                    </dt>
                    <dd>
                        Figure: Bad Example - Using JavaScript 'onload' event.</dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        <pre>
$(document).ready(function() {
    alert("Welcome!"); 
});
                        </pre>
                    </dt>
                    <dd>
                        Figure: Good Example - using jQuery document 'ready' event.</dd>
                </dl>
            </li>
            <li>
                <h2><a name="JQueryVisual"></a>
                    Do you know what are the best examples of visually cool jQuery plug-ins?</h2>
                <p>
                    Below are some of the best visually cool jQuery plug-ins. Use these as guidelines
                    for building your jQuery plug-ins:
                </p>
                <ul>
                    <li><a href="http://tympanus.net/Tutorials/BubbleNavigation/" class="external" target="_blank">
                        Bubble Navigation</a> (Hover each menu item to bubbling animation)</li>
                    <li><a href="http://razorjack.net/quicksand/" class="external" target="_blank">Quicksand</a>
                        (Click sort by to see shuffling animation)</li>
                    <li><a href="http://nivo.dev7studios.com/" class="external" target="_blank">Nivo Slider</a>
                        (Click on arrows to see sliding animation)</li>
                    <li><a href="http://demo.tutorialzine.com/2010/03/sponsor-wall-flip-jquery-css/demo.php"
                        class="external" target="_blank">Sponsor Flip Wall</a> (Click on each square to
                        see flipping)</li>
                    <li><a href="http://demo.tutorialzine.com/2010/02/photo-shoot-css-jquery/demo.html"
                        class="external" target="_blank">Photo shoot effect</a> (Click on the big image
                        to see photo shoot effect)</li>
                    <li><a href="http://www.radoslavdimov.com/jquery-plugins/jquery-plugin-digiclock/"
                        class="external" target="_blank">HTC Clock</a></li>
                </ul>
            </li>
            <li>
                <h2><a name="JQueryTechnical"></a>
                    Do you know what are the best examples of technically cool jQuery plug-ins?</h2>
                <p>
                    Below are some of the best technically cool jQuery plug-ins. Use these as guidelines
                    for building your jQuery plug-ins:
                </p>
                <ul>
                    <li><a href="http://www.zurb.com/playground/ajax_upload" class="external" target="_blank">
                        Ajax Upload</a> (show a preview of the file being upload) )</li>
                    <li><a href="http://drew.tenderapp.com/kb/autosuggest-jquery-plugin" class="external"
                        target="_blank">AutoSuggest jQuery plugin</a> (Type in the textbox to see suggestions)</li>
                    <li><a href="http://www.avatar.co.nz/examples/jquery/popeye/" class="external"
                        target="_blank">jQuery.popeye</a> (Click the 'Enlarge' button to see effect)</li>
                    <li><a href="http://www.mediafront.org/project/osmplayer" class="external" target="_blank">
                        Open Standard Media Player (jQuery + HTML5)</a></li>
                    <li><a href="http://morrisonpitt.com/jsPlumb/html/jquery/demo.html" class="external"
                        target="_blank">jsPlumb connector</a></li>
                </ul>
            </li>

            <li>
                <h2><a name="do-not-use-onload-to-open-windows"></a>Do you know you should not open popup windows and use a javascript modal instead?</h2>
                <p>The popup blockers in several browsers prevent JavaScript from being used to open windows without user interaction (e.g. clicking a link). You should use an anchor tag instead.</p>
                <dl class="badCode">
                    <dt>
                        <pre>
                         <!--SSW Code Auditor - Ignore next line(HTML)-->
&lt;body onload="window.open('http://www.mydomain.com/document.html');return true;"&gt;
                   </pre>
                    </dt>
                    <dd>Figure: Bad Example - using JavaScrip in OnLoad event</dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        <pre>
&lt;a href="http://www.mydomain.com/document.html" target="_new"&gt;Document&lt;/a&gt;
                        </pre>
                    </dt>
                    <dd>Figure: Good Example - Using HTML anchor tag. This will open in a new tab or window depending upon browser configuration</dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        <pre>
&lt;a href="#" onclick="window.open('http://www.mydomain.com/document.html');return false;"&gt;Document&lt;/a&gt;
                        </pre>
                    </dt>
                    <dd>Figure: Good Example - Using Javascript in an onclick event means you can force a popup window in preference to a new tab and also control the size and placement of the window</dd>
                </dl>
                <p class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</p>
            </li>
        </ol>
    </div>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TF">Tim Fletcher</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DH">Daniel Hyles</a></p>
</asp:Content>