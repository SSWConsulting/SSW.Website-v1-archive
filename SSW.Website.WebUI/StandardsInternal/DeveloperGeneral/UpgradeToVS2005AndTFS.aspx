<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="Upgrade to VS 2005 and TFS"  %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
<br>
<div class="TableOfContents">
          	<ol>
          		<li>Upgrade from VS 2003 to VS 2005:</a>
          		<ul type="disc">
          			<li><a href="#PreUpgrade">Pre-upgrade</a></li>
          			<li><a href="#Upgrade">Upgrade</a></li>
          		</ul>
          		</li>
          		<li>For projects that have been upgraded to .NET 2.0 and currently in SourceSafe:<br>
          		<ul type="disc">
          			<li><a href="#UnbindVSS">Unbind the SourceSafe association bindings</a></li></li>
          		</ul>
          		<li>Team Foundation Server:
          		<ul type="disc">
          			<li><a href="#SetupTFS">Setup TFS and connect to TFS</a></li>
          			<li><a href="#NewTeamProject">Create new Team Project and check-in the source code</a></li>
          			<li><a href="#UsingTFS">Things you should know when using TFS</a></li>
          		</ul>
          		</li>
            	<li><a href="#Installer">Update Wise Installer and Visual Build Script</a></li>

          	</ol>
		</div>
		<p><br />
<b>NOTE</b>: There is a conversion utility and walkthrough for Visual SourceSafe to Team Foundation conversion available at <a href="http://msdn2.microsoft.com/en-us/library/ms181247.aspx">http://msdn2.microsoft.com/en-us/library/ms181247.aspx</a>. However, we have chosen to archive all the VSS history so that TFS is not cluttered with version updates that don't relate to the current state of our products.
<br /><br />
</p>
<h3>Upgrade from VS 2003 to VS 2005:</h3>
<h2><a name="PreUpgrade"></a>Pre-upgrade</h2>
<p>
	<ol>
		<li>Compile all projects in Release mode.</li>
		<li>Create a folder named "References" in the solution folder, copy all the references dll files (eg: SSW.Framework.WindowsUI.dll, SSW.Registration.dll, etc...) to this folder.</li>
		<li>Add all the references dll files to solution as "Solution Items", so they get saved to TFS source control system later.</li>
		<li>Remove those Framework projects from the solution.<br>
            
                <dl class="image"><dt>
                    <img src="images/ReferencesBefore.gif" alt="Before" /></dt>
                <dd>
                    Figure: Before</dd></dl>
            <dl class="image">
                <dt>
                    <img src="images/ReferencesAfter.gif" alt="After" /></dt>
                <dd>
                    Figure: Before</dd></dl>
	</tr>
</table>
<br>
		</li>
		<li>Update all projects references to the dlls.</li>
		<li>Make sure all projects still can compile and run correctly.</li>
		<li>Check-in everything to SourceSafe, make sure no files are checked-out.</li>
	</ol>
<br>
We are doing this because those framework projects are shared and being used by all SSW products, if they get upgraded now, all other SSW products that are still in .NET 1.1 wouldn't be able to use the Framework, thus the SSW Framework and some other components should be the last ones to get upgraded.

</p>


<h2><a name="Upgrade"></a>Upgrade</h2>
<p>
	<ol>
		<li>Open the .sln in VS 2005.</li>
		<li><p>Upgrade the projects using the Visual Studio Conversion Wizard.<br>
		<dl class="image">
                <dt><img src="images/UpgradeWizard1.gif" alt="Visual Studio Conversion Wizard" /></dt>
                <dd>Figure: Visual Studio Conversion Wizard</dd></dl>
            <dl class="image">
                <dt>
		<img src="images/UpgradeWizard2.gif" alt="Conversion Summary" /></dt>
<dd>Figure: Converion Summary</dd></dl>
</p>
		</li>
		<li>When you get prompted with the Source Control dialog, select "Permanently remove source control binding associate bindings" and click OK.
		<dl class="image">
                <dt><img src="images/RemoveSourceControlBindings.gif" alt="Remove the source control association bindings" /></dt>
<dd>Figure: Remove the source control association bindings</dd></dl>
<p>Note: Now this solution isn't under source control anymore, we will add this solution to TFS later.</p>
		</li>
		<li>Fix all the errors and upgrade issues.
		<br>The common one is the InvalidOperationException due to illegal cross-thread calling.
		<dl class="image">
                <dt><img src="images/InvalidOperationException.gif" alt="InvalidOperationException" /></dt>
