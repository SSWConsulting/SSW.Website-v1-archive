<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Creating Scheduled Jobs on a Server"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				<div class="clsTitle">
	<h2>Standard for Creating Scheduled Jobs on a Server</h2>
<P>
	There are many methods of creating a scheduled job on a server. These include:
	<OL start="1">
		<li>SQL Server Jobs</li>
		<li>Creating a service (ie an Exe) for the task that will run based on a timer, or put the exe into a schedule.</li>
		<li>Creating a web page that will run, called by a windows scheduled task (Start->Programs->Accessories->Scheduled Tasks. The scheduled task command line will be iexplore.exe http://myserver/mypage.asp?action=send or something similar.</li>	
	</OL>
</P>

<P>
	Of these choices, the preferred method is by using a web page (or web service if the page would not return any useful data). 
	This is because it is simpler, can be called remotely with no installation, and it is easy to pass query strings to the page 
	to elicit different responses (especially for debugging/testing purposes)

</p>
<p>
	The basic scheduled page should have the following features:
</p>
	
<ol start=1>
 <li><b>A description/view mode</b>. The page that should display if the page is requested without an
     additional querystring. For example, if the scheduled job is to send out a
     batch of emails, the data should be dumped into a datagrid so that the
     user can preview the data or list of potential recipients. See figure 1
     below. This shows the recipients that are about to be sent a reminder
     email.
     
	<p class=MsoNormal><b
	style='mso-bidi-font-weight:normal'>Auto Email Send - Testing Page<o:p></o:p></b>
	<p class=MsoNormal style='margin-left:18.0pt'><o:p>
	<div align=left>
	<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0
	style='background:#E0E0E0;border-collapse:collapse'>
	<tr style='mso-yfti-irow:0'>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal><B>FollowupID</B></p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal><B>ReportID</B></p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal><B>Email</B></p>
	</td>
	</tr>
	<tr >
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>6</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>1007</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DDK">David Klein</a></p>
	</td>
	</tr>
	<tr style='mso-yfti-irow:2'>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>13</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>1038</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>nhanley@n*tsafe2000.com (Note: Please change "*" in "n*t" to a "e")</p>
	</td>
	</tr>
	<tr style='mso-yfti-irow:3'>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>15</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>1037</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DDK">David Klein</a></p>
	</td>
	</tr>
	<tr style='mso-yfti-irow:4'>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>17</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>1046</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>ddksup@s*w.com.au</p>
	</td>
	</tr>
	<tr style='mso-yfti-irow:5'>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>18</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>1046</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>ddksup@s*w.com.au</p>
	</td>
	</tr>
	<tr style='mso-yfti-irow:6'>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>19</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>1046</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>ddksup@s*w.com.au</p>
	</td>
	</tr>
	<tr style='mso-yfti-irow:7'>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>20</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>1046</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>ddksup@s*w.com.au</p>
	</td>
	</tr>
	<tr style='mso-yfti-irow:8'>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>7</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>1007</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>ddksup@s*w.com.au</p>
	</td>
	</tr>
	<tr style='mso-yfti-irow:9'>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>9</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal>1016</p>
	</td>
	<td style='padding:.75pt .75pt .75pt .75pt'>
	<p class=MsoNormal><a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DDK">David Klein</a></p>
	</td>
	</tr>
	</table>
	</div>
 </LI>
 <LI>
 <b>An action.</b> The querystring should have an action parameter (e.g. sendemail.asp?action=send). This will carry out the action (in this case send) with the data as displayed in the description page (point 1).
 </LI>
 </OL>

<p>
	One very important point to note is that the page (ie
	iexplore.exe) will sit in the Windows Scheduled Tasks until manually
	interrupted. There are two ways around this:
</p>

<ol start=1>
<li>In the setup of the scheduled tasks, set it to terminate a process that runs for longer than XX minutes or hours. 
<p><img src="Images/imgScheduledTaskTerminate.jpg" width="400" height="40" alt=""></img></p>
</li>
<li>
Use JavaScript in the page which automatically closes the window when the action is performed e.g. when action=send is requested (be careful not to close the display page)
	<BR><BR>
	&lt!--CLOSE THE WINDOW - Otherwise it will just sit there in scheduler. --&gt <BR>
		&ltscript language = javascript&gt <BR>
		window.opener = window; <BR>
		window.close(); <BR>
</li>
</ol>

<p>Here are some other important points:</p>
<ol>
<li>You do not need to have a display page when you are using a web service for pure maintenance. You can simply call the web service from the schedule, with the appropriate parameters.</li>
<li>You should do at least one test run on the scheduled task before leaving it (ie use the Run feature in the scheduled tasks list.</li>
<li>The scheduled task should be named with the ClientID as a prefix. E.g. SSWTaskShowOrphanedConnections.</li>
<li>You should also put in the %systemroot%/ScheduledTasks/readme.txt file, a description of your task, the frequency of its run, and the reason for its existence.</li>

</ol>
<h2>Acknowledgements</h2>
<p>
<a href="/ssw/Employees/employeesXML.aspx">David Klein</a> 
</p> 
		</asp:content>