<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Windows 2003" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>
        In ages gone by your Windows Server network wasn't such an important item in the
        SME setup. You only had to worry about storing a few files and mdb's, and manage
        one or two 56 kbps connections to the Internet.</p>
    <p>
        Now it's highly likely that Windows Server administration is absolutely crucial
        to the daily running of your business. Through Windows Server you manage remote
        workers, Web Services connections to other businesses, your own website using IIS
        and beyond.</p>
    <p>
        Here's a series of rules that help Windows Server 2003 Administrators ensure they
        are making the most of the functionality it provides. Do you agree with them all?
        Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F25323042657474657225323057696E646F777332303033')">
            Let us know</a> what you think.</p>
    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
        align="right" style="{width: 100%; }">
        <tr>
            <td>
                <b>Rules to Better Windows 2003 Networks</b><br>
                <ol>
                    <li><a href="#CopyOfData">Do you back up data from your notebooks to a network location?
                    </a></li>
                    <li><a href="#backup">Do you have an automatic method of checking backups?</a></li>
                    <li><a href="#ServersFixedIP">Do your servers have fixed IP address?</a></li>
                    <li><a href="#VPNIPRange">Do you have a set IP range for VPN users?</a></li>
                    <li><a href="#SUSAutomaticUpdates">Do you use Software Update Services to automatically
                        distribute updates across your LAN?</a></li>
                    <li><a href="#diagnostics">Is all your software up to date?</a></li>
                    <li><a href="#ConnectToDomain">When connecting to another domain dont use \\computer\sharename</a></li>
                    <li><a href="#monitor">Can I get notified when the server goes down?</a></li>
                    <li><a href="#UsingPerformanceMonitor">Using Performance Monitor</a></li>
                    <li><a href="#RAID">Have you configured your RAID notification software?</a></li>
                    <li><a href="#DesktopSearch">Don't install Windows Desktop Search on our servers</a></li>
                </ol>
            </td>
        </tr>
    </table>
    <ol>
        <li>
            <h2>
                <a name="CopyOfData"></a>Do you a back up data from your notebooks to a network
                location?
            </h2>
            <p>
                Notebooks roam these days, and you have to ensure that the data is being backed
                up. The way we do it is either:</p>
            <p>
                a) keep all your files on the server and use Windows Offline Files
                <br>
                <!--SSW Code Auditor - Ignore next line(HTML)-->
                &nbsp;&nbsp;&nbsp; - from a server perspective we force a synchronize on logon via
                group policy<br>
                &nbsp;&nbsp;&nbsp; - from a client perspective they can run extra sync via &quot;Synchronize&quot;
                <br>
                b) keep all your files on the notebook and use a program to copy to the server daily<br>
                <!--SSW Code Auditor - Ignore next line(HTML)-->
                &nbsp;&nbsp;&nbsp; - from a server perspective we force a synchronize on logon via
                group policy<br>
                &nbsp;&nbsp;&nbsp; - from a client perspective they can run extra sync via &quot;Scheduled
                Tasks&quot;
            </p>
            <p>
                We go option b) because have had funny experiences with Office Files<br>
                <br>
                Each user has a few standard directories for keeping data that needs to be backed
                up. A simple batch file is used to copy the contents of these folders to a network
                location. The batch file uses Robocopy, a utility developed by Microsoft for efficiently
                copying and synchronising large numbers of files.</p>
            <p>
                Here is a screenshot of a sample batch file:
            </p>
            <dl class="image">
			    <dt><img src="/ssw/Standards/Rules/Images/BackpBat.gif" width="998" height="322" /></dt>
                <dd>Figure: Batch file used to copy entire folders to the backup location</dd>
			</dl>
            <p>
                This batch file refers to a central shared file called Robocopy.bat, shown here:</p>
            <dl class="image">
			    <dt><img src="Images/RobocopyBatchFile.gif" width="1052" height="230" /></dt>
                <dd>Figure: The central Robocopy.bat calls Microsoft's Robocopy program</dd>
			</dl>
            <p>The user's batch file is executed each day through Scheduled Tasks:</p>
            
            <dl class="image">
			    <dt><img src="Images/BackupScheduledTask.gif" width="775" height="230" /></dt>
                <dd>Figure: Scheduled task for executing the backup batch file</dd>
			</dl>
			<p>After the transfer is completed, the user sees a summary of the files copied and
                any errors that occurred. A detailed report is also logged to the network backup
                location where administrators can check it.</p>
            <p>
                <p>
                    <table class="clsSSWTable" cellspacing="2" cellpadding="2">
                        <tr>
                            <td>
                                Note: Microsoft Robocopy seems to have problems with paths longer than 256 characters.
                            </td>
                        </tr>
                    </table>
                </p>
        </li>
        <li>
            <h2>
                <a name="backup">Do you automatically backup your servers?</a></h2>
            <p>
                Backups can be done lots of ways. Servers are the first thing people look at, and
                the way we recommend is to have a backup server. Disk space is cheap so tape drives
                are out.<br />
                <br />
                <ul>
                    <li>Have the Exchange backup to a file on the server (on a rolling 5 day plan + rolling
                        2 monthly plan) </li>
                    <li>Have the SQL Server backup to a file on the server (on a rolling 5 day plan + rolling
                        2 monthly plan) </li>
                    <li>Have the File Server backup to a file on the server (on a rolling 5 day plan + rolling
                        2 monthly plan) </li>
                    <li>Have the Web Server backup to a file on the server (on a rolling 5 day plan + rolling
                        2 monthly plan) </li>
                    <li>Have the SharePoint backup to a file on the server (on a rolling 5 day plan + rolling
                        2 monthly plan) - generally we don't have documents in SharePoint but the Workspaces
                        need backing up.</li>
                </ul>
            </p>
            <p>
                <b>Backups with SQL Server 2000 Enterprise</b></p>
            <p>
                Using SQL Server 2000 Enterprise, the DBA can back up and restore databases and
                T log files. The DBA can schedule backups to occur at off hours, direct backups
                on remote disks to occur across the network, and configure the monitoring agent
                to send email and page alerts if the backups are unsuccessful. More could be found
                at <a href="/ssw/Redirect/backuprt.htm">this web site<img src="/ssw/Images/LeaveSite.gif"
                    width="17" height="11" /></a>
            </p>
        </li>
        <li>
            <h2>
                <a name="ServersFixedIP"></a>Do your servers have fixed IP address?</h2>
           
            <p>
                IP address management is important in any network. Generally a DHCP server will
                find its way into most networks, unless you specify your servers IP address they
                will get a random IP from the DHCP server. Letting your servers get a random IP
                is a bad idea as IP's are usually referred directly to servers in network config,
                firewall settings, port redirection, and generally annoying as you cannot remember
                the IP.</p>
            <p>
                For a small network, we reserve a small band of IP's for servers/printers like 192.168.1.1
                - 192.168.1.20</p> 
        </li>
        <li>
            <h2>
                <a name="VPNIPRange"></a>Do you have a set IP range for VPN users?</h2>
            <p>
                Network monitoring and review is an important part of a network administrators job
                especially if external bandwidth is used. You should know how much bandwidth your
                VPN clients and other VPN offices are using. You should also be able to easily investigate
                what traffic can be minimised.
                </p>
                <p>
                    By assigning an IP range within your Routing and Remote Access server, you are able
                    to filter logs based on these IP addresses and distinguish unnecessary traffic.
                </p>
                    <p>
                        To set this up go Start -&gt; Administrative Tools -&gt; Routing and Remote Access.
                        Right click the server and go Properties. Click the IP tab and select &quot;Static
                        address pool&quot;. Click the Add button and enter in the IP range you wish to
                        use.
            </p>
        </li>
        <del><li>
            <h2>
                <a name="SUSAutomaticUpdates"></a>Do you use Software Update Services to automatically
                distribute updates across your LAN?</h2>
            <p>
                The <a target="_blank" href="/ssw/Redirect/Blaster.htm">Blaster</a>
                <img border="0" src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17" height="11">
                worm has ripped through the world with blistering speed infecting countless computers
                using Microsoft operating systems. Microsoft are now licking their wounds and many
                users are in damage control. Network administrators who have not been diligent with
                their updates and patches are now being asked to explain themselves. How do you
                fix it? The simple solution is <b>Automatic Updates</b>, the better solution is<b> Software
                    Update Services</b>. Whilst enabling automatic updates on your windows settings
                seems like a quick and easy fix, and it could improve our network, there are some things that you need to know about
                this:</p>
            <ol>
                <li>Regardless of when you download the update, it needs to be installed to avoid all
                    risks of getting STUNG.</li>
                <li>If you do have it set to automatically update, and you need then you&#39;ll be paying
                    through the nose in download usage every month for patches on every machine on your
                    network. </li>
            </ol>
            <p>
                If you&#39;re going to use this method you can get to the automatic updates options
                by going to Start &gt; Control Panel &gt; System &gt; Automatic Updates.</p>
            <dl class="image">
			    <dt><img src="/ssw/Standards/Rules/Images/AutomaticUpdates.gif" alt="Automatic Updates"
                    width="418" height="484" /></dt>
                <dd>Figure: Set the Automatic Updates</dd>
			</dl>
