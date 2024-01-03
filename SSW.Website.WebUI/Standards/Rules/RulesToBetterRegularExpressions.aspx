<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="SSW Rules for Regular Expressions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <br />
    <div class="TableOfContents">
        <ol>
            <li><a href="#regex">Do you format and comment your regular expressions?</a></li>
            <li><a href="#testregex">Do you test your regular expression?</a></li>
            <li><a href="#ResourceRegex">Do you use resource file to store your regular expressions?</a></li>
        </ol>
    </div> <p>Do you agree with them all? Are we missing some?  <a href="javascript:sendEmail('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f253230426574746572253230536f75726365253230436f6e74726f6c')" 
onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e61753f5375626a6563743d52756c6573253230746f253230426574746572253230536f75726365253230436f6e74726f6c');return true;"  
onmouseout="javascript:clearStatus(); return true;" >     Let us know </a> what you think.</p>
    <ol>
        <li>
            <h2>
                <a name="regex"></a>Do you format and comment your regular expressions?</h2>
            <p>
                Regular expressions are a very powerful tool for pattern matching, but a 
                complicated regex can be very difficult for a human to read and to comprehend. 
                That is why, like any good code, a good regular expression must be well formatted 
                and documented.</p>
            <p>
                Here are some guidelines when formatting and documenting your regex:</p>
            <ol>
                <li>Keep each line under 80 characters, horizontal scrolling reduces readability.</li>
                <li>Break long patterns into multiple lines, usually after a space or a line break.</li>
                <li>Indent bracers to help think in the right scope.</li>
                <li>Format complicated OR patterns into multiple blocks like a case statement.</li>
                <li>Comment your regex on what it does, don't just translate it into English.</li>
            </ol>
            <dl class="badCode">
                <dt># Match &lt;BODY<br />&lt;BODY<br /># Match any non &gt; char for zero to infinite number 
                    of times<br />[^&gt;]*<br /># MATCH &gt;<br />&gt;
                            </dt>
                <dd>
                    Bad example: Comment that translates the regex into English.</dd>
            </dl>
            <dl class="goodCode">
                <dt># Match the BODY tag<br />&lt;BODY<br /># Match any character in the body tag<br />
                    [^&gt;]*<br /># Match the end BODY tag<br />&gt;
                            </dt>
                <dd>
                    Good example: Comment that explains the purpose of the pattern.</dd>
            </dl>
            <dl class="badCode">
                <dt>(?six-mn:(Label|TextBox)\s+(?&lt;Name&gt;\w+).*(?&lt;Result&gt;\k&lt;Name&gt;\.TextAlign\s*=\s* 
                    ((System\.)?Drawing\.)?ContentAlignment\.(?! 
                    TopLeft|MiddleLeft|TopCenter|MiddleCenter)\w*)(?!(?&lt;=\k&lt;Name&gt;\.Image.*)|(?
                                <br />=.*\k&lt;Name&gt;\.Image)))
                </dt>
                <dd>
                    Bad Example: Pray you never have to modify this regex.</dd>
            </dl>
            <dl class="goodCode">
                <dt>(?six-mn:<br />&nbsp;&nbsp;&nbsp; # Match for Label or TextBox control<br />&nbsp;&nbsp;&nbsp; # Store name 
                    into &lt;name&gt; group<br />&nbsp;&nbsp;&nbsp; (Label|TextBox)\s+(?&lt;Name&gt;\w+).*<br />
                    <br />&nbsp;&nbsp;&nbsp; # Match any non-standard TextAlign<br />&nbsp;&nbsp;&nbsp; # Store any match in 
                    Result group for error reporting in CA<br />&nbsp;&nbsp;&nbsp; (?&lt;Result&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Match 
                    for control's TextAlign Property<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \k&lt;Name&gt;\.TextAlign\s*=\s*<br />
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Match for possible namespace<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    ((System\.)?Drawing\.)?ContentAlignment\.<br />
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Match any ContentAlignment that is not in the group<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    (?!TopLeft|MiddleLeft|TopCenter|MiddleCenter)\w*<br />&nbsp;&nbsp;&nbsp; )<br />
                    <br />&nbsp;&nbsp;&nbsp; # Skip any Control that has image on it<br />&nbsp;&nbsp;&nbsp; (?!<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (?&lt;=<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \k&lt;Name&gt;\.Image<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .*<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )<br />&nbsp;&nbsp;&nbsp; |<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (?=<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .*<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \k&lt;Name&gt;\.Image<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )<br />
                    &nbsp;&nbsp;&nbsp; )<br />)
                            </dt>
                <dd>
                    Good Example: Now it make sense!</dd>
            </dl>
        </li>
        <li>
            <h2>
                <a name="testregex"></a>Do you test your regular expressions?</h2>
            <p>
                Everyone writes unit tests for their code, because it helps developer to make 
                changes in future without breaking existing functionalities. The same goes for 
                regular expressions.&nbsp; A good regular expression will have a set of test cases to 
                make sure any future changes does not invalidate existing requirements.
            </p>
            <p>
                At SSW, we do not fix a regular expression until we have added a good and a bad 
                test case.</p>
            <p>
                If your application is driven by regular expressions, you need a good test 
                harness. Here is an example of a test harness we use in Code Auditor.
            </p>
            <img src="Images/CodeAuditorRegexTester.gif" alt="Test Harness for regular expressions in Code Auditor."
                title="Test Harness for regular expressions in Code Auditor." width="527" height="462">
            <br /><b>Figure: Test Harness for regular expressions in Code Auditor.</b>
        </li>
        <li>
            <h2>
                <a name="ResourceRegex"></a>Do you use resource file to store your regular 
                expressions?</h2>
            <p>
            <dl class="badCode">
                <dt>
                <pre>public static Queue getFilesInProject(string projectFile)
{
	Queue tempQueue = new Queue();

	TextReader tr = File.OpenText(projectFile);

	// RT (10/10/2005): New regex to support VS 2005 project files (.csproj &amp; .vbproj)
	//(?ixm-sn:
	//# VS 2003
	//(?:RelPath\s=\s\&quot;(?&lt;filename&gt;.*?)\&quot;)
	//|
	//# VS 2005
	//(?:(?&lt;=Compile|EmbeddedResource|Content|None)\sInclude=\&quot;(?&lt;FileName&gt;.*?)\&quot;)
	//)
	Regex regex = new Regex
	&nbsp;&nbsp;&nbsp;&nbsp;(<span style="background-color: #FF0000">@&quot;(?ixm-sn:(?:RelPath\s=\s\&quot;&quot;(?&lt;FileName&gt;.*?)\&quot;&quot;)|(?:(?&lt;=Compile|EmbeddedResource|Content|None)\sInclude=\&quot;&quot;(?&lt;FileName&gt;.*?)\&quot;&quot;))&quot;</span>);
	MatchCollection matches = regex.Matches(tr.ReadToEnd());

}</pre>
                    </dt>
                    <dd>
                        Figure: Regular expression is embedded in code (Bad)</dd>
            </dl>
            </p>
            <p>
                The problem with this code is that the regular expression is embedded within the 
                method and not easily testable without creating mock files on-the-fly, etc. 
                Another issue with embedding regular expressions in-code is escaping issues - 
                often people will forget to escape the special characters or escape them 
                incorrectly and thus cause the regular expression to behave differently between 
                the design and execution environments.
                <br />
                <br />The way we deal with this is to put the regular expression in a resource 
                file. Using a resource file, it solves the aforementioned issues, and it also 
                allows us to leave a comment for the regular expression.
            </p>
            <p>
            <dl class="goodImage">
                <dt>
                    <img src="Images/ResourceRegularExpression.gif" /></dt>
                <dd>
                        Figure: The regular expression (with comment) is stored in a resource file 
                        (Good)</dd>
            </dl>
            </p>
            <p>
            <dl class="goodCode">
                <dt>
                <pre>public static Queue getFilesInProject(string projectFile)
{
	Queue tempQueue = new Queue();

	TextReader tr = File.OpenText(projectFile);

	Regex regex = new Regex(<span style="background-color: #00FF00">RegularExpression.GetFilesInProject</span>);
	MatchCollection matches = regex.Matches(tr.ReadToEnd());

}</pre>
                    </dt>
                    <dd>
                        Figure: We can easily get the regular expression from resource file (Good)</dd>
            </dl>
            </p>
        </li>
    </ol>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogann</a>
        <br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=CS">Cameron Shaw</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TF">Tim Fletcher</a><br />
        Edward Forgacs</p>
</asp:Content>
