<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="How to Change SSWData2000"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
        <p>As per our standards:<br>
		<a href="/ssw/standards/Rules/RulestoSuccessfulProjects.aspx#back-end">
		Is a Back-end structural change going to be a hassle?</a></p>
<p>
<a href="/ssw/standards/Rules/RulestoSuccessfulProjects.aspx#environment">
Do you have separate development, testing and production environment?</a></p>
<p>There are three environments for SSWData2000:</p>
<ul>
	<li>Production Database: TUNA/SSWData2000</li>
	<li>Development Database: TUNA/SSWData2000Dev</li>
	<li>Test Database: Tuna/SSWData2000Test </li>
</ul>
<p>This means ALL developments (projects running from your PC) should connect to 
SSWData2000Dev, and ALL testing should be done on SSWData2000Test.<br>
<br>
To keep track of changes, we have a centralized repository of change scripts on 
our SSWData2000.<br>
For simplicity, place all your change scripts under: <br>
$/ssw/sswtimepronet/database/database scripts/ (SourceSafe path)<br>
<br>
And make sure its included in the database project:<br>
$/ssw/sswtimepronet/database/database.dbp (SourceSafe path)<br>
<br>
Procedure:<br>
1. Checkout $/ssw/timepronet/database/database.sln <br>
2. Add the change script under Database Scripts; Remember to prefix it with the 
next available number.<br>
<br>
<img src="Images/AddChangeScript.gif" width="279" height="259" />
<b><br>
Figure: Add it under Database Scripts</b> <br>
&nbsp;</p>
		</asp:content>