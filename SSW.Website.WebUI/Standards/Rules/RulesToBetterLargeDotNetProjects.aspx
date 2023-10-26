
<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Large Builds in Visual Studio.NET"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532304C617267652532302E4E45542050726F6A65637473')">Let us know</a> 
		what you think.</p>
<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" align="right" style="{width:100%;}">
	<tr> 
  		<td> 
			<!--1. <A href="#Background">Background</a><br> -->
			1. <A href="#DesiredFeatures">Desired Features of Structuring Large 
			Builds in VS.NET</a><br>
			2. <A href="#ProjectReferences">Method #1 - Using Project Reference Assemblies within VS.NET</A><br>
			3. <A href="#FileReferences">Method #2 - Using File Reference Assemblies within VS.NET</A><br>
			4. <A href="#Scenarios">Scenarios of building the system</A><br>
		</td>
	</tr>
</table>


		

	<ol>

		<!--<li>
			<h2><a name="Background"></a>Background</h2>
		</li>
		<p>
		This information was taken from the Lecture provided by Michael Lang 
		during one of the User Group's session. He is responsible for 
		structuring large builds in Visual Studios.NET
		</p> -->
		<li> 
			<h2><a name="DesiredFeatures"></a>Desired Features of Structuring Large 
			Builds in VS.NET</h2>
		</li>
			<p>
				<ol>
					<li>
					<b>Scalable</b> - The project should allow continuous additions to 
					the structure.<ul>
						<li>Developers should be able to keep adding to the 
						structure.</li>
					</ul>
					</li>
					<li><b>Multiple Versions</b> - The project should support multiple product 
					releases.<ul>
						<li>The structure should be able to allow developers to 
						work on the next release while there is still work in 
						progress for a previous release of another section of 
						the project.</li>
						<li>Developers can work side by side with different 
						versions in parallel (i.e. at the same time)</li>
					</ul>
					</li>
					<li><b>Efficient</b> -  The build should be as quick as possible.</li>
					<li><b>Reliability</b> - Builds should be reproducible on any 
					machine and reliable.</li>
					<li><b>Switchable</b> - The project should be able to switch between debug 
					release and other versions.<ul>
						<li>The project should be able to activate without 
						debug.</li>
						<li>A config should be made for a demo build.</li>
						<li>It should support a full release.</li>
					</ul>
					</li>
				</ol>
			</p>
		<li>
			<h2><a name="ProjectReferences"></a>Method #1 - Using Project Reference Assemblies within VS.NET</h2>
		</li>
			<p>
				<p>The first attempt was the following method of adding project 
				references to a large solution.</p>
			<p><img border="0" width="566" height="445" src="Images\BetterLargeDotNet_projRef.gif" alt=""/><br/>
				<b>Figure: Adding a project reference</b></p>
			<p>Each project within a solution references other product's 
			assemblies by the project's GUID.</p>
			<p><b>Advantages</b><br/>
			&nbsp;&nbsp;&nbsp; The advantages of adding the project to the solution is that 
			you can easily switch between debug and release versions, and the 
			build time is quicker.</p>
			<p><b>Disadvantages</b><br/>
			&nbsp;&nbsp;&nbsp; The main disadvantage is that the project can only reference other projects within the same 
			solution.</p>
			
		<li>
			<h2><a name="FileReferences"></a>Method #2 - Using File Reference Assemblies within VS.NET</h2>
		</li>
			<p>The following method of adding file references to a large 
				solution was also attempted.</p>	
			<p><img alt="" border="0" width="566" height="445" src="Images\BetterLargeDotNet_fileRef.gif"/><br/>
			<b>Figure: Adding a file reference</b></p>
			<p>This method involves projects referencing assemblies by looking 
			into their reference path.</p>
			<p><b>Advantages</b><br>&nbsp;&nbsp;&nbsp; The main advantage of 
			referencing .dll's is that it is more flexible. Projects can reference assemblies from other solutions 
			outside the current solution.
			<ul>
				<li>The solution's environment is &quot;cleaner&quot;, allowing projects 
				to be more expansive.</li>
				<li>All you need to do is change the assembly to &quot;shared&quot;.</li>
			</ul></p>
			<p><b>Disadvantages<br>
			</b>&nbsp;&nbsp;&nbsp; There are, however, many disadvantages 
			including the fact that only one version of the proj file can be 
			added to the solution.<ul>
			<li>The .csproj file cannot be used.</li>
			<li>You cannot reference or one set of 
			assemblies for debug and another for release. Only point to one.</li>
			<li>VS.NET only use the paths specified in the .proj file as a hint. 
			VS.NET records the location of the assemblies as options for the 
			project for each user.</li>
			<li>You cannot switch between versions.</li>
			<li>You also cannot use this method if there are 200 projects in one 
			solution.</li>
			</ul>
			</p>
		<li>
			<h2><a name="Scenarios"></a>Scenarios of building the system</h2>
			<p>&nbsp;</p>
		
		
	<table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Better Update Version Number" style="{width:50%; position:relative}">
		<tr>
			<td>
			<img border="0"  alt="" src="Images\BetterLargeDotNet_scenario.gif" align="center"/></td>
		</tr>
	</table>
			<b>Figure: The common scenario of a Large Project</b>
	
	<p>&nbsp;</p>

		</li>

	<ol>
		<li>First option would be to put all the projects in a single solution, reference projects using 
		project references.<br>&nbsp;
	
		<table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Better Update Version Number" style="{width:50%; position:relative}">
		<tr>
			<td>
				<img border="0"  src="Images\BetterLargeDotNet_scenario1.gif" alt="" align="center"/></td>
		</tr>
	</table>
		<b>Figure: Option #1 All projects in one single solution</b>
		<p>Putting all the projects into a single solution and reference the 
		projects using project references has the following advantages and 
		disadvantages:<p><b>Advantages</b><br>&nbsp;&nbsp;&nbsp; The main advantage of 
		having project references is that it can support multiple versions quite 
		well.
			<ul>
				<li>Other advantages include the fact that it can be a lot more 
				reliable and switch-able.</li>
			</ul></p>
			<p><b>Disadvantages<br>
			</b>&nbsp;&nbsp;&nbsp; There are, however, two major disadvantages 
			in adding many projects to one single solution.<ul>
			<li>It is not scalable. Having 240 projects would take 1 hours and 
			30 minutes to load and to build in one solution, so it can be very 
			difficult to allow that kind of a solution to continually grow.</li>
			<li>Middle tier could possibly have 100's of IP addresses.</li>
			<li>It is not efficient to load that entire time as mentioned above. 
			In general one solution can efficiently handle 60 projects.<br>
			<br>
