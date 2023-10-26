
<%@ Page Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" AutoEventWireup="false" Title="SSW Rules to Better Windows Forms Applications"  %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />

<p>We believe that most applications will look the same. Some developers 
create &quot;cool&quot; apps (like the skinning on Windows Media Player) but we wouldn't. 
Maybe because we are boring, maybe because we mainly create business 
applications, but we always aim to create consistent user interfaces.</p>
<p> Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532304C6172676525323057696E646F7773253230466F726D73')">Let us know</a> 
		what you think.</p>
 <div class="TableOfContents">
    <h3>Rules to Better Windows Forms Applications</h3>
        <dl class="right image">
            <dt><img src="Images/developer.jpg" alt="Developer" /></dt>
            <dd>Figure: A developer</dd>
        </dl>
		<ol>
			<li><a href="#WhyWindowsForms">Do you know why you choose Windows Forms?</a></li>
			<li><a href="#CodeGenerators">Do you use code generators?</a></li>
			<li> <a href="#RedYellowDesigner">Do you use red and yellow colors to distinguish elements in the designer?</a></li>
			<li><a href="#XPThemes"> Do your applications support XP themes?</a></li>
			<li> <a href="#InheritedForms">Do you use inherited forms for consistent behaviour?</a></li>
			<li><a href="#ConsistentInformation">Do you display consistent information?</a></li>
			<li> <a href="#LockProperties">Do you encapsulate (aka lock) values of forms?</a></li>
			<li><a href="#UserControls">Do you know when to use User Controls?</a></li>
			<li><a href="#Search">Do you know how to design a user friendly search system?</a></li>
			<li> <a href="#ValidatorControls">Do you use Validator controls?</a> <br/></li>
			<li> <a href="#DataSetsOrBusinessObjects">Do you use DataSets or create your own business objects?</a></li>
			<li> <a href="#TimeToLoad">Do your Windows Forms have a StatusBar that shows the time to load?</a><br/></li>
			<li> <a href="#CacheLookUp">Do you not cache your lookup data in your window forms application?</a></li>
			<li> <a href="#DesignerVisual">Do you use the designer for all visual elements?</a><br/></li>
			<li> <a href="#DataBindingDesigner">Do you always use the Visual Studio designer for data binding where possible?</a><br/></li>
			<li> <a href="#AvoidMDI">Do you avoid using MDI forms?</a><br/></li>
			<li> <a href="#CommonCodeAssembly">Do you have a correctly structured common code assembly?</a><br/></li>
			<li> <a href="#DALWebServices">Are your Data Access Layers compatible with Web Services?</a></li>
			<li><a href="#ExceptionManagement">Do you log all errors (with SSW Exception Manager)?</a></li>
			<li><a href="#Log4Net">Do you implement trace logging (with Log4Net)</a></li>
			<li><a href="#AppConfigWrapper">Do you make a strongly-typed wrapper for App.config?</a><br/></li>
			<li><a href="#KeepDataGrid">Do you keep the standard .NET DataGrid?</a></li>
			<li><a href="#ReplaceDatePicker">Do you replace the standard .NET Date Time Picker?</a></li>
			<li><a href="#ThirdPartyMenuToolbar">Do you avoid 3rd party menus &amp; toolbars?</a><br/></li>
			<li><a href="#ListView">Do your List Views support multiple selection and copying?</a></li>
			<li><a href="#OpenWeb">Do you use an image button for opening a web page taking action?</a></li>
            <li><a href="#OkIsNotOK">Do you use "OK" instead of "Ok"?</a></li>
			<li><a href="#ANCBTN">Do your forms have Accept and Cancel buttons?</a></li>
			<li><a href="#OkButtonsAction">Do you name all your "OK" buttons to be an Action eg. Save, Open etc?</a></li>
			<li><a href="#TXTBX2">Do you make Enter go to the next line when you have a multi-line textbox rather than hit the OK button?</a></li>
			<li><a href="#CommonControl">Do you make common controls with consistent widths?</a></li>
			<li><a href="#SupportURLs">Do your Windows Forms applications support URLs?</a></li>
			<li><a href="#BackUndoButton">Do you include back &amp; undo buttons on every form?</a></li>
			<li><a href="#UnitTests">Do you use NUnit to write Unit Tests?</a></li>
			<li><a href="#ReuseUserSettings">Do you save user settings and reuse them by default?</a></li>
            <li><a href="#ResetDefault">Do you have ResetDefault() function to handle messed up user settings?</a></li>
			<li><a href="#GuiThreading">Do you use Threading to make your user interfaces more responsive?</a></li>
			<li><a href="#GuiTextBoxHeight">Do you use two lines height to display file name in the text box?</a></li>
			<li><a href="#StatusControl">Do you use Status Control?</a></li>
			<li><a href="#AvoidTwoInstances">Do you prevent users from running two instances of your application?</a></li>
			<li><a href="#CustomizedColumn">Do you add a "(customized)" column in grid if there are default values?</a></li>
			<li><a href="#CheckForUpdates">Do you know there should be a standard menu item "Check for Updates"?</a></li>
			<li><a href="#SendMail">Do you use Web Service to send emails?</a></li>
			<li><a href="#Colon">Do your label beside input control(Textbox, Combobox, Datetime, etc...) have colon?</a></li>
			<li><a href="#DataGridView">Do you always use GridView instead of ListBox?</a></li>
			<li><a href="#IntPtr">Do you know how to make .Net wrapper work on both x64 and x86 platforms?</a></li>
			<li><a href="#Multiline">Do you set the ScrollBars property if the TextBox is Multiline?</a></li>
		    <li><a href="#UACTurnOn">Do you know how to run write application to run with UAC turn on?</a></li>
		    <li><a href="#AutoWaitCursor">Do you use Auto wait cursor on your windows application?</a></li>
		    <li><a href="#ItemsCountButton">Do you make your add/delete buttons crystal clear?</a></li>
		    <li><a href="#MonthCalendarFirstDayOfWeek">Do you always set FirstDayOfWeek to Monday on a MonthCalendar?</a></li>
		    <li><a href="#MonthCalendarShowToday">Do you always set ShowToday or ShowTodayCircle to true on a MonthCalendar?</a></li>
		    <li><a href="#PasswordChar">Do you set PasswordChar to (*) on a TextBox on sensitive data?</a></li>
            <li><a href="#AnchoringAndDocking">Anchoring and Docking - Do you use Anchoring and Docking (full) if you have a multiline textboxes?</a></li>
            <li><a href="#SingleLineTextboxes">Anchoring and Docking - Do you use Anchoring and Docking (horizontal only) with single line textboxes?</a></li>
		    <li><a href="#TextAlign">Do you know TextAlign should be TopLeft or MiddleLeft?</a></li>
            <li><a href="#OtherUIRules">Do you know other UI rules?</a></li>
        </ol>
		</div>


<ol>
	<li>
	<h2><a name="WhyWindowsForms"></a>Do you know why you choose Windows Forms?</h2>
	    <p>Almost everyone assumes today to use web forms for broad reach because of easy installation and cross platform compatibility. That is correct.</p>
	    <p>In the old days (1995-2000) companies used Windows Forms, later (2000-2007) they rolled their own ASP.NET solution, however since then (2007+) <a href="http://www.ssw.com.au/ssw/Consulting/SharePoint.aspx">SharePoint</a> has become the default choice for an intranet. When you need something richer and you can control the environment, <s>Windows Forms (needs .NET Framework) is still the choice</s>. <a href="http://skunk/ssw/company/WebsiteDesignAndUserExperience.aspx">Silverlight</a> (needs the Silverlight Runtime) is the way to go.</p>
	    <ol>
		    <li><b>Bandwidth - Presentation Layer</b><br/>Only the data is transferred from the server, not the presentation code. Web forms must download the data and the rendered UI taking up large bandwidth.</li>
		    <li><b>Bandwidth - Compression</b><br/>Data transfer can be compressed and uncompressed to use less bandwidth. <br/>For example, using a Pkzip scale (1-9) of 6, we used the Open source algorithm 'Blowfish' to compress/encrypt 240K of data to 30K. i.e. 87% compression.</li>
		    <li><b>Caching</b><br/>If you are going to the same record within a certain time period, Windows forms will retrieve the data from cache instead of calling the data service again.<br/>For example, when you click search on a Windows form, you don't have to do a request again if the search was done recently.</li>
		    <li><b>Faster Server</b><br/>Because of the bandwidth advantages above, the server will make less requests and hence runs faster. The client has become thicker, using more processing power and capable of more complex business logic.</li>
		    <li><b>Richer Interface<br/></b>The application's interface can be richer as you can design your own custom controls and do not need complicated resource-intensive and complex DHTML and JavaScript.</li>
		    <li><b>More Responsive<br/></b>The interface will respond quicker to your clicks, no need to post a request for an interface response. i.e. no 10 second latency </li>
		    <li><b>Better Development</b><br/>Development is much easier with quick feedback. There are no compliance issues to follow as in web development with browsers.</li>
		    <li><b>More people are happy!</b><br/>By choosing windows forms you are making the developer, end user and accounts groups happier. The only group which may rather a Web solution is the network admins.</li>
        </ol>
        <table border="1"  id="table14" style="border-collapse: collapse" bordercolorlight="#C0C0C0" bordercolordark="#C0C0C0" width="70%">
			<tr>
				<td align="center">Group</td>
				<td width="126" bgcolor="#C0C0C0"></td>
				<td align="center">Browser Based</td>
				<td bgcolor="#C0C0C0"></td>
				<td align="center">Rich Client</td>
			</tr>
			<tr>
				<td align="left">Network Admins</td>
				<td width="126" align="center"></td>
				<td><img border="0" src="Images/yes.gif" width="24" height="25" alt="Yes"></td>
				<td align="center"></td>
				<td><img border="0" src="Images/no.gif" width="25" height="18" alt="No" /></td>
			</tr>
			<tr>
				<td align="left">Developers</td>
				<td width="126" align="center"></td>
				<td><img border="0" src="Images/no.gif" alt="No" width="25" height="18" /></td>
				<td align="center"></td>
				<td><img border="0" src="Images/yes.gif" alt="Yes" width="24" height="25" /></td>
			</tr>
			<tr>
				<td align="left">End Users</td>
				<td width="126" align="center"></td>
				<td><img border="0" src="Images/no.gif" alt="No" width="25" height="18" /></td>
				<td align="center"></td>
				<td><img border="0" src="Images/yes.gif" alt="Yes" width="24" height="25" /></td>
			</tr>
			<tr>
				<td align="left">Accounts</td>
				<td width="126" align="center"></td>
				<td><img border="0" src="Images/no.gif" alt="No" width="25" height="18"></td>
				<td align="center"></td>
				<td><img border="0" src="Images/yes.gif" alt="Yes" width="24" height="25" /></td>
			</tr>
		</table>
        <b>Figure: Table of who benefits from Windows Forms, and Web Forms<br/>&nbsp;</b>

    </li>

	<li>
	    <h2><a name="CodeGenerators"></a>Do you use code generators?</h2>
	        <p>Code generators can be used to generate whole Windows and Web interfaces, 
	        as well as data access layers and frameworks for business layers, making 
	        them an excellent time saver. I dont care which one you use  as long as 
	        you invest the time and find one you are happy with. The one important thing 
	        is they must have command line support and the files they generate should be 
	        recognizable as code generated  by prefix or a comment like Dont touch as 
	        this was automatically generated code. Make it easy to run by putting all 
	        the command line operations in a file called '_Regenerate.bat'.</p>
	        <p>Therefore I say a _Regenerate.bat file must exist under the solution items to recreate data 
	        access layer and stored procs.</p>
	        <img border="0" src="Images/Regenerate.jpg" width="227" height="248" alt="Regenerate"><br/>
	        <b>Figure: The _Regenerate.bat file under solution items</b>
            <p>The built in Data Form Wizard in Visual Studio .NET is not any good. I prefer other code generators like:</p>
	        <ul>
		        <li><a href="/ssw/Redirect/CodeSmith.htm" target="_blank">CodeSmith</a> - Good for generating strongly-typed collections<br/>
		        Note: it also includes templates for Rocky Lhotka's CSLA architecture 
		        from a SQL Server database.</li>
	        </ul>
	</li>

	<li>
	<h2><a name="RedYellowDesigner"></a>Do you use red and yellow colours to 
	distinguish elements in the designer?</h2>
	<p>Use colors on incomplete is so useful in design time:</p>
	<ul>
		<li><span style="background-color: #FF0000">Red</span> = Controls which 
		are incomplete, e.g. An incomplete button</li>
		<li><span style="background-color: #FFFF00">Yellow</span> = Controls 
		which are deliberately invisible that are used by developers e.g. Test 
		buttons</li>
	</ul>
	<p>Usually these controls are always yellow. However sometimes new 
	areas on forms are made red and visible, so you can get UI feedback on your 
	prototypes. Since they are red, the testers know not to report this 
	unfinished work as a bug. </p>
	<p><img src="Images/RedYellowDesigner.gif" alt="" width="524" height="444"><br/>
	<b>Figure: Invisible controls highlighted in yellow, and incomplete items 
	highlighted in red</b></p>
	</li>
	<p>Exception: when you have a placeholder form that pops up saying it is yet to be implemented</p>
    <h4>Related Rule</h4>
    <ul>
        <li><a href="http://rules.ssw.com.au/DesignandPresentation/RulestoBetterInterfacesGeneral/Pages/Do-you-highlight-incomplete-work-with-red-text.aspx">Do you highlight incomplete work with red text?</a></li>
    </ul>
	<li>
	<h2><a name="XPThemes"></a>Do your applications support XP themes?</h2>
	<p>All applications should be compatible with the Windows XP user interface and should be fully themed. Applications that do not use XP themes look like they were designed only for an earlier version of Windows. Mixing themed and non-themed controls looks equally unprofessional.</p>
	<p><img src="Images/BadXPThemes.gif" alt="" width="376" height="256"><br/><b>Figure: XP themes are not used 
	(bad)</b></p>
	<p><img src="Images/GoodXPThemes.gif" alt="" width="376" height="256">
	<img src="Images/FlatstyleSystem.gif" alt="" width="224" height="130"><br/>
	<b>Figure: XP themes are used 
