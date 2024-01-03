<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Releasing a Version"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

	    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>			

	<p>	
		Whenever we do a release for a product - whether for the first time or 
        the hundredth - we need to follow a number of steps to create the new 
        build and then to submit it to the web site for release.</p>
	
	<p>	
		This standard is designed to tell you what you need to do in order to 
        release a version of a product.</p>
	
	<p>	
		To see the standard on what to include in your wise script see
        <a href="/ssw/Standards/WiseSetup/WiseStandards.aspx">
        http://www.ssw.com.au/ssw/Standards/WiseSetup/WiseStandards.aspx</a></p>
	
	<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
		<tr> 
  			<td>
  				<b>Releasing a Version</b><br> 
  				<a href="#MakeApplicationVersion">1.</a> Make a new version in the application<br>
				<a href="#CreateNewInstallation">2.</a> Creating a new 
                installation<br>
				<a href="#UpdateExistingInstallation">3.</a> Updating an existing 
                installation<br>
				<a href="#DistributeApplication">4.</a> Distributing the 
                application<br>
			</td>
		</tr>
	</table>
			
<ol>
<li>
<h2><a name="MakeApplicationVersion"></a>Make a new version in the application</h2>
</li>

<p>
	Firstly, we need to make a new version in the application as per the 
    following standard:</p>

<p>
	<a href="Versioning-InDotNet.doc">http://www.ssw.com.au/ssw/Standards/WiseSetup/Versioning-InDotNet.doc
    </a>&nbsp;</p>

<li>
<h2><a name="CreateNewInstallation"></a>Creating a new installation</h2>
</li>

	<p>
		When creating a new installation you will need to:</p>

<ol>
<li>Take a copy of the SSW Code Auditor script (this is the standard) available 
in SourceSafe under SSW\SSWCodeAuditor\SSWCodeAuditorSetup</li>
<li>Remove all files and directories from the installation so that it looks like 
this:<br>
<img border="0" src="Images/EmptyFoldersInWise.gif" alt="" width="147" height="108">&nbsp;&nbsp; 
</li>
<li>Add your installation files and directories.</li>
<li>Remove the Program Group and Items and create your own Program Group with 
the Product Name and Version Name. There should also be 4 Items created - the 
product, the product documentation, the check for update and the uninstall 
product. The final two will need to be created in the script editor.</li>
<li>Remove the Registry entries.</li>
<li>Create a Registry Entry to store the installation path of your program as 
per below:<br>
<img border="0" src="IMAGES/AddRegistryEntry.gif" alt="Add registry entry" width="600" height="197"><br></li>
<li>Replace the Setup Information with your product details.</li>
<li>Update the version and build details on the final tab.</li>
<li>Compile the script into a new installation.</li>
</ol>

    </p>
 <li>
<h2><a name="UpdateExistingInstallation"></a>Updating an existing installation</h2>
</li>

<p>
	When updating an existing installation you will need to:</p>
	
<ol>
<li>Go to the Script Editor view and find and replace the old version with the 
new version.<br>
<img border="0" src="IMAGES/ReplaceVersionsInScript.gif" alt="Replace versions in script" width="431" height="186"></li>
<li>Update the version and build details on the final tab. This includes the 
build details, version resource and wise update sections.</li>
<li>Compile the script into an installation.</li>
</ol>
	
	</p>
<li>
<h2><a name="DistributeApplication"></a>Distributing the application</h2>	
</li>
	
	<p>Once the installation has been compiled, you will need to distribute the 
    application first for testing and then for release to the web site. To do 
    this, we must:</p>
			
<ol>
<li>Copy the executable to 
\\ANT\SSW\Download</li>
<li>Right-click the executable and select 'Properties'.</li>
<li>Update the ini file with version details - you will need to specify the Size 
of the file as per the property page you just opened.</li>
<li>Update the text file with version details - you can also specify what 
changes have been made in this version if you want.</li>
<li>Upload the executable, ini and text files to the web site.</li>
</ol>
	</p>
</ol>
<h2>Acknowledgements</h2>   
	<p>
		
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JP">John Prince</a> 
        - 22 Jan. 2003</p>
    
		</asp:content>