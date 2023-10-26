<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Wise Suggestions"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
<div class="TableOfContents">
	<ol>		
		<li><a href="#Highlight">Inherit base template between multiple WISE projects</a></li>
		<li><a href="#Uninstall">When uninstalling an explorer window should be opened underneath</a></li>
		<li><a href="#Browse">Wise should provide users a better "Browse..." window</a></li>
		<!--li><a href="#WiseImages">Wise should have better support of image files</a></li-->
		<li><a href="#Controls">Wise should have better support for designer controls</a></li>
		<li><a href="#AppSearch">Wise should allow multiple calls to System Search so that the prerequisite status can be refreshed</a></li>
		<li><a href="#WebFiles">Critical problems about IIS and ASP.NET</a></li>
	</ol>
	</div>
		<p>
		<ol>
			<li>
				<a name="Highlight"></a>
				<h2>Inherit base template between multiple WISE projects</h2>
				Often we have common dialogs and scripts that is shared between multiple setup. 
				Currently these dialogs and scripts are defined in the common template that all our project are based on.
				
				<p>Problem occurs when these common dialogs or scripts are changed 
				in the base template, then we need to go through 20+ setup file to update their dialogs or scripts. This can become painful and time consuming.
				</p>
				<p>If only WISE can support some kind of inheritance with its 
				base template, then any update to the base template will be 
				propagated to all other projects when they're rebuild.
				
				<p>&nbsp;<b><span style="background-color: #FFFF00">Please Note:</span>
		</b>The forms with the top image cannot have a background color of 
		white, only grey. The reason for this is because the Wise for Windows 
		Installer's designer is limited in its capability of having background 
		images with controls such as check boxes and group boxes on top of the 
		image. They do not have the capability of being transparent, and there 
		is no &quot;Send to Front&quot; option.</p>
				
				</li>

			<li>
				<a name="Uninstall"></a>
				<h2>When uninstalling an explorer window should be opened underneath</h2>
<p>
I think that when uninstalling an explorer window should be opened underneath (or add a control under the status bar).<br>
And as it is uninstalling it is showing the files removing.<br>
At the end if there are still some left it should say "There are files remaining. You should review then delete them."
</p>
<img src="Images/WiseUninstall.jpg" width="534" height="903"><br>
<b>Figure: An explorer window should be opened so users can see the files are removing.</b>
<br><br>
		</li>

<li>
<a name="Browse"></a>
<h2>Wise should provide users a better "Browse..." window</h2>
<p>
The "Browse..." window Wise installer provided by default has an ugly and non-standard interface.<br><br>
<img src="Images/Browse_Bad.gif" width="470" height="289"><br>
<b>Figure: An Ugly and non-standard interface, with wrong icons and borders for items.</b>
<br><br>
<img src="Images/Browse_Good.gif" width="336" height="374"><br>
<b>Figure: An example of good and standardised "Browse..." interface. </b>

</p>
</li>

<!--li>
<a name="WiseImages"></a>
<h2>Wise should have better support of image files</h2>
<p>

<img src="Images/WiseXPThemed.gif" width="552" height="448"><br>
<b>Figure: Our installer looks fine when users use default Windows XP theme appearance.</b>
<br><br>
<img src="Images/WiseNotXPThemed.gif" width="552" height="441"><br>
<b>Figure: Our installer doesn't look fine when not Windows XP themed.</b>
</p>

<p>
This is because Wise installer doesn't support images with transparent background and we have to use images with fixed background color.
<br><br>
<img src="Images/WiseOnlyBMP.gif" width="473" height="472"><br>
<b>Figure: Wise only supports BMP files.</b>
</p>

<p>
<b>Icon files:</b><br><br>
<img src="Images/WiseIconColor.gif" width="473" height="472"><br>
<b>Figure: We can use icon files, but the color is horrible.</b>
<br><br>
<img src="Images/VSColorful.gif" width="35" height="22"><br>
<b>Figure: The original Visual Studio icon is colorful and nice.</b>
</p>
</li-->

<li>
<a name="Controls"></a>
<h2>Wise should have better support for designer controls</h2>
<p>

There are many limitations to the design controls. 
The most significant limitation is the number of available controls.</p>
<p>

<img border="0" src="Images\WiseControlPanel.jpg" width="107" height="158"><br>
<b>Figure: Only a handful of controls are available for use. Certain Industry 
standards require such controls like e.g. the Link Button.</b></p>
<p>