(good)</b></p><b>Implementing XP Themes</b><p>We recommend using manifest file to support XP 
Themes in .NET. Follow this to use the manifest file.</p>
	<ol>
		<li>Set the FlatStyle Property in all our controls to &quot;System&quot;<p>
		<img border="0" src="Images/SetButtonFlatStyle.jpg" alt="Button FlatStyle System Designer" width="593" height="308"></p>
		<b>Figure: How to set the Button's FlatStyle Property<br/>&nbsp;</b></li>
		<li>Copy XPThemes.manifest file to your bin folder<br/>By default, you can get it from 
		C:\WINDOWS\Microsoft.NET\Framework\v1.1.4322\XPThemes.manifest</li>
		<li>Rename &quot;XpThemes.manifest&quot; to &quot;ApplicationName.exe.manifest&quot;</li>
		<li>Rename XPThemes.manifest to ApplicationName.exe.manifest</li>
	</ol>
	<p>Note: in .NET 1.1 you can use Application.EnableVisualStyles to support 
XP Themes. This approach is not recommended because it can cause an 'SEHException' 
to be thrown and some common controls could disappear.&nbsp; For more 
information see <a href="/ssw/Redirect/XPThemeWindowsForms.htm">Bugs reported in Windows Forms Forums</a>.</p>
	<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table13">
		<tr>
			<td>
			<p>We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#XPThemes">SSW Code Auditor</a> 
			to check for this rule.

			</p>
			<p>It checks that all your appropriate controls are set to FlatStyle.System and 
			that you have included a manifest file in your 
			solution.

			</p>

			</td>
		</tr>
	</table><br/>

	</li>
	<li>
	<h2><a name="InheritedForms"></a>Do you use inherited forms for consistent behaviour?</h2>
	<p>If you ask a new .NET developer (from the Access or VB6 world) what is 
	the best thing about .NET Windows Forms, most of your answers will be &quot;Form 
	Inheritance&quot; that allows them to keep a nice consistent look for all forms. 
	If you ask them a couple of months later, they will probably tell you the 
	worst thing about .NET Windows Forms is &quot;Form Inheritance&quot;. This is because 
	they have had too many problems with the bugs in the form designer regarding 
	this feature. Many abandon them altogether and jump on the user control band 
	wagon. Please don't I have a solution to this....<br/><br/>I think if you can keep the level of form inheritance to a minimum, then you 
	may not see the problem or at least you will experience the problem less. 
	Anyway even if you do, stop whinging and just close down Visual Studio.NET 
	and restart. You don't change the base form that often anyway.&nbsp;&nbsp;
	<br/><br/>Well how do you keep it to a minimum? Well make the first 
	base form without any controls, only code (to make it as flexible as 
	possible and avoid having a multitude of base forms).</p>
	<p>We try to keep the number of controls on inherited 
	forms, and the levels of inheritance to a minimum, because it reduces the 
	risk of problems with the Visual Studio Designer (you know when the controls 
	start jumping around, or disappearing 
	from the Designer, or properties getting reset on inherited copies or even the tab order getting corrupted). 
	Designer errors can also occur in the task list if the <b>InitializeComponent</b> 
	method fails.</p>
	<p>Every form in your application should inherit from a base form which has 
	code common to every form, for example:

	</p>
	<ul>
		<li>Company Icon</li>
		<li>Remembering its size and location
		- Code sample <span style="background-color: #FF0000">to come</span> in 
		the <a href="/ssw/NETToolkit">SSW .NET Toolkit</a></li>
		<li>Adding itself to a global forms collection if SDI (to find forms that are 
		already open, or to close all open forms)</li>
		<li>Logging usage frequency and performance of forms (load time)</li>
	</ul>
	<p><img src="Images/BaseForm.gif" alt="" width="400" height="300"><br/><b>Figure: Base Form for all SSW applications with SSW icon</b>

	</p>
	<p>a) Sorting out the <b>StartPosition</b>:</p>
	<ol>
		<li><b>CentreParent</b> only for modal dialogs (to prevent multi-monitor 
			confusion)</li>
		<li><b>CentreScreen</b> only for the main form (MainForm), or a 
			splash screen</li>
		<li><b>WindowsDefaultLocation</b> for everything else (99% of forms) - prevents windows from appearing on top of one another</li>
	</ol><br/>
	<p><img src="Images/StartPosition.gif" alt="" width="223" height="124"></p>
	<p>b) Sorting out <b>FormBorderStyle</b>:</p>
	<ol>
		<li><b>FixedDialog</b> only for modal dialog boxes</li>
		<li><b>FixedSingle</b> only for the the main form (MainForm) - <b>FixedSingle</b> 
	has an icon whereas <b>FixedDialog</b> doesn't</li>
		<li><b>None</b> for splash screen</li>
		<li><b>Sizable</b> for everything else (99% of forms) - almost all forms 
		in an app should be resizable</li>
	</ol>
	<p>
	<img src="Images/FormBorderStyle.gif" alt="Form border style" width="222" height="205">

	</p>
	<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table13">
		<tr>
			<td>We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> 
			to check for this rule. 
			</td>
		</tr>
	</table>
	<p>c) Sorting out a base data entry form:</p>

	<ol>
		<li>Inherited from the original base form</li>
		<li>OK, Apply and Cancel buttons</li>
		<li>Menu control</li>
		<li>Toolbar with New, Search and Delete</li>
	</ol>
	<p>
	<img src="Images/DataEntryBaseForm.gif" alt="Data entry base form" width="550" height="446"><br/>
	<b>Figure: Base data entry form with menu, toolbar and OK, Cancel &amp; Apply 
	buttons</b></p>
	<p>Note: The data entry base form has no heading - we simply use the Title 
	Bar
	</p>
	<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table16">
		<tr>
			<td>We have a program called <a href="/ssw/NETToolkit/">SSW .NET Toolkit</a> 
			that implements inherited forms</td>
		</tr>
	</table>
	
</li>
<br/>
	<li>
	<h2><a name="ConsistentInformation"></a>Do you display consistent information?</h2>When you have a link in your application, use the same text layout as 
	below and a "More" hyperlink to the same page with the same description. The 
	resulting effect is when the user clicks on the &quot;More&quot; hyperlink, the page 
	will begin with exactly the same information again. This ensures the user is 
	never confused when navigating from your application to a link.  <br/>
	<img src="/ssw/CodeAuditor/Images/CodeAuditorWelcomeScreen.gif" width="550" height="459"><br/>
	<br/><img src="Images/CodeAuditorWeb.png" width="536" height="526"><br/><b>Figure: See how the text in the application is reflected in the link<br/>
	</b><br/>
	</li>
	<li>
	<h2><a name="LockProperties"></a>Do you encapsulate (aka lock) values of forms?</h2>

	<p>One useful feature of inherited forms is the ability to lock the value of 
	certain properties on the inherited copy, e.g.:</p>
	<ul>
		<li><b>Font</b> - we want to maintain a consistent font across all forms</li>
		<li><b>BackColor</b> - changing the background color prevents the form 
		from being themed</li>
		<li><b>Icon</b> - we want all of our forms to have the company Icon</li>
	</ul><br/>This can be achieved with the following code, which works by hiding the existing property 
	from the designer using the <b>Browsable</b> attribute. The <b>Browsable</b> 
	attribute set to <b>False</b> means &quot;don't show in the the designer&quot;. There 
	is also an attribute called <b>EditorBrowsable</b>, which hides the property 
	from intellisense.
	<p><b>C#:</b></p>	
	<pre>using System.ComponentModel;</pre>
	<pre>[Browsable(false)] // Browsable = show property in the Designer
public new Font Font
{
   get
   {
      return base.Font;
   }
   set
   {
      //base.Font = value; //normal property syntax
      base.Font = new Font(&quot;Tahoma&quot;, 8.25);
      // Must be hard coded - cannot use Me.
   }
}</pre>

	<p><b>VB.NET:</b></p>
	<pre>Imports System.ComponentModel</pre>
	<pre>&lt;Browsable(False)&gt; _
Public Shadows Property Font() As Font
   Get
      Return MyBase.Font
   End Get
   Set(ByVal Value As Font)
      'MyBase.Font = Value 'normal property syntax
      MyBase.Font = Me.Font
   End Set
End Property</pre>

	<p>
	<img src="Images/FontPropertyVisible.gif" alt="Font property" width="223" height="86"><br/>
	<b>Figure: Font Property Visible</b></p>
	<p>
	<img src="Images/FontPropertyHidden.gif" alt="Font property" width="223" height="69"><br/>
	<b>Figure: Font Property Hidden</b></p></li>
	<li>
	<h2><a name="UserControls"></a>Do you know when to use User Controls?</h2>
	<p>User controls allow you to have groups of elements which can be placed on 
forms.</p>
	<p><b>Bad</b>: User controls can be really misused and placed in forms where 
they shouldn't&nbsp; be. An example of that is shown below, under the components 
directory the user controls placed and used only <i>once</i> at a time during 
the application flow. There is much more coding responsibility on the developer 
to load those controls correctly one at a time inside the main form.</p>
	<p>
	<img src="Images/BadUserControls.gif" alt="Bad user control" width="205" height="544"><br/>
	<b>Figure: Bad use of user controls - all the forms in the application are user 
	controls (bad)</b></p>
	<p>
	<img src="Images/BadUserControl.gif" alt="Bad User control" width="518" height="414"><br/>
	<b>Figure: Bad use of user controls - all of the controls on this form are 
	on a user control, but are only used once (bad)</b></p>
	<p><b>Good</b>: User Controls are best used for recurring or shared logic either 
on the same form or throughout the application. This encourages code reuse, 
resulting in less overall development time (especially in maintenance). Example, 
the figure below shows the good use of User Controls, the address control is 
repeated three times but coded once.</p>
	<p>
	<img src="Images/GoodUserControl.gif" alt="Good user control" width="206" height="318"><br/>
	<b>Figure: User controls are only used for shared controls (good)<br/>&nbsp;</b></p>
	<p>
	<img src="Images/UserControl.gif" alt="User Control" width="448" height="328"><br/>
	<b>Figure: The Address User Control is repeated (good)</b></p>
	<p><b>Exception</b>: User controls can be made for tab pages (e.g 
Tools-&gt;Options) and search pages. This allows the breakdown of complex forms, 
and development by different developers. (See figure below)<br/><br/><b>
	<img border="0" src="Images/UserControlInTabForm.jpg" alt="Tab Format" width="445" height="332"><br/>Figure: User controls are OK in tab pages (exception)</b></p>
	<p>As a summary. The pros of User Controls are:</p>
	<ul>
		<li>You can use a user control more than once on the same form eg. 
		Mailing Address, Billing Address</li>
		<li>You can reuse logic in the code behind the controls e.g. Search 
		control</li>
		<li>User controls are less prone to visual inheritance errors</li>
		<li>When used in a form with multiple tab pages - and each tab page potentially having a lot of controls,
		it is possible to put each tabpage into a separate user control</li>
		<li>Reduce lines of generated code in the designer by splitting it into multiple files</li>
		<li>Allow multiple persons to work on different complex tabpages</li>
	</ul>
	<p>However the cons are:</p>
	<ul>
		<li>You lose the <b>AcceptButton</b> and <b>CancelButton</b> properties from the Designer eg. 
	OK, Cancel, Apply. Therefore the OK, Cancel and Apply buttons cannot be on User Controls.</li>
	</ul>
	<br/></li>
	<li>
	<h2><a name="Search"></a>Do you know how to design a user friendly search system?</h2>
	<p>
	<img src="Images/BadSearch.gif" alt="Bad search"><br/>
	<b>Figure: Search fields are on the same form as the data entry controls (bad)</b></p>
	<p><img src="Images/SearchForm.gif" alt="Search"><br/>
	<b>Figure: Search functionality on a dedicated form with a recently updated records and standard search and (good) 
	<a href="/ssw/NETToolkit/02WinSearch.aspx">(see the SSW .NET Toolkit for all the search screen captures)</a>
	</b></p>
	<p>
	<p>Therefore I believe search system should:
		<ol>
			<li>Be separate from the data entry fields (on a different form) - this avoids confusion 
			<b style="color:red">**IMPORTANT**</b> </li>
			<li>Have a &quot;Simple&quot; tab  this shows minimum fields, that is just one like google.<br/>eg.  A customer calls, they said they were from Winkleton, but I'm not sure what that is. Do I put it in the Region, City or Address fields?  so you need to simply search in all fields with one single text box.</li>
			<li>Have a &quot;Recent&quot; tab  this shows the most recent records opened/updated</li>
			<li>Have a &quot;Common&quot; tab  this shows the common fields <br/>Note: I prefer this over customers needing to learn prefixes like Googles (for example, "city:winkleton").</li>
			<li>Have an Advanced tab  only for power users for building up a WHERE clause</li>
	</ol></p><br/></p>
	<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table16">
		<tr>
			<td>We have a program called <a href="/ssw/NETToolkit/">SSW .NET Toolkit</a> that implements this cool Search Control</td>
		</tr>
	</table>
	</li><br/>
	<li>
	<h2><a name="ValidatorControls"></a>Do you use Validator controls?</h2>
	<p>Validation is extremely important on a data entry form. There are two 
	ways to do validation:</p>
	<ol>
		<li><b>ErrorProvider</b> control<br/>The <b>ErrorProvider</b> control is code intensive. You must manually handle 
	the <b>Validating</b> event of each control you want to validate, in 
	addition to manually running the validation methods when the OK or Apply 
	button is clicked.
				<pre>Private Sub productNameTextBox_Validating(ByVal sender As Object, _
   ByVal e As System.ComponentModel.CancelEventArgs) Handles _
   productNameTextBox.Validating

   ValidateProductName(False)

