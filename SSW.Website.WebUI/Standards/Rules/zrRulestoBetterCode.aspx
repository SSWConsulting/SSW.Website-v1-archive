<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Code" %>
 
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    <br />

    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>TEST!!!What makes code &quot;cleaner&quot; ? What makes the difference between readable code and very readable code?</p>
    <p>It can be very painful when needing to modify a piece of code in an application that you never spec'd out or wrote. But it doesn't have to be this way. By following some of these better programming tips your code can be easily read and easily modified by any developer at anytime.</p>
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230436F6465')"> Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <h4>SSW Rules to Better Code</h4>
        <ol>
            <li><a href="#Spam">Do you avoid clear text email addresses in web pages?</a></li>
            <li><a href="#Refactor">Do you refactor your code and keep methods short?</a></li>
            <li><a href="#SeparateCodeandDesign">Do you separate code from design (aka use an N-tier architecture)?</a></li>
            <li><a href="#NamingConventions">Do you follow naming conventions?</a></li>
            <li><a href="#Filenames">Do you use the testing stage, in the file name?</a></li>
            <li><a href="#NoSpacesInFileNames">Do you remove spaces from your filename?</a></li>
            <li><a href="#VersionConventions">Do you follow version conventions?</a></li>
            <li><a href="#VersionNumbering">Do you start versioning at 0.1 and change to 1.0 once approved by a client or tester?</a></li>
            <li><a href="#CodeBrand">Do you have brand at the top of each file?</a></li>
            <li><a href="#CodeComment">Do you comment each property and method?</a></li>
            <li><a href="#CommentForUpdate">Do you add comments for your code if it is updated?</a></li>
            <li><a href="#CommentWithTodoAndHack">Do you create Task List Comments for your code?</a></li>
            <li><a href="#VarDeclare">Do you declare variables when you need them?</a></li>
            <li><a href="#IfStatement">Do you avoid problems in if-statements?</a></li>
            <li><a href="#DoubleNegativeConditionals">Do you avoid Double-Negative Conditionals in if-statements?</a></li>
            <li><a href="#elseif">Do you avoid logic errors by using Else If?</a></li> 
            <li><a href="#StoreFiles">Do you know where to store your application's files?</a></li>
            <li><a href="#control">Do you refer to form controls directly?</a></li>
            <li><a href="#comments">What do you do with comments and Debug.Print statements?</a></li>
            <li><a href="#OptimizeXSDPerformance">Do you avoid validating XML documents unnecessarily?</a></li>
            <li><a href="#connectionTimeout">Do you change the connection timeout to 5 seconds?</a></li>
            <li><a href="#longProcess">Never start a long process (&gt;30 seconds) without a warning or make it obvious - like the start button on Code Auditor</a></li>
            <li><a href="#timetaken">Do you have the time taken in the status bar?</a></li>
            <li><a href="#backwardCompatibility">Does backward compatibility kill good code?</a></li>
            <li><a href="#ExitSub">Do you put Exit Sub before End Sub?</a></li>
            <li><a href="#BooleanPropertyNamingConventions">Do you follow naming conventions for your Boolean Property?</a></li>
            <li><a href="#PropertiesNotFields">Do you use Public/Protected Properties instead of Public/Protected Fields?</a></li>
            <li><a href="#StringEmpty">Do you use String.Empty instead of &quot;&quot;? </a></li>
            <li><a href="#TimeSpan">Do you pre-format your time strings before using TimeSpan.Parse()?</a></li>
            <li><a href="#Interoper">Do you use interoperability mechanism for COM object?</a></li>
            <li><a href="#ImportNamespaces">Do you import namespaces and shorten the references?</a></li>
            <li><a href="#ClassAccess">Do you declare member accessibility for all classes?</a></li>
            <li><a href="#ValidationExitSub">Do you do your validation with Exit Sub?</a></li>
            <li><a href="#NewLineMsgbox">Do you know how to format your MessageBox code?</a></li>
            <li><a href="#VerifyEmail">Do you use a regular expression to validate an email address?</a></li>
            <li><a href="#MessageInResourceFile">Do you use resource file to store messages?</a></li>
            <li><a href="#UnitTestSuffix">Do you suffix unit test classes with &quot;Tests&quot;?</a></li>
            <li><a href="#DontSuffixEnum">Do you know that Enum types should not be suffixed with the word &quot;Enum&quot;?</a></li>
            <li><a href="#AvoidUsingStringsUseEnums">Do you avoid using &quot;Strings&quot; in your code? Use &quot;Enum&quot;?</a></li>
            <li><a href="#NoMagicNumbers">Do you avoid using &quot;Magic numbers&quot; in your code? Use &quot;Enum - Constants&quot; instead?</a></li>
            <li><a href="#VerifyUri">Do you use a regular expression to validate an Uri?</a></li>
            <li><a href="#Dispose">Do you use &quot;using&quot; statement instead of use explicitly &quot;dispose&quot;?</a></li>
            <li><a href="#AppNameforSCS">Do you add the Application Name in the SQL Server connection string?</a></li>
            <li><a href="#StoreMessage">Do you use resource file to store all the messages and globlal strings?</a></li>
            <li><a href="#SettingsInDB">Do you store Application-Level Settings in your database rather than configuration files when possible?</a></li>
            <li><a href="#CheckButtonEventHandler">Do you always check your button's event handler hook-up?</a></li>
            <li><a href="#OutsideTry">Do you initialize variables outside of the try block?</a></li>
            <li><a href="#Environment">Do you format "Environment.NewLine" at the end of a line?</a></li>
            <li><a href="#ThreadSleep">Do you add a comment when you use Thread.Sleep?</a></li>
            <li><a href="#SQLConnStr">Do you know the right way to define a connection string?</a></li>
            <li><a href="#GoogleReference">Do you reference websites when you implement something you found on Google?</a></li>
            <li><a href="#PresentationLayer">Do you avoid putting business logic into the presentation layer?</a></li>
            <li><a href="#EnvironmentNewLine">Do you use Environment.NewLine to make a new line in your string?</a></li>
            <li><a href="#UniformMethod">Do you wrap the same logic in a method instead of writing it again and again whenever it's used?</a></li>
            <li><a href="#NamedParameters">Do you know when to use named parameters?</a></li>
            <li><a href="#OptionalParameters">Do you put optional parameters at the end?</a></li>
            <li><a href="#AvoidCasts">Do you avoid casts and use the "as operator" instead?</a></li>
            <li><a href="#ExposeEvents">Do you expose events as events?</a></li>
            <li><a href="#NameEvents">Do you name your events property?</a></li>
            <li><a href="#AvoidUI">Do you avoid "UI" in event names?</a></li>
            <li><a href="#RaiseEvents">Do you use a helper extension method to raise events?</a></li>
            <li><a href="#WorkAround">Do you know what to do with a work around?</a></li>
            <li><a href="#BoyscoutRule">Do you follow boy scout rule? </a></li>
            <li><a href="#CreateSuggestions">Do you always create suggestions when something is hard to do?</a></li>
            <li><a href="#NoEmptyCodeBlock">Do you avoid Empty code block?</a></li>
            <li><a href="#AvoidIfElseBlock">Do you avoid using if-else instead of switch block </a></li>
            <li><a href="#String-character">Do you know String should be @-quoted instead of using escape character for "\\"?</a></li>
            <li><a href="#carriage-return">Do you know that no carriage returns without line feed?</a></li>
            <li><a href="#do-not-put-exit-sub-before-end-sub">Do you know not to put Exit Sub before End Sub?</a></li>
            <li><a href="#new-language-features">Do you use the new C# 6 language features to slash the amount of boilerplate code you write?</a></li>
        </ol>
    </div>
    <ol>
        <li>
            <h2><a name="Spam"></a>Do you avoid clear text email addresses in web pages?</h2>
            <p> Clear text email addresses in web pages are very dangerous because it gives spam sender a chance to pick up your email address, which produces a lot of spam/traffic to your mail server, this will cost you money and time to fix.</p>
            <p>Never put clear text email address on web pages.</p>
            <pre class="brush:vb;">
          <!--SSW Code Auditor - Ignore next line(HTML)-->  
                    <a href="mailto:test@ssw.com.au">Contact Us</a>
                    </pre>
            <p class="badCode">Bad - Using a plain email address that it will be crawled and made use of easily</p>
            <pre class="brush:vb;">
          <a href="javascript:sendEmail('74657374407373772e636f6d2e6175')" onmouseover="javascript:displayStatus('74657374407373772e636f6d2e6175');return true;"
              onmouseout="javascript:clearStatus(); return true;">Contact Us</a>
                    </pre>
            <p class="goodCode">Good - Using an encoded email address</p>
            <p>Note: If you use Wordpress, use the <a href="http://wordpress.org/extend/plugins/email-encoder-bundle"> Email Encoder Bundle plugin</a> to help you encode email addresses easily.</p>
            <p class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</p>
            <p class="productBox">We have a program called <a href="/ssw/LinkAuditor/">SSW Link Auditor</a> to check for this rule.</p>
        </li>
        <li>
            <h2><a name="Refactor"></a>Do you refactor your code and keep methods short?</h2>
            <p>Refactoring is all about making code easier to understand and cheaper to modify without changing its behaviour.</p>
            <p>As a rule of thumb, no methods should be greater than <b>50 lines</b> of code. Long-winded methods are the bane of any developer and should be avoided at all costs. Instead, a method of 50 lines or more should be broken down into smaller functions.</p>
            <p>NB: Visual Studio 2005 has refactoring tools built in.</p>
        </li>

        <li>
            <h2><a name="SeparateCodeandDesign"></a>Do you separate code from design (aka use an N-tier architecture)?</h2>
            <p>One of the major issues with ASP (versus ASP.NET) was the prevalence of &quot;Spaghetti Code&quot;. This mixed Reponse.Write() with actual code.</p>
            <p>Ideally, you should keep design and code separate - otherwise, it will be&nbsp; difficult to maintain your application. The same goes for Windows Forms, Access or any other code. Instead, try to move all data access and business logic code into separate methods - away from your GUI.</p>
        </li>

        <li>
            <h2><a name="NamingConventions"></a>Do you follow Naming Conventions?</h2>
            <p>I know it's the most obvious - but naming conventions are so crucial to simpler code, it's crazy that people are so loose with them...</p>
            <ul>
                <li><a href="/ssw/Standards/DeveloperSQLServer/SQLServerStandard_1_ObjectNaming.aspx">SQL Server Object Naming Standard</a></li>
                <li><a href="/ssw/Standards/DeveloperSQLServer/SQLServerStandard_2_StoredProcedureNaming.aspx">SQL Stored Procedure Naming Standard</a></li>
                <li><a href="/ssw/Standards/DeveloperSQLServer/SQLServerStandard_3_StoredProcedureFormatting.aspx">SQL Stored Procedure Formatting Standard </a></li>
                <li><a href="/ssw/Standards/DeveloperSQLServer/SQLServerStandard_4_IndexesNaming.aspx">SQL Server Indexes Naming Standard </a></li>
                <li><a href="/ssw/Standards/DeveloperSQLServer/SQLServerStandard_5_RelationshipNaming.aspx">SQL Server Relationship Naming Standard</a> </li>
                <li><a href="/ssw/Standards/DeveloperSQLServer/SQLServerStandard_6_DatabaseDesignStandards.aspx">SQL Server Design Standards</a></li>
            </ul>
        </li>

        <li>
            <h2><a id="Filenames"></a>Do you use the testing stage, in the file name?</h2>
            <p>When moving through the different stages of testing i.e. from internal testing, through to UAT, you should suffix the application name with the appropriate stage:</p>
            <div class="greyBox">
                <table width="80%" id="table6">
                    <tr>
                        <th style="text-align: left">Stage</th>
                        <th style="text-align: left">Testing Description</th>
                        <th style="text-align: left">Naming Convention</th>
                    </tr>
                    <tr>
                        <td>Alpha</td>
                        <td>Developer testing with project team</td>
                        <td>Northwind_v2-3_alpha.exe</td>
                    </tr>
                    <tr>
                        <td>Beta</td>
                        <td>Internal &#8220;Test Please&#8221; testing with non-project working colleagues</td>
                        <td>Northwind_v2-3_beta.exe</td>
                    </tr>
                    <tr>
                        <td>Production e.g.</td>
                        <td>When moving onto production, this naming convention is dropped</td>
                        <td>Northwind_v2-3.exe</td>
                    </tr>
                </table>
            </div>
        </li>

        <li>
            <h2><a name="NoSpacesInFileNames"></a>Do you remove spaces from your folders and filename?</h2>
            <p>It is not a good idea to have spaces in a folder or file name as they don't translate to URLs very well and can even cause technical problems.</p>
            <p>Instead of using spaces, you should have the first letter of each word in UPPERCASE and the rest of the word in lowercase. Alternatively, you can choose to use underscores. This alternative method to spacing makes file names more readable when published on the web.</p>
            <p>Note that this rule should apply for any file or folder that is on the web.  This includes TFS Team Project names and SharePoint Pages.</p>
            <dl class="bad">
                <dt>extremeemailsversion1.2.doc<br />
                Extreme Emails version 1.2.doc</dt>
                <dd>Figure - Bad Examples: file names have spaces or dots</dd>
            </dl>
            <dl class="good">
                <dt>Extreme_Emails_v1_2.doc<br />
                    ExtremeEmails_v1_2.doc</dt>
                <dd>Figure &#8211; Good Examples: file names do not have spaces</dd>
            </dl>
            <dl class="bad">
                <dt>
                    &#60;a href="http://sharepoint.ssw.com.au/Training/UTSNET/Pages/UTS%20NET%20Short%20Course.aspx"&#62;UTS Short Course&#60;/a&#62;<br />
                    &#60;a href="file://fileserver/Shared%20Documents/Ignite%20Brisbane%20Talk.docx"&#62;Ignite Talk&#60;/a&#62;
                </dt>
                <dd>Figure &#8211; Bad Examples: file names have been published with spaces so the URLs look ugly and are hard to read</dd>
            </dl>
            <dl class="good">
                <dt>
                    &#60;a href="http://sharepoint.ssw.com.au/Training/UTSNET/Pages/UTSNETShortCourse.aspx"&#62;UTS Short Course&#60;/a&#62;<br />
                    &#60;a href="file://fileserver/SharedDocuments/Ignite_Brisbane_Talk.docx"&#62;Ignite Talk&#60;/a&#62;
                </dt>
                <dd>Figure &#8211; Good Examples: file names have no spaces so are much easier to read</dd>
            </dl>

        </li>

        <li>
            <h2><a name="VersionConventions"></a>Do you follow version conventions?</h2>
            <p>It is important to follow a consistent version convention throughout a project development. This will help you keep track of changes and bug fixes. A new version should be released <a href="RulesToBetterSetups.aspx#BuildVersionDay">every day</a> when there is a bug fixed, so testers can continue testing while development continues.</p>
            <p><a href="/ssw/Standards/Rules/RulesToBetterSetups.aspx#DisplayVersion">This is how we display the version number publicly.</a></p>
            <b>VB.NET - AssemblyInfo.vb:<br /></b>
            <pre class="brush:vb;">
