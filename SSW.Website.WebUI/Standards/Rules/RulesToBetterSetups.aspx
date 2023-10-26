<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Setup Packages" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <br />
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230536574757073')">
            Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#UserFriendly">Is your Setup.exe real user friendly with just Next, Next,
                Next?</a></li>
            <li><a href="#CheckForUpdates">Do you avoid deploying a separate application for users
                to check for update?</a></li>
            <li><a href="#SetupSourceStandardLocation">Do you keep your setup source files in a
                standard location?</a></li>
            <li><a href="#BuildVersionDay">Do you build a new version every day there are changes (a.k.a. Continuous Integration)?</a></li>
            <li><a href="#DisplayVersion">Do you display the version number publicly?</a></li>
            <li><a href="#MeaningfulVersionNumber">Is your version number meaningful?</a></li>
            <li><a href="#CreatePackageInitially">Do you make a setup.exe before development?</a></li>
            <li><a href="#package">Can you make a setup.exe in one step?</a></li>
            <li><a href="#UpdateVersion">Do you always update the version number whenever a new
                build is made?</a></li>
            <li><a href="#intelligence">Do you put the minimal amount of intelligence in the setup.exe?</a></li>
            <li><a href="#installonly">Do you know that the installer should only install files
                to the program files folder?</a></li>
            <li><a href="#AvoidMSIOnWeb">Do you skip setup installers for web project packages ?</a></li>
            <li><a href="#SystemRequirementScreen">Do you have an &quot;Installation Prerequisites&quot;
                screen during installation?</a></li>
            <li><a href="#IdenticalDirectoryName"><del>you always use the same name for virtual directory
                and its physical location?</del> </a><span style="color:Red">(* This feature has been fixed in Wise 7) </span></li>
            <li><a href="#InstallScreen">Have your installer educate with a screen capture?</a></li>
            <li><a href="#SetupFileName">Do you include version numbers in your setup filename?</a></li>
            <li><a href="#UnattendedInstallation">Do you have an "unattended installation" screen in your installer?</a></li>
       </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="UserFriendly"></a>Is your Setup.exe real user friendly with just Next,
                    Next, Next?</h2>
                <p>
                    Ideally the setup.exe should not be complicated. Its only purpose is to allow the
                    user to install the required software so that it can be run or tested.<br />
                    Simple meaningful screens for every dialog of the installation will help the user
                    only click &quot;Next, Next, Next&quot; until the application has been installed
                    correctly.
                </p>
                <p>
                    See <a href="/ssw/Standards/WiseSetup/UserGuide.aspx">http://www.ssw.com.au/ssw/Standards/WiseSetup/UserGuide.aspx</a>
                    for an example of appropriate dialogs used for the setup.exe.
                </p>
            </li>
            <li>
                <h2>
                    <a name="CheckForUpdates"></a>Do you avoid deploying a separate application for
                    users to check for update?</h2>
                <p>
                    We used to include the built-in Wise Update in our applications for users to check
                    and update to the latest version easily. However the problem is that users dont
                    check for updates manually.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/WiseUpdateMergeModule.gif" alt="Wise Update merge module" /></dt>
                    <dd>
                        Figure: Wise installer provides a version checker as a merge module for easy integration.</dd>
                </dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/WiseCheckForUpdate.gif" alt="Check for updates manually" /></dt>
                    <dd>
                        Figure: A separate application to check for update, how often will you check for
                        update manually? (Bad)</dd>
                </dl>
                <p>
                    Wise updater will never work because the WiseUpdt.exe is being called from the application
                    - so it can't fully uninstall itself when it is open - so it asks for a reboot.</p>
                <p>
                    <br />
                    The better way to check for updates is to do it automatically whenever the application
                    launches. We implement a version checker on the first wizard screen or applications
                    main screen, this way the users will know that we have a newer version available.<br />
                    E.g.:</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/BadUI.gif" alt="Check for updates automatically" /></dt>
                    <dd>
                        Figure: Users know that a new version is available, and they can click the link
                        to download new version. (Good)</dd>
                </dl>
                <p>
                    See <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/AllowUsersToCheckNewVersionEasily.aspx">http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/AllowUsersToCheckNewVersionEasily.aspx</a>
                    to see how to implement.</p>
            </li>
            <li>
                <h2>
                    <a name="SetupSourceStandardLocation"></a>Do you keep your setup source files in
                    a standard location?</h2>
                <p>
                    For consistency, always keep the &lt;Application&gt;.bld and &lt;Application&gt;.wsi
                    in &lt;Application Folder&gt;\Setup.
                </p>
                <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Code Auditor"
                    id="table13">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/CodeAuditor/">SSW Code Auditor</a> to check
                            for this rule.
                        </td>
                    </tr>
                </table>
            </li>
            <li>
                <h2>
                    <a name="BuildVersionDay"></a>Do you build a new version every day there are changes (a.k.a. Continuous Integration)?</h2>
                <p>
                    Each time changes have been made to an application, a new version should be built
                    at the end of the day (as a minimum). This enables testers to test the latest version,
                    and gives clients the ability to check progress made on their application.</p>
                <p>
                    The easiest way to achieve this is to have a continuous integration server (we use
                    Team Foundation Build Server). The continuous integration server automates a build
                    and unit test run for an application and reports on success/failure of the build
                    and tests.</p>
                <p>
                    At the end of a successful auotmated build process the install files produced are
                    available for testers and clients to use.</p>
                <p>
                    This process can be automated to run at specific times during the day and/or after
                    each check in to source control.</p>
		<dl class="goodImage">
                    <dt>
                        <img src="Images/Build.JPG" alt="Configure in TFS to build a new version every day" /></dt>
                    <dd>
                        Figure: Configure in TFS to build a new version every day</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="DisplayVersion"></a>Do you display the version number publicly?</h2>
                <p>
                    Displaying the version number publicly allows easier access to version number for
                    both testers and clients.</p>
                <p>
                    There should be 2 specific ways of displaying the version number:
                    <ol>
                        <li>A 3 part version number to be displayed throughout the application made up of the
                            Major, Minor and Patch numbers</li>
                        <li>A 4 part version number (including the build number) and date for display on the
                            Help, About screen</li>
                    </ol>
                </p>
                <p>
                    The version number should be <a href="#MeaningfulVersionNumber">meaningful</a>.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/PublicVersionNumberHelpAboutScreenBadFullshot.jpg" alt="Bad public display of version number Fullshot" /></dt>
                    <dd>
                        Figure: 4 part version number with no date / build number (Bad)</dd>
                </dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/PublicVersionNumberHelpAboutScreenBadIE.jpg" alt="Bad public display of version number IE" /></dt>
                    <dd>
                        Figure: 4 part version number with no date / build number - not meaningful to the
                        user (Bad)</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/PublicVersionNumberMainScreenGoodSSW.JPG" alt="Good public display of version number SSW Main screen" /></dt>
                    <dd>
                        Figure: Proper display of 3 part version number on main screen (Good)</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/PublicVersionNumberHelpAboutScreenGoodSSW.JPG" alt="Good public display of version number SSW Help About screen" /></dt>
                    <dd>
                        Figure: Proper display of 3 part version number, date and build number on Help,
                        About screen (Good)</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/PublicVersionNumberHelpAboutScreenGoodTortoise.JPG" alt="Good public display of version number Tortoise SVN Help About screen" /></dt>
                    <dd>
                        Figure: Proper display of 3 part version number, date and build number on Help,
                        About screen (Good)</dd>
                </dl>
                <p>
                    <a href="RulestoBetterCode.aspx#VersionConventions">This is how we follow our version
                        conventions for .NET projects</a></p>
            </li>
            <li>
                <h2>
                    <a name="MeaningfulVersionNumber"></a>Is your version number meaningful?</h2>
                <p>
                    A version number is only good if it conveys useful information. We use a 4 part
                    version number which is made up of the following:</p>
                    <ol>
                        <li>Major version number</li>
                        <li>Minor version number</li>
                        <li>Patch number</li>
                        <li>Build / Changeset number</li>
                    </ol>
                
                <p>
                    Each part of the version number has specific meaning:
                    <ul>
                        <li>The Major version number should only be changed at the discretion of the product
                            owner. This is usually due to addition of completely new areas of functionality
                            for the application.</li>
                        <li>The Minor version number should be incremented for each release and resets to zero
                            for a new major version.</li>
                        <li>The Patch number should be incremented for each hotfix applied in between releases
                            and resets to zero each new release.</li>
                        <li>The Build number should match the TFS changeset number and this increases non-sequentially
                            over time.</li>
                    </ul>
                </p>
                <p>
                   See the reason for <a href="#UpdateVersion">making the build number match the TFS changeset number, and why it
                    increases non-sequentially</a>.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/NonMeaningfulVersionNumberWord.jpg" alt="Non meaningful version number in word" /></dt>
                    <dd>
                        Figure: 4 part version number - not meaningful to the user (Bad)</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/PublicVersionNumberHelpAboutScreenGoodSSW.JPG" alt="Good public display of version number SSW Main screen" /></dt>
                    <dd>
                        Figure: Version number is more meaningful to users and testers (Good)</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="CreatePackageInitially"></a>Do you make a setup.exe before development?</h2>
                <p>
                    The setup.exe should be in the first release. Many developers leave it to the end
                    and all sorts of problems start happening when we realize that it would be better
                    if the application creates the virtual directory, rather than the setup.exe Nothing
                    good can happen when you leave the setup.exe to the end.
                </p>
            </li>
            <li>
                <h2>
                    <a name="package"></a>Can you make a setup.exe in one step?</h2>
                <p>
                    Making a setup.exe should be simple. As I have do to it every day I want to make
                    it as painless as possible. If it takes too long to package up your software, you're
                    going to run into troubles.
                </p>
                <p>
                    Regardless of the size of the project, if there are many steps involved in creating
                    a build, then chances are you will run into problems.<br />
                    My recommendation is to aim for a <b>one-step</b> build. A single program (or script)
                    that gets all the latest required files, adds a version number, compiles them, generates
                    a setup executable and places it on the correct media - CD ROM, FTP Site, etc.</p>
                <p>
                    On our .NET software development projects, look at all the steps we need to do to
                    make a setup.exe</p>
                <dl class="bad">
                    <dt>
                        <ol>
                            <li>Add a version number to the AssemblyInfo.vb or AssemblyInfo.cs
                                <ul>
                                    <li>eg.
                                        <pre>// &quot;2.22&quot; - DH 05-08-2004 implementing .NET error catching and
