<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft Terminal Services Suggestions"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				<asp:label id="lblWelcome" runat="server"></asp:label><p>
<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
	<tr>
		<td>
		1. <a href="#LogoffEntryDisplay">Can the Logoff Entry display by default?</a><br>
		</td>
	</tr>
</table>
<ol>

<li>
	<h2>
		<a name="LogoffEntryDisplay"></a>Can the Logoff Entry display by default?</h2>
</li>


	<p> 
	When connecting to a Windows 2000 server via Terminal Services, the Start menu is defaulted to not show the Logoff entry. Could this be shown by default?<p>
    <img border="0" src="Images/Termin1.gif" alt="Terminal services" width="219" height="130">&nbsp;&nbsp;
    <img border="0" src="Images/Termin2.gif" alt="Terminal services" width="343" height="148"><br>
    <b>Figures: No log-off entry in start menu; Option should be enabled by default.</b>
    </p>

</ol>
<h2>Acknowledgements</h2>
	<p>
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a> 
	</p> 
		</asp:content>