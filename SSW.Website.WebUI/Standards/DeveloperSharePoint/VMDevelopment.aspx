<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW SharePoint VM Development" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <!--
	This is the main document.
	-->
    <div class="TableOfContents">
        <h3>
            SharePoint VM Development</h3>
        <ol>
            <li><a href="#useVM">Do you know to develop inside a VM?</a></li>
            <li><a href="#VMimages">What are the different images available?</a></li>
            <li><a href="#createmyownSharePointVM">How do I create my own SharePoint VM to play
                with?</a></li>
            <li><a href="#createaanewSysprepVM">How do I update and create a new version of the
                Sysprep VM ?</a></li>
            <li><a href="#vmcontents">What does a SharePoint image need?</a></li>
            <li><a href="#sysprepprocesswork">How does the sysprep process work, what does the scripts
                do? Why is this process so complicated ?</a></li>
        </ol>
    </div>
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D54686525323042657374253230546F6F6C73253230466F7225323045786368616E6765253230536572766572')">
            Let us know</a> what you think.</p>
    <ol>
        <li><a name="useVM"></a>
            <h2>
                Do you know to develop inside a VM?</h2>
            <p>
                All SharePoint customization and development must be done on a Virtual Machine.
            </p>
            <a href="/ssw/Standards/Rules/RulesToBetterSharePoint.aspx#DevInsideVM">More info on setting up SharePoint VM</a>
            
        </li>
        <li><a name="VMimages"></a>
            <h2>
                What are the different Virtual Machine images available?</h2>
            <p>
                We have three types of VM images around the office.
            </p>
            <ol>
                <li>The master.vhd is for upgrading future VMs and sysprep VM's are built 
                    from the master.vhd<br /> The <b>master.vhd is versioned (e.g. master_v8.vhd)</b> to
                    track which version it is, and to assist us in upgrading the master image.
                    
                </li>
                <li>The sysprep.vhd is the one that we use to create a new SharePoint server 
                    <br />When you run the sysprep.vhd it will create a new SharePoint server.  Always make a copy of this to your own machine.  The <b>sysprep.vhd is versioned (e.g. sysprep_v8.vhd)</b></li>
                <li>You may find various other VM's created from sysprep.vhd and used for various
                    projects or experiments<br />  These images are
                    usually renamed but kept the original version number that it was created from.
                    (e.g. sswsp_v8.vhd)</li>
            </ol>
        </li>
        <li><a name="createmyownSharePointVM"></a>
            <h2>
                How do I create my own SharePoint VM?</h2>
            <p>
                When you want to create a SharePoint environment, you would need to create a new Virtual
                Machine from the SysPrep image.
            </p>
            <%  If (Server.MachineName = ConfigurationManager.AppSettings.Get("internalMachineName")) Then%>                      
                    <div class="interInfoBoxSide" style="width:50%">
                        <h1>Attention: SSW Developers</h1>
                        <ol>
                            <li>Talk to the SharePoint master to make sure you have all the details such as password.</li>
                            <li>VM is located \\192.168.1.7\VMarchive.</li>
                            <li>Unless it's for a client you should not be using SSW servers for personal VMs. Run these on your own machine.</li>
                        </ol>
                    </div>
            <% End If %>

     
            <ol>
                <li>Make a copy of the latest version of sysprep.vhd and <b>do not run the base one</b> 
                    <ol>
                        <li>Rename sysprep.vhd so that it says what you are using it for.<br /> 
                            e.g. client_project_v7.vhd</li>
                        <li>You will retain the version number so can we know from which sysprep.vhd it was
                            made from</li>
                    </ol>
                </li>
                <li>In Hyper-V or Virtual PC, you create a new VM and link it to your copy of the sysprep.vhd
                    <ol>
                        <li>You will need to allocate 2GB of RAM for this image</li>
                        <li>You will need plenty of hard drive space (at least 25GB to 30GB)</li>
                        <li>You will also need time - it is best to run this on a different machine if you plan
                            to use your laptop at the same time when you are setting up this Virtual Machine</li>
                    </ol>
                </li>
                <li>You want to have the undo disk off initially, so that the installation commits changes directly
                    to the VHD.  Start the VM</li>
                    <!--SSW Code Auditor - Ignore next line(HTML)-->
                <li>Once the VM starts up, you will be asked to log on - use our SharePoint dev password 
                    for the administrator account</li>
                <li>Setup scripts will run for the administrator - this will rename the machine and
                    install SQL Server</li>
                    <!--SSW Code Auditor - Ignore next line(HTML)-->
                <li>When the process is completed, the machine will restart, and prompt you to logon
                    again as the MOSSFarm account - use our SharePoint dev password for the MOSSFarm account</li>
                <li>A second set of setup scripts will run for this account - this will install MOSS,
                    SP1 </li>
                <li>When this is done, power down the VM, and commit all changes to disk
                    <ol>
                        <li>Consider setting up either snapshots or undo-disk at this point.</li>
                    </ol>
                </li>
            </ol>
        </li>
        <li>
            <a name="vmcontents"></a>
            <h2>What does a SharePoint image need?</h2>
            <p>
                As a minumum, the SharePoint image needs:
            </p>
            <ol>
                <li>Windows Server 2003 or 2008</li>
                <li>SQL Server 2005 sp1</li>
                <li>WSS 3.0 sp1</li>
                <li>MOSS 2007 sp1</li>
                <li>MS Office SharePoint Designer sp1</li>
                <li>Visual Studio .NET 2005 or 2008</li>
            </ol>
        </li>
        <li><a name="createaanewSysprepVM"></a>
            <h2>
                How do I update and create a new version of the Sysprep VM?</h2>
            <p>
                When MS releases a new service pack, or new Windows update, we install these
                to the master image and create a new version of the Sysprep image for future
                VMs.
            </p>
            <ol>
                <li>Update SQL Server service packs</li>
                <li>Update Windows Server 2003 service packs</li>
                <li>Update Windows</li>
                <li>Update VS.NET service packs</li>
                <li>Update SharePoint service packs</li>
                <li>Update MS Office SharePoint Designer service packs</li>
            </ol>
            <p>
                To create a new VM:
            </p>
            <ol>
                <li>Make a copy of the master.vhd, rename it to the next version</li>
                <li>Create a VM using this new vhd</li>
                <li>Copy additional setup files to D:\install\</li>
                <li>Modify the scripts in D:\scripts\</li>
                <li>When finished, power down the VM. Make a copy of this and rename it to sysprep-vNext.vhd</li>
                <li>Create a new VM using this new vhd</li>
                <li>Start it up, and then run the sysprep command in D:\sysprep\</li>
                <li>This will generalize the computer's settings and shut it down</li>
                <li>Don't start up the VM again - or it'll run the start up scripts</li>
                <li>Zz old copies of the master.vhd and sysprep.vhd</li>
            </ol>
        </li>
        <li><a name="sysprepprocesswork"></a>
            <h2>
                How does the sysprep process work, what does the scripts do? Why is this process
                so complicated ?</h2>
            <ol>
                <li>SharePoint server can't be renamed after SharePoint is installed</li>
                <li>Multiple VM's with the same name can't be powered up in the same network</li>
                <li>So the master.vhd contains:
                    <ol>
                        <li>Windows 2003 server SP2</li>
                        <li>Visual Studio .NET 2005</li>
                        <li>Microsoft Office SharePoint Designer</li>
                    </ol>
                </li>
                <li>When sysprep is ran on the master.vhd, it generalises Windows 2003 server (generate
                    new machine guide, rename computer, etc), the scripts that run also puts "administrator"
                    into the registry so that'd be the name of the next login prompt. A vhd that is
                    in this state is the "sysprep'ed" vhd</li>
                <li>When it restarts and the user logs in with administrator, it then runs the script
                    to install
                    <ol>
                        <li>SQL Server 2005</li>
                        <li>Puts MossFarm account into registry </li>
                    </ol>
                </li>
                <!--SSW Code Auditor - Ignore next line(HTML)-->
                <li>After restart - log on with MossFarm account and run the scripts to install
                    <ol>
                        <li>SharePoint 2007 sp1 </li>
                    </ol>
                </li>
                <li>Runs Moss\Post_Build.cmd</li>
            </ol>
        </li>
    </ol>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JL">John Liu</a><br>
    </p>
</asp:Content>
