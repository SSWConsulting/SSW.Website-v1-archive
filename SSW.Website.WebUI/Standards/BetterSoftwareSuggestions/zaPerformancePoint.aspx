<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Performance Point Server Suggestions"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:label id="lblWelcome" runat="server"></asp:label>
    <div id="intro">
    <p>
<img src="images/PerformancePoint.jpg" border="0" class="right"/>
        Office SharePoint PerformancePoint Server 2010 provides all of the functionality needed for performance management including scorecards, dashboards, management reporting and analytics. 
        The application reaches all employees, across all business functions (finance, operations, marketing, sales, and human resources).
        
    </p>
</div>
<div class="TableOfContents">
    <ol>
        <li><a href="#Annotate">Add annotation on charts</a></li>
        <li><a href="#DeployMessageBox">Unnecessary message box when deploying first time *fixed*</a></li>
        <li><a href="#SelectedScorecard">Wrong Scorecard selected on deployment</a></li>
        <li><a href="#DefaultSettingsDeploy">No defaults on deployment to Server</a></li>
		<li><a href="#DefaultSettingsDeploy2">No Validation for Reporting Server</a></li>
		<li><a href="#DeployError">Error message is not noticeable, plus no back button</a></li>
		<li><a href="#ScorecardDPE">Scorecard DPE extension is not different</a></li>
		<li><a href="#MissingColumn">Web Report missing extra column</a></li>
        <li><a href="#Deploy">Deploy the dashboard without a folder</a></li>
        <li><a href="#DeployToMOSS">Select a deployment folder in Reports Library on the SharePoint site</a></li>
        <li><a href="#PointToKB">Point the user to a KB</a></li>
        <li><a href="#DisplayDashboard">Add a menu item to "Display Dashboard"</a></li>
        <li><a href="#DeployStatus">Tell me that this dashboard has not been deployed</a></li>
        <li><a href="#PerformancePoint2010">PerformancePoint 2010 - saving the project file is weird</a></li>
        <li><a href="#AppVersioinNumber">Add the version number in the app name (like other programs e.g. Word 2010)</a></li>
    </ol>
</div>
<div id="mainContent">
<ol>
    <li><h2><a name="Annotate"></a>Add annotation on charts</h2>
        <p>Office Performance Point 2010 has a great new feature, annotate, which allows you to put comment on group of numbers or on top point. We suggest: 
        <ul>
        <li>Show that annotation in a chart</li>
        <li>Give the ability to put an annotation when viewing a chart (not just a table as it is now)</li>
        </ul>
</p>
    </li>
    <li><h2><a name="DeployMessageBox"></a>Unnecessary message box when deploying first time *fixed*</h2>
        <p>When deploying a Scorecard to Reporting Services you receive a message box informing you that you need to refresh. We suggest that instead of displaying the message box that the deploy is actually done automatically. This is a confusing out of the box experience.
        </p>
        <dl class="image">
            <dt><img src="images/DeployMessageBox.jpg" alt="Deploy Message Box" /> </dt>
	        <dd>Figure: Error message of "Monitoring Server List is Empty"</dd>
	    </dl>               
    </li>
    <li><h2><a name="SelectedScorecard"></a>Wrong Scorecard selected on deployment</h2>
        <p>When right clicking on a scorecard and deploying, by default it selects the first scorecard in the deploy list and will result in the wrong scorecard being deployed accidentally.
        </p>
        <dl class="image">
            <dt> <img src="images/DefaultScorecard.gif" alt="Default Scorecard Incorrect" /></dt>
	        <dd>Figure: Incorrect scorecard selected by default</dd>
	    </dl>  
        
    </li>
    <li><h2><a name="DefaultSettingsDeploy"></a>No defaults on deployment to Server</h2>
        <p>The settings screen does not show any defaults for Report Name (this could be taken from the scorecard name), or Reporting Server details.
        </p>
        <p>Suggestion to put in a combo showing:</p>
