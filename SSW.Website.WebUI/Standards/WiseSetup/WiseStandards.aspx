<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW's Wise Standard for Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <p>
        As a part of Branding within SSW, all the product installations should have a standard
        layout. There is no point having one installation that has the SSW Logo and the
        web site if none of the others follow suit.
    </p>
    <p>
        The idea is that each product when the first installation is created should have
        several items filled out by the programmer working on the product. Below is a list
        of the current items that are required in the product installations.
    </p>
    <p>
        <a href="WiseScript/SSW.msi">This</a> is a standard WISE Installation Script file
        (to make an .msi). You will need WISE for Windows Installer to open it.<br />
        <b>Note: This document has been updated to Wise 7.</b>
    </p>
    <p>
        To see the standard on how to release a version see <a href="/ssw/Standards/WiseSetup/ReleasingAVersion.aspx">
            http://www.ssw.com.au/ssw/Standards/WiseSetup/ReleasingAVersion.aspx</a></p>
    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
        style="{width: 100%}">
        <tr>
            <td>
                <b>SSW's Wise Enterprise Standard for Products</b><br />
                <ol>
                    <li><a href="#InstallationDirectories">Installation Directories</a></li>
                    <li><a href="#ProductCode">Copy the Product Code Across</a></li>
                    <li><a href="#IncludeAllFiles">Include all the files needed</a></li>
                    <li><a href="#DefaultDirectory">Change the Default Directory</a></li>
                    <li><a href="#AddRemoveProd">Enter Add/Remove Program Information</a></li>
                    <li><a href="#AddShortcuts">Add Shortcuts</a></li>
                    <li><a href="#SystemSearch">Remove Unnecessary System Searches</a></li>
                    <li><a href="#AssemblyDependency">Remove Assembly Dependency</a></li>
                    <li><a href="#CustomActions">Modify Custom Actions</a></li>
                    <li><a href="#LaunchProgram">Launch Program and View Documentation options on Exit Dialog</a></li>
                    <li><a href="#RegisterDLL">Register and UnRegister Assemblies (DLL) for ComInterop Projects</a></li>
                    <li><a href="#Theme">Apply theme to installation dialogs</a></li>
                    <li><a href="#UseEXEandMSI">Generate both EXE and MSI packages from Wise Installer</a></li>
                    <li><a href="#VistaFeature">Some special features for Vista</a></li>
                    <li><a href="#RunDiagnostics">Run 'SSW Diagnostics' after installation (Recommend)</a></li>
                    <li><a href="#SysReqInstallation">Do you have a 'Systems Requirements' screen when installing
                        a product?</a></li>
                </ol>
            </td>
        </tr>
    </table>
    <ol>
        <li>
            <h2>
                <a name="InstallationDirectories"></a>Installation directories</h2>
            <p>
                To setup template for the Wise Installer for Windows:
                <ol>
                    <li>Copy SSWWindowsApplications.msi
                        <br />
                        from <a href="WiseScript/SSW.msi">www.ssw.com.au/ssw/Standards/WiseSetup/WiseScript/SSW.msi</a><br />
                        to you application's &quot;Setup&quot; folder.<br />
                        <br />
                        This template will be used in conjunction with the Visual Build Pro script which
                        will be used to build release packages.<br />
                        <br />
                    </li>
                    <li>Now we can create new setup with the standard template<br />
                        Right-click the SSW.msi and choose &quot;Edit in Wise editor&quot;.<br />
                        <br />
                        <img border="0" src="Images/RightClickWiseFile_v7.jpg"><br />
                        <b>Figure: Open file using the Wise editor.</b><br />
                        <br />
                    </li>
                    <li>Go to the &quot;File&quot; Menu and &quot;Save As...&quot;, then choose &quot;Installer
                        Projects (*.wsi)&quot; from the type combo as shown below, then name the file after
                        your solution file's name.<br />
                        <br />
                        <img border="0" src="Images/SaveAsWsi.jpg" width="427" height="305"><br />
                        <b>Figure: Save file as a wsi file.<br />
                            <br />
                        </b>This will prevent developers from keeping a template on their local drive rather
                        than always getting the latest template.<br />
                        <br />
                        <br />
                </ol>
            </p>
        </li>
        <li>
            <h2>
                <a name="ProductCode"></a>Copy the Product Code Across</h2>
            <p>
                This is very important if you are creating a new package for an existing product. 
                You also need to check the codes in the package that you get from Source Safe to ensure that they're the same as the previous released version.<br />
                If you do not copy the Product Code across from the old WSI file, your new package
                will not be able to detect versions created with old Wise packages and will not
                uninstall these older versions.</p>
            <p>
                Copying the Product Code:
                <ol>
                    <li>Open the old WSI file.</li>
                    <li>Select the Setup Editor.</li>
                    <li>Click the Product Tab.</li>
                    <li>Select Properties from the tree view.</li>
                    <li>Copy the Product Code value.</li>
                    <li>Paste the Product Code into your new WSI file.</li>
                    <li>Repeat the process for the UpgradeCode.</li>
                    <li>Repeat the process for the PackageCode (which is found in the Summary section).</li>
                </ol>
            </p>
            <p>
            <dl class="image">
                    <dt>
                <img border="0" src="Images\ProductCode.jpg"></dt><dd>
                Figure: The Product Code</dd></dl>
                <br />
                &nbsp;</p>
        </li>
        <li>
            <h2>
                <a name="IncludeAllFiles"></a>Include all the files needed</h2>
            <p>
                Select &quot;Files&quot; on the left hand side and browse through to the folder
                containing your release. Select the files you would like to add, and click 'Add
                File'.<br />
                Make sure the directory structure in the bottom left is correct as needed on the
                client computer.<br />
                The icon of the project should be set in the Application's exe.</p>
            <p>
                <dl class="image">
                    <dt>
                <img border="0" src="Images/WiseSt2_v7.jpg" alt=""></dt><dd>
                Figure: Adding files to the package</dd></dl></p>
            <p>
                The following files should <b><span style="color: #ff0000">NOT</span></b> be included:</p>
            <ul type="disc">
                <li>*.scc;*.vspscc - Source Safe Files</li>
                <li>*.pdb - Debug Files</li>
                <li>*.user - User settings for Visual Studio .NET IDE</li>
            </ul>
            <p>
                You can enforce these by adding those extensions to the Exclude Wildcard. Make sure
                that the wildcards are similar to those in the application's old msi.<br />
                <br />
                <dl class="image">
                    <dt>
                        <img src="Images/wildcard_v7.jpg" alt="wildcard" /></dt><dd>Figure: Using Wildcards</dd></dl>
                <br />
                <dl class="image">
                    <dt>
                        <img src="Images/wildcard-details_v7.jpg" alt="wildcard-details" /></dt><dd>Figure:
                            Exclude wildcards</dd></dl>
            </p>
            <p>
                These files will automatically be removed on uninstall because Wise keeps a link
                to each file that has been added above. However, if there are files that have been
                added to the directory <i>after</i> the installation process, Wise will not have
                the list of these files to remove. Therefore the RemoveFile operation needs to be
                added to the list as shown below:
            </p>
            <ol>
                <li>In the Destination Files list, select the "Remove file" option from the "Operation"
                    button.
                    <dl class="image">
                        <dt>
                            <img src="Images/destinationOperation_v7.jpg" alt="destination operation" /></dt>
                        <dd>
                            Figure: Specifying the "Remove File" Operation.</dd>
                    </dl>
                </li>
                <li>In the dialog box, check the "All Files" checkbox and select "Uninstall" in the
                    "Remove During:" drop down list.
                    <dl class="image">
                        <dt>
                            <img src="Images/RemoveFileProperties_v7.jpg" alt="Remove File Properties" /></dt>
                        <dd>
                            Figure: "Remove all files during uninstall".</dd>
                    </dl>
                </li>
                <li>Click OK.
                    <dl class="image">
                        <dt>
                            <img src="Images/RemoveFileOperation_v7.jpg" alt="Remove File Operation" /></dt>
                        <dd>
                            Figure: The "RemoveFile" operation is added to the file list.</dd>
                    </dl>
                </li>
            </ol>
        </li>
        <li>
            <h2>
                <a name="DefaultDirectory"></a>Change the Default Directory</h2>
            <p>
                Once the files have been added, the directory will be available in the Directory
                combo boxes throughout the wise installer.
                <ol>
                    <li>Go to the &quot;Project Details&quot; section from the left hand menu. </li>
                    <li>Click the &quot;Change&quot; button and select the appropriate Program Files folder
                        that the product will be installed under.
                        <br />
                        <br />
                        <img src="Images/DefaultDirectory_v7.jpg"><br />
                        <b>Figure: Select the correct Default Directory</b><br />
                    </li>
                </ol>
                <p>
                    The merge module directory must now also be set if you want to use the components
                    than can't be packaged automatically.
                    <ol>
                        <li>Go to the &quot;Merge Module&quot; section from the left hand menu, click &quot;Add&quot;
                            button to add modules
                            <br />
                            <br />
                            <img src="Images/MergeModule_v7_1.jpg"><br />
                            <b>Figure: Add MFC component</b><br />
                            <br />
                        </li>
                        <li>Set the destination directory of the component to install.<br />
                            <br />
                            <img src="Images/MergeModule_v7_2.jpg" /><br />
                            <b>Figure: Install MFC component to System32 folder.</b> </li>
                        <li>The module is added. You can double click the module to edit its properties.
                            <br />
                            <br />
                            <img src="Images/MergeModule_v7_3.jpg"><br />
                            <b>Figure: The MFC module is added to the installer.</b><br />
                            <br />
                        </li>
                    </ol>
                </p>
            </p>
        </li>
        <li>
            <h2>
                <a name="AddRemoveProd"></a>Enter Add/Remove Program Information</h2>
            <p>
                Select &quot;Add/Remove Programs&quot; on the left hand side and enter information
                that will show up in the Add/Remove Program Control Panel for Windows 2000/XP:
                <ol>
                    <li>Select the icon that will appear in the Add/Remove Program list.<br />
                        There should be an ssw.ico for SSW products.<br />
                        Note: You will need to add the files first before accessing the executable through
                        the 'browse..' button.<br />
                        <br />
                    </li>
                    <li>Check &quot;Hide modify button&quot; if the product does not have multiple installation
                        features.<br />
                        <br />
                    </li>
                    <li>Contact Person should be the current head developer for the application.<br />
                        <br />
                    </li>
                    <li>Help URL should reference product's Online User Guide<br />
                        Example: <a href="/ssw/CodeAuditor/UserGuide.aspx">/ssw/CodeAuditor/UserGuide.aspx</a><br />
                        <br />
                        <img border="0" src="Images/WiseAddRemove_v7.jpg" alt="Wise Add remove"><br />
                        <b>Figure: Add/Remove Program entry page</b><br />
                        <br />
                        <img border="0" src="Images/WiseSt3_v7.jpg" alt=""><br />
                        <b>Figure: What it will look like in Add/Remove Control Panel<br />
                        </b>
                            </li>
                </ol>
        </li>
        <li>
            <h2>
                <a name="AddShortcuts"></a>Add Shortcuts</h2>
            <p>
                Enter Shortcut setting that will appear in the Start | Program Menu
                <ol>
                    <li>Destination Directory will be suffixed with version so product version can be checked
                        at a glance without executing the application. This will be handled by Visual Build
                        PRO.<br />
                        <br />
                    </li>
                    <li>Prefix Name of each item with a number so sorting can be controlled. Main executable
                        should start with 1 so it will appear at the top.<ul>
                            <li>Click 'Add'.</li>
                            <li>Click 'Next'.</li>
                            <li>Select the main executable to be put in your installation package.</li>
                            <li>Click 'Next'</li>
                            <li>Expand the 'Programs' node and select the '[ProductName]' folder, then click Ok</li>
                            <li>Change the name of the Shortcut as shown in Figure1.</li>
                            <li>Select the icon.</li>
                            <li>Look at the disabled &quot;Icon Number&quot; and remember the icon number value.</li>
                            <li>Uncheck &quot;Advertised&quot; checkbox and enter the icon number value in the &quot;Icon
                                Number&quot; textbox.</li>
                            <li>Click OK.<br />
                                <br />
                                <b>Note: If you remove the file from the wise package that is associated with the shortcut,
                                    the shortcut will also be removed.</b><br />
                            </li>
                        </ul>
                        <p>
                            <img border="0" src="Images/AddShortCut_v7.gif" alt="Add shortcut"><br />
                            <b>Figure 1: Make sure the shortcut name is &quot;1. [ProductName]&quot; and select
                                the icon by clicking &quot;New Icon&quot; button.</b><br />
                            &nbsp;</p>
                    </li>
                    <li>Change the component reference in the Shortcut Tables.<ul>
                        <li>Select &quot;Setup Editor&quot; on the bottom left panel</li>
                        <li>Select &quot;Tables&quot; tab on the top left panel</li>
                        <li>Select the &quot;Shortcuts&quot; table on the left panel list (as shown in Figure
                            2)</li>
                        <li>Change all the &quot;Components_&quot; column to be the same as the Executable.
                            (as shown in Figure 3)</li>
                    </ul>
                        <p>
                            <br />
                            <img border="0" src="Images/WiseSt4_v7.jpg" alt="" ><br />
                            <b>Figure 2: The default way in which the &quot;Shortcuts&quot; table has different
                                references to the &quot;Component_&quot; key. This will not allow the _Update and
                                _Uninstall shortcut to be removed from the start menu on uninstall.</b></p>
                        <p>
                            <img border="0" src="Images/WiseSt5_v7.jpg" alt=""><br />
                            <b>Figure 3: A better way of allowing shortcuts to be removed on uninstall is to have
                                the component references the same as the shortcut of the executable file.<br />
                                &nbsp;</b><li>Technical Note: (this step is not required) Destination Directory are
                                    stored in the Directory Table. This should generally be left as it is since Visual
                                    Build PRO will update the DefaultProgramMenu directory name.<br />
                                    <br />
                                    If there is an exception to changing it from the standard naming system (which I
                                    doubt will be the case, then refer to Figure 4 to access the Directory Table):<br />
                                    <ul>
                                        <li>Select Setup Editor on the bottom left panel</li>
                                        <li>Select Tables tab on the left panel</li>
                                        <li>Select Directory on the left panel list</li>
                                        <li>Select Row with DefaultProgramMenu on the main panel</li>
                                    </ul>
                                    <br />
                                </li>
                            <img src="Images/ShortcutsPage_v7.JPG" alt="Shortcuts page"><br />
                            <b>Figure 4: Add Shortcuts that appears in Start Menu</b><br />
                            <br />
                            <img src="Images/TableDirectoryPage_v7.JPG" alt="Table directory page">
                            <br />
                            <b>Figure 5: Modify DefaultProgramMenu to change Shortcuts destination</b><p>
                                <b>
                                    <img border="0" src="Images/imgUninstallOptionInStartMenu_v7.JPG" alt="" ><br />
                                    Figure 6: This is how it should look in Start Menu<br />
                                </b>
                </ol>
                <p>
                    <br />
        </li>
        <li>
            <h2>
                <a name="SystemSearch"></a>Remove Unnecessary System Searches</h2>
            <p>
                The Wise Template includes all the possible system searches for all SSW's products.
                This makes it easier to remove the registry key searches that specific applications
                do not need, rather than adding them individually and having to spend those extra
                few minutes to find the registry keys required per application.</p>
            <p>
                If the system searches are not removed, the first dialog of the wizard takes a long
                time to load.<br />
                <img border="0" src="Images/SearchDialog_v7.jpg">
                <br />
                <b>Figure: Wise dialog taking a long time to finish searching the system.</b></p>
            <p>
                In the wise file that has been copied over to the specific Setup folder, remove
                all the system searches you do not need.<br />
                <img border="0" src="Images/SystemSearch_v7.jpg"><br />
                <b>Figure: Select unneeded system searches and click &quot;Delete&quot;</b></p>
            <br />
        </li>
        <li>
            <h2>
                <a name="AssemblyDependency"></a>Remove Assembly Dependency Check</h2>
            <p>
                Make sure the Wise File does not scan for dependencies.<br />
                This makes sure that the Build Script does not include the dependencies (especially
                moving dll's into the GAC of the destination machine), which was not initially specified.</p>
            <p>
                The reason why we turn the scanning for dependencies off is for the following:</p>
            <ul>
                <li>Usually the assemblies that wise wants to add, are the ones that the developer doesn't
                    want to add. When you tell it no it asks for every subsequent build.</li>
                <li>The additional scanning takes time, and sometimes a lot of time.</li>
                <li>Not being able to build wise and just walk away and come back later the dialog demands
                    user interference.<br />
                    eg. In Smart Salary, because the job was an upsize job there was a lot of interop
                    libraries that WISE insisted that we must have. Clicking through 10+ screens to
                    ignore the add-reference dialog got really tedious.</li>
                <li>The build script will automatically add them when running in silent mode.</li>            </ul>
            <p>
                Trade off:<br />
                &nbsp;<ul>
                    <li>Obviously, if WISE doesn't scan for dependencies, then when you add new components,
                        you may forget to add them to your setup project. However, if you forgot to add
                        a component to setup, this is usually very quickly caught in testing the application,
                        and the fix is relatively simple as well. This simple trade off is worth all the
                        hassle of having it on.</li>
                </ul>
            </p>
            <p>
                &nbsp;Steps to remove Assembly Dependency scanning:</p>
            <ol>
                <li>Goto Tools -&gt; Options.</li>
                <li>Make sure the &quot;Never Scan Dependencies&quot; is selected in the &quot;Scan
                    Dependencies&quot; drop down.</li>
                <li>Make sure the &quot;Rescan assembly dependencies on compile&quot; and &quot;Rescan
                    assembly attributes on compile&quot; are both unchecked.</li>
                <li>You can also uncheck the &quot;Rescan for COM interop registry keys on compile&quot;,
                    and select &quot;.Net Application&quot; in the drop down.</li>
                <li>Click OK.<br />
                    <br />
                    <img border="0" src="Images/WiseDepencyBad1_v7.jpg" alt=""><br />
                    <b>Figure: Bad</b><br />
                    <br />
                    <img border="0" src="Images/WiseSt1_v7.jpg" alt="" ><br />
                    <b>Figure: Removing the assembly dependency checks for every compile - Good</b></li>
            </ol>
            <p>
                <br />
            </p>
        </li>
        <li>
            <h2>
                <a name="CustomActions"></a>Modify Custom Actions</h2>
            <p>
                The SSW Template provides an existing number of custom actions used for standardizing
                the installation package. However the custom actions need to be specified for each
                application.<br />
                There are only two custom actions that need to be modified and can be done by following
                the below steps:<br />
                &nbsp;<ol>
                    <li>Click the MSI Script Tab (found in the bottom Tab control of the Wise environment)</li>
                    <li>Select &quot;All Custom Actions&quot; from the pull down combo box as shown below.<br />
                        <img border="1" src="Images/MSIScriptSection_v7.jpg" ><br />
                        <b>Figure: Select &quot;All Custom Actions&quot;</b><br />
                        &nbsp;</li>
                    <li>Select the &quot;LaunchApplicationAction&quot; from the list of actions as shown
                        below.<br />
                        <img border="1" src="Images/CustomActions_v7.JPG"><br />
                        <b>Figure: Select the &quot;LaunchApplicationAction&quot; Custom Action</b><br />
                        &nbsp;</li>
                    <li>Double click the custom action and modify the exe to be that of your application's
                        .exe.<br />
                        <img border="0" src="Images/LaunchApplicationAction_v7.jpg"><br />
                        <b>Figure: Modify the 'LaunchApplicationAction' to point to the application's exe by
                            browsing the destination files.</b><br />
                        &nbsp;</li>
                    <li>Do the same for the &quot;LaunchDocAction&quot; so that it points to the specific
                        application's User Guide.<br />
                        <img border="0" src="Images/LaunchDocAction_v7.jpg"><br />
                        <b>Figure: Modify the 'LaunchDocAction' to point to the application's UserGuide URL.<br />
                            &nbsp;</b></li>
                    <li>Save the .wsi file</li>
                </ol>
            </p>
            <p>
                The other steps are optional. After the wise file has been saved and checked
                for correctness, the next step would be to get the Visual Build template from the
                following link:</p>
            <p>
                <a href="/ssw/StandardsInternal/VisualBuildProSetup/Default.aspx">Template for Visual
                    Build PRO can be found here.</a></p>
            <p>
                &nbsp;</p>
        </li>
        <li>
            <h2>
                <a name="LaunchProgram"></a>Launch Program and View Documentation options on Exit
                Dialog</h2>
            <p>
                On Exit Dialog, we must include Run Program, Open Online User Guide and Run SSW
                Diagnostics.
            </p>
            <p>
                SSW Diagnostics helps our developer to analyze your problem by collecting information
                about your system. This application will collect that information and then email
                it to our developers, you may view the information before you send it if you wish.</p>
            Now to configure scripts to provide this capability:
            <ol>
                <li>Select Setup Editor from bottom tab</li>
                <li>Select Dialogs from the side panel tab</li>
                <li>Select Exit Dialog from the side panel</li>
                <li>Double click each checkbox and check that the property is set correctly<br />
                    <p>
                        <img src="Images/StartInstallationDialog_v7.JPG" alt="">
                        <br />
                        <b>Figure: Configuring Exit Dialog to support Autorun<br />
                            &nbsp;</b></p>
                </li>
                <li>Double click the Finish button and set the Events to run program after installation.<br />
                    <p>
                        <img src="Images/SetupAutorun_v7.JPG" alt="">
                        <br />
                        <b>Figure: Configuring Finish button<br />
                            &nbsp;</b></p>
                </li>
            </ol>
            <p>
                <br />
                &nbsp;</p>
            <p>
                <a href="../Rules/RulestoBetterCode.aspx#VersionConventions">For more information on
                    Versioning Standards please follow this link.</a><br />
                &nbsp;</p>
        </li>
        <li>
            <h2>
                <a name="RegisterDLL"></a>Register and UnRegister Assemblies (DLL) for Com-Interop
                Projects</h2>
            <blockquote>
                <blockquote>
                    <p>
                        If you are building a setup for a Com-Interop project, some information needs to
                        be added to the registry so that your DLL can be called as though they were COM
                        components.</p>
                    <p>
                        Make sure that the &quot;Application Type&quot; in WISE is configured as either
                        a .NET Application or MIXED, because otherwise (obviously enough) WISE will not
                        let you register the Assembly.
                    </p>
                    <p>
                        <img border="1" src="Images/WiseSt7.gif" alt="" width="563" height="101"><br />
                        <b>Figure: Make sure the &quot;Application Type&quot; in WISE is configured to .NET
                            Application or MIXED</b></p>
                    <p>
                        To configure WISE to register the Assembly, in the Installation Expert, under the
                        Feature Details Tab on the left hand side, select &quot;Files&quot; and double click
                        the DLL that you want to register.</p>
                    <p>
                        <img border="0" src="Images/WiseSt6.gif" alt="" width="194" height="208">&nbsp;&nbsp;&nbsp;&nbsp;
                        <img border="0" src="Images/WiseSt2.gif" alt="" width="260" height="236"><br />
                        <b>Figure: Double click the assembly file you want to register</b></p>
                    <p>
                        In the dialog box that pops up, enter the following details under the &quot;self-registration&quot;
                        tab</p>
                    <p>
                        <img border="0" src="Images/WiseSt5.gif" alt="" width="437" height="369"><br />
                        <b>Figure: Configure 'Self-registration' for assembly</b></p>
                    <p>
                        Make sure you have &quot;Use order specified below&quot; selected in the drop down
                        and that you check the &quot;Generate COM interop registry keys for .NET assembly&quot;
                        at the bottom of the dialog window.</p>
                    <p>
                        After doing that, WISE will create all the registry keys that are required to properly
                        register the DLL for a COM-interop project. You can verify that by looking at the
                        registry keys added to the destination computer under WISE</p>
                    <p>
                        <img border="1" src="Images/WiseSt4.gif" alt="" width="317" height="322"><br />
                        <b>Figure: Wise will generate all necessary registry keys for register the DLL</b></p>
                    <p>
                        Compile and test your project.</p>
                    <p>
                        When you uninstall the product, WISE will take care of unregistering the Assembly
                        for you by removing the registry keys it created during install.</p>
                </blockquote>
            </blockquote>
        </li>
        <li>
            <h2>
                <a name="Theme"></a>Apply theme to installation dialogs
            </h2>
            <p>
                You can change the look of installation dialog boxes with theme. You can add/edit the images, texts Wise 7 offers some standard themes in "Dialogs".<br />
                <img border="1" src="Images/Theme_1.jpg" alt="" width="625" height="536" /><br />
                <b>Figure: Select theme.</b> <br />
            </p>
            <p>
                You can also edit those standard themes.<br />
                <img border="1" src="Images/Theme_2.jpg" alt="" width="530" height="422" /><br />
                <b>Figure: Edit theme.</b> <br />
           </p>
           <p>     
                We do have our standard for the look of dialogs during installation. Check <a href="UserGuide.aspx">the user guide</a>.<br />
                To customize the dialogs, we need to go to Setup Editor | Dialogs to edit.<br />
                <img border="1" src="Images/Theme_3.jpg" alt="" width="799" height="614" /><br />
                <b>Figure: Customize dialog</b><br />
            </p><p>
                <b>Note: </b>If the installation file is created by previous Wise, like Wise 5, we will find the "none" option in the default theme. Please make sure that the default theme is set to be "NONE" if you have ever created customized dialog. Otherwise, the dialog box customization will be lost.<br />
                <img border="1" src="Images/Theme_4.jpg" alt="" width="395" height="323" /><br />
                <b>Figure: Set the default theme to "none"</b><br />
                <img border="1" src="Images/Theme_5.jpg" alt="" width="560" height="451" /><br />
                <b>Figure: dialog customization is lost.</b><br />
            </p>
        </li>
        <li>
            <h2>
                <a name="UseEXEandMSI"></a>Generate both EXE and MSI packages from Wise Installer</h2>
            <p>
                Nowadays the exe package is more commonly use, for example some of the famous software
                download websites, they are hosting files on voluntary ISP around the world, some
                of them don't have the MIME types setup for MSI, however EXE is widely accepted.
            </p>
            <p>
                EXE provides upgrade feature which will allow user to uninstall old version automatically,
                it's very handy for end users. However, MSI can be opened in WISE studio directly,
                so it's very handy for developers to analyze the content. Therefore, they both have
                pro and cons and we provide both version.
            </p>
            <p>
                <img border="0" src="Images/WiseEXEBad_v7.jpg" alt=""><br />
                <b>Figure: Generate MSI package only(Bad)</b></p>
            <p>
                <img border="0" src="Images/WiseSt9_v7.jpg" alt=""><br />
                <b>Figure: Generate both EXE and MSI packages and prompt use for uninstalling old version
                    (Good)</b></p>
            <p>
                This will ensure WISE generating EXE as well as MSI packages for your product.
            </p>
            <p>
                Make sure you tick 'Prompt to remove previous version before installing' checkbox,
                and update the prompt message in 'Property' table. The reason for this is because
                our Visual Build will include the product version in our product name, so if you
                don't do this, the prompt message will be very confusing.
            </p>
            <p>
                <img border="0" src="Images/WiseSt10_v7.jpg" alt=""><br />
                <b>Figure: Default Wise warning message for uninstalling old version (Bad)</b></p>
            <p>
                <img border="0" src="Images/GoodWiseSetupUpgrade_v7.jpg" alt=""><br />
                <b>Figure: Modified Wise warning message for uninstalling old version (Good)</b></p>
            <p>
                To change this, go to the 'Property' table in wise, and change the 'WiseInitExistError'
                property's value to
            </p>
            <table border="0" width="59%" id="table1" bgcolor="#CCCCCC">
                <tr>
                    <td>
                        Old version detected.<br />
                        <br />
                        You are trying to install %s; however version %s is already installed on your computer.<br />
                        You must uninstall the existing version before continuing.<br />
                        <br />
                        Do you want to uninstall the existing version?
                    </td>
                </tr>
            </table>
            <p>
                Tip: To add a line break before the last sentence, you can write this message in
                'Word' first and copy paste into wise.
            </p>
            <p>
                <img border="1" src="Images/WiseSt-MSG_v7.jpg" alt=""><br />
                <b>Figure: Update the default warning message in Wise table</b></p>
            <p>
                When you use Visual Build to build the product and deploy it on our servers, please
                make sure you upload both the MSI and EXE.</p>
            <p>
                <img border="0" src="Images/Wise-vb-UPLOAD.jpg" alt="" width="741" height="248"></p>
            <p>
                &nbsp;</p>
        </li>
        <li>
            <h2>
                <a name="VistaFeature"></a>Some special features for Vista
            </h2>
            Vista is totally different from other OS of Microsoft. It has special system folder architecture and security mechanism.<br />
            Wise 7 can support Vista very well. There are some special features designed for Vista. If you want to build the product compliant with Vista, please take care of the following settings.
            <ol>
                <li>
                    "AllUsers" is a hidden property in the property table, setup editor. Its default value is 0 - that means the software will be installed per user.<br />
                    This value should be set to 2 - the files (e.g. the shortcuts) will be installed according to user access level: <br />
                    for standard user access privileges, the files are stored in folders under the user's personal profile; <br />
                    for administrator access privileges, the files are stored in folders under "All Users" profile. (in Vista, it is "ProgramData" folder)<br />
                    <dl>
                        <dt><img src="Images/Vista_AllUsers.JPG" /></dt>
                        <dd>Figure: Set the "ALLUSERS" property</dd>
                    </dl>
                </li>
                <li>
                    In "Windows Installer Options", you can set to enable/disable the UAC (User Account Control) during the installation. This configuration does not mean you can open or close UAC in Vista.<br />
                    In fact, enable this will make the installer to try to elevate privilege  while it is writing files to protected area. <br />
                    e.g. When you try to do a per machine installation, you will need to write files to "ProgramData" folder, or add registry keys to "HKEY_LOCAL_MACHINE". If you do not enable this, the installation process will fail because you may not have administrator privileges to do so.<br /> 
                    <dl>
                        <dt><img src="Images/Vista_UAC.jpg" /></dt>
                        <dd>Figure: Installer Options</dd>
                    </dl>
                </li>
                <li>
                    If you want to create new template by Wise 7, be careful of "Create a Vista Standard User Installation" checkbox. Enable this will make the installation only has standard user access privileges and can't operate on any protected files.
                    <dl>
                        <dt><img src="Images/Vista_StandardUser.jpg" /></dt>
                        <dd>Figure: Create a new template</dd>
                    </dl>
                </li>
            </ol> 
        </li>
        <li>
            <h2>
                <a name="RunDiagnostics"></a>Run 'SSW Diagnostics' after installation (Recommend)
            </h2>
        </li>
        It's recommend to run 'SSW Diagnostics' after SSW product's installation, so we
        include this option in our installation package
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img border="0" src="Images/WiseSt14_v7.jpg" alt="" ><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>&nbsp; Figure: It's recommended to tick run SSW Diagnostics
                after the installation</b></p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Make sure you point the link to the correct
            address, we have 2 redirect files in our redirect folder:</p>
        <div class="Section1">
            <p>
                <a href="/ssw/Redirect/SSWDiagnostics.aspx">http://www.ssw.com.au/ssw/Redirect/SSWDiagnostics.aspx</a>
                &nbsp;- this point to SSW Diagnostics website<br />
                <a href="/ssw/Redirect/SSWDiagnostics.asp">http://www.ssw.com.au/ssw/Redirect/SSWDiagnostics.asp</a>
                - this point to the latest version of SSW Diagnostics</p
            <p>
                You should use the aspx one for redirect user to SSW Diagnostics website.
            </p>
        </div>
        <li>
            <h2>
                <a name="SysReqInstallation"></a>Do you have a 'Systems Requirements' screen when
                installing a product?</h2>
            <p>
                Installing a product should be easy and fuss free! If your product requires other
                programs to be installed, for example the Microsoft .NET Framework, I find it is
                best to include a 'Systems Requirements' screen where the user can click the
                links provided and install the required programs and then continue with the installation
                of your product. If your installation exits prematurely due to not having the required
                programs installed, the user can get frustrated - make life easy for them!
            </p>
            <p>
                <img border="0" src="Images/SysReq-WiseSt1_v7.jpg"><br />
                <b>Figure: Installation Prerequisites Screen</b></p>
            <p>
                However, sometime it's very hard to detect the required software in user environment,
                eg. a database server on the network. In such cases, you should still include the
                required software on other screen to warn your user. At least let them know what
                they are going to need to run your application.
            </p>
            <p>
                <img border="0" src="Images/SysReq-WiseSt2_v7.jpg"><br />
                <b>Figure: Installation Prerequisites (Optional) Screen</b></p>
        </li>
    </ol>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JP">John Prince</a><br/>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=ML">Mark Liu</a><br/>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JL">John Liu</a> - 11 Feb 2002<br/>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=ST">Sergei Tchernykh</a> - 07
        May 2002<br/>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AM">Ashraf Moollan</a> - 05
        May 2004<br/>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AH">Adel Helal</a> - 14 Dec
        2005<br/>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=BC">Brite Cheng</a> - 26 Mar
        2008<br/>
        &nbsp;</p>
</asp:Content>
