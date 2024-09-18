<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft Hyper-V and System Center DPM Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <p>
        <asp:Label ID="lblWelcome" runat="server"></asp:Label></p>
    <p>
        <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14">
        Indicates important rule</p>
    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
        style="{width: 100%}">
        <tr>
            <td>
                <ol>
                    <li><a href="#MergeSnapshots">Merging snapshots gives downtime (from a few seconds to
                        an hour) </a></li>
                    <li><a href="#VHD">Moving the VHD gives downtime (from seconds to a minute)</a></li>
                    <li><a href="#SearchResults">Search Engine Results for "Problems" <b><font color="red">
                        *Fixed*</font></b> </a></li>
                    <li><a href="#Backup">Insufficient Backup Capabilities <b><font color="red">*Fixed*</font></b>
                    </a></li>
                    <li><a href="#Vmotion">vMotion - Lacks Features Present in VMware <b><font color="red">
                        *Fixed*</font></b></a></li>
                    <li><a href="#MemoryOvercommit">Memory Overcommit - Lacks Features Present in VMware
                        <b><font color="red">*Fixed*</font></b></a></li>
                    <li class="strike"><a href="#Opinions">Opinions</a></li>
                </ol>
            </td>
        </tr>
    </table>
    <ol>
        <li>
            <h2>
                <a name="MergeSnapshots"></a>Merging snapshots gives downtime (from a few seconds
                to an hour)
            </h2>
            <p>
                When merging snapshots HyperV requires the VM be offline (VMware does not).</p>
        </li>
        <li>
            <h2>
                <a name="VHD"></a>Moving the VHD gives downtime (from seconds to a minute)</h2>
            <p>
                When moving VHDs HyperV, requires the VM be offline (VMware does not have this issue
                when moving VMDKs as it has Storage VMotion).<br />
                This is important because even a few seconds results sessions dying eg. SQL Server
            </p>
        </li>
        <li>
            <h2>
                <a name="SearchResults"></a>Search Engine Results for "Problems" <b><font color="red">
                    *Fixed*</font></b></h2>
            <p>
                Jan 2010: The following are the number of hits returned by Google for issues regarding
                Hyper-V and VMware.</p>
            <p>
                <ul>
                    <li>"VMware problems" - <b>532,000</b> - <i>First released 1999</i></li>
                    <li>"Hyper-V problems" - <b>1,280,000</b> - <i>First released 2007</i></li>
                </ul>
            </p>
            <p>
                This indicates that HyperV is causing the community a lot of grief<br />
                Jan 2011: <b>*Fixed*</b> ?do a google and you will see that the results have turned
                around and now VMWare has the most problems?by a large margin.
            </p>
        </li>
        <li>
            <h2>
                <a name="Backup"></a><span class="strike">Insufficient Backup Capabilities </span>
                <b><font color="red">*Fixed*</font></b></h2>
            <p class="strike">
                With SCDPM (System Centre Data Protection Manager) in beta and incompatible with
                Hyper-V RC 1, the only reliable way to backup is to shutdown a VM and export. This
                is time consuming and unreliable.</p>
            <p>
                <b>*Fixed*</b> - Almost every vendor now has HyperV agents eg. Tivoli, Comvault,
                Backupexec etc</p>
        </li>
        <li>
            <h2>
                <a name="Vmotion"></a><span class="strike">vMotion - Lacks Features Present in VMware</span><b><font
                    color="red"> *Fixed*</font></b>
            </h2>
            <p>
                <ul>
                    <li class="strike">VMotion - for moving VMs without downtime</li>
                </ul>
            </p>
            <p>
                <b>*Fixed*</b> - LiveMigration ?allows you to move the VM without downtime
            </p>
        </li>
        <li>
            <h2>
                <a name="MemoryOvercommit"></a><span class="strike">Memory Overcommit - Lacks Features
                    Present in VMware </span><b><font color="red">*Fixed*</font></b></h2>
            <p>
                <ul>
                    <li class="strike">Memory Overcommit - for allocating total of more than physical memory
                    </li>
                </ul>
            </p>
            <p>
                <b>*Fixed*</b> - Called Dynamic Memory ?released in R2 SP1 ?Better because you never
                have the hyper visor paging to disk
            </p>
        </li>
        <li class="strike">
            <h2>
                <a name="Opinions"></a>Opinions</h2>
            <p>
                <ul>
                    <li>"In this case, we strongly suggest that you test Hyper-V in the lab and then try
                        it out in test and development roles before considering production deployments."
                        - John Enck and Thomas Bittman (Gartner) - <a href="/SSW/Redirect/searchio.midmarket.techtarget.htm">
                        Article</li>
                </ul>
                searchio.midmarket.techtarget
            </p>
        </li>
    </ol>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/people/adam-cogan">Adam Cogan</a><br>
        <a href="/people/alumni/matthew-hodgkins">Matt Hodgkins</a><br />
        <a href="/people/alumni/daniel-hyles">Daniel Hyles</a><br />
    </p>
</asp:Content>