<br />// &quot;2.23&quot; - DH 16-08-2004 Clean up setup and options screen
<br />
<br />[assembly: AssemblyVersion(&quot;2.24.*&quot;)</pre>
                                    </li>
                                </ul>
                            </li>
                            <li>Build Solution<br />
                            </li>
                            <li>Open wise and change the Version number<br />
                                e.g. Updating Version number 2.24 to:<ul>
                                    <li>Product Details,</li><li>General Information,</li><li>Shortcut Names,</li><li>Wise
                                        Update .ini file information,</li><li>Product Summary,</li><li>Any Many more places
                                            in wise where eg &quot;2.23&quot; would be found.<br />
                                        </li>
                                </ul>
                            </li>
                            <li>Change the Source Paths in Wise for files<ul>
                                <li>All WiseSourcePaths need to be made generic<br />
                                    i.e.<br />
                                    <strong>from</strong> &quot;C:\Data\SSWCodeAuditor\References\TaskScheduler.dll&quot;<br />
                                    <strong>to</strong> &quot;..\References\TaskScheduler.dll&quot;)<br />
                                </li>
                            </ul>
                            </li>
                            <li>Rename the executable file to have version number<ul>
                                <li>SSWCodeAuditor_2-24.exe (or SSWCodeAuditor_2-24.msi)<br />
                                </li>
                            </ul>
                            </li>
                            <li>Copy to a specified location<ul>
                                <li>e.g. <u>\\ant\ssw\Download</u><br />
                                </li>
                            </ul>
                            </li>
                            <li>Q:\ Would you like to make this version live??<ul>
                                <li>If &quot;yes&quot; then</li><li>Copy to ftp location</li><li>Update database table<br />
                                </li>
                            </ul>
                            </li>
                            <li>Now the product can be installed.</li></ol></dt>
                    <dd>
                        Figure: Bad - The common way to update version number and build solution</dd>
                </dl>
                <p>
                    Now you can automate this using the following methods:</p>
                <ul>
                    <li><a href="/ssw/Standards/DeveloperGeneral/netTools.aspx#VBP">Visual Build Professional</a>
                        (Recommended)</li>
                    <li>MSBuild (Recommended)</li>
                    <li>.bat file</li>
                    <li>. vbs script</li>
                    <li>nANT</li>
                    <li>Final Builder</li></ul>
                <p>
                    We have chosen Visual Build Pro to automate our Version numbers in our .msi files.
                    This lessens the steps significantly. For future projects we will use MS Build as
                    we see this as the way forward with automating builds. MS Build provides several
                    advantages including, customizable build tasks, integration with a continuous build
                    server, source controlled build scripts.</p>
                <dl class="good">
                    <dt>
                          <ol>
                                        <li>Add a version number to the AssemblyInfo.vb or AssemblyInfo.cs
                                            <ul>
                                                <li>eg.
                                                    <pre>// &quot;2.22&quot; - DH 05-08-2004 implementing .NET error catching
