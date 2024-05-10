<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Visual Build PRO Suggestions"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				<asp:label id="lblWelcome" runat="server"></asp:label><p>


<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" align="right" style="{width:100%;}">
	<tr> 
  		<td> 
			1. <A href="#IncludeExclude">Include and Exclude Mask Consistency</a><br/>
			2. <strike><A href="#Rename">Rename Files or Folders</a></strike> <span style="font-weight: bold; color: red">* Fixed by Kinook in Visual Build Pro 6.0 *</span><br/>
			3. <A href="#CheckOut">Is any File Checked Out?</a><br/>
			4. <strike><A href="#LoseFocus">Losing focus when text is selected in a text area</A></strike> <span style="font-weight: bold; color: red">* Fixed by Kinook in Visual Build Pro 6.0 *</span><br/>
		</td>
	</tr>
</table>






	<ol>
	<li>
	
		<h2><a name="IncludeExclude"></a>Include and Exclude Mask Consistency</h2>	
	</li>
		
		<p> 
		<p>Visual Build PRO provides two columns in certain steps, namely the step that is used for copying or moving files or folders 
		as shown in Figure 1 below:</p>
		<p>
		<img border="0" src="Images/VbuildPRO1.jpg" alt="Visual Build PRO" width="520" height="422"><br/>
		<b>Figure 1: The &quot;Copy&quot; step properties showing include and exclude 
		text areas that should be available in the &quot;Source Safe&quot; step properties.</b></p>
		<p>
		This option proves to be very useful and can be a very important option 
		when wanting to use Source Safe to either Get latest or Check out 
		specific files or folders.</p>
		<p>
		However Visual Build Pro does not provide the option to exclude certain 
		masked out files or folders for the step that provides access to Source 
		Safe as shown in Figure 2.</p>
		<p>
		<img border="0" src="Images/VbuildPRO1a.jpg" alt="Visual Build PRO" width="520" height="422"><br/>
		<b>Figure 2: The &quot;SourceSafe&quot; step properties which only provides a text 
		area to include items. There is no option to exclude particular files.</b></p>
		<p>
		Users may want to keep certain files on their local drive that have been modified. This 
		may include the actual Visual Build Script itself.</p>
		<p>
		If the user modifies the build process while having Visual Build open, then restarts the build 
		which could include a step to get the latest folder in source safe 
		which may include that build script itself, it may prove to be inconvenient. 
		If 
		the user believes that the Visual Build script instance that is currently 
		opened seems to be saved, this may or may not be the one stored in the local drive after 
		the get latest step.</p>
		<p>
		&nbsp;</p>
		<p>
		<p>
	<li>
		
	<h2><strike><a name="Rename"></a>Rename Files or Folders</strike> - <span style="font-weight: bold; color: red">* Fixed by Kinook in Visual Build Pro 6.0 *</span></h2>

		<p>When dealing with files and folders, the &quot;Copy&quot; step seems the most 
		likely to have what they need. Although it provides the options to copy, 
		move, delete or replace text within files, it does not provide an option 
		for renaming files themselves.</p>
		<p>
		<img border="0" src="Images/VbuildPRO2a.jpg" alt="Visual Build PRO" width="520" height="422"><br/>
		<b>Figure 1: The &quot;Copy&quot; step without the option to rename files.</b></p>
		<p>Developers would find a renaming option very useful. As they build a 
		setup file from a solution they want released, previous version numbers 
		will continually mount up in the public folder used for release setup 
		files. A clean up process should be made to rename any previous setup 
		versions as we do in SSW, and &quot;zz&quot; them to push them down to the bottom of 
		the file list.</p>
		<p>Developers using Visual Build PRO think renaming is not supported so they would have to create 
		an extra step using a script to access the folder and rename it with the 
		&quot;Scripting.FileSystemObject&quot; COM.<br/>
		<br/>
		When you create this step it will allow you to clean up any previous file 
		moves that you have made from the build script.</p>
		<p>With the script created to provide a &quot;clean up&quot; of your files, the 
		following code snippet found in Figure 2 proved to be useful.</p>
		<pre>