'Version = &quot;9.19&quot;&nbsp; 'DDK 25/07/2003 - Application Block changes - replaced settings.
'Version = &quot;9.20&quot; 'DDK 28/07/2003 - Fixed release summary path information in subject - full path now; Code review with Adam.; Views change automatically on refresh
&lt;Assembly: AssemblyVersion(&quot;9.10.*&quot;)&gt;
            </pre>
            <p><b>C#.NET - AssemblyInfo.cs:</b><br />
            </p>
            <pre class="brush:c-sharp;">
// 1.42 02/01/2002 PH - fix bugs, sample hyperlinks, ok button and rule
// 1.43 03/01/2002 PH/JL - tool tip, fix reload new database, fix registration, setup
// 1.44 07/01/2002 PH - fix bugs in FrmJob, report layout
[assembly: AssemblyVersion(&quot;1.44.*&quot;)]
            </pre>
            <span><b>Figure: Version Control in .NET Project</b></span>
            <br />
            <p>The same principle applies to web project too.</p>>
            <p>In ASP.NET 1.x you can use the AssemblyInfo file for keeping the versions just like you do it in the Window Forms.</p>
            <b>ASP.NET 1 - Footer.ascx.cs<br />
            </b>
            <pre class="brush:c-sharp;">
protected void Page_Load(object sender, EventArgs e)
{
    lblVersion.Text = System.Reflection.Assembly.GetExecutingAssembly().GetName().Version.ToString(3);
}
            </pre>
            <p>However, in ASP.NET 2.0 each page is built into it own assembly. So, you should add a static method to AssemblyInfo.cs or other class file in the App_Code that returns the version info, and call this method from your other pages. e.g. footer.ascx.cs.<br />
            Otherwise it will return 0.0.0.</p>
            <b>ASP.NET 2 - Function.cs under App_code</b><br />
            <pre class="brush:c-sharp;">
//get version number from Assembly
//Note: this should stay in App_Code. Otherwise it will return 0.0.0.0
public static string VersionInfo
{
    get
    {
        return System.Reflection.Assembly.GetExecutingAssembly().GetName().Version.ToString(3);
    }
}

public static string ApplicationFullName
{
    get
    {
        string productName = string.Empty;
        object[] atts = System.Reflection.Assembly.GetExecutingAssembly().GetCustomAttributes(false);
        foreach (object a in atts)
        {
            if (a is AssemblyProductAttribute)
            {
                productName = ((AssemblyProductAttribute)a).Product;
                break;
            }
        }
        return productName;
    }
}
            </pre>
            <b>ASP.NET 2 - Footer.ascx.cs</b><br />
            <pre class="brush:c-sharp;">
