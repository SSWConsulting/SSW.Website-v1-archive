<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft ISA Server Suggestions"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				<asp:label id="lblWelcome" runat="server"></asp:label><p>
<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
	<tr>
		<td>
		1. <a href="#MyISAServer">What is the ISA Server 2004 Version?</a><br>
		</td>
	</tr>
</table>

<ol>

<li>
<h2>
	<a name="MyISAServer"></a>What is the ISA Server 2004 Version?</h2>
</li>	
	<p>
       As with most Microsoft products (Office, Windows etc.), we would like to be able to see the service pack information for ISA Server 2004.
    </p>
    <p> 
	    <img border="0" src="Images/IsaServ.gif" width="320" height="234"><br>
	    <b>Figure: Microsoft ISA Server 2004 does not display service pack details (Bad).</b>
	</p>		
	
	
	<p>
	It does not seem to be any way to check the version number on this screen either. There very non standard.
	</p>
	<p>
	    <img border="0" src="Images/IsaProp.gif" width="405" height="451"><br>
	    <b>Figure: REDBACK properties does not provide service pack details (Bad).</b>
	</p>
     
    
    <p>
     Windows Xp Media Center Edition screen displays the contents of its Service Pack 2 information.
    </p>
   
    <p>
	    <img border="0" src="Images/xp_sp2.gif" width="419" height="354"><br>
	    <b>Figure: Microsoft Windows Xp displays service pack details (Good).</b>
    </p>

</ol>
	<h2>Acknowledgements</h2>
</div>
	<p>
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DH">Daniel Hyles</a></p> 
		</asp:content>