<ul>
<li>http://localhost/reportingserver (if it works), and</li>
<li>all the last deployed Reporting Server locations.</li>
</ul>
        <dl class="image">
            <dt><img src="images/DeploySettings1.gif" alt="No Server Name defaults" /></dt>
	        <dd>Figure: No default values entered for servers</dd>
	    </dl>                
    </li>
    <li><h2><a name="DefaultSettingsDeploy2"></a>No Validation for Reporting Server</h2>
        <p>There is no Tick or Cross when a Reporting Server location is entered to indicate if this is correct or wrong. The user will not know until after attempting to deploy the scorecard.
        </p>
         <dl class="image">
            <dt><img src="images/DeploySettings2.gif" alt="No Report Server Validation" /></dt>
	        <dd>Figure: No Validation for Report Server</dd>
	    </dl>                
    </li>
    <li><h2><a name="DeployError"></a>Error message is not noticeable, plus no back button</h2>
        <p>There is no Tick or Cross when a Reporting Server location is entered to indicate if this is correct or wrong. The user will not know until after attempting to deploy the scorecard.
        </p>
        <p>
        See Rules to Better UI - <a href="/SSW/Redirect/SSW/RulesToBetterInterfaces.htm">Do you clearly show a pass, fail or warning?</a>
        </p>
         <dl class="image">
            <dt><img src="images/DeployError.gif" alt="Reporting Services Deploy Error" /></dt>
	        <dd>Figure: Error message is not that visible</dd>
	    </dl>                
    </li>
    <li><h2><a name="ScorecardDPE"></a>Scorecard DPE extension is not different</h2>
        <p>The following error lists that the ScorecardDPE extension is not registered successfully. This extension name is identical to another older product Business Scorecard Manager 2005. Subsequently searching the web for instructions on how to register bring up the wrong details. The version should have been 'ScorecardDPE2' or even better 'PerformancePointScorecardDPE'
        </p>        
         <dl class="image">
            <dt><img src="images/ScorecardError.gif" alt="Scorecard DPE extension" /></dt>
	        <dd>Figure: ScorecardDPE extension is not registered correctly</dd>
	    </dl>                
    </li>
    <li><h2><a name="MissingColumn">Web Report missing extra column</a></h2>
        <p>After exporting a scorecard to Reporting Services the scorecard is rendered, however it is missing the Person Responsible on the web version
        </p>        
         <dl class="image">
            <dt><img src="images/MissingColumn.gif" alt="Missing Person Responsible" /></dt>
	        <dd>Figure: Missing Person Responsible field on the web version</dd>
	    </dl>     
		<dl class="image">
            <dt><img src="images/PersonColumn.gif" alt="Has Person Responsible" /></dt>
	        <dd>Figure: Person Responsible field in Scorecard</dd>
	    </dl>
    </li>	 
    <li>
        <h2>
            <a name="Deploy"></a>Deploy the dashboard without a folder</h2>
        <p>
            When deploying a dashboard to a document library from PerformancePoint 2007 Dashboard Designer, it creates each dashboard page (an .aspx file) in a folder named the same as the dashboard.
        </p>
        <p>
            It would be nice to be able to deploy a dashboard without a folder in the SharePoint server.
        </p>
        <dl class="image">
            <dt>
                <img src="Images/PPS_Deploy_1.JPG" alt="Deploy with folder"/></dt>
            <dd>
                Figure: I would like to be able to avoid this folder. You should be able to deploy a PerformancePoint report to a root folder in SharePoint.</dd></dl>
        <p>
            Currently you need to follow the workaround on this blog post titled <a href="/SSW/Redirect/PPSDeploy.htm">Dashboard Deployment Without Folders</a> to remove this limitation.
        </p>
    </li>
    <li>
        <h2>
            <a name="DeployToMOSS"></a>Select a deployment folder in Reports Library on the SharePoint site
        </h2>
        <p>
            It would be nice to be able to choose a deployment folder on the SharePoint site in the reports library.
        </p>
        <dl class="image">
            <dt>
                <img src="Images/PPS_DeployToMOSS_1.JPG" alt="Deploy to SharePoint Site"/></dt>
            <dd>
                Figure: Choose a deployment folder in reports library is better.</dd></dl>
        <dl class="image">
            <dt>
                <img src="Images/PPS_DeployToMOSS_2.JPG" alt="Deploy to SharePoint Site"/></dt>
            <dd>
                Figure: The destination folder is added into a SharePoint site, and it is not wanted.</dd></dl>
    </li>
    <li>
      <h2><a name="PointToKB"></a>Point the user to a KB</h2>
       <p>When PerformancePoint hasn't been configured and you try to create a new data connection you get the error:</p>
       <p>This data source cannot be used because PerformancePoint Services is not configured correctly. Additional details have been logged for your administrator.</p>
       <p>Instead it should point you to a KB on how to configure PerformancePoint Services.</p>
       <dl class="image">
            <dt>
                <img src="Images/NeedPointToKB.JPG" alt="The notice should point to KB."/></dt>
        </dl>
    </li>
    <li>
     <h2><a name="DisplayDashboard"></a>Add a menu item to "Display Dashboard"</h2>
     <p>PPS 2010 gives the option of displaying scorecards and reports through the context menu but not for dashboards.</p>
      <dl class="badImage">
            <dt>
                <img src="Images/NoOptionToDisplay.JPG" alt="We need an option which can display the dashboard."/></dt>
             <dd>
              Figure 1 - Bad Example - Can't view a dashboard that has been saved via Dashboard Designer</dd>
        </dl>
        <dl class="goodImage">
            <dt>
                <img src="Images/DisplayScorecard.JPG" alt="A Display Scorecard option allows users to see PPS items. "/></dt>
             <dd>
               Figure 2 - Good Example - A Display Scorecard option allows users to see PPS items</dd>
        </dl>
    </li>
    <li>
     <h2><a name="DeployStatus"></a>Tell me that this dashboard has not been deployed</h2>
        <dl class="badImage">
            <dt>
                <img src="Images/DashboardDeploy01.JPG" alt="can't see the dashboard "/></dt>
             <dd>
               Figure 1 - Bad Example: This dashboard hasn't been deployed so no one can view it ?but it is unclear whether it is deployed or not</dd>
        </dl>
        <dl class="badImage">
            <dt>
                <img src="Images/DashboardDeploy02.JPG" alt="can't see the dashbord status of deployment "/></dt>
             <dd>
               Figure 2 - Bad Example - Dashboard details doesn't show the deployment status either</dd>
        </dl>
      <p> It would be nice to have a status "Not Deployed" as a column or in the item properties.</p>
      <p> Even better would be an option to "Deploy" just like how SharePoint allows you to publish content.</p>
    </li>
    <li>
              <h2><a name="PerformancePoint2010"></a>PerformancePoint 2010 - saving the project file is weird</h2>
              <p>Really enjoy working with PerformancePoint's rich Dashboard designer... It is a pleasure to use.</p>
              <p>My Suggestion, I would like nothing to be saved to my desktop. Keep it all in SharePoint.</p>
               <dl class="image">
                    <dt><img src="images/SaveProject01.jpg" alt="Create a project" /></dt>
                    <dd>Figure: I like how each piece I create then save, goes up to SharePoint</dd>	    			    
                </dl>
                <dl class="image">
                    <dt><img src="images/SaveProject02.jpg" alt="I want to save the file on SharePoint not my desktop" /></dt>
                    <dd>Figure: However the last piece - the project file - wants to save on my PC</dd>	    			    
                </dl>
      </li>
      <li>
       <h2><a name="AppVersioinNumber"></a>Add the version number in the app name (like other programs e.g. Word 2010)</h2>
        <p>I always think apps should include their version number</p>
        <dl class="image">
            <dt><img src="images/VersionNameMissing.jpg" alt="Version Name missing" /></dt>
            <dd>Figure: Missing '2010' in the name</dd>	    			    
        </dl>
       <a href="/ssw/Standards/BetterSoftwareSuggestions/SharePointTeamServices.aspx#VersionNumber">Version Number missing in SharePoint</a> 
      </li>
</ol>
</div>
<h2>Acknowledgements</h2>	
<p>
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JK">Justin King</a>
</p> 
</asp:content>
