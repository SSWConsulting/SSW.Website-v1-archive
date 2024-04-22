<%@ Page Language="c#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Code Auditor - Utility to automate your code reviews" %>
<%@ Register TagPrefix="SSW" TagName="ProductTestimonial" Src="~/Components/ProductTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server">

    <img src="images/productBox_CodeAuditor.gif" alt="Code Auditor product box" />

    <div class="download">
        <a href="http://visualstudiogallery.msdn.microsoft.com/2859b7a1-9b11-4cbe-abde-f1718aa395ab" class="green next ignore">Free Download</a><br />
        <a href="http://www.ssw.com.au/ssw/Products/ProdCategory.aspx?CategoryID=CODAUD" class="red next">Go PRO</a><br />
        <a href="/ssw/Download/ProdBasket.aspx?ID=CA">Purchase PRO</a>
    </div>

    <div class="section">
        <ul>
            <li><a href="/ssw/CodeAuditor/UserGuideVS.aspx">Screenshots (free version &#8211; VS Extension)</a></li>
            <li><a href="/ssw/CodeAuditor/UserGuide.aspx">Screenshots (pro version)</a></li>
            <li><a href="/ssw/CodeAuditor/Flyer/codeauditorflyer.pdf">Promotional Flyers</a></li>
            <li><a href="/ssw/CodeAuditor/Resources.aspx">Resources</a></li>
            <li><a href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=CODAUD"> Bugs (Knowledgebase)</a></li>
            <li class="uservoice-link"><a href="https://codeauditor.uservoice.com/" target="_blank">Submit an Idea</a></li>
        </ul>
     </div>

<%--    <SSW:InfoBox ID="InfoBox1" runat="server" Css="interInfoBoxSide" Text="<h1>Attention: SSW Developers</h1><a href='../Products/prodsummarylist.aspx'>This page is on the new template as it is one of the 6 products we are focused on.</a>"></SSW:InfoBox>
    <h1>Attention: SSW Developers</h1>
    <a href='../Products/prodsummarylist.aspx'>This page is on the new template as it is one of the 6 products we are focused on.</a>--%>

    <SSW:ProductTestimonial ID="ProductTestimonial" runat="server" ProdID="CODAUD" CatID="10DOTNET" Display="SideBarRight"></SSW:ProductTestimonial>

    <div id="googleAd">

        <script type="text/javascript"><!--
        google_ad_client = "pub-4183033323844596";
        google_ad_width = 200;
        google_ad_height = 90;
        google_ad_format = "200x90_0ads_al_s";
        //2006-12-13: .NET
        google_ad_channel = "8171279479";
        google_color_border = "FFFFFF";
        google_color_bg = "FFFFFF";
        google_color_link = "666666";
        google_color_text = "000000";
        google_color_url = "008000";
        //--></script>

        <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>

    </div>
</asp:Content>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="images/codeauditor-logo.png" alt="Code Auditor logo" />
    <h2 class="tag">Keep your code healthy</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">
    <div id="productInfo" class="section">
        <div id="productHighlights">                 
            <ul class="good">
                <li>Scan your code - the easiest way to quality code</li>
                <li>MVPs favorite tool to enforce industry best practices</li>
                <li>Standard Edition is free and won't change your code</li> 
                <li>Command line and advanced rules are optional extras</li>
                <li>Add your own rules - there are <a href="/ssw/CodeAuditor/UserGuide.aspx#CreateRule">several easy ways</a></li>
                <li><a href="/ssw/Products/ProdCategory.aspx?CategoryID=CODAUD">Friendly licensing model</a></li>
                <li><a href="/ssw/KB/KB.aspx?KBID=Q1555527">30 day money back guarantee</a></li>
            </ul>
        </div>

        <h2>Are you looking to eradicate bugs and ensure consistency?</h2>
            <p>SSW Code Auditor is a code analysis tool that allows developers to take control of your code, ensuring large, complex source code can be simplified, cleaned and maintained. The built-in rules focus on the most popular .NET languages (C#, VB.NET) for both Windows Forms and ASP.NET; however, the flexibility of SSW Code Auditor allows the developer to add their own rules to target any language in any text file.</p>
            <p>As a project or company grows, managing code standards throughout your team becomes virtually impossible. Consistent code is crucial to future development and maintenance. SSW Code Auditor lets you take control of your code and automatically review your web apps and projects - giving you more opportunity to spend time where it really matters.</p>
            <p>Here at SSW, we face the problem of maintaining our standards across nearly five thousand web pages, over twenty active projects in both Visual Basic (6 and .NET) and C#. There comes a point where a tool to check our work is needed, this tool is SSW Code Auditor.</p>
            <p>SSW Code Auditor utilizes the power of Regular Expressions to audit your code. This powerful feature permits the user to write their own set of rules and have different rules for different projects.</p>

        <h2>2 methods to keep your code healthy!</h2>
            <table class="normal">
                <thead>
                    <tr>
                        <th><span style="font-size:120%">Free version</span><br />(download from the Visual Studio Gallery)</th>
                        <th><span style="font-size:120%">Pro version</span><br />(purchase simply and quickly)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <ul>
                                <li>Seconds to install and use the extension</li>
                                <li>Quickly scan your solution with just one click</li>
                                <li>Enforce quality control of your source code</li>                       
                            </ul>                     
                        </td>
                        <td>
                            <ul>
                                <li>Rich and powerful UI</li>
                                <li>Customize your code audit</li>
                                <li>Include into your build process</li>                       
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td>Step 1 - Install extension</td>
                        <td>Step 1 - Install exe</td>
                    </tr>
                    <tr>
                        <td>
                            <dl class="image">
                                <dt><a href="images/fromca.png" class="lightbox image" rel="gallery"><img src="images/fromvs.png" style="max-width:300px;" alt="Start Visual Studio to use SSW Code Auditor - VS Extension"/></a></dt>
                                <dd>Figure: Step 2 - Start Visual Studio 2010, 2012 or 2013</dd>
                            </dl>
                        </td>
                        <td>
                            <dl class="image">
                                <dt><a href="images/fromvs.png" class="lightbox image" rel="gallery"><img src="images/fromca.png" style="max-width:300px;" alt="Launch SSW Code Auditor from the start menu and audit your code!"/></a></dt>
                                <dd>Figure: Step 2 - Launch SSW Code Auditor</dd>
                            </dl>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <dl class="image">
                                <dt><a href="images/extension.png" class="lightbox image" rel="gallery"><img src="Images/extension.png" style="max-width:300px;" alt="SSW Code Auditor - VS Extension toolbar" /></a></dt>
                                <dd>Figure: Step 3 Open your project and click "Audit" on your VS Extension toolbar</dd>
                            </dl>
                        </td>
                        <td>
                            <dl class="image">
                                <dt><a href="images/addjob.png" class="lightbox image" rel="gallery"><img src="Images/addjob.png" style="max-width:300px;" alt="Adding and saving customized items to the job" /></a></dt>
                                <dd>Figure: Step 3 Add a job</dd>
                            </dl>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="/ssw/CodeAuditor/UserGuideVS.aspx">More screenshots (Free version &#8211; VS Extension)</a>
                        </td>
                        <td>
                            <a href="/ssw/CodeAuditor/UserGuide.aspx">More screenshots (Pro version)</a>
                        </td>
                    </tr>
                </tbody>
            </table>

        <h2>Key Features & Benefits</h2>
            <p>SSW Code Auditor allows you to:</p>
            <ul>
                <li>Verify that coding standards are maintained</li>
                <li>Prevent bad coding practices</li>
                <li>Seamlessly integrates with VS.NET</li>
            </ul>

            <table border="0" cellspacing="0" class="tblScreenshots normal">
                <tr>
                    <td width="100">
                        <a href="images/Thickbox/SSWCodeAuditorStartThickbox.jpg" title="Figure: Run SSW Code Auditor" class="lightbox image" rel="gallery"><img src="images/Thickbox/SSWCodeAuditorStartSmall.jpg" alt="Screen Shot"/></a>
                    </td>
                    <td valign="top">
                        <strong>Great, user-friendly wizard style interface.</strong> With our <a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx"> standards compliant</a> user interface, you are sure to have a consistently  great operating environment with SSW products.
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="images/Thickbox/MakeYourOwnRulesThickbox.jpg" title="Figure: General information of this rule" class="lightbox image" rel="gallery"><img src="images/Thickbox/MakeYourOwnRulesSmall.jpg" alt="Screen Shot"/></a>
                    </td>
                    <td valign="top">
                        <strong>Make your own rules!</strong> With our powerful regular expression enabled parsing engine, you have the flexibility to scan any text file for any kinds of rules. Rules can check specific filetypes and have exceptions based on other regular expression matches.
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="images/Thickbox/StayOnTopOfThingsThickbox.jpg" title="Figure: Indicate where you'd like the report issued to" class="lightbox image" rel="gallery"><img src="images/Thickbox/StayOnTopOfThingsSmall.jpg" alt="Screen Shot"/></a>
                    </td>
                    <td valign="top">
                        <strong>Stay on top of things.</strong> Code Auditor has in-built scheduling and email notification functionality so you can have regular reminders of what needs attention in your projects!
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="images/Thickbox/SpanningTheBigPictureThickbox.jpg" title="Figure: Add the paths to scan" class="lightbox image" rel="gallery"><img src="images/Thickbox/SpanningTheBigPictureSmall.jpg" alt="Screen Shot"/></a>
                    </td>
                    <td valign="top">
                        <strong>Spanning the big picture.</strong> Scan any number of directory trees with extensible path selection. As many development projects can be covered by your rules as you wish.
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="images/Thickbox/jobReportsThickbox.jpg" title="Figure: Job Report - before (Bad)" class="lightbox image" rel="gallery"><img src="images/Thickbox/jobReportsSmall.jpg" alt="Screen Shot"/></a>
                    </td>
                    <td valign="top">
                        <strong>Report Output.</strong> <a href="SampleReport_Good.xml">See a sample good report</a> from the Code Auditor process.<br/>
                        <a href="SampleReport_Bad.xml">See a sample bad report</a> from the Code Auditor process.
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="images/Thickbox/VSTSAddinThickbox.jpg" title="Visual Studio Team Foundation Server Add-in" class="lightbox image" rel="gallery"><img src="images/Thickbox/VSTSAddinThickboxSmall.jpg" alt="Screen Shot"/></a>
                    </td>
                    <td valign="top">
                        <strong>Visual Studio Team Foundation Server Add-in.</strong> Automatically adds an additional Check-in policy that runs SSW Code Auditor and stops developers from check in code that violates rules.<br/>
                        <a href="/ssw/Standards/DeveloperDotNet/Custom_Check-In_Policy_for_Visual_Studio_Team_System _v7.doc"><img src="Images/WordIcon.gif" alt="MS Word" />Custom check-in policy for VSTS Whitepaper</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="images/Thickbox/SelectJobThickbox.jpg" title="Figure: Select a predefined Job or create a new one" class="lightbox image" rel="gallery"><img src="images/Thickbox/SelectJobSmall.jpg"/></a>
                    </td>
                    <td valign="top">
                        <strong>Built-in sample projects & sample database.</strong> We offer a sample database and kinds of sample projects to help you run a professional demo scan.<br />
                    </td>
                </tr>
            </table>
            
        <h2>More Technical Features</h2>
            <p>Code Auditor includes the ability to:</p>
            <ul>
                <li>Scan TFS Pending changes (Only if using VS 2012)</li>
                <li>Check any text file</li>
                <li>Check file names</li>
                <li>Scan project directories for code that violates your rules</li>
                <li>Perform deep traversal of directories</li>
                <li>Scan websites for HTML that violates your rules - including the information served by the web server!</li>
                <li>Validate HTML code by using the Tidy HTML engine</li>
                <li>Use the report that is written to an .mdb, or to export to XML</li>
                <li>Organize separate projects into jobs</li>
                <li>Allow exceptions to rules, thus ignoring files that you are aware of</li>
                <li>Full scheduling abilities with email alerts, providing regular automated checks on your code base</li>
                <li>Use Regular Expression to define more rules</li>
                <li>Regular Expression builder included</li>
            </ul>

        <h2>Upcoming Features</h2>
            <ul>
                <li><del>Tatham Oddie Happy</del> (done)</li>
                <li><del>Robert MacLean Happy</del> (done)</li>
                <li><del>Mike Fourie Happy</del> (done)</li>
                <li><del>Upgrade from VS 2008 to VS 2010</del> (done)</li>
                <li><del>Paul Usher Happy - Use Telerik Grid (for filtering rules)</del> (done)</li>
                <li><del>Product Wiki</del> (done)</li>
                <li>Internal Web site to add/update rules - remove the pain of using SQL Scripts</li>
                <li>Replace the setup+package from wise to WIX</li>
                <li>The reference problem of 2 .sln - Development time when there are changes the Extension's interfaces</li>
                <li>Migrate to SQL Azure</li>
                <li>Share your rules with others</li>
                <li>Upgrade to LINQ - first need to allow a developer to associate to a company's rules, the use SQL Compact</li>
                <li>Auto update rules from our webservice + web page to show version history</li>
                <li>Use VS Task List (like StyleCop)</li>
                <li>Easy way to Ignore Rules</li>
                <li>Change from IE report to a pdf that can be emailed (even better a URL on SQL Azure + need a checkbox [x] Public)</li>
                <li>Right click on a project and "Scan with Code Auditor" (auto detect type of project)</li>
                <li>Document hacks on how you debug stuff in SSW.Framework</li>
                <li>Review SSW.Framework to see what can be removed</li>
                <li>Designer UI refresh</li>
                <li>In VS instantly detect and highlight errors as you code, right in the editor (like Resharper)</li>
                <li>Take advantage of Multi-core processors on scan (using PLinq)</li>
                <li>Own web site (like SSW SQL Deploy)</li>
                <li>From Regex To Code DOM/Parse Tree</li>
            </ul>

        <h2>System Requirements</h2>
            <ul>
                <li class="win8" >Windows 8</li>
                <li><a href="/ssw/Database/LinksSoftwareUpdates.aspx#MicrosoftNET">.NET Framework 4.5 or later</a></li>
                <li>VS 2010 (VSIX extension)</li>
                <li>VS 2012 Update 2(VSIX extension)</li>
                <li>VS 2012 Update 2/TFS 2012 Update 1(if using TFS Pending changes scan)</li>
                <li>VS 2013</li>
            </ul>

                
        <h2><a name="Rules"></a>Predefined Rules - examples of rules you can define</h2>
            <p><a href="/ssw/Standards/Rules/RulesToBetterSSWProducts.aspx">Do they go in Code Auditor or Link Auditor?</a></p>
            
        <h2>Top 5 rules</h2>    
            <ol>
                <li><a name="FontTags"></a>FONT tags must not be used
                    <ul>
                        <li>FONT and BASEFONT tags are deprecated by W3C. Reference: <a href="http://www.w3.org/TR/html4/present/graphics.html#edef-FONT" target="_blank">w3.org</a></li>
                    </ul>
                </li>
                <li><a name="FileSizeLimit"></a>Google File Size Limit
                    <ul>
                        <li>Did you know? the search appliance indexes up to 2.5MB of the document, caches it, and discards the rest. Reference: <a href="https://developers.google.com/search-appliance/documentation/50/admin_crawl/Introduction?hl=en-AU#filetype" target="_blank"> Google Crawler documentation</a></li>
                    </ul>
                </li>
                <li><a name="TableNotWidth"></a>Table tags should not specify the width</li>
                <li>Use Standard width for&nbsp; Ellipsis button. Look at <a href="../Standards/Rules/RulesToBetterWindowsForms.aspx#CommonControl">Do you make common control with certain width?</a> for more details</li>
                <li><a name="MiniSizerequired"></a>Windows Form should have a minimum size to avoid unexpected UI behavior. See <a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Forms.aspx#Minimize"> Do you keep a minimum size in the window forms?</a> for more details.</li>                    
            </ol>  
            <p><a href="Rules.aspx">See more Rules...</a></p>      
        
        <h2>What does the unregistered version give me?</h2>
            <p>In respect to the unregistered version we know you want to see it working before you buy it. We aim for that.</p>
            <div class="greybox">
                Note: we also give free version targeted to the little guys<br />
                More details see <a href="/ssw/KB/KB.aspx?KBID=Q658302">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q658302</a>
            </div>
            <p>SSW provides free phone and email support to answer queries on registered products.</p>

        <h2>How to show your application is 'SSW Code Auditor' Compliant?</h2>
            <p>To show your users that you have taken the care to create a 'healthy' code, you may display this image on any web pages and applications that are validated by Code Auditor.</p>
            <img src="Images/codeauditorcompliant.gif" alt="Code Auditor Compliant icon" />
            <p>Here is the HTML to add this icon to your web page:</p>
            <div class="code">
&lt;a href="http://www.ssw.com.au/ssw/CodeAuditor"&gt;
&lt;img src="http://www.ssw.com.au/ssw/Images/codeauditorcompliant.gif" alt="Code Auditor compliant" /&gt;&lt;/a&gt;
            </div>
            <p>You can also download it in <a href="images/codeauditorcompliant.png" class="gif">.png</a> or <a href="images/codeauditorcompliant.gif" class="gif">.gif</a> formats.</p>
            
            <h3>Where should I put this icon?</h3>
            <p>We recommend the image to be placed on the footer (for websites) or in the "About Box" (for WinForm applications).</p>
            
        <h2>Getting Support</h2>
            <p>If you can't find it in the product documentation, then check our <a href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=CODAUD"> knowledge base</a> for further information and tips about this product.</p>
            <p>If you think that one of our rules is incorrect, please <a href="../KB/KB.aspx?KBID=Q1683629">tell us</a> about it.</p>
            <p>Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a> and <a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;"> feedback</a> so that we can evolve our software into a product that matches your requirements. We guarantee a response.</p>

        <h2>I'm Sold... What's next?</h2>
            <div class="download">
				<a href="http://www.ssw.com.au/ssw/Download/ProdBasket.aspx?ID=CA" class="green next ignore">Download Trial</a><br />
                <a href="http://www.ssw.com.au/ssw/Products/ProdCategory.aspx?CategoryID=CODAUD" class="red next">Go PRO</a><br />
                <a href="/ssw/Download/ProdBasket.aspx?ID=CA">Purchase PRO</a>
	        </div>
    </div>

    <div class="section greybox">
        <p><strong>Our major competitor is the built in Visual Studio functionality called Code Analysis (previously called FxCop)</strong></p>
        <p>SSW Code Auditor is similar to <a href="/ssw/Redirect/MSFxCop.htm" target="_blank">Microsoft FxCop</a> but has some important differences.</p>
        <ul>
            <li>FxCop has a good set of rules however writing your own rules is not in the UI... and not many developers go to the trouble of delving down and writing their own assemblies. Consequently they just stick with the rules they are given.</li>
            <li>Code Auditor has a lot of rules - none of which are in FxCop, eg. the rules listed on our <a href="http://rules.ssw.com.au/Pages/default.aspx">Rules To Better pages</a>...</li>
            <li>FxCop works against compiled assemblies only (it uses MSIL to get information about the code). SSW Code Auditor on the other hand looks at the source code itself. This means you can worry about the code formatting and comments.</li>
            <li>FxCop only works against .NET assemblies. SSW Code Auditor on the other hand works against any plain text files. So now you can write any rules against any files in the solution.</li>
            <li>Overall <a href="/ssw/Redirect/AllFxCopRules.htm">FxCop rules</a> are good - however many are obscure (Eg. we do not worry about the <a href="/ssw/Redirect/FxCopGlobalizationRules.htm"> Globalization rules</a>, <a href="/ssw/Redirect/FxCopMobilityRules.htm">Mobility rules</a> and <a href="/ssw/Redirect/FxCopPortabilityRules.htm">Portability rules</a>). SSW Code Auditor on the other hand has rules that are more 'general developer' oriented.</li>
            <li>In addition SSW Code Auditor provides many rules to improve your User Interface.</li>
            <li>For most users <a href="/ssw/Redirect/MSDNMagBugslayer.htm">FxCop rules are fixed</a> (unless you want to build a .NET Assembly). SSW Code Auditor rules can easily be extended using regular expressions.</li>
            <li>Out of the box FxCop only provides one type of <a href="/ssw/HealthAuditor/FxCopTutorial.aspx#FxCopReport"> report in xml</a>. SSW Code Auditor on the other hand provides a report that is flexible and shows the data in different views.</li>
            <li>Both can be scheduled via a command line. SSW Code Auditor's <a href="UserGuide.aspx#Schedule">wizard</a> makes it real easy to help you keep your code projects clean all the time.</li>
            <li>SSW Code Auditor includes a VS.NET Extension, which encourages you to use both within the <a href="/ssw/HealthAuditor/UserGuide.aspx">VS.NET environment</a>.</li>
        </ul>
    </div>

    <script type="text/javascript" charset="utf-8">
        var is_ssl = ("https:" == document.location.protocol);
        var asset_host = is_ssl ? "https://s3.amazonaws.com/getsatisfaction.com/" : "http://s3.amazonaws.com/getsatisfaction.com/";
        document.write(unescape("%3Cscript src='" + asset_host + "javascripts/feedback-v2.js' type='text/javascript'%3E%3C/script%3E"));
    </script>

    <script type="text/javascript" charset="utf-8">
        var feedback_widget_options = {};
        feedback_widget_options.display = "overlay";
        feedback_widget_options.company = "ssw";
        feedback_widget_options.placement = "left";
        feedback_widget_options.color = "#222";
        feedback_widget_options.style = "idea";
        var feedback_widget = new GSFN.feedback_widget(feedback_widget_options);
    </script>

</asp:Content>