<br />// &quot;2.23&quot; - DH 16-08-2004 Clean up setup and options screen
<br />
<br />[assembly: AssemblyVersion(&quot;2.24.*&quot;)</pre>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>Check-in all files and folders and close the solution.<br />
                                        </li>
                                        <li>Right-click the VBPAutoBuild.bld file in the Setup folder and select &quot;build&quot;
                                            <ul>
                                                <li>If all the steps are &quot;skipped&quot; you must make sure everything is checked
                                                    in<br />
                                                </li>
                                            </ul>
                                        </li>
                                        <li>After the build is complete, the product can be installed.<br />
                                        </li>
                                    </ol></dt>
                    
                    <dd>
                        Figure: Good - The better way to create a setup.exe</dd>
                </dl>
                <p>
                    Note: Wise or Installshield? Well not that much between them, but we use Wise Install
                    Master most of the time, because it is simpler than InstallShield.<br />
                    Here you can find <a href="../WiseSetup/WiseStandards.aspx">our standards</a> of how to use Wise</p>
            </li>
            <li>
                <h2>
                    <a name="UpdateVersion"></a>Do you always update the version number whenever a new
                    build is made?</h2>
                <p>
                    By using a <a href="#MeaningfulVersionNumber">meaningful</a> version number we can
                    easily identify exactly which version of an application someone is using. If the
                    version number is not changed for each build, we can never be sure which version
                    of an application is being used or what source was used to compile it.</p>
                <p>
                    The best way to ensure the build number is always updated is to update it during
                    the build process. We use Team Foundation Server's changeset number instead of an
                    incrementing build number. This can be achieved by using <a href="/SSW/Redirect/Tigris.htm">
                        MSBuild Community Tasks</a>.</p>
                <p>
                    By using the changeset number as the build number this means anyone can go into
                    source control and retrieve the exact source used to build a particular version
                    of an application. By definition this number is always increasing (it increments
                    any time someone commits a change to the repository). It also means we're implicitly
                    'tagging' each build. If explicit tags aren't set on the repository for a build/release
                    in other versioning conventions it can be very difficult to identify which version
                    of the source was used to produce that build/release.</p>
                <p>
                    It is very common for an application to still require minor fixes before the approval
                    to release it. Developers tend to ignore incrementing the version number for the
                    product even when making a minor change, and do not consider it to be important
                    (perhaps hoping that no one has yet installed the version that has been packaged).</p>
                <p>
                    However if the version number has not been increased then the installation package
                    will not prompt the user to upgrade it, rather it will ask the user to repair the
                    product which gives the impression that there has been no updates.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/VersionUpgrade.jpg" alt="Wise Update merge module" /></dt>
                    <dd>
                        Figure: The setup package will always pop up a dialog box to automate the upgrade
                        of the product as long as the version number has been changed.</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="intelligence"></a>Do you put the minimal amount of intelligence in the
                    setup.exe?</h2>
                <p>
                    The setup.exe should really just do an xcopy. Avoid putting any intelligence
                    (like creating databases or virtual directories) into the Wise/InstallShield Setup.
                    It is much cheaper and better to put this logic into the actual app.</p>
                <p>
                    As an example sees the three choices you have for creating a database - see the KB
                    about <a href="/ssw/KB/KB.asp?KBID=Q811788">how to create a SQL Server database</a>
                    as part of a script.</p>
                <p>
                    Exceptions do exist. We do put intelligence into the setup.exe if we need a clean
                    uninstall. Examples where we put intelligence in the setup.exe instead of the Windows/Web
                    Application:
                </p>
                <ul>
                    <li>Adding a VS.NET Toolbar - SSW Health Auditor adds a Toolbar - we would prefer to
                        do that inside the UI of the CodeAuditor.exe however if they uninstalled that, the
                        toolbar would still be there.</li>
                    <li>Adding a Outlook Toolbar - SSW Lookout and SSW eXtreme Emails have the same situation,
                        installing Toolbars in Outlook</li>
                    <li>Installing MSDE - but the uninstall should tell them they have to delete the database
                        first as per <a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Windows-Applications.aspx#CreateDatabase">
                            RulestoBetterInterfaces.aspx</a></li>
                    <li>Creating a Virtual Directory - SSW Access Reporter has ASP.Net Samples that require
                        a virtual directory to be created. We would like to be able to uninstall it.</li>
                </ul>
                <p>
                    Note: If you use one of the exceptions like the above, you should add a text file documenting this.
                    <br />
                    e.g. C:\Program Files\SSW Code Auditor\_Instruction.txt</p>
            </li>
            <li>
                <h2>
                    <a name="installonly"></a>Do you know that the installer should only install files
                    to the program files folder?</h2>
                <p>
                    For your applications the user settings should not stored in C:\Program Files -
                    if you do you can be assured that they wont work in Vista!</p>
                <p>
                    Instead you need to store the user's settings in the application data folder. A
                    common mistake is that the installer is used to copy the installer to copy the settings
                    files to the application data folder.</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/SettingsApplicationData.gif" alt="Setting Application Data"/></dt><dd>Figure: Bad - The installer
                            copies the settings files to the user's application data folder.</dd></dl>
                <p>
                    Therefore the installer should only copy files to the installation folder (eg: C:\Program
                    Files\SSW Code Auditor), because if the settings files are copied to the application
                    data folder by the installer, they will get removed on un-installation. This is
                    bad as they contain the user's settings.
                    <br />
                    <br />
                    The better way of doing this is keeping the default settings file in the installation
                    folder, and when the application starts up, if no settings file is found in the
                    user's application data folder, then copy the default settings file into the application
                    data folder.</p>
            </li>
            <li>
                <h2>
                    <a name="AvoidMSIOnWeb"></a>Do you skip setup installers for web project packages
                    ?</h2>
                <p>
                    If you want lots of people to use your Windows App, then you always need an installer.
                    Does the same rule apply for Web apps?</p>
                <p>
                    Web applications generally only need to be setup in three locations. That is, the
                    development machine, the test server, and the web (production) server. Therefore
                    there is no need to make a setup package for these projects as they will never need
                    to be installed on a mass scale which means that it's not worth the money to attempt
                    to have a more complicated setup package.
                </p>
                <p>
                    <b>Option 1:</b>
                </p>
                <p>
                    If you have access then simply use FTP to transfer synchronise files between servers</p>
                <p>
                    <b>Option 2:</b>
                </p>
                <p>
                    For most of our web projects we will commonly just use a zip file for distributing
                    the project for someone else to install at a remote location. This zip file includes:</p>
                <ul>
                    <li>The layout files (.aspx)</li>
                    <li>The resource files (.jpg, .css, .js, etc)</li>
                    <li>The bin directory with the .dll files</li>
                    <li>a _Instructions.doc with screen captures and detailed documentation on how to configure
                        the file system, IIS, and directory security.<br>
                        This way our network administrators can be kept happy by having full control over
                        where in the file-system the websites live (which might be important for the backup
                        strategy) and allow us to make full use of webserver features within our application.</li>
                </ul>
                <p>
                    <dl class="image">
                        <dt>
                            <img src="Images/zipfile.gif" alt="Website Zip" /></dt>
                        <dd>
                            Figure: Shows the folder of a website as a Zip File.</dd>
                    </dl>
                </p>
                <p>
                    <b>Need more reasons:</b>
                </p>
                <p>
                    The reasons we do not make an .exe or .msi for a web project are many. As detailed
                    above it mainly development the development cost that only a couple of people will
                    use. There are other difficulties developing .exe's and .msi's like:</p>
                <ul>
                    <li>creating virtual directories. Wise will only allow you to install to the Default
                        Website</li>
                    <li>configuring the directory and IIS security options, for example granting the local
                        ASPNET user account access to your physical directory</li>
                    <li>handling important settings in the web.config file (remember the normal implementation
                        of a website has this read-only)</li>
                    <li>support of other web server platforms (other than IIS)</li>
                </ul>
                <p>
                    Note: There is one obvious exception to the rule, and that is when you need to create
                    a sample web project as part of some other application. For example, a website would
                    be included in your .msi when installing a web control component with samples.
                </p>
            </li>
            <li>
                <h2>
                    <a name="SystemRequirementScreen"></a>Do you have an &quot;Installation Prerequisites&quot;
                    screen during installation?</h2>
                <p>
                    There is no point to allow the user to install your software and find out they cannot
                    use it. Therefore, the setup.exe should always have an &quot;Installation Prerequisites&quot;
                    screen in your installation, after the first welcome screen.
                </p>
                <p>
                    Furthermore, you should detect if your user's computer meets all these requirements
                    and give them the link to download the required software if possible.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/InstallationPrereq.jpg" alt="Installation Prerequisites" /></dt>
                    <dd>
                        Figure: Detect installation prerequisites and give download buttons</dd>
                </dl>
                <p>
                    Sometime, it's not possible to detect the required software during the installation.
                    An example would be if you require your users to have SQL Server installed, but
                    this can be on a networked computer. If you have this case then your setup.exe should
                    have an &quot;Other Requirements&quot; form in your installation.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/RulesT2.jpg" alt="SSW Exchange Reporter Setup" /></dt>
                    <dd>
                        Figure: In this case SQL Server 2000 or SQL Server 2005 Reporting Services can be
                        installed on a networked machine, so the user is only given the information and
                        the application will worry about checking and setting up this.</dd>
                </dl>
                <p>
                    Warning: Too many times the 'Continue Anyway' approach is not taken, and the developers
                    add validation but with no flexibility to continue. An example of this can be found
                    in an installation package that requires a user to have a certain version of SQL
                    Server, or SQL Server Reporting Services, or Exchange Server, or .NET Framework
                    on his computer. The disabled button stops the user just clicking &quot;Next&quot;
                    without noticing the problem and the checkbox gives the user to ignore it when they
                    know it is OK, for example if a newer version of the .NET Frameword is released
                    that supports .NET 2.0 apps but the registry key that the setup.exe is looking for
                    has changed.</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/ContinueAnyway.jpg" alt="Continue Anyway Checkbox" /></dt>
                    <dd>
                        Figure: 'Continue Anyway' checkbox allows user to continue even when conditions
                        are not met (Good)</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="IdenticalDirectoryName"></a><del>Do you always use the same name for virtual
                    directory and its physical location?</del><span style="color:Red">(* This feature has been fixed in Wise 7) </span></h2>
                <del>
                <p>
                    There is a common issue with installing a virtual directory in Wise 5.2. The &quot;Remove
                    on Uninstall&quot; does not actually work when the Local Path name differs from
                    the &quot;Starting Point&quot; name.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/WiseVirtualDirectoryDetailBad.gif" alt="Wise Virtual Directory Details (Bad)" /></dt>
                    <dd>
                        Figure: The virtual directory will not be uninstalled with inconsistent name .</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/WiseVirtualDirectoryDetailGood.gif" alt="Wise Virtual Directory Details (Good)" /></dt>
                    <dd>
                        Figure: To resolve this issue the names must be consistent with each other.</dd>
                </dl></del>
            </li>
            <li>
                <h2>
                    <a name="InstallScreen"></a>Have your installer educate with a screen capture?</h2>
                <p>
                    In your Installer need include a screen capture like below:
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/Setup_Screen.jpg" alt="Wise Virtual Directory Details (Bad)" /></dt>
                    <dd>
                        Figure: While installing Resharper, then teach you 8 things about the product. Awesome.</dd>
                </dl>
           </li>
           <li>
                <h2>
                    <a name="SetupFileName"></a>Do you include version numbers in your setup 
                    filename?</h2>
                <p>
                    I'm always downloading my favourite 3rd party software utilities from the web. 
                    But I find it very frustrating if the developer has not made it easy to check 
                    whether I've already got the latest version. It is not OK to expect a user to 
                    run the setup.exe in order to find out what version it is.
                </p>
                <p>
                    The easy solution is to include the version number in the name of the setup 
                    file. We use [productname]_ver[major version]-[minor version].exe E.g. 
                    SSWCodeAuditor_Ver1-89.exe
                </p>
                <p>
                    In .NET, however, you strike a problem. .NET removes any 0 in the prefix and so 
                    e.g. _v1-02 becomes _v1-2.&nbsp; The rather contrived solution is to start minor 
                    versions at 11. Therefore _v1-11.exe is your first version.
                </p>
                <p>
                    To deal with those naughty developers who don't include version numbers, rename 
                    the file after you download it...
                </p>
                 <dl class="image">
                    <dt>
                        <img src="Images/SetupFileName.jpg" alt="Download the software then rename it with version" /></dt>
                    <dd>
                        Figure: Download the software then rename it with version.</dd>
                </dl>
                 <dl class="badCode">
                    <dt>setup.exe<br />ExtremeEmailsSetup.exe</dt>
                    <dd>
                        Bad setup file name</dd>
                </dl>
                <br/>
                <dl class="goodCode">
                    <dt>ExtremeEmails_Ver1-12.exe</dt>
                    <dd>
                        Good setup file name</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="UnattendedInstallation"></a>Do you have an "unattended installation" screen in your installer?</h2>
                <p>
                    The installer should include a screen showing how to do an unattended installation.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/UnattendedInstallation.png" alt="Good unattened installation information (Good)" /></dt>
                    <dd>
                        Figure: Including unattended installation information</dd>
                </dl>
           </li>
        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AW">Andrew Weaver</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AH">Adel Helal</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=PA">Peter Ahn</a><br />
    </p>
</asp:Content>
