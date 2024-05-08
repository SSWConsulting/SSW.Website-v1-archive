<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better .NET Project Naming"  %> 

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
		<p>
						<b>SSW - Rules to Better .NET Project Naming </b>
					</p>
					<p>
						This standard outlines our standards on naming our 
						projects within VS.NET. Use these standards when 
								naming any new project or to update an older 
						project/solution that doesn't follow these standards.
					</p>
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('496E666F407373772E636F6D2E61753F5375626A6563743D2E4E6574205374616E646172642050726F6A656374204E616D696E6720436F6E76656E74696F6E')">
    Let us know</a> what you think.</p> 
<div class="TableOfContents">
<ol>
<li><a href="#Intro">Introduction</a></li>
<li><a href="#TheProblem">The Problem</a></li>
<li><a href="#TheWayWeDoIt">The way we do it at SSW</a></li>
</ol>
</div>
<div id="mainContent">
<ol>					
<li>		<h2><a name="Intro"></a>Introduction</h2></li>
		<p>It is more practical and efficient to code in multi-tier. This is 
		because it facilitates code re-use and thus saves developer time 
		re-inventing the wheel. This results in more efficient and cleaner code. 
		However, this can add another layer of complexity in your solution, 
		especially in large projects.</p>
		<p>It is not uncommon today to have a solution that comprises of more 
		than 5 layers, namely</p>
		<ol>
			<li>Windows UI layer (AKA presentation layer, or Web UI Layer for 
			web projects)</li>
			<li>Business Service layer</li>
			<li>Data Layer</li>
			<li>Data Access later</li>
			<li>Common</li>
			<li>Database Layer (stored procs. etc.)</li>
		</ol>
		<dl class="image"><dt><img src="/ssw/Standards/DeveloperDotNet/Images/GeneratedProjectsgif.gif" alt="Generated Projects" width="236" height="236" /></dt>
		<dd>Figure 1: Generated Projects from the Code Generator</dd></dl>
		<p>To that, we sometimes need to add other projects, such as utilities, 
		configurations and our base form from our framework (for more 
		information on the need for a base form, please read our 
		<a href="../Rules/RulesToBetterWindowsForms.aspx#InheritedForms">Rules to 
		Better 
		Windows Forms Application</a>)</p>

		<li><h2><a name="TheProblem"></a>The Problem</h2></li>
		<p>Microsoft does not give us any guidance on how to name our projects 
		and thus leaves it to the developer. The naming style shown in 
		<span style = "FONT-SIZE:10pt"><b>F</b></span><b><span style = "FONT-SIZE:10pt">igure 1</span></b> above works ok on small projects, but 
		as soon as other layers are added, the complexity grows and so does the 
		developer confusion if the projects are not consistently named.</p>
		<dl class="badImage"><dt><img src="/ssw/Standards/DeveloperDotNet/Images/BadExample.gif" alt="Bad Example" width="260" height="206" /></dt>
		<dd>Figure 2: Bad and inconsistent naming convention</dd></dl>
		<p>Code reuse tells us that when we need to use the methods in the 
		&quot;business&quot; project in figure 2, we do not re-write it. Instead we make a 
		reference to that project and summon forth the methods therein. The 
		problem arises when the solution in <b>Figure 1</b> references the project 
		&quot;business&quot; in <b>Figure 2</b>. </p>
		<dl class="image"><dt><img src="/ssw/Standards/DeveloperDotNet/Images/ReferencedProject.gif" alt="Referenced project" width="219" height="151" /></dt>
		<dd>Figure 
		3: Solution from Figure 1 with Business project added from solution in 
		Figure 2</dd></dl>
		<p>By doing so, we have no way of telling that the business project does 
		not really belong to this solution but rather is has been &quot;borrowed&quot; 
		from another solution: SSW SQLDeploy. Doing it this way also increases 
		the chance of having a name clash in the project name . For example I 
		could need the business service from two other projects (E.g. from SSW SQL Deploy and 
		SSW Extraction 
		Manager). On top of that, SallyKnoxMedical (the current project) might 
		possibly need a business project on its own. </p>
		<p>There is a way around this dilema The correct way of doing this relieves us of this kind of 
		dramas.</p>
		
<li>		<h2><a name ="TheWayWeDoIt"></a>The way we do it at SSW</h2></li>
		<p>While Microsoft has remained silent on this issue, we haven't failed 
		to notice the way the dlls are named. E.g. we see 
		System.Windows.Forms.dll</p>
		<p>We extend that one step further to include company name: e.g 
		SSW.SolutionName.ProjectName for the projects and SSW.SolutionName for 
		the (guess guess) solution name. This helps to easily identify projects, maintain consistency across 
		our range of application and enhances portability.</p>
		<dl class="goodImage"><dt><img src="/ssw/Standards/DeveloperDotNet/Images/GoodProjectNaming.gif" alt="Good project naming" width="248" height="209" /></dt>
		<dd>Figure 4: Good way to name solution and 
				projects</dd></dl>
		<p>With this style we can readily identify the various projects that 
		comprises this solution and where they came from. It also frees us of 
		the worry that comes when a solution needs to reference two projects 
		from two different solutions with the same name.</p>
<p>It is recommended to have your company as the root element of your namespace. 
This helps clarifying who the namespace belong to, where it came from and that 
it is unique (or at least reasonably unique). When creating these namespaces, 
reasonable thought must be given in order to create a meaningful namespace. Keep 
in mind that namespaces are case sensitive (ssw.framework and SSW.Framework are 
not the same thing).</p>
<p>Final thought: make sure your dll has the same filename as the project (like 
SSW.Framework.WindowsUI.dll). Externally, it will help to identify your library.</p>
</ol>
	<h2>Acknowledgements</h2>
		<p><a href="/ssw/Employees/employeesXML.aspx?EmpID=AC">Adam Cogan</a></p>
		</div>	
	</asp:content>