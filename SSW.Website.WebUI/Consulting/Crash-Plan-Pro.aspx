<%@ Page Language="C#" AutoEventWireup="false"
    MasterPageFile="~/Masters/RavenSubPage.master" Title="Crash Plan Pro - Continuous Backup For Business | SSW Consulting - Sydney, Brisbane, Melbourne" %>

<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img src="Images/thumbs/thumb-crash-plan-pro.jpg" alt="Crash Plan Pro" class="icon" />
    <h1>Crash Plan Pro</h1>
    <h2>Continuous Backup For Business</h2>
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="featureimage" runat="server">
    <img src="images/header_CrashPlanPro.jpg" alt="Crash Plan Pro ?Continuous Backup For Business" />
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>
        <a name="AboutUs"></a>Crash Plan Pro:</h2>
    <ul>
        <li><a href="#Overview">Overview</a></li>
        <li><a href="#CrashPlanPro">What data can I protect with CrashPlan Pro?</a></li>
        <li><a href="#Backup">Where can I backup to?</a></li>
        <li><a href="#getstarted">How to get started</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<%--    <p>
        <asp:SiteMapPath ID="SiteMapPath2" runat="server" SiteMapProvider="SSWXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>--%>
    <div class="section">
        <h2>
            <a name="Overview"></a>Overview</h2>
         <p>
          Backups are a critically important part of any business network. They will not only protect your data from accidental deletion or corruption, but also protect your business in a disaster scenario.
          </p> 
           
             <p><a href="https://www.score.org/">SCORE</a> (Counselors to American's Small Businesses) and HP complied a document on IT disasters effects on small business. The report found the following:</p>
             <ul>
             <li>70% of small firms that experience a major data loss go out of business within a year</li>
             <li>Of companies experiencing catastrophic data loss:
               <ul>
                 <li>43% of companies never reopened</li>
                 <li>51% of companies closed within 2 years</li>
                 <li>80% of companies that do not recover from a disaster within one month are likely to go out of business.</li>
               </ul>
             </li>
           </ul>
           <p>Source: http://www.score.org/pdf/HP_Download_ImpactofDisaster.pdf </p>
           <p>Many of our clients and even we use <a href="http://www.crashplanpro.com/business/">CrashPlan Pro</a> to protect all of our external web servers by copying backups from our hosted servers to our local CrashPlan Pro Server in the office. This provides peace of mind for our web masters and hosted clients as they know they have an offsite backup of their website at all times. It also means you can trust our consultants have firsthand experience with installing, configuring and maintaining the CrashPlan PRO backup solution. </p>
        <ul>
            <li><a href="#CrashPlanPro">What data can I protect with CrashPlan Pro?</a></li>
            <li><a href="#Backup">Where can I backup to?</a></li>
            <li><a href="#CrashPlanProBackup">How do I know CrashPlan Pro backups are working?</a></li>
            <li><a href="#TakeDataOffsite">How can I take my data offsite?</a></li>
            <li><a href="#RestoreData">How do I restore my data in the event of a disaster?</a></li>
        </ul>
    </div>
    <div class="section">
        <h2>
            <a name="CrashPlanPro"></a>What data can I protect with CrashPlan Pro?</h2>
        <p>CrashPlan Pro is a file based backup application which can backup files in the following scenarios:</p>
        <ul class="benefits">
            <li>Local Workstations (on the same network as the CrashPlan Pro Server)</li>
            <li>Remote Workstations</li>
            <li>Local Servers (on the same network as the CrashPlan Pro Server)</li>
            <li>Remote Servers</li>
            <li>Windows Servers and Workstations</li>
            <li>Mac Servers and Workstations</li>
            <li>Linux Servers and Workstations</li>                                                                        
        </ul>
        <dl class="image">
            <dt>
                <img src="images/SelectBackedUp.jpg" alt="Select Backed Up " />
            </dt>
            <dd>Figure 1 - The CrashPlan Pro client allows you to select what is backed up on the computer</dd>
        </dl>
    </div>
    <div class="section">
        <h2>
            <a name="Backup"></a>Where can I backup to?</h2>
        <p>
            The CrashPlan Pro Server just uses the normal file system to do backups, so all you need to do is give it a folder to store the backups and it will handle the rest.
             CrashPlan Pro also compresses backups when they are transferred and stored, meaning you get the best storage utilization possible.
          </p>
        <dl class="image">
            <dt>
                <img src="images/BackUpFileSystem.jpg" alt="Back Up File System " />
            </dt>
            <dd>Figure 2 - The CrashPlan Pro server backs up to the file system. Just point it at a folder and away you go</dd>
        </dl>
    </div>
    <div class="section">
        <h2>
            <a name="CrashPlanProBackup"></a>How do I know CrashPlan Pro backups are working?</h2>
            <p>CrashPlan Pro has built in functionality for sending alerts via email when problems arise with your backups including:</p>
          <ul class="benefits">
            <li>The backup server is out of disk space</li>
            <li>Backups haven't run for a certain amount of days</li>
            <li>Corruption has been detected in the backups</li>                                                                     
        </ul>
        <dl class="image">
            <dt>
                <img src="images/ConfigureCrashPlanPro.jpg" alt="Configure Crash Plan Pro" />
            </dt>
            <dd>Figure 3 - You can configure CrashPlan Pro to alert you when problems arise with your backups</dd>
        </dl>
        <p>CrashPlan pro is also capable of sending scheduled reports regarding the backups on your server. </p>
    </div>
    <div class="section">
        <h2>
            <a name="TakeDataOffsite"></a>How can I take my data offsite?</h2>
        <p>CrashPlan Pro includes a feature called Multi-Server support, which makes setting up remote backup destinations simple.</p>
        <p>
            Your primary CrashPlan PRO server, known as the <b>master</b> can manage several <b>slave</b> CrashPlan Pro servers, which provides the ability to have an offsite <b>slave</b> server for redundant backup archives. Each slave is an independent backup location, so if one archive became corrupted, this would perverse the integrity of the archive on the other CrashPlan PRO servers.
           scheduled reports regarding the backups on your server.
        </p>
          <dl class="image">
            <dt>
                <img src="images/SlaveCrashPlan.jpg" alt="Slave Crash Plan" />
            </dt>
            <dd>Figure 4 - Slave CrashPlan Pro servers can be setup for offsite backups</dd>
        </dl> 
    </div>
    <div class="section">
        <h2>
            <a name="RestoreData"></a>How do I restore my data in the event of a disaster?</h2>
        <p>
            CrashPlan Pro allows the end user to restore files right from inside the CrashPlan Pro client. They can select the file they want to restore, the version of the file (you can specify how many versions of a file the CrashPlan PRO Server keeps) and the location they would like to restore the backup.
            <br />
           This allows the end user to be in control of their own restores which means they can restore a file without having to contact a System Administrator for support.
            </p>
        <dl class="image">
            <dt>
                <img src="images/RestoreBackUp.jpg" alt="Restore Back Up" />
            </dt>
            <dd>Figure 5 - You can restore backups directly from the CrashPlan Pro client</dd>
        </dl>
        <p>CrashPlan Pro works on an account system, so if your computer needed to be replaced, you could log back into the CrashPlan Pro client on the new computer using your old account details and be able to restore all of the data that was being backed up on your previous computer. </p>
        <p>
            SSW can provide assistance in helping you restore your data to its backup up state
            in the case of an emergency.
        </p>
    </div>
    <text:Location runat="server" />
    <%--        <div class="section">
        <h2>
            How to Get Started</h2>
        <p>
            To find out if Microsoft System Center Data Protection Manager is right for your business, give us a call
            on +61 2 9953 3000 to get started!</p>
    </div>--%>
</asp:Content>
