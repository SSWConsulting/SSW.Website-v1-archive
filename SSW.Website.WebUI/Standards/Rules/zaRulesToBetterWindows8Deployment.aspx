<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Windows 8 Deployments" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />

    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F25323042657474657225323057696E646F777325323056697374612532304465706C6F796D656E74')"> Let us know</a> what you think.</p>

<div class="intro">
    <div class="floatRight" style="width: 40%;">
        <div class="greyBox" style="margin: 4px;">
                    <p>Still stuck on old Windows 7?</p>
                    <p>Please see <a href="/ssw/Standards/Rules/RulesToBetterWindows7Deployment.aspx">Rules to better Windows 7 Deployment</a></p>
                </div>
            </div>
            <p>At SSW we buy new computers as we need them &#8211; developers choose what they like e.g. Dell, HP, IBM or even the MacBook Pro with the dual boot that makes the designers happy!</p>
            <p>Choice is good, however it does have its drawbacks; particularly when it comes to operating system deployments. In the past, each developer has had to build their environment each time they get a new PC or format from scratch because most deployment systems (such as Norton Ghost) are hardware specific. Depending on how much software a developer need to install, the time would range from a few hours to a couple of days.<br />
            With the latest set of administration tools deployed with Microsoft Windows 8 we finally have a nice solution to deploying our operating environments. </p>
            <p>We choose to implement Microsoft's new Business Desktop Deployment (BDD) solution and boy it deploys Windows 8 images quickly. The images include not just the OS, but all our standard applications. </p>
            <p>As a result, unattended deployment time takes on average 45 mins. This includes the format! We were impressed and this <strong>one feature</strong> has saved us significant time and money. <br />
            We've learnt a lot in the process, and I&#8217;m sure you&#8217;ll find the new Rules to Better Windows 8 Deployment valuable. These rules aim to help you prepare your deployment of Microsoft Windows 8 across your small to medium sized organization. <br />
            Do you agree with them all? Are we missing some? Email me your tips, thoughts or arguments.  <a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Adam.aspx" target="_blank">Let me know</a> what you think.</p>
    </div>

    <div class="TableOfContents">
        <h3>Rules to Better Windows 8 Deployment</h3>
        <ol>
            <li><a href="#CorrectSpecs">Do you ensure you have a computer with the recommended specifications before upgrading to Windows 8?</a></li>
            <li><a href="#Update">Do you know whether to update or reformat?</a></li>
            <li><a href="#DeployingWindows7">Do you use the correct tools to deploy Windows 8 for your organization?</a></li>
            <li><a href="#LegacyApplications">Do you run all your incompatible applications in a Virtual PC?</a></li>
            <li><a href="#Gateway">Do you use default gateway on remote network?</a></li>
            <li><a href="#Services">Do you make sure all non essential services are set to manual?</a></li>
            <li><a href="#BackgroundRotator">Do you use custom images for your Windows 8 background rotator?</a></li>
            <li><a href="#CheckoutSamples">Do you check out built-in samples for Reporting Services?</a></li>
            <li><a href="#FileStructure">Do you have a recommended file structure for storing data?</a></li>
            <li><a href="#BootToVHD">Do you use the "Boot to VHD" feature of Windows 8?</a></li>
            <li><a href="#CreateVHD">Do you start from scratch when creating a "boot to VHD" image?</a></li>
        </ol>
    </div>

    <div id="mainContent">
        <ol>
            <li>
                <h2><a name="CorrectSpecs"></a>Do you ensure you have a computer with the recommended specifications before upgrading to Windows 8?</h2>
                    <p>Before you consider installing a version of Windows 8, you should make sure that all of your third party devices work fine with the operating system. Third party devices include video cards, mp3 players, smartphones, displays or networking equipment.</p>
                    <p>You might end up with a system that is incompatible with some of the devices that you connect to the PC regularly or at least from time to time. The Compatibility Center for Windows 8 has been created to aid users in finding out if their hardware is compatible with Microsoft&#8217;s upcoming operating system.</p>
                    <p>The compatibility center is only available online at the moment, with the likelihood that Microsoft will release a software version that runs on previous operating systems to simplify things for interested users. For now, you have to go to the web service&#8217;s site and use it to find your devices and their compatibility status.</p>
                    <dl class="image">
                        <dt><img src="Images/win8-compability.jpg" alt="Figure: Compatibility Center for Windows 8." /></dt>
                        <dd>Figure: Compatibility Center for Windows 8</dd>
                    </dl>
            </li>
            
                <li>
                <h2><a name="Update"></a>Do you know whether to upgrade or reformat?</h2>
                    <p>When you're installing a new OS on your PC it's always a dilemma as to whether to go the whole hog and reformat your hard drive or take the upgrade path into the new system. Upgrading is nice because there is no need to install all your programs again. The problem is all the old junk stays around. </p>
                    <p>At SSW always go for a fresh start. We've already found a number of programs will not work in Windows 8. Besides, a nice, clean C: drive to go with your new, nice, clean operating system is always a big plus. Just be sure to follow your organization's backup standards carefully! </p>
                    <p><strong>Note:</strong> For individuals looking to upgrade to Windows 8, the upgrade process is exactly the same as that for Windows 7. </p>
                    <p><strong>Note:</strong> If you intend to follow an <a href="/ssw/Standards/Rules/RulesToBetterWindows8Deployment.aspx#DeployingWindows7">automated deployment</a> then you will be forced to reformat. </p>
            </li>
            <li>
                <h2><a name="DeployingWindows7"></a>Do you know the best way to deploy Windows 8 across your organization?</h2>
                    <p>With Windows XP we commonly see situations where a system rebuild takes a day or more. With Windows 8 we have got that down to 45 minutes.</p>
                    <p>Windows 8 has deployment tools which you can download, which make it significantly easier for organizations ranging from small to large sizes to migrate to Windows 8.</p>
                    <p>Here are you deployment choices: </p>
                    <ol style="list-style-type:lower-alpha">
                        <li>Individuals - Standard Installation using Windows 8 CD (not recommended as you then need to install all your programs)</li>
                        <li>Small Organizations (less than 100 computers) - Windows Assessment and Deployment Kit (Windows 8 ADK) (recommended)</li>
                        <li>Large Organizations (100 computers or more) - Windows Deployment Services (WDS)</li>
                    </ol>
                    <p>At SSW, we use option b, which means that you need the new deployment tool which utilizes Image Based Setups (IBS). When you use IBS you install all the programs you create a large .WIM file. Once the custom image is created you deployed individually to each PC as detailed below:</p>
                    <p><strong>Note:</strong> for option c, you use the same IBS method described for creation of your image. Windows Deployment Services is the equivalent of Remote Installation Services on Windows Server 2003. For this deployment process, a dedicated server is required. </p>
                    <p>In order to use IBS you will need to: </p>
                    <ul>
                        <li>Step 1: Create a CD with the tools needed to deploy the Image</li>
                        <li>Step 2: Creating a custom image of a Windows 8 Installation</li>
                        <li>Step 3: Get your new PC and Deploy this custom image</li>
                    </ul>	

                    <h3>Step 1: Create a CD with the tools needed to deploy the Image </h3>
                        <dl class="image">
                            <dt><img src="Images/Win7Developer.jpg" alt="Windows 8 image developer" /></dt>
                            <dd>Figure: This is for Windows 8 image developer to follow every time he creates a new version of Windows 8 image.</dd>
                        </dl>
                        <p>PS: You may skip Step 1 because the iso named WinPEwin8_ImageX.iso is located in the following shares:</p>
                        <ol>
                            <li><strong>Sydney location:</strong><br />
                                <a href="file://fileserver/SetupFiles/SetupMS/SetupWindowsOS/MSWindows8/SSW_Win8_Image">\\fileserver\SetupFiles\SetupMS\SetupWindowsOS\MSWindows8\SSW_Win8_Image</a>
                            </li>
                            <li><strong>Beijing location:</strong><br />
                                <a href="file://beirodcp01/SetupFiles/SSW_Win8_Image">\\beirodcp01\SetupFiles\SSW_Win8_Image </a>
                            </li>
                        </ol>
                        <p>Note: Use the ISO named WinPEwin8_ImageX.iso for building the SSW Windows 8 x64-bit image</p>

                        <ol>
                            <li>Install <strong>Windows Automated Installation Kit </strong></li>
                            <li>Open Command Prompt and change from the current location to the PETools directory.<br />
                                Type <strong>CD C:\Program Files\Windows AIK\Tools\PETools</strong>  
                            </li>
                            <li>Copy the PE Tools into a directory on your C: drive.<br />
                                Type <strong>Copype.cmd [arch] [destination]</strong><br />
                                Where arch is the arhitecture of the computer on which Windows 8 is being deployed, either x86, amd64 or ia64 and destination is the path to the local directory, for example, type:<br />
                                Copype.cmd x86 C:\WinPE_x86 
                            </li>
                            <li>Copy ImageX into the same folder.<br />
                                Type <strong>copy &quot;C:\Program Files\Windows AIK\Tools\x86\imagex.exe&quot; C:\WinPE_x86\iso</strong>
                            </li>
                            <li>Using Notepad, create a configuration file with the following text and save it as
                                <strong>wimscript.ini</strong>.<br />
                                <strong>[Exclusion List]</strong><br />
                                <strong>ntfs.log</strong><br />
                                <strong>hiberfil.sys</strong><br />
                                <strong>pagefile.sys</strong><br />
                                <strong>&quot;System Volume Information&quot;</strong><br />
                                <strong>RECYCLER</strong><br />
                                <strong>Windows\CSC</strong><br />
                                <strong>[CompressionExclusionList]</strong><br />
                                <strong>*.mp3</strong><br />
                                <strong>*.zip</strong><br />
                                <strong>*.cab</strong><br />
                                <strong>\WINDOWS\inf\*.pnf</strong>
                                <p>Save the configuration file to the same location as the ImageX:<br />
                                    <strong>C:\WinPE_x86\iso</strong>
                                </p>
                            </li>
                            <li>Create an image file (.iso) of the folder you just created.<br />
                                Type <strong>cd C:\Program Files\Windows AIK\Tools\PETools</strong><br />
                                <strong>Oscdimg -n -bc:\winpe_x86\etfsboot.com c:\winpe_x86\iso c:\winpe_x86\winpe_x86.iso</strong>
                            </li>
                            <li><strong>Burn </strong>tthe image onto a blank CD ROM. </li>
                        </ol>
                    
                    <h3>Step 2: Creating a custom image of a Windows 8 Installation</h3>
                        <p><strong>Warning:</strong> If you're using a VPC or VMWare then it is best to create a "Clone" before you generialize so that you can revert back to it after the image has been created. </p>
                        <p>Now that we have all the tools on a CD, we now need Windows 8 and all the programs.</p>
                        <asp:Panel CssClass="interInfoBoxSide" Style="width: 75%;" ID="pnlInfo" runat="server">
                            <h1>Attention: SSW Developers</h1>
                            <p>Please refer <a href="http://intranet.ssw.com.au/SysAdmin/Lists/WinImageInstalledSoftware/AllItems.aspx">SSW's change log of Windows 8 Image</a> for installed applications on Windows 8 image.</p>
                        </asp:Panel>
                        <ol>                                  
                            <li>Using a master computer, install Windows 8.</li>
                            <li>Install all your applications.
                                <dl class="image">
                                    <dt><img src="Images/VistaDeployment_InstalledApplications.jpg" alt="Installed applications document on desktop" width="96" height="118" /></dt>
                                    <dd>Figure: Inside your image, make sure you keep track of all the installed applications (along with whom added them, and when). We keep a word document on the desktop.</dd>
                                </dl>
                            </li>
                            <li>It will be much easier for user to know the version of the Windows 8 Image installed in their machines if you put the versioning information in a text file, for example:
                                <b>C:\_Windows7ImageVersion.txt.</b>
                                <p>NOTE: When you build the image you need to update C:\_Windows7ImageVersion.txt.</p>
                                <dl class="image">
                                    <dt><img src="Images/Image_Win7Ver.jpg" alt="Image Versioning" /></dt>
                                    <dd>Figure: Windows 8 Image Versioning File Image Versioning File</dd>
                                </dl>
                            </li>
                            <li>Prepare the computer for imaging by running the Sysprep tools and cleaning up User settings.<br />
                                In Command Prompt, type <strong>C:\Windows\System32\Sysprep\Sysprep.exe /oobe /generalize/shutdown</strong>
                                <ul>
                                    <li style="color: #FF0000"><b>Caution: Do not forget to execute the above command before capturing the image. Not performing the above step may cause Boot Failure error message when you try to boot the installed image on your PC. </b></li>
                                    <li><b>Note:</b> You can only generalize your installation 3 times. After that you'll received an error when trying to generalize the installation.</li>
                                </ul>
                            </li>
                            <li><strong>Boot up</strong> from the Windows PE CD that you created previously.<br />
                                <dl class="image">
                                    <dt><img src="Images/WinPE.jpg" alt=" " width="800" height="600" /></dt>
                                    <dd>Figure: This is what it looks like the first time you boot off the CD C it is the Windows Pre-Installation Environment 2.0 - now you capture the image</dd>
                                </dl>
                            </li>
                            <li>In the command prompt, capture the image.<br />
                                Type<strong> D:\ImageX.exe /capture C: C:\MyImage.wim &quot;My Windows 8 Install&quot; /verify</strong>
                                <p>(Where MyImage.wim is the image name, you can give any name you wish).</p>
                            </li>
                            <li><b>Option A (Not Recommended)</b>: Copy the image to a network location. (<b>Note:</b> This will not work in VMWare as the network drivers aren't supported without VMWare Tools, instead boot up the Windows 8 install and copy the image to the network drive from within Windows 8)<br />
                                Type: <strong>net use \\[network share]</strong><br />
                                Where network_share is the location to which the Image will be saved on the network.<br />
                                Type your <strong>username</strong> and <strong>password</strong><br />
                                Type <strong>copy C:\MyImage.wim \\[network_share]</strong>
                                <p>Now the image is on the network and all the guys can get their Windows 8 image from here.</p>
                                <p style="color:Red;"><b>Warning:</b> It may take 8 to 10 hours to copy the file to network location. Instead try copying the file to any external drive.</p>
                            </li>
                            <li>
                                <b>Option B (Recommended):</b> Note: If you are building the image on a virtual machine, then:
                                <ul>
                                    <li>Once the .wim file is created successfully, shutdown the virtual machine &gt; 
                                        Take a snapshot &gt; Restart the virtual machine. <br /></li>
                                    <li>Browse to C:\ and copy C:\MyImage.wim <br /></li>
                                    <li>If you experience any problem copying file to an external drive then copy the .wim file to \\&lt;local</a> computer&gt;\Public\ </li>
                                    <li>If you are unable to connect to your local computer then, perform the following steps: <br />
                                        <ul>
                                            <li>On your local computer and virtual machine Enable Public folder sharing option in Network Sharing Center.</li>
                                            <li>Disable Windows Firewall.</li>
                                        </ul>
                                    </li>
                                    <li>Then try copying the .wim file to local computer.</li>
                                    <li>Once the file is copied to local computer, copy the file to any external drive.</li>
                                    <p>Now your image is ready to be applied from the external drive.</p>
                                </ul>
                            </li>
                        </ol>
                    <h3>Step 3: Get your new PC and deploy this custom image</h3>
                        <dl class="image">
                            <dt><img src="Images/Win7User.jpg" alt="Windows 8 image User" /></dt>
                            <dd>Figure: This is for Windows 8 image user to follow</dd>
                        </dl>
                        <ol>
                            <li>On the PC, to which the Image is to be deployed, <strong>back up</strong> all your data.</li>
                            <li><strong>Boot up </strong>using the Windows PE CD you created previously. </li>
                            <li><strong>Format</strong> the hard drive and create partitions by typing these commands in order:<br />
                                <strong>diskpart</strong><br />
                                <strong>select disk 0</strong><br />
                                <strong>clean</strong><br />
                                <strong>create partition primary size=&lt;size of hard disk&gt;</strong> (For example 'create partition primary size=20000' where 20000 equals 20 GB.   <br />
                                <strong>select partition 1 </strong><br />
                                <strong>active</strong><br />
                                <strong>format (format quick)</strong><br />
                                <strong>exit</strong>
                            </li>
                            <li><b>Option A (Not Recommended):</b>
                                Copy the image from the network share onto the local hard drive.<br />
                                Type <strong>net use \\&lt;network share&gt; </strong><br />
                                Type your <strong>username</strong> and <strong>password</strong><br />
                                Type <strong>copy \\&lt;network share&gt; C:</strong><br />
                                <p><b>Option B (Recommended):</b> If you have followed the recommended steps to copy the .wim file to external hard drive, then type the following command to apply the image to your local hard drive:<br />
                                Apply the image to the C: drive.<br />
                                Type <b>D:\ImageX.exe /apply X:\Myimage.wim 1 C:</b><br />
                                (Where X = External hard drive).</p>
                            </li>
                            <li><strong>Reboot</strong> once the above process is complete.</li>
                            <li>Follow the on-screen instructions to complete the installation. </li>
                            <li>Run <strong>Windows Update</strong> to get all necessary drivers and software updates.</li>
                        </ol>
                        <p>You are now ready to work (it has taken about 45 mins)</p>
                    </li>
            
                    <li>
                        <h2><a name="LegacyApplications"></a>Do you run all your incompatible applications in a Virtual PC?</h2>
                        <p>When upgrading to Windows 8, you will find that many of your important applications may not install or give errors.<br />
                            To ensure a smooth migration process, your image will include a shortcut on the desktop to a Virtual PC so you can continue with all of these incompatible applications.</p>
                        <div>
                            <dl class="image">
                            <dt><img src="Images/IncompatibleProgInVPC.jpg" alt="Running incompatible applications in Virtual PC" /></dt>
                            <dd>Figure: Run incompatible applications in Virtual PC</dd>
                        </dl>
                        <p>Tip: VPCs are a bit slow, so you will want your VPC to be as fast as possible so please see <a href="RulesToBetterVirtualPCs.aspx">Rules to Better Virtual PC's</a> for an extensive guide to creating an efficient development environment.</p>
                    </li>

                    <li>
                        <h2><a name="Gateway"></a>Do you use default gateway on remote network?</h2>
                        <p>VPN is a wonderful tool for users to remotely control the other PCs via network. If we control the PC located in Sydney and use default gateway on remote network, some of the bandwidth in Sydney will be occupied by us. In order to avoid that, we need to configure the VPN as following:</p>
                        <dl class="image">
                            <dt><img src="Images/DefaultGateway.gif" alt="Gateway" width="410" height="489" /></dt>
                            <dd>Figure: Uncheck &quot;Use default gateway on remote network&quot;</dd>
                        </dl>
                        <p>Furthermore, the Microsoft Firewall Client for ISA Server, which connects with the remote server, will be disabled as well.</p>
                        <p>After that we can detect our settings by accessing <a href="/SSW/Redirect/Dnsstuff.htm"> http://www.dnsstuff.com/tools/aboutyou.ch</a>. The result will show Your IP, Your country and Proxy Server etc.</p>
                    </li>
           
                    <li>
                        <h2><a name="Services"></a>Do you make sure all non essential services are set to manual</h2>
                            <p>The Windows 8 image will work fast, even on slow PCs. So only have a service running if people use it the majority of the time.</p>
                            <dl class="image">
                                <dt><img src="Images/ServicesSetToManual.jpg" alt="Service Set To Manual" /></dt>
                                <dd>Figure: See the &#8216;Start Mode&#8217; are all set to Manual</dd>
                            </dl>
                    </li>
            
                    <li>
                        <h2><a name="BackgroundRotator"></a>Do you use custom images for your Windows 8 background rotator?</h2>
                            <p>Having the same background is boring. Enliven your PC by having a rotating series of background images (using the Windows 8 background rotator). For example at SSW we include images of the guys having fun, SSW products and past SSW projects.</p>
                            <div id="Div1" class="floatRight" style="width: 15%" runat="server">
                                <asp:Panel CssClass="interInfoBoxSide" Style="width: 75%;" ID="Panel1" runat="server">
                                    <h1>Attention: SSW Developers</h1>
                                    <p>SSW background images are stored at: <a href="File://skunk/ssw/standardsinternal/images">SSW's background images</a> </p>
                                </asp:Panel> 
                            </div>
                            <p>Follow the instructions mentioned below to change your desktop background:</p>
                            <ol>
                                <li>Select the images for your background rotator</li>
                                <li>Save them at %userprofile%\Pictures</li>
                                <li>Click Control Panel | &#8220;Appearance and Personalization&#8221; | Under &#8216;personalization&#8217; option | Click &#8220;Change Background Image&#8221;</li>
                                <li>Browse to %userprofile%\Pictures (For e.g., C:\syeddilawer\pictures\SSWBackgroundImages) | click Ok.</li>
                                <li>If all images are not selected, then click &#8216;Select All&#8217; option to select the images.</li>
                                <li>Under &#8216;Picture position&#8217; option, select &#8216;Fill&#8217; | Under &#8216;Change picture entry&#8217; option, select any time limit you like.</li>
                                <li>Click 'Save changes'</li>
                            </ol>
                            <dl class="image">
                                <dt><img src="Images/SSWBackgroundRotator.png" alt="Using images for Windows 8 background rotator" />   </dt>
                                <dd>Figure: See the &#8216;SSW background images&#8217; are used for Windows 8 background rotator</dd>
                            </dl>
                    </li>

                    <li>
                        <h2><a name="CheckoutSamples"></a>Do you check out built-in samples for Reporting Services?</h2>
                        <p>Microsoft SQL Server 2005 and 2008 comes with great sample reports. However they are not installed by default, for more information please see <a href="RulesToBetterSQLReportingServices.aspx#CheckOutSampleReport">Rules to SQL Reporting Services</a>.</p>
                        <p>Also see our knowledge base article: <a href="/ssw/KB/KB.aspx?KBID=Q1286726"> How do I install SQL Server 2005 with the Adventure Works Samples?</a></p>
                    </li>

                    <li>    
                        <h2><a name="FileStructure"></a>Do you have a recommended file structure for storing data?</h2>
                        <p>Using a standard file a structure for storing user data on laptops makes locating important information fast and performing automated backup operations easy.<br>
                            Our developers always have:</p>
                        <pre>
                D:\DataExchange  - For storing the MS Outlook .OST file. This folder is deliberately separate so it is not backed up. (the Exchange server itself is backed up regularly)<br /><br />

                D:\DataFirstnameLastname - For storing all user data. This folder is automatically backed up.<br /><br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\ProjectsTemp<br /><br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\ProjectsVSS<br /><br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\ProjectsTFS<br /><br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\Personal<br /><br />

                D:\temp<br />

                        </pre>
                    </li>

                    <li>
                        <h2><a name="BootToVHD"></a>Do you use the "Boot to VHD" feature of Windows 8?</h2>
                        <p>Windows 8 introduced a nice feature called "Boot to VHD". This feature allows you to natively boot into a VPC image.</p>
                        <p>This has a couple of advantages:</p>
                        <ul>
                            <li>Usage of Aero styles</li>
                            <li>Bare metal performance</li>
                            <li>64 bit support</li>
                        </ul>
                    </li>

                    <li>
                        <h2><a name="CreateVHD"></a>Do you start from scratch when creating a "boot to VHD" image?</h2>
                        <p>When you consider to use the boot to VHD feature, try to install a new VPC image from scratch. All your hardware is direct accessed and not anymore virtualized when you boot into the VHD image, only the HD is virtualized. <br />
                            So it is better to start installing a new VPC image from scratch so that all your drivers are up to date and use the full power of your machine.<br />
                            See our rules <a href="/ssw/Standards/Rules/RulesToBetterVirtualPCs.aspx#UseOperationalBase">Do you use an operational base when creating VPC images?</a>
                        </p>
                    </li>
                </ol>
                
                <h2>Acknowledgements</h2>
                    <p>
                        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
                        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AGT">Andy Taslim</a><br />
                    </p>
    </div>

</asp:Content>