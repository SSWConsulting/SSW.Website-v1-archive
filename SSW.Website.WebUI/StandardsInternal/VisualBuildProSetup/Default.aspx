<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="Visual Build PRO Setup"  %>


<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

				
		
<p>The Visual Build PRO program is designed to run through many scripts to run applications such as Visual Source Safe,
		Wise, Visual Studios, and many others that can be of great importance when dealing with development projects.<br>
		<br>
		The Visual Build PRO Template can be found 
		when you right-click 
		<% 'SSW Code Auditor - Ignore next line %>
		<a href="file://skunk/SSW/StandardsInternal/VisualBuildProSetup/VBPProductBuild.bld">VBPProductBuild.bld</a> 
		and &quot;Save Target As...&quot;. 
		When using this template, go to the &quot;macros&quot; tab and change the 
		&quot;project&quot; macros in context with the description for your project.</p>
<p>There are many points that can be documented to show how certain problems 
were solved depending on the limitations of the actual program itself.</p>
		
			<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
		<tr> 
  			<td>
  				<b>SSW's Visual Build PRO Information for Issues</b><br> 
				<a href="#Template">1.</a> Visual Build PRO Script Template<br>
				<a href="#StepsForBuild">2.</a> Steps to make sure Visual Build Runs Successfully<br>
				<a href="#ModeOfBuild">3.</a> Test Plan and Release 
				Plan Issue.<br>
				<a href="#CheckifCheckedOut">4.</a> Check if files checked out of 
				Source Safe.<br>
				<a href="#HardcodeVersion">5.</a> Hardcode Version Number into 
				Wise<br>
			</td>
		</tr>
	</table>

	<ol>
		<li>
		<h2><a name="Template"></a>Visual Build PRO Script Template</h2>
		<p>When a new product has been developed, naturally there has to be a 
		new Build script and Wise script associated with the setup of the 
		solution.</p>
		<p>The Visual Build script works in conjunction with the Wise Script.<br>
		The steps taken to provide these setup scripts for your project are as 
		follows:</p>

	<ol>
		<li>Install Visual Build Pro (if you do not have it installed already)<br>This can be found internally on:<br>
		<a href="file://fileserver/SetupFiles/SetupNotMS_DotNet/VisualBuildProfessional">\\bee\SetupFiles\SetupNotMS_DotNet\VisualBuildProfessional</a><br>&nbsp;</li>
		<li>Right-Click and &quot;Save Target As...&quot; for the file below and Save the Visual Build Template<br>From:
		<a href="file://skunk/ssw/StandardsInternal/VisualBuildProSetup/VBPProductBuild.bld">
		file://skunk/ssw/StandardsInternal/VisualBuildProSetup/VBPProductBuild.bld</a><br>To: Your Setup folder, which should be a subfolder in your solution 
		folder.<br>&nbsp;</li>
		<li>Open the Visual Build Script (Double-click the file or <b>Right-click -&gt; open</b>)<br>&nbsp;</li>
		<li>Go to the &quot;Macros&quot; Tab as shown in Figure 1a:<br><br>&nbsp;<img border="0" src="Images/defaul4.gif" alt="" width="563" height="255"><br>
		<b>Figure 1a: Project Macros found in the Project branch of the Macros 
		Tab</b><br>&nbsp;</li>
		<li>Read the description of each Project Macro to enter the appropriate 
		values.<br><br>
		<img border="0" src="Images/defaul8.jpg" alt="" width="471" height="282"><br>
		<b>Figure 1b: Values to be entered specifically for the solution</b><br>&nbsp;</li>
		<li>If the description begins with &quot;IGNORE: &quot;, naturally this macro 
		should not be changed as it will be modified during the runtime of the 
		script.<br>
		<br>
		This build script will call the master build script and run it using the 
		macros you have just set.<br>&nbsp;</li>
		<li>When all the appropriate macros have been set, you must now download 
		the wise script template to use. This is found at:<br>
		<a href="/ssw/Standards/wisesetup/WiseStandards.aspx">http://www.ssw.com.au/ssw/Standards/wisesetup/WiseStandards.aspx</a><br>&nbsp;</li>
		</ol>
		<p><b>Assumptions:</b><br>
&nbsp;<ul>
			<li>The Build script makes the assumption that the Source Safe 
			folder names (or &quot;projects&quot;) are the same as the local &quot;Working 
			Folder&quot; names.<br>
