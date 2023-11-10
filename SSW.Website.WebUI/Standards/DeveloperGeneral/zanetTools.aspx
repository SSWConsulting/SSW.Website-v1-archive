<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW - The Best 3rd Party .NET Tools"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<p>        
<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
    </asp:SiteMapPath>
</p>
<div class="TableOfContents">
<H3>General .NET Tools</H3>
<ol>
	<li><a href="#NetTiers">.netTiers (via CodeSmith)</a></li>
	<li><a href="#ReSharper">Jetbrains ReSharper</a></li>
	<li><a href="#FxCop">Microsoft FxCop</a></li>
	<li><a href="#CodeAuditor">SSW Code Auditor</a></li>
	<li><a href="#NUnit">NUnit</a></li>
	<li><a href="#NETProfiler">Jetbrains .NET Profiler</a></li>
	<li><a href="#NDoc">NDoc</a></li>
	<li><a href="#Sandcastle">Sandcastle</a></li>
	<li><a href="#CSharpToVB">C# to VB.NET converter</a></li>
	<li><a href="#VBToCSharp">VB.NET to C# converter</a></li>
	<li><a href="#VBToCSharpAndCSharpToVB">Combined VB.NET to C# and C# to VB.NET converter</a></li>
	<li><a href="#SourceGearVault">SourceGear Vault</a></li>
	<li><a href="#Reflector">.NET Reflector - a Decompiler for .NET</a></li>
	<li><a href="#AllocationProfiler">Allocation Profiler</a></li>
	<li><a href="#CLRSpy">CLR Spy for COM Interop</a></li>
	<li><a href="#CodeRush">Developer Express CodeRush</a></li>
	<li><a href="#TestDriven">Test Driven .NET</a></li>
	<li><a href="#AspDB">AspDB</a></li>
	<li><a href="#BLinQ">BLinQ</a></li>
	<li><a href="#Elmah">Elmah (Error Logging Modules and Handlers)</a></li>
    <li><a href="#EditPlus"><s>EditPlus</s></a></li>
    <li><a href="#Notepad">Notepad++</a></li>
    <li><a href="#UltraEdit">UltraEdit</a></li>
</ol>
</div>
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D54686525323042657374253230546F6F6C73253230466F72253230496E7465726E65742532304578706C6F726572')">
    Let us know</a> what you think.</p> 

<p>
 would you like your software to be considered for this list?  
	<a href="TheBest3rdPartyTools.aspx#HowToGetMyToolsConsidered">Give us your details</a>.
</p>
		