End Sub

Private Function ValidateProductName(ByVal force As Boolean) _
   As Boolean

   If Me.productNameTextBox.Text.Length = 0 Then
      Me.errorProvider.SetError(Me.productNameTextBox,
         "You must enter the Product Name.")

      If force Then
         MessageBox.Show("You must enter the Product Name.", _
            Me.Text, MessageBoxButtons.OK, MessageBoxIcon.Warning)
      End If

      Return False
   Else
      Me.errorProvider.SetError(Me.productNameTextBox, _
         String.Empty)
      Return True
   End If

End Function

Private Function ValidateInput() As Boolean

   Dim force As Boolean = True
   Dim isValid As Boolean = ValidateProductID(force)

   If Not isValid Then
      force = False
   End If

   isValid = ValidateProductName(force)

   If Not isValid Then
      force = False
   End If

   isValid = ValidateCategory(force)

   Return isValid

End Function

Private Sub okButton_Click(ByVal sender As Object, _
   ByVal e As System.EventArgs)

   If Me.ValidateInput() Then
      'Test
   End If

End Sub</pre>
<b>Figure: Lots of code but no balloon tooltips (bad)</b><br/>
<pre>Private Sub productNameTextBox_Validating(ByVal sender As Object, _
   ByVal e As System.ComponentModel.CancelEventArgs) _
   Handles productNameTextBox.Validating

   ValidateProductName(False)

End Sub

Private Function ValidateProductName(ByVal force As Boolean) _
   As Boolean

   If Me.productNameTextBox.Text.Length = 0 Then
      Me.errorProvider.SetError(Me.productNameTextBox, _
         "You must enter the Product Name.")

      If force Then
         If Me.balloonToolTip.IsSupported Then
            Me.balloonToolTip.SetToolTip(Me.productNameTextBox, _
               "You must enter the Product Name.")
         Else
            MessageBox.Show("You must enter the Product Name.", _
               Me.Text, MessageBoxButtons.OK,
               MessageBoxIcon.Warning)
         End If
      End If

      Return False
   Else
      Me.errorProvider.SetError(Me.productNameTextBox, _
         String.Empty)
      Return True
   End If

End Function

Private Function ValidateInput() As Boolean

   Dim force As Boolean = True
   Dim isValid As Boolean = ValidateProductID(force)

   If Not isValid Then
      force = False
   End If

   isValid = ValidateProductName(force)

   If Not isValid Then
      force = False
   End If

   isValid = ValidateCategory(force)

   Return isValid

End Function

Private Sub okButton_Click(ByVal sender As Object, _
   ByVal e As System.EventArgs)

   If Me.ValidateInput() Then
      'Test
   End If

End Sub</pre>
<b>Figure: Lots of code but balloon tooltips are used (good)</b><br/>
		<p>Note: The component for balloon tooltips can be found in the 
		<a href="/ssw/NETToolkit">SSW .NET 
	Toolkit</a>.
            <p>The error provider has the advantage over the extended provider that it 
	can be used with balloon tooltips. If you are not using balloon tooltips, 
	however, the error provider should not be used.<br/><br/>
		<img src="Images/ErrorProvider.gif" alt="Error provider" width="392" height="255"><br/>
		<b>Figure: .NET ErrorProvider Control with a custom balloon tooltip</b><br/>&nbsp;</p>
            </p>
		</li>
		<li>
            <b>SSW Extended Provider<br/></b>The SSW Extended Provider integrates with the 
		<b>ErrorProvider</b> 
	control to provide the same functionality, but requires no code to implement 
	(everything can be done in the Designer).<br/><br/>
		<img src="Images/ExtendedProvider.gif" alt="Extended provider" width="550" height="182"><br/>
		<b>Figure: SSW Extended Provider controls and properties on a TextBox<br/>&nbsp;</b>

		</li>
	</ol>
	
	<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table16">
		<tr>
			<td>We have a program called <a href="/ssw/NETToolkit/">SSW .NET Toolkit</a> 
			that implements this cool Error Provider Control</td>
		</tr>
	</table></li><br/>
	<li>
	<h2><a name="DataSetsOrBusinessObjects"></a>Do you use DataSets or create your own business objects?</h2>
	<p>In .NET, there are two ways to pass data through the layers of your 
	application. You can:<br/>
	<ul>
		<li>Use DataSet objects, OR</li>
		<li>Write your own custom business objects</li>
	</ul><br/>There are two very different opinions on this matter amongst .NET 
	developers...<br/><b><br/></b>The PROs of the<b>
	DataSet</b> object:</p>
	<ul>
		<li>Code Generation<br/>Strongly typed <b>DataSet</b> objects can be created automatically in Visual 
	Studio. Custom business objects must be laboriously coded by hand.</li>
		<li>CRUD functionality<b><br/>DataSets</b>, when used with data adapters, can provide CRUD (Create, 
	Read, Update, 
	Delete) support. You must manually implement this functionality with custom 
	business objects.<br/></li>
		<li>Concurrency<br/>Support for concurrency is part of the <b>DataSet</b> object. Again, you 
	must implement this yourself in a custom business object.</li>
		<li>Data binding<br/>It is difficult and time-consuming to write custom business objects that are 
	compatible with data binding. The <b>DataSet</b> object is designed for data 
	binding.</li>
	</ul>
	<p>The PROs of <b>Custom Business Objects</b>:</p>
	<ul>
		<li>Better performance<br/>The <b>DataSet</b> object is a very heavy object and is 
		memory-intensive. In contrast custom business objects are always much 
		more efficient. Business objects are usually faster when manipulating 
		data, or when custom sorting is required.</li>
		<li>Business objects allow you to combine data storage (NOT data access) 
		and business logic (e.g. validation) in the one class. If you use <b>DataSet</b> objects, these must be in separate classes. 
		</li>
	</ul>
	<p>Microsoft's official word on this matter is explained in 
	<a href="/ssw/Redirect/Microsoft/DesigningDataTierComponents.asp" target="_blank">Designing Data 
	Tier Components and Passing Data Through Tiers</a>.
&nbsp;</p>
	<div class="greyBox" style="font-family:Verdana"><b>The Case for Business Objects</b><br/>At SSW we mostly choose datasets as we believe you get more for free. 
		However all the the features you get in the dataset can be manually 
		coded up in business objects<br/><br/>E.g. For business objects you must manually code up the bindings, with 
		datasets however you may use the designer for binding straight after 
		designing the dataset. This layer should be code generated - so it 
		doesn't matter much.<br/>In Visual Studio 2005, binding to business objects is supported in which case 
		we might be swayed to use business objects.</div><br/>
	<div class="greyBox" style="font-family:Verdana"><b>Exception: Real complex formssay 
			500,000 lines of C# code<br/></b>Datasets are a tool for representing relational data in an 
			object oriented world. They are also slower across networks. 
			Datasets are fantastic for maintenance forms (an editable grid with 
			a couple of checkboxes and text boxes and a save button), but 
			terrible for real complex forms. In a complicated scenario you might 
			have a Customer object. An Order form has a reference to this 
			customer object that it uses to display. When a process is run on 
			the Customer invoked from the Order, you can simply pass a reference 
			to the customer, and if something changes, fire an event back to the 
			Order. If datasets were used, you would be either passing datasets 
			around (which some may say is not very safe, or good OO) or pass an 
			ID around and have the process load the data again. <br/><br/>Also<span style="background-color: #FF0000"> it appears 
			</span>.NET 2.0's BindingList makes binding extremely easy 
			along with IEditableObject. But in most cases, you don't even need 
			to implement these.<br/><br/>Rocky Lhotka recently appeared on a 
			<a href="/ssw/Redirect/Microsoft/DotNetRocksCSLA.htm" target="_blank">.NET Rocks! episode</a> and 
			they had a big discussion of business objects versus datasets. The 
			use of either must change on a case by case basis. Datasets do allow 
			you to get more for free, but if one day management decide you need 
			to do something a little out of the ordinary, there will be 
			problems. In contrast, business objects take longer to write (this 
			can be minimized with a good code generator and custom templates), 
			but stand the test of time much better than Datasets. <br/>&nbsp;</div>
	</li><br/>
	<li>
	<h2><a name="TimeToLoad"></a>Do your Windows Forms have a StatusBar that shows the time to load?</h2>
	<p dir="ltr">Every form should have a StatusBar that shows the time taken to load the form.<br/>Developers cant catch and reproduce every performance issue in the testing 
environment, but when users complain about performance they can send a 
screenshot (which would including the time to load). Users themselves also would 
want to monitor the performance of the application. This is one of Microsoft 
	Internet Explorer's most appalling missing feature, the status bar only says 
	'Done.' when the page is loaded - 'Done: Load Time 14 seconds'. More 
	suggestions for Internet Explorer can be found on the page
	<a href="../BetterSoftwareSuggestions/Internetexplorer.aspx">SSW Microsoft 
	Internet Explorer Suggestions</a>.</p>
	<p dir="ltr">In the figure below, the time taken to load the form over a 
	dialup connection is 61.1 seconds, this proves to the developer that the 
	form is not useable over a dialup connection. In this particular case, the 
	developer has called a 'select * from Employees' where it was not needed, 
	only the name, password and ID is needed for this form. </p>
	<p dir="ltr">Note: Once the form is loaded and load time is shown, the 
	status bar can be used to show anything useful as the form is being used.</p>
	<p>
	<img border="0" src="Images/DoesntPerformSoWellWhenRunOverAVPN2.jpg" width="352" height="175"><br/>
	<b>Figure: Another form with the StatusBar that shows the time to load - very 
	slow on dialup. (good)</b></p>
	<p>To have a form with StatusBar looks like this: <br/>Add a StatusBar to the form, and add a StatusBarPanel to the StatusBar, then set the properties like below.
	<br/><br/><br/>
	<img src="Images/StatusBarPanel.gif" alt="Status bar panel" border="1" width="707" height="440">
	<br/><b>Figure: Add StatusBarPanel to StatusBar</b> </p>
	<pre>private DateTime StartLoadTime = System.DateTime.Now;

private void Form1_Load(object sender, System.EventArgs e)
{
	TimeSpan elapsedLoadTime = DateTime.Now.Subtract(StartLoadTime);
	this.statusBarPanel1.Text = string.Format(
	&quot;Load time: {0} seconds",
	Math.Round(elapsedLoadTime.TotalSeconds, 1));
}</pre><br/></li>
	<li>
	<h2><a name="CacheLookUp"></a>Do you not cache lookup data in your Windows Forms application?</h2>
	<p dir="ltr">To avoid unnecessary database look-ups, many developers cache lookup tables when creating a windows application. 
There are issue&nbsp; that can arise as a result, mainly to do with the synching 
of the lookup data. If the database administrator decides to change the lookup 
tables, there is bound to be a user online using a static old version of the 
lookup data. This may result in sql exception, and data corruption.&nbsp;</p>
	<div class="greyBox" style="font-family:Verdana"><b>Exception #1:</b> If the application can be taken offline where the users 
will not access the database for a finite time, then it is recommended that you 
cache lookup data. However, we do not recommend caching of non-lookup data, i.e. products, clients or invoices. 
	<br/>Note: This is a different scenario to complete offline caching; offline caching 