<dd>Figure: InvalidOperationException</dd></dl>
<p>For additional information, please refer to MSDN article <a href="/ssw/Redirect/Microsoft/MSDN2ThreadSafe.htm">How to: Make Thread-Safe Calls to Windows Forms Controls</a><img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" width="17" height="11">.
</p></li>

<li>
The solution or the startup project probably has a .exe.manifest, this file was used in .NET 1.1 to get the visual style as Application.EnableVisualStyles() in .NET 1.1 was buggy. For a .NET 2.0 Windows application, please delete the .exe.manifest and use Application.EnableVisualStyles() to get the visual style.
<p>
Find the application entry point and add the highlighted code:
	<table class="clsSSWTableCode" width="90%">
		<tr>
			<td><pre><code><b>VB:</b>
Module Startup
    Public Sub Main()
        <span style="background-color: #00FF00">Application.EnableVisualStyles()</span>
        <span style="background-color: #00FF00">Application.SetCompatibleTextRenderingDefault(False)</span>
...
        Application.Run(StartupForm)
    End Sub
End Module
<br>
<b>C#:</b>
[STAThread]
static void Main() 
{
    <span style="background-color: #00FF00">Application.EnableVisualStyles();</span>
    <span style="background-color: #00FF00">Application.SetCompatibleTextRenderingDefault(false);</span>
...
    Application.Run(new StartupForm);
}</code></pre></td>
	</tr>
	</table>

The EnableVisualStyles and SetCompatibleTextRenderingDefault should be added to the top, typically before the Application.Run.
</p>
<p>
SetCompatibleTextRendering determines whether the controls should use GDI+ or GDI for text drawing.
<table cellspacing="0" cellpadding="0" border="0">
	<tr>
		<td width="80"><b>True</b></td>
		<td width="280">Uses GDI+/Graphics.DrawString</td>
		<td>Behaves same as .NET 1.1.</td>
	</tr>
	<tr>
		<td><b>False</b></td>
		<td>Uses GDI/TextRenderer</td>
		<td>Behaves similar to .NET 1.1, looks nicer, localizes better.</td>
	</tr>
</table>
</p>
<p>
Notice the difference (The obvious difference is the "VB .NET" on the third line of the description):
<dl class="image">
<dt><img src="images/CompatibleTextRenderingTrue.gif" alt="Without Application.SetCompatibleTextRenderingDefault(False)" /></dt>
<dd>Figure: Without Application.SetCompatibleTextRenderingDefault(False)</dd>
</dl><dl class="image">
<dt><img src="images/CompatibleTextRenderingFalse.gif" alt="With Application.SetCompatibleTextRenderingDefault(False)" width="648" height="515"/></dt>
<dd>Figure: With Application.SetCompatibleTextRenderingDefault(False)</dd></dl>

</p>
		</li>
		<li><p>VS 2005 solution allows you to add solution folder, this is new in VS 2005.
		
<dl class="image"><dt><img src="images/AddSolutionFolder.gif" alt="Add a new solution folder" width="273" height="446" /></dt>
<dd>Figure: Add a new solution folder</dd></dl>
		</p>		
		<p>Now add 2 new solution folders, named References and Setup.<br>
		* Cut all the references .dll files and paste them to the References" solution folder.<br>
		* Move all the files that related to Setup (.wsi, .bld, etc...) to the "Setup" solution folder.<br>
<dl class="image"><dt><img src="images/SetupFolder.gif" alt="The folder structure of Solution Items" /></dt>
<dd>Figure: The folder structure of Solution Items</dd></dl>
</p>
		</li>
		<li>Most of the SSW products have unit-testing using NUnit, and the nunit-gui.exe is included as part of the project for end users to run the unit tests.
		<p>If your existing NUnit are built using .NET 1.1, it won't work with .NET 2.0 projects due to no forward compatibility in .NET 1.1.<br>
		Please download the latest NUnit package that is built using .NET 2.0 from <a href="/ssw/redirect/NUnitDownload.htm">NUnit download page</a>.</p>