&nbsp;</li>
			<li>The Referenced Projects (i.e. SSWFramework, SSWRegistration 
			etc.) are at most four folder's up from the solution folder. The 
			build script also assumes that these referenced projects are not in 
			their own generic folder (i.e.
			<span style=" color:Blue;text-decoration:underline">c:\myOtherProjects\SSWFramework</span>)<br>
&nbsp;</li>
			<li>There will not be more than 10 <b>different</b> Referenced 
			Projects in one solution i.e. SSW.Framework.WindowsUI and 
			SSW.Framework.WindowsUI.Search are not considered different external 
			projects.</li>
		</ul>
		<p>&nbsp;</p>
		</li>	
		<li>
		<h2><a name="StepsForBuild"></a>Steps to make sure Visual Build PRO Runs Successfully  </h2>
		<p>There seem to be a lot of issues concerning developers trying to run 
		a successful build. It is not as simple as completing your work in 
		Visual Studios and just &quot;Right-click the .bld script and build&quot;.<p>A few 
		things need be be considered before the actual build process occurs:<br>
&nbsp;<ol>
		<li>Make sure your solution builds successfully in Visual Studios. (Once 
		you are ready for a release or &quot;test please&quot; it should be build 
		successfully in release mode.)<br>
&nbsp;</li>
		<li>Check in <b>all</b> files from the root of the project and from any 
		referenced projects (i.e. SSWFramework or SSWRegistration).<br>
		<br>
		Visual Build will allow you to check in the particular files found to be 
		checked out as shown in Figure 2a:<br>
		<br>
		<img border="0" src="Images/defaul7.jpg" alt="" width="617" height="244"><br>
		<b>Figure 2a: Dialog containing the folder of a file checked out. If 
		the files are checked IN before clicking &quot;OK&quot;, the build script will 
		allow you to continue with the build process. </b><br>
		<br>
				Visual Build 
		will skip the steps if none of the files that were prompted where 
		checked in (this is to make 
		sure you don't overwrite any files when the build process gets all files 
		from source safe) as shown in Figure 2b:<br><br>
		<img border="0" src="Images/defaul2.gif" alt="" width="622" height="315"><br>
		<b>Figure 2b: If there are any files still not checked in to source safe, 
		build script will skip all steps<br>
		</b><br>
&nbsp;</li>
		<li>Get the latest of the Wise file and VBPAutoBuild.bld file. Both 
		files should be found in the setup folder of the project (if the files 
		are not included in the &quot;solution items&quot;, please make sure they are, so that you can 
		always get latest from source safe.)<b><br>&nbsp;</li></b>
		<li>Close Visual Studios.Net so there are no sharing conflicts.<br>
&nbsp;</li>
		<li><b>Update your Wise file</b> to include any dll's, xml's, reports 
		etc. that you have included in your recent modifications of your Visual 
		Studios 
		solution. Also make sure that you have removed any files that wise will 
		include in the setup package if you have removed them from the solution 
		(or your local folder).<br>
		The only section in Wise that developers should be continually updating 
		is the &quot;files&quot; section as shown in Figure 2c:<br>
		<br>
		<img border="0" src="Images/WiseSt2.jpg" alt="" width="689" height="488"><br>
		<b>Figure 2c: The only section in wise that developers should continually 
		update.</b>
		<br>
		<br>
		</li>
		<li>Now you can go to the setup folder in windows explorer and right click 
		the VBPProductBuild.bld file as shown in Figure 2d:<br>
		<br>
		<img border="0" src="Images/defaul6.jpg" alt="" width="517" height="249"><br>
		<b>Figure 2d: &quot;Right-click and Build&quot;;</b><br>
		<br></li>
&nbsp;<li>The first step will open a dialog box. (Go to <a href="#ModeOfBuild">
		Section 3</a> for details of what mode of build you want.)<br>
&nbsp;<li>This should make the Build Process complete successfully without any 
		problems.<br>
&nbsp;<li>Repeat steps 1-7 every time you want to send a release or &quot;test 
		please&quot;.</li>
		
	</ol>
		<p><b>NOTE:<br>
		</b>Main Failures occur in either the &quot;Build Wise&quot; step when there 
		is either a file in Wise that is no longer in the Project Solution and 
		must be removed from the wise files section,<br>
				AND/OR<br>
		the &quot;Build Solution&quot; 
		step because the solution does not build in release/debug mode correctly. This 
		is the developers responsibility to make sure the application builds correctly.<br></p>