is recommended and should be implemented (e.g outlook &amp; IE - [Work Offline].<br/>However, this rule is about combo boxes and list views which contain less than 
100 records. There is not much benefit to caching lookup data as there is much 
more coding involved.<br/><br/>
	<b>Exception #2:</b> If the application contains minor non-critical data. (eg. If you allow the user to customize 
	the text displayed on forms (some people prefer 'Customer' while some prefer 
	'Client') and this is stored in a database)<br/>
			Depending on the frequency of this data being changed (and if the 
			change is user dependant), you may want to:<ul>
		<li>
		<p dir="ltr">Low frequency: Place an option to change this data in the 
		application's installation process</p></li>
		<li>
		<p dir="ltr">High frequency: Cache the data and provide an option to 
		refresh all cached data or disable caching all together. (e.g menu items 
		View-&gt;'Refresh All' and Tools-&gt;'Options'-&gt;'Disable Caching').</p></li></ul></div>
		<br/>
		We would love to be proved wrong on this rule. We have 1000s of users on some of 
our applications, we have tried caching lookup data and we ended up with a lot more 
code containing exception handling and table refreshing than its benefit.<br/>&nbsp;
	</li>
	
	<li>
	<h2><a name="DesignerVisual"></a>Do you use the designer for all visual elements?</h2>
	<p>The designer should be used for all GUI design. Controls should be 
	dragged and dropped onto the form and all properties should be set in the 
	designer.</p>
	
	<p>
	Read more about it in <a href="RulesToBetterdotNETProjects.aspx#DesignerVisual">Rules to Better .NET Projects</a>
	</p>

	</li>
	<li>
	<h2><a name="DataBindingDesigner"></a>Do you always use the Visual Studio designer for data binding where possible?</h2>
	<p>Basic data binding should always be done in the designer because the syntax for data binding is complex, and confusing for
	other developers reading the code.</p>
	<table cellpadding=0 cellspacing=0 border=0>
		<tr valign="top">
			<td width=104 style="padding-right:5px">
			<img src="Images/SimpleDataBindingSample.gif" alt="" width="104" height="24"/></td>
			<td>
			<img src="Images/SimpleDataBindingDesigner.gif" alt="" width="212" height="243"/></td>
		</tr>
	</table>
	<b>Figure: Simple data binding (binding to a single property) in the designer<br/>
	</b>&nbsp;
	<table cellpadding=0 cellspacing=0 border=0>
		<tr valign="top">
			<td width=125 style="padding-right:5px">
			<img src="Images/ComplexDataBindingSample.gif" alt="" width="125" height="131"/></td>
			<td>
			<img src="Images/ComplexDataBindingDesigner.gif" alt="" width="212" height="294"/></td>
		</tr>
	</table>
	<b>Figure: Complex data binding (binding to a list) in the designer</b>
	<p>When you need to handle the Format or binding events, you can still use 
	designer data binding, as long as you hook in your events prior to filling 
	data.</p>
	<pre>private void Form1_Load(object sender, System.EventArgs e)
{
   Binding currencyBinding = this.textBox1.DataBindings(&quot;Text&quot;);
   currencyBinding.Format += new 
      ConvertEventHandler(currencyBinding_Format);
   currencyBinding.Parse +=
      new ConvertEventHandler(currencyBinding_Parse);

   OrderDetailsService.Instance.GetAll(Me.OrderDetailsDataSet1);	
}

private void currencyBinding_Format(object sender, ConvertEventArgs e)
{
   if(e.DesiredType == typeof(string))
   {
      e.Value = ((decimal)e.Value).ToString("c");
   }
}

private void currencyBinding_Parse(object sender, ConvertEventArgs e)
{
   if(e.DesiredType == typeof(decimal))
   {
      e.Value = Decimal.Parse(e.Value.ToString(),
         System.Globalization.NumberStyles.Currency);
   }
}</pre>
<br />

	<pre>
//
// Designer auto generated code.
//
private void InitializeComponent()
{
	this.cmbTumorQuad = new System.Windows.Forms.ComboBox();
		
	//
	// cmbTumorQuad
	//
	this.requiredValidator1.SetCustomValidationEnabled(this.cmbTumorQuad, true);
	this.cmbTumorQuad.DataBindings.Add(new System.Windows.Forms.Binding("SelectedValue",<br/>  this.dvOccMain, "TumorQuadrant"));	this.cmbTumorQuad.DataSource = this.dvTumorQuad;
	this.cmbTumorQuad.DisplayMember = "Description";
	this.requiredValidator1.SetDisplayName(this.cmbTumorQuad, "");
}
	</pre>
	<p><b>Figure: DataBinding in Designer (good)</b></p>
	<p>&nbsp;</p>
	<pre>
private void DataBind()
{
	ChangeBinding(txtRuleName.DataBindings,	"Text", jobRules, "RuleData.RuleName");
	ChangeBinding(cmbFileFilter.DataBindings, "Text", jobRules, "RuleData.FileFilter");
	ChangeBinding(txtSearchString.DataBindings, "Text", jobRules, "RuleData.SearchString");
	ChangeBinding(txtCreatedBy.DataBindings, "Text" , jobRules, "RuleData.EmpCreated");
}
	
protected Binding ChangeBinding(ControlBindingsCollection bindings, string propertyName, <br/>object dataSource, string dataMember, ConvertEventHandler eFormat, ConvertEventHandler eParse) 
{
	Binding b = bindings[propertyName];
	if ( b != null )
		bindings.Remove(b);
	b = new Binding(propertyName, dataSource, dataMember);
	bindings.Add(b);
	return b;
}
</pre>
	<p><b>Figure: DataBinding in Code (bad)</b><br/></p>
	<p>&nbsp;</p>
	<pre>
private void DataBind()
{
    //Header
    picRuleType.Image = Core.GetRuleTypeImage((RuleType)rule.RuleType, 48);
    ruleNameTextBox.Text = rule.RuleName;

    //General Tab
    notesTextBox.Text = rule.RuleDescription;
    ruleUrlTextBox.Text = rule.RuleURL;

    //Search Tab
    cboRuleType.SelectedValue = (RuleType)rule.RuleType;
    searchForTextBox.Text = rule.SearchString;
    shouldExistComboBox.SelectedIndex = (rule.ShouldExist == true ? 0 : 1);

    //Change History Tab
    createdByTextBox.Text = rule.EmpCreated;
    dateCreatedTextBox.Text = rule.DateCreated.ToString();
    lastUpdatedByTextBox.Text = rule.EmpUpdated;
    dateLastUpdatedTextBox.Text = rule.DateUpdated.ToString();
}
</pre>
	<p><b>Figure: Set controls' values in Code (bad)</b><br/></p>
	See our <a href="RulesToBetterWebsitesDevelopment.aspx#DataBindingDesigner">
    SSW Rules to Better Websites - Development - 
    Do you always use the Visual Studio designer for data binding where possible?</a>
	</li>
	<li>
	<h2><a name="AvoidMDI"></a>Do you avoid using MDI forms?</h2>
	<p>MDI (Multiple Document Interface) forms should be avoided in most modern data-centric applications because 
	they:</p>
	<ul>
		<li>Are a hangover from the days of Windows 3.1 and Access 2.0</li>
		<li>Constrained within a smaller window</li>
		<li>Only show as one window on the taskbar</li>
		<li>Have no multiple monitor support (the killer reason)</li>
	</ul>
	<p><img border="0" src="Images/VS.Net.jpg" width="400" height="325" /><br/><b>Figure: VS.NET with tabs is cool for developers, but not for the average 
knowledge worker (bad)</b></p>
	<p><img src="Images/WordMDIBad.gif" alt="" width="400" height="319" /><br/><b>Figure: Word 2003 in MDI mode 
(bad)</b></p>
	<p><img border="0" src="Images/SDIExample.jpg" width="400" height="298" /><br/>
	<b>Figure: Word 2003 with Default Settings 
(good)</b></p>
<pre><span style="background-color: #FFFF00">Me.IsMdiContainer = true;</span>

ClientForm frm = new ClientForm();
<span style="background-color: #FFFF00">frm.MdiParent = this;</span>
frm.Show();</pre>
<b>Figure: Bad code example - using MDI forms</b><br/><br/>
<pre>ClientForm frm = new ClientForm();
frm.Show();</pre>
<b>Figure: Good code example - not using MDI</b>
	<p>MDI forms have the advantage that the MDI parent form will have a 
	collection <b>MdiChildren</b> which contains all of its child forms. This 
	makes it very easy to find out which forms are already open, and to give 
	these forms focus. Accomplishing this with an SDI application requires you 
	to:</p>
	<ul>
		<li>A global collection of forms</li>
		<li>A line of code on the load and closed events of each form which adds 
		/ removes the form from the global collection</li>
	</ul><br/>
	<div class="greyBox" style="font-family:Verdana"><b>But what about tabs?<br/></b>As developers, we love to use tabs similar Visual Studio.NET (figure below) and&nbsp; browsers such as Mozilla and CrazyBrowser. Tabs are great for developers, but standard business applications (e.g Sales Order System)
should be developed as SDI (Single Document Interface). This is because users are used to 
	Outlook and other office applications, which don't use MDIs at all. If the 
users want to group windows, Windows XP lets you &quot;Group Similar Taskbar Icons&quot;.</div>
</li>
	<li>
	<h2><a name="CommonCodeAssembly"></a>Do you have a correctly structured common code assembly?</h2>
	<p>Your common code assembly should be divided into the following sections:</p>
	<ul>
		<li>Common (e.g. SSW.Framework.Common)<ul>
			<li>Code which is not UI specific</li>
			<li>Example: Code to convert a date into different formats</li>
		</ul></li>
		<li>CommonWindows (e.g. SSW.Framework.WindowsUI)<ul>
			<li>Example: Base forms which are the same for all products, wizard 
			frameworks</li>
		</ul></li>
		<li>CommonWeb (e.g. SSW.Framework.WebUI)
         <ul>
			<li>Example: Generic XML-based navigation components</li>
		</ul>
            </li>
	</ul>
	<p>For more information see 
	<a href="/ssw/Standards/Rules/rulestobetterdotnetprojects.aspx#SolutionStructure">Do you have a consistent .NET Solution Structure?</a>.</p>
	</li>
	<li>
	<h2><a name="DALWebServices"></a>Are your Data Access Layers compatible with Web 
Services?</h2>
	<p>Data Access Layers should support not only direct connections to SQL 
	Server but also connections through 
	web services.<br/>Many applications are designed for use with a database connection only. As users 
decide to take the application some where else away from the database, the need 
for web services arises. </p>
	<p>
	<img border="0" src="Images/TimeProNetOptionsConnection.jpg" width="476" height="507"><br/>
	<b>Figure: Options form showing choice of connection (good)</b></p>
	<p>There are three ways 
	to implement this:</p>
	<ol>
		<li>Lots of if statements (really messy - most people try this first)</li>
		<li>Interfaces (Implements statement in VB)</li>
		<li>Factory pattern (best - most flexible and extensible approach)</li>
	</ol><br/>All database applications should be web services ready as the future direction 
is to use web services only, because even locally a web service connection is 
not much slower than direct connection.&nbsp; The performance difference 
shouldnt be substantial enough to require a double code base.<br/><br/></li>
	<li>
	<h2><a name="ExceptionManagement"></a>Do you log all errors (with SSW Exception Manager)?</h2>
	<p>All unhandled exceptions should be logged to provide developers with 
	sufficient information to fix bugs when they occur. There are two options we 
	for logging exceptions: </p>
	<p>The Microsoft <b>Exception 
Management Application Block<br/></b>Microsoft provides full source code for the EMAB, which is fully 
		extensible with custom logging target extensions. We decided to 
		customize the EMAB to produce the SSW Exception Management Block, which 
		logs exceptions to a database using a web service, allowing us to keep a 
		history of all exceptions.<br/><br/>
		<img src="Images/ExceptionReportingService.gif" alt="" width="550" height="357" /><br/>
		<b>Figure: Exception Reporting Web Service<br/>&nbsp;</b></p>
	<p>Your code should not contain any empty catch blocks as this can hamper 
	exception handling and debugging.</p>
	<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table13">
		<tr>
			<td>We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> 
			to check for this rule. 
			</td>
		</tr>
	</table>
	<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table16">
		<tr>
			<td>We have a program called <a href="/ssw/NETToolkit/">SSW .NET Toolkit</a> 
			that implements Exception Logging and Handling</td>
		</tr>
	</table>
	</li>
	<li>
	<h2><a name="Log4Net"></a>Do you implement trace logging (with Log4Net)</h2>
	<p>By using logging, the developer has access to more information when a particular error occurs like which functions were called, what state is the application currently in and what certain variables are. This is important as a simple stack trace will only tell you <b>where</b> the error occurred but not <b>how</b> it occurred.</p>

	<p><a href="/ssw/Redirect/Log4Net.htm">Log4Net</a> is 
				an open-source logging library for .NET based on the
				Log4J library. 
				It provides a simple to use library to enable logging in your application. It provides several logging options such as:

				<ul>
					<li>XML File (Recommended)</li>
					<li>Text File</li>
					<li>Database</li>
					<li>Rolling log file</li>
					<li>Console</li>
				</ul>
	</p>
	<p>Log4Net also provides different levels of tracing - from INFO to DEBUG to ERROR - and allows you to easily change the logging level (through the config file)</p>

	<br/>
	<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table13">
		<tr>
			<td>We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> 
			to check for this rule. 
			</td>
		</tr>
	</table>
	<br/>
	</li>
	<li>
	<h2><a name="AppConfigWrapper"></a>Do you make a strongly-typed wrapper for app.config?</h2>
	<p>If your application accesses properties in app.config, you should provide a 