<p>Basically you only need nunit-gui-runner.dll, nunit-gui.exe, nunit.core.dll, nunit.framework.dll, nunit.uikit.dll, and nunit.util.dll.<br>
Please include these NUnit files to your solution or update the existing NUnit files.</p>
<p>You should put all the NUnit files under the "References" folder.<br>
<dl class="image"><dt><img src="images/NUnitReferencesBad.gif" alt="All the NUnit files in the "bin" folder. (Bad)" /></dt>
<dd>Figure: All the NUnit files are in the "bin" folder. (Bad)</dd></dl>
<dl class="image"><dt><img src="images/NUnitReferencesGood.gif" alt="All the NUnit files are in the "Solution Items\References\NUnit". (Good)" /></dt>
<dd>Figure: All the NUnit files are in the "Solution Items\References\NUnit". (Good)</dd></dl>

</p>
<p>
Add the commands below to your startup project's post-build event.
	<table class="clsSSWTableCode" width="90%">
		<tr>
			<td><pre><code>if exist "$(TargetDir)NUnit" rd /s /q "$(TargetDir)NUnit"
xcopy "$(SolutionDir)References\NUnit" "$(TargetDir)NUnit" /s /i /y /r /q</code></pre></td>
		</tr>
	</table>
</p>

<p>
Skip the next section "Unbind the SourceSafe association bindings" and continue to <a href="#TFS">Team Foundation Server</a>.
</p>
		</li>
	</ol>

</p>

<br><br>
<h3>For projects that have been upgraded to .NET 2.0 and currently in SourceSafe:</h3>
<h2><a name="UnbindVSS"></a>Unbind the SourceSafe association bindings</h2>
<p>
	<ol>
		<li>Open the .sln</li>
		<li>Menu: File --> Source Control --> Change Source Control...
		<dl class="image"><dt><img src="images/ChangeSourceControl.gif" alt="Click &quot;Change Source Control...&quot;" /></dt>
<dd>Figure: Click &quot;Change Source Control...&quot;</dd></dl>
		</li>
		<li>Unbind the solution and all projects
		<dl class="image"><dt><img src="images/UnbindVSS1.gif" alt="Click &quot;Unbind&quot;"  /></dt>
<dd>Figure: Click &quot;Unbind&quot;</dd></dl>

<dl class="image"><dt><img src="images/UnbindVSS2.gif" alt="Make sure everything has been unbound"  /></dt>
<dd>Figure: Make sure everything has been unbound</dd></dl>
		</li>
	</ol>
</p>

<br><br>
<a name="TFS"></a><h3>Team Foundation Server:</h3>
<h2><a name="SetupTFS"></a>Setup TFS and connect to TFS</h2>
<p>
	<ol>
		<li><p>Install <b>Team Explorer</b>, the ISO image is located at <b>\\bee\SetupFiles\SetupMS_DotNet\MS Visual Studio 2005 TFS\en_vs_2005_tfs_trial.iso</b>.
				<dl class="image"><dt><img src="images/TFSSetup.gif" alt="Install Team Explorer (third menu item)" /></dt>
<dd>Figure: Install Team Explorer (third menu item)</dd></dl></p>
		</li>
		<li><p>Go to VS 2005's Options, change the source control to TFS.<br>
				<dl class="image"><dt><img src="images/OptionsSourceControl.gif" alt="Source Control settings" /></dt>
<dd>Figure: Source Control settings</dd></dl></p>
		</li>
		<li><p>Connect to TFS.<br>
				<dl class="image"><dt><img src="images/ConnectTFSMenu.gif" alt="Click &quot;Connect to Team Foundation Server...&quot;" /></dt>
<dd>Figure: Click &quot;Connect to Team Foundation Server...&quot;</dd></dl></p>
		<p>The server name is "tfs.northwind.com". So add &quot;tfs.northwind.com&quot; to the Team Foundation Server list.<br>
				<dl class="image"><dt><img src="images/AddTFS.gif" alt="Add &quot;tfs.northwind.com&quot; to the Team Foundation Server list" /></dt>
