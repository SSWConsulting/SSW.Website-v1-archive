<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Networks"%>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>

<script runat="server">

</script>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
				<ssw:randomtestimonial id="testimonial" runat= "server" display="TopCommon" CategoryID="10" />
		
	<p>Networks are the lifeblood of any business. This is why we have developed a few rules for a better Networks.</p>

    <div class="TableOfContents">
        <h3>Rules to Better Networks</h3>
        <ol>
            <li><a href="#rebootrestart">Do you have a server reboot/restart policy?</a></li>
            <li><a href="#cleanupfiles">Do you keep your file servers clean?</a></li>
            <li><a href="#ups">Do you have your UPS send an email when it kicks in?</a></li>
            <li><a href="#hardware">Do you keep your network hardware reliable?</a></li>
            <li><a href="#changePassword">Do you have a strict password security policy?</a></li>
            <li><a href="#DFS">Do you use the Distributed File System for your file shares?</a></li>
            <li><a href="#Wireless">Do you secure your wireless connection? </a></li>
            <li><a href="#companywordtemplate">Logon - Do you have a companywide word template?</a></li>
            <li><a href="#Uptime">Do you monitor the uptimes of all your servers daily?</a></li>
            <li><a href="#Notification">Do you know the right notification for backups?</a></li>

        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="rebootrestart"></a>Do you have a server reboot/restart policy?</h2>
                <p>
                    If your servers are down or have to go down during business hours you should notify
                    the users at least 15 minutes beforehand so you will not get 101 people all asking
                    you if the computer is down.</p>
                <p>
                    For short outages IM is the best method. If you use Lync or Skype, simply open a
                    new chat window, click the &quot;Invite&quot; button, Select All the recipients,
                    and then hit OK to add them to the Message window. This is best used for short outages
                    and when you have a small number of users, or if you will be performing maintenance out of hours and you expect users will not be using the affected systems. If they are not online on Live Messenger or Skype, they can't complain that they were not warned.</p>
                <p>
                    For extended or planned outages, or if you have a larger number of users (50+) Email
                    is the suggested method.
                </p>
                <p>
                    If you send an email it is a good idea to tell the user a way to monitor the network
                    themselves. We use WhatsUp Gold for this.</p>
                <p>
                    e.g.</p>
                <dl class="code">
                    <dt>
                            <b>Subject:</b>Network Outage<br />
                            <b>To:</b>SSWALL<br />
                            <br />
                            <table>
                            <tr><td><b>Planned/Unplanned:</b></td><td>Planned</td></tr>
                            <tr><td><b>Change Description:</b></td><td>MERMAID &#8211; install Windows Server 2008 SP2 at 9PM</td></tr>
                            <tr><td><b>Reason For Change:</b></td><td>Windows 2008 SP2 is a prerequisite for TFS SharePoint integration</td></tr>
                            <tr><td><b>Risk (see table below):</b></td><td>LOW RISK (LOW Probability and MEDIUM Impact)</td></tr>
                            <tr><td><b>Uptime over last month:</b></td><td>94.059%</td></tr>
                            <tr><td></td><td></td></tr>
                            <tr><td><b>Planned Outage (mins):</b></td><td>150</td></tr>
                            <tr><td><b>Planned Start Time:</b></td><td>26/10/2009 9:00 PM</td></tr>
                            <tr><td><b>Planned Finish Time:</b></td><td> 26/10/2009 11:30 PM</td></tr>
                            <tr><td></td><td></td></tr>
                            <tr><td><b>Affected Services:</b></td><td></td></tr>
                            <tr><td></td><td>\\Mermaid<br />http://sharepoint.ssw.com.au<br />http://intranet.ssw.com.au<br />http://projects.ssw.com.au</td></tr>
                            <tr><td></td><td></td></tr>
                            <tr><td><b>Detailed Change Plan:</b></td><td></td></tr>
                            <tr><td></td><td>1)	Lock out users via IIS<br />2)	Backup server<br />3)    Install Service Pack (Windows Server 2008 SP2) <br />4)    Reboot server<br />
                                    5)    Follow test plan<br />6)    Based on result of test plan, follow backout plan if procedure failed<br />7)    Procedure completed</td></tr>
                            <tr><td></td><td></td></tr>
                            <tr><td><b>Test Plan:</b></td><td></td></tr>
                            <tr><td></td><td>1)	Check Event log for errors<br />2)	Check each affect service is running<br />
                                    3)	Call test users to start &#8220;Test Please&#8221; on the affect services <br />4)	Get result of user &#8220;Test Please&#8221; by email by 11:15 PM </td></tr>
                            <tr><td></td><td></td></tr>
                            <tr><td><b>Backout Plan:</b></td><td></td></tr>
                            <tr><td></td><td>1)	Restore server from backup</td></tr>
                            <tr><td><b>Note:</b></td><td>This is as per rule <a href="/ssw/Standards/Rules/RulesToBetterNetworks.aspx#rebootrestart">What is your server reboot/restart policy?</a></td></tr>
                            </table>
                            <br />
                            <b>Risk Lookup Table by Probability and Impact:</b><br />
                            <table border=0 cellspacing=0 cellpadding=0 style='border-collapse:collapse'>
                             <tr>
                              <td width="554" colspan=6 valign="top" style='width:415.35pt;border:solid black 1.0pt;
                              background:#EEECE1;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p><b>Risk</b></p>
                              </td>
                             </tr>
                             <tr>
                              <td width="182" colspan=2 rowspan=2 valign=top style='width:136.2pt;border:
                              solid black 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p align="center" style='text-align:center'><b></b></p>
                              </td>
                              <td width="372" colspan=4 style='width:279.15pt;border-top:none;border-left:
                              none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
                              padding:0cm 5.4pt 0cm 5.4pt'>
                              <p align="center" style='text-align:center'><b>Probability</b></p>
                              </td>
                             </tr>
                             <tr>
                              <td width="91" valign=top style='width:68.1pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p><b>Low</b></p>
                              </td>
                              <td width="99" valign=top style='width:74.2pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p><b>Medium</b></p>
                              </td>
                              <td width="91" valign=top style='width:68.1pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p><b>High</b></p>
                              </td>
                              <td width="92" valign=top style='width:68.75pt;border-top:none;border-left:
                              none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
                              padding:0cm 5.4pt 0cm 5.4pt'>
                              <p><b>Unknown</b></p>
                              </td>
                             </tr>
                             <tr>
                              <td width="91" rowspan=4 style='width:68.1pt;border:solid black 1.0pt;
                              border-top:none;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p align=center style='text-align:center'><b>Impact</b></p>
                              </td>
                              <td width="91" valign=top style='width:68.1pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p><b>Low</b></p>
                              </td>
                              <td width="91" valign=top style='width:68.1pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;background:
                              #92D050;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p>Low Risk</p>
                              </td>
                              <td width="99" valign=top style='width:74.2pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;background:
                              #92D050;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p>Low Risk</p>
                              </td>
                              <td width="91" valign=top style='width:68.1pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;background:
                              #92D050;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p>Low Risk</p>
                              </td>
                              <td width="91" valign=top style='width:68.75pt;border-top:none;border-left:
                              none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
                              background:yellow;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p>Medium Risk</p>
                              </td>
                             </tr>
                             <tr>
                              <td width="91" valign=top style='width:68.1pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p><b>Medium</b></p>
                              </td>
                              <td width="91" valign=top style='width:68.1pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;background:
                              #92D050;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p>Low Risk</p>
                              </td>
                              <td width="99" valign=top style='width:74.2pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;background:
                              yellow;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p>Medium Risk</p>
                              </td>
                              <td width="91" valign=top style='width:68.1pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;background:
                              yellow;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p>Medium Risk</p>
                              </td>
                              <td width="91" valign=top style='width:68.75pt;border-top:none;border-left:
                              none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
                              background:red;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p>High Risk</p>
                              </td>
                             </tr>
                             <tr>
                              <td width="91" valign=top style='width:68.1pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p><b>High</b></p>
                              </td>
                              <td width="91" valign=top style='width:68.1pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;background:
                              yellow;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p>Medium Risk</p>
                              </td>
                              <td width="99" valign=top style='width:74.2pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;background:
                              red;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p>High Risk</p>
                              </td>
                              <td width="91" valign=top style='width:68.1pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;background:
                              red;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p>High Risk</p>
                              </td>
                              <td width="91" valign=top style='width:68.75pt;border-top:none;border-left:
                              none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
                              background:red;padding:0cm 5.4pt 0cm 5.4pt'>
                              <p>High Risk</p>
                              </td>
                             </tr>
                             <tr style='height:24.75pt'>
                              <td width="91" valign=top style='width:68.1pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;
                              height:24.75pt'>
                              <p><b>Unknown</b></p>
                              </td>
                              <td width="91" valign=top style='width:68.1pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;background:
                              yellow;padding:0cm 5.4pt 0cm 5.4pt;height:24.75pt'>
                              <p>Medium Risk<span style='color:#1F497D'></span></p>
                              </td>
                              <td width="91" valign=top style='width:74.2pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;background:
                              red;padding:0cm 5.4pt 0cm 5.4pt;height:24.75pt'>
                              <p>High Risk</p>
                              </td>
                              <td width="91" valign=top style='width:68.1pt;border-top:none;border-left:none;
                              border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;background:
                              red;padding:0cm 5.4pt 0cm 5.4pt;height:24.75pt'>
                              <p>High Risk</p>
                              </td>
                              <td width="91" valign=top style='width:68.75pt;border-top:none;border-left:
                              none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
                              background:red;padding:0cm 5.4pt 0cm 5.4pt;height:24.75pt'>
                              <p>High Risk</p>
                              </td>
                             </tr>
                            </table>
                           <%-- <table style="border:solid 1px black;">
                                <tr><td colspan="6" style="background-color:Gray"><b>Risk</b></td></tr>
                                <tr><td colspan="2"></td><td colspan="4"><table><tr><td colspan="4">Probability</td></tr><tr><td>Low</td><td>Medium</td><td>High</td><td>Unknown</td></tr></table></td></tr>
                                <tr><td rowspan="4"><b>Impact</b></td><td>Low</td><td>Low Risk</td><td>Low Risk</td><td>Low Risk</td><td>Medium Risk</td></tr>
                                <tr><td>Medium</td><td style="background-color:Olive">Low Risk</td><td>Medium Risk</td><td>Medium Risk</td><td>High Risk</td></tr>
                                <tr><td>High</td><td>Medium Risk</td><td>High Risk</td><td>High Risk</td><td>High Risk</td></tr>
                                <tr><td>Unknown</td><td>Medium Risk</td><td>High Risk</td><td>High Risk</td><td>High Risk</td></tr>
                            </table>--%>
                            <%--<b>Server:</b>Huntsman is being rebooting in 15 minutes at 7:00am<br />--%>
                             
                            
                            <br />
							Note: The following servers will be affected (if this is a HyperV host)<br />
							<img src="Images/NetworkOutageServers.jpg" alt="Affected servers" /><br />
							<br />
                            <a href="/ssw/Redirect/Owl.htm">http://owl/NmConsole/Reports/Full/Group/Performance/RptGroupPingAvailability/<br />
                                RptGroupPingAvailability.asp?_nDeviceGroupID=-1&_sStartDate=2/11/2008&_sEndDate=<br />
                                3/11/2008&_nStartTime=1205154000000&_nEndTime=1205154000000&RptGroupPingAvailability.<br />
                                oTablePingAvail=&RptGroupPingAvailability.oTablePingAvailSumamry=&_nDeviceID=71&<br />
                                DeviceStatus.nWorkspaceID=10012&_nReportID=145&_oComboDateRange=Custom&_sStartTime=<br />
                                12:00%20AM&_sEndTime=12:00%20AM</a><br />
                            <br />
                            <img style="margin:0;" border="0" src="Images/whatsup.jpg"><br />
                    </dt>
                </dl>
                <p>
                    Immediately before the scheduled downtime, check for logged in users, file access
                    and database connections.</p>
                <p>
                    <b>Users</b></p>
                <p>
                    Open &#8216;Windows Task Manager&#8217; (Run > taskmgr) and select the &#8216;Users&#8217;
                    tab. Check with users if they have active connections, then have them log off.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/NetworkDowntimeUsers.gif" />
                    </dt>
                    <dd>
                        Figure: Connected users can be viewe in Task Manager
                    </dd>
                </dl>
                <p>
                    <b>Files</b></p>
                <p>
                    Open &#8216;Computer Management&#8217; (Run > compmgmt.msc), then &#8216;System
                    Tools > Shared Folders&#8217;. Check &#8216;Session&#8217; and &#8216;Open Files&#8217;
                    for user connections.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/NetworkDowntimeFiles.gif" />
                    </dt>
                    <dd>
                        Figure: Computer Management 'Open Files' View
                    </dd>
                </dl>
                <p>
                    <b>Database</b></p>
                <p>
                    Open SQL Server Management Studio on the server. Connect to the local SQL Server.
                    Expand &#8216;Management&#8217; and double-click &#8216;Activity Manager&#8217;.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/NetworkDowntimeSQL.gif" />
                    </dt>
                    <dd>
                        Figure: SQL Management Studio 'Active Connections' View
                    </dd>
                </dl>
                <p>
                    Once these have been checked for active users, and users have logged off, maintenance
                    can be carried out.</p>
                <p>
                    <b>Restarts should only be performed during the following time periods</b></p>
                <ol>
                    <li>Between 7am and 7:05am</li>
                    <li>Between 1pm and 1:05pm</li>
                    <li>Between 7pm and 7:05pm</li>
                </ol>
                <p>
                    If a scheduled shutdown is required, use the PsShutdown utility from <a href="/ssw/Redirect/Microsoft/Technet.htm">
                        Microsoft's Sysinternals </a>page.</p>
                <p><strong>Reply Done when you finish the task</strong></p>
            </li>
            <li>
                <h2>
                    <a name="cleanupfiles"></a>Do you keep your file servers clean?</h2>
                <p>
                    How often do you find files on your network file server that clearly shouldn't be
                    there? Developers are notorious for creating temporary files and littering your
                    file system with them. So how can you identify exactly who created or modified the
                    file, and when?</p>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/networkauditing_00.gif" width="561" height="470">
                    </dt>
                    <dd>
                        Figure: Who created this file?
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/networkauditing_06.gif" width="411" height="176">
                    </dt>
                    <dd>
                        Figure: Terminal into your file server using Terminal Services
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/networkauditing_07.gif" width="404" height="448">
                    </dt>
                    <dd>
                        Figure: It was Jatin!
                    </dd>
                </dl>
                <p>
                    The easiest way is to configure <b>Windows file auditing</b>.</p>
                <p>
                    Thankfully, Windows XP and Server come with built-in file auditing. Any changes,
                    creates and deletes can be logged to your system event log. Here's how to set it
                    up.</p>
                <h3>
                    How to implement auditing on your file server</h3>
                <ol>
                    <li>Terminal Server into the file server</li>
                    <li>In Windows Explorer, locate the directory you want to configure logging for (e.g.
                        <b>C:\Inetpub\wwwroot</b> for logging changes to your web site files)</li>
                    <li>Select <b>Security</b> tab | <b>Advanced</b></li>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/networkauditing_01.gif" width="368" height="474">
                        </dt>
                        <dd>
                            Figure: Select the folder you want to configure auditing for
                        </dd>
                    </dl>
                    <li>Click the <b>Auditing</b> tab</li>
                    <li>Select the users whose usage you want to monitor (usually all users, so select <b>
                        Everyone</b>)</li>
                    <dl class="image">
                        <dt>
                            <img src="Images/networkauditing_02.gif" width="463" height="246">
                        </dt>
                        <dd>
                            Figure: Select Everyone so that anyone who modifies any of the files will be logged
                        </dd>
                    </dl>
                    <li>Select what you want to monitor. For best performance, we only tick the options
                        in shown in the figure below - there's no need to log when someone opens a file.</li>
                    <dl class="image">
                        <dt><img src="Images/networkauditing_03.gif" width="367" height="468"></dt>
                        <dd>Figure: Select these 4 options (only audit the events you need to audit - there's no need to log when someone opens a file)</dd>
                    </dl>
                    <li>Click <b>OK</b> and <b>OK</b> again to apply the changes. The process may take some time depending on the number of subfolders and files selected.</li>
                    <p> Now you need to configure the system event log.</p>
                    <li>Open <b>Control Panel->Administrative Tools->Event Viewer</b></li>
                    <li>Right-click the <b>Security</b> node and Control Panel | Administrative Tools | Event Viewer</li>
                    <li>Right-click the sure <b>Overwrite events as needed</b> is checked.
                    <dl class="image">
                        <dt><img src="Images/networkauditing_04.gif" width="404" height="448"></dt>
                        <dd>Figure: Keep your log file to about 250MB - otherwise your system performance may suffer</dd>
                    </dl>
                    </li>
                </ol>
                <h3>
                    Checking who created the file</h3>
                <p>
                    Now test to see if auditing is working.</p>
                <ol>
                    <li>On the server, create a file called &quot;test.aspx&quot; somewhere in the path that is being audited</li>
                    <li>Open <b>Control Panel-&gt;Administrative Tools-&gt;Event Viewer</b></li>
                    <li>Select the <b>Security</b> node, and notice the entries that have been created. They will have a similar format to the figure below.</li>
                        <dl class="image">
                            <dt><img border="0" src="Images/networkauditing_05.gif" width="599" height="453" /></dt>
                            <dd>Figure: Any creates, deletes and updates now get logged to the Event Log</dd>
                        </dl>
                </ol>
                <p>That's all! It is also great for finding out who accidentally deleted files from the file system.</p>
                <p>Furthermore, we can dump the event log to an Access or SQL Server database to make it easier to handle. Here is how to do it:</p>
                <ul>
                    <li><a href="http://rules.ssw.com.au/Documents/DumpEventLog2Db.zip">Download the scripts</a>: one for Access database and the other for SQL Server.</li>
                    <li>Find and change the strEventDBConn variable to your connection string, also, modify strEventDB and tblEvents variable to your database name and table name.</li>
                    <li>Write down the names of the servers to monitor in EventHosts.txt.</li>
                </ul>
                <p>Done, now you need only double click to start it.</p>
                <dl class="image">
                    <dt><img border="0" src="Images/EventLogger.gif" width="670" height="441" /></dt>
                    <dd>Figure: Caught an action on remote server and logged it to database</dd>
                </dl>
                <p>This script is originally from <a href="/ssw/Redirect/logicalexpressions.htm"> http://pubs.logicalexpressions.com/pub0009/LPMArticle.asp?ID=340</a> <img src="/ssw/Images/LeaveSite.gif" width="17" height="11" />.
                </p>
            </li>

            <li>
                <h2><a name="ups"></a>Do you have your UPS send an email when it kicks in?</h2>
                <p>
                    Of course all your servers are on UPS. (If not they should be!)
                    How do you know that all the money you paid for a UPS was worth it thought? How many times
                    has it saved our servers? How long do the battery's last for before they go flat? Why
                    was a server off when you came in in the morning?</p>
                <p>
                    If you get your UPS to email you when an event occurs then you will have answers
                    to these questions.</p>
                <p>
                    The problem is that there is no uniform software that will work with all UPS's as
                    they all have there own format.</p>
                <p>
                    All UPS's come with management software that can perform these actions. You just needs
                    to install it.</p>
                <p>
                    We use a MGE UPS so we use Personal Solution Pac which allows you to run script
                    files on events. We just call a script file which will send us an email.<br />
                    <img border="0" src="Images/MGEUPSSettings.gif" alt="" width="637" height="479"></p>
            </li>
            <li>
                <h2><a name="hardware"></a>Do you keep your network hardware reliable?</h2>
                <p>When purchasing new network hardware you should always choose the most reliable option.
                <br />At SSW we have discovered that:</p>
                    <ol>
                        <li>Linksys is the best.<br />
                            Google Answers helped in our decision - Linksys is the safer choice based on user ratings. <a
                                href="/ssw/Redirect/Google/Answers.htm" target="_blank">http://answers.google.com/answers/threadview?id=2588</a><img
                                    src="/ssw/Images/LeaveSite.gif" width="17" height="11" /><br />
                            <img src="Images/linksys.gif" alt="LinkSys" width="120" height="90">
                        </li>
                        <li>Netgear is OK. The hardware works, the drivers work, and the support is excellent.
                            <br />
                            However they tend to be &#8220;simple&#8221; devices. They generally lack advanced features and are aimed more toward the home user market.
                            <img src="Images/netgear.gif" alt="Netgear" width="120" height="90"><br />
                            <br />
                             </li>
                        <li>DLink is NOT recommended. We will never buy this brand ever again<br />
                            They tend not to last longer than the warranty period<br />
                            <img src="Images/dlink.gif" alt="DLink" width="120" height="90">
                        </li>
                    </ol>
                    <p>More Links:</p>
                    <ul>
                        <li><a href="/ssw/Redirect/CompNetworking.htm"
                            target="_blank">http://compnetworking.about.com/cs/wirelessrouters/tp/80211ghome.htm</a><img
                                src="/ssw/Images/LeaveSite.gif" width="17" height="11" /></li>
                        <li><a href="/ssw/Redirect/CNet.htm"
                            target="_blank">http://reviews.cnet.com/4566-3265_7-0.html?tag=srch&orderby=-7eRating&qt=&sort=edRating7+desc</a><img
                                src="/ssw/Images/LeaveSite.gif" width="17" height="11" /></li>
                    </ul>

            </li>
            <li>
                <h2>
                    <a name="changePassword"></a>Do you have a strict password security policy?</h2>
                <p>
                    We recommend enforcing strict password policies.</p>
                <p>
                    Below is a capture of the settings we use:</p>
                <p>
                    <img src="Images/DominPassword.gif" alt="Password" width="600" height="188" border="1"></p>
                <p>
                    When passwords have to be changed they must meet the following minimum requirements:</p>
                <ul>
                    <li>Not contain all or part of the user's account name </li>
                    <li>Be at least six characters in length</li>
                    <li>Contain characters from three of the following four categories:</li>
                    <ul>
                        <li>English uppercase characters (A through Z)</li>
                        <li>English lowercase characters (a through z)</li>
                        <li>Base 10 digits (0 through 9) </li>
                        <li>Non alphanumeric characters (e.g., !, $, #, %) </li>
                    </ul>
                </ul>
                <p>
                    Complexity requirements are enforced when passwords are changed or created.</p>
                <p>
                    Every 180 days clients will be required to change their password, they can change
                    it when:</p>
                <ul>
                    <li>Logon to their computer</li>
                    <li>Terminal server to another computer</li>
                    <li>VPN</li>
                </ul>
                <p>
                    This allows users to change their password by making a VPN connection to the office.</p>
                <p>
                    We also enforce a lockout policy so if a user gets their password wrong 5 times,
                    their account will be locked out for 15 minutes</p>
                <p>If you want to change your password
                        sooner, press [ctrl] [alt] [delete] then click "Change Password" button.</p>
            </li>

            <li><a name="DFS"></a>
                <h2>Do you use the Distributed File System for your file shares?</h2>
                <p>
                    Occasionally, one server and its drives will not have sufficient space to store
                    all related files in a network share. For example, you may have a &quot;SetupFiles&quot;
                    directory that stores all Setup executables on your network e.g. \\bee\SetupFiles.
                    There are problems with this approach.</p>
                <ol>
                    <li>
                        <p>
                            You will run out of space - which means you will have to copy or move old (but still
                            used) setup files around to other drives (\\bee\d$\SetupOld\ ) or other machines
                            e.g. \\tuna\SetupFiles. This fragmentation of your setup files can cause confusion
                            for your users.
                        </p>
                    </li>
                    <li>
                        <p>
                            When you retire or rename the old server, links to the old server location will
                            not work</p>
                    </li>
                </ol>
                <p class="MsoNormal" style="line-height: 12.75pt">
                    So how do you get around this problem? The answer is in the <b>Distributed File System
                        (DFS)</b>. Instead of having several server-specific file share locations, you
                    can have a domain-wide setup location that offers a seamless experience to your
                    users. DFS will even track a history of when and where file locations were moved.
                    </p>
                <p>
                    <img src="Images/Network_DistributedFileSystem.gif" alt="Password" width="600" height="439"></p>
                <p>
                    <span class="Caption">Figure: The Distributed File System consolidates many separate
                        file shares into one convenient location for your users</span>
                </p>
            </li>

            <li><a name="Wireless"></a>
                <h2>Do you secure your wireless connection?</h2>
                <p>Wireless networks are everywhere now. You can&#8217;t drive down the street without finding a network which is unsecure.However in an office environment there is a lot more to lose than a bit of bandwidth. It is vital that wireless is kept secure.</p>
                <dl class="bad">
                    <dt class="greyBox">WEP, No SSID broadcast, allowed MAC addresses are all OK but these are more home security.</dt>
                    <dd>Figure: Bad example - the above settings are not suitable for a company&#8217;s wireless access point</dd>
                </dl>
                <p>For the office you need something a bit more robust and not requiring much management overhead.</p>
                <dl class="good">
                    <dt class="greyBox">It is recommended to use Radius authentication to integrate with your Active Directory.</dt>
                    <dd>Figure: Good example - configure your wireless access point to authenticate against AD</dd>
                </dl>
                <p>This article explains how to setup your wireless AP to use WPA2-enterprise. WPA2-Enterprise verifies network users (AD a/c's) through a server (Domain controller).</p>
                <p>The recommended method of authentication is PEAP (Protected Extensible Authentication Protocol), which authenticates wireless LAN clients using only server-side digital certificates (In our case we used an AD CA) by creating an encrypted SSL/TLS tunnel between the client and the authentication server. The tunnel then protects the subsequent user authentication exchange.</p>
                <h4>Requirements:</h4>
                <ul>
                    <li>802.1X-capable 802.11 wireless access points (APs)</li>
                    <li>Active Directory with group policy</li>
                    <li>Network Policy Server (NPS) servers</li>
                    <li>Active Directory Certificate Services based PKI for Server certificates for NPS computer/s and your wireless PC's</li>
                </ul>
                <h4>Assumptions:</h4>
                <p>This document assumes you have some knowledge of how to configure your wireless access points and install server roles. It also assumes that you have already configured an Enterprise Certificate authority on your Active Directory Domain.</p>
                <ol>
                    <li><b>Configure your wireless access points</b>
                        <p>In SSW we use Cisco (Linksys) EA4500 Series access. I have configured these access points to:</p>
                        <dl class="image">
                            <dt><img src="Images/wireless-router.jpg" alt="Cisco Linksys EA4500 Series" /></dt>
                            <dd>Figure: EA4500 wireless router</dd>
                        </dl>
                        <ol>
                            <li>Broadcast the SSID</li>
                            <li>Use AES-CCM Cipher for encryption</li>
                            <li>Use WPA2 (mandatory)</li>
                            <li>Use the native vlan</li>
                            <li>Configure a shared secret that you will use with the NPS Radius server</li>
                        </ol>
                        <p>Recommend using WPA2-EAP with AES as your encryption cipher.</p>
                    </li>
                    <li><b>Install NPS on your server </b>
                        <p>On Windows 2008 or 2008 R2 open up the server manager and:</p>
                        <ol>
                            <li>Add the "Network Policy and Access Services" Role</li>
                        </ol>
                        <p>Under role services add:</p>
                        <ul>
                            <li>Network Policy Server</li>
                            <li>Routing and Remote Access Services</li>
                        </ul>
                    </li>
                    <li><b>Configure Radius Clients on NPS</b>
                        <p>Open up the NPS Console. Right click on "Radius Clients", and then click on "New".</p>
                        <p>Fill out the fields for Friendly Name (enter name of wireless access point), Address (IP address) and then add the shared secret (Keep this safe for example we use Keepass as a password repository) you configure on your access point.</p>
                        <dl class="image">
                            <dt><img src="Images/radius-client-settings.jpg" alt="Radius client settings " /></dt>
                            <dd>Figure: Radius client settings</dd>
                        </dl>
                    </li>
                    <li><b>Configure 802.1x on the NPS server</b>
                        <p>In the NAP servers  Server Manager, open "Roles", then "Network Policy and Access Services" then click on NPS (Local).</p>
                        <p>In the right hand pane under standard configuration choose "Radius Server for 802.1x Wireless or Wired Connections", and then click on "Configure 802.1X" to start a wizard based configuration.</p>
                        <ol>
                            <li>Select the top radio button &#8220;Secure Wireless Connections&#8221; click next</li>
                            <li>On the Specify 802.1X Switches Page check the AP's you have configured under Radius Clients are in that list then click next</li>
                            <li>Now the authentication method. From the Drop Down lists select Protected EAP (PEAP)<br />
                                <b>NOTE:</b> This method requires a Computer Certificate and the Radius Server and either a computer or user certificate on the client machine</li>
                            <li>Select the groups (eg. Domain\WirelessAccess) you would like to give wireless access to. You can do this by user or computer or both</li>
                            <li>If you need to configure VLan's in the next step, wasn&#8217;t required in my case I just used the defaults</li>
                            <li>You then need to register the server with Active Directory. So right click on NPS (local) and select Register Server in Active Directory<br />
                                <dl class="image">
                                    <dt><img src="Images/register-nap-server.jpg" alt="How to register NAP server with AD" /></dt>
                                    <dd>Figure: How to register NAP server with AD</dd>
                                </dl>
                            </li>
                        </ol>
                        <p>You should now have a Connection Request Policy, and a Network Policy. Remove the MS-CHAP v1 authentication method from the network policy (under the constraint's tab).</p>
                    </li>
                    <li><b>Configure Certificate Auto enrolment</b>
                        <p>First open Group Policy Management.</p>
                        <ol>
                            <li>Create a new GPO policy and name it "Cert_Enrollment_Wireless"  or whatever name you deem suitable and link it to the root of the domain or a specific OU depending on your needs and OU structure</li>
                            <li>Under the security filtering scope for what the policy gets applied to remove "Authenticated Users" and add your AD created. This ensures that the policy, once configured, is applied only to members of those groups.</li>
                            <li>Edit the settings of the group policy and go to:
                                <ol>
                                    <li>Computer Configuration\Policies\Windows Settings\Security Settings\Public Key Policies
                                        <p>In the details pane you need to right click the Certificate Services Client &#8211; Auto enrolment and then select properties.</p>
                                        <p>In the Properties dialog box select enabled from the drop down box and then place a tick in all the remaining tick boxes. This makes sure that the computer autoenrolls for a certificate from AD CA.</p>
                                    </li>
                                    <li>Now navigate to Computer Configuration\Policies\Windows Settings\Security Settings\Public Key Policies\Automatic Certificate Request Settings
                                        <p>Right Click in the details pane and select New | Automatic Certificate Request.</p>
                                        <p>This will open up a wizard and you can select a Computer Certificate.</p>
                                        <dl class="image">
                                            <dt><img src="Images/group-policy-settings.jpg" alt="Group policy settings " /></dt>
                                            <dd>Figure: Group policy settings </dd>
                                        </dl>
 
                                    </li>
                                </ol>
                            </li>
                        </ol>
                    </li>
                    <li><b>Creating a Vista (or XP) Wireless 802.1x GPO Policy (Vista policy works with Windows 7 & 8)</b>
                        <ol>
                            <li>Now go to Computer Configuration\Policies\Windows Settings\Security Settings\Wireless Network (IEEE 802.11) Policies
                                <p>Right click and Create a new policy for Windows Vista and later (if you only have XP machines, do only an XP one). If you have Vista you must do a Vista policy or else Vista will try to use the XP policy (not recommended).</p>
                            </li>
                            <li>Enter a policy Name (e.g. Beijing_Wifi_Settings) and description and link to the root of the domain.
                                <dl class="image">
                                    <dt><img src="Images/gp-link-scope-settings.jpg" alt="GP link and scope settings" /></dt>
                                    <dd>Figure: GP link and scope settings</dd>
                                </dl>
                            </li>
                            <li>Click "Add" and then enter a Profile Name and then Add the SSID name from the Wireless Access Point/s. Make sure the tick box "Connect Automatically when this network is in range" is ticked...</li>
                            <li>Click on the Security Tab
                                <p>Make sure Authentication is "WPA2-Enterprise" and Encryption is "AES).</p>
                                <p>Under "Select a network authentication method, choose "Microsoft: Protected EAP (PEAP).</p>
                                <p>Under Authentication Mode you need to choose whether you want to authenticate computers and/or users with your digital certs. Then select "Computer Authentication".</p>
                            </li>
                            <li>Click on the "properties" button
                                <p>Tick "Validate server certificate" and then tick "Connect to these servers". Enter the FQDN of the NPS.</p>
                                <p>Then under Trusted Root Certification Authority, tick your Root CA certificate. Then click OK.</p>
                                <dl class="image">
                                    <dt><img src="Images/connection-security-settings.jpg" alt="Connection security settings" /></dt>
                                    <dd>Figure: Connection security settings</dd>
                                </dl>
                            </li>
                            <li>Click OK twice.
                                <p><b>Optional: </b> Under Network Permission tab you can use the tick boxes to restrict clients to infrastructure networks or only GPO profiled allowed networks if you desire.</p>
                            </li>
                            <li>Click OK and you have completed your Vista Wireless Policy
                                <dl class="image">
                                    <dt><img src="Images/wifi-settings.jpg" alt="Wifi_Settings settings" /></dt>
                                    <dd>Figure: Wifi_Settings settings</dd>
                                </dl>
                            </li>
                        </ol>
                    </li>
                </ol>
            </li>

            <li><a name="companywordtemplate"></a>
                <h2>
                    Logon - Do you have a companywide word template?</h2>
                <dl class="badImage">
                    <dt>
                        <img src="images/BlankTemplate.jpg" alt="document without header and footer"></dt><dd>Figure:
                            Bad Example - creating an email/document does not have the company templates</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="images/GoodTemplate.jpg" alt="document with header and footer"></dt><dd>Figure:
                            Good Example - creating an email/document with the company templates</dd></dl>
                <p>
                    A companywide template will be implemented, so users have automatic footers to save
                    time and give better branding.
                </p>
                <p>
                    How to have a companywide word template:</p>
                <ul>
                    <li>Modify your Normal.dotm file to have the headings and format that you want for Word
                        document</li>
                    <li>Create standard employee email footer files e.g. JamesZhou.htm or JamesZhou.txt</li>
                    <li>Put the files on a network location - this is the place that will have the master
                        copies
                        <br />
                        e.g. \\ssw\ant\standardsinternal\template\ </li>
                        <!--SSW Code Auditor - Ignore next line(HTML)-->
                    <li>Have a logon script which is setup through Group policy that will copy the file
                        to the users computer when they logon.</li>
                </ul>
                <br />
                <dl class="goodImage">
                    <dt>
                        <img src="images/CompanywideTemplateNotes.jpg" alt="company templates"></dt><dd>Figure:
                            Good Example - company templates</dd></dl>
                <pre>
			           <centre> @ECHO OFF</centre>
<br />
ECHO This is in the default group policy - user section 

REM Copy template from network share
<br />
XCOPY /Y "\\ant\ssw\StandardsInternal\Templates" "%APPDATA%\Microsoft\Templates\"
<br />
ECHO. Templates Copied


REM Copy user outlook template from network share
<br />
COPY "\\ant\ssw\StandardsInternal\Templates\Outlook\SSW_%UserName%.htm" "%APPDATA%\Microsoft\Signatures\SSW.htm"
<br />
COPY "\\ant\ssw\StandardsInternal\Templates\Outlook\SSW_%UserName%.rtf" "%APPDATA%\Microsoft\Signatures\SSW.rtf"
<br />
COPY "\\ant\ssw\StandardsInternal\Templates\Outlook\SSW_%UserName%.txt" "%APPDATA%\Microsoft\Signatures\SSW.txt"
<br />
ECHO. Outlook Template Updated


ECHO. Write to log file
<br />
ECHO EXIT|%COMSPEC%/kPROMPT SSW Startup (\\cow\sysvol\sydney.ssw.com.au\Policies\{31B2F340-016D-11D2-945F-00C04FB984F9}\User\Scripts\Logon\sswlogon.cmd) Script Ran at $d $t >> C:\SSWLogin.log

:EXIT

                    </pre>
                <b>Figure above: This is how our script looks like in microsoft word. </b>
                <br />
                <p>
                    Note: We don't want people using .RTF emails so we include this message in SSW.rtf.
                    Be aware that we don't want to using RTF because of <a href="/ssw/Standards/BetterSoftwareSuggestions/Outlook.aspx#RemoveRTF">
                        Remove RTF as an option or explain when it is a good choice</a>
                </p>
                <p>
                    For more information of why we need to modify the Normal.dotm, you can access the
                    website below.</p>
                <p>
                    <a href="/ssw/Redirect/Microsoft/MSOfficeNormalTemplate.htm" target="_blank">
                        http://office.microsoft.com/en-us/word/HA100307561033.aspx</a><img src="/ssw/Images/LeaveSite.gif"
                            width="17" height="11" /></p>
            </li>

            <li><a name="Uptime"></a>
                <h2>
                    Do you monitor the uptimes of all your servers daily?
                </h2>
                <p>
                    It is important that the network administrator can easily find out how reliable his servers are.
                    This can be achieved using tools like What's Up Gold (Add a link to What's up gold better third party software) to monitor the uptime and 
                    SQL Reporting Services to create a report showing server uptime.
                </p>
                <p>
                    Here is a report that we use to monitor our servers on a daily basis
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="images/NW_Uptime_1.jpg" />
                    </dt>
                    <dd>
                        Figure: Good example - We can easily see the uptime of all our servers 
                    </dd>
                </dl>                
            </li>
            <li><a name="Notification"></a><h2>Do you know the right notification for backups?</h2>
            <p>You need to log a record on success so you can check for backups that have failed.</p>
            <dl class="badImage">
                    <dt>
                        <img src="images/backup_notification_bad.jpg" />
                    </dt>
                    <dd>
                        Figure: Bad example - an email is sent on completion
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="images/backup_notification_good.jpg" />
                    </dt>
                    <dd>
                        Figure: Good example - a record is logged on completion
                    </dd>
                </dl>
                <p>Now you are able to be aware of missing backups. You can make automatically notification based on above table e.g. 
                <a href="/ssw/KB/KB.aspx?KBID=Q1455840">by SQL Reporting Services data-driven subscription</a></p>
            </li>
            
        </ol>
        <h2>
            Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DH">Daniel Hyles</a><br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DDK">David Klein</a>
        </p>
    </div>
</asp:content>