<ol>

    <li>
         <h2><a name="NetTiers" id="NetTiers"></a>
       NetTiers (via CodeSmith) for .NET Code Generation</h2>
        <p>
            <a href="/SSW/Redirect/Nettiers.htm" class="external">.netTiers</a> is an open source set of templates for the
            <a href="/SSW/Redirect/Codesmithtools.htm" class="external">CodeSmith</a> code generator. It follows Microsoft's patterns and best practices
            guidelines to generate a customized, layered, application architecture for your database (we call it "maintenance pages". See our rule on <a href="/SSW/Standards/rules/RulesToBetterWebsitestuningandmaintenance.aspx#MaintenancePages">maintenance pages</a>).
        </p>
        <p>
            Choosing a code generator that's right for your needs involves a reasonable amount of consideration. You should
            think about things like:
        </p>
        <ul>
            <li>ability to alter templates in a familiar environment (such as .xsl)</li>
            <li>the code output is of good quality and adhering to your <a href="../Rules/RulestoBetterCode.aspx">coding standards</a></li>
            <li>it generates a layered architecture to support extendable projects</li>
            <li>it is easy to regenerate and compile the code output (see our <a href="http://rules.ssw.com.au/SoftwareDevelopment/RulesToBetterDotNETProjects/Pages/RegenerateStandard.aspx">regenerate standard</a>)</li>
        </ul>
        <p>
            Other code generators that we have used in the past include:
        </p>
        <ul>
            <li><a href="/SSW/Redirect/Radsoftware.htm" class="external">Next Generation</a></li>
            <li><a href="/SSW/Redirect/Llblgen.htm" class="external">LLBLGen</a></li>
        </ul>
    </li>
				
	<li>
			<h2><a name="ReSharper"></a> 
			Jetbrains ReSharper</h2>
		
		
			<p>
				ReSharper was created with the single purpose in mind: to increase the productivity of
				C# developers. It comes equipped with a rich set of features, such as intelligent coding assistance, on-the-fly
				error highlighting and quick error correction, unmatched support for code refactoring, and a whole lot more.
				ReSharper's tight integration with Visual Studio .NET provides quick and easy access to all of its advanced
				features right from the IDE.
			</p>
			
			<ul type="disc">
				<li>Error Highlighting</li>
				<li>Error Quick-fixes</li>
				<li>Refactoring Support</li>
				<li>Live Templates</li>
			</ul>

			<br>

			<div class="imageHolder">
				<img src="Images/ReSharper1.gif" alt="Jetbrains ReSharper" width="518" height="121">
				<p>
					<span class="Caption">Figure: Inline error highlighting and fixes</span></p>
			</div>

			<div class="imageHolder">
				<img src="Images/ReSharper2.gif" alt="Jetbrains ReSharper" width="495" height="272">
				<p>
					<span class="Caption">Figure: Code generation</span></p>
			</div>

			<div class="imageHolder">
				<img src="Images/ReSharper3.gif" alt="Jetbrains ReSharper" width="349" height="327">
				<p><span class="Caption">Figure: Pre-compile checking and syntax highlighting</span><br>
				<a href="/ssw/Redirect/JetbrainsReSharper.htm" target="_blank">Jetbrains ReSharper</a></p>
			</div>
		</li>		
		<li>
			<h2><a name="FxCop"></a> 
			Microsoft FxCop</h2>
		
		
			<p>
			FxCop is a code analysis tool that checks .NET managed code assemblies for conformance to the Microsoft .NET Framework Design Guidelines. It uses reflection, MSIL parsing, and callgraph analysis to inspect assemblies for more than 200 defects in the following areas:
			</p>
			<ul type="disc">
				<li>Library design</li>
				<li>Localization</li>
				<li>Naming conventions</li>
				<li>Performance</li>
				<li>Security </li>
			</ul>
				
			<br>

			<div class="imageHolder">
				<img src="Images/FxCopApp_Overview.gif" alt="Microsoft FxCop" width="594" height="500">
			<p>
				<span class="Caption">Figure: Microsoft FxCop</span>
			<br>
				<a href="/ssw/Redirect/MSFxCop.htm" target="_blank">Microsoft FxCop</a>
			</p>
			</div>
		</li>
        		
		<li>
			<h2><a name="CodeAuditor"></a>SSW Code Auditor</h2>	
		
			<p>
				As a project or company grows, managing code standards throughout your team 
				becomes virtually impossible. But consistent code is crucial to future development 
				and maintenance. Built in C#, SSW Code Auditor lets you take control of your 
				code and automatically review your web apps and projects - giving you more opportunity 
				to spend time where it really matters.
			</p>
			<div class="imageHolder">
				<img src="/ssw/CodeAuditor/Images/CodeAuditorWelcomeScreen.gif" alt="Startup" width="550" height="459">
			<p>
				<span class="Caption">Figure: SSW Code Auditor</span><br>
				<a href="/ssw/CodeAuditor/">SSW Code Auditor</a>
			</p>
			</div>
		</li>		
		<li>
			<h2><a name="NUnit"></a> 
			NUnit</h2>
		
			<p>
				NUnit is a unit-testing framework for all .NET languages. Initially ported from
				<a href="/ssw/Redirect/JUnitdotorg.htm" target="_self">JUnit</a>, the current release,
				version 2.2, is the fourth major release of  this xUnit based unit testing tool
				for Microsoft .NET. It is written entirely in C# and has been completely
				redesigned to take advantage of many .NET language features, for example custom
				attributes and other reflection related capabilities.
			</p>
			<div class="imageHolder">
				<img src="Images/NUnit.gif" alt="NUnit" width="308" height="308">
				<p>
					<span class="Caption">Figure: NUnit</span><br>
					<a href="/ssw/Redirect/NUnit.htm" target="_blank">NUnit</a>
				</p>
			</div>
		</li>		
		<li>
			<h2><a name="NETProfiler"></a>
			Jetbrains dotTrace Profiler</h2>
		
		
			<p>	  
				If you are looking to improve the performance of your .NET application, and don't know where to start, you need this tool. 
				The dotTrace .NET Profiler from Jetbrains is an invaluable tool to quickly determine where your application is slowest and which methods are in dire need of optimization. 
				Red-Gate's ANTs profiler offers similar functionality. However, we have found .NET profilers reports allow the developer to more quickly pinpoint bottlenecks in code. 
			</p>
			
			<div class="imageHolder">
				<img src="Images/JetBrainsProfilerHotSpots.gif" alt=".NET Profiler" width="913" height="337">
			<p>
				<span class="Caption">Figure: Jetbrains .NET Profiler</span>
			<br>	
				<a href="/ssw/Redirect/JetbrainsNETProfiler.htm" target="_blank">Jetbrains .NET Profiler Home</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
			</p>
		</div>		
		</li>		
		<li>
			<h2><a name="NDoc"></a> 
			NDoc</h2>
		
			<p>
				NDoc generates class libraries documentation from .NET assemblies and
				the XML documentation files generated by the C# compiler (or an add-on
				tool for VB.NET such as
				<a href="/ssw/Redirect/gotdotnet1.htm">VBCommenter</a>).
			</p>
			<p>
				NDoc uses add-on documenters to generate documentation in several
				different formats, including the MSDN-style HTML Help format (.chm),
				the Visual Studio .NET Help format (HTML Help 2), and MSDN-online
				style web pages.
			</p>
			<div class="imageHolder">
				<img src="Images/NDoc1.gif" alt="NDoc" width="522" height="365">
				<p>
					<span class="Caption">Figure: Rich CHM files</span></p>
			</div>
			<div class="imageHolder">
				<img src="Images/NDoc2.gif" alt="NDoc" width="522" height="365">
				<p>
					<span class="Caption">Figure: MSDN-online style webpages</span><br>
					<a href="/ssw/Redirect/NDoc.htm" target="_blank">NDoc</a>
					<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
				</p>
			</div>
		</li>
		<li>
			<h2><a name="Sandcastle"></a> 
			Sandcastle</h2>
		
			<p>
				Sandcastle, created by Microsoft, is a tool used for creating MSDN-style documentation from .NET assemblies and their associated XML comments files.
			</p>
			<p>
				Sandcastle is command line based and has no GUI front-end, project management features, or an automated build process. 
				However several Sandcastle users have created scripts and tools that automate the documentation build process, e.g. 
				<a href="/SSW/Redirect/Codeplex.htm">Sandcastle Help File Builder</a>
			</p>
			<div class="imageHolder">
				<img src="Images/Sandcastle1.gif" alt="Sandcastle" width="584" height="379">
				<p>
					<span class="Caption">Figure: Rich CHM files</span></p>
			</div>
			<div class="imageHolder">
				<img src="Images/Sandcastle2.gif" alt="Sandcastle" width="588" height="398">
				<p>
					<span class="Caption">Figure: MSDN-online style webpages</span><br>
					<a href="#" target="_blank">NDoc</a>
					<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
				</p>
			</div>
		</li>

	
		<li>
			<h2><a name="CSharpToVB"></a>
			C# to VB.NET converter</h2>
		
			<p>
				Here is a tool to convert C# code to VB.NET. The tool is available either as 
				a Web site or an add-in for the VS IDE. Its available here: Weve found that 
				its extremely useful for VB developers that struggle when they can only find 
				C# examples/snippets.
			</p>
			<div class="imageHolder">
  				<img src="Images/CSharpConverter.jpg" alt="CSharp Converter" width="512" height="265">
  			<p>
				<span class="Caption">Figure: C# to VB.NET converter</span>
			<br>
				<a href="/ssw/Redirect/Net/Clarity.htm" target="_blank">Clarity Consulting - C# to VB.NET converter</a> 
  				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
				<br>
  			<br>
  				Another handy utility that converts C#.NET to VB.NET can be found on the link below
			<br>	
				<a href="/ssw/Redirect/Net/AspAlliance.htm" target="_blank">ASP Alliance - C# to VB.NET translator (Warning: Be careful, server may cache your code, resulting in loss of IP)</a> 
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
			<br>
				<br>
				Yet Another handy utility that converts C#.NET to VB.NET can be found on the link below
			<br>
				<a href="/ssw/Redirect/Net/KamalPatel.htm" target="_blank">KamalPatel.NET Convert C# to VB .NET (Full Source - Offline version exists aswell)</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
			</p>
			</div>
		</li>
		<li>
			<h2><a name="VBToCSharp"></a>VB.NET to C# converter</h2>
		
            <p>This is the best converter currently available for VB.NET to C# conversions and has won many "best-of" awards. This can be found at the link below</p>
			    
			<div class="imageHolder"><img src="Images/VBConversion.gif" alt="VB Conversion" width="826" height="537"></div>
  			<p><span class="Caption">Figure: The VBConversion Converter</span></p>
			<a href="/ssw/Redirect/Net/VBConversions.htm" target="_blank">VB Conversions - VB.NET to C# converter</a>
			<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
		
			<p>
				Here is a tool to convert VB.NET code C#. The tool is available for Offline Use. 
				Its extremely useful for C# developers that struggle when they can only find 
				VB.NET examples/snippets. This Converter is still under testing, there has been a few flaws.
			</p>

			<div class="imageHolder">
				<img src="Images/VBNETConverter.jpg" alt="VB.NET Converter" width="745" height="280" ></div>
			<p>
				<span class="Caption">Figure: VB.NET to C# converter</span>
			<br>
				<a href="/ssw/Redirect/Net/BabbelFisken.htm" target="_blank">BabbelFisken - VB.NET to C# converter</a> 
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
			</p>
		</li>

		<li>	
            <h2><a name="VBToCSharpAndCSharpToVB"></a>
			Combined VB.NET to C# and C# to VB.NET converter</h2>
            <p>
            This tool is great - you can point to a file or type your C# or VB.NET code into the page and it will show you translated code - as you type. See the tool in the link below<br />
            <a href="/ssw/Redirect/Net/CarlosAgCodeTranslator.htm" target="_blank">Carlos Ag Code Translator</a>
            <img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">

            </p>
  
  		</li>
		<li>
			<h2><a name="SourceGearVault"></a> 
			SourceGear Vault</h2>
		
		
			<p>	
				SourceGear vault mirrors all good things about Microsoft SourceSafe's interface 
				and integration, while scaling better to enterprise level projects.
			</p>
  
			<Div class="topoflist">
				SourceGear Vault features: 
			
			<ul type="disc">
				<li>
					Reliability. Many users do not trust VSS because of its tendency to corrupt 
					its own repositories. Vault's design places a strong emphasis on the integrity 
					of the repository. The Vault repository is stored using Microsoft SQL Server 
					2000. Furthermore, Vault supports atomic check-in transactions (change sets). 
					When checking in a collection of files, the entire check-in either succeeds 
					or fails as an atomic unit.
				</li>
				<li>
					Seamless transition from VSS. Vault includes a SourceSafe import wizard 
					which is painless and easy to use. Every version of every file is imported, 
					including change comments. Shares and pins are properly maintained.
				</li>
				<li>
					Familiar features and interface. VSS users will feel comfortable using 
					Vault. The client user interface very closely resemble that of VSS and SourceOffSite 
					 all major features of VSS are present.
				</li>
    				<li>
    				.NET Architecture. Vault is built entirely on Microsoft's .NET platform, 
					including C#, IIS, and SQL Server 2000.
				</li>
				<li>
					Open. The Vault Server is built as a collection of .NET Web Services. 
					The Vault Client API allows you to build custom solutions using the same 
					libraries on which the Vault clients are built.
				</li>
				<li>
					History Explorer. The use of SQL as a repository storage allows Vault 
					to easily provide more advanced ways of querying the history of a project.
				</li>
			</ul>
			</Div>
			<div class="topoflist">
				Other alternatives include: 
			
  			<ul type="disc">
  				<li>Perforce</li>
				<li>StarTeam</li>
				<li>Source Inegrity</li>
			</ul>
			</div>
		</li>	
		<li>
			<h2><a name="Reflector"></a>
			Reflector Decompiler for .NET </h2>
		

			<p>
				Reflector is a class browser, decompiler and XML documentation browser for .NET 
				components (assemblies). If you want to see code in other people's .NET applications 
				(assuming it has not been obfuscated) in C# or VB.NET, this is your tool. 
			</p>
  			<div class="imageHolder">
				<img src="Images/Reflector.png" alt="reflector" width="160" height="160">
			<p>
				<span class="Caption">Figure: Reflector</span>
			<br>
  				<a href="/ssw/Redirect/Reflector.htm" target="_blank">Lutz Roeder's Web Site</a> 
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
			</p>
			</div>
		</li>
  
  
		<li>
			<h2><a name="AllocationProfiler"></a> 
			Allocation Profiler</h2>
		
	
			<P>
				Allocation Profiler is a great tool for visualizing and analyzing allocations 
				on the Garbage Collection (GC) heap. It presents the data from this log file 
				in a variety of interesting and useful views (histograms, graphical tree views) 
				It can be used to verify program execution (e.g. ensure you've allocated only 
				the objects you thought) and to detect possible memory leaks, and unclosed and 
				old objects within a process. Great for working out why that application takes 
				up 70MB in memory. This even works for .NET COM Add-ins (just point to OUTLOOK.EXE 
				instead). Simply launch AP, point it at your EXE and click a button. 
			</P>
  			<div class="imageHolder">
  				<img src="Images/ApplicationProfiler.gif" alt="Application profiler" width="576" height="433">
  			<p>
  				<span class="Caption">Figure: Allocation Profiler</span>
  			<br>
    			<a href="/ssw/Redirect/GotDotNet/AllocationProfiler.htm" target="_blank">Allocation Profiler Web Site</a> 
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
			</p>
			</div>
		</li>
  
		<li>
			<h2><a name="CLRSpy"></a>
			CLR Spy for COM Interop</h2>
		
		
			<p>	  
				COM-Interop is the most error prone aspect of .NET. If you do anything with 
				COM-Interop in .NET, this is an invaluable tool for diagnosing and isolating 
				any problems you might have. Optionally logs probes to file.
			</p>
			<div class="imageHolder">
				<img src="Images/CLRSpy.gif" alt="CLR Spy" width="448" height="486">
			<p>
				<span class="Caption">Figure: CLR Spy</span>
			<br>	
				<a href="/ssw/Redirect/GotDotNet/CLRSpy.htm" target="_blank">CLR Profiler Web Site</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
			</p>
			</div>
			
		</li>
		<li><h2><a name="CodeRush"></a>
			Developer Express CodeRush</h2>
			<p>CodeRush is a developer productivity enhancement tool that 
			integrates Visual Studio .NET. CodeRush provides extensive 
			visualisation, selection, clipboard, navigation and template tools, and works with both C# and Visual Basic .NET. 
			Features include:</p>
				<ul type="disc">
					<li>Icons - Different types and 
					members (for example, classes, enums, structs, methods, 
					properties, etc) with icons that allow you to modify the 
					accessibility</li>
					<li>Structural highlighting - lines on the left 
					hand side make it easy to see the start and end of nested 
					statement blocks. A configurable line on the right allows 
					you to ensure lines of code don't become too long when 
					developers use different screen resolutions</li>
					<li>Keyboard shortcuts allow you to expand, contract and 
					comment selections based on statement blocks</li>
					<li>Documentor window 
					- allows you to visualise complex XML documentation markup</li>
					<li>Smart cut and paste - automatically selects logical code 
					blocks when copying, and adapts pasted code to the 
					situation. For example, inside an if block, &quot;=&quot; will 
					automatically be converted to &quot;==&quot; in C#.</li>
					<li>Advanced bookmarks - remember the column position as 
					well as the line and allow you to easily move between 
					different locations</li>
					<li>Templates - common blocks of code can easily be inserted 
					with keyboard shortcuts</li>
				</ul>
			<p><img src="Images/CodeRushIconsInCode.gif" width="448" height="102"><br>
			<b>Figure: Visual indicators inside your code</b></p>
			<p><img src="Images/CodeRushAccessibility.gif" width="464" height="130"><br>
			<b>Figure: Visual accessibility modification in code view</b></p>
			<p><img src="Images/CodeRushXmlDocumentation.gif" width="273" height="128"><br>
			<b>Figure: XML documentation previews</b></p>
			<p><img src="Images/CodeRushTemplates.gif" width="317" height="59"><br>
			<b>Figure: Automatically insert templates for commonly used code</b>
			
			</p>
				<p><a href="/ssw/Redirect/coderush.htm" target="_blank">
				CodeRush Web Site</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
						
			</p>
		</li>
		<li><h2><a name="TestDriven"></a>
			Test Driven .NET</h2>
			<p>Test Driven integrates with a range of tools such as NUnit, MBUnit and Visual Studio that allows you to run Unit Tests with the right click button. Its key features include:<br>
				</p>
			<ul type="disc">
			 	<li>Run unit tests within any method, class, source file, namespace, project or solution with a single-click</li>
				<li>TestDriven.NET is the only add-in to work with all versions of Visual Studio .NET</li>
				<li>Supports multiple unit testing frameworks including NUnit, MbUnit and MS Team System</li>
				<li>Runs in its own process for side-effect free testing.</li>
				<li>Allows you to easily debug tests or methods</li>
				<li>Supports all major .NET languages (C#, VB, C++ and J#)</li>			
			</ul><br>
			<img src="../rules/Images/UnitTestsTestDriven.png" /><br>
            <b>Figure: Run Unit Tests from the right click menu</b><br>
				<p><a href="/ssw/Redirect/testdriven.htm" target="_blank">
				Test Driven .NET Web Site</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">		
			</p>
		</li>
		<li>
            <h2><a name="AspDB" id="A1"></a>
            AspDB</h2>
            <p>
                Tornado is the DotNet version of <a href="/ssw/redirect/web/AspDB.htm" class="external">AspDB</a>.
                VS.NET is not required but remains a popular way to program DotNet with Tornado as a library.
                If you have the DotNet Framework installed, you basically need only one file (Tornado.dll) to get going. 
            </p>
            <p>
                You can click via a code generator (Designer) to produce a complete and acceptable Web DB application in several minutes.
            </p>
            <dl>
                <dt>
                    <img src="Images\Designer.gif" alt="Designer" />
                </dt>
                <dd>Figure: Designer</dd>
            </dl>
        </li>
        <li>
            <h2><a name="BLinQ" id="A2"></a>
            BLinQ</h2>
            <p>
                <a href="/ssw/redirect/web/BLinQ.htm">Blinq</a> is a tool for generating ASP.NET websites for displaying, creating, and manipulating data based on database schema, but it is replaced by MVC.
                You don't need to write SQL queries to use Blinq; LINQ will generate optimized queries for you that request just the data you want to show.
            </p>
            <p>
                The Blinq tool autogenerates web forms from database schema which enable the following by default:
            </p>
            <ol>
                <li>Select, insert, update, and delete functionality</li>
                <li>Details and foreign key navigation</li>
                <li>Sorting and Pagination of records</li>
                <li>A default style and design which provide a consistent layout</li>
            </ol>
        </li>
        <li>
            <h2><a name="Elmah" id="A2"></a> Elmah (Error Logging Modules and Handlers)</h2>
            <ul>Once ELMAH has been dropped into a running web application and configured appropriately, you get the following facilities without changing a single line of your code:
              <li>Logging of nearly all unhandled exceptions. </li>
              <li>A web page to remotely view the entire log of recoded exceptions. </li>
              <li>A web page to remotely view the full details of any one logged exception. </li>
              <li>In many cases, you can review the original yellow screen of death that ASP.NET generated for a given exception, even with customErrors mode turned off. </li>
              <li>An email notification of each error at the time it occurs.</li>
              <li>An RSS feed of the last 15 errors from the log. </li>
            </ul> 
        </li>

        <li>
            <s><h2>EditPlus<a name="EditPlus"></a></h2>
                <p>EditPlus is a 32-bit text editor for the Microsoft Windows operating system. The editor contains tools for programmers, including syntax highlighting (and support for custom syntax files), file type conversions, line ending conversion (between Linux, Windows and Mac styles), regular expressions for search-and-replace, keystroke, spell check, full support for Unicode editing, customizable keyboard shortcuts, auto-completion, code folding, and more. Files can be browsed and edited in tabs, and an internal file browser is implemented in the software.</p>    
            </s>
        </li>

        <li>
            <h2>Notepad++<a name="Notepad"></a></h2>
                <p>Notepad++ is a text editor and source code editor for Windows. One advantage of Notepad++ over the built-in Windows text editor, Notepad, is tabbed editing, which allows working with multiple open files.</p>
                <p>Notepad++ is distributed as free software. The project was hosted on SourceForge.net, from where it has been downloaded over 27 million times and twice won the SourceForge Community Choice Award for Best Developer Tool. To display and edit text and programming language source code files, Notepad++ uses the Scintilla editor component.</p>
                <dl class="image">
                    <dt><img src="images/notepad.jpg" alt="NotePad" /></dt>
                    <dd>Figure: Notepad++ in action</dd>
                </dl>
        </li>

        <li>
			<a name="UltraEdit"></a>
			<h2>UltraEdit (IDM Computer Solutions Inc.)</h2>
			

			<p>
				UltraEdit is a simple text editing program that picks up the functionality that Notepad leaves out.
			</p>
			<p>
				UltraEdit will allow you to edit Text, Hex and HTML files in the one user friendly environment. It has 
				smart indenting for when you're editing code, macro recording, advanced search and replace functions. 
				When you want to work on a .txt file, it's important to associate it with a proper editor, UltraEdit 
				is just such a tool. There are other third-party editors about, but this is the one I like the best.
			</p>
			<dl class="image">
			    <dt><img src="Images/UltraEdit.jpg" alt="" width="500" height="384"></dt>
			    <dd>Figure: UltraEdit</dd>
			</dl>
			<a href="/ssw/Redirect/IDMComputerSolutionsInc.htm" target="_blank" class="external">IDM Computer Solutions Inc Web Site</a>
			
		</li>


</ol>
		<h2>Acknowledgements</h2>	
			
			<p>
				<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
				<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=TO">Tatham Oddie</a><br>
				<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DDK">David Klein</a><br>
			</p>

		</asp:content>