<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Rules to Better Microsoft CRM 3 to 4 Migration" %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">            
	<p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath>  
    </p>
    <ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10"/>

    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532304D6963726F736F667425323043524D')">
    Let us know</a> what you think.</p> 
<div class="TableOfContents" style="width:55%;">
<h3>Rules to Better Microsoft CRM 3 to 4 Migration</h3>
<ol>  
<li><a href="#TestMigration">Do you run two or more test migrations before a live migration?</a></li>
<li><a href="#Backup">Do you back up everything before migration?</a></li>
<li><a href="#Update">Do you update CRM installation files before migration?</a></li>
<li><a href="#Log">Do you log each screen during migration?</a></li>
<li><a href="#Hotfixes">Do you apply all hotfixes to server after migration?</a></li>
</ol>
</div>
<div id="mainContent">
<ol>
<li>
	<h2><a name="TestMigration">Do you run two or more test migrations before a live migration?</a></h2>
	<p>
	It is recommended that you should run at least 2 or more sucessful test migrations before running a live migration. The following steps describe the process of setting up a test environment for migration:
    </p>
    <ol>
        <li>Back up your CRM 3 existing evironment including customizations, custom codes, sitemap...</li>
        <li>Configure a new environment with SQL Server and all necessary components (Do not install CRM yet!)</li>
        <li>Restore database that you have backup from existing evironment to the new environment</li>
        <li>Redeploy CRM to the new environment</li>
        <li>Test to see if the new environment works as expected</li>
        <li>Upgrade the new environment to CRM 4</li>
        <li>Test the new environment after upgrading</li>
    </ol>
    
</li>
<li>
    <h2><a name="Backup">Do you back up everything before migration?</a></h2>
    <p>
    Before running the migration process, you should backup everything on your existing CRM 3 server including operation system, databases, callouts...If the upgrading process is failed, you have to re-install CRM 3 from scratch.
    So it's very important that you backup everything and give an early warning to youself.
    </p>
</li>
<li>
    <h2><a name="Update">Do you update CRM installation files before migration?</a></h2>
    <p>
    When run Microsoft CRM 4 installation file, you can check for setup updates.
       <ul>
        <li>
            If CRM server has Internet connection, you can click <b>Update installation files</b> during upgrading. Updates then will be automatically downloaded and applied to your installation files.
            <dl class="image">
                 <dt><img src="Images/CRM_UpdateSetup.gif" alt="Update Setup" width="594" height="448"></dt>
	        <dd>Figure: Update CRM installation files</dd>
	        </dl>
	       	
        </li>
        <li>
            If CRM Server does not have Internet connection, you can download setup updates from Microsoft website and manually deploy them. The instruction on how to manually deploy setup updates can 
            be found in <a href="/SSW/Redirect/MSDNTaskList.htm" class="external">CRM Implementation Guide</a>. 
        </li>
       </ul>
    </p>
</li>
<li>
    <h2><a name="Log">Do you log each screen during migration?</a></h2>
    <p>
    As per rule <a href="/ssw/Standards/Rules/RulestoBetterMicrosoftCRM.aspx#ScreenShot">Installation - Do you log each screen which is different to the default?</a>, it's important
    that you log each screen so that you can have a historical log of the upgrading.
    
    </p>
                <dl class="image">
                 <dt><img src="Images/CRM_LogScreenForRequiredComponent.gif" alt="Log Screen For Required Components" width="594" height="448"></dt>
	        <dd>Figure: Log Screen For Required Components</dd>
	        </dl>
</li>
<li>
<h2><a name="Hotfixes">Do you apply all hotfixes to server after migration?</a></h2>
<p>
    It's important that you review Microsoft KB Article <a href="http://support.microsoft.com/kb/949256" class="external">949256</a> for CRM 4.0 hotfix information, download the hotfixes and apply them to your server.
    
</p>
</li>
</ol>  
<h2>Links</h2>
<p>
<a href="/SSW/Redirect/MSDNBlogs.htm" class="external">Microsoft Dynamic CRM Team Blog on Upgrading to CRM 4</a>
</p>
 
<h2>Acknowledgements</h2>
<p>
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=ZV">Zune Vien</a><br />
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
</p>
</div>


</asp:content>