<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Wise For Windows Installer - Screenshots"  %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
			<strong>SSW's Wise Setup Template</strong>
			<p>
		Using the important features that Wise for Windows Installation Wizard provide, 
			SSW's applications have been able to deploy .Net solutions as well as Access 
			and VB6 solutions successfully onto destination machines.
			</p>	
		<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
			<tr>
				<td>
					<b>Wise Setup User Guide</b><br/>
					<a href="#Pre">1.</a> Prerequisites<br/>
					<a href="#Screens">2.</a> SSW's Wise Template Process Screens<br/>
					<a href="#NextStep">3.</a> Next step
				</td>
			</tr>
		</table>
	<ol>
	<li>
			<SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>

	</li>
	<li>
		<h2><a name="Screens"></a>SSW's Wise Template Process Screens</h2>
		<blockquote> <blockquote>
		<p><img border="0" src="Images/WiseScreenShot01.jpg" width="552" height="448"/><br/>
			<b>Figure 1: Welcome Dialog</b></p>
		<p><img border="0" src="Images/WiseScreenShot02.jpg" width="552" height="448"/><br/>
			<b>Figure 2: Installation Prerequisites Dialog</b></p>
		<p><img border="0" src="Images/WiseScreenShot03.jpg" width="552" height="448"/><br/>
			<b>Figure 3: Selecting Destination Folder Dialog</b></p>
		<p><img border="0" src="Images/WiseScreenShot05.jpg" width="552" height="448"/><br/>
			<b>Figure 4: Selecting Options to Run after Installation is Complete</b></p>
		<p><img border="0" src="Images/WiseScreenShot06.jpg" width="552" height="448"/><br/>
			<b>Figure 5: Updating System Dialog for Install</b></p>
		<p><img border="0" src="Images/WiseScreenShot07.jpg" width="552" height="448"/><br/>
			<b>Figure 6: Finish Dialog</b></p>
		<p>&nbsp;</p>
	</li>
	<li>
		<h2><a name="NextStep"></a>Next step</h2>
			
		<p>Do you want to know about how to purchase SSW Products?</p>
		<p>To purchase view the <a href="/ssw/Shop/Userguide.aspx">Purchase User Guide</a>
		</p>

	</li>
		
		</ol>	
		<h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=PA">Peter Ahn</a><br />
    </p>		
		</asp:content>