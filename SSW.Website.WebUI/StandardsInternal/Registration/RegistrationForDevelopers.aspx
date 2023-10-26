<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="SSW Registration"  %> 
 

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<%
	If (Request.Cookies("TimePROOnlineEmail") Is Nothing ) Then
        Response.Redirect("/TimeProOnline/Login.aspx?ReturnUrl=/ssw/Registration/RegistrationForDevelopers.aspx")
	End If	
%>
				
		<p>To help us built a better product please send your
 <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','sswregistration',this)"
               onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer"  category="info" process='true' >696e666f407373772e636f6d2e6175</a>		
<br>
</p>
<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
	<tr>
		<td><b>Registration </b><br>
		<ol>
			<li><a href="#Implement">How to implement in your program</a><br>
			</li>
			<li><a href="#BeforeReleasing">Before Releasing your Program</a><br>
			</li>
			<li><a href="#SysRequirements">System Requirements</a><br>
			</li>
			<li><a href="#RegClientDebug">Registration client debugging</a><br>
			</li>
			<li><a href="#ideaMaterial">Initial idea material</a><br>
			</li>
		</ol>
		</td>
	</tr>
</table>
		<ol>
	<li>
	<h2><a name="Implement"></a>How to implement in your program</h2>
	Please refer to the below code samples to use when implementing the registration 
	DLL. <br>
	<a href="CSharpApplicationCode.txt">CSharpApplicationCode.txt</a><br>
	or<br>
	<a href="VBApplicationCode.txt">VBApplicationCode.txt</a><p>For VB6 applications, 
	a .NET wrapper DLL will have to be made for your program. This avoids DLL Hell 
	between different VB6 applications on one computer.<br>
	<a href="RegoWrapper/RegoWrapper.zip">Code Sample</a></p>
	<p>In some special scenarios, you may want to run your application silently 
	without displaying any dialog to the user. Simply pass in true to the IsRegistered 
	method and the register dialog will not be shown.</p>
	<p>When you adding a reference to the SSW.Registration you should <b>always</b> 
	use a project reference.</p>
	<p>A project reference will mean that when you compile your project, the SSW.Registration 
	is recompiled with all the latest changes (especially to SSW.Framework.WindowsUI). 
	You can get the latest changes by use the &#39;Get Latest&#39; SourceSafe command. To 
	set this up:</p>
	<ol>
		<li>Remove any registration projects you have included in previous projects.</li>
		<li>Delete the dlls from your bin directories (this will ensure your wise 
		script will show errors if you have not updated it to use the new registration 
		dll).</li>
		<li>Get the latest version of registration. </li>
		<li>Add the SSW.Registration project to your project.</li>
		<li>Add a project reference and select the SSW.Registration project by selecting 
		Add -&gt; Reference and selecting the Projects tab. Select the Project you 
		want, click &#39;Select&#39; and then click &#39;OK&#39;.<br>
		<img border="0" src="Images/DotNetProjectReference2.gif" alt=".NET How to reference a project" width="566" height="446">&nbsp;
		</li>
	</ol>
	<p><strong>***Important***</strong><br>
	Be aware that the strProductName parameter you pass in is used to encrypt the 
	data and for registration web services. This means if you change this then any 
	previous versions of registration will no longer work. <br>
	Make sure you choose the product name carefully that you pass in to the dll 
	in the strProductName field as this should NOT CHANGE!</p>
	<p>You also are required to enter a new row into the ProdRegistrationDll table 
	of the SSWData2000 database. Use the product name you selected for the ProdNameInRegistrationDll 
	field.<br>
	Each product name is associated with a CategoryID. Also enter in the main ProdID 
	(for backwards compatibility)<br>
	<img src="Images/ProdTable.gif" alt="SSW Data2000 database" width="320" height="140"></p>
	<p>If you do need to change the prod name then add a new record and <b>don&#39;t 
	delete the old one</b>. </p>
	<p><b>Note on Reports</b> </p>
	<p>An unregistered version of a product containing reports such as SSW Code 
	Auditor should indicate on the final form (the finish screen) the limitations 
	of the version i.e. </p>
	<p><img src="Images/register1.GIF" alt="Register" width="600" height="105">
	</p>
	<p>And also there should be a note on the report as well. </p>
	<p><img src="Images/register2.GIF" alt="Register" width="600" height="123">
	</p>
	</li>
	<li>
	<h2><a name="BeforeReleasing"></a>Before Releasing your Program</h2>
	Check with the developer currently working on SSW.Registration to see if it 
	is ok to use. If work is being done that has not been finished, use SourceSafe 
	to get the last stable release of SSW.Registration before re-building your project. 
	This can be done by looking at the project history in SourceSafe, selecting 
	the last labelled release and performing a &#39;Get&#39;.<p>Developers working on SSW.Registration 
	note that each release must be labelled in SourceSafe using the &#39;Label...&#39; function.<br>
	</p>
	</li>
	<li>
	<h2><a name="SysRequirements"></a>System Requirements</h2>
	Due to the use of our SSW.Framework, you will need the below project 
	references:<br>
	<img border="0" src="Images/Requirements.gif" width="217" height="77"><p>
	Note that you no longer require 
	the common.ssw file. <br>
	However you will have to make sure that this file is deleted when you 
	uninstall the application.&nbsp;
	This file contains the stored values that the dll requires. i.e. how many uses 
	remaining<br>
&nbsp; </li>
	<li>
	<h2><a name="RegClientDebug"></a>Registration client debuggingg</h2>
	If the client is experiencing problems with the registration dll then give them 
	a temporary<br>
	key. This resets most things and should allow the user to continue on there 
	trial period.
	</li>
	<li>
	<h2><a name="ideaMaterial"></a>Initial idea material</h2>
	<br>
	None available at this point in time.<br>
	<br>
	These are the screens for Crystal Reports (move your mouse over to see comments):<br>
	The Registration Wizard:<br>
	<img src="Images/cyrstalreg1.gif" alt="A brief start screen." width="261" height="209"><br>
	<br>
	Select &quot;<i>by Web</i>&quot;<br>
	<img src="Images/cyrstalreg2.gif" width="261" height="209" alt="Select registration by web, email or fax.">
	<img src="Images/cyrstalreg3.gif" width="261" height="209" alt="By web: enter details."><br>
	<br>
	The registration wizard will launch your browser, where you need to enter additional 
	details, and register over the web. You registration number will be displayed 
	on the web.<br>
	<br>
	Enter your registration details<br>
	<img src="Images/cyrstalreg4.gif" width="261" height="209" alt="Enter your registration ID and number."><br>
	<br>
	If you try to fake a registration number (of course, we have to <i>test</i> 
	this!), you get this error message.<br>
	<img src="Images/cyrstalregError.gif" alt="Registration number is no good." width="502" height="123"><br>
	<br>
	When registering by fax or email, you need to fill in the details first.<br>
	<img src="Images/cyrstalregfax1.gif" width="261" height="209" alt="">
	<img src="Images/cyrstalregfax2.gif" width="261" height="209" alt=""><br>
	<img src="Images/cyrstalregfax3.gif" alt="" width="360" height="106"><br>
	<br>
	The registeration details can be printed and emailed.<br>
	<img src="Images/cyrstalregfax4.gif" width="211" height="105" alt=""><br>
	<br>
	A friendly status page to inform the user that the once the registeration is 
	processed and the steps to take to register this product once the user has received 
	the ID and number.<br>
	<img src="Images/cyrstalregfax5.gif" width="261" height="209" alt="">
	
	</li>
</ol>
	</asp:content>