strongly typed wrapper for the app.config file. The following code shows you how 
to build a simple wrapper for app.config in an <b>AssemblyConfiguration</b> 
class:</p>
	<pre>using System;
using System.Configuration;

namespace SSW.Northwind.WindowsUI
{
   public sealed class AssemblyConfiguration
   {
      // Prevent the class from being constructed
      private AssemblyConfiguration() { }

      public static string ConnectionString
      {
         get
         {
            return
               ConfigurationSettings.AppSettings["ConnectionString"].
               ToString();
         }
      }
   }
}</pre>
	<p>Unfortunately, the <a href="http://rules.ssw.com.au/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/ConfigurationManagementAppBlock.aspx">Configuration Block</a> does not automatically provide 
	this wrapper.<br/></p></li>
	<li>
	<h2><a name="KeepDataGrid"></a>Do you keep the standard .NET DataGrid?</h2>
	<p>Note: In Visual Studio 2003 the standard <b>DataGrid</b> has some limitations. 
	It was ugly compared to a <b>ListView</b> and did not support combo box or button 
	columns, making it useless for many applications.<br/>
	Now in Visual Studio 2005 we have this great new <b>DataGridView</b> control which 
	solves these problems.<br/>
	If you still want more then you need a 3rd party control. We recommend 
	these (in this order):<br/></p>
	<ol>
		<li>Janus GridEx</li>
		<li>Developer Express XtraGrid</li>
		<li>Infragistics Wingrid</li>
		<li>ComponentOne TrueDBGrid</li>
	</ol>
	<p>For more Details have a look at our <a href="/ssw/Standards/DeveloperGeneral/WinformControls.aspx">Best 3rd Party Controls for Windows Forms</a></p>
	<p><img src="Images/VS2003DataGrid.gif" alt="" width="463" height="375"> <br/>
	<b>Figure: The standard .NET DataGrid in 2003 was ugly and missing combos (bad)</b></p>
	<p>
	<img src="Images/InfragisticsUltraGrid.gif" alt="" width="330" height="221">
	<br/><b>Figure: Infragistics UltraGrid is better as you get combos (better)</b></p>
	<p><img src="Images/JanusGridEx.gif" alt="" width="575" height="339"> <br/>
	<b>Figure: Janus Grid is even better. A great datagrid has easy grouping, just like Outlook (good)</b></p>
	<p>
	<img src="Images/WhidbeyDataGridView.gif" alt="" width="538" height="298"><br/>
	<b>Figure: The great new Visual Studio 2005 much improved DataGridView</b></p>
	</li>
	<li>
	<h2><a name="ReplaceDatePicker"></a>Do you replace the standard .NET Date Time Picker?</h2>
	<div class="Section1">
		<p>A 
		good replacement for the standard Date Time picker is the 
		UltraDatePicker by Infragistics.</p>
		<p>The main reason for the use of the UltraDatePicker over the standard .NET one is because the 
		.NET one does not take null for a date value. &nbsp;</p>
		<p>This is a lot of hassle for DataBinding. &nbsp;The windows form DataBinding will 
		try to put null into the bound field, when:</p>
		<p>1.&nbsp;The bound data is DBNull</p>
		<p>2.&nbsp;The current row is removed (i.e., there is no more data in 
		the DataTable)</p>
		<p>If you set the 
		property &quot;Nullable&quot; to false in UltraDatePicker, the same issues appears 
		again.<br/><br/>
		<img border="0" src="Images/DateTimePickerProperties.gif" alt="Date/Time picker property" width="392" height="542"><br/>
		<b>Figure: Set &quot;Nullable&quot; 
		to true to allow DBNull values from bound DataRows</b></p>
		<p>So the solution is to allow null, but where the field is required, make sure the validation 
		picks it up and asks the user to enter a value when saving the form.</p>
&nbsp;</div></li>
	<li>
	<h2><a name="ThirdPartyMenuToolbar"></a>Do you avoid 3rd party menus & toolbars?</h2></li>
	<p class="MsoNormal">The menu &amp; toolbar controls in Visual Studio .NET 2003 do not allow you 
	to have icons in your menus or have alpha-blended toolbar icons. They also 
	do not provide an Office-2003 like look. However, we have tried several 
	third party menu and toolbar controls and all of them had serious bugs, e.g.</p><ul>
		<li>DotNetMagic (<a href="/ssw/Redirect/DotNetMagic.htm" target="_blank">www.dotnetmagic.com</a>)<br/>Docking panels didnt implement enough events and it is unclear what the 
	events are doing<br/>Menu control is OK</li>
		<li>DotNetBar (<a href="/ssw/Redirect/DevComponents.htm" target="_blank">www.devcomponents.com</a>)</li>
		<li>Janus Systems (<a href="/ssw/Redirect/JanusSystems.htm">http://www.janusys.com</a>)</li>
	</ul>
	<p>We love 3<sup>rd</sup> party controls, a lot of developers spend a lot of 
time implementing these tools to make their applications sweeter, but we found 
that there is not enough benefit in implementing these controls. </p>
	<p>I am very keen on 3rd party controls, but only where they add real value. 
Knowing about Visual Studio 2005 which provides Office 2003 style menus and 
toolbars with the new <b>ToolStrip</b> control mean I will wait in this 
case....Another worry is upgrading from these 3rd party controls will be 
difficult)</p>
	<img src="Images/WhidbeyToolstripDesigner.gif" alt="Whidbey tool strip designer" width="339" height="300" /><br/>
	<b>Figure: Visual Studio 2005's new controls </b>
	<p>However, it would be better if VS 2005 stored the details of menus and toolbars in an XML file.</p>

	<li>
	<h2><a name="ListView"></a>Do your List Views support multiple selection and 
copying?</h2>List Views such as in 
<a href="/ssw/Diagnostics/">SSW Diagnostics</a> can present a wealth of 
information to the user. But too often, users are unable to copy this 
information to paste into a support email because the list view doesn't support 
copying. Instead, the user has to frustratingly retype the information with the 
risk of introducing errors.
	<br/>
	<p>
	<img src="Images/ListView_Bad.PNG" alt="Bad example" border="1" width="600" height="131" /><br/>
	<b>Figure: List view with only single selection and no copying (Bad)</b></p>
	<p>
	<img src="Images/ListView_Good.PNG" alt="Good example" border="1" width="600" height="132" /><br/>
	<b>Figure: list view with multiple selection and copying (Good)</b></p>Make it easier for the user by enabling the &quot;MultiSelection&quot; property of a 
ListView and providing a right click menu with a &quot;Copy&quot; item that copies to the 
clipboard.
	<br/><br/></li>
	<li>
	<h2><a name="OpenWeb"></a>Do you use an image button for opening a web page 
taking action?</h2>
	<p>Opening a specific web page (that the user is aware of) from a windows 
application should always be in the form of a hyperlink. Below is a simple 
example of a hyperlink simply opening a web page containing just more 
information or help.
        </p>
	<img src="Images/OpenningWebOptions.gif" alt="Opening Web Options" border="1" width="273" height="142" />
	<br/><b>Figure: Simple hyperlink not taking action</b>
	<p dir="ltr">However if you are taking action then opening the page (e.g 
	concatenating the URL, etc) then you must have an image button to illustrate 
	the action which will be taken.<p>Here is a compilation of a few bad 
examples for this:
        </p>
       
	<img src="Images/OpenningWebLink.gif" alt="" border="1" width="278" height="174" /><br/>
	<b>Figure: Hyperlink (bad)</b>
	<img src="Images/OpenningWebLinkBtnBlue.gif" alt="" border="1" width="276" height="173" /><br/>
	<b>Figure: Hyperlink on a button (Bad)</b>
	<img src="Images/OpenningWebNormalBtn.gif" alt="" border="1" width="274" height="173" /><br/>
	<b>Figure: Normal button (bad)</b><br/><br/>But when it requires some form of action (e.g. generating reports, 
			passing and processing values), use a button with an image.
      </p>
	<p>
	<img src="Images/OpenningWebxp.gif" alt="" border="1" width="286" height="193" /><br/>
	<b>Figure: XP button with image (good)</b> <br/><br/>Note: Screenshot contains XP button because the .Net 1.1 button does not 
			support images, however the default button in .NET 2.0 supports 
			images.<br/>e.g. EdwardForgacs.Components.WindowsUI.dll <br/><br/></p>
	</li>
    <li>
        <h2>
            <a name="OkIsNotOK"></a>Do you use "OK" instead of "Ok"?</h2>
        <dl class="badImage">
                <dt><img src="Images/OKBadExample.png" alt="Ok" /></dt>
            <dd>Figure: Bad example with button text "Ok"</dd>
        </dl>

        <dl class="goodImage">
                <dt><img src="Images/OKGoodExample.png" alt="OK" /></dt>
            <dd>Figure: Good example with button text "OK"</dd>
        </dl>
        
        <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
            id="table2">
            <tr>
                <td>
                    We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#ANCBTN">SSW Code Auditor</a>
                    to check for this rule.
                </td>
            </tr>
        </table>
    </li>
	<li>
	<h2><a name="ANCBTN"></a>Do your forms have Accept and Cancel buttons?</h2>If you have a button in a form you must have an accept or a cancel button. As a result user can use "Enter" and "Esc" to control the form.
	<br/><br/>
	<img border="1" src="Images/AcceptButtonExample_Good.jpg" alt="" width="250" height="131"><br/>
	<b>Figure: Next button is set as the accept button (good)</b><br/>&nbsp;<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table12">
		<tr>
			<td>We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#ANCBTN">SSW Code Auditor</a> 
			to check for this rule.<p>Note: Our Rule will just test the buttons 
			on the Base form and ignore all the inherit forms, because for more</p>
			<p>reusable code, the Accept and Cancel buttons 
			should be in the base form.</p></td>
		</tr>
	</table>
	</li>
	<br/>
	<li>
	<h2><a name="OkButtonsAction"></a>Do you name all your "OK" buttons to be an Action eg. Save, Open etc?</h2>If your form 
	has an "Ok" button it should be renamed to be an Action. For Example: Save, Open etc.<br/>
	<br/>
	<img height="459" alt="SkypeToolsOptions" src="Images/SkypeToolsOptions.png" width="550"><b>
	<br/>Figure: Good Example with "Save" button which is an action<br/></b><br/>
    <img height="459" alt="VSToolsOptions.png" src="Images/VSToolsOptions.png" width="550"><b>
	<br/>Figure: Bad Example with "OK" button which is not an action<br/></b><br/>
	<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table12">
		<tr>
			<td>We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#OkButtonsAction">SSW Code Auditor</a> 
			to check for this rule.</td>
		</tr>
	</table>
	<br/></li>
	<li>
	<h2><a name="TXTBX2"></a>Do you make "Enter" go to the next line when you have 
	a multi-line textbox rather than hit the OK button?</h2>If you have a 
	multi-line textbox in a form, you should make the "Enter" key go to the next 
	line in the text box, rather than cause it to hit the OK button.<br/>
	<br/>
	<img alt="Developer Notes Screen" src="Images/DeveloperNotesScreen1.gif" width="538" height="546" ><b>
	<br/>Figure: "Enter" button causes OK button to be pressed instead of going to 
	next line in the multi-line text box. (bad)<br/></b><br/>
	<img alt="Developer Notes Screen" src="Images/DeveloperNotesScreen2.gif" width="538" height="546"><b>
	<br/>Figure: "Enter" button goes to the next line in the text box (good)</b><br/>
	<br/>It can be done by assigning "True" value to AcceptsReturn and Multiline options in properties bar.<br />
	<img alt="Developer Notes Screen" src="Images/setupformtxt2.gif" width="335" height="361" />
	<br/>Figure: Developer Notes properties details.<br/>
	<br/>
	
		</li>
		
     <li>
	<h2><a name="CommonControl"></a>Do you make common controls with consistent widths?</h2>There are a few common controls we always use in our products. For example, 
	DateTime and Ellipsis Button. We need a standard for the width so the 
	controls should be more consistent.<p>Note: Controls on base forms will be 