<p>                The avoid the problems associated with enabling automatic updates on your computer
                we think that the best solution to this problem for middle to large organizations
                is to use Microsoft Software Update Services. This nifty little download allows
                you to download patches ONCE and then, when approved, get every client machine patched
                from the one location.</p>
            <p>
                Server Requirements:
            </p>
            <ul>
                <li>Windows 2000 Server (SP2 or later) / Windows 2003 Server with Software Update Services
                    1.0 SP1</li>
                <li>Dedicated server recommended</li>
                <li>IIS 5.0 or later and IE 5.5 or later required</li>
            </ul>
            <p>
                Client Requirements:
            </p>
            <ul>
                <li>Windows 2000 or later</li>
            </ul>
            <p>
                Be aware that the server will download all the current Microsoft updates the first
                time you synchronise with the Microsoft servers. This is a lot of updates and is
                a couple gigs worth of downloads. This feature is activated through group policy.
            </p>
             <dl class="image">
			    <dt><img src="/ssw/Standards/Rules/Images/SoftwareUpdateServices.gif" alt="Software Update Services"
                    width="600" height="469" /></dt>
                <dd>Figure: Use the Software Update Services</dd>
			</dl>
            <p>
                Information on installing and configuration SUS is found on <a href="/ssw/Redirect/Microsoft/SoftwareUpdateServices.htm"
                    target="blank">Microsoft Software Update Services</a>
                <img src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17" height="11">
            </p>
        </li></del>
        <li>
            <h2>
                <a name="diagnostics"></a>Is all your software up to date?</h2>
            <p>
                Using the latest software versions helps minimize security threats, and keeps your
                system stable. While Microsoft provides us with Windows Update, what about all our
                other software? Do you open all your software regularly to see if it needs an update?
            </p>
            <p>
                SSW Diagnostics scans through your system, and displays a report on which versions
                of common software you have installed, and where to get the latest version.
                <br>
                It's free, so <a href="/ssw/Diagnostics/">download it now</a> and make sure you
                have all green ticks.</p>
            <p>
                <br>
            </p>
        </li>
        <li>
            <h2>
                <a name="ConnectToDomain"></a>When connecting to another domain dont use \\computer\sharename</h2>
            <p>
                When you are connecting to another computer don't go
                <br>
                Start &gt; Run then enter in the Computer name</p>
            <p>
                This method can take ages to connect. Instead connect to another computer using<br>
                Tools &gt; Map Drive<br>
                </p>
            <dl class="image">
			    <dt><img src="Images/ConnectToComputer.gif" width="300" height="221"  alt="Connect To Computer" /></dt>
                <dd>Figure: Use map drive to connect to another computer</dd>
			</dl>
            <p>
                It is very faster. I dont know why but it just is.</p>
        </li>
        <li>
            <h2>
                <a name="monitor"></a>Can I get notified when the server goes down?</h2>
            <p>
                Although Windows 2003 Server does come with alerts you can make email you when things
                go wrong with the server, we choose to use a network wide monitoring tool like <a href="/ssw/Standards/DeveloperGeneral/WindowsTools.aspx#WhatsUpGold" target="_blank">
                WhatsUp Gold</a>.
            </p>
            <p>
                Some advantages of using such a tool are:</p>
            <ul>
                <li>You are able to monitor all the computers/routers in your network from one central
                    location</li>
                <li>You can get alerts on many different devices when something fails</li>
                <li>You can monitor many different services on a device</li>
            </ul>
            <p>
            <dl class="image">
			    <dt><img src="Images/WhatsUp.gif" alt="What's Up" /></dt>
                <dd>Figure: WhatsUp Gold can help you do more network management works</dd>
			</dl>
        </li>
        <li>
            <h2>
                <a name="UsingPerformanceMonitor"></a>Using Performance Monitor
            </h2>
            <p>
                You can see the details on <a href="/ssw/Standards/DeveloperInstallationNetworkSetup/UsingPerformanceMonitor.aspx" target="_blank">SSW Using Performance Monitor</a>
            </p>
        </li>
        <li>
            <h2>
                <a name="RAID"></a>Have you configured your RAID notification software?</h2>
            <p>
                We all know that hardware RAID is faster, more stable, easier to recover from a
                disaster, etc than software RAID.
                <br>
                The only problem is that with cheap RAID cards or onboard RAID there is not enough
                information about your hardware and what its doing without having to reboot the
                computer and enter the RAID configuration.
                <br>
                More expensive RAID cards have software that comes with it that enables you to configure
                your hardware within windows.
            </p>
            <dl class="image">
			    <dt><img src="Images/HighpointRAID.gif" width="600" height="358" /></dt>
                <dd>Figure: Use RAID management tool</dd>
			</dl>
            <p>
                The advantage of this software is that it generally comes with some monitoring service
                that can notify you if there a hardware problem or fault. It is very important that
                you get a RAID card that has this ability. This way you will always know that your
                servers are ok unless you get notified.</p>
            <dl class="image">
			    <dt><img src="Images/HighpointRAID2.gif" width="488" height="188" /></dt>
                <dd>Figure: RAID management tool can do many kinds of management</dd>
			</dl>
        </li>
        <li>
            <h2>
                <a name="DesktopSearch"></a>Don't install Windows Desktop Search on our servers</h2>
            <p>
                Windows Desktop Search is an indexed desktop search platform that can be used to find files or content conveniently. 
                But WDS stores its index in the folder it is indexing, this was causing our backups to fail. 
                If you want to take advantage of its feature, you can install it on your own computer, but don't slow down our servers. 
            </p>
        </li>
    </ol>
    <p>
        <h2>
            Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DH">Daniel Hyles</a><br>
            Tim Kremer</p>
</asp:Content>