<br/>Set FileManagment = CreateObject ("Scripting.FileSystemObject")<br/>Set TheFolder = FileManagment.GetFolder("%BeeFolder%")
<br/>Set FileList = TheFolder.Files
<br/><br/>For Each File in FileList 
<br/><br/>          fileStart = instr(ThisFile, ".msi") - 1
<br/>     fileNoExt = mid(ThisFile, 1, fileStart)
<br/>     File.Name = Replace( File.Name, fileNoExt , &quot;zz&quot;&amp;File.Name&amp;&quot;(zzed_by_VBP).msi&quot;)
<br/><br/>Next</pre>
			<p>
		<b>Figure 2: Rename all the files appending zz at the front, and (zzed_by_VBP).msi 
		to the back.</b></p>
		<p>
		&nbsp;</p>

		
	<li>
		
	<h2><a name="CheckOut"></a>Is any File Checked Out?</h2>	
	</li>
		<p>
		Although Visual Build PRO provides the user with the option to skip over local 
		writable files as shown in Figure 1, the VSS command-line tool doesn't 
		distinguish between checked out and non-checked out writeable files.</p>
		<p>
		<img border="0" src="Images/VbuildPRO3.jpg" alt="Visual Build PRO" width="520" height="422"><br/>
		<b>Figure 1: Source Safe properties can skip files that have the &quot;Read-Only&quot; property unchecked, 
		however that does not necessarily mean they are checked-out.</b></p><p>
				To distinguish between files that are checked out or not can be 
				a very useful option as users can accidentally run the Visual 
				Build script while having the first step as a &quot;Get Latest&quot; and 
				end up overwriting all the files that they have forgotten to 
				checked-in, and hense overwrite all that they have done.</p>
		<p>The temporary solution was to create a script that would access the 
		&quot;SourceSafe&quot; COM object and check the status of the file itself.</p>
		<p>The IsCheckedOut() method returns 0 for a file that is not checked 
		out, 1 for a file that is checked out by a user, and 2 for a file that 
		is checked out by the current user.</p>
				<pre>
<br/>const isFolder = 0
<br/>const isFile = 1

<br/>dim VSS_FolderName
<br/>VSS_FolderName = "$/%VSSPath%/"

<br/>Set VSS = CreateObject("SourceSafe")
<br/>VSS.open &quot;%VSS%"

<br/>CheckTheFolder VSS.VSSItem (VSS_FolderName)

<br/>Sub CheckTheFolder(objVSSFolder)

<br/>For Each VSSObj In objVSSFolder.Items(False)
<br/><br/>        If ype = isFile Then				
              If VSSObj.IsCheckedOut = 2 Then
<br/>                   Project.Stop	
<br/>              End if
<br/><br/>        Else
<br/>              VSS_FolderName = VSS_FolderName & VSSObj.Name & "/"
<br/>              set objVSS_SubFolder = VSS.VSSItem (VSS_FolderName)
<br/><br/>              CheckTheFolder(objVSS_SubFolder)
<br/><br/>              VSS_FolderName = Replace(VSS_FolderName, VSSObj.Name&"/" ,"")			
<br/>        End if
<br/><br/>Next

<br/>End Sub</pre>
		<p>
		<b>Figure 1: Check recursively for files that have been 
		checked-out-by-me.<br/>
&nbsp;</b></p>
		<p>
		&nbsp;</p>
	<li>
	<h2><strike><a name="LoseFocus"></a>Losing focus when text is selected in a text area</strike> - <span style="font-weight: bold; color: red">* Fixed by Kinook in Visual Build Pro 6.0 *</span></h2>	
	</li>
		<p>1. When you open a dialog box (double click a step in the build) 
		then highlight a section of text i.e. as shown in Figure 1:&nbsp;</p>
	<p class="MsoNormal">&nbsp;</p>
	<p class="MsoNormal">
	<img border="0" src="Images/VBP_BEFOREFocus.png" alt="Visual Build PRO" width="513" height="355"><br/>
	<b>Figure 1: A highlighted section of text in the text area BEFORE losing 
	focus of the Visual Build Application</b><br/>
	<br/>
&nbsp;</p>
	<p class="MsoNormal">2. Then you lose focus of the Visual Build Program and 
	return to it the text dissapeard as is shown in Figure 2a and 2b:</p>
	<p class="MsoNormal">
	<img border="0" src="Images/VBP_AFTERFocus.png" alt="Visual Build PRO" width="516" height="356"><br/>
	<b>Figure 2a: Code has disappeared after returning focus to the Visual Build 
	Application</b></p>
	<p class="MsoNormal" style="margin-left:72.0pt">&nbsp;</p>
	<p class="MsoNormal">
	<img border="0" src="Images/VBP_CLICKFocus.png" alt="Visual Build PRO" width="516" height="354"><br/>
	<b>Figure 2b: SOME Code has re-appeared after clicking in the text area.</b></p>
	<p><br/>
	<br/>
&nbsp;</p>
	<li>
	<h2>Acknowledgements </h2>
	<p>Adam Cogan,
			Adel Helal
</li>

	</ol>

		</asp:content>