made to be 'protected' rather than 'private', especially so that inherited forms 
of different sizes don't mess up.</p>
	<p>&nbsp;<img src="Images/CommonControlBad.gif" alt="Bad control" width="344" height="272" />
	</p>
	<p><b>Figure: Control sizes are not consistent. (bad)</b></p>
	<p>&nbsp; 
	<img src="Images/CommonControlGood.gif" alt="Good control" width="344" height="272" />
	<br/><b>Figure: Control sizes are all standard and consistent. (good)</b></p>
	<p>&nbsp;<img src="Images/AddDeleteBad.gif" alt="Bad control" width="492" height="408"  />
	</p>
	<p><b>Figure: Non-standard size for Add & Delete buttons. (bad)</b></p>
	<p>&nbsp; 
	<img src="Images/AddDeleteGood.gif" alt="Good control" width="492" height="411" /></p>
	<p><b>Figure: Standard size (75 X 23 pixels) for Add & Delete buttons. (good)</b></p>
         <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
             id="table12">
             <tr>
                 <td>
                     We have a program called <a href="/ssw/CodeAuditor/Rules.aspx#CommonControl">SSW Code
                         Auditor</a> to check for the following two rules:
                     <br />
                     <br />
                     <ul>
                         <li><b>Rule - C#/VB.NET UI- Button Height and Width - for Standard Button (75 x 23 pixels)
                             &#8211; Level 2: all buttons < 6 characters:</b> Check the standard size (75 X 23
                             pixels) for buttons with the word length less than or equal to six characters, except
                             the following buttons.
                             <br />
                             <br />
                             <li><b>Rule - C#/VB.NET UI- Button Height and Width - for Standard Button (75 x 23 pixels)
                                 &#8211; Level 1: the action buttons:</b> Check the standard size (75 X 23 pixels)
                                 for the following action buttons.</li><br />
                             <br />
                             <ul>
                                 <li>Add</li>
                                 <li>Delete</li>
                                 <li>Edit </li>
                                 <li>OK</li>
                                 <li>Close</li>
                                 <li>Cancel</li>
                                 <li>Save</li>
                                 <li>Browse</li>
                                 <li>Select</li>
                                 <li>Test</li>
                                 <li>Next</li>
                                 <li>Back</li>
                                 <li>Remove</li>
                                 <li>Refresh (Exception to the rule as it has 7 letters)</li>
                             </ul>
                         </li>
                     </ul>
                 </td>
             </tr>
         </table>
     </li>
		<br/>
	<li>

	<h2><a name="SupportURLs"></a>Do your Windows Forms applications support URLs?</h2>
	<p>Aside from ease of installation, what is the one thing a web browsers has over a Windows Forms application? - a URL!<br/>With a Windows Forms application, you typically have to wade through layers 
	of menus and options to find a particular record or &quot;page&quot;. 
	However, Outlook has a unique feature which allows you to jump to a folder 
	or item directly from the command line.</p>
	<p>
	<img border="0" src="Images/RunShortcut.gif" alt="Run Shortcut" width="347" height="186"><br/>
	<b>Figure: Outlook can automatically jump to a specified folder or item from 
	a command line</b></p>
	<p><b>
	<img src="Images/OutlookAddressBar.gif" alt="Outlook Address bar" width="451" height="25"><br/>Figure: Outlook address bar 
	(Web toolbar) shows you the URL for every folder</b></p>
	<p>We believe that all applications should have this capability. You can add it 
	to a Windows Application using the following procedure:</p>
	<ol>
		<li>Add the necessary registry keys for the application<br/>
		<ul>
			<li>HKEY_CLASSES_ROOT\<b>AppName</b>\URL Protocol = &quot;&quot;</li>
			<li>HKEY_CLASSES_ROOT\<b>AppName</b>\Default Value = &quot;URL:Outlook 
				Folders&quot;</li>
			<li>HKEY_CLASSES_ROOT\<b>AppName</b>\shell\Default Value = 
				&quot;open&quot;</li>
			<li>HKEY_CLASSES_ROOT\<b>AppName</b>\shell\open\command\Default 
				Value = &quot;<b>Path\AssemblyName.exe</b> /select %1&quot;</li>
		</ul>&nbsp;</li>
		<li>Add code into your main method to handle the extra parameters.<br/>
		<br/><b>C#:<br/>&nbsp;</b>
				<pre>public static void Main(string[] args)
{
   ...

   if(args.Length > 0)
   {
      string commandData = args[1].Substring(args[1].IndexOf(&quot;:&quot;) +
        1).Replace(&quot;\&quot;&quot;, String.Empty);

      Form requestedForm = null;

      switch(commandData)
      {
         case &quot;Client&quot;:
         {
            requestedForm = new ClientForm();
            break;
         }
         // Handle other values
         default: // Command line parameter is invalid
         {
            MessageBox.Show(&quot;The command line parameter specified&quot; +
               &quot; was invalid.&quot;, &quot;SSW Demo App&quot;,
                  MessageBoxButtons.OK, MessageBoxIcon.Error);

            // Exit the application
            return;
         }
      }

      requestedForm.Show();

      // Show the main form as well
      MainForm mainForm = new MainForm();
      mainForm.Show();

      // Give the requested form focus
      requestedForm.Focus();

      Application.Run(mainForm);
   }
   else // No command line parameters
   {
      // Just show the main form
      Application.Run(new MainForm());
   }
}</pre>
		<p><b>VB .NET:</b></p>
				<pre>Public Shared Sub Main()
   ...</pre>
				<pre>Dim args As String = Microsoft.VisualBasic.Command()

   If args.Length > 0
      Dim commandData As String = _
         args.Substring(args.IndexOf(&quot;:&quot;) + 1).Replace(&quot;&quot;&quot;&quot;, &quot;&quot;)
      Dim requestedForm As Form = Nothing

      Select Case commandData
         Case "Client&quot;
            requestedForm = New ClientForm()

         ' Handle other values

         Case Else ' Command line parameter is invalid
	 MessageBox.Show("The command line parameter specified &quot; &amp;_
            &quot;was invalid.", "SSW Demo App", MessageBoxButtons.OK, &amp;_
            MessageBoxIcon.Error);

         ' Exit the application
         Exit Sub
      End Select

      requestedForm.Show()

      ' Show the main form as well
      Dim mainForm As MainForm = New MainForm()
      mainForm.Show()

      ' Give the requested form focus
      requestedForm.Focus()

      Application.Run(mainForm);

      Else ' No command line parameters, just show the main form
      Application.Run(new MainForm())
   End If
End Sub</pre>
		<p>Sample code <span style="background-color: #FF0000">implementation</span> in the 
		<a href="/ssw/NETToolkit">SSW .NET Toolkit</a>.</p></li></ol><br/></li>
	<li>
	<h2><a name="BackUndoButton"></a>Do you include back &amp; undo buttons on every form?</h2>
	<p dir="ltr">Following on from including a URL, almost every form should have a 
	Back 
			and an Undo button which takes you back to the previous screen, or 
			reverses the last action. This is just like 
			Outlook (see figure below), it has a Back button to take you to the 
previous folder and an Undo button.<br/><br/><br/>
	<img border="0" src="Images/outlookViewBar.jpg" width="502" height="26"><br/>
	<br/><b>Figure: Back &amp; Undo buttons in Outlook Advanced toolbar (good)</b></p>
	<p class="MsoNormal">Note: Back button should only be implemented if different 
views can be shown in the same window.<br/>Note #2: You dont put Undo buttons on non data entry forms such as a Print 
	Preview form.</p>
	<p class="MsoNormal">The list of forms/URLs and the order in which they have been 
			accessed should be stored in a DataSet held in memory (like IE) - 
			not saved to disk.<br/>For example:</p>
	<table border="0" width="80%" class="clsSSWTable">
		<tr>
			<td width="25%"><b>Menu</b></td>
			<td width="25%"><b>Action</b></td>
			<td width="25%"><b>Undo</b></td>
			<td width="25%"><b>Back</b></td>
		</tr>
		<tr valign="top">
			<td>Cut</td>
			<td>Remember: Remember Text and Cursor Position<br/>Cut To Clipboard 
			</td>
			<td>Return to Remember</td>
			<td>n/a</td>
		</tr>
		<tr valign="top">
			<td>Save Record</td>
			<td>Remember old values<br/>Execute procCustomerSave<br/>Close Form</td>
			<td>Return to Old values</td>
			<td>Reopen form</td>
		</tr>
	</table>
	<p>Sample code <span style="background-color: #FF0000">implementation</span> in the 
	<a href="/ssw/NETToolkit">SSW .NET Toolkit</a>.<br/>&nbsp;</p></li>
	<li>
	<h2><a name="UnitTests"></a>Do you use NUnit to write Unit Tests?</h2>
	<p>When anyone sends you a bug that happen in their environment  do a unit 
