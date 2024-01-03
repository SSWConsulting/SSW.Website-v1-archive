<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW The Best 3rd Party Windows 8 Tools"  %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
		
      <div class="TableOfContents">
        <h3>Windows 8 Tools (Most of these are relevant to Windows 7 too)</h3>
        	<ol>
				<li><a href="#ModernMix">ModernMix</a></li>
                <li><a href="#Chocolatey">Chocolatey</a></li>
                <li><a href="#WinDirStat">WinDirStat</a></li>
				<li><a href="#Skype">Skype</a></li>
				<li><a href="#Snagit">Snagit</a></li>
	            <li><a href="#CommandSync">Command Sync</a></li>
				<li><a href="#VMWare">VMWare</a></li>
				<li><a href="#Benchmark">Windows Benchmarking Utility For Performance</a></li>
				<li><a href="#PCMark2002">MadOnion PCMark2002</a></li>
				<li><a href="#Backup">Robocopy (for backup)</a></li>
                <li><a href="#Bginfo">Bginfo</a></li>
                <li><a href="#BeyondCompare">Beyond Compare</a></li>
                <li><a href="#DriverAgent">Driver Agent</a></li>
                
                <li><a href="#Alternative">K-Lite Codec Pack, Real Alternative, QuickTime Alternative</a></li>
                
                <li><a href="#WhatsUpGold">WhatsUp Gold</a></li>
                <li><a href="#NetBalancer">NetBalancer</a></li>
                <li><a href="#MediaCenter">XMLTV Guide Pack (aka TV channel guide for Media Center)</a></li>
                <li><a href="#TeraCopy">TeraCopy</a></li>
                <li><a href="#LiveWriter">Windows Live Writer</a></li>

                <s><li><a href="#SSWDiagnostics">SSW Diagnostics (Replaced by Chocolatey)</a></li></s>
                <s><li><a href="#InstallPad">InstallPad (Replaced by Chocolatey)</a></li></s>
                <s><li><a href="#Ninite">Ninite (Replaced by Chocolatey)</a></li></s>
                <s><li><a href="#Winzip">WinZip (Replaced by 7zip)</a></li></s>
                <s><li><a href="#FolderShare">Folder Share</a></li></s>
                <s><li><a href="#DUMeter">DU Meter</a></li></s>
            </ol>      
		</div>
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D54686525323042657374253230546F6F6C73253230466F7225323057696E646F7773')">
    Let us know</a> what you think.</p> 

<p>
 would you like your software to be considered for this list?  
	<a href="TheBest3rdPartyTools.aspx#HowToGetMyToolsConsidered">Give us your details</a>.