protected void Page_Load(object sender, EventArgs e)
{
    lblVersion.Text = PfastTrack.Functions.VersionInfo;
}
            </pre>
        </li>

        <li>
            <h2><a name="VersionNumbering"></a>Do you start versioning at 0.1 and change to 1.0 once approved by a client or tester?</h2>
            <p>Software and document version numbers should be consistent and meaningful to both the developer and the user.</p>
            <p>Generally, version numbering should begin at 0.1. Once the project has been approved for release by the client or tester, the version number will be incremented to 1.0. The numbering after the decimal point needs to be decided on and uniform. For example, 1.1 might have many bug fixes and a minor new feature, while 1.11 might only include one minor bug fix.</p>
        </li>

        <li>
            <h2><a name="CodeBrand"></a>Do you have brand at the top of each file?</h2>
            <p>Brand is the summary of our company, the product and release information, and can  be used by other developers to quickly know the release history and product summary.</p>
            <p>The brand should contain at least the following:</p>
            <ul>
                <li>Copyright declaration</li>
                <li>Purpose of the document/file</li>
                <li>Author name</li>
            </ul>
            <p>If the file was modified by another developer, the comment should also contain:</p>
            <ul>
                <li>Reviewer name</li>
            </ul>
            <div class="greyBox">
                <p>
                    <b>Header comments: </b>
                    <br />
                    On top of the file:
                </p>
                <span style="font-size: 9.0pt; font-family: Courier New">///&lt;summary&gt;<br />
                    ///'----------------------------------------------<br />
                    /// Copyright 2005 Superior Software for Windows
                    <br />
                    /// www.ssw.com.au All Rights Reserved.<br />
                    ///'----------------------------------------------<br />
                    /// Comment: User class to handle user preference and login information<br />
                    /// Authors:&nbsp;&nbsp; DDK,PH<br />
                    /// Reviewers: AC,RD<br />
                    ///&lt;/summary&gt;<br />
                    ///'----------------------------------------------&nbsp;</span>
            </div>
        </li>

        <li>
            <h2><a name="CodeComment"></a>Do you comment each property and method?</h2>
            <p>It's important that you have a consistent code comment standard throughout an application, regardless of language. Therefore, other developers can quickly determine the workings of a function/sub/class/stored procedure. Ideally, code should be as simple and self-explanatory as possible. Exceptions should be noted in line, especially when there is a .NET catch statement for generic System.Exceptions (in VB6/Access - for a Resume Next statement or similar).</p>
            <p>E.g. catch (InteropServices.COMException ex) <span class="Caption">//Catch all COM Exceptions from third party COM component</span></p>
            <p>In JavaScript and HTML, you should put these comments between the
                <br />
                &lt;HEAD&gt; and&nbsp;&nbsp;&lt;/HEAD&gt;<br />
                tags.&nbsp;<br />
                <br />
                To delmit the comments (ie top and bottom), you should use the standard block comment
                markers of
                <br />
                &lt;!--&nbsp;and --&gt;.
                <br />
                <br />
                A css file should be delimited with the block comment marks of
                <br />
                /* and */.</p>
            <p>
                If the file contains any function/sub module/class declaration, comments will
                be containted to each of them containing at least the following:
            </p>
            <ul>
                <li>function/sub module/class name</li>
                <li>role of the function/sub module/class declaration</li>
            </ul>
            <div class="greyBox">
                <p>
                    <b><span style="font-size: 9.0pt; font-family: courier new">Above a method or property
                        declaration:<br />
                    </span></b><span style="font-size: 9.0pt; font-family: courier new">''' &lt;summary&gt;<br />
                        '''
                        <br />
                        ''' &lt;/summary&gt;<br />
                        ''' &lt;param&nbsp;name="sender"&gt;&lt;/param&gt;<br />
                        ''' &lt;param&nbsp;name="e"&gt;&lt;/param&gt;<br />
                        ''' &lt;remarks&nbsp;&gt;&lt;/remarks&gt;<br />
                    </span>
                </p>
                The comments can be generated automatically by VS.NET<br />
                /// - C#<br />
                ''' - VB.NET<br />
                Bonus - you can automatically generate documentation - but the number of clients
                that want this is minimal.
            </div>
        </li>

        <li>
            <h2><a name="CommentForUpdate"></a>Do you add comments for your code if it is updated?</h2>
            <p>It's also important that you have a consistent code comment for your updating, which can be used by other developers to quickly determine the workings of the updating.</p>
            Example of commentting a method, it is strong recommended that you add adequate
            comment for your updating;
            <pre class="brush:vb;">
                        'Private Sub iStopwatchOptionsForm_Resizing(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Resize
                        'If Me.WindowState = FormWindowState.Minimized Then
                        'Me.Hide()
                        'End If
                        'End Sub
                    </pre>
            <p class="badCode">Figure: Bad example in VB.NET</p>
            <pre class="brush:vb;">
                        '
                        'Commented - we don't need to hide this from when it is minimum size, just leave it on taskbar.
                        ' FW, 11/10/2006
                        '
                        'Private Sub iStopwatchOptionsForm_Resizing(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Resize
                        'If Me.WindowState = FormWindowState.Minimized Then
                        'Me.Hide()
                        'End If
                        'End Sub
                    </pre>
            <p class="goodCode">Figure: Good example in VB.NET</p>
            <p>Example of adding code inside a method:</p>
            <pre class="brush:vb;">
                        Private Sub iStopwatchOptionsForm_Closing(ByVal sender As System.Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles MyBase.Closing
                            'Don't close this form except closing this application - using hide instead;
                            If Not Me.m_isForceClose Then
                                If Me.IsOptionsModified Then
                                    If MessageBox.Show(&quot;Do
                                    you want to save the changes?&quot;, Me.GetApplicationTitle, MessageBoxButtons.YesNo,
                                    MessageBoxIcon.Warning) = DialogResult.Yes Then
                                     Me.SaveOptions()
                                 End If
                                End If
                            End If
                        End Sub                    
                    </pre>
            <p class="badCode"> Figure: Bad example in VB.NET</p>
            <pre class="brush:vb;">
                     Private Sub iStopwatchOptionsForm_Closing(ByVal sender As System.Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles MyBase.Closing
                     'Don't close this form except closing this application - using hide instead; 
                     If Not Me.m_isForceClose Then
                        '&lt;added by FW, 11/10/2006&gt;
                        ' Remind saving the changes if the options were modified.
                         If Me.IsOptionsModified Then
                             If MessageBox.Show(&quot;Do you want to save the changes?&quot;, Me.GetApplicationTitle, MessageBoxButtons.YesNo, MessageBoxIcon.Warning) = DialogResult.Yes Then
                                  Me.SaveOptions()
                             End If
                         End If                    
                         '&lt;/added&gt;
                        ...
                    End If
                    End Sub
                    </pre>
            <p class="goodCode">Figure: Good example in VB.NET</p>
        </li>

        <li>
            <h2><a name="CommentWithTodoAndHack"></a>Do you create Task List Comments for your code?</h2>
            <p>Task List comments can be used to indicate a variety of work to be done at the location marked, including:</p>
            <ul>
                <li>features to be added;</li>
                <li>problems to be corrected;</li>
                <li>classes to implement;</li>
                <li>place markers for error-handling code;</li>
                <li>reminders to check in the file.</li>
            </ul>
            <p>As with other Task List entries, you can double-click any comment entry to display the file indicated in the Code Editor and jump to the line of code marked. More details for <a href="/SSW/Redirect/MSDN2/TaskListcomments.htm">Task List comments</a></p>
            <p>Here is an example: when I open this options form, I see &quot;ssw.com.au&quot; in the email text box, but it is actually only half of the text in that textbox, see the following captures:
                <br />
                <img src="./images/commentbytasklist1.gif" alt="" /><br />
                <b>Figure: You can see that ssw.com.au is highlighted.. and it is actually only half
                    of the text in that textbox;</b><br />
                <br />
                <img src="./images/commentbytasklist2.gif" alt="" /><br />
                <b>Figure: scrolling left displays the full contents of the textbox;</b>
            </p>
            <br />
            <p>
                <dl class="badCode">
                    <img src="./images/tasklistwindow1.gif" alt="" />
                    <dd>
                        Figure: Bad example - the comment doesn't show in Task List window;</dd>
                    <br />
                </dl>
                <dl class="goodCode">
                    <img src="./images/tasklistwindow2.gif" alt="" />
                    <dd>
                        Figure: Good example - Marked TODO in the comment, so you can see it in <b>Task List</b>
                        window and double click to jump to;</dd>
                </dl>
                <br />
                <dl class="goodCode">
                    <img src="./images/tasklistwindow3.gif" alt="" />
                    <dd>
                        Figure: Good example - Marked HACK in the comment, so you can see it in <b>Task List</b>
                        window and double click to jump to;</dd>
                </dl>
            </p>
        </li>

        <li>
            <h2><a name="VarDeclare"></a>Do you declare variables when you need them?</h2>
            <p>Should you declare variables at the top of the function, or declare them when you  need to use them? If you come back to your code after a few weeks and you no longer need a variable, you are quite likely to forget to delete the declaration at the top, leaving orphaned variables. Here at SSW, we believe that variables should be declared as they are needed.</p>
            <pre class="brush:vb">
                    Private Sub Command0_Click()
                    Dim dteTodayDate As Date
                    Dim intRoutesPerDay As Integer
                    Dim intRoutesToday As Integer
                    Dim dblWorkLoadToday As Double
                    dblWorkLoadToday = Date.Now()
                    .
                    ....many lines of code...
                    .
                    intRoutesPerDay = 2
                    End Sub
                </pre>
            <p class="badCode">
                Figure: Bad example</p>
            <pre class="brush:vb">
                    Private Sub Command0_Click()
                    Dim dteTodayDate As Date
                    dteTodayDate = Date.Now()
                    .
                    ....many lines of code...
                    .
                    Dim intRoutesPerDay As Integer
                    intRoutesPerDay = 2
                    .
                    ....continuing code...
                    .End Sub                
                </pre>
            <p class="goodCode">
                Figure: Good Example</p>
        </li>

        <li>
            <h2><a name="IfStatement"></a>Do you avoid problems in if-statements?</h2>
            <p>Try to avoid problems in if-statements without curly brackets and just one statement which is written one line below the if-statement. Use just one line for such if-statements. If you want to add more statements later on and you could forget to add the curly brackets which may cause problems later on.</p>
            <pre class="brush:c-sharp;">
                    if (ProductName == null) ProductName = string.Empty; if (ProductVersion == null)
                        ProductVersion = string.Empty; if (StackTrace == null) StackTrace = string.Empty;
            </pre>
            <p class="badCode">Figure: Bad Example</p>
            <pre class="brush:c-sharp;">
                    if (ProductName == null) 
                    { 
                      ProductName = string.Empty; 
                    } 
                    if (ProductVersion == null)
                    { 
                      ProductVersion = string.Empty; 
                    } 
                    if (StackTrace == null) 
                    { 
                      StackTrace = string.Empty;
                    }
            </pre>
            <p class="goodCode">Figure: Good Example</p>
        </li>

        <li>
            <h2><a name="DoubleNegativeConditionals"></a>Do you avoid Double-Negative Conditionals in if-statements?</h2>
            <p>Try to avoid Double-Negative Conditionals in if-statements. Double negative conditionals are difficult to read, because developers have to evaluate what is positive state of two negatives. So always try to make a single positvie when you write if-statement.</p>
            <pre class="brush:c-sharp;">
                    if (!IsValid)
                    {
                        // handle no error
                    }
                    else
                    {
                        // handle error
                    }
                </pre>
            <p class="badCode">
                Figure: Bad Example</p>
            <pre class="brush:c-sharp;">
                    if (IsValid)
                    {
                        // handle error
                    }
                    else
                    {
                        // handle no error
                    }
                </pre>
            <p class="goodCode">
                Figure: Good Example</p>
            <pre class="brush:c-sharp;">
                    if (!IsValid)
                    {
                        // handle error
                    }
                </pre>
            <p class="goodCode">Figure: Good as well</p>
        </li>

        <li>
            <h2><a name="elseif"></a>Do you avoid logic errors by using Else If?</h2>
            <p>I see a lot of programmers doing this, they have two conditions - true and false - and they do not consider other possibilities - e.g. an empty string. Take a look at this example. We have an If statement that checks what backend database is being used. This is being stored as a property - Backend in config file. At the moment only Access and SQL Server are options.</p>
            <pre class="brush:vb;">
                    Private Sub Command0_Click()
                    If My.MySettings.Default.Backend = &quot;Access&quot; Then
                    'Call this code ie. SQL commands
                    Else
                    'Must be SQL Server
                    'Call this other code ie. Stored Proc
                    End If
                    
                    .....processing code
                    End Sub
                </pre>
            <p class="badCode">Figure: Bad Example with If statement</p>
            <p>Consider later on this code is updated... the programmer wishes to add an Oracle backend database option. So they modify the Backend property to include Oracle...</p>
            <p>By using the above code, the wrong code will run because the above code assumes two possible situations. To avoid this problem, change the code to be defensive .g. Use an Else If statement (like below).</p>
            <p>The user will then get a Logic Error and can report it to the programmer.</p>
            <pre class="brush:vb;">
                    Private Sub Command0_Click()
                    If My.MySettings.Default.Backend = &quot;Access&quot; Then
                    'Call this code ie. SQL
                    ElseIf My.MySettings.Default.Backend = &quot;SQL Server&quot; Then
                    'Call this other code ie. Stored Proc
                    Else
                    Throw New Exception( &quot;Logic Error -- BackEnd is: &quot;
                    &amp; My.MySettings.Default.Backend)
                    End If
                    End Sub</pre>
            <p class="goodCode">Figure: Good Example with If statement</p>
            <p>When writing code to trap Logic Errors, use &quot;Select Case&quot; or &quot;switch&quot; statements to enhance readability. e.g. in VB.NET</p>
            <pre class="brush:vb;">
                    Private Sub Command0_Click()
                    Select Case mDataset.Tables(0).Rows(0)(&quot;Key&quot;)
                    Case &quot;1&quot;
                    ' Initialize the column list
                    strTempColumn = &quot;&quot;
                    Case &quot;2&quot;
                    ' Ignore
                    End Select
                    .....processing code
                    End Sub
                </pre>
            <p class="badCode">Figure: Bad Example with Case statement in VB.NET</p>
            <pre class="brush:vb;">
                    Private Sub Command0_Click()
                    Select Case mDataset.Tables(0).Rows(0)(&quot;Key&quot;)
                    
                    Case &quot;1&quot;
                    ' Initialize the column list
                    strTempColumn = &quot;&quot;
                    Case &quot;2&quot;
                    ' IgnoreCase Else
                    Throw New Exception(&quot;Logic Error&quot;)
                   
                    End Select
                    .....processing code
                   
                    End Sub</pre>
            <p class="goodCode">Figure: Use 'Select Case' or 'Switch' statements to enhance readability when coding to find logic errors.</p>
        </li>

        <li>
            <h2><a name="StoreFiles"></a>Do you know where to store your application's files?</h2>
            <p>Although many have differing opinions on this matter, Windows has standard storage locations for files for application, whether they're settings or user data. Some will disagree with those standards, but it's safe to say that following it regardless will give users a more consistent and straightforward computing experience.</p>
            <p>The following grid shows where application files should be placed:</p>
            <table width="100%" border="0" id="table14" cellspacing="0" cellpadding="4" style="border: 1px solid silver">
                <colgroup>
                    <col style="font: 8pt Verdana" />
                    <col style="font: 8pt Verdana" />
                    <col style="font: 8pt Verdana" />
                </colgroup>
                <tr>
                    <td valign="top" bgcolor="#EFEFEF">
                        <b>When you're working with ...</b>
                    </td>
                    <td valign="top" bgcolor="#EFEFEF">
                        <b>Store the files in ...</b>
                    </td>
                    <td valign="top" bgcolor="#EFEFEF">
                        <b>How to get path in code ...</b>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        User created documents (default)
                    </td>
                    <td valign="top">
                        C:\Documents and Settings\<i>[User Name]</i>\My Documents
                    </td>
                    <td>
                        <pre class="brush:vb;">
                        System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal) 
                        </pre>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        Read only application files and sample data or libraries
                    </td>
                    <td valign="top">
                        C:\Program Files\<i>[Application Name]</i>
                    </td>
                    <td>
                        <b>AppDomain.BaseDirectory method (recommend)</b>
                        <br />
                        The directory of the .exe which started the current AppDomain
                        <br />
                        <pre class="brush:vb;">System.AppDomain.CurrentDomain.BaseDirectory </pre>
                        <p>
                            <b>Application.StartupPath method (okay)</b>
                            <br />
                            It requires Windows.Forms and that is non generic for business classes
                            <br />
                            <pre class="brush:vb;">System.Windows.Forms.Application.StartupPath </pre>
                        </p>
                        <p>
                            <b>Environment.CurrentDirectory method (bad)</b>
                            <br />
                            This is the startup path of the .exe
                            <br />
                            <pre class="brush:vb;">System.Environment.CurrentDirectory </pre>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        User customizable per-user application data
                    </td>
                    <td valign="top">
                        C:\Documents and Settings\<i>[User Name]</i>\Application Data\<i>[Company Name]</i>\<i>[Product
                            Name]</i>
                    </td>
                    <td>
                        <pre class="brush:vb;">Application.UserAppDataPath</pre>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        User customizable system-wide application data
                    </td>
                    <td valign="top">
                        C:\Documents and Settings\All Users\Application Data\<i>[Company Name]</i>\<i>[Product
                            Name]</i>
                    </td>
                    <td>
                        <pre class="brush:vb;">
                            System.IO.Path.Combine(
                            System.Environment.GetFolderPath(
                            System.Environment.SpecialFolder.CommonApplicationData),
                            System.IO.Path.Combine(
                            Application.CompanyName, 
                            Application.ProductName)) 
                        </pre>
                    </td>
                </tr>
            </table>
            <h3>Further Information:</h3>
            <ul>
                <li>The System.Environment class provides the most general way of retrieving those paths</li>
                <li>The Application class lives in the System.Windows.Form namespace, which indicates it should only be used for WinForm applications. Other types of applications such as Console and WebForm applications use their corresponding utility classes</li>
            </ul>
            <br />
            <p> Microsoft's write-up on this subject can be found at <a href="/ssw/Redirect/Microsoft/MSDNFileSystem.htm">
                    http://msdn.microsoft.com/library/default.asp?url=/library/en-us/dnwue/html/ch11b.asp</a>
                <img border="0" src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site"
                    width="17" height="11" /></p>
        </li>

        <li>
            <h2><a name="control"></a>Do you refer to form controls directly?</h2>
            <p>When programming in form based environments one thing to remember is not to refer to form controls directly. The more correct way is to pass the controls values that you need through parameters. There are a number of benefits for doing this:</p>
            <ol>
                <li>Debugging is simpler because all your parameters are in one place </li>
                <li>If for some reason you need to change the control's name then you only have to change it in one place.</li>
                <li>The fact that nothing in your function is dependant on outside controls means you could very easily reuse your code in other areas without too many problems re-connecting the parameters being passed in. </li>
            </ol>
            <p>It's a more correct method of programming.</p>
            <pre class="brush:vb;">
                    Private Sub Command0_Click()
                        CreateSchedule
                    End Sub
                    
                    Sub CreateSchedule()
                        Dim dteDateStart As Date
                        Dim dteDateEnd As Date
                        dteDateStart = Format(Me.ctlDateStart,&quot;dd/mm/yyyy&quot;) 'Bad Code - refering the form control directly
                        dteDateEnd = Format(Me.ctlDateEnd, &quot;dd/mm/yyyy&quot;)
                        .....processing code
                    End Sub
                </pre>
            <p class="badCode">
                Bad Example</p>
            <pre class="brush:vb;">
                    Private Sub Command0_Click()
                        CreateSchedule(ctlDateStart, ctlDateEnd)
                    End Sub
                    
                    Sub CreateSchedule(pdteDateStart As Date, pdteDateEnd As Date)
                        Dim dteDateStart As Date
                        Dim dteDateEnd As Date
                        dteDateStart = Format(pdteDateStart, &quot;dd/mm/yyyy&quot;) 'Good Code - refering the parameter directly
                        dteDateEnd = Format(pdteDateEnd, &quot;dd/mm/yyyy&quot;)
                        &....processing code
                    End Sub
                </pre>
            <p class="goodCode">
                Good Example</p>
        </li>
        <li>
            <h2><a name="comments"></a>What do you do with comments and Debug.Print statements?</h2>
            <p>When you create comments in your code, it is better to document why you've done something a certain way than to document how you did it. The code itself should tell the reader what is happening, there's no need to create &quot;how&quot; comments that merely restate the obvious unless you're using some technique that won't be  apparent to most readers.</p>
            <p>What do you do with your print statements? Sometimes a programmer will place print statements at critical points in the program to print out debug statements for either bug hunting or testing. After the testing is successful, often the print statements are removed from the code. This is a bad thing to do. Debugging print statements are paths that show where the programmer has been. They should be commented out, but the statements should be left in the code in the form of comments. Thus, if the code breaks down later, the programmers (who might not remember or even know  the program to start with), will be able to see where testing has been done and where the fault is likely to be - i.e., elsewhere. </p>
            <pre class="brush:vb;">
                    Private Sub Command0_Click()
                        rst.Open &quot;SELECT * FROM Emp&quot; 'Open recordset with employee records
                        'Exit sub if the count is greater than 1,000
                        If intCount &gt; 1000 Then
                          Exit Sub
                        Else
                    EndIf
                    
                    .....processing code
                    End Sub </pre>
            <p class="badCode">
                Bad Example</p>
            <pre class="brush:vb;">
                    Private Sub Command0_Click()
                        'Count will exceed 1,000 during eighteenth century
                        'leap years, which we aren't prepared to handle.
                        If intCount &gt; 1000 Then
                         Exit Sub
                        Else
                        EndIf
                    End Sub</pre>
            <p class="goodCode">
                Good Example</p>
        </li>

        <li>
            <h2><a name="OptimizeXSDPerformance"></a>Do you avoid validating XML documents unnecessarily?</h2>
            <p>Validating an XML document against a schema is expensive, and should not be done where it is not absolutely necessary. Combined with weight the XML document object, validation can cause a significant performance hit:</p>
            <ul>
                <li>Read with XmlValidatingReader: 172203 nodes - 812 ms</li>
                <li>Read with XmlTextReader: 172203 nodes - 320 ms</li>
                <li>Parse using XmlDocument no validation - length 1619608 - 1052 ms</li>
                <li>Parse using XmlDocument with XmlValidatingReader: length 1619608 - 1862 ms</li>
            </ul>
            <p>You can disable validation when using the XmlDocument object by passing an XmlTextReader instead of the XmlValidatingTextReader:</p>
            <pre class="brush:xml;">XmlDocument report = new XmlDocument();
    XmlTextReader tr = new XmlTextReader(Configuration.LastReportPath);
    report.Load(tr);</pre>
            <p>To perform validation:</p>
            <pre class="brush:xml;">XmlDocument report = new XmlDocument();
            XmlTextReader tr = new XmlTextReader(Configuration.LastReportPath);
            XmlValidatingReader reader = new XmlValidatingReader(tr);
            report.Load(reader);</pre>
            <p>
                The XSD should be distributed in the same directory as the XML file and a relative
                path should be used:</p>
            <pre class="brush:xml;">&lt;Report&gt; &lt;Report xmlns=&quot;LinkAuditorReport.xsd&quot;&gt;
                                ... &lt;/Report&gt;</pre>
        </li>

        <li>
            <h2><a name="connectionTimeout"></a>Do you change the connection timeout to 5 seconds?</h2>
            <p>By default, the connection timeout is 15 seconds. When it comes to testing if a connection is valid or not, 15 seconds is a long time for the user to wait. You should change the connection timeout inside your connection strings to 5 seconds.</p>
            <pre class="brush:vb;">&quot;Integrated Security=SSPI;Initial Catalog=SallyKnoxMedical;Data 
                    Source=TUNA&quot;</pre>
            <p class="badCode">
                Bad Connection String</p>
            <pre class="brush:vb;">
                &quot;Integrated Security=SSPI;Initial Catalog=SallyKnoxMedical;Data Source=TUNA;
<b>Connect Timeout=5;</b>&quot;</pre>
            <p class="goodCode">
                Good Connection String</p>
        </li>

        <li>
            <h2><a name="longProcess"></a>Never start a long process (&gt;30 seconds) without a warning or make it obvious - like the start button on Code Auditor</h2>
            <p>You should never start a long process without first giving a warning message to warn the user approximately how long it will take.</p>
            <p><img src="images\lengthyoperation.jpg" alt="Lengthy operation" /></p>
            <p>You will need to have 2 things:</p>
            <ol>
                <li>A table to record processes containing the following fields:</li>
                    <ul>
                        <li>ALogRecord (DateCreated, FunctionName, EmpUpdated, ComputerName, ActiveForm, ActiveControl, SystemsResources, ConventionalMemory, FormsCount, TimeStart, TimeEnd, TimeTaken, RecordsProcessed, Avg, Note, RowGuide, SSWTimeStamp)</li>
                    </ul>
                <li>A function to change the number of seconds lapsed to words - see the &quot;1 minute, 9 seconds&quot; in the above messagebox - this requires a SecondsToWords() function shown. See our <a href="#">code base</a>.</li>
            </ol>
        </li>

        <li>
            <h2><a name="timetaken"></a>Do you have the time taken in the status bar?</h2>
            <p>
                This feature is Particularly important if the user runs a semi long task (e.g.30
                seconds) once a day. Only at the end of the long process can he know the particular
                amount of time, if the time taken dialog is shown after finish. If the status bar
                contains the time taken and the progress bar contains the progress percentage, he
                can evaluate how long it will take according to the time taken and percentage. Then
                he can switch to other work or go get a cup of coffee.
            </p>
            <p>
                Also for a developer you can use it to know if a piece of code you have modified
                has increased the performance of the task or hindered it.
            </p>
            <dl class="badCode">
                <img src="images\TimeTaken_Bad.jpg" alt="Time Taken" />
                <dd>
                    Figure: Bad example - popup dialog at the end of a long process</dd>
            </dl>
            <dl class="goodCode">
                <dt><img src="images\TimeTaken_Good.jpg" alt="Time Taken" /></dt>
                <dd>Figure: Good example - show time taken in the status bar</dd>
            </dl>
        </li>
        <li>
            <h2><a name="backwardCompatibility"></a>Does backward compatibility kill good code?</h2>
            <p>Supporting old operating systems and old versions means you have more (and often
                messy) code, with lots of if or switch statements. This might be OK for you, because
                you wrote the code, but down the track when someone else is maintaining it, then
                there is more time/expense needed.</p>
                <p>When you realize there is a better way to do something, then you will
                change it, clean code should be the goal, however because this affects old users,
                and changing interfaces at every whim also means expense for all the apps that break,
                the decision isn't so easy to make.</p>
                <p>Our views on backward compatibility starts with asking these questions:</p>
                    <ul>
                        <li>Question 1: How many apps are we going to break externally? </li>
                        <li>Question 2: How many apps are we going to break internally?</li>
                        <li>Question 3: What is the cost of providing backward compatibility and repairing (and test) all the broken apps?</li>
                    </ul>
                    <p>
                        Lets look at an example:</p>
                    <p>
                        We have a public web service <a href="/ssw/webservices/postcode/">/ssw/webservices/postcode/</a><br />
                        If we change the URL of this public Web Service, we'd have to answer the questions
                        as follows:</p>
                    <ul>
                        <li>Answer 1: Externally - Dont know, we have some leads:<br />
                            We can look at web stats and get an idea.
                            <br />
                            If an IP address enters our website at this point, it tells us that possibly an
                            application is using it and the user isn't just following the links. </li>
                        <li>Answer 2: Web site samples + Adams code demo</li>
                        <li>Answer 3: Can add a redirect or change the page to output a warning Old URL. Please
                            see www.ssw.com.au/ PostCodeWebService for new URL</li>
                    </ul>
                    <br />
                    <p>Because we know that not many external clients use this example, we decide to remove
                    the old web service after some time.</p>
                    <p>Just to be friendly, we would sent an email for the first month, and then another
                    email in the second month.&nbsp; After that, just emit &quot;This is deprecated
                    (old).&quot;&nbsp; We'll also need to update the UDDI so people don't keep coming
                    to our old address.</p>
                    <p>We all wish we never need to support old code, but sometimes the world doesn't go
                        that way, if your answer to question 3 scares you, then you might need to provide
                        some form of backward compatibility or warning.</p>
                    <table class="clsSSWTable" width="90%">
                        <tr>
                            <td>
                                <b>From:</b> John Liu www.ssw.com.au<br />
                                <b>To:</b> SSWALL<br />
                                <b>Subject:</b> Changing LookOut settings<br />
                                <br />
                                The stored procedure procSSWLookOutClientIDSelect (currently used only by LookOut
                                any version prior to 10) is being renamed to procSSWLookOutClientIDSelect. The old
                                stored procedure will be removed within 1 month.<br />
                                <br />
                                You can change your settings either by
                                <br />
                                <br />
                                <ul>
                                    <li>Going to LookOut Options -&gt; Database tab and select the new stored procedure:<br />
                                        <img src="Images/LookOutSettings.gif" alt="Lookout settings" width="391"
                                            height="260" /><br />
                                        <br />
                                    </li>
                                    <li>Upgrading to SSW LookOut version 10.0 which will be released later today</li>
                                </ul>
                            </td>
                        </tr>
                    </table>
        </li>
        <li>
            <h2>
                <a name="ExitSub"></a>Do you put Exit Sub before End Sub?</h2>
            <p>
                Do not put &quot;Exit Sub&quot; statements before the &quot;End Sub&quot;. The function
                will end on &quot;End Sub&quot;. &quot;Exit Sub&quot; is serving no real purpose
                here.</p>
            <pre class="brush:vb;">
                Private Sub SomeSubroutine()
                    'Your code here....
                    
                    Exit Sub ' Bad code - Writing Exit Sub before End Sub.
                End Sub
                </pre>
            <p class="badCode">
                Bad Example</p>
            <pre class="brush:vb;">
                Private Sub SomeOtherSubroutine()
                    'Your code here....
                    
                End Sub
                </pre>
            <p class="goodCode">
                Good Example</p>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                id="table12">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#ExitSub">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table>
        </li>
        <li>
            <h2>
                <a name="BooleanPropertyNamingConventions"></a>&nbsp; Do you follow naming conventions
                for your Boolean Property?</h2>
            <p>
                Boolean Properties must be prefixed by a verb. Verbs like &quot;Supports&quot;,
                &quot;Allow&quot;, &quot;Accept&quot;, &quot;Use&quot; should be valid. Also properties
                like &quot;Visible&quot;, &quot;Available&quot; should be accepted (maybe not).
                <a href="RulestoBetterSQLServerdatabases.aspx#BitFields">Here is how we name Boolean
                    columns in SQL databases.</a></p>
            <pre class="brush:vb;">
                        Public ReadOnly Property Enable As Boolean Get Return true End Get End Property
                        Public ReadOnly Property Invoice As Boolean Get Return m_Invoice End Get End Property</pre>
            <p class="badCode">
                Bad Example</p>
            <pre class="brush:vb;">
                        Public ReadOnly Property Enabled As Boolean Get Return true End Get End Property
                        Public ReadOnly Property IsInvoiceSent As Boolean Get return m_IsInvoiceSent End
                        Get End Property</pre>
            <p class="goodCode">
                Good Example</p>
            <table id="table10">
                <tr>
                    <td>
                        <b>Figure: Naming Convention for Boolean Property</b>
                    </td>
                </tr>
            </table>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                id="table12">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check
                        for this rule.
                    </td>
                </tr>
            </table>
        </li>
        <li>
            <h2>
                <a name="PropertiesNotFields"></a>Do you use Public/Protected Properties instead
                of Public/Protected Fields?</h2>
            <p>
                Public/Protected properties have a number of advantages over public/protected fields:</p>
            <ul>
                <li><b>Data validation<br />
                </b>Data validation can be performed in the get/set accessors of a public property.
                    This is especially important when working with the Visual Studio .NET Designer.</li>
                <li><b>Increased flexibility<br />
                </b>Properties conceal the data storage mechanism from the user, resulting in less broken
                    code when the class is upgraded. Properties are a recommended object-oriented practice
                    for this reason.</li>
                <li><b>Compatibility with data binding</b><br />
                    You can only bind to a public property, not a field.</li>
                <li><b>Minimal performance overhead</b><br />
                    The performance overhead for public properties is trivial. In some situations, public
                    fields can actually have inferior performance to public properties.</li>
            </ul>
            <br />
            <pre class="brush:c-sharp;">public int Count; </pre>
            <p class="badCode">
                Figure: Bad code. Variable declared as a Field.</p>
            <pre class="brush:c-sharp;">
                    public int Count
                    {
                        get
                            {
                                return _count;
                            }
                            set
                            {
                                     _count = value;    
                            }
                    }</pre>
            <p class="goodCode">
                Figure: Good code. Variable declared as a Property.</p>
            <p>
                We agree that the syntax is tedious and think <a href="/ssw/Standards/BetterSoftwareSuggestions/VisualStudio.aspx#PropertyShortcut">
                    Microsoft should improve this.</a></p>
            <br />
        </li>
        <li>
            <h2>
                <a name="StringEmpty"></a>Do you use String.Empty instead of &quot;&quot;?</h2>
            Considering the memory management of .NET Framework String.Empty will get higher
            performance then using &quot;&quot;.<br />
            <br />
            <pre class="brush:c-sharp;">
                    public string myString                   
                    {
                        get
                        {
                            return  ;
                        }   
                    } </pre>
            <p class="badCode">
                Figure: Bad code. Low performance.</p>
            <pre class="brush:c-sharp;">
                    public string myString
                    { 
                        get 
                        { 
                             return string.Empty; 
                        } 
                    }</pre>
            <p class="goodCode">
                Figure: Good code. Higher performance.</p>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                id="table12">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#TimeSpan">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table>
        </li>

        <li>
            <h2>
                <a name="TimeSpan"></a>Do you pre-format your time strings before using TimeSpan.Parse()?</h2>
            <p>
                TimeSpan.Parse() constructs a Timespan from a time indicated by a specified string.
                The acceptable parameters for this function are in the format &quot;d.hh:mm&quot;
                where &quot;d&quot; is the number of days (it is optional), &quot;hh&quot; is hours
                and is between 0 and 23 and &quot;mm&quot; is minutes and is between 0 and 59. If
                you try to pass, as parameter, as string such as &quot;45:30&quot; (meaning 45 hours
                and 30 minutes), TimeSpan.Parse() function will crash. (The exact exception received
                is: &quot;<i>System.OverflowException: TimeSpan overflowed becuase duration is too long</i>&quot;.)
                Therefore it is recommended that you should always pre-parse the time string before
                passing it to the &quot;TimeSpan.Parse()&quot; function. This pre-parsing is done
                by the FormatTimeSpanString( ) function. This function will format the input string
                correctly. Therefore, a time string of value &quot;45:30&quot; will be converted
                to &quot;1.21:30&quot; (meaning 1 day, 21 hours and 30 minutes). This format is
                perfectly acceptable for TimeSpan.Parse() function and it will not crash.</p>
            <br />
            <pre class="brush:vb;">
                        ts = TimeSpan.Parse(cboMyComboBox.Text) </pre>
            <p class="badCode">
                Figure: Bad code because a value greater than 24hours will crash eg. 45:30.
            </p>
            <pre class="brush:vb;">
                        ts = TimeSpan.Parse(FormatTimeSpanString(cboMyComboBox.Text))</pre>
            <p class="goodCode">
                Figure: Good code because we are using a wrapper method to pre-parse the string
                containing the
                <br />
                TimeSpan value. <a href="#">
                (Look it up in CodeBase)</a></p>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" width="90%">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#TimeSpan">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table>
        </li>
        <li>
            <h2>
                <a name="Interoper"></a>Do you use interoperability mechanism for COM object?</h2>
            <p>
                VB.NET includes the CreateObject () Method for creating the COM object. This is
                a old relationship between VB and COM.</p>
            <br />
            <pre class="brush:vb;">
                        Sub CreateADODBConnection()
                        Dim adoApp As Object
                        adoApp = CreateObject(&quot;ADODB.Connection&quot;)
                        End Sub </pre>
            <p class="badCode">
                Figure: Bad code. Uses a VB technique - CreateObject() - for creating a COM object.</p>
            <p>
                Using the CreateObject() method affects the performance of your application. The
                variable adoApp is of type Object and this results in &quot;late binding&quot;
                <br />
                which might lead to so much uncertainty. It is more efficient to use the interoperability
                features of .NET,which allows you to work with existing<br />
                unmanaged code (code running outside the CLR) in COM components as well as Microsoft
                Win32 DLLs. The interoperability feature uses run-time<br />
                callable wrappers for handling all interaction between the .NET client code (managed
                code) and the COM component (unmanaged code).</p>
            <br />
            To add references to COM objects:<br />
            <br />
            <ul>
                <li>On the Project menu, select Add Reference and then click the COM tab.</li>
                <li>Select the component you want to use from the list of COM objects.</li><br />
                <br />
                <img src="images\UserCOM.gif" alt="Using COM objects in .NET"><br />
                <br />
                <li>To access to the interoperability assembly in your application, add an Imports statement
                    to the top of the class or module in which you will<br />
                    use the COM object.</li><br />
                <br />
            </ul>
            <p>
                You can also create interoperability assemblies using the Tlbimp command line utility.</p>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                id="table12">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#Interoper">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table>
        </li>
        <li>
            <h2>
                <a name="ImportNamespaces"></a>Do you import namespaces and shorten the references?</h2>
            <pre class="brush:c-sharp;">
                    System.Text.StringBuilder myStringBuilder = new System.Text.StringBuilder();</pre>
            <p class="badCode">
                Figure: Long reference to object name. (Bad)</p>
            <pre class="brush:c-sharp;">
                    using System.Text;
                    ...
                    ...
                    StringBuilder myStringBuilder = new StringBuilder(); </pre>
            <p class="goodCode">
                Figure: Import the namespace and remove the repeated System.Text reference. (Good)</p>
            <p>
                If you have <a href="/ssw/Standards/DeveloperGeneral/netTools.aspx#ReSharper">ReSharper</a>
                installed, you can let ReSharper take care of this for you:
                <br />
                <br />
                1)<br />
                <img src="Images/ReSharperReformatCode.gif" width="222" height="219"><br />
                <b>Figure: Right click and select &quot;Reformat Code...&quot;.</b>
                <br />
                <br />
                2)<br />
                <img src="Images/ReSharperShortenReferences.gif" width="472" height="165"><br />
                <b>Figure: Make sure &quot;Shorten references&quot; is checked and click &quot;Reformat&quot;.</b>
            </p>
            <p>
                &nbsp;</p>
        </li>
        <li>
            <h2><a name="ClassAccess"></a>Do you declare member accessibility for all classes?</h2>
            <p>Not explicitly specifying the access type for members of a structure or class can
            be deceiving for other developers that are using this structure or class. The default
            structure and class members access in Visual C# .NET is always private. The default
            class member access in Visual Basic .NET is private. However, the default structure
            member access in Visual Basic .NET is public.</p>
            <pre class="brush:vb;">Match MatchExpression(string input, string pattern) </pre>
            <p class="badCode">
                Figure: Bad - Method without member accessibility declared.</p>
            <pre class="brush:vb;">private Match MatchExpression(string input, string pattern) </pre>
            <p class="goodCode">
                Figure: Good - Method with member accessibility declared.</p>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                id="table12">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#Interoper">SSW Code Auditor</a>
                        to check for this rule.
                    </td>
                </tr>
            </table>
        </li>

        <li>
            <h2><a name="ValidationExitSub"></a>Do you do your validation with Exit Sub?</h2>
            <p>
                The Exit Sub statement can be very useful when used for validation filtering.<br />
                Instead of a deep nested If, use Exit Sub or Return to provide a short execution
                path for conditions which are invalid.</p>
            <pre class="brush:vb;">
                    Private Sub AssignRightToLeft()                     
                    'Validate Right 
                        If lstParaRight.SelectedIndex &gt;= 0 Then 
                           'Validate Left 
                           If lstParaLeft.SelectedIndex &gt;= 0 Then 
                              Dim paraID As String = lstParaRight.SelectedValue.ToString                    
                              Dim mParagraph As BusinessLayer.Paragraph = New Paragraph 
                              mParagraph.MoveRight(paraID) 
                              RefreshData() 
                           End If 
                        End If
                     End Sub </pre>
            <p class="badCode">
                Figure: Bad example using nested if for validation.</p>
            <pre class="brush:vb;">
                    Private Sub AssignRightToLeft() 
                        'Validate Right and Left 
                        If lstParaRight.SelectedIndex = -1 Then Return
                            If lstParaLeft.SelectedIndex = -1 Then Return                        
                                Dim paraID As String = lstParaRight.SelectedValue.ToString 
                                Dim mParagraph As BusinessLayer.Paragraph = New Paragraph 
                                mParagraph.MoveRight(paraID)                    
                                RefreshData() 
                            End If
                        End If
                    End Sub </pre>
            <p class="goodCode">
                Figure: Good example using Exit Sub to exit early if invalid.</p>
        </li>
        <li>
            <h2>
                <a name="NewLineMsgbox"></a>Do you know how to format your MessageBox code?</h2>
            <p>
                You should always write each parameter of MessageBox in separate line. So it will
                be more clear to read in the code. Format your message text in code as you want
                to see on the screen.</p>
            <pre class="brush:vb;">
                        Private Sub ShowMyMessage()
                         
                            MessageBox.Show(&quot;Are
                            you sure you want to delete the team project &quot;&quot;&quot; + strProjectName
                            + &quot;&quot;&quot;?&quot; + Environment.NewLine + Environment.NewLine + &quot;Warning:
                            Deleting a team project cannot be undone.&quot;, strProductName + &quot;
                            &quot; + strVersion(), MessageBoxButtons.YesNo, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button2) 
                         
                        End Sub 
                    </pre>
            <p class="badCode">
                Figure: Bad example of MessageBox code format.</p>
            <pre class="brush:vb;">
                         Private Sub ShowMyMessage()
                             
                            MessageBox.Show( _ 
                             &quot;Are you sure you want to delete the team project &quot;&quot;&quot; + strProjectName + &quot;&quot;&quot;?&quot;
                            _  +  Environment.NewLine _ +
                              Environment.NewLine _ +
                              &quot;Warning: Deleting a team project cannot be undone.&quot;, _
                              strProductName + &quot; &quot; + strVersion(), _
                              MessageBoxButtons.YesNo, _
                              MessageBoxIcon.Warning, _
                              MessageBoxDefaultButton.Button2)
                            
                         End Sub
                    </pre>
            <p class="goodCode">
                Figure: Good example of MessageBox code format.</p>
        </li>
        <li>
            <h2>
                <a name="VerifyEmail"></a>Do you use a regular expression to validate an email address?</h2>
            <p>
                A regex is the best way to verify an email address.</p>
            <pre class="brush:c-sharp;">
                        public bool IsValidEmail(string email)
                        {
                            // Return true if it is in valid email format.
                            
                               if (email.IndexOf(&quot;@&quot;) &lt;= 0) return false; 
                               if (email.EndWith(&quot;@&quot;)) return false; 
                               if (email.IndexOf(&quot;.&quot;) &lt;= 0) return false; 
                            if ( ... 
                        } </pre>
            <p class="badCode">
                Figure: Bad example of verify email address.</p>
            <pre class="brush:c-sharp;">
                        public bool IsValidEmail(string email) 
                        { 
                            // Return true if it is in valid email format.
                         
                             return System.Text.RegularExpressions.Regex.IsMatch( email, 
                             @&quot;^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$&quot;;
                        } </pre>
            <p class="goodCode">
                Figure: Good example of verify email address.</p>
        </li>
        <li><a name="MessageInResourceFile"></a>
            <h2>
                Do you use resource file to store messages?</h2>
            <p>
                All message is stored in one centre place so it's easy to reuse. Further more it
                is strong typed - easy to type with Intellisence in Visual Studio.</p>
            <pre class="brush:vb;">Module Startup Dim HelloWorld As String = &quot;Hello World!&quot; Sub Main() Console.Write(HelloWorld)Console.Read() End Sub End Module </pre>
            <p class="badCode">
                Bad example of constant message</p>
            <dl class="goodImage">
                <dt>
                    <img src="Images/BetterCode_ConstantMessages.gif"></dt>
                <dd>
                    Figure: Saving constant message in resource
                </dd>
            </dl>
            <pre class="brush:vb;">Module Startup Sub Main() Console.Write(My.Resources.Messages.Constant_HelloWorld) Console.Read() End Sub End Module </pre>
            <p class="goodCode">
                Good example of constant message</p>
        </li>
        <li><a name="UnitTestSuffix"></a>
            <h2>
                Do you suffix unit test classes with &quot;Tests&quot;?</h2>
            <p>
                Unit test classes should be suffixed with the word &quot;Tests&quot; for better
                coding readability.</p>
            <pre class="brush:vb;">[TestFixture] public class SqlValidatorReportTest { } </pre>
            <p class="badCode">
                Bad - Unit test class is not suffixed with &quot;Tests&quot;</p>
            <pre class="brush:vb;">[TestFixture] public class HtmlDocumentTests { } </pre>
            <p class="goodCode">
                Good - Unit test class is suffixed with &quot;Tests&quot;</p>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                id="table3">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check
                        for this rule.
                    </td>
                </tr>
            </table>
            <br />
        </li>
        <li><a name="DontSuffixEnum"></a>
            <h2>
                Do you know that Enum types should not be suffixed with the word &quot;Enum&quot;?</h2>
            <p>
                This is against the .NET Object Naming Conventions and inconsistent with the framework.</p>
            <pre class="brush:vb;">Public Enum ProjectLanguageEnum CSharp VisualBasic End Enum </pre>
            <p class="badCode">
                Bad - Enum type is suffixed with the word &quot;Enum&quot;</p>
            <pre class="brush:vb;">Public Enum ProjectLanguage CSharp VisualBasic End Enum </pre>
            <p class="goodCode">
                Good - Enum type is not suffixed with the word &quot;Enum&quot;</p>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                id="table4">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check
                        for this rule.
                    </td>
                </tr>
            </table>
        </li>
        <li><a name="AvoidUsingStringsUseEnums"></a>
            <h2>
                Do you avoid using &quot;Strings&quot; in your code? Use &quot;Enum&quot;?</h2>
            <p>
                Use Enums instead of hard coded strings, it makes your code lot <b>cleaner</b> and
                is <b>really easy to manage</b>.
            </p>
            <dl class="badCode">
                <img src="./images/EnumBadExample.jpg" />
                <dd>
                    Figure: Bad example - "Hard coded string" works, but is a bad idea</dd>
                <br />
            </dl>
            <dl class="goodCode">
                <img src="./images/EnumGoodExample.jpg" />
                <dd>
                    Figure: Good example - Used Enums, looks good and is easy to manage
                </dd>
            </dl>
        </li>
        <li><a name="NoMagicNumbers"></a>
            <h2>
                Do you avoid using &quot;Magic numbers&quot; in your code? Use &quot;Enum - Constants&quot;
                instead?
            </h2>
            <p>
                Using "Magic numbers" in your code makes it confusing and really hard to maintain.
            </p>
            <dl class="badCode">
                <img src="./images/MagicNumberBad.jpg" />
                <dd>
                    Figure: Bad example - "Magic Number" works, but is a bad idea</dd>
                <br />
            </dl>
            <dl class="goodCode">
                <img src="./images/MagicNumberGood.jpg" />
                <dd>
                    Figure: Good example - No Magic Number, looks good and is easy to manage
                </dd>
            </dl>
        </li>
        <li><a name="VerifyUri"></a>
            <h2>
                Do you use a regular expression to validate an Uri?</h2>
            <p>
                A regex is the best way to verify an Uri.</p>
            <pre class="brush:c-sharp;">
                public bool IsValidUri(string uri)
                    {
                        try 
                        { 
                                Uri  testUri = new Uri(uri); 
                                return  true; 
                        } 
                        catch (UriFormatException ex)
                        { 
                                return  false; 
                        } 
                    } </pre>
            <p class="badCode">
                Figure: Bad example of verify Uri.</p>
            <pre class="brush:c-sharp;">
                public bool IsValidUri(string uri) 
                    { 
                        // Return true if it is in valid Uri format.
 
                        return System.Text.RegularExpressions.Regex.IsMatch( uri,@&quot;^(http|ftp|https)://([^\/][\w-/:]+\.?)+([\w- ./?/:/;/\%&amp;=]+)?(/[\w- ./?/:/;/\%&amp;=]*)?&quot;); 
                    } </pre>
            <p class="goodCode">
                Figure: Good example of verify Uri.</p>
            <p>You should have unit tests for it, see our <a href="/ssw/Standards/Rules/RulesToBetterUnitTests.aspx"> Rules to Better Unit Tests</a> for more information.</p>
        </li>

        <li><a name="Dispose"></a>
            <h2>
                Do you use &quot;using&quot; statement instead of use explicitly &quot;dispose&quot;?</h2>
            <p>
                Don't explicitly use &quot;dispose&quot; to close objects and dispose of them, the
                &quot;using&quot; statement will do all of them for you. It is another awesome tool
                that helps reduce coding effort and possible issues.</p>
            <pre class="brush:c-sharp;">
                SqlConnection conn = null; 
                    SqlCommand cmd = null; 
                    try 
                    { 
                        conn = new SqlConnection(ConnectionString); 
                        cmd = new SqlCommand(sql, conn); 
                        conn.Open(); 
                        cmd.ExecuteNonQuery(); 
                    } 
                    catch(SqlException ex) 
                    { 
                        ... 
                    } 
                    finally 
                    { 
                        if(cmd!=null) 
                        {cmd.Dispose();} 
                        if(conn!=null) 
                        {conn.Dispose();} 
                    } 
                </pre>
            <p class="badCode">
                Figure: Bad example of dispose of resources.</p>
            <pre class="brush:c-sharp;">FileStream fs = new FileStream(filePath, FileMode.Open, FileAccess.Read); 
                    StreamReader sr = new StreamReader(fs); 
                </pre>
            <p class="badCode">
                Figure: Bad example of dispose of resources.</p>
            <pre class="brush:c-sharp;">
                try 
                    { 
                        using (SqlConnection conn = new SqlConnection(ConnectionString)) 
                        { 
                            using (cmd = new SqlCommand(sql, conn)) 
                            { 
                                conn.Open(); 
                                cmd.ExecuteNonQuery();  
                                conn.Close();   
                            } 
                        } 
                    } 
                    catch(SqlException ex) 
                    { 
                        ... 
                    } 
                </pre>
            <p class="goodCode">
                Figure: Good example of dispose of resources.</p>
            <pre class="brush:c-sharp;">
                using(FileStream fs = new FileStream(filePath, FileMode.Open, FileAccess.Read)) 
                    { 
                        using(StreamReader sr = new StreamReader(fs)) 
                        { 
                            ... 
                        } 
                    } 
                </pre>
            <p class="goodCode">
                Figure: Good example of dispose of resources.</p>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                id="table5">
                <tr>
                    <td>
                        We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check
                        for this rule.
                    </td>
                </tr>
            </table>
        </li>
        <li><a name="AppNameforSCS"></a>
            <h2>
                Do you add the Application Name in the SQL Server connection string?</h2>
            <p>
                You should always add the application name to the connection string, so that SQL
                Server will know which application is connecting, and which database is used by
                that application. This will also allow SQL Profiler to trace individual application
                which help you monitor performance or resolve conflicts .
            </p>
            <pre class="brush:vb;">
                    &lt;add key=&quot;Connection&quot; value=&quot;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Biotrack01;Data Source=sheep;&quot;/&gt;
                    </pre>
            <p class="badCode">
                Bad example - The connection string without Application Name.
            </p>
            <pre class="brush:vb;">&lt;add key=&quot;Connection&quot; value=&quot;Integrated Security=SSPI;Persist Security 
                    Info=False;Initial Catalog=Biotrack01;Data Source=sheep; 
                    Application Name=Biotracker&quot;/&gt;  // Good Code - Application Name is added in the connection string.
                    </pre>
            <p class="goodCode">
                Good example - The connection string with Application Name.
            </p>
        </li>
        <li><a name="StoreMessage"></a>
            <h2>
                Do you use resource file to store all the messages and globlal strings?</h2>
            <p>
                Storing all the messages and globlal strings in one place will make it easy to manage
                them and to keep the applications in the same style.</p>
            <dl class="image">
                <dt>
                    <img src="Images/Code_StoreMessage.gif" alt="Store messages in Message.resx" /></dt>
                <dd>
                    Store messages in the Message.resx</dd>
            </dl>
            <pre class="brush:sql;">
                    Catch(SqlNullValueException  sqlex)
	                {
	                    Response.Write(&quot;The valule cannot be null.&quot;);
	                }
	            </pre>
            <p class="badCode">
                Bad Example - if you want to change the message, it will cost you lots of time to
                investigate every try-catch block</p>
            <pre class="brush:sql;">
                    Catch(SqlNullValueException  sqlex)
	                {
	                    Response.Write(GetGlobalResourceObject(&quot;Messages&quot;, &quot;SqlValueNotNull&quot;));
	                }
	            </pre>
            <p class="goodCode">
                Better Example - better than the hard code, but still wordy.</p>
            <pre class="brush:sql;">
                    Catch(SqlNullValueException  sqlex)
	                {
	                    Response.Write(Resources.Messages.SqlValueNotNull); 'Good Code - storing message in resource file. 
	                }        
	            </pre>
            <p class="goodCode">
                Good Example</p>
        </li>
        <li><a name="SettingsInDB"></a>
            <h2>
                Do you store Application-Level Settings in your database rather than configuration
                files when possible?</h2>
            <p>
                For database applications, it is best to keep application-level values (apart from
                connection strings) from this in the database rather than in the web.config.
                <br />
                There are some merits as following:
                <ol>
                    <li>It can be updated easily with normal SQL e.g. Rolling over the current setting to
                        a new value.</li>
                    <li>It can be used in joins and in other queries easily without the need to pass in
                        parameters.</li>
                    <li>It can be used to update settings and affect the other applications based on the
                        same database.</li>
                </ol>
            </p>
        </li>
        <li><a name="CheckButtonEventHandler"></a>
            <h2>
                Do you always check your button's event handler hook-up?</h2>
            <p>
                Sometimes the button's event handler hook-up could be lost by accident, but there
                will be no warning or error reported when you complie your applications.
            </p>
            <pre class="brush:c-sharp;">
                this.button1 = new System.Windows.Forms.Button();
                this.button1.FlatStyle = System.Windows.Forms.FlatStyle.System;
                this.button1.Location = new System.Drawing.Point(419, 115);
                this.button1.Name = &quot;button1&quot;;
                this.button1.Size = new System.Drawing.Size(75, 23);
                this.button1.TabIndex = 60;
                this.button1.UseVisualStyleBackColor = true;
	            </pre>
            <p class="badCode">
                Bad Example - the event handler hook-up is lost, so there will be no response after
                you click the button.</p>
                <pre class="brush:c-sharp;">
                    this.btnResetAll = new System.Windows.Forms.Button();
                    this.btnResetAll.FlatStyle = System.Windows.Forms.FlatStyle.System;
                    this.btnResetAll.Location = new System.Drawing.Point(417, 410);
                    this.btnResetAll.Name = &quot;btnResetAll&quot;;
                    this.btnResetAll.Size = new System.Drawing.Size(75, 23);
                    this.btnResetAll.TabIndex = 54;
                    this.btnResetAll.Text = &quot;Reset &amp;All&quot;;
                    this.btnResetAll.UseVisualStyleBackColor = true;
                    this.btnResetAll.Click += new System.EventHandler(this.btnResetAll_Click);       
	            </pre>
                <p class="goodCode">
                    Good Example : keep the event handler hook-up together with the initialization of
                    the button</p>
        </li>
        <li><a name="OutsideTry"></a>
            <h2>
                Do you initialize variables outside of the try block?</h2>
            <pre class="brush:c-sharp;">
                    Cursor cur;

                    try
                    {
                        ...
                        cur = Cursor.Current; //Bad Code - initializing the variable inside the try block
                        Cursor.Current = Cursors.WaitCursor;
                        ...
                    }
                    finally
                    {
                        Cursor.Current = cur;
                    }
	            </pre>
            <p class="badCode">
                Bad Example : Because the initializing code inside the try block. If it failed on
                this line then you will get a NullReferenceException in Finally.
            </p>
            <pre class="brush:c-sharp;">
                Cursor cur = Cursor.Current; //Good Code - initializing the variable outside the try block
    
                    try
                    {
                        ...
                        Cursor.Current = Cursors.WaitCursor;
                        ...
                    }
                    finally
                    {
                        Cursor.Current = cur;
                    }
	            </pre>
            <p class="goodCode">
                Good Example : Because the initializing code is outside the try block.
            </p>
        </li>
        <li><a name="Environment"></a>
            <h2>
                Do you format "Environment.NewLine" at the end of a line?
            </h2>
            <pre class="brush:c-sharp;">
                    DialogResult diaResult = MessageBox.Show(this,
                    "The database is not valid." + Environment.NewLine +  "Do you want to upgrade it? ", 
                    "Tip", 
                    MessageBoxButtons.YesNo,
                    MessageBoxIcon.Warning);
	            </pre>
            <p class="badCode">
                Bad Example : Because "Environment.NewLine" isn't at the end of the line.
            </p>
            <pre class="brush:c-sharp;">
                    DialogResult diaResult = MessageBox.Show(this,
                    "The database is not valid." + Environment.NewLine
                    + "Do you want to upgrade it? ", 
                    "Tip", 
                    MessageBoxButtons.YesNo,
                    MessageBoxIcon.Warning);
	            </pre>
            <p class="goodCode">
                Good Example : Because "Environment.NewLine" is at the end of the line.
            </p>
            <pre class="brush:c-sharp;">
                    return string.Join(Environment.NewLine, paragraphs);
	            </pre>
            <p class="goodCode">
                Good Example : Because "Environment.NewLine" is an exception for String.Join.
            </p>
        </li>
        <li><a name="ThreadSleep"></a>
            <h2>
                Do you add a comment when you use Thread.Sleep?</h2>
            <p>
                when a sleep is added to the code to delay a process, it should always be commented
            </p>
            <pre class="brush:vb;">
            Friend Function RefreshSchema() As DialogResult
            SSW.SQLAuditor.WindowsUI.QueryAnalysisForm.RunScript(Startup.PageQueryAnalyzer.txtScript.Text)
            System.Windows.Forms.Application.DoEvents()</pre>
            <pre class="brush:vb;">
            'This is a sleep to delay the Application.DoEvent process        
            System.Threading.Thread.Sleep(500)
            System.Windows.Forms.Application.DoEvents()   
            ...
            </pre>
        </li>
        <li><a name="SQLConnStr"></a>
            <h2>
                Do you know the right way to define a connection string?</h2>
            <p>
                The bad practice below because the application can now do anything it wants to the
                SQL server (e.g. DROP other databases)
            </p>
            <pre class="brush:vb;">Server=DRAGON;Database=SSWData2005;Uid=sa;Pwd=password;
                    </pre>
            <p class="badCode">
                Bad example - The connection string use 'sa' in Uid.
            </p>
            <pre class="brush:vb;">If using SQL Authentication
                    Server=DRAGON;Database=SSWData2005;Uid=SSWWebsite;Pwd=password;Application Name=SSWWebsite 
                    If using Windows Authentication (Recommended)
                    Server=DRAGON;Database=SSWData2005;Integrated Security=True;Application Name=SSWWebsite 
                    Your connection string should always contain: 
                 </pre>
            <p class="goodCode">
                Good example - The connection string with Application Name.
            </p>
            <p>
                . Application Name (e.g. SSWWebsite)<br />
                &nbsp;&nbsp;&nbsp;&nbsp;o&nbsp;This makes profiling the database easier as you can
                filter by Application Name<br />
                . Application Specific Login/Windows Integrated security with a Domain Account for
                the application (e.g. SSWWebsite)<br />
                &nbsp;&nbsp;&nbsp;&nbsp;o&nbsp;These logins should only have access to the databases
                they use (e.g. SSWData2005)<br />
            </p>
        </li>
        <li><a name="GoogleReference"></a>
            <h2>
                Do you reference websites when you implement something you found on Google?</h2>
            <p>
                If you end up using someone else's code, or even idea, that you found online, make
                sure you add a reference to this in your source code. There is a good chance that
                you or your team will revisit the website. And of course, it never hurts to tip
                your hat off to other coders.</p>
            <pre class="brush:c-sharp;">			    
                private void HideToSystemTray()
                {
                     // Hide the windows form in the system tray
                     if (FormWindowState.Minimized == WindowState)
                     {   
                         Hide();
                     }      
                }			    
			    </pre>
            <p class="badCode">
                <b>Bad Example:</b> The website where the solution was found IS NOT referenced in
                the comments.</p>
            <pre class="brush:c-sharp;">			    
                private void HideToSystemTray()
                {
                     // Hide the windows form in the system tray
                     // I found this solution at http://www.developer.com/net/csharp/article.php/3336751
                     if (FormWindowState.Minimized == WindowState)
                     {   
                          Hide();
                     }      
                }			    
			    </pre>
            <p class="goodCode">
                Good Example: The website where the solution was found is referenced in the comments.</p>
        </li>
        <li><a name="PresentationLayer"></a>
            <h2>
                Do you avoid putting business logic into the presentation layer?</h2>
            <p>
                Be sure you are aware of what is business logic and what isn't. Typically, looping
                code will be placed in the business layer. This ensures that no redundant code is
                written and other projects can reference this logic as well.</p>
            <pre class="brush:c-sharp;">
            private void btnOK_Click(object sender, EventArgs e)
            {
                rtbParaText.Clear();

                var query =
                    from p in dc.GetTable()
                    select p.ParaID;

                foreach (var result in query)
                {
                    var query2 =
                        from t in dc.GetTable()
                        where t.ParaID == result
                        select t.ParaText;

                    rtbParaText.AppendText(query2.First() + "\r\n");

                }
            }
           </pre>
            <p class="badCode">
                <b>Bad Example:</b> A UI method mixed with business logics.</p>
            <pre class="brush:c-sharp;">
            private void btnOK_Click(object sender, EventArgs e)
            {

                 string paraText = Business.GetParaText();
	              rtbParaText.Clear();
	              rtbParaText.Add(paraText);
            }
</pre>
            <p class="goodCode">
                Good Example : Putting business logics into the business project, just call the
                relevant method when needed.</p>
        </li>
        <li><a name="EnvironmentNewLine"></a>
            <h2>
                Do you use Environment.NewLine to make a new line in your string?</h2>
            <p>
                When you need to create a new line in your string, make sure you use Environment.NewLine,
                and then literally begin typing your code on a new line for readability purposes.</p>
            <pre class="brush:c-sharp;">			    
String strExample = "This is a very long string that is \r\n not properly implementing a new line.";  
			    </pre>
            <p class="badCode">
                Bad Example: The string has implemented a manual carriage return line feed pair
                (\r\n)
            </p>
            <pre class="brush:c-sharp;">		    
String strExample = "This is a very long string that is " + Environment.NewLine +
			        " properly implementing a new line.";
			    </pre>
            <p class="goodCode">
                Good Example: The new line is created with Enviroment.NewLine
            </p>
        </li>
        <li><a name="UniformMethod"></a>
            <h2>
                Do you wrap the same logic in a method instead of writing it again and again whenever
                it's used?</h2>
            <p>
                If a logic (a piece of code) will occur more than once, please make it a method
                and call it whenever it's used. This will reduce redundancy, decrease maintenance
                effort, improve efficiency and reusability, and make the code more clear to read.</p>
            <pre class="brush:c-sharp;">
public class WarningEmail
{
    //...
    public void SendWarningEmail(string pFrom, string pTo, string pCC, string pUser, string pPwd, string pDomain)
    {
        //...

        MailMessage sMessage = new MailMessage();
        sMessage.From = new MailAddress(pFrom);
        sMessage.To.Add(pTo);
        sMessage.CC.Add(pCC);
        sMessage.Subject = "This is a Warning";
        sMessage.Body = GetWarning();
        SmtpClient sSmtpClient = new SmtpClient();
        sSmtpClient.Credentials = new NetworkCredential(pUser, pPwd, pDomain);
        sSmtpClient.Send(sMessage);

        //...
    }
}

public class ErrorEmail
{
    public void SendErrorEmail(string pFrom, string pTo, string pCC, string pUser, string pPwd, string pDomain)
    {
        //...

        MailMessage sMessage = new MailMessage();
        sMessage.From = new MailAddress(pFrom);
        sMessage.To.Add(pTo);
        sMessage.CC.Add(pCC);
        sMessage.Subject = "This is a Error";
        sMessage.Body = GetError();
        SmtpClient sSmtpClient = new SmtpClient();
        sSmtpClient.Credentials = new NetworkCredential(pUser, pPwd, pDomain);
        sSmtpClient.Send(sMessage);

        //...
    }
}        
        </pre>
            <p class="badCode">
                Bad Example: Write the same logic repeatedly</p>
            <pre class="brush:c-sharp;">
public class WarningEmail
{
    //...
    public void SendWarningEmail(string pFrom, string pTo, string pCC, string pUser, string pPwd, string pDomain)
    {
        //...

        EmailHelper.SendEmail(pFrom, pTo, pCC, "This is a Warning", GetWarning(), pUser, pPwd, pDomain);

        //...
    }
}

public class ErrorEmail
{
    public void SendErrorEmail(string pFrom, string pTo, string pCC, string pUser, string pPwd, string pDomain)
    {
        //...

        EmailHelper.SendEmail(pFrom, pTo, pCC, "This is an Error", GetError(), pUser, pPwd, pDomain);

        //...
    }
}

public class EmailHelper
{    
    public static void SendEmail(string pFrom, string pTo, string pCC, string pSubject, string pBody, string pUser, string pPwd, string pDomain)
    {
        MailMessage sMessage = new MailMessage();
        sMessage.From = new MailAddress(pFrom);
        sMessage.To.Add(pTo);
        sMessage.CC.Add(pCC);
        sMessage.Subject = pSubject;
        sMessage.Body = pBody;
        SmtpClient sSmtpClient = new SmtpClient();
        sSmtpClient.Credentials = new NetworkCredential(pUser, pPwd, pDomain);
        sSmtpClient.Send(sMessage);
    }      
}
        </pre>
            <p class="goodCode">
                Good Example: Put the same logic in a method and make it reusable</p>
        </li>
        <li><a name="NamedParameters"></a>
            <h2>
                Do you know when to use named parameters?</h2>
            <p>
                Named parameters have always been there for VB developers and in C# 4.0, C# developers
                finally get this feature.
            </p>
            <p>
                You should use named parameters under these scenarios:</p>
            <ul>
                <li>When there are 4 or more parameters</li>
                <li>When you make use of optional parameters</li>
                <li>If it makes more sense to order the parameters a certain way</li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="OptionalParameters"></a>Do you put optional parameters at the end?</h2>
            <p>
                Optional parameters should be placed at the end of the method signature as optional
                ones tend to be less important. You should put the important parameters first.</p>
            <pre class="brush:vb;">
          public void SaveUserProfile(
                   [Optional] string username,
                   [Optional] string password,
                   string firstName,
                   string lastName, 
                   [Optional] DateTime? birthDate)
          </pre>
            <p class="badCode">
                Figure: Bad Example - Username and Password are optional and first - they are less
                important than firstName and lastName and should be put at the end</p>
            <pre class="brush:vb;">
          public void SaveUserProfile(
                   string firstName,
                   string lastName, 
                   [Optional] string username,
                   [Optional] string password,
                   [Optional] DateTime? birthDate)
          </pre>
            <p class="goodCode">
                Figure: Good Example - All the optional parameters are the end</p>
            <p>
                Note: When using optional parameters, please be sure to use <a href="/ssw/Standards/Rules/RulestoBetterCode.aspx#NamedParameters">
                    named parameters</a></p>
        </li>
        <li>
            <h2>
                <a name="AvoidCasts"></a>Do you avoid casts and use the "as operator" instead?</h2>
            <p>
                Use casts only if
                <br />
                a. You know 100% that you get that type back<br />
                b. You want to perform user-defined conversion
            </p>
            <pre class="brush:vb;">
         private void AMControlMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            var auc = (AMUserControl)sender; 
            var aucSessionId = auc.myUserControl.Tag;
            // snip snip snip
   
        }
          </pre>
            <p class="badCode">
                BAD</p>
            <pre class="brush:vb;">
        private void AMControlMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            var auc = sender as AMUserControl; 
            if (auc != null)
            {
               var aucSessionId = auc.myUserControl.Tag;
               // snip snip snip
            }   
        }
          </pre>
            <p class="goodCode">
                GOOD</p>
            <p>
                More info here<br />
                <a href="http://blog.gfader.com/2010/08/avoid-type-casts-use-operator-and-check.html">
                    http://blog.gfader.com/2010/08/avoid-type-casts-use-operator-and-check.html</a>
              
            </p>
        </li>

        <li>
            <h2><a name="ExposeEvents"></a>Do you expose events as events?</h2>
            <pre class="brush:vb;">
           public Action
< connectioninformation > ConnectionProblem;
          </pre>
            <p class="badCode">
                Bad code
            </p>
            <pre class="brush:vb;">
           public event Action
< connectioninformation > ConnectionProblem;
          </pre>
            <p class="goodCode">
                Good code
            </p>
        </li>

        <li>
            <h2>
                <a name="NameEvents"></a>Do you name your events property?</h2>
            <p>
                Events should end in "ing" or "ed"</p>
            <pre class="brush:vb;">
           public event Action
< connectioninformation > ConnectionProblem;
          </pre>
            <p class="badCode">
                Bad code
            </p>
            <pre class="brush:vb;">
           public event Action
< connectioninformation > ConnectionProblemDetected;
          </pre>
            <p class="goodCode">
                Good code
            </p>
        </li>
        <li>
            <h2><a name="AvoidUI"></a>Do you avoid "UI" in event names?</h2>
            <p>No "UI" in event names, the event raiser should be unaware of the UI in MVVM and
                usercontrols<br />
                The handler of the event should then do something on the UI
            </p>
            <pre class="brush:vb;">
           private void RaiseUIUpdateBidButtonsRed()
        {
            if (UIUpdateBidButtonsRed != null)
            {
                UIUpdateBidButtonsRed();
            }
        }          
          </pre>
            <p class="badCode">Bad Code: Avoid "UI" in event names, an event is UI un-aware</p>
            <pre class="brush:vb;">
           private void RaiseSelectedLotUpdated()
        {
            if (SelectedLotUpdated != null)
            {
                SelectedLotUpdated();
            }
        }        
          </pre>
            <p class="goodCode">Good Code: We received an update on the current selected item, change the UI correspondingly (or even better: use MVVM and databinding)
            </p>
        </li>
        <li>
            <h2><a name="RaiseEvents"></a>Do you use a helper extension method to raise events?</h2>
            <p>Instead of:</p>
            <pre class="brush:vb;">
             private void RaiseUpdateOnExistingLotReceived()
        {
            if (ExistingLotUpdated != null)
            {
                ExistingLotUpdated();
            }
        }
          </pre>
            <p>...use this event extension methods:</p>
            <pre class="brush:vb;">
           public static void Raise&lt;t&gt;(this EventHandler&lt;t&gt; @event,
                                    object sender, T args) where T : EventArgs
        {
            var temp = @event;
            if (temp != null)
            {
                temp(sender, args);
            }
        }

        public static void Raise(this Action @event)
        {
            var temp = @event;
            if (temp != null)
            {
                temp();
            }
        }
          </pre>
            <p>That means that instead of calling:</p>
            <pre class="brush:vb;">
          RaiseExistingLotUpdated();
          </pre>
            <p>...you can do:</p>
            <pre class="brush:vb;">
          ExistingLotUpdated.Raise();
          </pre>
            <p>Less code = less code to maintain = less code to be blamed for ;)</p>
        </li>
        <li>
            <h2><a name="WorkAround"></a>Do you know what to do with a work around?</h2>
            <div class="greyBox">
                Exercise: Understand commenting<br />
                You have just added a grid that auto updates, but you need to disable all the timers
                when you click the edit button. You have found an article on Code Project and you
                have added the work around.<br />
                <a href="http://www.codeproject.com/Articles/39194/Disable-a-timer-at-every-level-of-your-ASP-NET-con.aspx">
                    http://www.codeproject.com/Articles/39194/Disable-a-timer-at-every-level-of-your-ASP-NET-con.aspx</a>
                <br />
                Now what do you do?<br />
                Current code:<br />
                <pre class="code">
Sub OnPagePreRender(ByVal sender As Object, ByVal e As EventArgs)
 ' Fix for pages that allow edit in grids
 Me.FindControls(Of System.Web.UI.Timer).ForEach(Sub (c) c.Enabled = False)
End Sub
            </pre>
                <b>Figure: Work around code in the Page Render</b>
            </div>
            If you have to use a work around you should always comment your code and reference.
            You should also make a Suggestion to [Product] if you think it is something that
            the product should do.
            <ol>
                <li>Comment in the code with URL to and existing or new Suggestion</li>
                <li>Create a Suggestion to .NET 3 that points to blog post</li>
            </ol>
            <div class="greyBox">
                "This is a work around as per the suggestion
                <br />
                "[URL]
            </div>
            <b>Figure: Always add a URL to the suggestion that you are compensating for</b>
            <div style="clear: both;">
            </div>
        </li>
        <li>
            <h2><a name="BoyscoutRule"></a>Do you follow boy scout rule?</h2>
            <p>The idea is simply, each time leave code a little cleaner then you found it.</p>
            <p>Common examples are:</p>
            <ol>
                <li>Make sure one rule is enabled in code analysis and</li>
                <li>One rule in StyleCop and </li>
                <li>Get Code Auditor to zero</li>
            </ol>
            <p>Related links:</p>
                <ul>
                    <li>http://stackoverflow.com/questions/455269/refactoring-do-you-follow-the-boy-scout-rule</li>
                    <li><a href="http://programmer.97things.oreilly.com/wiki/index.php/The_Boy_Scout_Rule" target="_blank" >http://programmer.97things.oreilly.com/wiki/index.php/The_Boy_Scout_Rule</a></li>
                </ul>
        </li>

        <li>
            <h2><a name="CreateSuggestions"></a>Do you always create suggestions when something is hard to do?</h2>
            <p>One of our goals is to make the job of the developer as easy as possible. If you have to write a lot of code for something that you think you should not have to do, you should make a suggestion and add it to the relevant page.</p>
            <p>If you have to add a suggestion, make sure that you put the link to that suggestion into the comments of your code.</p>
            <pre class="brush: vb; ruler: true; highlight: [5,6,7];">Imports System.Windows.Threading
Imports System.Threading

''' &lt;summary&gt;
''' base class for command implementations 
''' This is a work around as standard MVVM commands 
''' are not provided by default
''' &lt;/summary&gt;
''' &lt;remarks&gt;&lt;/remarks&gt;
Public MustInherit Class Command
    Implements ICommand

    Private m_dispatcher As Dispatcher

    Protected Sub New()
        If Not Application.Current Is Nothing Then
            m_dispatcher = Application.Current.Dispatcher
        Else
            m_dispatcher = Dispatcher.CurrentDispatcher
        End If
        Debug.Assert(Not m_dispatcher Is Nothing)
    End Sub

    Public MustOverride Function CanExecute(ByVal parameter As Object) As Boolean Implements System.Windows.Input.ICommand.CanExecute
    Public MustOverride Sub Execute(ByVal parameter As Object) Implements System.Windows.Input.ICommand.Execute
    Public Event CanExecuteChanged(ByVal sender As Object, ByVal e As System.EventArgs) Implements System.Windows.Input.ICommand.CanExecuteChanged


    Public Sub OnCanExecuteChanged()
        If Not m_dispatcher.CheckAccess Then
            m_dispatcher.Invoke(New ThreadStart(AddressOf OnCanExecuteChanged), DispatcherPriority.Normal)
        Else
            CommandManager.InvalidateRequerySuggested()
            RaiseEvent CanExecuteChanged(Me, New EventArgs)
        End If
    End Sub

End Class</pre>
            <strong>Figure: Bad example - The link to the suggestion should be in the comments</strong>
            <pre class="brush: vb; ruler: true; highlight: [5,6,7,8];">Imports System.Windows.Threading
Imports System.Threading

''' &lt;summary&gt;
''' base class for command implementations 
''' This is a work around as standard MVVM commands 
''' are not provided by default
''' http://www.ssw.com.au/ssw/Standards/BetterSoftwareSuggestions/WPF.aspx#EmbraseMVVM
''' &lt;/summary&gt;
''' &lt;remarks&gt;&lt;/remarks&gt;
Public MustInherit Class Command
    Implements ICommand

    Private m_dispatcher As Dispatcher

    Protected Sub New()
        If Not Application.Current Is Nothing Then
            m_dispatcher = Application.Current.Dispatcher
        Else
            m_dispatcher = Dispatcher.CurrentDispatcher
        End If
        Debug.Assert(Not m_dispatcher Is Nothing)
    End Sub

    Public MustOverride Function CanExecute(ByVal parameter As Object) As Boolean Implements System.Windows.Input.ICommand.CanExecute
    Public MustOverride Sub Execute(ByVal parameter As Object) Implements System.Windows.Input.ICommand.Execute
    Public Event CanExecuteChanged(ByVal sender As Object, ByVal e As System.EventArgs) Implements System.Windows.Input.ICommand.CanExecuteChanged


    Public Sub OnCanExecuteChanged()
        If Not m_dispatcher.CheckAccess Then
            m_dispatcher.Invoke(New ThreadStart(AddressOf OnCanExecuteChanged), DispatcherPriority.Normal)
        Else
            CommandManager.InvalidateRequerySuggested()
            RaiseEvent CanExecuteChanged(Me, New EventArgs)
        End If
    End Sub

