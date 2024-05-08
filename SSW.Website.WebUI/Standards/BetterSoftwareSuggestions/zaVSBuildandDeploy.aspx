<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft Visual Studio Build and Deploy Suggestions"  %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath>
    </p><asp:label id="lblWelcome" runat="server"></asp:label>
				
	<div class="TableOfContents">
        <h4>SSW Microsoft Visual Studio Build and Deploy Suggestions</h4>
        <ol>
            <li><a href="#BuildNote">Build Alerts - When a Build breaks - send an email that shows all changes since last successful build</a></li>
            <li><a href="#BuildGUI">Build - give me a GUI as good as Final Builder or Visual Build PRO</a></li>
            <li><a href="#ProjectAlert">Build - Project alerts should have a better out of the box experience</a></li>
            <li><a href="#DetailedLogging">On a build failure, make it easy to know about detailed logging</a></li>
            <li><a href="#ContinuousDeployment">Deployment - Help me get Continuous Deployment Setup </a></li>
        </ol> 
    </div>
     
    <div id="mainContent">
	    <ol>
		    <li>
                <h2><a name="BuildNote"></a>Build Alerts - When a Build breaks - send an email that shows all changes since last successful build</h2>
                <p>When a developer starts work at your company, and you want to watch what they code for a few days, the easy thing to do is this.</p>
                <dl class="image">
                    <dt><img src="Images/TFS_BN_01.jpg" alt="Build email" /></dt>
                    <dd>Figure: You don't want this. A mail for every check-in, so when the build breaks you can look back and see who broke the build. Even the great Grant Holliday used this approach.</dd>
                </dl>
                <p>Instead we need an option that sends us an email that includes the change sets as part of that build, with either:</p>
                <ul>
                    <li>Links to the diff in TFSWA, or</li>
                    <li>.diff attachments</li>
                </ul>
            </li>

             <li>
                <h2><a name="BuildGUI"></a>Build - give me a GUI as good as Final Builder or Visual Build PRO</h2>
                <p>Building setup packages is painful. They should generate a MS Build script so they are seen as the best GUI to use.</p>
                <p>I want it like SSIS. I drag items from the toolbox on the left.</p>
                <p>E.g.</p>
                <ul>
                    <li>"Clean Workspace"</li>
                    <li>"Get"</li>
                    <li>"Run Tests"</li>
                    <li>Etc</li>
                </ul>
                <ul>
                    <li>On Red - "Send an email"</li>>
                </ul>
                <p>Note: I am expecting Buck Hodges to deliver in 2010</p>
            </li>

            <li>
                <h2><a name="ProjectAlert"></a>Build - Project alerts should have a better out of the box experience</h2>
                <p>Project alerts should show a diff of what changed + a link to a diff file / web service.</p>
                <p>A .diff file gives you offline. A .diff file is great how it is one file with the result of many changesets.</p>
                <dl class="image">
                    <dt><img src="Images/TFS_PA_01.jpg" alt="Project Alert" /></dt>
                    <dd>Figure: This .diff file should be an attachment in the alert email</dd>
                </dl>
                <p><strong>Tip:</strong> Some people use the project alerts when they have a junior and you want to see all changes... probably a better way is to get this email when a work item is complete.</p>
            </li>

           <li>
                <h2><a name="DetailedLogging"></a>On a build failure, make it easy to know about detailed logging</h2>
                <p>At the bottom of the error:</p>
                <p>Add a hyperlink "Would you like more information on this error - learn about Build Definitions and detailed logging" </p>
                <dl class="badImage">
                    <dt><img src="images/NoInfo.jpg" alt="No info for the detailed info " /></dt>
                    <dd>Figure: Bad example - no information about how to get more detailed information</dd>
                </dl> 
                <p>Add the hyperlink here as well?</p>
                <dl class="badImage">
                    <dt><img src="images/NoInfo02.jpg" alt="No info for the detailed info " /></dt>
                    <dd>Figure: Bad example - no information about how to get more detailed information</dd>
                </dl> 
                <h3>More information:</h3>
                <p>Without this you see developers wasting time looking in a few spots:</p>
                <ul>
                    <li>Event viewer</li>
                    <li>Build output folder and specific logs<br />
                        E.g. "c:\BuildOutput\Northwind - Build and Test on Checkin\Northwind - Build and Test on Checkin_20100728.7\logs\Northwind.log"</li>
                    <li>The field for "Build Log Location:" in the alert email is empty (see above image)</li>               
                </ul>            
           </li>

           <li>
                <h2><a name="ContinuousDeployment">Deployment - Help me get Continuous Deployment Setup</a></h2>
                <p>I would love some additional work done by the team for vNext, in the area of Continuous Deployment, so we get to implement it in a couple of clicks.</p>
                <p>Today it is too hard. More info: <a href="http://blog.gfader.com/2010/12/do-you-automate-your-deployment-process.html">http://blog.gfader.com/2010/12/do-you-automate-your-deployment-process.html</a></p>
                <dl class="image">
                    <dt><img src="images/ContinuousDeploymentOption.jpg" alt=" Add a Continuous Deployment option" /></dt>
                    <dd>Figure: Can we have a 'Continuous Deployment' option added here</dd>
                </dl> 
                <dl class="image">
                    <dt><img src="images/UncompletedCommandLine.jpg" alt="Uncompleted command line " /></dt>
                    <dd>Figure: I should not have to find this command line argument of /p:DeployOnBuild=True (and this still does not deploy it &#8211; there are still half a dozen parameters/commands to do after this)</dd>
                </dl> 
            </li>

        </ol>
    </div>

<h2>Acknowledgements</h2>
    <p><a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Martin.aspx">Martin Hinshelwood</a> <br/>
	<a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Adam.aspx">Adam Cogan</a></p> 
</asp:content>