</p>
		<ol>
            <li><h2><a name="ModernMix"></a>ModernMix</h2>
            <ul>
                <li>Run Windows 8 Modern apps in a window on the desktop</li>
                <li>Display and pin Modern apps on the taskbar</li>
                <li>Explicitly close Modern apps by clicking its close button</li>
            </ul>
            <p><a href="http://stardock.com/products/modernmix/" target="_blank">ModernMix website</a></p>
		    </li>

            <li><h2><a name="Chocolatey"></a>Chocolatey</h2>
            <p>When you use chocolatey to install applicatons/tools, nearly all you need to do is type one line and let it finish the rest.</p>
            <p><a href="http://chocolatey.org/" target="_blank">Chocolatey website</a></p>
		    </li>

            <li>
			<a name="WinDirStat"></a>
			<h2>WinDirStat</h2>
		
			<p>WinDirStat is a useful tool to show which folders are consuming the most storage. It gives directory listings and a heat map chart that lets the user drill down to find where space is being consumed. WinDirStat can be installed using Chocolately:</p>
			<p class="greyBox">choco install windirstat</p>
                <dl class="image">
			    <dt><img src="Images/WinDirStat.jpg" alt="WinDirStat"></dt>
			    <dd>Figure: WinDirStat showing</dd>
			</dl>
		</li>	
		
		<li>
			<a name="Skype"></a>
			<h2>Skype</h2>
			<p>
				Welcome to the future of voice communication! Skype is an easy to use piece of software that allows you to make phone calls over the Internet at a fraction of the cost of 
				regular telephone calls.  
			</p>
			<p>
				All you need to get up and running is a headset that plugs into 
				your computer, and some bandwidth.  
			</p>
			<dl class="image">
			    <dt><img src="Images/Skype.jpg" alt="skype screen" ></dt>
			    <dd>Figure: The Skype Window is very easy to use</dd>
			</dl>
			<a href="/ssw/Redirect/Skype.htm" target="_blank" class="external">Skype Website</a>
			<p>
				&nbsp;</p>	
		</li>
		<li>
			<a name="Snagit"></a>
			<h2>Snagit</h2>

			<p>
				You need a good screenshot utility because a picture can tell a thousand words. Snagit is a screenshot 
				utility for users who needs an effortless, effective way to work with "snapshots" of Windows screens. It's 
				perfect for images you want to include in manuals, training handouts, presentations, marketing materials, 
				and web pages.
			</p>
			<p>See our rule on <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/HowToUseBalloons.aspx">How To Use Balloons</a> and configure your Snagit.</p>
			<p>
				I might of made it number 1, however the support for this product is unfriendly.
			</p>
			<dl class="Image">
			    <dt><img src="Images/snagit-screenshot.jpg" alt="Screenshot of the Snagit windows"></dt>
			    <dd>Figure: Screenshot of the Snagit windows</dd>
			</dl>
			<a href="http://www.techsmith.com/snagit/" target="_blank">Snagit Web Site</a>		
		</li>
		<li>	
			<a name="CommandSync"></a>
			<h2>Command Sync</h2>
		
		
			<p>
				Theres a lot of ways to make sure you have a backup, the common way is to store your files on a server, 
				but with notebooks everywhere its is not a good option.
			</p>
			<p>
				Comm Sync is a utility which you can configure to copy all the directories you want and copy it to 
				the server. It will copy only changes and you can set it up in task scheduler and forget about it.
			</p>
			<p>
				CmdSync is the command line version of FileSync designed for batch and/or scheduled synchronisation. 
				It is completely parameter driven and allows synchronisation in either or both directions as 
				well as optionally including sub-folders and handling the timestamp incompatibility of different file systems. 
			</p>
			<dl class="image">
			    <dt><img src="Images/cmdsync.gif" alt="" width="600" height="419"></dt>
			    <dd>Figure: Cmd Sync command line tool</dd>
			</dl>
			<a href="/ssw/Redirect/Web/Cmd.htm" target="_blank" class="external">Cmd Sync Web Site</a>
			
		</li>
		
		<li>
			<a name="FolderShare"></a>
			<h2>Folder Share</h2>
			
			<p>
				FolderShare allows you to create a private peer-to-peer network that will help you to synchronize files across 
				multiple devices and access or share files with colleagues and friends. 
			</p>
			<p>
				By using FolderShare together with MSN desktop search, you can even search your computer's local content remotely and download 
				files from your computer from anywhwere. 
			</p>
			<dl class="image">
			    <dt><img src="Images/FolderShare.gif" alt="" width="803" height="793" ></dt>
			    <dd>Figure: Folder Share helps you to sync files over Internet</dd>
			</dl>
			<br>
			
			<div class="greyBox">
			<p>Sharing photos via Folder Share is much faster and easier then using emails.</p></div>
			<a href="/ssw/Redirect/FolderShare.htm" target="_blank" class="external">Folder Share Web Site</a>
	

		</li>
		
			
			
		
			
		<li>	
			<a name="VMWare"></a>
			<h2>VMWare</h2>
		
		
			<p>
				VMware Workstation is virtual machine software for technical professionals. It lets you 	
				work on multiple operating systems on a single computer. You spend less time configuring 
				hardware, installing software, and rebooting or reconfiguring systems, and more time developing, 
				testing, and deploying applications and delivering support. VMware Workstation gives you immediate 
				access to the operating systems and applications you need to get your job done now. 
			</p>
			<dl class="image">
			    <dt><img src="Images/vmware.gif" alt="" width="250" height="188"></dt>
			    <dd>Figure: Windows 2000 running VMWare with Windows XP</dd>
			</dl>
			<br />
				<a href="/ssw/Redirect/Vmware.htm" target="_blank" class="external">VMWare Web Site</a>
				
		</li>	
		<li>
			<a name="Benchmark"></a>
			<h2>Windows Benchmarking Utility For Performance (Sisoft Sandra)</h2>
		
			<p>
				Running out of bribes to entice your computer-savvy friend to check on your 
				PC? This utility's benchmarking, diagnostic, testing, and tune-up tools gather 
				and report information about your system's hardware and resources.
			</p>
			<p>
				You can check components ranging from your CPU, BIOS, and PCI bus, to your 
				printer, CD-ROM drive, and modem. A built-in wizard helps you gather the information 
			    to optimize your system. You can save, print, fax, and email system reports 
			    from within the program. 
			</p>
			<dl class="Image">
				<dt><img src="Images/SisoftSandra.gif" alt="" width="165" height="125"></dt>
				<dd>Figure: Benchmarking Utilities</dd>
			</dl>
				<a href="/ssw/Redirect/Sisoft.htm" target="_blank" class="external">Sisoft Sandra Web Site</a>
        </li>
			
		<li>
			<a name="PCMark2002"></a>
			<h2>MadOnion PCMark2002</h2>
		</li>
	
			<p>
				PCMark2002 is a benchmarking tool used to measure generic PC performance in home and office use. 
				PCMark2002 is unique in that it measures computer performance at a low level. As a result, the 
				program is relatively small - only 8.8 MB to download.
			</p>
			<p>
				It also has an integrated Online ResultBrowser that instantly compares results against the world's 
				largest database of performance data. This application can be very helpful for managers to find out how 
				good their computers really are; e.g. when their employees complain about performance.
			</p>
			<p>
				PCMark2002 is available in a feature limited free Version.
			</p>
			<p>
			<a href="/ssw/Redirect/FutureMark.htm" class="external">FutureMark Website</a> 
			</p>

		<li>
			<a name="Backup"></a>
			<h2>Robocopy (for backup)</h2>

			<p>
        		Robocopy is a powerful tool for mass data migration and server consolidations. 
        		The tool operates as a command-line and is included in the Microsoft 
				Windows 2000 Resource Kit. Robocopy is utilized on a regular basis at 
				SSW, running daily at lunch time (1:30pm), hence ensuring that files 
				are secure and backed up.
			</p>
			<dl class="image">
			    <dt><img src="Images/robocopy.gif" alt="" width="600" height="295"></dt>
			    <dd>Figure: Robocopy</dd>
			</dl>
			
			<br><a href="/ssw/Redirect/Robocopy.htm" target="_blank" class="external">Robocopy Website</a>
				
			<p>        
				Another good backup program is Arctor. It is not free, but has more functions than Robocopy. 
			</p>
			<div class="topoflist">
				Advantages are:
			<ul>
				<li>It zips all the files it backs-up saving space </li>
				<li>It can store different versions of files and delete them after there is to many versions or the 
				time period is over. That allows you to have full weeks of changes worth on one disk</li>
			</ul>
			</div>
			<div class="topoflist">
				Disadvantages are:
			<ul>
				<li>No command line arguments can be used</li>
				<li>The backup process is very slow as each file is ziped</li>
			</ul>
			</div>
			<dl class="image">
			    <dt><img src="Images/arctor.jpg" alt="" width="600" height="414"></dt>
			    <dd>Figure: Arctor GUI</dd>
			</dl>
				<br><a href="/ssw/Redirect/Arctor.htm" target="_blank" class="external">Arctor Website</a>
		</li>
		<li>
			<a name="Bginfo"></a>
			<h2>Bginfo</h2>
		
			<p>
        		Bginfo is a little sysinternals application that will create a background image with information from the computer that it is running on. This is great when you have a rack full of computers and a KVM to switch between them. You can see quickly and easily which serve you are connected to.
			</p>
			<p>
            <!--SSW Code Auditor - Ignore next line(HTML)-->
			    You add a link to the computer setup folder and whenever you login a new bitmap will be generated with updated information and taking into account your resolution. This means that you can display info like available hard disk and uptime and it will always be up to date.
			</p>
			<dl class="image">
			    <dt><img src="Images/BgInfo.gif" width="576" height="432"></dt>
			    <dd>Figure: Bginfo in action</dd>
			</dl>
			<br><a href="/ssw/Redirect/Bginfo.htm" target="_blank" class="external">Bginfo Website</a>
		</li>
        <li>
			<a name="BeyondCompare"></a>
			<h2>Beyond Compare</h2>
		
			<p>
				Beyond Compare is a powerful time-saving utility for comparing files 
				and folders on your Windows system. Beyond Compare does both FTP and 
				Folder Synchronization. The UI for comparison is the same for both FTP and File-based modes.
			</p>
			<p>
				<a class="external" href="http://www.ssw.com.au/ssw/Standards/DeveloperGeneral/WebdevelopmentTools.aspx#BeyondCompare" target="_blank">Get more Details about Beyond Compare by 3rd Party Web Development Tools</a>
            </p>
         </li>	
         <li>
            <a name="DriverAgent"></a>
            <h2>Driver Agent</h2>
            <p>
                We can use Windows Update to 
                download the latest patch for our operation system; but how do I keep my hardware drivers up to date? 
                
            </p>
            <p>
                Driver Agent can help you to scan your computer and generate a driver status report for you, and if 
                you registered, you can even download the latest driver from them. 
            </p>
            <dl class="image">
                <dt><img src="images/DriverAgentResult.GIF" border="0" width="492" height="1036" /></dt>
                <dd>Figure: Scan result for my laptop computer</dd>
            </dl>
            <br />
            <a href="/ssw/Redirect/DriverAgent.htm" class="external" target="_blank" >Driver Agent</a>
         </li>
         
         <li>
            <a name="Alternative"></a>
            <h2>K-Lite Codec Pack, Real Alternative, QuickTime Alternative</h2>
            
            <p>
                People install QuickTime to play .mov.</p>
                            <p>
                                People install Real Player to play real media files eg. rmvb, .rm.</p>
     We don't actually need that, the easier way is just install the codec, and you 
                 can use 1 media player (your favorite one, usually Media Player) to play all 
                 different formats. 
                            <p>
                                <b>The best one is (Lei's favorite): </b>
            </p>
             <ol style="list-style-type: circle">
                 <li><a href="/SSW/Redirect/Softpedia.htm">Vista Codec Package (includeing RealMedia and QuickTime components)</a>
                 </li>
             </ol>
                            <p>
                                <b>Alternative are (Ryan's favorite):  
            </b>  
            </p>
                        <ul>
                            <li><a href="/SSW/Redirect/Codeguide.htm">K-Lite Codec Pack</a> (.avi - divx, xvid) </li>
                            <li><a href="/SSW/Redirect/Codeguide1.htm">Real Alternative</a> (.rm, .rmvb, etc...) </li>
                            <li><a href="/SSW/Redirect/Codeguide2.htm">QuickTime Alternative</a> (.mov)</li>
                        </ul>
         </li>		
         <li>
            <a name="NetBalancer"></a>
            <h2>NetBalancer</h2>
            <p>Netbalancer is an awesome networking tool with so many features; useful for developers, sysadmins and users alike:</p>
             <ul>
                 <li>Set upload and download limits for any process </li>
                 <li>Monitor processes to see how much bandwidth is being used</li>
                 <li>Define rules and filters (ie restrict OneDrive from syncing files when on a specific connection)</li>
                 <li>Awesome charts to visualise data usage</li>
             </ul>

            <dl class="image">
                <dt><img src="images/netbalancer-main.jpg" alt="netbalancer-main.jpg" /></dt>
                <dd>Figure: NetBalancer Main Window</dd>
            </dl>

             <dl class="image">
                <dt><img src="images/netbalancer-traytool.jpg" alt="netbalancer-traytool.jpg" /></dt>
                <dd>Figure: NetBalancer Tray Tool</dd>
            </dl>
             <p>NetBalancer comes in free and paid versions, with the free version being limited to 3 process priority limits and 3 active rules. </p>
            <p>NetBalancer can be installed using Chocolatey using the following command:</p>
            <p class="greyBox">choco install netbalancer</p>

            </li>
         <li>
            <a name="WhatsUpGold"></a>
            <h2>WhatsUp Gold</h2>
            <p>WhatsUp Gold is the world's leading network management solution with over 70,000 networks reliably managed worldwide. With four distinct product editions all based on the same scalable architecture, WhatsUp Gold delights network engineers and networking-oriented IT pros with powerful capabilities such as automated device discovery, graphical network mapping, SNMP v1-3 and WMI monitoring, and versatile alerting, notification and reporting functionality.
            </p>
            <dl class="image">
                <dt><img src="images/WhatsUpGold.gif" alt="WhatsUp Gold" /></dt>
                <dd>Figure: WhatsUp Gold can help you do more network management works</dd>
            </dl>
            <br />
            <a href="/ssw/Redirect/WhatsUpGold.htm" class="external" target="_blank" >WhatsUp Gold</a>
            </li>
           
            <li>
            <a name="MediaCenter"></a>
            <h2>XMLTV Guide Pack (aka TV channel guide for Media Center)</h2>
            <p>Their software is great, the name is not great, now the URL you use to download it.</p>
            <dl class="image">
                <dt><img src="images/GuideServiceProxy.jpg" alt="" /></dt>
                <dd>Figure: Load XMLTV data into Windows Media Center!</dd>
            </dl>
            <p>First download it from <a href="/ssw/Redirect/XMLTV.htm" class="external" target="_blank" >XMLTV</a> (5 MB)</p>
            <p>Second watch <a href="/ssw/Redirect/XMLTVVideoGuide.htm" class="external" target="_blank" >XMLTV Video Guide</a> </p>
            </li>
            <li>
            <a name="TeraCopy"></a>
            <h2>TeraCopy</h2>
            <p>TeraCopy is a great software to copy/move files at a maximum possible speed. It is a free replacement for default Windows copy/move operations. It offers following features:<br />
            <ul>
            <li>Copy files faster.</li>
            <li>Pause and resume file transfers.</li>
            <li>Error recovery.</li>
            <li>Interactive file list.</li>
            <li>Shell integration.</li>
            <li>Full Unicode support.</li>
            <li>Windows 7 x64 support.</li></ul>
            </p>
            <dl class="image">
                <dt><img src="images/TeraCopy.png" alt="TeraCopy" /></dt>
                <dd>Figure: Copying files using TeraCopy</dd>
            </dl>
            <p>Download <a href="/ssw/Redirect/TeraCopy.htm" class="external" target="_blank">TeraCopy</a></p>
            </li>

            <li>
                <h2>Windows Live Writer<a name="LiveWriter"></a></h2>
                <p>Windows Live Writer, developed by Microsoft, is a desktop blog-publishing application that is part of the Windows Live range of products. It features WYSIWYG authoring, photo-publishing and map-publishing functionality, and is currently compatible with Windows Live Spaces, SharePoint blogs, Blogger, LiveJournal, TypePad, WordPress, Telligent Community, PBlogs.gr, JournalHome, the MetaWeblog API, the Movable Type API, Blogengine, Squarespace, and all blogs that support RSD (Really Simple Discoverability).</p>
                <p>Windows Live Writer introduces the Provider Customization API that enables both rich customization of Windows Live Writer's behaviour as well as the opportunity to add new functionality to the product. Currently Windows Live Spaces, WordPress, and TypePad have all taken advantage of this API to expose additional service-specific features within Windows Live Writer.</p>
            </li>


            <li>
                <s><a name="SSWDiagnostics"></a><h2>SSW Diagnostics (Replaced by Chocolatey)</h2>
                <p>In SSW, we have our own tool to keep our system update to date by checking every executables and dlls in the system.</p>
                <dl class="image">
                    <dt><img src="/ssw/diagnostics/Images/ScanReport_4_42.GIF" border="0" width="665" height="513" /></dt>
                    <dd>Figure: SSW Diagnostics scan result</dd>
                </dl>
                <a href="/ssw/Diagnostics/">SSW Diagnostics</a></s>            
            </li>

            <li>
                <s><a name="InstallPad"></a>
                <h2>InstallPad (Replaced by Chocolatey)</h2>
                <p>InstallPad takes care of downloading and installing the latest versions of all your favorite apps. It is a great way to get from a fresh installed PC to something usable.
                </p>
                <dl class="image">
                    <dt><img src="images/InstallPad.gif" alt="InstallPad" /></dt>
                    <dd>Figure: InstallPad helps you install your application</dd>
                </dl>
                <br />
                <a href="/ssw/Redirect/InstallPad.htm" class="external" target="_blank" >InstallPad</a></s>
            </li>

            <li>
                <s><a name="Ninite"></a>
                    <h2>Ninite (Replaced by Chocolatey)</h2>
                    <p>Install and Update All Your Programs at Once</p>
                <a href="http://ninite.com/" class="external" target="_blank" >Ninite website</a></s>
            </li>

            <li>
			    <s><a name="Winzip"></a><h2>WinZip (Replaced by 7zip)</h2>
                <p>WinZip brings the convenience of Windows to the use of Zip files and other 
				compression formats. The optional wizard interface makes zipping and unzipping 
				easier than ever. WinZip features built-in support for CAB files and for popular 
				Internet file formats such as TAR, gzip, UUencode, BinHex, and MIME. ARJ, LZH, and 
				ARC files are supported via external programs. WinZip interfaces to most virus scanners. 
			    </p>
			    <p>	
				Eventhough most Windows comes with its own Zipping program, Winzip is still good and allows
				users to span multiple disks.
			    </p>
			    <dl class="image">
			        <dt><img src="Images/winzip.gif" alt="" width="400" height="251"></dt>
			        <dd>Figure: Winzip</dd>
			    </dl>
			    <a href="/ssw/Redirect/TucowsDownload.htm" target="_blank" class="external">Winzip Download at Tucows</a>
		        </s>
        </li>

            <li><s>
			<a name="TreeSizePro"></a>
			<h2>TreeSize Professional 2.0 (replaced by WinDirStat)</h2>
		
			<p>
				As per Brian Randell's recommendation, Treesize Professional can find out which folders are the largest on your drives.
				It shows you the size, allocated and wasted space, the 
				number of files, 3D bar charts and pie charts, the last access 
				date and much more information for several folders or drives you 
				choose.
			</p>
			<dl class="image">
			    <dt><img src="Images/treesize.gif" alt="" width="400" height="293"></dt>
			    <dd>Figure: TreeSize Window</dd>
			</dl>
			<a href="/ssw/Redirect/treesize.htm" target="_blank" class="external">TreeSize Web Site</a>
			
			<br />
			Another one is <a href="/ssw/Redirect/FolderSizes.htm" class="external">Folder Sizes</a></s>
			
		</li>

            <li><s>
            <a name="DUMeter"></a>
            <h2>DU Meter (Replaced by NetBalancer)</h2>
            <p>DU Meter provides an accurate account of the data which is flowing through your computer's network connection. This readout is presented in both numerical and graphical format, in real time.
            </p>
            <dl class="image">
                <dt><img src="images/DUMeter.jpg" alt="DU Meter" /></dt>
                <dd>Figure: DU Meter can show your network connection</dd>
            </dl>
            <br />
            <a href="/ssw/Redirect/DUMeter.htm" class="external" target="_blank" >DU Meter</a></s>
            </li>

		</ol>

		<h2>Acknowledgements</h2>	
			
			<p>
				<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DH">Daniel Hyles</a><br>
                <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
            </p>



		</asp:content>