End Class</pre>
            <b>Figure: Good example - When you link to a suggestion everyone can find it and vote
                it up</b></li>
        <li>
            <h2><a name="NoEmptyCodeBlock"></a>Do you avoid Empty code block?</h2>
            <p>Empty Visual C# .NET method consume program resources unnecessarily. Put comment in code block if its stub for future application.<p>
                    <strong>Exception:</strong> If a Class implements an Inherited Interface method,
                    you should add a comment within the Code block</p>
            </p>
            <pre class="brush:c-sharp;">
          public class Sample
            {
                public double salary()
                    {
                        return 2500.00;
                    }
            }
    </pre>
            <p class="goodCode"><strong>Figure: Good Example - Method implements some code.</strong></p>
            <pre class="brush:c-sharp;">
          public class Example
            {
                public double salary()
                { 
                }
            }
    </pre>
            <p class="badCode"><strong>Figure: Bad Example - Method is empty.</strong></p>
            <pre class="brush:c-sharp;">
            public interface IDemo
                {
                    void DoSomethingUseful();
                    void SomethingThatCanBeIgnored();
                }
            public class Demo : IDemo
                {
                    public void DoSomethingUseful()
                        {
                            // no audit issues
                            Console.WriteLine("Useful");
                        }
 
                        // audit issues 
                    public void SomethingThatCanBeIgnored()
                        { 
                        } 
                } 
      </pre>
            <p class="badCode">
                <strong>Figure: Bad Example - No Comment within empty code block</strong>
            </p>
            <pre class="brush:c-sharp;">
            public interface IDemo
                {
                    void DoSomethingUseful();
                    void SomethingThatCanBeIgnored();
                }
              
            public class Demo : IDemo
                {
                    public void DoSomethingUseful()
                        {
                            // no audit issues
                            Console.WriteLine("Useful");
                        }
 
                    // No audit issues 
                    public void SomethingThatCanBeIgnored() 
                        {
                            // stub for IDemo interface
                        }   
                } 
      </pre>
            <p class="goodCode">
                <strong>Figure: Good Example - Added comment within Empty Code block method of interface</strong>
                class.
            </p>
        </li>
        <li>
            <h2>
                <a name="AvoidIfElseBlock"></a>Do you avoid using if-else instead of switch block</h2>
            <p>
                The .NET framework and the C# language provide two methods for conditional handling
                where multiple distinct values can be selected from. The switch statement is less
                flexible than the if-else-if tree but is generally considered to be more efficient.
                .NET compiler generates a jump list for switch block for that reason it is faster
                for long list of condition. And also complier has the ability to optimize the switch
                block. Condition in the switch block is faster as compiler evaluated the condition
                once but for if-else block, compiler need to evaluate the condition for each 'else
                if' block
            </p>
            <p>
                Note: Performance is very much negligible when number of condition is less than
                5. So if the code design is clearer & easily maintainable by using if-else block,
                then Developer should use if-else block for fewer conditions</p>
            <pre class="brush:c-sharp;">
        int DepartmentId = GetDepartmentId()
        if(DepartmentId == 1)
        {
            // do something
        }
        else if(DepartmentId == 2)
        {
            // do something #2
        }
        else if(DepartmentId == 3)
        {
            // do something #3
        }
        else if(DepartmentId == 4)
        {
            // do something #4
        }
        else if(DepartmentId == 5)
        {
            // do something #5
        }
        else 
        {
            // do something #6
        }
            </pre>
            <p class="badCode">
                <strong>Figure: Bad example of coding practice</strong></p>
            <pre class="brush:c-sharp;">
        int DepartmentId = GetDepartmentId()
        switch(DepartmentId)
        {
            case 1:
            // do something
            break;
            case 2:
            // do something # 2
            break;
            case 3:
            // do something # 3
            break;
            case 4:
            // do something # 4
            break;
            case 1:
            // do something # 5
            break;
            case 1:
            // do something # 6
            break;
            default:
            //Do something here
            break;

        }
            </pre>
            <p class="goodCode"><strong>Figure: Good example of coding practice which will result better performance</strong></p>
            <p>Further Reading: <a href="http://www.blackwasp.co.uk/SpeedTestIfElseSwitch.aspx" target="_blank">Speed Test: Switch vs If-Else-If</a> </p>
        </li>

        <li><a name="String-character"></a>
            <h2>C# Code- Do you know String should be @-quoted instead of using escape character for "\\"?</h2>
            <p>The @ symbol specifies that escape characters and line breaks should be ignored when the string is created.</p>
            <p>As per:<a href="http://msdn.microsoft.com/en-us/library/c84eby0h(v=vs.90).aspx" target="_blank">Strings</a></p>
            <dl class="badCode">
                <dt>
                    <pre>