test. Just because the code runs on your machine it doesnt mean it will work on 
the users machine. E.g permissions issues - you are an admin while the user is 
only a simple user, registry &amp; io reads might fail, NUnit will test for this and 
let you know.</p>
	<p>Unit testing is a valuable tool when maintaining code, particularly in a 
	team environment where you may have to fix a bug in someone else's code. 
	Unit Tests ensure that you do not introduce new bugs in someone else's code, 
	or code that you have not looked at for a while. We like 
	<a href="/ssw/Redirect/NUnit.htm" target="_blank">NUnit</a> because it is 
	free, we have found that it is easy for developers to learn and it 
	integrates well with Visual Studio. Visual Studio .NET 2005 integrates Unit Testing with Visual Studio Team 
	System. We will use this when Visual Studio 2005 is released.</p>
	<p>You should always try to write unit tests for:</p>
	<ol>
		<li>Code that is a core component to your application</li>
		<li>Any regular expressions (as these change it is easy to change 
	functionality and cause errors)</li>
		<li>Any external factors that your program relies on like hyperlinks to 
	websites</li>
	</ol>
	<p>One important test that should be implemented (if your setup package or build script doesn't pick it up) is to validate that your application installs all required DLLs. .NET loads DLLs just in time (JIT) - which means that a missing DLL is will not generate an error unless it is required.
	</p>
	<p><span class="Caption">Example:</span>
	 You may have a shared project that your application uses. Another developer 
	adds a reference to that project - unbeknownst to you. You build the 
	application with no errors, and the application passes basic user testing. 
	Problem is that the user did not run the tutorial component - which is 
	missing from the setup package. Users who run the tutorial report runtime 
	errors. You can resolve this issue by creating a unit test to check that all 
	DLLs are included in the setup as per the
	<span style="font-size: 9.0pt; font-family: Verdana">sample code
	<span style="background-position: 0% 0%; background-image:none; background-repeat:repeat; background-attachment:scroll">implementation</span> in 
	</span>our KB article <a href="/ssw/KB/KB.aspx?KBID=Q1852329">Q1852329</a>.</p>
	<p>
	<img border="0" src="Images/UnitTestsInHelpMenu.jpg" width="550" height="459"><br/>
	<b>Figure: Unit Tests accessible from the help menu</b></p>
	<p>Unit tests should also be accessible from the Help menu to assist in 
	troubleshooting when your users call up tech support. For more information 
	see <a href="RulestoBetterInterfaces-Windows-Applications.aspx#HelpMenu">Rules to Better Interfaces</a>.</p>
	<p>Note: Unit testing also works with Web projects.</p>
	<p>For more information on unit testing see 
	<a href="RulesToBetterUnitTests.aspx#NotVSTS">Rules to Better Unit Tests</a></p>
	<p>Also see <a href= "../BetterSoftwareSuggestions/TeamFoundationServer.aspx">Suggestions to TFS</a></p>
	<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table16">
		<tr>
			<td>We have a program called <a href="/ssw/NETToolkit/">SSW .NET Toolkit</a> that implements these Unit Tests</td>
		</tr>
	</table>
	


	</li>
    <li>
        <h2><a name="ReuseUserSettings"></a>Do you save user settings and reuse them by default?</h2>
        <p>There should always be default values in your application if you allow users to change the settings. This will help your users to have a better first time experience and insure the  application work as expected.</p>
        <p>However when the users change settings for their own preference, it is better to save these settings and give user has a better return experience, your application looks smarter in this way.</p>
        <img alt="ReuseUserSettings" src="Images/defaultValue.png"><br/><b>Figure: Save user setting</b><br/><br/>
    </li>
	<li>
	<h2><a name="ResetDefault"></a>Do you have a ResetDefault() function to handle messed up user settings?</h2>
	<p>In our development life cycle, developers always have different Settings to 
the user's settings. Because of this, debug settings won't always work on the 
remote machine.</p>
	<p>In order to have settings.config, we also have a defaults.config. This is 
good because this gives a chance for the user to roll back bad settings without 
reinstalling the application. The application can also roll back the settings it 
automatically. Below is the code that what we do.</p>
	<p>VB.NET</p>
			<pre>  Public Sub RuneXtremeEmail(ByVal state As Object)

        If Environment.MachineName <> Configuration.MachineName Then

            resetSettings()

        Else 
</pre>
	<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table12">
		<tr>
			<td>We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> 
			to check for this rule.</td>
		</tr>
	</table>
	<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table18">
		<tr>
			<td>We have a program called <a href="/ssw/NETToolkit/">SSW .NET Toolkit</a> that implements 
			this rule.</td>
		</tr>
	</table>
	<p><i>Note: in Access we do like this</i></p>
			<pre>  Private Sub Form_Load()</pre>
			<pre>  If Nz(DLookup("CurrentComputerName", "ControlLocal", "ID=1"), "") <> CurrentComputerName Then
    	Me.ctlCurrentComputerName.Value = CurrentComputerName
    
  Else ...
    </pre>
	</li><br/>
	<li>
	<h2><a name="GuiThreading"></a>Do you use Threading to make your user interfaces more responsive?</h2>
	<p>Threading is not only used to allow a server to process multiple client requests - it could make your user interfaces responsive when your application is performing a long-running process, allowing the user to keep interactive.
</p>
	<img src="Images/NoThreading.gif" width="457" height="129"><br/><b>Figure: Unresponsive UI because no threading code(bad)</b><br/><br/>
	<pre>
		private void Form1_Load(object sender, EventArgs e)
{

            this.ValidateSQLAndCheckVersion();// a long task
}
		
	</pre>
	<b>Code: No threading code for long task</b><br/><br/>

	<img src="Images/ThreadingStart.gif" width="654" height="548" /><br/><b>Figure: Responsive UI in progress (good)</b><br/><br/>
	<img src="Images/ThreadingEnd.gif" width="658" height="548" /><br/><b>Figure: Responsive UI completed (good)</b><br/>
	<p>
	<pre>
	private void Page05StorageMechanism_Load(object sender, EventArgs e)
	{

            this.rsSetupOk = false;

            this.databaseSetupOk = false;

            this.NextButtonState.Enabled = false;

            CheckDatabase();

            CheckReports();

	}

	public void CheckDatabase()
        {
                     if(sqlConnectionString == null)
                     {

                           OnValidationFinished(false,false);

                     }

                     if(upgradeScriptPath ==null && createScriptPath == null)

                     {

                           OnValidationFinished(false,false);

                     }
                     Thread thread = new Thread(new ThreadStart(this.ValidateSQLAndCheckVersion) ) ;

                     thread.Name = "DBCheckingThread";

                     thread.Start();

         }</pre>
<b>Code: Threading code for long task</b>
        </p>
	</li>
	<br/>
	<li>
	<h2><a name="GuiTextBoxHeight"></a>Do you use two lines height to display file name in the text box?</h2>
	<p>The height of a text box should be twice of the font height to display 
	file name in full.</p>
	<img src="../Images/TextBoxHeight.png" width="489" height="189" /><br/><b>Figure: 
	Text box displaying full file name<br/>
&nbsp;</b></li>
	<li>
	<h2><a name="StatusControl"></a>Do you use Status Control?</h2>SSW 
	Status Control provides graphical UI for status checking result.<p>
	<img src="Images/statuscontrol_warning.jpg" width="410" height="170" /><br/>
	<b>Figure: Warning message in status control</b><br/>
	&nbsp;<br/>
	<img src="Images/statuscontrol_pass.jpg" width="410" height="170" /><br/>
	<b>Figure: Successful message in status control</b><br/>
	<br/>
	<img src="Images/statuscontrol_failed.jpg" width="410" height="170"><br/>
	<b>Figure: Failed message in status control</b></p>
	<table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table20">
		<tr>
			<td>We have a program called <a href="/ssw/NETToolkit/">SSW .NET Toolkit</a> 
			that uses status control.</td>
		</tr>
	</table>
	</li>
	<li>
	<a name="AvoidTwoInstances"></a><h2>Do you prevent users from running two instances of your application?</h2>
<p>
In some cases, running two instances of an application at the same time may cause unexpected result. See below code in one of our products - <a href="/ssw/ExchangeReporter/">SSW Exchange Reporter</a> to solve this issue:
<pre style="width:95%;">
try
{
	Process current = Process.GetCurrentProcess();
	Process[] processes = Process.GetProcessesByName( current.ProcessName);
			
	if ( processes.Length>1 )
	{
		DialogResult userOption = MessageBox.Show(  
		Application.ProductName+" is already running on this machine. "+Environment.NewLine+Environment.NewLine+
		"Please click: "+Environment.NewLine+
		<!--SSW Code Auditor - Ignore next line(HTML)-->  
		" - 'Try again' to exit the other instance and try again, or "+Environment.NewLine+
		" - 'Cancel' to exit now."+Environment.NewLine,
		Application.ProductName+" "+(new Version(Application.ProductVersion)).ToString(2),
		<!--SSW Code Auditor - Ignore next line(HTML)-->  
		MessageBoxButtons.RetryCancel, MessageBoxIcon.Warning);
		switch(userOption)
		{
			case DialogResult.Cancel: return;
			<!--SSW Code Auditor - Ignore next line(HTML)-->  
			case DialogResult.Retry:
			foreach(Process currProcess in processes)
			{
				if ( currProcess.Id != current.Id)
				{
					currProcess.Kill();
				}
			}
			break;						
		}
	}	
}
catch(Exception ex)
{
	TracingHelper.Trace(null, Loggers.WindowsUILogger, TracingLevels.DEBUG, "Cannot get process information, Excpetion occured.", ex) ;

	DialogResult result = MessageBox.Show(
	"Exchange Reporter cannot detect process information. This may be caused by disabled 'Performance Counter' on your machine. "+Environment.NewLine+
	"In such case, Exchange Reporter cannot ensure there is only one instance running. "+
	Environment.NewLine+
	"You may continue to run Exchange Reporter, however, please make sure you have only one instance of Exchange Reporter running. "+
	Environment.NewLine+
	"Multiple instances will cause unexpected behaviour. "+
	Environment.NewLine+Environment.NewLine+
	"Please click 'OK' to continue, or click 'Cancel' to quit."
	, Application.ProductName+" "+(new Version(Application.ProductVersion)).ToString(2),
	MessageBoxButtons.OKCancel,
	MessageBoxIcon.Warning);

	if ( result == DialogResult.Cancel)
	{					
		return;
	}
}

</pre><br/><b>Code: avoid running two instances</b>
</p>
	</li>

<li><a name="CustomizedColumn"></a><h2>Do you add a "(customized)" column in grid if there are default values?</h2>
<p>Add a column and show "(customized)" in grid - that is an easier way to know if you have changed from the defaults</p>
<dl class="badImage">
<dt><img src="Images/badExampleForCustomizedColumn.gif" /></dt>
<dd>Figure: you need to compare with the default values to know whether it is modified;</dd>
</dl>
<dl class="goodImage">
<dt><img src="Images/goodExampleForCustomizedColumn.gif"/></dt>
<dd>Figure: a "(customized)" column is an easier way to know if you have changed from the defaults;</dd>
</dl>
</li>
<li><a name="CheckForUpdates"></a><h2>Do you know there should be a standard menu item "Check for Updates"?</h2>
<p>A standard menu item "Check for Updates" should be available in the Help menu. Its function is running SSW Diagnostics to check updates and keep the system up to date easily. <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/AllowUsersToCheckNewVersionEasily.aspx" target="_blank">Do you allow users to check for a new version easily?</a></p>
<dl>
<dt><img src="Images/CheckforUpdatesMenu.GIF"/></dt>
<dd>Figure: "Check for Updates" menu item</dd>
</dl><br />
Here's the code to run Diagnostics.
<pre>System.Diagnostics.Process.Start("http://us.ssw.com.au/ssw/diagnostics/download/SSWDiagnostics.application#SSWDiagnostics.application");
</pre>
</li>
<li><a name="SendMail"></a>
<h2>Do you use Web Service to send emails?</h2>
<p>
    In a Windows application, if you need to send mail, please use a WebService to do this, because using WebService to send emails is safer.You don't need to store the email server configuration in your application.config file, which can be installed on the client and be exposed to someone who could take advantage of it.
</p>
                <dl class="badCode">
                    <dt>
                        <pre>
SmtpClient client = new SmtpClient();
try
{
    client.Host = "****.***.com.au";
    client.Port = 25;
    client.UseDefaultCredentials = true;
    <!--SSW Code Auditor - Ignore next	line(HTML)-->
    MailAddress from = new MailAddress("test@ssw.com.au");
     <!--SSW Code Auditor - Ignore next	line(HTML)-->
    string unrecAddy = "test@ssw.com.au";
    MailAddress to = new MailAddress(unrecAddy);

    MailMessage mailMessage = new MailMessage(from, to);

    mailMessage.Subject = "aaa";
    string strVer = "aaa";
    mailMessage.Body = "aaa";

    client.Send(mailMessage);
    
}
catch(Exception ex)
{
    client.SendAsyncCancel();
    MessageBox.Show(ex.ToString());
}
                        </pre>
                    </dt>
                    <dd>
                        Bad Sample: Send mail without webserice</dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                        <pre>
Emailer.PubicFunction pf = new EmailWebServices.Emailer.Publiction();
pf.SendMail("Test", textBox3.Text, textBox1.Text, textBox2.Text, false, "", null);
                        </pre>
                    </dt>
                    <dd>
                        Good Sample: Send mail use webservice</dd>
                </dl>
 </li>
 
 
<li>
 <a name="Colon"></a>
 <h2>Do your label beside input control(Textbox, Combobox, Datetime, etc...) have colon?</h2>
 <a href="#Colon"></a>
    <dl class="goodImage">
        <dt>
            <img src="Images/GoodColon.gif" />
        </dt>
        <dd>Figure: Label with colon</dd>
    </dl>
 </li>
 
 <li>
 <a name="DataGridView"></a>
 <h2>Do Do you always use GridView instead of ListBox?</h2>
 <p>Always choose a GridView (over a ListBox) because it can have:<br />

1.	Multiple columns.<br />
2.	Checkboxes in the header of the control, which enables users to easily check or uncheck all items.<br />
3.	Add sub-controls added such as buttons, links, charts, and even customized controls to the Gridview. This means you get unlimited flexibility with the GridView.<br />

 </p>
    <dl class="badImage">
        <dt>
            <img src="Images/DataGridViewBad.png" />
        </dt>
        <dd>Bad Example: No header rows and no checkbox to check or uncheck all items. None of this can be done with the ListView.</dd>
    </dl>
    <dl class="goodImage">
        <dt>
            <img src="Images/DataGridViewGood.png" />
        </dt>
        <dd>Good Example: A header row and a checkbox to control all items, and multiple columns give users a richer experience. This can all be done using a GridView.</dd>
    </dl>
 </li>
 
 <li><a name="IntPtr"></a>
<h2>Do you know how to make .Net wrapper work on both x64 and x86 platforms?</h2>
<p>
   Sometimes, we need to use .Net wrapper to call Windows built-in forms for implementing special functionalities, for example, calling the Directory Object Picker dialog enables a user to select objects from the Active Directory. 
    MSDN provides an article and an example(C++) on <a href="/ssw/redirect/msdn/DirectoryObjectPicker.htm" target="_blank"  class="external">how to calling the Directory Object Picker dialog</a> , and the CodePlex website gives <a href="/ssw/redirect/codeplex/ActiveDirectoryCommonDialogs.htm" target="_blank"  class="external"> a .Net version of implementation(C#)</a>. However, all of this implementations only work on x86 platform, and will crash on x64 platform, 
    regarding to this problem, the keynote is to understand the difference of IntPtr in between x64 and x86 platforms.
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;In x86 platform, IntPtr = Int32<br />
&nbsp;&nbsp;&nbsp;&nbsp;In x64 platform, IntPtr = Int64 
</p>
<p>
So, To fix the crash, we should re-write the code below:
</p>
                <dl class="badCode">
                    <dt><pre>
DSOP_SCOPE_INIT_INFO[] scopeInitInfo = new DSOP_SCOPE_INIT_INFO[2]; <br />
IntPtr refScopeInitInfo = Marshal.AllocHGlobal(Marshal.SizeOf (typeof (DSOP_SCOPE_INIT_INFO)) * 2);<br />   
Marshal.StructureToPtr (scopeInitInfo[0], refScopeInitInfo,true);<br /> 
Marshal.StructureToPtr(scopeInitInfo[1], (IntPtr)((int)refScopeInitInfo + Marshal.SizeOf(typeof(DSOP_SCOPE_INIT_INFO))), true);<br /> 
                   </pre>
                    </dt>
                    <dd>
                        The code above always gets crash in x64 platform, because of an integer overflow and result in a segmentation fault in 64 bits.</dd>
                </dl>
                <dl class="goodCode">
                    <dt>
                    <pre>
IntPtr refScopeInitInfo = Marshal.AllocHGlobal(Marshal.SizeOf(typeof(DSOP_SCOPE_INIT_INFO)) * 2);<br />
int scopeInitInfoSize = Marshal.SizeOf (typeof (DSOP_SCOPE_INIT_INFO));<br /> 
int offset = scopeInitInfoSize;<br /> 
IntPtr scopeInitInfo = (IntPtr)(refScopeInitInfo.<span style="background-color: #FFFF00">ToInt64()</span> + offset);<br />
</pre>
                    </dt>
                    <dd>
                        Convert all IntPtr to Int64 before the add operator (note: this will work for 32 bits as well, just less efficient).</dd>
                </dl>
                <dl class="badImage">
                    <dt>
                        <img alt="Directory Object Picker dialog crashs in x64 platform" src="images/Crash.jpg" />
                    </dt>
                    <dd>
                        Figure: Calling the Directory Object Picker dialog causes crash on x64 platform when using the bad code above.
                    </dd>
                </dl>
                   <dl class="goodImage">
                    <dt>
                        <img alt="Directory Object Picker dialog works x64 platform" src="images/WorkNormal.jpg" />
                    </dt>
                    <dd>
                        Figure: The Directory Object Picker dialog works on both x64 and x86 platforms well when using the good code above.
                    </dd>
                </dl>
 </li>
 
 <li>
 <a name="Multiline"></a>
 <h2>Do you set the ScrollBars property if the TextBox is Multiline?</h2>
 <p>If a TextBox has Multiline set to true, then the ScrollBars property should be set to "Both" or at least "Vertical".</p>
    <dl class="badImage">
        <dt>
            <img src="Images/Multiline_Bad.gif" />
        </dt>
        <dd>Bad Example: Multiline TextBox without "Vertical" scroll bar.</dd>
    </dl>
    <dl class="goodImage">
        <dt>
            <img src="Images/Multiline_Good.gif" />
        </dt>
        <dd>Good Example: Multiline TextBox with "Vertical" scroll bar.</dd>
    </dl>
    <dl class="goodImage">
        <dt>
            <img src="Images/MultilineTextBox.gif" />
        </dt>
        <dd>Good Example: Set the ScrollBars property to "Vertical" if the TextBox is Multiline.</dd>
    </dl>
    <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor" id="table1">
		<tr>
			<td>We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> 
			to check for this rule. 
			</td>
		</tr>
	</table>
 </li>





<li>
 <a name="UACTurnOn"></a>
 <h2>Do you know how to run write application to run with UAC turn on?</h2>
 <p>Some applications may need to have administrator right for running the application, e.g. create a file, access system library, etc. It will be an issue for the application to run if UAC is turned on.
     Below is the step to solve the issue:</p>
    <ol>
        <li>Add App.Manifest into WindowsUI project.
        It should contain the below code:
        <dl class="goodCode">
                    <dt><pre>
&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;
&lt;asmv1:assembly manifestVersion=&quot;1.0&quot; xmlns=&quot;urn:schemas-microsoft-com:asm.v1&quot; xmlns:asmv1=&quot;urn:schemas-microsoft-com:asm.v1&quot; 
  xmlns:asmv2=&quot;urn:schemas-microsoft-com:asm.v2&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;&gt;
  &lt;assemblyIdentity version=&quot;1.0.0.0&quot; name=&quot;MyApplication.app&quot;/&gt;
  &lt;trustInfo xmlns=&quot;urn:schemas-microsoft-com:asm.v2&quot;&gt;
    &lt;security&gt;
      &lt;requestedPrivileges xmlns=&quot;urn:schemas-microsoft-com:asm.v3&quot;&gt;
        &lt;requestedExecutionLevel level=&quot;requireAdministrator&quot; uiAccess=&quot;false&quot; /&gt;
      &lt;/requestedPrivileges&gt;
    &lt;/security&gt;
  &lt;/trustInfo&gt;
&lt;/asmv1:assembly&gt;
                    </pre></dt>
                    <dd>App.Manifest</dd>
                </dl>
        
        </li><li>Change the project settings for WindowsUI to use the newly created App.Manifest.<dl class="goodImage">
                <dt>
                    <img src="./Images/SetManifest.jpg" /> </dt>
        <dd>Use the newly created App.Manifest</dd>
    </dl>
        </li>
    </ol>
    
    <li>
 <a name="AutoWaitCursor"></a>
 <h2>Do you use Auto wait cursor on your windows application?</h2>
 <p>
     It can be extremely tiresome to have to continually remember to set and unset the wait cursor for an application. 
     If an exception occurs you have to remember to add a try finally block to restore the cursor, or if you popup a message box 
     you must remember to change the cursor first otherwise the user will just sit there thinking the application is busy.
     
     <dl class="badImage">
        <dt>
            <img src="Images/AutoWaitCursor_Bad.jpg" />
        </dt>
        <dd>Bad Example: Cursor set manually.</dd>
    </dl>
    <dl class="goodImage">
        <dt>
            <img src="Images/AutoWaitCursor_Good.jpg" />
        </dt>
        <dd>Good Example: Implemented Auto wait cursor.</dd>
    </dl>

    We use AutoWaitCursor Class that automatically monitors the state of an application and sets and restores the cursor according to whether the application 
    is busy or not. All that required are a few lines of setup code and your done.
    <a href="http://snipplr.com/view/24851/">see this great blog on how to use AutoWaitCursor.</a> 
    If you have a multithreaded application, it won't change the cursor unless the main input thread is blocked. 
    Infact you can remove all of your cursor setting code everywhere!
 </p>   
    
 </li>
    </li>
                
    
<li>
 <a name="ItemsCountButton"></a>
 <h2>Do you make your add/delete buttons crystal clear?</h2>
 <p>You don't want someone hitting a delete button by accident. You don't want a use clicking delete execting a record to be deleted and 10 are deleted.</p>
 <p>Aim to make your delete button red and add the count into button text, so the user will be empowered before hitting that fateful delete button.</p>  
    <dl class="badImage">
        <dt>
            <img src="Images/ItemsCountButton_bad.jpg" />
        </dt>
        <dd>Bad Example: The user wants to click 'OK' but there is not a 2nd check</dd>
    </dl>
    <dl class="goodImage">
        <dt>
            <img src="Images/ItemsCountButton_good(iphone).jpg" />
        </dt>
        <dd>Good Example: Apple got the delete button perfecton the iPhone. It is red + the count of the selected items is clear</dd>
    </dl>
    <dl class="goodImage">
        <dt>
            <img src="Images/ItemsCountButton_good.jpg" />
        </dt>
        <dd>Good Example: When adding multiple records, do a quick count of the selected items in DataGridView</dd>
    </dl>
 </li>
<li>
 <a name="MonthCalendarFirstDayOfWeek"></a>
 <h2>Do you always set FirstDayOfWeek to Monday on a MonthCalendar?</h2>
 <p>It is always good idea to set FirstDayOfWeek property to Monday to initialize it instead of leave it with the dafault value</p>
 <p></p>  
    <dl class="badImage">
        <dt>
            <img src="Images/MonthCalendarFirstDayOfWeekBad.gif" />
        </dt>
        <dd>Bad Example: The user doesn't set the FirstDayOfWeek to Monday</dd>
    </dl>
    <dl class="goodImage">
        <dt>
            <img src="Images/MonthCalendarFirstDayOfWeekGood.gif" />
        </dt>
        <dd>Good Example: The user set the FirstDayOfWeek to Monday</dd>
    </dl>
  </li>
<li>
 <a name="MonthCalendarShowToday"></a>
 <h2>Do you always set ShowToday or ShowTodayCircle to true on a MonthCalendar?</h2>
 <p>It is always good idea to set ShowToday or ShowTodayCircle to true to increase the user experience on MonthCalendar control</p>
 <p></p>  
    <dl class="badImage">
        <dt>
            <img src="Images/MonthCalendarShowTodayBad.gif" />
        </dt>
        <dd>Bad Example: The user doesn't set ShowToday or ShowTodayCircle to true</dd>
    </dl>
    <dl class="goodImage">
        <dt>
            <img src="Images/MonthCalendarShowTodayGood.gif" />
        </dt>
        <dd>Good Example: The user set ShowToday or ShowTodayCircle to true</dd>
    </dl>
  </li>
<li>
 <a name="PasswordChar"></a>
 <h2>Do you set PasswordChar to (*) on a TextBox on sensitive data?</h2>
 <p>If you want to work with sensitive data on textboxes is always good practice to set PasswordChar to (*)</p>
 <p></p>  
    <dl class="badImage">
        <dt>
            <img src="Images/PasswordCharBad.gif" />
        </dt>
        <dd>Bad Example: The user doesn't set PasswordChar to (*)</dd>
    </dl>
    <dl class="goodImage">
        <dt>
            <img src="Images/PasswordCharGood.gif" />
        </dt>
        <dd>Good Example: The user set PasswordChar to (*)</dd>
    </dl>
  </li>

    
    <li>
     <a name="AnchoringAndDocking"></a><h2>Anchoring and Docking - Do you use Anchoring and Docking (full) if you have a multiline textboxes?</h2>
     <p>If you add a multiline text box in a form, you should add anchoring and/or docking properties to allow it to expand when the form is resized.  </p>
         <dl class="badImage">
            <dt>
                <img src="Images/WrongSettings.jpg" alt="Wrong settings in the designer" />
            </dt>
            <dd>Bad Example:  Wrong settings in the designer </dd>
        </dl>
        <dl class="goodImage">
            <dt>
                <img src="Images/SetAnchorProperty.jpg" alt="Set Anchor Property"/>
            </dt>
            <dd>Good Example: Set Anchor property to Top, Bottom, Left, Right in the designer</dd>
        </dl>
        <dl class="badImage">
            <dt>
                <img src="Images/WrongAnchorAndDock.jpg" alt="Multiline textbox with the wrong anchoring and docking" />
            </dt>
            <dd>Bad Example: Multiline textbox with the wrong anchoring and/or docking properties</dd>
        </dl>
        <dl class="goodImage">
            <dt>
                <img src="Images/CorrectAnchoringAndDocking.jpg" alt="Multiline textbox with the correct anchoring and docking" />
            </dt>
            <dd>Good Example: Multiline textbox with the correct anchoring and/or docking properties</dd>
        </dl>
        <p> We have a program called <a href="http://www.ssw.com.au/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule</p>
    </li>

    <li>
     <h2><a name="SingleLineTextboxes"></a>Anchoring and Docking - Do you use Anchoring and Docking (horizontal only) with single line textboxes?</h2>
     <p>If you add a text box in a form you should add anchoring and/or docking properties to allow it to grow as the form widens, but not as it increases in height.  </p>
         <dl class="badImage">
            <dt>
                <img src="Images/WrongSettings01.jpg" alt="Wrong settings in the designer" />
            </dt>
            <dd>Bad Example:  Wrong settings in the designer </dd>
        </dl>
        <dl class="goodImage">
            <dt>
                <img src="Images/SetAnchorProperty01.jpg" alt="Set Anchor Property"/>
            </dt>
            <dd>Good Example: Set Anchor property to Top, Bottom, Left, Right in the designer</dd>
        </dl>
        <dl class="badImage">
            <dt>
                <img src="Images/WrongAnchorAndDock01.jpg" alt="Textbox with the wrong anchoring and/or docking " />
            </dt>
            <dd>Bad Example: Textbox with the wrong anchoring and/or docking properties</dd>
        </dl>
        <dl class="goodImage">
            <dt>
                <img src="Images/CorrectAnchoringAndDocking01.jpg" alt="Textbox with the correct anchoring and docking" />
            </dt>
            <dd>Good Example: Textbox with the correct anchoring and/or docking properties</dd>
        </dl>
        <p> We have a program called <a href="http://www.ssw.com.au/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule</p>
    </li>

    <li><a name="TextAlign"></a>
        <h2>Do you know TextAlign should be TopLeft or MiddleLeft?</h2>
        <p>Text Align TopLeft or MiddleLeft values are always a good practice in terms or layout orientation and UI consistency.</p>
        <dl class="badImage">
            <dt><img src="Images/TextAlign-bad.jpg" /></dt>
            <dd>Figure: Bad example - TextAlign is set to BottomRight</dd>
        </dl>
        <dl class="badImage">
            <dt><img src="Images/TextAlignResult-bad.jpg" /></dt>
            <dd>Figure: Bad example - Form with TextAlign is set to BottomRight</dd>
        </dl>
        <dl class="goodImage">
            <dt><img src="Images/TextAlign-good.jpg" /></dt>
            <dd>Figure: Good example - TextAlign is set to TopLeft</dd>
        </dl>
        <dl class="goodImage">
            <dt><img src="Images/TextAlignResult-good.jpg" /></dt>
            <dd>Figure: Good example - Form with TextAlign is set to TopLeft</dd>
        </dl>
        <p class="productBox">We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check for this rule.</p>
    </li>

    <li>
        <h2><a name="OtherUIRules"></a>Do you know other UI rules</h2>
        <ul>
            <li><a href="RulesToBetterInterfaces-Forms.aspx">Rules to Better Interfaces - Data Entry Forms</a></li>
            <li><a href="RulesToBetterInterfaces-Windows-Applications.aspx">Rules To Better Interfaces - Windows Applications</a></li>
        </ul>
    </li>

</ol>
<h2> I'm sold - What more can you do?  you do? </h2>
        <p>
            <a href="/ssw/Company/SoftwareAudit.aspx">SSW Software Auditing Services</a> have helped to improve lots of software ranging from developer utilities to large enterprise systems. Contact us and let our experts help you to audit your software. 
        </p>


<h2>Acknowledgments</h2>
<p>
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
</p>
	
	</asp:content>