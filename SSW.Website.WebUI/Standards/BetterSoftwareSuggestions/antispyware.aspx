<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft AntiSpyware Suggestions"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				<asp:label id="lblWelcome" runat="server"></asp:label><p>
<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
	<tr>
		<td>
		1. <a href="#LinkLabel">LinkLabel should not be used to perform "Check All"</a><br>
		</td>
	</tr>
</table>
<ol>

<li>
	<h2>
		<a name="LinkLabel"></a>LinkLabel should not be used to perform "Check All"</h2>
</li>


	<p>LinkLabel should only be used if clicking on it will open up a website.<br>
	The preferable way of let users select all checkboxes is put a <a href="https://ssw.com.au/rules/controls-do-you-include-a-select-all-checkbox-on-the-top">CheckBox at the top</a>.
	</p>
	<p>
    <img border="0" src="Images/MSAntiSpywareCheckAll.gif" alt="Microsoft AntiSpyware - Advanced Tools" width="750" height="554"><br>
    <b>Figures: Microsoft AntiSpyware - Inappropriate use of LinkLabel.</b>
    </p>

</ol>
<h2>Acknowledgements</h2>
	<p>
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a> 
	</p> 
		</asp:content>