string p2 = "\\My Documents\\My Files\\";
                    </pre>
                </dt>
                <dd>Figure: Bad example - Using "\\"</dd>
            </dl>
            <dl class="goodCode">
                <dt>
                    <pre>
string p2 = @"\My Documents\My Files\";
                    </pre>
                </dt>
                <dd>Figure: Good example - Using @</dd>
            </dl>

            <p class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</p>
        </li>

        <li><a name="carriage-return"></a>
            <h2>Do you know that no carriage returns without line feed?</h2>
            <p>Text files created on DOS/Windows machines have different line endings than files created on Unix/Linux. DOS uses carriage return and line feed ("\r\n") as a line ending, which Unix uses just line feed ("\n").</p>
            <dl class="badImage">
                <dt><img src="Images/carriage-bad.jpg" /></dt>
                <dd>Figure: Bad example</dd>
            </dl>
            <dl class="goodImage">
                <dt><img src="Images/carriage-good.jpg" /></dt>
                <dd>Figure: Good example</dd>
            </dl>
            <p class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</p>
        </li>

        <li><a name="do-not-put-exit-sub-before-end-sub"></a>
            <h2>VB.NET Code - Do you know not to put Exit Sub before End Sub?</h2>
            <p>This is often a bad practice if you already are ending  Sub you don't need another line</p>
            <dl class="badCode">
                <dt>
                    <pre>
