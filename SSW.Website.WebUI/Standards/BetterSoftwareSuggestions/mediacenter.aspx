<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft Media Center Suggestions"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				<asp:label id="lblWelcome" runat="server"></asp:label><p>
<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
	<tr>
		<td>
		1. <a href="#MyMusicView">Better Drill Through Option</a><br>
		</td>
	</tr>
</table>


<ol>

<li>
<h2>
	<a name="MyMusicView"></a>Better Drill Through Option</h2>

	<p> 
		Media Center 2005 and all previous versions has one oversight when it 
		comes to peoples music collection. It assumes that everyone has there 
		files filled with ID tags. However what if you want to play wav or other 
		audio formats that don't have ID tags? or what if you have albums from 
		various artists. (like dance or top 40 sort of cds?) This basically 
		renders the album or artist view useless. I have over 1000 songs from 
		around 400 different artists.</p>
<p> 
		Due to the many complaints of people i decided that a plug-in needed to 
		be written in order for people to browse a folders and play directory's 
		of songs. This plug-in has been released for free and it is available at
		<a href="/ssw/Redirect/xpmediacentre.htm">http://www.xpmediacentre.com.au/community/forumdisplay.php?f=56</a></p>
<p> 
		&nbsp;<img border="0" src="Images/MusicalFolders.gif" width="515" height="363"></p>
</li>
</ol>
		<h2>Acknowledgements</h2>
</div>
	<p>
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DH">Daniel Hyles</a></p> 
		</asp:content>