&nbsp;</li>
		
	<li>
		<h2><a name="ModeOfBuild"></a>Test Plan and Release Plan Issue.</h2>

<p>There was an issue with the build script ftp'ing the files when 
			there was no need for ftp, especially when developers wanted a 
			&quot;test please&quot;.</p>
			<p>The problem was solved with two simple steps:</p>

	<ol>

		<li>The &quot;Mode of Build&quot; step was added which opens a dialog
		which will prompt for a yes or no and is pretty straight forward as shown in Figure 
		3a:</li>
		
			<p>
			<img border="0" src="Images/ModeOfBuild.gif" alt="" width="487" height="239"><br>
			<b>Figure 3a: &quot;Mode of Build&quot; step that prompts user for &quot;release&quot; 
			or &quot;test please&quot; build. &quot;Yes&quot; returns the value 6 and &quot;No&quot; returns 
			the value 7, then puts the value into the macro &quot;buildMode&quot;.</b></p>
		<b>
		<p>
			&nbsp;</p>

		</b>

		<li>The &quot;Release Build&quot; group was added with all the steps that are used 
		for release mode we put as a sub step of the group as shown in Figure 
		3b:<br>
		<br>
		<img border="0" src="Images/ReleaseBuild.gif" alt="" width="430" height="351"><br>
		<b>Figure 3b: &quot;Release Build&quot; group skips the release steps if macro &quot;buildMode&quot; 
		expression is given the value 7 (i.e. the prompt returned &quot;No&quot;).<br>
		&nbsp;</li>
		</b>
				
	</ol>
		<li>
		<h2><a name="CheckifCheckedOut"></a>Check if files checked out of Source Safe..</h2>
		<p>Although Visual Build PRO provides the user with the option to skip over local 
		writable files as shown in Figure 4a, the VSS command-line tool doesn't 
		distinguish between checked out and non-checked out writeable files.</p>
		<p>
		<img border="0" src="images/VbuildPRO3.jpg" alt="" width="520" height="422"><br>
		<b>Figure 4a: Source Safe properties can skip files that have the &quot;Read-Only&quot; property unchecked, 
		however that does not necessarily mean they are checked-out..</b></p>
		<p>To distinguish between files that are checked out or not can be 
				a very useful option as users can accidentally run the Visual 
				Build script while having the first step as a &quot;Get Latest&quot; and 
				end up overwriting all the files that they have forgotten to 
				checked-in, and hense overwrite all that they have done.</p>
		<p>The temporary solution was to create a script that would access the 
		&quot;SourceSafe&quot; COM object and check the status of the file itself.</p>
		<p>The IsCheckedOut() method returns 0 for a file that is not checked 
		out, 1 for a file that is checked out by a user, and 2 for a file that 
		is checked out by the current user.</p><b>
		<table class="clsSSWTableCode" id="table1">
			<tr>
				<td><code>
				<pre><br>const isFolder = 0
<br>const isFile = 1

<br>dim VSS_FolderName
<br>VSS_FolderName = "$/%VSSPath%/"

<br>Set VSS = CreateObject("SourceSafe")
<br>VSS.open &quot;%VSS%"

<br>CheckTheFolder VSS.VSSItem (VSS_FolderName)

<br>Sub CheckTheFolder(objVSSFolder)

<br>For Each VSSObj In objVSSFolder.Items(False)
<br><br>        If type = isFile Then
           If VSSObj.IsCheckedOut = 2 Then
<br>                   Project.Stop	
<br>           End if
<br><br>        Elsee & "/"
<br>              set objVSS_SubFolder = VSS.VSSItem (VSS_FolderName)
<br><br>              CheckTheFolder(objVSS_SubFolder)
<br><br>              VSS_FolderName = Replace(VSS_FolderName, VSSObj.Name&"/" ,"")			
<br>        End if
<br><br>Next