Sub MySub
&#8230;
End Sub
Exit sub

                    </pre>
                </dt>
                <dd>Figure: Bad example</dd>
            </dl>
            <dl class="goodCode">
                <dt>
                    <pre>
Sub MySub
&#8230;
End sub

                    </pre></dt>
                <dd>Figure: Good example</dd>
            </dl>
            <p class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</p>
        </li>
        <li><a name="new-language-features"></a>
            <h2>Do you use the new C# 6 language features to slash the amount of boilerplate code you write?</h2>
Up until this point, .NET developers had to write a lot of boilerplate code in order to properly format strings or check for null. This boilerplate code required a lot of work to ensure code readability and maintainability.</p>
<p>The new C# 6 that comes with Visual Studio 2015 is a game changer that empowers devs to do more with less.</p>
<p>These 3 features will slash the amount of boilerplate code you have to write and improve code quality:</p>
<ol>
<li>nameof expressions  - allows us to get the name of the type of object</li>
</ol>
<p>Now when we throw an exception, we can use the name of expressions feature to create robust code, which is more resistant to common mistakes when refactoring. This is achieved by reducing the amount of hard coding.</p>
<p>As you can see, when in the past you would have to write the following code:</p>
            <dl class="badCode">
                <dt>
                    <pre>
<p>(if customer.Address.ZipCode == null) throw new ArgumentNullException("ZipCode");</p>
                    </pre>
                </dt>
                <dd>Figure: Bad example - Amount of boiler plate code for a simple task</dd>
            </dl>
