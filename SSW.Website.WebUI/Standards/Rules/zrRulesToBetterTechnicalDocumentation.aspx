<%@ Page Language="VB" MasterPageFile="~/Masters/RavenSubpage.master" AutoEventWireup="false"
    Title="SSW Rules to Better Technical Documentation" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>

<asp:Content ID="title" ContentPlaceHolderID="title" runat="server">
    <h1>SSW Rules to Better Technical Documentation</h1>
</asp:Content>

<asp:Content ID="sidebar" ContentPlaceHolderID="sidebarcontainer" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontentFull" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />

    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230546563686E6963616C253230446F63756D656E746174696F6E')">Let us know</a> what you think.
    </p>
    <div class="TableOfContents">
        <h3>Rules to Better Technical Documentation</h3>
        <ol>
            <li><a href="#ReaderAuthor">Are you referring to the reader and author correctly in your document?</a></li>
            <li><a href="#Instructions">Do you use the correct symbols when documenting instructions?</a></li>
            <li><a href="#InstructionsOrder">Do you use the right order of instructions?</a></li>
            <li><a href="#Highlighting">Do you highlight instructions correctly in your document?</a></li>
            <li><a href="#Numbers">Do you make numbers more readable?</a></li>
            <li><a href="#VersionNumber">Do you include version numbers in your file?</a></li>
            <li><a href="#Consistent">Are you referring to the reader and author consistently throughout your document?</a></li>
            <li><a href="#FigureCaption">Do you add a useful figure caption in bold below all images?</a></li>
            <li><a href="#FewWords">Do you avoid using unnecessary words?</a></li>
            <li><a href="#WillNotShould">Do you use "will", not "should"?</a></li>
            <li><a href="#Setup">Do you use &quot;setup&quot; and &quot;set up&quot; correctly?</a></li>
            <li><a href="#Email">Do you know email should be email without the hyphen?</a></li>
            <li><a href="#Space">Do you know commas and full stops always should have "one" space after it?</a></li>
            <li><a href="#Quote">Do you use quotation mark for controls?</a></li>
            <li><a href="#BadEgThenGoodEg">Do you show examples, a "bad example", then a "good example"?</a></li>
            <li><a href="#AddQuotation">Do you know how to add quotations?</a></li>
            <li><a href="#Login">Do you know when to use log on, log in, and sign in?</a></li>
            <li><a href="#UseCannot">Do you use "cannot" and "website" instead of separated words? </a></li>
            <li><a href="#Taskbar">Text - Do you use "Taskbar" instead of "Task bar"?</a></li>
            <li><a href="#TryAgain">Text - Do you use "Try Again" instead of "Retry"?</a></li>
            <li><a href="#WordSpellingAndGrammarChecker">Spelling - Do you use Microsoft Word's spelling and grammar checker to double check your content is professional?</a></li>
            <li><a href="#DigitalForms">Do you use words instead of digits for low numbers? </a></li>
            <li><a href="#Capitalize-Title">Do you know how to capitalize titles?</a></li>
            <li><a href="#Avoid-that">Do you avoid using "that" when it's not needed?</a></li>
            <li><a href="#AvoidingFullStops">Do you avoid full stops at the end of bullet point lists?</a></li>
            <li><a href="#spelling">Do you always use correct spelling?</a></li>
        </ol>
    </div>

    <!-- This whole damn document appears to have been written by a fucking idiot who doesn't know the leastways shit about HTML. Hey, it wouldn't be so bad if it 
    was someone like the PA who really doesn't know anything about HTML, but lo and behold, it's a bunch of fucking developers who wrote this shit. Are you for 
    real? Do developers not know HTML? Isn't that a bit like a rocket scientist not knowing e=MC^2? Well, I've gone through this whole document and fixed up the 
    retard but it pains me to know there are "developers" like this out there. -->

    <ol>
        <li>
            <h2>
                <a name="ReaderAuthor"></a>Are you referring to the reader and author correctly
                in your document?
            </h2>
            <p>
                In technical writing, there are only two valid subjects:
            </p>
            <ul>
                <li>&quot;You&quot; (the reader)</li>
                <li>The subject (the software, hardware, function etc.)</li>
            </ul>
            <p>
                For example:
            </p>
            <dl class="bad">
                <dt>When the CD is inserted, a Windows dialog will be shown.</dt>
                <dd>Figure: Bad Example - This example does not address the reader or from the point of the subject (the software in this case). It's using a passive voice.</dd>
            </dl>
            <dl class="good">
                <dt>When you insert a CD, Windows shows a dialog.</dt>
                <dd>Figure: Good Example - This example does address the reader and is more engaging.</dd>
            </dl>
            <p>
                It is occasionally acceptable to use the first person, "we", "I", "us", "our" etc.
            An example of an acceptable use of first person is, &quot;We recommend that you
            backup your database first.&quot; However, you must <b>never use the first person to refer to the reader</b>:
            </p>
            <dl class="bad">
                <dt>We will now open a web browser and go to the home page.</dt>
                <dd>Figure: Bad Example - It is unclear who the "we" is.</dd>
            </dl>
            <dl class="good">
                <dt>You can now open a web browser and go to the home page.</dt>
                <dd>Figure: Good Example - These instructions are clear and direct.</dd>
            </dl>
        </li>
        <li>
            <h2>
                <a name="Instructions"></a>Do you use the correct symbols when documenting instructions?
            </h2>
            <p>
                An important area which Microsoft does not apply strict standards to, is documenting
                instructions. This is often a confusing dilemma for many people, as the way in which
                instructions are worded and arranged is very important in helping the user understand
                the instructions. Therefore, the instructions should be minimalistic, clear and
                concise.
            </p>
            <p>
                In Ken Getz's words you MUST ALWAYS list the items in the order the user selects
                them. I often see on Microsoft documentation: 'Select All Programs from the Start
                menu'. That's inexecusable!
            </p>
            <dl class="bad">
                <dt>Click Start, then All Programs, then Accessories, then Calculator.</dt>
                <dd>Figure: Bad Example - No visual cue is given for separate steps</dd>
            </dl>
            <dl class="bad">
                <dt>Start - All Programs - Accessories - Calculator</dt>
                <dd>Figure: Bad Example - Dashes are easy to glance over</dd>
            </dl>
            <dl class="bad">
                <dt>Start --> All Programs --> Accessories --> Calculator</dt>
                <dd>Figure: Bad Example - This is better but looks unprofessional</dd>
            </dl>
            <dl class="good">
                <dt>Start | All Programs | Accessories | Calculator</dt>
                <dd>Figure: Good Example</dd>
            </dl>
            <div class="productBox">We have a program called <a href="/ssw/LinkAuditor/">SSW Link Auditor</a> to check for this rule. We offer a <a href="/SSW/LinkAuditor/Samples/Rules/CorrectSymbols.aspx">rule sample page</a> for demo scan.</div>
        </li>
        <li>
            <h2>
                <a name="InstructionsOrder"></a>Do you use the right order of instructions?
            </h2>
            <p>
                When writing the instructions for a series of operations, be sure you keep the operations in the right order. With a clear order, users will be less likely to be confused.
            </p>
            <dl class="bad">
                <dt>Select Options from the Tools Menu.</dt>
                <dd>Figure: Bad Example - These instructions are in reverse and needs to be processed by the user.</dd>
            </dl>
            <dl class="good">
                <dt>Select Tools | Options</dt>
                <dd>Figure: Good Example - These instructsion are in order and do not require any effort from the user.</dd>
            </dl>
        </li>
        <li>
            <h2><a name="Highlighting"></a>Do you highlight items correctly in your document?
            </h2>
            <p>
                When highlighting items (file names, user commands etc.) be sure to:
            </p>
            <ol>
                <li>Distinguish the items from the rest of the surrounding text; and</li>
                <li>Be consistent.</li>
            </ol>
            <p>
                Use the following rules to highlight items in your document.
            </p>

            <!-- Wow. A miracle. Here is a table that was not fucked. Well done, Brite. That does not mean I have excused you from 
            that retard thing you did where you put javascript in the .css file however. -->

            <table class="clsSSWTable" width="70%">
                <tr>
                    <th valign="top">Style
                    </th>
                    <th valign="top">Use this style on
                    </th>
                    <th valign="top">Example</th>
                </tr>
                <tr>
                    <td valign="top">
                        <b>Bold text </b>
                    </td>
                    <td valign="top">Menus, commands, dialog box options, file names and paths</td>
                    <td valign="top">To access the application, click <b>Start | Programs | Accessories | System Tools |
                            Disk Defragmenter</b></td>
                </tr>
                <tr>
                    <td valign="top">UPPERCASE</td>
                    <td valign="top">Code keywords and database elements</td>
                    <td valign="top">Use the INNER JOIN clause in SQL Server to join one table to another.</td>
                </tr>
                <tr>
                    <td valign="top">
                        <b>Initial Capitals +&nbsp; Bold</b></td>
                    <td valign="top">File paths and file names</td>
                    <td valign="top">Now open <b>C:\My Documents\Invoice.doc</b>.</td>
                </tr>
                <tr>
                    <td valign="top">
                        <span style="font-family: Courier New">Monospace (Courier New font)</span></td>
                    <td valign="top">Code samples, error messages</td>
                    <td valign="top">You will see the following error: <span style="font-family: Courier New">error opening
                            database: database is currently in use</span>.</td>
                </tr>
            </table>
            <p>Remember: Never Underline the text when it isn't a link as per the rule: <a href="http://www.ssw.com.au/ssw/standards/rules/RulesToBetterWebsitesNavigation.aspx#DontUseUnderlines">Do you use underlines only on links?</a></p>
        </li>
        <li>

            <!-- Thank you, Tiago. I knew I could trust you to write good html. This is like the one bright heaven in this sea of darkness. -->

            <h2><a name="Numbers"></a>Do you make numbers more readable?
            </h2>
            <p>
                Remember to use dividers when quoting phone numbers or large sums.
            </p>
            <dl class="bad">
                <dt>
                    <ol>
                        <li>2721654230</li>
                        <li>Phone: 8583532311</li>
                    </ol>
                </dt>
                <dd>Figure: Bad Example - : These number are unweldy and difficult to read</dd>
            </dl>
            <dl class="good">
                <dt>
                    <ol>
                        <li>2,721,654,230</li>
                        <li>Phone: (858) 353-2311</li>
                    </ol>
                </dt>
                <dd>Good example: A comma, a dash and some spacing makes these large digits easier to
                    read</dd>
            </dl>
        </li>
        <li>
            <h2><a name="VersionNumber"></a>
                Do you include version numbers in your file?
            </h2>
            <p>
                It is very important to have your Word, PowerPoint, PDF's and other documents up-to-date and having the version number on the RHS of the footer is the best way to show which version you are looking at.
            </p>
            <p>
                Please read to understand how you increase the version number:
            </p>
            <ul>
                <li>Major <strong>1.0</strong> - rarely change - only with major upgrades (e.g. complete redesign)</li>
                <li>Minor <strong>1.1</strong> - new features / release (customer facing) - (e.g. add/remove a heading or a section)</li>
                <li>Revision <strong>1.11</strong> - emergency maintenance, spelling fixes</li>
            </ul>
            <p>
                It is also good practice to include a version number in the name of the file. This helps us to navigate through the old and the new versions. It makes
                it easy if we decide to roll back any changes and use an older version.
            </p>
            <p>
                For example:
            </p>
            <dl class="bad">
                <dt>extreme_email_file<br />
                    extreme_email_new_file<br />
                    extreme_email_latest
                </dt>
                <dd>Figure: Bad Example - These files do not show any version information.
                </dd>
            </dl>
            <dl class="good">
                <dt>Extreme_Emails_v1<br />
                    Extreme_Emails_v2<br />
                    CodeAuditor_Ver1<br />
                    CodeAuditor_Ver2
                </dt>
                <dd>Figure: Good Example - These files show the version information.
                </dd>
            </dl>
        </li>
        <li>
            <h2><a name="Consistent"></a>
                Are you referring to the reader and author consistently throughout your document?</h2>
            <p>
                When writing technical documentation, one of your primary objectives is to ensure
                the document is written consistently to ensure a flowing reading experience. Ensure
                the reader and author are correctly referenced throughout your document, for example:
            </p>
            <dl class="bad">
                <dt>When one wants to scan for viruses, you can open the antivirus software.</dt>
                <dd>Figure: Bad Example - The user is referred in two ways and flow is broken</dd>
            </dl>
            <dl class="good">
                <dt>When you want to scan for viruses, you can open the antivirus software.</dt>
                <dd>Figure: Good Example - There is no noticeable break in the reading flow</dd>
            </dl>
            <p>
                The first example is bad because it confuses the reader as to whom the author is
                referring.
            </p>
        </li>
        <li>
            <h2><a name="FigureCaption"></a>
                Do you add a useful figure caption in bold below all images?</h2>
            <p>
                When you add an image to a website or application, follow the Microsoft Word standard
                and use <b>&quot;Figure: Description&quot;</b> to describe your images. Read more
                about this rule on our <a href="/ssw/Standards/Rules/RulestoBetterWebsitesLayout.aspx#AlwaysAddFiguretoImages">Rules to Better Websites - Layout</a>.
            </p>
        </li>
        <li>
            <h2><a name="FewWords"></a>
                Do you avoid using unnecessary words?</h2>
            <p>
                When writing any documentation it is vital that you avoid using unnecessary words
                to keep the reader interested and focussed on the content. This is especially true
                in technical documentation, as most of the content is factual.
            </p>
            <dl class="bad">
                <dt>Click the &quot;Select&quot; button</dt>
                <dd>Figure: Bad Example - There are too many unnecessary words</dd>
            </dl>
            <dl class="good">
                <dt>Click &quot;Select&quot;</dt>
                <dd>Good Example - This is short and to the point.</dd>
            </dl>
            <p>
                It is less wordy, and still gets the message across. Look through your document
                now - where else can you get rid of words that don't add any value to the sentence?
            </p>
        </li>
        <li>
            <h2><a name="WillNotShould"></a>Do you use &quot;will&quot;, not &quot;should&quot;?
            </h2>
            <p>
                When explaining steps in a process, e.g. Printing a file, make sure to say something
                &quot;will&quot; happen or is happening. This is especially important when describing
                your own software, because saying something &quot;should&quot; happen implies that
                it may or may not happen, i.e. there could be bugs!
            </p>
            <dl class="bad">
                <dt>
                    <p>
                        To print your document:
                    </p>
                    <ol>
                        <li>Select <strong>File | Print</strong>. The Print dialog should now show.</li>
                        <li>Select the number of copies and click <strong>Print</strong>. The file should now print.</li>
                    </ol>
                </dt>
                <dd>Figure: Bad Example - Using &quot;should&quot; implies uncertainty</dd>
            </dl>
            <dl class="good">
                <dt>
                    <p>
                        To print your document:
                    </p>
                    <ol>
                        <li>Select <strong>File | Print</strong>. The Print dialog is shown.</li>
                        <li>Select the number of copies and click <strong>Print</strong>. The file will now print.</li>
                    </ol>
                </dt>
                <dd>Good example - Using present or future tense implies confidence</dd>
            </dl>
            <div class="productBox">
                This is *not* detected by <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> because it picks up false positives.
            </div>
        </li>
        <li>
            <h2><a name="Setup"></a>
                Do you use 'setup' and 'set up' correctly?</h2>
            <p>
                Often when writing technical documents, you will instruct the reader to 'set up' his PC or run a 'setup' file. Remember that 'set up' is a verb, and 'setup' is a noun.
            </p>
            <dl class="good">
                <dt>Verify that your network setup is correct before attempting to connect to the Internet.</dt>
                <dd>Figure: Good Example - This is the correct use of "setup"</dd>
            </dl>
            <dl class="good">
                <dt>Click <strong>Go</strong> to set up your database.</dt>
                <dd>Figure: Good Example - This is the correct use of "set up"</dd>
            </dl>
            <p>
                'Set up' is a verb with many meanings, most commonly 'to establish something.' 'He is going to set up shop.'
            </p>
            <p>
                The single word 'setup' is a noun, basically meaning an 'arrangement.' 'The setup was all wrong.'
            </p>
            <p>
                How can you remember this? Mentally replace 'setup' or 'set up' with 'setting up.' If the sentence still basically
               makes sense, use two words. If it doesn't, use the single word. For example, the
               sentence 'he is setting up shop' makes sense. 'The setting up was all wrong' does not.
            </p>
        </li>
        <li>
            <h2><a name="Email"></a>
                Do you know email should be email without the hyphen?</h2>
            <p>
                Microsoft Word spell checker is lenient about 'email' versus 'e-mail', but you should use 'email' instead.
            </p>
            <p>
                What if you wanted to say "Re-email this report please"... surely you would not say "Re-e-mail this report."
            </p>
            <div class="productBox">
                We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#Email">SSW Code Auditor</a> to check for this rule.
            </div>
        </li>
        <li>
            <h2><a name="Space"></a>
                Do you know commas and full stops always should have "one" space after it?
            </h2>
            <p>
                When writing any documentation it is important to put only <strong>"one"</strong>
                space after commas or other punctuation. This makes the document easy to read and
                looks more professional.
            </p>
            <p>
                For example:
            </p>
            <dl class="bad">
                <dt>Looking for your sent emails through a searching tool is simple.By using Windows
                    Desktop search,you can search your relevant emails by recipient and/or by subject.
                </dt>
                <dd>Figure: Bad Example - No space after comma and full stop</dd>
            </dl>
            <dl class="bad">
                <dt>Looking for your sent emails through a searching tool is simple. By using
                    Windows Desktop search, you can search your relevant emails by recipient
                    and/or by subject.
                </dt>
                <dd>Figure: Bad Example - Two spaces after comma and full stop</dd>
            </dl>
            <dl class="good">
                <dt>Looking for your sent emails through a searching tool is simple. By using Windows
                    Desktop search, you can search your relevant emails by recipient and/or by subject.
                </dt>
                <dd>Figure: Good Example - One space after full stop and comma</dd>
            </dl>
        </li>
        <li>
            <h2><a name="Quote"></a>
                Do you use quotation mark for controls?</h2>
            <p>
                Quotation mark can help user distinguish controls from the normal words. This is especially important
                in technical documentation, as the control names can be normal words.
            </p>
            <dl class="bad">
                <dt>Click the Upgrade link</dt>
                <dd>Figure: Bad Example - It's not clear that Upgrade is a control</dd>
            </dl>
            <dl class="good">
                <dt>Click the "Upgrade" link</dt>
                <dd>Figure: Good Example - This is much clearer to the user what to search for.</dd>
            </dl>
        </li>
        <li>
            <h2><a name="BadEgThenGoodEg"></a>Do you show examples, a "bad example", then a "good example"?
            </h2>
            <p>
                Always show the bad example first, then good example like below:
            </p>
            <dl class="bad">
                <dt>
                    <p>
                        To print your document:
                    </p>
                    <ol>
                        <li>Select <strong>File | Print</strong>. The Print dialog <span style="background-color: #FFFF00">should</span> now show.</li>
                        <li>Select the number of copies and click <strong>Print</strong> . The file will now print.</li>
                    </ol>
                </dt>
                <dd>Figure: Bad Example - Using 'should' implies uncertainty</dd>
            </dl>
            <dl class="good">
                <dt>
                    <ol>
                        <li>Select <strong>File | Print</strong>. The Print dialog <span style="background-color: #FFFF00">is</span> shown.</li>
                        <li>Select the number of copies and click <strong>Print</strong>. The file will now print.</li>
                    </ol>
                </dt>
                <dd>Good example - Using present or future tense implies confidence</dd>
            </dl>
            <p>
                Note: <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/HowToUseBalloons.aspx">Images with Balloons might be better in this case.</a>
            </p>
        </li>
        <li>
            <h2><a name="AddQuotation"></a>Do you know how to add quotations?
            </h2>
            <p>
                When you add a quotation, put them in a new line with an indent.
            </p>
            <dl class="bad">
                <dt>
                    <p>Software development can be painful and costly. Hang on, that should say "Software development IS painful and costly."</p>
                </dt>
                <dd>Figure: Bad Example - The quotation without a new line or indent</dd>
            </dl>
            <dl class="good">
                <dt>
                    <p>Software development can be painful and costly. Hang on, that should say:</p>
                    <p style="padding-left: 15px;">"Software development IS painful and costly."</p>
                </dt>
                <dd>Figure: Good example - The quotation on a new line and indenting</dd>
            </dl>
            <p>You should always indent any quotes that you use on a new line. </p>
            <dl class="image">
                <dt>
                    <img src="Images/NoIndent.jpg" alt="You can't find the quote easily." />
                </dt>
                <dd>Figure: Bad example, it is hard to tell where the quote is</dd>
            </dl>
            <dl class="image">
                <dt>
                    <img src="Images/IndentQuote.jpg" alt="Indent the quote and you can see it clearly " />
                </dt>
                <dd>Figure: Good example, it is obvious that this is a quote and it is laid out nicely. </dd>
            </dl>
            <p>Tip: In Windows Live Writer there is a button for this:</p>
            <dl class="image">
                <dt>
                    <img src="Images/QuoteButton.jpg" alt="Quote Button in Windows Live Writer " />
                </dt>
                <dd>Figure: Use the Quote button in Windows Live Writer</dd>
            </dl>
            <p>This wraps your text in a &lt;blockquote&gt; HTML element. This lets you display it any way you like on a web page.</p>
        </li>
        <li>
            <h2><a name="Login"></a>Do you know when to use log on, log in, and sign in?
            </h2>
            <p>
                In order to connect (with a username and password) to: 
            </p>
            <ul>
                <li>a Winforms application, you "log in"</li>
                <li>a Webforms application, you "sign in"</li>
                <li>a PC, Server or Domain, you "log on"</li>
            </ul>
            <dl class="bad">
                <dt>Would you like to <span style="background-color: Yellow">logon</span> to your new account?<br />
                    Would you like to <span style="background-color: Yellow">log-on</span> to your new account?<br />
                    Would you like to <span style="background-color: Yellow">login</span> to your new account?<br />
                    Would you like to <span style="background-color: Yellow">log-in</span> to your new account?<br />
                    Would you like to <span style="background-color: Yellow">signin</span> to your new account?<br />
                    Would you like to <span style="background-color: Yellow">sign-in</span> to your new account?<br />
                </dt>
                <dd>Figure: Bad examples</dd>
            </dl>
            <dl class="good">
                <dt>Would you like to <span style="background-color: Yellow">log in</span> to your timesheeting application?
                </dt>
                <dd>Figure: Good example - Winform</dd>
            </dl>
            <dl class="good">
                <dt>Would you like to <span style="background-color: Yellow">sign in</span> to your email account?
                </dt>
                <dd>Figure: Good example - Webform</dd>
            </dl>
            <dl class="good">
                <dt>Would you like to <span style="background-color: Yellow">log on</span> to your computer?
                </dt>
                <dd>Figure: Good example - PC, Server or Domain</dd>
            </dl>
            <p>
                See the <a href="http://en.wikipedia.org/wiki/Login">Login From Wikipedia</a>.
            </p>
            <div class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</div>
        </li>
        <li>
            <h2><a name="UseCannot"></a>Do you use "cannot" and "website" instead of separated words?
            </h2>
            <p>
                Grammatically, all of them are acceptable spellings, but in these specific cases, one word is more usual. Refer to <a href="http://www.oxforddictionaries.com/view/entry/m_en_gb0120300">AskOxford</a> for reference.<br />
                Note: When there are two ways of doing something, we make a rule on it one way with the goal of having complete consistency. 
            </p>
            <dl class="bad">
                <dt>You <span style="background-color: Yellow">can not</span> change the world.<br />
                </dt>
                <dd>Figure: Bad examples &#8211; two separated words</dd>
            </dl>
            <dl class="good">
                <dt>You <span style="background-color: Yellow">cannot</span> change the world.
                </dt>
                <dd>Figure: Good example - using these terms in one word</dd>
            </dl>
            <div class="productBox">
                We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.
            </div>
        </li>
        <li>
            <h2><a name="Taskbar"></a>Text - Do you use "Taskbar" instead of "Task Bar"?</h2>
            <dl class="goodImage">
                <dt>
                    <img src="Images/Taskbar.gif" alt="Good Taskbar example" /></dt>
                <dd>Figure: Good Example - You should use the "taskbar" over "task bar"</dd>
            </dl>
        </li>
        <li>
            <h2><a name="TryAgain"></a>Text - Do you use "Try Again" instead of "Retry"?</h2>
            <p>They are similar but "Retry" is a more computer jargon like.</p>
            <dl class="goodImage">
                <dt>
                    <img src="Images/TryAgain.gif" alt="Good Taskbar example" /></dt>
                <dd>Figure: Internet Explorer uses "Try Again" instead of "Retry"</dd>
            </dl>
        </li>
        <li>
            <h2><a name="WordSpellingAndGrammarChecker"></a>Spelling - Do you use Microsoft Word's spelling and grammar checker to double check your content is professional?
            </h2>
            <p>
                Improper spelling, grammar and punctuation in your content give a bad impression of your company. It is unprofessional so always use Microsoft Word's 'Spelling & Grammar' checker prior to saying 'done'. Bottom line aim to say 'done and spell checked'.
            </p>
            <p>
                If it is web content you need an extra step. So Copy and Paste it to MS Word then press <strong>F7</strong> (or on the ribbon go to <strong>Review > Spelling & Grammar</strong>) to check your text
            </p>
            <dl class="image">
                <dt>
                    <img src="Images/CheckAndSpelling.jpg" alt="check and spelling button" /></dt>
                <dd>Figure: Click on "Spelling &amp; Grammar" button to check your web content.</dd>
            </dl>
            <p>
                Please read the related rule here - <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/SpellingGrammarAndPunctuation.aspx">Are you careful with your spelling, grammar and punctuation?</a>
            </p>
        </li>
        <li>
            <h2><a name="DigitalForms"></a>Do you use words instead of digits for low numbers?
            </h2>
            <p>
                Whenever writing numbers for a web audience, it's generally a good idea to use numerals, especially for complicated numbers. Numerals are more easily noticed when a page is scanned by a user's eye.
            </p>
            <dl class="bad">
                <dt>There are seventy three good reasons to do this.</dt>
                <dd>Figure: Bad Example - The number is spelled out.</dd>
            </dl>
            <dl class="good">
                <dt>There are 73 good reasons to do this.</dt>
                <dd>Figure: Good Example - This is easy to read and more noticeable</dd>
            </dl>
            <p>The exception is generally very small numbers (one and two) which are normally spelled out.</p>
            <dl class="bad">
                <dt>2 heads are better than 1.</dt>
                <dd>Figure: Bad Example - Numerals used</dd>
            </dl>
            <dl class="good">
                <dt>Two heads are better than one</dt>
                <dd>Figure: Good Example - Numbers are spelled out</dd>
            </dl>
        </li>

        <li>
            <a name="Capitalize-Title"></a>
            <h2>Do you know how to capitalize titles?</h2>
            <p>It is important to use correct capitalization when writing titles/headings for things.</p>
            <dl class="bad">
                <dt>"The Lord of the rings &#8211; Return of the king"</dt>
                <dd>Figure: Bad Example &#8211; The first letter of the first and last words should always be capitalized</dd>
            </dl>
            <dl class="good">
                <dt>"The Lord of the Rings &#8211; Return of the King"</dt>
                <dd>Figure: Good Example &#8211; Only conjunctions and prepositions (both having similar rules) should not be capitalized e.g. at, on, but, and, with etc.</dd>
            </dl>
            <p>For more information go to <a href="http://www.writersblock.ca/tips/monthtip/tipmar98.htm">Writer's Block - Writing Tips - Capitalization in Titles</a>.</p>
            <p>It's best to only do this on main titles (which are important), and leave subtitles in normal sentence form. Basically it saves hassles... English is a confusing language and there are too many variations that cause too many arguments.</p>
            <dl class="goodImage">
                <dt>
                    <img src="Images/capitalization.jpg" alt="capitalization" /></dt>
                <dd>Figure: Good Example - the main title has capitalization and the sub-titles don't</dd>
            </dl>
        </li>

        <li>
            <a name="Avoid-that"></a>
            <h2>Do you avoid using "that" when it's not needed?</h2>
            <p>
                'That' is occasionally an unnecessary addition to a sentence, especially if it's a title that would benefit from being short and punchy. 
            As such, avoid using 'that' in a title wherever possible.
            </p>
            <dl class="bad">
                <dt>"Building Software that People Understand"</dt>
                <dd>Figure: Bad Example - unnecessary 'that'</dd>
            </dl>
            <dl class="good">
                <dt>"Building Software People Understand"</dt>
                <dd>Figure: Good Example</dd>
            </dl>
        </li>

        <li>
            <a name="AvoidingFullStops"></a>
            <h2>Do you avoid full stops at the end of bullet point lists?</h2>
            <p>Excess punctuation without a purpose can make a document or web page look overly busy. For a list of short sentences, don&#25264; have full stops at the end of each bullet point. The exception to this rule is when you have more than one sentence in a single bullet point.</p>
            <dl class="bad">
                <dt>
                    <ul>
                        <li>Sentence 1.</li>
                        <li>Sentence 2.</li>
                        <li>Sentence 3.</li>
                    </ul>
                </dt>
                <dd>Figure: Bad Example - Too much punctuation</dd>
            </dl>

            <dl class="good">
                <dt>
                    <ul>
                        <li>Sentence 1.</li>
                        <li>Sentence 2. Sentence 3</li>
                        <li>Sentence 4</li>
                    </ul>
                </dt>
                <dd>Figure: Good Example ?Full stop is only used in the bullet point that has multiple sentences, except in the last one</dd>
            </dl>
        </li>
        <li>
            <a name="spelling"></a>
            <h2>Do you always use correct spelling?</h2>
            <p>Spell check finds all your misspellings, however there are many other words that you should watch out for...</p>
            <table class="clsSSWTable" width="70%">
                <tr>
                    <th valign="top" class="auto-style1">Bad
                        example</th>
                    <th valign="top" class="auto-style2">Good
                        example</th>
                    <th valign="top">Reason</th>
                </tr>
                <tr>
                    <td valign="top" class="auto-style1">asp.net
                    </td>
                    <td valign="top" class="auto-style2">ASP.NET
                    </td>
                    <td valign="top">&quot;ASP.NET&quot; is always written as capitals according to the official usage on <a href="http://asp.net">ASP.NET</a>
                    </td>
                </tr>
                <tr>
                    <td valign="top" class="auto-style1">agile 
                    </td>
                    <td valign="top" class="auto-style2">Agile
                    </td>
                    <td valign="top">Make sure the term "Agile" is always written with a capital A according to the Agile Manifesto <a href="http://agilemanifesto.org/">http://agilemanifesto.org/</a>
                    </td>
                </tr>
                <tr>
                    <td valign="top" class="auto-style1">SCRUM
                    </td>
                    <td valign="top" class="auto-style2">Scrum 
                    </td>
                    <td valign="top">Use Scrum instead of SCRUM (it is not an acronym)
                    </td>
                </tr>
                <tr>
                    <td valign="top" class="auto-style1">advertizing</td>
                    <td valign="top" class="auto-style2">advertising
                    </td>
                    <td valign="top">Americans usually like &#8220;z&#8220; instead of &#8220;s&#8221; , an exception is to use &quot;Advertising&quot;, not &quot;Advertizing&quot;</td>
                </tr>
                <tr>
                    <td valign="top" class="auto-style1">christian name</td>
                    <td valign="top" class="auto-style2">first name</td>
                    <td valign="top">The political correct phase is now &#8216;First Name&#8217; especially for non-Christians</td>
                </tr>
                <tr>
                    <td valign="top" class="auto-style3">surname</td>
                    <td valign="top" class="auto-style4">last name</td>
                    <td valign="top" class="auto-style5">If you are using &#8216;first name&#8217;, then &#8216;last name&#8217; goes nicely with it.</td>
                </tr>
            </table>
            <p><span class="productBox"><a href="http://www.ssw.com.au/ssw/linkauditor/">SSW Link Auditor</a> can check those spellings.</span></p>
        </li>
    </ol>

    <!-- FINALLY DONE. Now it is the best damn looking HTML on the site. -->

    <h2>
        <a name="AcknowledgementsLikeThis"></a>Acknowledgements</h2>
    Adam Cogan<br />
    Jatin Valabjee<br />
    George Doubinski<br />
    Ken Getz<br />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeaderScripts">
    <style type="text/css">
        .auto-style1 {
            width: 97px;
        }

        .auto-style2 {
            width: 115px;
        }

        .auto-style3 {
            width: 97px;
            height: 3px;
        }

        .auto-style4 {
            width: 115px;
            height: 3px;
        }

        .auto-style5 {
            height: 3px;
        }
    </style>
</asp:Content>

