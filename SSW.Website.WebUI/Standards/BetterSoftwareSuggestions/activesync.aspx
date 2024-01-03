<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft ActiveSync Suggestions"  %>

 
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1"  runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider" SkipLinkText ="">
        </asp:SiteMapPath>
    </p>

	<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:90%}">

		<tr> 
  			<td> 
				<p>
				<b>Microsoft ActiveSync</b><br/>
<ol>
<li><a href="#ActiveSyncSilent">ActiveSync should have an option to not run Outlook silently</a></li>
<li><a href="#ImproveErrorMessage">Improve this Error Message (I was using Active Sync 4.1 + Jasjar)</li>
</ol>
			</td>
	    </tr>
	</table>

<p>

<h2>Microsoft ActiveSync</h2>

	<ol>	
	<li><h2><a name="ActiveSyncSilent"></a>ActiveSync should have an option to not run Outlook silently</h2>
	
		<p>ActiveSync should have an option to prevent Outlook from opening in the background. Outlook is a heavy
		application and uses lots of RAM, and often you want to recharge your SmartPhone without synchronizing
		data, and everyone agrees that it is incredibly annoying how ActiveSync 
		automatically and invisibly opens up Outlook when you plug in a device. This is particularly a problem if an application such as Virtual PC is running, as your system
		can run out of RAM when the phone is plugged in.</p>
		<p><img src="Images/ActiveSyncOutlookSilent.jpg" alt="Active sync problem" width="578" height="583"></p>
	<p>Another example of its annoyance is when I reboot my PC with a portable 
	device plugged in as Outlook won't shut down cleanly, and my 4GB Outlook 
	file gets corrupt... I'd probably expect expect a warning on shutdown like 
	&quot;ActiveSync is keeping Outlook Open. Please Exit&quot;</p>
	<p>As a result, many people change it to sync manually (changing the setting 
	from &quot;Continuously&quot; to &quot;Manually&quot;), but what you really need is another 
	option: &quot;<b>Continuously (Only If Outlook Is Open)</b>&quot;</p>
	<p>
	<img border="0" src="Images/ScreenActiveSyncOptions.gif" alt="Screen active sync options" width="397" height="467"><br/>
	<b>Figure: Add option &quot;Continuously (Only If Outlook Is Open)&quot;</b></p>
	</li>

<li><h2><a name="ImproveErrorMessage"></a>Improve this Error Message (I was using Active Sync 4.1 + Jasjar)</h2>
<pre>
---------------------------<br/>
Microsoft ActiveSync<br/>
---------------------------<br/>
ActiveSync encountered a problem on the desktop.<br/>
<br/>
<br/>
<br/>
Support Code:85010014<br/>
---------------------------<br/>
OK<br/>
---------------------------
</pre>
<p>
It should say Outlook needs to be in "Online" mode  not "Offline" mode when you are syncing for the first time.
</p>

</li>

	</ol>

<h2>Acknowledgements</h2>
	<p>
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a> 
	</p> 
		</asp:content>