When dealing with the controls that are available, there are also limitations to the 
property of each control.<br>
One clear example is the inconsistent use of the transparency property.</p>
<p>

<img border="0" src="Images\WiseTextBoxProperty.jpg" width="473" height="472"><br>
<b>Figure: Label properties include transparency. This way it is possible to 
have text boxes over background images.</b></p>
<p>


<img border="0" src="Images\WiseCheckBoxProperty.jpg" width="473" height="472"><br>
<b>Figure: Checkbox properties do not have transparency. They will look ugly 
with a background image that has a color other than grey.</b><br>
</p>
<p>


This limitation found in the checkbox could only provide a work-around i.e. having a 
checkbox without text, and providing a transparent label adjacent to the 
checkbox control.</p>
<p>


However this led to another serious issue with the designer; the checkbox would 
appear <b>behind</b> the background image, and sometimes (even when simply 
performing a mouse-over the checkbox control) it would appear in front of the 
image.</p>
<p>


<img border="0" src="Images\WiseMissingCheckBox.jpg" width="552" height="448"><br>
<b>Figure: Wise gets confused with which controls to &quot;send to front&quot; or &quot;send to 
back&quot; i.e. the white image is in front of the checkbox. Also note the lack 
of transparency on checkbox controls.</b></p>
<p>


<img border="0" src="Images\WiseCheckBoxMouseOver.jpg" width="552" height="448"><b><br>
Figure: A simple mouse-over will perform a &quot;send-to-front&quot;. This occurs during 
runtime of the installation package and not in the designer.</b></p>
<p>


Suggestions:</p>
		<ol>
			<li>Provide transparency on all controls,</li>
			<li>the ability to &quot;send-to-front&quot;/&quot;send-to-back&quot; for all controls 
			in the designer,</li>
			<li><span style="font-size: 9.0pt; font-family: Verdana">and provide 
			more variety of controls e.g. Link Button.</span></li>
		</ol>
</li>
<li>
<a name="AppSearch"></a>
<h2>Wise should allow multiple calls to System Search so that the prerequisite status can be refreshed</h2>
<p>
The Installation Prerequisites Dialog is necessary to help the user download any required software for the product as shown below:
<br />
<dl class="image">
<dt><img border="0" src="Images/WiseScreenShot02.jpg" width="552" height="448"><dt>
<dd>Figure: If there are items that are not installed, the user has the ability to download the software by clicking the "Download" button.<dd>
</dl>
</p>
<p>
Most likely, the user will keep the Wise Installation wizard open in the background while they go ahead and install the required software.
The problem occurs when the software has been successfully installed, and the user would like to refresh the status of the prerequisites by clicking a "Refresh" button.
</p>
<p>
Having a "Refresh" button in the Wise Installer would require the "AppSearch" action to be called just as it is called on the load of the Installer as shown below in the MSI Script:
<dl class="image">
<dt><img border="0" src="Images/AppSearchStep.jpg" width="671" height="491"><dt>
<dd>Figure: AppSearch Step being called in the MSI Script when the Wise Installer loads for the first time.<dd>
</dl>
</p>
<p>
Wise does not respond to the "AppSearch" call unless it is called from the above step.
</p>
<p>
Suggestion: <br />
Wise should allow custom calls to the "AppSearch" step to allow developers to add a "Refresh" button that would raise an event to call the "AppSearch" action again.
</p>
</li>
<li><a name="WebFiles"></a><h2>Critical problems about IIS and ASP.NET</h2>
<p>There are two critical problems we found in Wise (Wise Installation Studio 7 sp1 ) about packaging a web application:</p>
<p>
    #1 IIS configuration doesn't work well
    <dl class="image">
    <dt><img border="0" src="Images/Wise_IIS.jpg"><dt>
    <dd>Figure: IIS settings in Wise<dd>
    </dl>
    <dl class="image">
    <dt><img border="0" src="Images/Wise_IIS_installation.jpg"><dt>
    <dd>Figure: IIS configuration after installation<dd>
    </dl>
</p>
<p>
    #2 Wise modifies web.config unexpectedly
    <dl class="image">
    <dt><img border="0" src="Images/Wise_WebConfig.jpg"><dt>
    <dd>Figure: unexpected lines added in web.config after installation<dd>
    </dl>
</p>
</p>
</li>
</ol>
</p>
</asp:content>