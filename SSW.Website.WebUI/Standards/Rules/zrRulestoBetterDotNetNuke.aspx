<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better DotNetNuke" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    &nbsp;<div class="intro">
            
    </div>
    <div class="TableOfContents">
        <h3>
            Rules to Better DotNetNuke</h3>
        <ol>
            <li><a href="#ProsAndConsOfDotNetNuke">Do you know the pros and cons of DotNetNuke?</a></li>
            <li><a href="#induction">Do you have your new developers go through the SSW DotNetNuke Induction training?</a></li>

        <!-- Added by ZV, Date: 09/1107 -->

            <li><a href="#LatestVersion">Have you installed the latest DNN version?</a></li>
            <li><a href="#UnderlineLink">Do you always update the DotNetNuke style sheets to underline a link?</a></li>
            <li><a href="#UpdateDB">Do you know DNN can update the schema of your database without warning?</a></li>
            <li><a href="#Upgrade">Do you know how to upgrade DNN to the latest version?</a></li>
        </ol>        
        
    </div> <p>     Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230446F744E65544E756B65')">Let us know</a> 
		what you think.</p>
    <div id="mainContent">
        <ol style="margin: 0; padding: 0;">
            <li>
             <h2><a name="ProsAndConsOfDotNetNuke"></a>Do you know the pros and cons of DotNetNuke?</h2>
             <ul>
              The Pros of DotNetNuke are:
              <li>It is the largest and most successful open source project in the Microsoft ecosystem</li>
              <li>It has the largest commercial 3rd party market for a .Net CMS</li>
              <li>The #1 most widely-deployed .Net based CMS</li>
              <li>Widely adopted and supported by Microsoft</li>
              <li>It's free! (but also has fully supported commercial versions for more serious organisations)</li>              
             </ul>
             <ul>
              The Cons of DotNetNuke are:
              <li>It's not based on MVC like Orchard. Note that this may not be a con for your organisation.</li>
              <li>It is missing some enterprise features like those in Sitecore, EpiServer and SharePoint.</li>
             </ul>
            </li>
            <li>
                <h2>
                    <a name="induction"></a>Do you have your new developers go through the SSW DotNetNuke Induction training?</h2>
                <p>

                    <ol>There are lots of DNN resources at <a href="/SSW/Redirect/DotNetNuke.htm" class="external">www.dotnetnuke.com</a>. There you can:
                    <li>
                     <ul>
                       <li>Get latest download</li>
                       <li>Read latest User Guide</li>
                       <li>Get 3<sup>rd</sup> Party Modules</li>
                     </ul></li>
                     <li>Go through the <a href="http://www.dotnetnuke.com/Intro/OnlineDemo/tabid/1239/Default.aspx">Self-Guided Tour Guide </a>(only 14 pages) for an introduction</li>
                     <li>and peruse the <a href="http://www.dotnetnuke.com/Community/Wiki/tabid/1409/default.aspx">DotNetNuke Wiki</a> for answers to specific questions you may have.</li>                    
                    </ol>
                </p>
                <s><p>    
                    Lorraine Young's comprehensive user guide is great. 
                    However it is too much (350 pages) if you just want a developer to understand a basic operations and get some handy tips in DotNetNuke. So instead you can use <a href="/SSW/Redirect/DotNetNukeDNNStandards.htm" class="external">DotNetNuke Induction training site</a>.
                </p></s>
                <s><p>    
                    The site is designed to get you up and running with DotNetNuke. 
                    It is a collection of numerous tutorials, training videos, 3<sup>rd</sup> party tools, handy tips and resources. 
                    It is also our central repository for all DotNetNuke custom modules and skins. So once you create one, remember to upload it there.                  
                </p></s>
            </li>
            <!-- Added by ZV, Date: 09/11/07 -->
             <li>
                <h2>
                    <a name="LatestVersion"></a>Have you installed the latest DNN version?</h2>
                <p>
                    You can check your DNN version via the "Host Memu", then "Host Settings" and tick the "Check For Upgrades" check box to see the latest version</p>
                <p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/DNNOldVersion.jpg" alt=" " width="297" height="217" /></dt><dd>Figure: Bad Example - A new version is available, DotNetNuke needs to be upgraded.</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/DNNLatestVersion.jpg" alt=" " width="383" height="238" /></dt><dd>Figure: Good Example - Latest version is now installed.</dd></dl>
                <p>It would be nice if DNN version can be checked by <a href="/ssw/Standards/BetterSoftwareSuggestions/DotNetNuke.aspx#Version">Better way of cheking DotNetNuke version on 'DotNetNuke Suggestions'</a>.</p>
            </li>
             <li>
                <h2>
                    <a name="UnderlineLink"></a>Do you always update the DotNetNuke style sheets to underline a link?</h2>
                <p>
                    As per <a href="/ssw/Standards/Rules/RulesToBetterWebsitesNavigation.aspx#underline">Rules to underline all links on "SSW Rules to Better Websites - Navigation"</a> always update the necessary DotNetNuke style sheets to make links perfectly clear, by underlining them.<br />
                    To underline links in DotNetNuke you need to change the styles in the style sheet Portals/_default/default.css
                </p>
                <p>
                    <dl class="bad">
		                <pre>                        
		                A:Link
                        {
                            text-decoration: <FONT style="BACKGROUND-COLOR: yellow">none</Font>;
                            color: #003366;
                        }
                        A:Visited
                        {
                            text-decoration: <FONT style="BACKGROUND-COLOR: yellow">none</Font>;
                            color: #003366;                   
                        }
                        A:Hover
                        {
                            text-decoration: underline;
                            color: #ff0000;
                        }
                        A:Active
                        {
                            text-decoration: <FONT style="BACKGROUND-COLOR: yellow">none</Font>;
                            color: #003366;
                        }
                        </pre>
		           
			        <dd>Figure: Bad Example - The default style does not underline all links</dd></dl>
		            <dl class="good">
		                <pre>                        A:Link
                        {
                            text-decoration: <FONT style="BACKGROUND-COLOR: yellow">underline</Font>;
                            color: #003366;
                        }
                        A:Visited
                        {
                            text-decoration: <FONT style="BACKGROUND-COLOR: yellow">underline</Font>;
                            color: #003366;                   
                        }
                        A:Hover
                        {
                            text-decoration: underline;
                            color: #ff0000;
                        }
                        A:Active
                        {
                            text-decoration: <FONT style="BACKGROUND-COLOR: yellow">underline</Font>;
                            color: #003366;
                        }
                        </pre>
			        <dd>Figure: Good Example - The style now underline all links</dd></dl>
			    </p>
			    <p> <a href="/ssw/">Go to SSW</a> <b>&lt;-- Not Good</b> </p> 
		        <p> <a href="/ssw/"><span style="COLOR:darkblue; TEXT-DECORATION:none;">Go to SSW</span></a> <b>&lt;-- Good</b> </p>
		                   
            </li>
            <li><h2><a name="UpdateDB"></a>Do you know DNN can update the schema of your database without warning?</h2>
            <p>If you point your DNN application at another database on an earlier version of DNN, it will update the database to the latest version without warning.</p>
            <p>Suggestion to the DNN team: Don't do this without a warning. Even better, use SSW SQL Deploy</p>
            </li>
            <li>
             <h2><a name="Upgrade"></a>Do you know how to upgrade DNN to the latest version?</h2>
             <p>If there is an upgrade available (see "<a href="#LatestVersion">Have you installed the latest DNN version?</a>" ), follow the following steps to perform the upgrade.</p>
             <ol>
              <b>In Preparation:</b>
              <li>Back up the DNN database</li>
              <li>Back up all website files</li>
              <li>Check your database and website backups!</li>
              <li>Download the latest DotNetNuke upgrade package
                a.	From the <a href="http://www.dotnetnuke.com/">www.dotnetnuke.com</a> site.  You may need login credentials if you are using a non-community version of DNN.<br />
                or<br />
                b.	Click the "Upgrade Available" button that appears when you are *not* running the latest version (see "<a href="#LatestVersion">Have you installed the latest DNN version?</a>" ).
              </li>
              <li>Create a basic html document called app_offline.htm.  This page will be shown on the site while you are doing the upgrade.</li>                            
             </ol>
              <dl class="badImage">
                    <dt>
                        <img src="Images/NoMaintenance.jpg" alt="No maintenance page "  /></dt>
              <dd>Figure: Bad Example - No maintenance page.  Users may see errors while the site is partially upgraded.</dd></dl>
              <pre class="code">
                <html>
                <head><title>Site Maintenance</title></head>
                <body>
                This site is offline for routine maintenance. Please check back later.
                </body>
                <html>            
              </pre>
             <b>Figure: Good Example - HTML page to let users know the site is offline.</b>  
              <ol>
               <b>To Perform the Upgrade:</b>
               <li>Upload the app_offline.htm file to the root web folder for the site.</li>
               <li>Navigate to the site in a web browser and check that the app_offline.htm file is shown instead of the usual default page.</li>
               <li>Copy the contents of the latest DotNetNuke upgrade package over the top of the existing files.  All files should be copied because the package should only contain generic files ?no configuration files.</li>
               <li>When the copy is complete, rename the app_offline.htm file to app_offline.htm.save.  When you navigate to the site, you will see a new construction page:
                 <dl class="goodImage">
                    <dt>
                        <img src="Images/RemoveUnderline.jpg" alt="Remove underline "  /></dt>
                 <dd>Figure: Good Example - Latest version has been copied and site is unavailable (suggestion to DNN team: remove the underline from the non-link). </dd></dl>
               </li>
               <li>Access the /install/install.aspx?mode=upgrade page (e.g.www.mysite.com/install/install.aspx?mode=upgrade) using a web browser.  The site will begin an automatic upgrade process:
                 <dl class="goodImage">
                    <dt>
                        <img src="Images/AutomaticUpgradeRunning.jpg" alt="Automatic upgrade running "  /></dt>
                 <dd>Figure: Good Example - Automatic upgrade running. </dd></dl>
               </li>
               <li>On completion of the upgrade, you will see the following message at the bottom of the page.  Click on the link to return to the site.
                  <dl class="goodImage">
                    <dt>
                        <img src="Images/PutUnderline.jpg" alt="put an underline under the link "  /></dt>
                 <dd>Figure: Good Example - Automatic upgrade completed (suggestion to DNN team: put an underline under the link). </dd></dl>
               </li>
               <li>Click through the newly upgraded site to perform a <a href="http://www.ssw.com.au/ssw/Standards/Rules/RulesToBetterUnitTests.aspx#TypesOfTests">smoke test</a>.</li>
               <li>Log in to the DNN site and navigate to "Host", then "Host Settings".  You will see that the site is running the newest version of DNN and that there are no upgrades available.
                  <dl class="goodImage">
                    <dt>
                        <img src="Images/LatestVersionAndNoUpgrade.jpg" alt="Latest version and no upgrades available "  /></dt>
                 <dd>Figure: Good Example - Latest version and no upgrades available.</dd></dl>
                </li>               
              </ol> 
            </li>
        </ol>
        <div>
            &nbsp;</div>
        <h2>
            Acknowledgements</h2>
        <p>
            Damian Brady
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=ZV">Zune Vien</a><br />
        </p>
    </div>
</asp:Content>