<dd>Figure: Add &quot;tfs.northwind.com&quot; to the Team Foundation Server list</dd></dl></p>
    <SSW:InfoBox ID="InfoBox1" runat="server" width="73%" Css="interInfoBoxSide" text="<h1>Attention: SSW Developers</h1><br/><p>Our Team Foundation Server is &quot;Unicorn&quot;, so please add &quot;Unicorn&quot; to the server list. <dl class='image'><dt><img src='images/InternalTFS.gif'/></dt><dd>Figure: Internal TFS</dd></dl></p><p>If you need to access TFS outside the office, add &quot;tfs.internal.ssw.com.au&quot; (port: 8080) to the Team Foundation Server list.</p><dl class='image'><dt><img src='images/ExternalTFS.gif' alt='Add &quot;tfs.internal.ssw.com.au&quot; to the Team Foundation Server list' /></dt><dd>Figure: Add &quot;tfs.internal.ssw.com.au&quot; to the Team Foundation Server list</dd></dl><p>Limitation of accessing TFS using external URL:</p><ul><li>You can only access the source control. SharePoint portal and Reporting Services are not accessible due to port conflict.</li><li>You can't create new project because it can't access the Reporting Services.</li><li>Generally you don't want to do this unless you are working onsite where the clients have strict network policy (eg: only allow port 80, VPN is prohibited, etc.).</li></ul>">
     </SSW:InfoBox>

		</li>
	</ol>

<br>
Note: TFS doesn't have a standalone program like SourceSafe, everything is to be done using Team Explorer.

</p>

<br><br>
<h2><a name="NewTeamProject"></a>Create new Team Project and check-in the source code</h2>
<p>
<div class="greyBox">
<!--SSW Code Auditor - Ignore next line(HTML)-->
<p>Creating TFS project over VPN could take long time, it will save you a lot of time if you can log on to a machine in the same LAN to do this step.</p>
</div>
	<ol>
		<li><p>Open the Team Explorer.
		<dl class="image"><dt><img src="images/ViewTeamExplorer.gif" alt="Click &quot;Team Explorer&quot;" /></dt>
		<dd>Figure: Click &quot;Team Explorer&quot;</dd></dl></p>
		</li>
		<li><p>To create a new Team Project.
		<dl class="image"><dt><img src="images/NewTeamProject.gif" alt="Click &quot;New Team Project...&quot;" /></dt>
		<dd>Figure: Click &quot;New Team Project...&quot;</dd></dl>
		</p>
		</li>
		<li><p>Enter the team project name.<br>
		<br><b>Note</b>: The team project name is the project's namespace. (Eg: SSW.SQLAuditor)
		<br>There is no way to rename a TFS project after it's created, so be cautious and make sure you enter it correctly.
		<dl class="image"><dt><img src="images/NewTeamProjectWizard1.gif" alt="Enter the Team Project name" /></dt>
		<dd>Figure: Enter the Team Project name</dd></dl></p>
		</li>
		<li><p>Select "MSF for Agile Software Developer – v.40".
		<dl class="image"><dt><img src="images/NewTeamProjectWizard2.gif" alt="Select &quot;MSF for Agile Software Developer – v.40&quot;" /></dt>
		<dd>Figure: Select &quot;MSF for Agile Software Developer – v.40&quot;</dd></dl></p>
		</li>
		<li><p>Leave the title of team project portal the same as project name.
		<dl class="image"><dt><img src="images/NewTeamProjectWizard3.gif" alt="Leave the title of team project portal the same as project name." /></dt>
		<dd>Figure: Leave the title of team project portal the same as project name</dd></dl></p>
		</li>
		<li><p>Create an empty source control folder.
		<dl class="image"><dt><img src="images/NewTeamProjectWizard4.gif" alt="Select &quot;Create an empty source control folder&quot;" width="546" height="487"></dt>
		<dd>Figure: Select &quot;Create an empty source control folder&quot;</dd></dl></p>
		</li>
		<li><p>From the step shown on screenshot above, click "Next >" to see the summary or you can just click "Finish".<br>
		The Team Project creation process may take a while...
		<dl class="image"><dt><img src="images/CreatingTeamProject.gif" alt="Creating new Team Project..." /></dt>
		<dd>Figure: Creating new Team Project...</dd></dl></p>
		</li>

		<li><p>Before you add the solution to TFS source control, please move your solution folder to C:\Data<i>YourName</i>\ProjectsTFS\<i>CompanyName.ProjectName</i>\trunk.<br>
		Eg: C:\DataRyanTee\ProjectsTFS\SSW.SQLAuditor\trunk.</p>
		<p>Our TFS should have the source folder structure as below:
		<ul>
		<li>$/CompanyName.ProjectName/trunk – this will be our main development</li>
		<li>$/CompanyName.ProjectName/branches – this will contain our side branches after each major release (I.e. R10, R11, etc).</li>
		</ul></p>
		<p>
		<b>Example:</b><br>
		Current development
		<ul>
		<li>$/SSW.CodeAuditor/trunk/SSW.CodeAuditor.sln</li>
		<li>$/SSW.CodeAuditor/trunk/Business/SSW.CodeAuditor.Business.csproj</li>
		</ul>
		Branch for Release 10
		<ul>
		<li>$/SSW.CodeAuditor/branches/R10/SSW.CodeAuditor.sln</li>
		<li>$/SSW.CodeAuditor/branches/R10/Business/SSW.CodeAuditor.Business.csproj</li>
		</ul></p>
		<p>Dev folder structure should match the TFS source folder structure:<br>
		<ul>
		<li>C:\DataYourName\ProjectsTFS\CompanyName.ProjectName\trunk</li>
		<li>C:\DataYourName\ProjectsTFS\CompanyName.ProjectName\branches</li>
		</ul></p>
		<p>Note: We use the word "trunk" and "branches" because they're the standard people use in Subversion and other source control systems (it's derived from source control 'tree').</p>
		</li>

		<li><p>Add Solution to Source Control...
		<dl class="image"><dt><img src="images/AddSolutionToSourceControl.gif" alt="Click &quot;Add Solution to Source Control...&quot;" /></dt>
		<dd>Figure: Click &quot;Add Solution to Source Control...&quot;</dd></dl></p>
		</li>
		<li><p>Select the team project you just created and enter &quot;trunk&quot; as the name for the solution folder.
		<dl class="image"><dt><img src="images/AddSolutionToTFS.gif" alt="Select the team project you just created and enter &quot;trunk&quot; as the name for the solution folder" /></dt>
		<dd>Figure: Select the team project you just created and enter &quot;trunk&quot; as the name for the solution folder</dd></dl></p>
		</li>
		<li><p>After you added the solution to source control, the solution and all projects will have a little yellow plus sign.
		<dl class="image"><dt><img src="images/AddedSolutionToTFS.gif" alt="Files that newly added to TFS will have a little yellow plus sign" /></dt>
		<dd>Figure: Files that newly added to TFS will have a little yellow plus sign</dd></dl></p>
		</li>		
		<li><p>Check in everything.
		<dl class="image"><dt><img src="images/CheckInSolution.gif" alt="Click &quot;Check In...&quot;"/></dt>
		<dd>Figure: Click &quot;Check In...&quot;</dd></dl></p>
		</li>
		<li><p>Finally, zz the source control folder in SourceSafe.
		<dl class="image"><dt><img src="images/RenameVSS.gif" alt="zz the folder in VSS" /></dt>
		<dd>Figure: zz the folder in VSS</dd></dl></p>
		</li>
	</ol>