<p>Now you only have write:</p>
            <dl class="goodCode">
                <dt>
                    <pre>
<p>(if customer.Address.ZipCode == null) throw new ArgumentNullException(nameof(customer.Address.ZipCode));</p>
                    </pre>
                </dt>
                <dd>Figure: Good example - The same functionality as the Bad Example in a single line of code </dd>
            </dl>
<p>The benefit of this change is when refactor our code, we don't need to worry about searching for magic strings. Which common slip through the cracks and lead to confusing error messages.</p>
<ol start="2">
<li>String Interpolation - greatly reduces the amount of boilerplate code required when working with strings</li>
</ol>
<p>Formatting strings on the fly was previously a task which required a stack of boilerplate code. In the Visual Studio 2015, we can use the smart String Interpolation feature. Not only does this feature reduce the amount of code we have to write, it also improves code readability.</p>
<p>For example, before C# 6, we would write:</p>
            <dl class="badCode">
                <dt>
                    <pre>
<p>var s = String.Format("Profit is ${0} this year", p.TotalEarnings - p.Totalcost);</p>
                    </pre>
                </dt>
                <dd>Figure: Bad example - Using the string format make the code difficult to read </dd>
            </dl>
<p>Now we are able to:</p>
            <dl class="goodCode">
                <dt>
                    <pre>
