<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Windows Vista Deployments" %>

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
    <p>
    
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F25323042657474657225323057696E646F777325323056697374612532304465706C6F796D656E74')">
            Let us know</a> what you think.</p>
    &nbsp;<div class="intro">
        <p>
            
            <div class="floatRight" style="width: 60%;">
                <div class="greyBox" style="margin: 4px;">
                    <p>
                        <b>News Flash:</b></p>
                    <p>
                        For developers, Vista offers a number of limitations. There is no support for Visual
                        Studio 2003, and we have to install <a href="/SSW/Redirect/Microsoft/MSSQL2005SP2.htm"
                            target="_blank">SQL 2005 SP2</a> so that SQL will run smoothly.</p>
                    <p>
                        On the Visual Studio front, <a href="/SSW/Redirect/Microsoft/MSVS2005TSSP1.htm"
                            target="_blank">SP1 has recently been released</a>, and has solved many Vista
                        issues, however there is <a href="/SSW/Redirect/Microsoft/VS2005SP1UpdateVista.htm"
                            target="_blank">another update</a> has to be installed for Vista support.</p>
                </div>
            </div>
            <p>At SSW we buy new computers
                as we need them &#8211; developers choose what they like e.g. Dell, HP, IBM or even
                the MacBook Pro with the dual boot that makes the designers happy!<br />
                <br />
                Choice is good, however it does have its drawbacks; particularly when it comes to
                operating system deployments. In the past, each developer has had to build their
                environment each time they get a new PC or format from scratch because most deployment
                systems (such as Norton Ghost) are hardware specific.<span lang="en-au"> </span>
                Depending on how much software a developer need to install, the time would range
                from a few hours to a couple of days.<br />
                With the latest set of administration tools deployed with Microsoft Vista we finally
                have a nice solution to deploying our operating environments.
                </p>
                <div class="floatRight" style="width: 30%;">
                    <div class="greyBox" style="margin: 4px;">
                        Windows Vista is old! Already got the new Windows 7?
                        <p>Please see <a href="/ssw/standards/Rules/RulestoBetterWindows7Deployment.aspx">Rules to better Windows 7 Deployment</a></p>
                    </div>
                </div>
                <p>Since the release of Vista to Microsoft&#8217;s Business Partners, SSW has successfully
                deployed Vista to 90% of our developer machines. We chose to implement Microsoft&#8217;s
                new Business Desktop Deployment (BDD) solution and boy it deploys Vista images quickly.
                The images include not just the OS, but all our standard applications.
                </p>
                <p>As a result, unattended deployment time takes on average 45 mins. This includes
                the format! We were impressed and this <strong>*one feature*</strong> has saved
                us significant time and money.
                <br />
                We&#8217;ve learnt a lot in the process, and I&#8217;m sure you&#8217;ll find the
                new Rules to Better Windows Vista Deployment valuable. These rules aim to help you
                prepare your deployment of Microsoft Windows Vista across your small to medium sized
                organization.
                </p>Note: Don&#8217;t fall into the trap of thinking you need Vista to get Office 2007.
                Several of our clients don't have machines that support Vista. We've gone ahead
                and installed Office 2007 directly on XP and they love it.</p>
                <p>
                Do you agree with them all? Are we missing some? Email me your tips, thoughts or
                arguments.&nbsp; <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Let me know</a>
                what you think.</p>
    </div>
    <div class="TableOfContents">
        <h3>
            Rules to Better Windows Vista Deployment</h3>
        <ol>
            <li><a href="#CorrectSpecs">Do you ensure you have a computer with the recommended specifications
                before upgrading to Windows Vista?</a></li>
            <li><a href="#EnoughRam">Do you know the efficient way to check if you can do a RAM
                upgrade?</a></li>
            <li><a href="#Update">Do you know whether to update or reformat?</a></li>
            <li><a href="#DeployingVista">Do you use the correct tools to deploy Windows Vista for
                your organization?</a></li>
            <li><a href="#LegacyApplications">Do you run all your incompatible applications in a
                Virtual PC?</a></li>
            <li><a href="#Whitepaper">Do you know your options with respect to developing and maintaning
                you .NET 1.1 applications?</a></li>
            <li><a href="#Gateway">Do you use default gateway on remote network?</a></li>
            <li><a href="#Services">Do you make sure all non essential services are set to manual?</a></li>
            <li><a href="#Version">Do you add your Windows Vista Image's version into C:\?</a></li>
            <li><a href="#Sidebar">Do you remove the Windows Vista Sidebar?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="CorrectSpecs"></a>Do you ensure you have a computer with the 
                    recommended specifications before upgrading to Windows Vista?</h2>
                &nbsp;Windows Vista is much more resource dependant (about 25% slower) than Windows
                XP. Therefore it is essential for PCs, which are being upgraded to Windows Vista,
                to meet the minimum recommended specifications. There is the <a href="/SSW/Redirect/Microsoft/VistaUpgradeAdvisor.htm"
                    class="external">Windows Vista Upgrade Advisor</a>, but unfortunately it didn't
                support proxies when we attempted usage.</p>
                <p>
                    For now, in order to check your hardware you can use:</p>
                <ul>
                    <li style="text-align: left"><a href="#"
                        class="external">ATI's Vista Readiness Advisor</a> (recommended as it is the most
                        comprehensive) </li>
                    <li style="text-align: left"><a href="/SSW/Redirect/Dell1.htm"
                        class="external">DELL</a> (not as good) </li>
                </ul>
                            <dl class="image">
                                <dt>
                                    <img src="Images/ATI_test.jpg" alt="ATI Test" width="500" height="582" /></dt><dd>
                                        Figure: The Browser will open the results of the ATI test.</dd></dl>
                            <dl class="image">
                                <dt>
                                    <img src="Images/DellScan.jpg" alt="Dell test" width="500" height="376" /></dt><dd>
                                        Figure: Results from DELL's Vista Readiness.
                                    </dd>
                            </dl>
            </li>
            <li>
                <h2>
                    <a name="EnoughRam"></a>Efficient way to check if you can do a RAM upgrade</h2>
                <p>
                    Although the minimum operating requirements of Vista state 512MB of memory, we would
                    suggest for practical reasons that you will need at least 1.5 GB of RAM - although
                    2 GB is ideal.
                </p>
                <p>
                    An easy way to check the maximum RAM you can upgrade to and the number of slots
                    you have is by using <a href="/SSW/Redirect/FutureMark1.htm" class="external">
                        PCMark05</a>. On some older machines, the motherboard specifications may be
                    the limiting factor. It is sometimes common for an older notebook to support up
                    to 2GB of memory.
                </p>
                <p>
                    If you're not sure what type of RAM your notebook needs, use an online memory finder.<br />
                </p>
                <ol>
                    <li>Install and launch <strong>PCMark05</strong></li>
                    <li>Click <strong>&quot;Details&quot;</strong><dl class="image">
                        <dt>
                            <img src="Images/PCMark05_Details.jpg" alt="PCMark05 Details" width="674" height="357" /></dt><dd>
                                Figure: Click &quot;Details...&quot; to see if you have a free slot for more RAM</dd></dl>
                    </li>
                    <li>Scroll down to the <strong>memory info</strong>
                        <dl class="image">
                            <dt>
                                <img src="Images/PCMark05_Memory.jpg" alt="PCMark05 Memory" width="564" height="387" /></dt><dd>
                                    Figure: Then you will see detailed memory information - in this case both slots
                                    are used - Now you need to visit the manufactures site to see if it can take anymore
                                    RAM
                                </dd>
                        </dl>
                        <br />
                    </li>
                </ol>
            </li>
            <li>
                <h2>
                    <a name="Update"></a>Do you know whether to upgrade or reformat?
                </h2>
                <p>
                    When you're installing a new OS on your PC it's always a dilemma as to whether to
                    go the whole hog and reformat your hard drive or take the upgrade path into the
                    new system. Upgrading is nice because there is no need to install all your programs
                    again. The problem is all the old junk stays around.
                </p>
                <p>
                    At SSW always go for a fresh start. We've already found a number of programs (including
                    Visual Studio 2003) will not work in Vista. Besides, a nice, clean C: drive to go
                    with your new, nice, clean operating system is always a big plus. Just be sure to
                    follow your organization's backup standards carefully!
                </p>
                <p>
                    Note: For individuals looking to upgrade to Windows Vista, the upgrade process is
                    exactly the same as that for Windows XP.
                </p>
                <p>
                    Note: If you intend to follow an <a href="#DeployingVista">automated deployment</a>
                    then you will be forced to reformat.
                </p>
            </li>
            <li>
                <h2>
                    <a name="DeployingVista"></a>Do you know the best way to deploy Windows Vista across
                    your organization?</h2>
                <p>
                    With Windows XP we commonly see situations where a system rebuild takes a day or
                    more. With Windows Vista we have got that down to 45 minutes.
                </p>
                <p>
                    Windows Vista has deployment tools which you can download, which make it significantly
                    easier for organizations ranging from small to large sizes to migrate to Windows
                    Vista.
                </p>
                <p>
                    Here are you deployment choices:
                </p>
                <ol>
                    <li>Individuals - Standard Installation using Windows Vista CD (not recommended as you
                        then need to install all your programs)</li>
                    <li>Small Organizations (less than 100 computers) - Business Desktop Deployment 2007
                        (not recommended)</li>
                    <li>Small Organizations (less than 100 computers) - Windows Automated Installation Kit
                        (recommended)&nbsp;<img alt="Recommended" src="/ssw/Images/tick.gif" width="24" height="24" /></li>
                    <li>Large Organizations (100 computers or more) - Windows Deployment Services (WDS)</li>
                </ol>
                <p>
                    At SSW, we use option 3, which means that you need the new deployment tool which
                    utilizes Image Based Setups (IBS). When you use IBS you install all the programs
                    you you create a large .WIM file. Once the custom image is created you deployed
                    individually to each PC as detailed below:
                </p>
                <p>
                    Note, for option 4, you use the same IBS method described for creation of your image.
                    Windows Deployment Services is the equivalent of Remote Installation Services on
                    Windows Server 2003. For this deployment process, a dedicated server is required.
                </p>
                <p>
                    In order to use IBS you will need to:
                </p>
                <ul>
                    <li>Step 1: Create a CD with the tools needed to deploy the Image</li>
                    <li>Step 2: Creating a custom image of a Vista Installation</li>
                    <li>Step 3: Get your new PC and Deploy this custom image</li>
                </ul>
                <p>
                    &nbsp;</p>
                <h3>
                    Step 1: Create a CD with the tools needed to deploy the Image
                </h3>
                <ol>
                    <li>Install <strong>Windows Automated Installation Kit </strong></li>
                    <li>Open Command Prompt and change from the current location to the PETools directory.
                        <br />
                        Type <strong>CD C:\Program Files\Windows AIK\Tools\PETools</strong> </li>
                    <li>Copy the PE Tools into a directory on your C: drive.
                        <br />
                        Type <strong>Copype.cmd [arch] [destination]</strong>
                        <br />
                        Where arch is the arhitecture of the computer on which Vista is being deployed,
                        either x86, amd64 or ia64 and destination is the path to the local directory, for
                        example, type:
                        <br />
                        Copype.cmd x86 C:\WinPE_x86 </li>
                    <li>Copy ImageX into the same folder.
                        <br />
                        Type <strong>copy &quot;C:\Program Files\Windows AIK\Tools\x86\imagex.exe&quot; C:\WinPE_x86\iso</strong>
                    </li>
                    <li>Using Notepad, create a configuration file with the following text and save it as
                        <strong>wimscript.ini</strong>.<br />
                        <strong>[Exclusion List]</strong>
                        <br />
                        <strong>ntfs.log</strong>
                        <br />
                        <strong>hiberfil.sys</strong>
                        <br />
                        <strong>pagefile.sys</strong>
                        <br />
                        <strong>&quot;System Volume Information&quot;</strong>
                        <br />
                        <strong>RECYCLER</strong>
                        <br />
                        <strong>Windows\CSC</strong>
                        <br />
                        <strong>[CompressionExclusionList]</strong>
                        <br />
                        <strong>*.mp3</strong>
                        <br />
                        <strong>*.zip</strong>
                        <br />
                        <strong>*.cab</strong>
                        <br />
                        <strong>\WINDOWS\inf\*.pnf</strong>
                        <p>
                            Save the configuration file to the same location as the ImageX:
                            <br />
                            <strong>C:\WinPE_x86\iso</strong>
                        </p>
                    </li>
                    <li>Create an image file (.iso) of the folder you just created.
                        <br />
                        Type <strong>cd C:\Program Files\Windows AIK\Tools\PETools</strong>
                        <br />
                        <strong>Oscdimg -n -bc:\winpe_x86\etfsboot.com c:\winpe_x86\iso c:\winpe_x86\winpe_x86.iso</strong>
                    </li>
                    <li><strong>Burn </strong>the image onto a blank CD ROM. </li>
                </ol>
                <p>
                    PS: You may skip Step 1 because the CD labeled <b>WIN PE and Image X </b>is kept
                    in n the SSW Sydney boardroom.</p>
                <h3>
                    &nbsp;</h3>
                <h3>
                    Step 2: Creating a custom image of a Vista Installation
                </h3>
                <p class="MsoNormal">
                    <b><span lang="EN-AU">Warning:</span></b><span lang="EN-AU"> If you're using a 
                    VPC or VMWare then it is best to create a &quot;Clone&quot; before you generialize so that 
                    you can revert back to it after the image has been created.</span>&nbsp;</p>
                <p>
                    Now that we have all the tools on a CD, we now need Vista and all the programs.
                </p>
                <ol>
                    <li>Using a master computer, install Windows Vista.</li>
                    <li>Install all your applications. </li>
                    <li>Prepare the computer for imaging by running the Sysprep tools and cleaning up User
                        settings.
                        <br />
                        In Command Prompt, type <strong>C:\Windows\System32\Sysprep\Sysprep.exe /oobe /generalize
                            /shutdown</strong></li>
                    &nbsp;<ul>
                            <li style="color: #FF0000"><b>Caution: Do not forget to execute the above command 
                                before capturing the image. Not performing the above step may cause Boot Failure error message when you try to boot the installed image on your 
                                PC. </b></li>
                            <li><b>Note:</b> You can only generalize your installation 3 times. After that you'll
                                received an error when trying to generalize the installation.</li>
                            
                        </ul>
                    
                    <li><strong>Boot up</strong> from the Windows PE CD that you created previously.
                        <br />
                        <dl class="image">
                            <dt>
                                <img src="Images/WinPE.jpg" alt=" " width="800" height="600" /></dt><dd>Figure: This
                                    is what it looks like the first time you boot off the CD C it is the Windows Pre-Installation
                                    Environment 2.0 - now you capture the image</dd>
                            
                        </dl>
                    </li>
                    <li>In the command prompt, capture the image.
                        <br />
                        Type<strong> D:\ImageX.exe /capture C: C:\MyImage.wim &quot;My Vista Install&quot; /verify</strong>
                        <p>
                            <span lang="EN-AU">(Where MyImage.wim is the image name, you can give any name 
                            you wish).<o:p></o:p></span></p>
                    </li>
                    <li><b><span lang="EN-AU">Option A (Not Recommended)</span></b><span lang="EN-AU">:
                        </span>Copy the image to a network location. (<b>Note:</b> This will not work in VMWare
                        as the network drivers aren't supported without VMWare Tools, instead boot up the
                        Vista install and copy the image to the network drive from within Vista)
                        <br />
                        Type: <strong>net use \\[network share]</strong>
                        <br />
                        Where network_share is the location to which the Image will be saved on the network.
                        <br />
                        Type your <strong>username</strong> and <strong>password</strong>
                        <br />
                        Type <strong>copy C:\MyImage.wim \\[network_share]</strong> </li>
                
                <p>
                    Now the image is on the network and all the guys can get their Vista image from
                    here
                </p>
                <p>
                    <b><span lang="EN-AU" style="color: #FF0000">Warning: It may take 8 to 10 hours 
                    to copy the file to network location. Instead try copying the file to any 
                    external drive.<o:p></o:p></span></b>
                <li>
                    <b><span lang="EN-AU">Option B (Recommended):</span></b><span lang="EN-AU"> 
                    Note: If your are building the image on a virtual machine, then </span></li>
               <br />
               <ul>
                   <li> Once the .wim file is created successfully, shutdown the virtual machine &gt; 
                    Take a snapshot &gt; Restart the virtual machine. <br /></li>
                    <li> Browse to C:\ and copy C:\MyImage.wim <br /></li>
                    <li> The external drives may not be recognized if you are working on virtual 
                    machine, hence copy the .wim file to \\Public\ 
                    <br /></li>
                    <li> If you are unable to connect to your local computer then, perform the 
                    following steps: <br />
                        <ul>
                            <li>On your local computer and virtual machine Enable Public folder sharing option 
                    in Network Sharing Center.</li>
                            <li>Disable Windows Firewall.</li>
                        </ul>
                        <dl class="image">
                            <dt>
                                <img src="Images/EnablePublicFolderSharing.jpg" /></dt><dd>
                                Figure: Enable Public Sharing option.
                                    </dd>
                        </dl>
                        <dl class="image">
                            <dt>
                                <img src="Images/TurnOffWindowsFirewall.jpg" /></dt><dd>
                                    Figure: Steps to disable Windows Firewall.
                                </dd>
                        </dl>
                        </li>
                <li>Then try copying the .wim file to local computer.</li>
                <li>Once the file is copied to local computer, copy the file to any external drive.</li>
                <p>Now your image is ready to be applied from the external drive.</p>
                    <p>&nbsp;</p>
                </ul>
                </ol>
                <h3>
                    Step 3: Get your new PC and deploy this custom image</h3>
                <ol>
                    <li>On the PC, to which the Image is to be deployed, <strong>back up</strong> all your
                        data. </li>
                    <li><strong>Boot up </strong>using the Windows PE CD you created previously. </li>
                    <li><strong>Format</strong> the hard drive and create partitions by typing these commands
                        in order:
                        <br />
                        <strong>diskpart</strong>
                        <br />
                        <strong>select disk 0</strong>
                        <br />
                        <strong>clean</strong>
                        <br />
                        <strong>create partition primary size=&lt;size of hard disk&gt;</strong> (For example
                        'create partition primary size=20000' where 20000 equals 20 GB.
                        <br />
                        <strong>select partition 1 </strong>
                        <br />
                        <strong>active</strong>
                        <br />
                        <strong>format (format quick)</strong>
                        <br />
                        <strong>exit</strong> </li>
                    <li><b><span lang="EN-AU">Option A (Not Recommended):</span></b><span lang="EN-AU">
                        </span>Copy the image from the network share onto the local hard drive.
                        <br />
                        Type <strong>net use \\&lt;network share&gt; </strong>
                        <br />
                        Type your <strong>username</strong> and <strong>password</strong>
                        <br />
                        Type <strong>copy \\&lt;network share&gt; C:</strong> 
                        <br />
                        <span style="color: #FF0000"><b>Warning: It may take 8 to 10 hours to copy the file to network location. Instead try copying the file to any external drive.
                        </b></span>
                        <br />
                        <p><b>Option B (Recommended):</b> If you have followed the recommended steps to copy the .wim file to external hard drive, then type the following command to apply the image to your local hard drive:
                        <br />
                        Apply the image to the C: drive. 
                        <br />
                        Type <b>D:\ImageX.exe /apply X:\Myimage.wim 1 C:</b> 
                        <br />
                        (Where X = External hard drive).</p>
                        </li>
                        <li><strong>Reboot</strong> once the above process is complete. </li>
                    <li>Follow the on-screen instructions to complete the installation. </li>
                    <li>Run <strong>Windows Update</strong> to get all necessary drivers and software updates.
                    </li>
                </ol>
                <p>
                    You are now ready to work ( it has taken about 45 mins)
                </p>
            </li>
            <li>
                <h2>
                    <a name="LegacyApplications"></a>Do you run all your incompatible applications in
                    a Virtual PC?</h2>
                <p>
                    When upgrading to Windows Vista, you will find that many of your important applications
                    will not install or give errors.
                    <br />
                    Examples are:
                </p>
                <ul>
                    <li>Visual Studio .NET 2003</li>
                    <li>Visual Studio .NET 2005 - some live with the crashes in Vista - most don't</li>
                    <li>SQL Server 2005 Reporting Services</li>
                    <li>FullShot 9</li>
                    <li>Windows Desktop Search (you don't need anymore)</li>
                    <li>AVG Antivirus (you don't need anymore) </li>
                    <li>(tell us any others)</li>
                </ul>
                <div>
                    <dl class="image">
                        <dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </dt>
                        <dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <img src="Images/VistaDeployment_InstalledApplications.jpg" alt="Installed applications document on desktop"
                                width="96" height="118" />
                        </dt>
                        <dd>
                            Figure: Inside your image, make sure you keep track of all the installed applications
                            (along with whom added them, and when). We keep a word document on the desktop.</dd></dl>
                </div>
                <p>
                    Developers are going to have to get used to running in a VPC - and Vista will force
                    you to get used to it - in that respect it may be a blessing in disguise. To ensure
                    a smooth migration process, your image should include a shortcut on the desktop
                    to a Virtual PC so you can continue with all of these incompatible applications.
                </p>
                <p>
                    Tip: VPCs are a bit slow, so you will want your VPC to be as fast as possible so
                    please see <a href="RulesToBetterVirtualPCs.aspx">Rules to Better Virtual PC's</a>
                    for an extensive guide to creating an efficient development environment.
                </p>
            </li>
            <li>
                <h2>
                    <a name="Whitepaper"></a>Do you know your options with respect to developing and
                    maintaining your .NET 1.1 applications?</h2>
                <p>
                    Visual Studio .NET 2003 is incompatible in Windows Vista. This poses a significant
                    problem for developers looking to maintain their .NET 1.1 applications. A simple
                    solution is to create a Virtual PC using Virtual PC 2007 of all the necessary development
                    tools on the Windows XP platform.
                </p>
                <p>
                    To debug your applications in Windows Vista, you can use Remote Debugging where
                    the application is running on the Vista machine, but it being debugged by the Virtual
                    PC. Please see the whitepaper "Taking Advantage of Microsoft Virtual PC 2007 for Developing and Maintaining .NET
                        1.1 and 2.0 Applications in Microsoft Windows Vista" for a guide to developing
                    both .NET 1.1 and 2.0 applications in Windows Vista as well as remote debugging.
                </p>
                <p>
                    Please also see <a href="RulesToBetterVirtualPCs.aspx">Rules to Better Virtual PC's</a>
                    for an extensive guide to creating an efficient development environment.
                </p>
            </li>
            <li>
                <h2>
                    <a name="Gateway"></a>Do you use default gateway on remote network?</h2>
                <p>
                    VPN is a wonderful tool for users to remotely control the other PCs via network.
                    If we control the PC located in Sydney and use default gateway on remote network,
                    some of the bandwidth in Sydney will be occupied by us. In order to avoid that,
                    we need to configure the VPN as following:
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/DefaultGateway.gif" alt="Gateway" width="410" height="489" />
                    </dt>
                    <dd>
                        Figure: Uncheck &quot;Use default gateway on remote network&quot;.
                    </dd>
                </dl>
                <p>
                    Furthermore, the Microsoft Firewall Client for ISA Server, which connects with the
                    remote server, should be disabled as well.
                </p>
                <p>
                    After that we can detect our settings by accessing <a href="/SSW/Redirect/Dnsstuff.htm">
                        http://www.dnsstuff.com/tools/aboutyou.ch</a>. The result will show Your IP,
                    Your country and Proxy Server etc.
                </p>
            </li>
            <li>
                <h2>
                    <a name="Services"></a>Do you make sure all non essential services are set to manual</h2>
                <p>
                    The vista image should work fast, even on slow PCs. So only have a service running
                    if people use it the majority of the time
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/ServicesSetToManual.jpg" alt="Service Set To Manual" />
                    </dt>
                    <dd>
                        Figure: See the &#8216;Start Mode&#8217; are all set to Manual.
                    </dd>
                   
                </dl>
            </li>
            <li>
                <h2>
                    <a name="Version"></a>Do you add your Windows Vista Image's version into C:\?</h2>
                <div>
                    <dl class="image">
                        <dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <img src="Images/Image_Ver.jpg" alt="Image Versioning" /></dt>
                        <dd>
                            Figure: Vista Image Versioning File Image Versioning File</dd>
                    </dl>
                </div>
                <p>
                    It will be much easier for user to know the version of the Windows Vista Image installed
                    in their machines if you put the versioning information in a text file, for example:
                    <b>C:\_VistaImageVersion.txt.</b></p>
                <p>
                    NOTE: When you build the image you need to update C:\_VistaImageVersion.txt.</p>
                <p>
                    &nbsp;</p>
            </li>
            <li>
                <h2>
                    <a name="Sidebar"></a>Do you remove the Windows Vista Sidebar?</h2>
                <p>
                    It is a waste of time and resources to have Windows Vista Sidebar activated.</p>
                <div>
                    <dl class="image">
                        <dt>
                            <img src="Images/Vista_Sidebar.jpg" alt="Vista Sidebar" /></dt>
                        <dd>
                            Figure: Disabling Windows Vista Sidebar</dd>
                    </dl>
                </div>
            </li>
        </ol>
        <h2>
            Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=EP">Eric Phan</a><br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AGT">Andy Taslim</a><br />
        </p>
    </div>
    </strong>
</asp:Content>