</p>

<br><br>
<h2><a name="UsingTFS"></a>Things you should know when using TFS</h2>
<p>
	<ol>
		<li><p>When you check out any files from SourceSafe, SourceSafe automatically do a "Get Latest" before checking out the files.<br>
		When you check out any files from TFS, the check out process will <b>not</b> do a "Get Latest" for you, if you have an older version of the files, you need to merge your changes when check in the files to prevent replacing changes made by other developers.<br>
		For more information about this new behavior, read <a href="/ssw/Redirect/woodwardweb.htm">http://www.woodwardweb.com/vsts/000179.html</a>.
		</p></li>
		<li>Regarding the process of development, we do not branch at end of each release. Instead we branch when there are bugs in previous release that have to be fixed before the next release. This is to minimize branching, since merging between branches is painful.
		<br /><br/>
		Process at end of a release (should be integrated with build script!):
		<ol>
			<li>Make a build</li>
			<li>Label the trunk source tree with the version number</li>
		</ol>
		<br />
		Process when critial bugs occur in previous release:
		<ol>
			<li>Get the source by label</li>
			<li>Branch it into $/Company.Project/branches/vMajor.Minor/</li>
			<li>Make your changes in that branch</li>
		</ol>
		</li>
		<li>To see the differences between Team Foundation and Visual SourceSafe, please read <a href="http://msdn2.microsoft.com/en-us/library/ms181369.aspx">MSDN: Introduction to Team Foundation for Visual SourceSafe Users</a>.
		</li>
	</ol>

</p>

<br><br>
<h2><a name="Installer"></a>Update Wise Installer and Visual Build Script</h2>
<p>
Coming soon...
</p>


<br>
</p>

		<p>
&nbsp;</p>
<h2>Acknowledgements</h2>
	<p>
		<A href="/SSW/Employees/employeesprofile.aspx?EmpID=RT">Ryan Tee</A>
	</p>

</asp:content>