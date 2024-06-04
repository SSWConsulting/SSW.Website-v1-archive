<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Code Auditor - Utility to Automate your Code Reviews" %>

<asp:Content ContentPlaceHolderID="sidebarcontainer" runat="server" />

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="images/codeauditor-logo.png" alt="Code Auditor logo" />
    <h2 class="tag">Keep your code healthy</h2>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentFull" runat="server">

    <h2 class="thinner">Keep your code *healthy* with SSW Code Auditor - the best .NET refactoring tool!</h2>
    <div>
        <ul>
            <li>Keep your code consistent across all projects.</li>
            <li>Add your own rules.</li>
            <li><a href="/ssw/Products/ProdCategory.aspx?CategoryID=CODAUD">Friendly licensing model</a>...Pay nothing for Full Version!</p></li>
        </ul>
    </div>

    <p>
        Are you looking to eradicate bugs and ensure consistency? SSW Code 
		Auditor is a tool that allows developers to take control of your code, 
		ensuring large, complex source code can be simplified, cleaned and 
		maintained. The built-in rules focus on the most popular .NET languages 
		(C#, VB.NET) for both Windows Forms and ASP.NET; however, the 
		flexibility of SSW Code Auditor allows the developer to add their own 
		rules to target any language in any text file.
    </p>
    <p>
        As a project or company grows, managing code standards throughout your team becomes virtually impossible. 
		Consistent code is crucial to future development and maintenance. SSW Code Auditor lets you 
		take control of your code and automatically review your web apps and projects - giving you more opportunity to 
		spend time where it really matters.
    </p>

    <p>
        Here at SSW, we face the problem of maintaining our standards across 
		nearly five thousand web pages, over twenty active projects in both 
		Visual Basic (6 and .NET) and C#. There comes a point where a tool to 
		check our work is needed, this tool is SSW Code Auditor.
    </p>
    <p>
        SSW Code Auditor utilises the power of Regular Expressions to audit 
		your code. This powerful feature permits the user to write their own set 
		of rules and have different rules for different projects.
    </p>

    <h2 class="thinner">Key Features & Benefits</h2>

    <p>SSW Code Auditor allows to you:</p>
    <ul>
        <li>Verify that coding standards are maintained</li>
        <li>Prevent bad coding practices</li>
        <li>Seamlessly integrates with VS.NET</li>
    </ul>
    <br />
    <table border="0" cellspacing="0" class="tblScreenshots">
        <tr>
            <td width="100">
                <img src="Images/ScreenPartial1.jpg" alt="screen shot" width="180" height="151" /></td>
            <td valign="top"><b>Great, user-friendly wizard style interface</b>
                With our <a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx">standards compliant</a> user interface, you are sure to have a consistently great operating environment with SSW products.</td>
        </tr>
        <tr>
            <td width="100">
                <img src="Images/ScreenPartial2.gif" alt="Partial Screen shot 2" width="180" height="139" /></td>
            <td valign="top">
                <b>Make your own rules!</b>
                With our powerful regular expression enabled parsing engine, you have the flexibility to scan any text file for any kinds of rules. Rules can check specific filetypes and have exceptions based on other regular expression matches.
            </td>
        </tr>
        <tr>
            <td width="100">
                <img src="Images/ScreenPartial3.jpg" alt="Partial Screen Shot 3" width="180" height="127" /></td>
            <td valign="top">
                <b>Stay on top of things...</b>
                Code Auditor has in-built scheduling and email notification functionality so you can have regular reminders of what needs attention in your projects!
            </td>
        </tr>
        <tr>
            <td width="100">
                <img src="Images/ScreenPartial4.jpg" alt="Partial Screen Shot 4" width="180" height="156" /></td>
            <td valign="top">
                <b>Spanning the big picture</b>
                Scan any number of directory trees with extensible path selection. As many development projects can be covered by your rules 
			as you wish.
            </td>
        </tr>
        <tr>
            <td width="100">
                <img src="Images/ScreenPartial5.jpg" alt="Partial Screen Shot 5" width="180" height="126" /></td>
            <td valign="top">
                <b>Report Output</b>
                <a href="SampleReport_Good.xml">See a sample good report</a> from the Code Auditor process.
			<br>
                <a href="SampleReport_Bad.xml">See a sample bad report</a> from the Code Auditor process.
            </td>
        </tr>
        <tr>
            <td width="100">
                <img src="Images/ScreenPartial6.jpg" alt="Partial Screen Shot 6" width="180" height="110" /></td>
            <td valign="top">
                <b>Visual Studio Add-in</b>
                Audit your project directly from Visual Studio with just a click.
			<br>
                <span class="boldred">**Also works in Visual Studio 2005 **</span>
                See the <a href="/ssw/CodeAuditor/tutorial.aspx">tutorial</a>.
            </td>
        </tr>
        <tr>
            <td width="100">
                <img src="Images/solutionitems.jpg" alt="Partial Screen Shot 7" width="180" height="110" /></td>
            <td valign="top">
                <b>Visual Studio Add-in</b>
                Automatically add SSW Code Auditor, NUnit and Microsoft FxCop project files to your solution so that you can easily access the tools to make your code healthier.<br>
                <br>
                We have a rule <a href="/ssw/Standards/Rules/RulesToBetterdotNETProjects.aspx#CAFxCop">Do you Add SSW Code Auditor and Microsoft FxCop project files to your Solution</a></td>
        </tr>
        <tr>
            <td width="100">
                <img src="Images/ScreenPartial8.gif" alt="Partial Screen Shot 8" width="180" height="135" /></td>
            <td valign="top">
                <b>Built-in sample projects & sample database</b>
                We offer a sample database and kinds of sample projects to help you run a professional demo scan.
			<br />
                <br />
            </td>
        </tr>
    </table>
    <p>More Technical Features include the ability to:</p>
    <ul>
        <li>Check any text file</li>
        <li>Check file names</li>
        <li>Scan project directories for code that violates your rules</li>
        <li>Perform deep traversal of directories</li>
        <li>Scan websites for HTML that violates your rules - including the information served by the web server!</li>
        <li>Validate HTML code by using the Tidy HTML engine</li>
        <li>Use the report that is written to an .mdb, or to export to XML</li>
        <li>Organize separate projects into jobs </li>
        <li>Allow exceptions to rules, thus ignoring files that you are aware of</li>
        <li>Full scheduling abilities with email alerts, providing regular automated checks on your code base.</li>
        <li>Use Regular Expression to define more rules</li>
        <li>Regular Expression builder included</li>
    </ul>

    <p>
        <p>See more screenshots in the <a href="UserGuide.aspx">Code Auditor User guide</a>.</p>

        <h2 class="thinner">Upcoming Features</h2>
        <ul>
            <li>XML based settings</li>
            <li>Web service rules sharing</li>
        </ul>
        <br />

        <a name="Rules"></a>
        <h2>Predefined Rules - these are examples of what rules you can define</h2>
        <table style="float: right" width="30%" class="clsSSWTable" cellspacing="1">
            <tr>
                <td>
                    <p><b>What about FxCop?</b></p>
                    <p>
                        SSW Code Auditor is similar to 
		<a href="/ssw/Redirect/MSFxCop.htm" target="_blank">Microsoft FxCop</a>. FxCop has a good set 
		of rules however there are some issues:
                    </p>
                    <ul>
                        <li>FxCop works against compiled assemblies and uses MSIL to get 
			information about the code. SSW Code Auditor on the other hand looks 
			at the source code itself.</li>
                        <li>FxCop only works against .NET assemblies. SSW Code Auditor on 
			the other hand works against any plain text files.</li>
                        <li>Overall <a href="/ssw/Redirect/AllFxCopRules.htm">FxCop rules</a> are good - however many are obscure (Eg: we do not worry about the <a href="/ssw/Redirect/FxCopMobilityRules.htm">Mobility rules</a> and <a href="/ssw/Redirect/FxCopPortabilityRules.htm">Portability rules</a>). SSW Code Auditor on the 
			other hand has rules that are more 'general developer' oriented.</li>
                        <li>In addition SSW Code Auditor provides many rules to improve your User Interface.</li>
                        <li>For most users <a href="/ssw/Redirect/MSDNMagBugslayer.htm">FxCop rules are fixed</a> (unless you want to build a .NET Assembly). SSW Code Auditor rules can easily be extended using regular expressions.</li>
                        <li>Out of the box FxCop only provides one type of <a href="/ssw/HealthAuditor/FxCopTutorial.aspx#FxCopReport">report in xml</a>. SSW Code Auditor on the 
			other hand provides a <a href="SampleReport_Bad.xml">report that is flexible and shows the data in 
			different views</a>.</li>
                        <li>Both can be scheduled via a command line. SSW Code Auditor's <a href="UserGuide.aspx#Schedule">wizard</a> makes it real easy to help you keep your code projects clean all the time.</li>
                        <li>SSW Code Auditor encourages you to use both within the <a href="/ssw/HealthAuditor/UserGuide.aspx">VS.NET environment</a>.</li>
                    </ul>
                </td>
            </tr>
        </table>

        <p>
            <img src="Images/ie.gif" alt="Internet Explorer" width="30" height="31">&nbsp;<b>WEB - HTML</b>
        </p>
        <ol>
            <!-- UPDATE IN PROGRESS BY EF -->
            <li><a name="AnchorName"></a>Anchor Name can't start with #</li>
            <li><a name="AnchorValid"></a>Anchor names must be valid</li>
            <li><a name="CSSStyleFont"></a>CSS stylesheets must specify a font (you should never use Times New 
		Roman)</li>
            <li><a name="METATags"></a>Do not use META tags to redirect</li>
            <li><a name="Quotations"></a>Always close quotations of HTML attributes. See
		<a href="/ssw/Standards/Rules/RulesToBetterWebsitesAdministration.aspx#Quotations">Do you close quotations of all your html attributes?</a>
                for more details.
            </li>
            <li><a name="EmptyTags"></a>Empty tags must not exist (except server tags, SCRIPT or TD)</li>
            <li><a name="FontTags"></a>FONT tags must not be used</li>
            <li><a name="AltTagImage"></a>Google Alt Or Title in Image Tag</li>
            <li><a name="FileSizeLimit"></a>Google File Size Limit</li>
            <li><a name="GoogleRelevancyy"></a>Google Relevancy</li>
            <li><a name="URLCaseSensitive"></a>Google URL Case Sensitive</li>
            <li><a name="HeadingTags"></a>Heading tags should not contain bold or strong tags</li>
            <li><a name="NoAPorDELinks"></a>No absolute paths or direct external links</li>
            <li><a name="UNC"></a>No UNC in HTML Link</li>
            <li><a name="METADesc"></a>Page must contain META description</li>
            <li><a name="METAKeyword"></a>Page must contain META keywords</li>
            <li><a name="TitleTag"></a>Page must have a TITLE tag</li>
            <li><a name="NODoubleLinks"></a>Page must not link to the same URL 
		twice. See <a href="/ssw/Standards/Rules/RulesToBetterWebsitesNavigation.aspx#OneLink">Do you only have one link to the same page per page?</a> for more details.</li>
            <li><a name="RefCSSStyle"></a>Page must reference a CSS stylesheet</li>
            <li><a name="SpecialCharEncode"></a>Special characters must be encoded</li>
            <li><a name="Favicon"></a>Specify shortcut icon "favicon.ico" at the site level.
		See <a href="/ssw/Standards/Rules/RulesToBetterWebsitesGraphics.aspx#Favicon">Where do you store your favicon.ico file?</a> for more details.</li>
            <li><a name="TableNotWidth"></a>Table tags should not specify the width</li>
            <li><a name="TNR"></a>Times New Roman should not be used</li>
            <li><a name="TitleExist"></a>TITLE tag must exist</li>
            <li><a name="NonASCII"></a>No non ASCII 
		characters</li>
            <li><a name="CSSStyle"></a>CSS 
		stylesheets must have DocType to display accurately across all browsers. 
		See <a href="/ssw/Standards/Rules/RulesToBetterWebsitesLayout.aspx#CSSStyle">Do you use DocType in Web Pages while using CSS 
		style sheets?</a> for more details.
		<li><a name="BackLink"></a>Links for reading back through data should use "< Back" instead of "< Previous" or other variations. See
		<a href="/ssw/Standards/Rules/RulesToBetterWebsitesLayout.aspx#BackLink">Do you use "&lt; Back" instead of "&lt; Previous" or other variations?</a> for more details.</li>
                <li><a name="BreadCrumbs"></a>"Return to" links should not be used for inter-page navigation. See
		<a href="/ssw/Standards/Rules/RulesToBetterWebsitesNavigation.aspx#BreadCrumbs">Do you leave your users Bread Crumbs instead of "Return to" links?</a> for more details.</li>
                <li><a name="IMGWidth"></a>Width of images in web pages must not be more than 600 pixels. See <a href="/ssw/Standards/Rules/RulesToBetterWebsitesLayout.aspx?HideLeftNav=True#OversizedWidth">Printing: Do you check for oversized images and table?</a> for more details.</li>
                <li><a name="ImgRef"></a>Images referenced in your page should be inside 
		an Images folder. See <a href="/ssw/Standards/Rules/RulesToBetterdotNETProjects.aspx#img">Do you put all images in your image folder?</a> for more details.</li>
        </ol>
        <!--<p><b>VB6</b></p>
        <ol>
		<li>No On Error Resume Next in VB files.&nbsp;
        Look at <a href="/ssw/Standards/Rules/RulestoBetterCode.aspx#NoOnErrorResumeNext">
        Do you always avoid On Error Resume Next?</a> for more details.</li> 
		<li>Must have company and author information in VB/C# files.&nbsp;
        Look at <a href="/ssw/Standards/Rules/RulestoBetterCode.aspx#CodeCommentandBrand">
        Do you comment and brand your code?</a> for more details. </li>
		<li>Option strict off in VB. Look at&nbsp;
		<a href="/ssw/KB/KB.asp?KBID=Q849278">Option strict 
		in VB</a> for more details.</li>
		<li>Proper name for Boolean Property.</li>
		<li>Version info must be within AssemblyInfo.</li>
	</ol>-->

        <p>
            <img src="Images/ie.gif" alt="Internet Explorer" width="30" height="31">&nbsp;<b>WEB - 
			ASPX</b>
        </p>
        <ol>
            <!-- UPDATE IN PROGRESS BY EF -->
            <li><a name="Listboxes"></a>Don't use listboxes. See <a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx#ListBoxesAreEvil">Do you use Combo Boxes instead of single-select List Boxes?</a> and <a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx#ListBoxesAreEvil2">Do you use Checked List Boxes instead of multi-select List Boxes?</a> for more details.</li>
            <li><a name="ServerControlsIP"></a>Don't use server controls image paths</li>
            <li><a name="WindowNotOpen"></a>Windows must not be opened from a function that is called by the OnLoad event</li>
            <li><a name="WindowNotOpenOnloadEvent"></a>Windows must not be opened in the OnLoad event</li>
            <li><a name="Debug"></a>Do not put debug attributes on page. See <a href="/ssw/Standards/Rules/RulesToBetterWebsitesAdministration.aspx#Debug">Do you put debug information on page?</a> for more details.</li>
        </ol>

        <p>
            <img src="Images/csharpnet.gif" alt="C Sharp Dot Net" width="31" height="25">&nbsp;<b>C#</b></p>
        <ol>
            <li><a name="UseMnemonic"></a>All Buttons (except OK and Cancel), CheckBoxes, RadioButtons must 
		have mnemonics. Look at
		<a href="/ssw/Standards/Rules/RulestoBetterInterfaces.aspx#UseMnemonic">Do your buttons have a mnemonic?</a> for more details.</li>
            <li><a name="AssemblyVer"></a>AssemblyInfo.cs must have AssemblyVersion attribute</li>
            <li><a name="BooleanProprefixedVerb"></a>Boolean Properties must be prefixed by a verb</li>
            <li><a name="ConsistentButtonStyle"></a>Buttons, CheckBoxes, GroupBoxes, Labels &amp; RadioButtons must have 
		System FlatStyle. Look at
		<a href="/ssw/Standards/Rules/RulestoBetterInterfaces.aspx#ConsistentButtonStyle">Do you have consistent look on your buttons?</a> for more details.</li>
            <li><a name="CPFD"></a>CenterParent must be used with FixedDialog</li>
            <li><a name="CSFS"></a>CenterScreen must be used with FixedSingle</li>
            <li><a name="ExceptionVar"></a>Exception variables should be called ex</li>
            <li><a name="Except"></a>Exception should be caught more precise. Look at <a href="../Standards/Rules/RulesToBetterdotNETProjects.aspx#Except">Do you catch exception 
		more precise?</a> for more details.</li>
            <li><a name="FDCP"></a>FixedDialog must be used with CenterParent</li>
            <li><a name="FSCS"></a>FixedSingle must be used with CenterScreen</li>
            <li><a name="IFStatmentBraces"></a>If statement must have braces</li>
            <li><a name="XPThemes"></a>EnableVisualStyles must not be used, should include manifest file. 
		Look at <a href="/ssw/Standards/Rules/RulestoBetterWindowsForms.aspx#XPThemes">Do your applications support XP themes?</a> for more 
		details.</li>

            <li><a name="NoEmptyCB"></a>No empty catch blocks</li>
            <li><a name="NoVarSameClassNam"></a>No variable name with the same class name.</li>
            <li><a name="OKAndCancelbtnNotMnemonics"></a>OK and Cancel buttons should not have mnemonics</li>
            <li><a name="Ntier"></a>SQL stored procedure names should be prefixed with the owner (dbo). 
		Look at <a href="/ssw/Standards/Rules/RulestoBetterCode.aspx#Ntier">Do you always prefix SQL stored procedure names with the owner?</a> for 
		more details.</li>
            <li><a name="StringLiteralsCFPSQ"></a>String literals containing file paths should be @-quoted</li>
            <li><a name="TahomaFont"></a>Windows Forms should use Tahoma Font</li>
            <li><a name="HardCode"></a>WinExe Must have MainForm </li>
            <li>Don't use hard coded connection string. Look at
		<a href="../Standards/Rules/RulesToBetterdotNETProjects.aspx#HardCode">Do you 
		hard coded your connection string?</a>&nbsp; for more details.</li>
            <li><a name="BtnHeight"></a>Button heights must be 23 pixels.</li>
            <li><a name="CommonControl"></a>Use Standard width for Date control. Look at
		<a href="../Standards/Rules/RulesToBetterWindowsForms.aspx#CommonControl">Do you make 
		common control with certain width?</a> for more details.</li>
            <li>Use Standard width for&nbsp; Ellipsis button.  Look at
		<a href="../Standards/Rules/RulesToBetterWindowsForms.aspx#CommonControl">Do you make 
		common control with certain width?</a> for more details.</li>
            <li><a name="CSyntax"></a>Use .Net naming standard. See <a href="../Standards/DeveloperDotNet/DotNetStandard_ObjectNaming.aspx#Syntax">Commonly used variables</a> for more details.</li>
            <li><a name="TitleCS"></a>Message box title must be the application's product name and version 
		only.&nbsp; See
		<a href="../Standards/Rules/RulestoBetterInterfaces.aspx#MessageBoxGuidelines">Do you know how to make message boxes user friendly?</a> for more details.</li>
        </ol>
        <p>
            <img src="Images/vbnet.gif" alt="VB Dot NET" width="31" height="25">&nbsp;<b>VB.NET</b></p>
        <ol>
            <li><a name="VBUseMnemonic"></a>All Buttons (except OK and Cancel), CheckBoxes, RadioButtons must have 
	mnemonics. Look at
	<a href="/ssw/Standards/Rules/RulestoBetterInterfaces.aspx#UseMnemonic">Do your buttons have a mnemonic?</a> for more details.</li>
            <li><a name="VBAssemblyVer"></a>AssemblyInfo.vb must have AssemblyVersion attribute</li>
            <li><a name="VBBooleanProprefixedVerb"></a>Boolean Properties must be prefixed by a verb</li>
            <li><a name="VBConsistentButtonStyle"></a>Buttons, CheckBoxes, GroupBoxes, Labels &amp; RadioButtons must have System 
	FlatStyle. Look at
	<a href="/ssw/Standards/Rules/RulestoBetterInterfaces.aspx#ConsistentButtonStyle">Do you have consistent look on your buttons?</a> for more details.</li>
            <li><a name="VBCPFD"></a>CenterParent must be used with FixedDialog</li>
            <li><a name="VBCSFS"></a>CenterScreen must be used with FixedSingle</li>
            <li><a name="re-throw"></a>
                Do not re-throw exceptions?. See <a href="../Standards/Rules/RulesToBetterdotNETProjects.aspx#CatchRethrow">Do you 
		re-throw your exceptions?</a> for more details<li><a name=""></a>FixedDialog must be used with CenterParent</li>
                <li><a name="VBFSCS"></a>FixedSingle must be used with CenterScreen</li>
                <li><a name="VBXPThemes"></a>EnableVisualStyles must not be used, should include manifest file. 
		Look at <a href="/ssw/Standards/Rules/RulestoBetterWindowsForms.aspx#XPThemes">Do your applications support XP themes?</a> for more 
		details.</li>
                <li><a name="ExceptionPrecise"></a>Exception should be caught more precise</li>
                <li><a name="CatchBlock"></a>No Empty Catch Blocks. See <a title="/ssw/Standards/Rules/RulesToBetterdotNETProjects.aspx" href="/ssw/Standards/Rules/RulesToBetterdotNETProjects.aspx#CatchBlock">Do you have meaningless Catch blocks in your applications?</a> for more 
	details.</li>
                <li><a name="OpenInTryBlock"></a>Open In Try Block</li>
                <li><a name="OptionExplicit"></a>Option Explicit must not be off. See <a href="/ssw/Standards/Rules/RulestoBetterCode.aspx#OptionExplicit">Do you always use Option Explicit?</a> for more details.</li>
                <li><a name="ProjectOptionStrict"></a>Project must Option Strict On</li>
                <li><a name="PrefixProcName"></a>SQL stored procedure names should be prefixed with the owner. See <a href="/ssw/Standards/Rules/RulestoBetterCode.aspx#Ntier">Do you always prefix SQL stored procedure names with the owner?</a> for more details.</li>
                <li><a name="StrPrefix"></a>String variables must have the str prefix</li>
                <li><a name="VBFont"></a>Windows Forms should use Tahoma Font. See
	<a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx#Font">Do you use Microsoft Recommended Font in your Application?</a> for more details.</li>
                <li>WinExe Must have MainForm</li>
                <li><a name="VBBtnHeights"></a>Button heights must be 23 pixels</li>
                <li><a name="Interoper"></a>Do not use CreateObject() for COM. See <a href="/ssw/Standards/Rules/RulestoBetterCode.aspx#Interoper">Do you use 
	interoperability mechanism for COM object?</a> for more details.</li>
                <li><a name="VBMainForm"></a>Windows applications must have a MainForm or WizardPage. See <a href="/ssw/Standards/Rules/RulesToBetterdotNETProjects.aspx#MainForm">Do you have a MainForm in your Windows application?</a> for more details.</li>
                <li><a name="VBSyntax"></a>Use 
		.Net naming standard. See <a href="../Standards/DeveloperDotNet/DotNetStandard_ObjectNaming.aspx#Syntax">Commonly used variables</a> for more details.</li>
                <li><a name="ExitSub"></a>Do not put Exit Sub just before 
	End Sub. See <a href="/ssw/Standards/Rules/RulestoBetterCode.aspx#ExitSub">Do you put Exit Sub before End Sub?</a> for more details.</li>
                <li><a name="TitleVB"></a>Message box title must be the application's product name and version 
		only. See <a href="../Standards/Rules/RulestoBetterInterfaces.aspx#MessageBoxGuidelines">Do you know how to make message boxes user friendly?</a> for more details</li>
        </ol>
        <p>
            <img src="Images/dotnet.gif" alt="DOT NET Logo" width="30" height="28">&nbsp;<b>VB.NET &amp; C#</b></p>
        <ol>
            <li><a name="ACCBTN"></a>AcceptButton must be called OK or Next. See
		<a href="/ssw/Standards/Rules/rulestobetterwindowsforms.aspx#ACCBTN">Do 
		your Accept button called OK or Next?</a> for more details.</li>
            <li><a name="CancelButton"></a>CancelButton must be called Cancel</li>
            <li><a name="Resolutions"></a>Controls must be less than (800,600). See
		<a href="/ssw/Standards/Rules/RulestoBetterInterfaces.aspx#Resolutions">Does your application's interface fit in the screen under any resolutions?</a> for more details.</li>
            <li><a name="NoListboxes"></a>Don't use listboxes.  See <a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx#ListBoxesAreEvil">Control Choice - Do you use Combo Boxes instead of single-select List Boxes?</a> for more details.</li>
            <li><a name="ANCBTN"></a>Forms which have buttons must have a CancelButton. See
		<a href="/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx#ANCBTN">Do your form have Accept and Cancel Button? </a>for more details.</li>
            <li><a name="MustHaveAcceptButton"></a>Forms which have buttons must have an AcceptButton</li>
            <li><a name="Literals"></a>Greater than/less than operators should not be used on 
		integer/decimal literals (use &gt;=)</li>
            <li><a name="MessageBoxesIcons"></a>MessageBoxes must have icons</li>
            <li><a name="OkisnotOK"></a>Ok is not OK</li>
            <li><a name="TextAlign"></a>TextAlign should be TopLeft or MiddleLeft</li>
            <li><a name="ASCII"></a>No non ASCII characters</li>
            <li><a name="DescVarLetters"></a>Use more descriptive variable names at least 3 letters</li>
            <li><a name="StringEmpty"></a>Never use empty string like this &quot;&quot;, use String.Empty. See 
		<a href="/ssw/Standards/Rules/RulestoBetterCode.aspx#StringEmpty">Do you 
		use String.Empty instead of &quot;&quot;?</a> for more details.</li>
            <li><a name="Release"></a>Not to Release in Debug mode. See 
		<a href="/ssw/Standards/Rules/RulesToBetterdotNETProjects.aspx#Release">Do you release your product in release mode?</a> for more details</li>
            <li><a name="MeaningfulNames"></a>Windows form name should not start with frm. See <a href="/ssw/Standards/Rules/RulesToBetterdotNETProjects.aspx#MeaningfulNames">Do 
		you use more meaningful names than Hungarian short form?</a> for more 
		details.</li>
            <li><a name="MiniSizerequired"></a>Windows Form should have a minimum size to avoid unexpected UI behavior. See <a href="/ssw/Standards/Rules/RulesToBetterinterfaces.aspx#minisize">Do 
		you keep a minimum size in the window forms?</a> for more 
		details.</li>
            <li><a name="TimeSpan"></a>TimeSpan.Parse() function must be used with FormatTimeSpanString() to pre-format the time-string parameter.
		See <a href="../Standards/Rules/RulestoBetterCode.aspx#TimeSpan">Do you pre-format your time strings before using TimeSpan.Parse()?</a> for more details.</li>
        </ol>
        <p>
            <img src="Images/vbnet.gif" alt="VB Dot NET" width="31" height="25">&nbsp;<b>VB 
		6.0</b>
        </p>
        <ol>
            <li><a name="SizeSpacing"></a>Standard Button must be 23 pixels in height. See
	<a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx#SizeSpacing">Do 
	you make your buttons 23 pixels in height?</a> for more details.</li>
            <li><a name=""></a><span style="font-family: Verdana">Option Explicit must be on. See
            </span><a href="/ssw/Standards/Rules/RulestoBetterCode.aspx#OptionExplicit">Do you always use Option Explicit?</a><span style="font-family: Verdana"> 
	for more details.</span></li>
        </ol>

        <p>
            <a name="SQLScripts"></a>
            <img src="../Images/Microsoft/MSSqlServer.gif" width="24" height="30"><b> SQL Server Scripts</b>
        </p>
        <ol>
            <li><a name="DefaultDataDir"></a>Do you avoid using the FILENAME parameter of CREATE DATABASE? See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#DefaultDataDir">Do you create new databases in the default data directory?</a> for more details.</li>
        </ol>

        <table style="float: right" width="30%" class="clsSSWTable" cellspacing="1">
            <tr>
                <td>
                    <p><b>How is Code Auditor able to work on Access .mdbs and .adps?</b></p>
                    <p>
                        We convert all forms, reports and modules to text or .vb files.<br>
                        <br>
                        Once you installed SSW Code Auditor, try our sample from &lt;Installation Path&gt;\SSW Code Auditor\Samples\NorthwindAccess2003
                    </p>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;<b><img border="0" src="Images/MSAccess.gif" width="27" height="28">
                Access 2003</b>
        </p>
        <ol>
            <li><a name="NoOnErrorResumeNext"></a>
                OnError Goto Statements should not be used. See
		<a href="/ssw/Standards/Rules/RulestoBetterCode.aspx#NoOnErrorResumeNext">Do you use OnError Goto Statements?</a> for more details.</li>
        </ol>
        <p>
            <img src="Images/folder.gif" alt="Folder" width="27" height="26">&nbsp;<b>File Structure</b></p>
        <ol>
            <li><a name="BMPFiles"></a>.BMP Files must not exist</li>
            <li><a name="Images"></a>Images should be in the images directory. Look at <a href="/ssw/Standards/Rules/RulesToBetterdotNETProjects.aspx#img">Do you put all images in your image folder?</a> for more details.</li>
            <li><a name="NoBAKFiles"></a>No BAK Files</li>
            <li><a name="ZZFiles"></a>There must not be any zz-ed files</li>
            <li><a name="ImageFolder"></a>Images Folder can only contain Image Files</li>
            <li><a name="Setup"></a>Always include setup files in setup folder. Look at <a href="/ssw/Standards/Rules/RulesToBetterdotNETProjects.aspx#Setup">Do you put setup files in setup folder?</a> for more details.</li>
        </ol>
        <p>
            <img src="Images/txt.gif" alt="text screen shot" width="20" height="29">&nbsp;<b>All Text Files</b></p>
        <ol>
            <li><a name="LineFeeds"></a>No carriage returns without line feed</li>
            <li><a name="AmericanStandards"></a>Spelling in American standards</li>
            <li><a name="ascii"></a>Non ASCII characters must not exist. Look at
	<a href="/ssw/Standards/Rules/RulesToBetterWebsitesAdministration.aspx#Funny">Do you check for funny apostrophes?</a> for more details.</li>
            <li><a name="Email"></a>Email is not Email. Look at <a href="/ssw/Standards/Rules/RulesToBetterTechnicalDocumentation.aspx#Email">Do you know email should be email without the hyphen?</a> for more details.</li>
        </ol>
        <p>
            <img src="Images/rp.gif" alt="Reporting Services" width="28" height="32">&nbsp;<b>Reporting Services</b></p>
        <ul>
            <li><a name=""></a>SSW Code Auditor can also be used to check your SQL Server Reporting Services reports against a set of rules to ensure efficiency and consistency. 
		Please see <a href="RSUserGuide.aspx">Validating and Optimising Your SQL Server Reporting Services Files Using SSW Code Auditor</a> for more information.</li>
        </ul>
    </p>

    <h2>What does the unregistered version give me?</h2>

    <p>
        In respect to the unregistered version we know you want to see it 
		working before you buy it. We aim for that.
        <br>
        Note: we also give free version targeted to the little guys<br>
        More details see <a href="/ssw/KB/KB.aspx?KBID=Q658302">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q658302</a>
    </p>
    <p>
        SSW provides free phone and email support to answer queries on 
registered products.
    </p>

    <h2>How to show that your application is 'SSW Code Auditor' Compliant</h2>
    <p>
        <img src="Images/codeauditorcompliant.gif" alt="Code Auditor Compliat icon" height="50" width="148" class="floatLeft" style="margin-right: 10px;" />
        To show your users that you have taken the care to create a 'healthy' code, you may display this icon on 
	any web pages and applications that validates.
    </p>
    <div class="clear"></div>
    <p>
        <strong>For web pages:</strong><br />
        Here is the HTML you could use to add this icon to your web page:
    </p>
    <div class="greyBox">
        <pre>
&lt;p&gt;
&lt;a href="http://www.ssw.com.au/ssw/CodeAuditor"&gt;&lt;img
    src="/ssw/Images/codeauditorcompliant.gif"
    alt="Code Auditor compliant" height="50" width="148" /&gt;&lt;/a&gt;
&lt;/p&gt;
</pre>
    </div>
    <p>
        Download the logo in <a href="images/codeauditorcompliant.png" class="gif">PNG</a> or <a href="images/codeauditorcompliant.gif" class="gif">GIF</a> format.
    </p>
    <p>
        <strong>Where should I put this icon?</strong>
    </p>
    <p>
        We recommend that the logo to be placed on your website footer or in the <strong>About Box</strong> if it's a winform application.
    </p>


    <h2>Getting Support</h2>

    <p>
        If you can't find it in the product documentation then check our <a
            href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=CODAUD">knowledge base</a> for 
		further information and tips about this product.
    </p>
    <p>

        <p>
            Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a> and <a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">feedback</a>
            so that we can evolve our software into a product that matches your requirements. We guarantee a response.
        </p>



        <h2>I'm Sold... What's next?</h2>
        <div class="download">

            <a href="/ssw/Products/ProdCategory.aspx?CategoryID=CODAUD" class="red next">Purchase Full Version</a><br>
            or
            <br>
            <br>
            <a href="/ssw/Download/ProdBasket.aspx?ID=CA">Download Free Trial Version</a>
        </div>
</asp:Content>
