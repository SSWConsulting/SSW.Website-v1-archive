<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Remote Support Sample Script" %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
 <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
		
<h2>Remote Support Sample Script</h2>
<p>
Remote support via Skype or other tools make it easy to help customers to investigate specific problems or resolve technical issues on their PC remotely.
</p>

<p>The steps involved in a remote support are:</p>

<ol>
<li>If you already have the customers Skype account, skip to step 5 (Contact the customer to start remote support.)</li>

<li>Contact the customer via Skype or email to arrange a time for remote support
<br />Here is a sample email:<br />
<table class="clsSSWTable" width="100%" id="Table2"><tr>
<td>
<img src="Images/Outlook.png"><br /><br />
Dear Mr. Northwind,<br />
I am contacting you in regard the problems you encountered while configuring SSW Link Auditor on your pc.<br /><br />
<ol>
    <li>Please give me your Skype account name.</li>
    <li>Please ensure that you have downloaded and installed the latest version of <a href="https://sswlinkauditor.com/" target="_blank">SSW Link Auditor</a>.</li>
    <li>Also please let us know when it would be convenient to contact you and start the remote support. We would appreciate if the time could be given as Sydney, Australia time.</li>
    <li>Please make sure the sound works on your PC.</li>
    <li>Go to <a href="http://www.teamviewer.com">www.teamviewer.com</a> and install the TeamViewer application, if we have problems to connect over Skype.</li>
</ol>
<br />
<br />
Regards,<br />
James<br />
www.ssw.com.au</td>
</tr>
</table></li>

<li>If necessary, send an appointment to the customer once you have time arranged.<br />
<dl class="image">
 <dt>
     <img src="Images/RemoteSupportAppointment.jpg" border="0"></dt><dd> Figure: Send an appointment to the client
</dd></dl>
</li>

<li>Contact the customer to start remote support. The following is a typical conversation of a remote support:<br />
First of all, introduce yourself:
<table class="clsSSWTable" width="100%" id="Table2"><tr>
<td>
<img src="Images/WindowsLiveMessenger.png"><br /><br />
Hi Mr. Northwind,<br />
This is James Zhou from SSW. I'm one of members of SSW Link Auditor team.</td>
</tr>
</table>

<br />
Then continue by giving the customer a brief explanation of what you will do and how long will it take:
<table class="clsSSWTable" width="100%" id="Table2"><tr>
<td>
<img src="Images/WindowsLiveMessenger.png"><br /><br />
Mr Northwind, can I confirm the agenda.<br />
You would like me to connect to your PC and fix:<br />
<ul>
<li>xxx</li>
<li>yyy</li>
</ul>
<br />
How does that sound?</td>
</tr>
</table>

<br />
Then tell the user to send you a remote assistance request:<br />
<table class="clsSSWTable" width="100%" id="Table2"><tr>
<td>
<img src="Images/WindowsLiveMessenger.png"><br /><br />
OK, please allow me to remote control your PC using Skype.<br />
In Skype, go to the menu Call |Share Screens...<br />
PS: If I need you to do something I will nudge you
</td>
</tr>
</table>

<br />
You try to get connected to customer's PC via Skype but failed. Firewalls often block it. If so try to use another Remote Support method as per <a href="RemoteSupportViaTeamViewer.aspx">Remote Support via Teamviewer</a>:
<table class="clsSSWTable" width="100%" id="Table2"><tr>
<td>
<img src="Images/WindowsLiveMessenger.png"><br /><br />
This failed - it is likely a firewall issue. So let's try using Teamviewer<br />
</td>
</tr>
</table>
See <a href="RemoteSupportViaTeamViewer.aspx">Remote Support via Teamviewer</a> for how to use Teamviewer.<br />
If that also fails, see the order of remote support at <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/RemoteSupport.aspx">Rules for remote support</a>
<br />
Once connected to the customer's PC, let him/her know you are about to control the PC:
<table class="clsSSWTable" width="100%" id="Table2"><tr>
<td>
<img src="Images/WindowsLiveMessenger.png"><br /><br />
Now please don't touch your mouse while I take control of your mouse.</td>
</tr>
</table>

<br />
Once you finish remote control, close all applications that you have opened on remote PC.<br/>
Then you should activate the remote conversation window to let him/her see your message that you have done. <br/>
Let your customer take control back:
<table class="clsSSWTable" width="100%" id="Table2"><tr>
<td>
<img src="Images/WindowsLiveMessenger.png"><br /><br />
Now I have finished using your mouse.</td>
</tr>
</table>

<br />
Try your best to explain what you have found and how come the problem your customer is experiencing:
<table class="clsSSWTable" width="100%" id="Table2"><tr>
<td>
<img src="Images/WindowsLiveMessenger.png"><br /><br />
This looks like a bug - caused by our web service being down. I will report this to myself and get back to you.</td>
</tr>
</table>

<br />
Ask if he/she needs further assistance:
<table class="clsSSWTable" width="100%" id="Table2"><tr>
<td>
<img src="Images/WindowsLiveMessenger.png"><br /><br />
Do you need further assistance?</td>
</tr>
</table>

<br />
If no further assistance required, close the remote session and let your customer know:
<table class="clsSSWTable" width="100%" id="Table2"><tr>
<td>
<img src="Images/WindowsLiveMessenger.png"><br /><br />
I’ve finished my remote session and disconnected from your PC, has your problem been resolved?</td>
</tr>
</table>

<br />
At last say bye:
<table class="clsSSWTable" width="100%" id="Table2"><tr>
<td>
<img src="Images/WindowsLiveMessenger.png"><br /><br />
OK. Thanks Mr. Northwind. If you have any questions later, just let me know.<br />
Bye for now.</td>
</tr>
</table>

</li>

<li>
Finally send a summary email to the customer describing what you have done/fixed and tell the customer not to hesitate to contact SSW if they need any further support.<br />
Here is sample email:<br />
<table class="clsSSWTable" width="100%" id="Table2"><tr>
<td>
<img src="Images/Outlook.png"><br /><br />
Dear Mr. Northwind,<br />
<br />
As per our conversation during the remote support, I found you didn't have your Reporting Services configured well so the SSW Link Auditor Report could not be deployed.<br />
<br />
What I have fixed for you were:<br />
Configured the windows service identity for Reporting Services<br />
Configured the web service identity for Reporting Services<br />
<br />
If you need any further support, don't hesitate to contact me.<br />
<br />
Regards,<br />
James<br />
www.ssw.com.au</td>
</tr>
</table>

</li>

</ol>
<br/ >

<h2>Acknowledgements</h2>
  
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JZ">James Zhou</a><br>
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=RT">Ryan Tee</a><br>

</asp:content>