<br>End Sub</pre></code></td>
			</tr>
		</table>
		<p>Figure 4b: Check recursively for files that have been 
			&quot;checked-out-by-me&quot;.<br>&nbsp;</p>
		<p>&nbsp;</p></b>
		<li>
		<h2><a name="HardcodeVersion"></a>Hardcode Version Number into 
				Wise</h2>
		<p>
		</b>
		</p>
		<p>Previously there was a problem setting properties in Wise when 
		setting them from an external application (i.e. in this case Visual 
		Build PRO).</p>
		<p>Visual Build PRO would set all the [ProductName] and [ProductVersion] 
		variables to the given values.<br>However certain strings in Wise would not except [ProductName] and [ProductVersion] 
		as variables and would consider them static strings.<br>The main areas of concern were in the .ini file that wise created to 
		deal with latest versioning (as shown in Figure 5a) and in the shortcuts 
		found in the start menu after the .msi file was run. (as shown in Figure 
		5b).</p>
		<p><img border="0" src="Images/defaul1.jpg" alt="" width="565" height="189"><br>
		<b>Figure 5a: The .ini file could not detect the latest version as it was 
		not given the proper version number from wise.</p>
		<p><img border="0" src="Images/defaul2.jpg" alt="" width="526" height="75"><br>Figure 
		5b: Shortcuts in start menu folders were put as string and not 
		the actual property values.</p></b>
		<p>The following lines of code provided the best solution for the 
		problem in which it an instance of the WISE COM object was made using 
		VBscript in Visual Build PRO as an extra step, and when run it would 
		hardcode the values into WISE.</p>

		<table class="clsSSWTableCode">
			<tr>
				<td><code>
				<pre><span style = " FONT-FAMILY:Courier New">Dim WFWI, tbls, tbl, col, row<br><br><span style = "COLOR:green">' Connect to Wise for Windows Installer object</font><br>Set WFWI = Nothing<br>Set WFWI = CreateObject(&quot;WfWi.Document&quot;)</font><p>
<span style = "COLOR:green; FONT-FAMILY:Courier New">' Open the wise file using macros in Visual Build PRO</font><br>WfWI.Open &quot;%PROJDIR%\%VS_WSI%.wsi&quot;<br>
<br>Set tbls = WFWI.Wtables <br><br><span style = "COLOR:green">' Run through each and every table, row and cell in Wise to find the [ProductVersion]<br>' and [ProductName]&quot; string and replace them with the macros.</font><br>For Each tbl In tbls
<br>&nbsp;&nbsp;&nbsp; if not tbl.Name = &quot;Icon&quot; then
<span style = "COLOR:green">'Binary Table that cannot compare strings</font><br>&nbsp;&nbsp;&nbsp; if not tbl.Name = &quot;Binary&quot; then
<span style = "COLOR:green">'Binary Table that cannot compare strings</font><br>
<br>&nbsp;&nbsp;&nbsp;   For each row in tbl.WRows <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      For i = 0 to row.WColumns.Count - 1
<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         if instr(row(i), &quot;[ProductVersion]&quot;) then
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            row(i) = replace(row(i),&quot;[ProductVersion]&quot;,&quot;%PROD_VERSION%&quot;)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         end if
<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      if instr(row(i), &quot;[ProductName]&quot;) then
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         row(i) = replace(row(i),&quot;[ProductName]&quot;,&quot;%VSSProjectName% %PROD_VERSION%&quot;)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      End if
<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      Next
<br>&nbsp;&nbsp;&nbsp;   Next
<br><br>&nbsp;&nbsp;&nbsp; end if
<br>&nbsp;&nbsp;&nbsp; end if
<br>Next
<br><br>WfWI.Save &quot;%PROJDIR%\%VS_WSI%Temp.wsi&quot;<br>&nbsp;</font></td></pre></code>
</tr>
		</table>
		<p><b>Figure 5c: Code to check every table, row and cell to replace &quot;[ProductName]&quot; 
		and &quot;[ProductVersion]&quot; with the appropriate values.</b> </p><p>This proved to work as the results were shown in Figures 5d and 5e:</p><p><img border="0" src="Images/defaul3.jpg" alt="" width="565" height="189"><br>
		<b>Figure 5d: Version number fixed in the .ini file.</b></p><p>&nbsp;</p>
		<p><img border="0" src="Images/defaul4.jpg" alt="" width="458" height="75"><br>
		<b>Figure 5e: Version number fixed in the start menu shortcuts.</b></p><p>&nbsp;</li>
		<li>
		<h2>Acknowledgements </h2>
		<p>Adam Cogan, Adel Helal</p><p>&nbsp;</p>
		</li>
		</li>
		
	</asp:content>