<p>var s = "Profit is ${p.TotalEarnings - p.Totalcost} this year";</p>
                    </pre>
                </dt>
                <dd>Figure: Good example - Very human readable code</dd>
            </dl>
<p>As can be seen above by making use of the new String Interpolation feature, the understandability of your code is greatly improved.</p>
<ol start="3">
<li>Null-conditional operators - makes checking for null as easy as inserting a single question mark</li>
</ol>
<p>This great new feature has had a raft of positive reactions from developers. The new
Null-conditional operators feature boils down all of the previously laborious clunky code into a single question mark.</p>
<p>For example, previously we would of had to write a chunk of code to achieve a simple task</p>
            <dl class="badCode">
                <dt>
                    <pre>
<p>if(customers.Length != null)
{
int length = customers.Length;
}
else
{
int length = 0;
}</p>
                    </pre>
                </dt>
                <dd>Figure: Bad example - Fragile code</dd>
            </dl>
<p>Now we are able to replace that chunk of code with a single line</p>
            <dl class="goodCode">
                <dt>
                    <pre>
<p>int length = customers?.Length ?? 0;</p>
                    </pre>
                </dt>
                <dd>Figure: Good example  - Robust code</dd>
            </dl>
<p>The promise
In short, these new features will save you time, and help you write cleaner, more robust code - what's not to love?</p>
        </li>
    </ol>
    <h2>
        Acknowledgements</h2>
    <a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Adam.aspx">Adam Cogan</a><br />
    <a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Peter.aspx">Peter Gfader</a> 
</asp:Content>