&nbsp;</li>
			</ul>
		<li>Another option would be to create separate solutions for each application.<br>i.e. Have a Windows Solution, a separate ASP.NET Web App Solution etc.. each solution referencing the middle tier and base system projects.
		<table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Better Update Version Number" style="{width:50%; position:relative}">
			<tr>
				<td>
				<img border="0" src="Images\BetterLargeDotNet_scenario2.gif" alt="" align="center"/></td>
			</tr>
		</table>&nbsp;<b>Figure: Option #2 Every application with its own solution</b>
			<p><b>Advantages</b><br>&nbsp;&nbsp;&nbsp; The main advantage of 
			having separate solutions for each application is that there will be 
			less load time than the 1st option mentioned.
			<ul>
				<li>Multiple versions can also be supported.</li>
				<li>Switching between debug and release is relatively easy.</li>
			</ul></p>
		<p><b>Disadvantages<br></b>&nbsp;&nbsp;&nbsp; The fact that the 
		application is being build 4 times would make build time significantly 
		longer. Other problems include:<ul>
			<li>Applications trying to load versions which could change during 
			the build time. However this could be worked-around by not allowing 
			auto-increment of the Assembly info Version Number.<br>
			i.e. instead of &quot;2.0.*&quot;, removing the star (&quot;2.0&quot;) will prevent 
			increments of the version number.</li>
			<li>It is not efficient repeating the build in each solution as 
			mentioned above.</li>
			<li>It is not scalable, or reliable.</li>
		</ul>
		<p>If there are no signed assemblies, make sure there are dynamic 
		assemblies. The application must be build once so there are no differing 
		versions of these assemblies. The contents of exactly what's in each 
		assembly must be known.<br>
		<br>
&nbsp;</li>
		<li>Mick's Recommended Approach <br>&nbsp;<table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Better Update Version Number" style="{width:50%; position:relative}">
			<tr>
				<td>
				<img border="0"  src="Images\BetterLargeDotNet_scenario3.gif" alt="" align="center"/></td>
			</tr>
		</table>&nbsp;<b>Figure: Option #3 Using Staging Areas</b>
		
		<p>The recommended approach</p>
		<p>
		<ol>
			<li>Each project goes into a single solution.<ul>
				<li>This is determined by grouping projects depending on the 
				dependencies.</li>
				<li>The Data Access solution is build first, then the Middle 
				Tier depends on the first solution. Applications depends on 
				both.</li>
				<li>Developers don't want to change too much, so these layers 
				should be kept invisible from them.</li>
			</ul>
			</li>
			<li>Each solution references assemblies from a single staging area.<ul>
				<li>Developers don't need to look at the data access. The 
				applications will get the assemblies directly from the staging 
				area.</li>
				<li>Assemblies found in the staging area are only locked when 
				the underlying layers are being rebuilt.</li>
			</ul>
			</li>
			<li>Staging areas are mapped to a drive letter using the dos command 
			&quot;Subst&quot; or a network share.<ul>
				<li>Mapping to the path is more flexible in gaining access to 
				the staging area and modifying it.</li>
				<li>Instead of having long paths, it is recommended to have one 
				drive letter regardless of the version. This would allow 
				switching between debug and release easier, as well as switch 
				between versions.</li>
				<li>File references are solved with having the same drive 
				letter.</li>
				<li>These drives that are mapped are made by scripts that are 
				run. The script also includes putting the files straight into 
				source safe.<br>
				e.g.<br>
&nbsp;&nbsp;&nbsp; $ log:$ [- SourceSafe Admin]<br>
&nbsp;&nbsp;&nbsp; ss option<br>
&nbsp;&nbsp;&nbsp; expand keyword &quot;*.cs&quot; &quot;*.vb&quot; &quot;*.xml&quot;</li>
				<li>There would also be a set of macros that are specificly 
				created to:<br>
&nbsp;&nbsp;&nbsp; Clean the proj.<br>
&nbsp;&nbsp;&nbsp; Clean the sln.<br>
&nbsp;&nbsp;&nbsp; Mass Rename.</li>
			</ul>
			</li>
			<li>Create solutions which group projects by there dependencies as 
			mentioned above.</li>
		</ol>
		</li>
	</ol>	
	
	
		
		
			<p><b>Advantages</b><br>
			<ul>
			<li>Each project is only built once, speeding the build and eliminating problems with versioning between .NET assemblies.
			</li>
			<li>Referencing from a single drive letter helps simplify the problems with using file references
			</li>
			<li>The use of &quot;subst&quot; and mapped network drives allows flexibility of easily the location from which a solution is referencing its assemblies.</li>
			</ul>

</p>
<li>		
		<h2>Acknowledgements</h2>

		<p>Adam Cogan<br>
		Michael Lang<br>
		Adel Helal</p>
</li>
		
	</ol>
		</asp:content>