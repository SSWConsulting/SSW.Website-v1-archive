<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Rules to Better Project Management (XPDM)" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<p>
<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath>
</p>
<!-- Get Tristan to help with this one.    
<div class="section">
<h1>Our Project Management System</h1>
<h2>Reducing the risk in software development</h2>
</div>
-->
<div style="float:right; width:35%;">
  <div class="quote">
    <blockquote>
      <p>
        Software must help a business become more efficient and build better relationships with their clients. Business need software to be produced 
        cost-effectively and quickly. Simple steps upfront stop software being slow to build and difficult to change.
      </p>
      <p>
        Read our rules on project management for some simple tips before starting your next project.
      </p>
   </blockquote>
    <p>Adam Cogan, SSW Chief Architect</p>
  </div>
  <div>
    <dl class="image" style="width:440px;">   
      <dt><a href="Images/ProjectManagementSummary.jpg" target="blank"><img src="Images/ProjectManagementSummary_Small.jpg" 
              alt="Classic stories of Project Management"/></a></dt>
      <dd >Figure: Classic stories of Project Management</dd>
    </dl>
  </div>
</div>

<p>
    SSW's Rules to Better Project Management, (otherwise known as XPDM) built on eXtreme Programming, allows businesses to address their most important 
    challenges first, and respond quickly to change. Our rules advocate software consultants working on-site, or on the 
    phone, so long as there is close consultation with business users, with the goal to become integrated members of the clients team.
</p>

<p>
    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" />
    Indicates important rule</p>
<div class="TableOfContents" style="width:60%; min-height:450px;">
<h3>Rules to Better Project Management</h3>
    <ol>  
        <li><a href="#SpecificationReview">Do you conduct a Specification Review?</a>
		<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
        <li><a href="#InitialReleasePlanBallpark">Do you create an Initial Release Plan and Ballpark?</a>
		<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
        <li><a href="#ArchitectureCodeReview">Do you conduct an architecture and code review after every release?</a>
		<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
        <li><a href="#SpecificationReviewPresentation">Do you effectively present the outcomes of the Specification Review?</a>
		<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
        <li><a href="#ApprovalInitialReleasePlan">Do you obtain approval for the Initial Release Plan and Ballpark?</a>
		<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
        <li><a href="#Specification">Do you do schedule further specifications?</a></li>
        <li><a href="#DetailedReleasePlan">Do you create a detailed release plan and get it approved?</a></li>
        <li><a href="#ReleaseEstimationProcess">Do you know how to estimate a Release?</a></li>
        <li><a href="#ManageReleaseDevelopmentProcess">Does your project manager maintain a strict project schedule?</a></li>
        <li><a href="#HandoverandWarranty">Handover, support and warranty</a></li>
    </ol>
    
</div>

<div id="mainContent">
<ol>
<li><a name="SpecificationReview"></a><h2>Do you conduct a Specification Review?<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
<p>What is the step that the client should undertake after an initial meeting? We think it should be a "Specification Review".
				Generally a client wants to know if his idea will be $50K or $150K.</p>
				<p>A "Specification Review" is performed to determine the overall scope, feasibility, and ballpark of the project. We encourage you
				to also create a detailed "Release Plan" for the first 2 releases.</p>
				<p>eg. Mr Northwind learns that the idea he presented at the initial meeting will cost approximately $80K and he has to determine if that is feasible to his business
				or if he should remove some functionality.</p>
				
				<dl class="image" style="float:right; clear:right; width:283px;">   
				<dt><img src="/SSW/Standards/Rules/Images/ProjectManagement_OpenMeeting.jpg" 
        		alt="Have a frank & open interview style meeting with a data projector to get everything out on the table"/></dt>
				<dd >Figure: Have a frank &amp; open interview style meeting with a data projector to get everything out on the table</dd>
				</dl>
				<p>The Specification Review should be paid work and is conducted by two experienced developers at the client premises in close 
				consultation with the client. The time allocated for a Spec Review is generally 1 - 5 days depending on initial expectations of the project. The rule of thumb is 1 - 2 days Spec 
				Review per estimated month of project time. The purpose is to understand the whole project but, if the project is greater than six months, 
				focus primarily on the first six months. The Spec Review is a process that will demonstrate to the client whether you have 
				the commercial sense to 
				understand their **business** and have the technical and management capacity to complete the project.</p>
				<b>Talk Business Process</b>
		
				

				<ul>
				<li><strong>Interview: </strong>During the Spec Review, obtain an overall 'outsiders' understanding of the business and project through an interview process with senior 
				management, relevant business users and IT staff. </li>
				<li><strong>Review Documentation: </strong>Reviewing any documentation the client may already have. Remember clients are mostly 
				looking to software consultants to assist them in solving business problems. </li>
				<li><strong>Technology: </strong>Warning: Detailed discussions about technology with the client, 
				unless they have a specific business purpose, are unlikely to be useful. For example most clients won't be interested in a discussion about 
				whether to use MVC or ASP.NET traditional at this stage.</li>
				</ul><p>
<b>Do something valuable</b>
</p>
<p>
Most experts at software consulting will be able to provide a small improvement to the current system 'on the fly' during the Spec Review. This may be something
as simple as adding an index to a table and thereby increasing the performance of a webpage. 
</p>
<p>
<b>Use 'Corridor Conversations'</b>
</p>

<dl class="image" style="float:right; clear:right; width:250px;">   
<dt><img src="/SSW/Standards/Rules/Images/ProjectManagement_Suprise.jpg" 
        alt="Use corridor conversations to prevent nasty surprises"/></dt>
<dd >Figure: Use corridor conversations to prevent nasty surprises</dd>
</dl>
<p>
While the information collected and the conclusions of the Spec Review are presented formally at the end of the Review it is important that the 
Project Manager convey key points to the client as they emerge through the course of the Review. The formal presentation is NOT the time to 
be presenting new information to the client. Formal meetings can have an Us vs Them feel. Addressing key potential sticking points of budget and 
technology informally during the course of the Spec Review relieves the potential for unwelcome surprises during the Spec Review presentation. 
Canvassing the issues beforehand in casual 'corridor conversations' clears the decks for an agreement, rather than increasing the risk of heated 
discussions if you surprise a client at a formal meeting. For example, telling the client that "building the cube will add around two months
development time, shall we leave this out of the current scope, or do you want it in?" Remember, no politician challenging for the leadership ever 
calls a vote before he or she knows the numbers; you too should avoid presenting a solution at a meeting if you aren't convinced the client 
is already agreeable. Through the course of the Spec Review the client should by aware of at least the following:
</p>
<p>
<b>Budget ballpark indications expressed in terms of man months</b>
</p>
<p>
Each man month for senior software consultants is generally tens of thousands of dollars. Squibbling over $500 here or there in the ballpark
phase is a level of detail neither side can be confident of. Clients needs to be realistic about what they get for their money.
</p>
<dl class="badCode" style="margin-right:20%;">
<dt>
"We believe the solution will take approximately 180 hours which is $36,900+GST"
</dt>
<dd>
Bad Example - Far too firm a price when you don't know any of the detail</dd>
</dl>
<dl class="goodCode" style="margin-right:20%;">
<dt>
"Our projection is the project will take a minimum of 6 man months (around $200,000) to complete but this may change depending on what is finally 
agreed in the Specification. The price will vary depending on resources used. We propose to firm up a price for the first 3 releases and conduct 
a spec"
</dt>
<dd>
Good Example - leaves some wriggle room at these initial phases</dd>
</dl>

<p>
<b>Technology options</b>
</p>
<p>
At this stage you want to consider the most relevant technologies. For example SSW will likely pursue recent Microsoft technologies. Some 
clients might want to do their own research or need some time to think about their options before agreeing to newer technologies. 
</p>
<p>
<b>Test Please</b>
</p>
<p>
The Project Manager must run a <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/InternalTestPlease.aspx">test please</a> by other SSW Senior Architects and the Account Manager before anything is formally presented
to the client.
</p>
<font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/SpecificationReview.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/SpecificationReview.aspx</a></font>

</li>
<li><a name="InitialReleasePlanBallpark"></a><h2>Do you create an Initial Release Plan and Ballpark?<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>


 





<dl class="image" style="float:right; clear:both; width:249px;">
<dt><img src="/SSW/Standards/Rules/Images/ProjectManagement_BallPark_Catch.jpg" 
        alt="Remember, a batter aims to hit the ball way out of the ballpark. Don't set an indefensible boundary too early"/></dt>
<dd >Figure: Remember, a batter aims to hit the ball way out of the ballpark. Don't set an indefensible boundary too early</dd>
</dl>
<p>
The Initial Release Plan is a summary of the work required to complete the clients project and provides a ballpark
estimate. The Initial Release Plan will contain the following elements:
</p>
<ul>
<li>An architectural roadmap recommending technical solutions</li>
<li>Time allocated for further specification work both at the beginning (Release 1) and further down the line. At SSW we only create 
detailed specifications for 3 releases at a time</li>
<li>A breakdown of the required software application into its core components, likely to include the approximate number of main features 
(e.g. screens, reports or sitemap)</li>
<li>An integration plan</li>
<li>A deployment strategy</li>
<li>A 'future functionality' wish list - requiring the client to set the priorities for the project through defining what is in and out of scope</li>
<li>A detailed list of 'issues' associated with the existing system which impact future development and maintenance</li>
<li>Hardware and licensed software recommendations</li>
<li>A sample mock-up screen where the project is less than one month</li>
</ul>
<p>
<strong>Sample Initial Release Plan</strong>
</p>
<ol>
<li>Release 1 (1.5 man months) - Specification (mock up screens, customer stories/business rules) (Releases 2 - 4)</li>
<li>Release 2 (1.5 man months) - Database schema design</li>
<li>Release 3 (1.5 man months) - Development Module 1 Customers</li>
<li>Release 4 (1.5 man months) - Development Module 2 Products</li>
<li>Release 5 (1.5 man months) - Specification (mock up screens, customer stories/business rules) (Releases 6 - 8)</li>
<li>Release 6 (1.5 man months) - Development Module 3 Orders</li>
<li>Release 7 (1.5 man months) - Development Module 4 Suppliers</li>
<li>Release 8 (1.5 man months) - Development Modules 5 Employees</li>
</ol>
<p>
With the Initial Release Plan, the client can see whether SSW understands their business and the requirements 
for their software development project. The ballpark estimate allows them to decide whether the project is feasible 
for their budget and time-frame.
</p><font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/InitialReleasePlanandBallpark.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/InitialReleasePlanandBallpark.aspx</a></font>
</li>


<li><a name="ArchitectureCodeReview"></a><h2>Do you conduct an architecture and code review after every release?<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>

<p>
    An internal architecture and code review is the application of the <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/InternalTestPlease.aspx">Test Please</a> principle
    against the design phase. An architecture or code review conducted during every release, while adding a cost to the release for the time spent 
    conducting the review, will minimise errors, both small and strategic, which will save costs for both the supplier and the client down the line.
</p>
<p>
    Schedule a 4 hour (2 architects x 2 hours) review during all releases. While it may not be so important to conduct a review in every 
    development release, they are compulsory for a specification release and one should be held for every week of specification time. 
</p>
<p>
The following are items that are address in a architecture/code review:
</p>
<p>
<b>Background information/overview of the project</b>
</p>
<ul>
<li>Current system</li>
<li>Objectives of the system</li>
<li>No. users (internal, external, edit, read only</li>
<li>Current technologies</li>
<li>Current environment (SOA, SOE)</li>
</ul>
<p>
<b>Points for discussion</b>
</p>

<ul>
<li>Rich client</li>
<li>Web client</li>
<li>Smart client (any disconnected users?)</li>
<li>Technology choices
    <ul>
    <li>Persistance layer (SQL Server, Access, SQL Express, LINQ, netTiers)</li>
    <li>Business layer</li>
    <li>UI</li>
    <li>Communications</li>
    <li>Workflow</li>
    <li>Integration - external systems</li>
    </ul>
</li>
<li>Requirements for 'package' software
    <ul>
    <li>PerformancePoint</li>
    <li>Reporting Services</li>
    <li>Accounting packages</li>
    <li>SharePoint</li>
    </ul>
</li>
<li>Data migrations</li>    
<li>Data reporting</li>
<li>User experience</li>
<li>Network</li>
<li>Responsibilities/players</li>
<li>Infrastructure
<ul>
<li>Network</li>
<li>Hardware</li>
</ul>
</li>
<li>Deployment
<ul>
<li>Staged implementation</li>
<li>In parallel</li>
<li>Development/Test/Staging/Production</li>
</ul>
</li>
<li>Disaster recovery</li>
<li>Change control/source control</li>
<li>Build Server</li>
<li>Performance</li>
<li>Scalability</li>
<li>Extensibility</li>
<li>Design patterns</li>
<li>Maintainability</li>
<li>Reliability (failover servers?)</li>
<li>'Sellability' i.e. is the solution appropriate for the client?</li>
</ul>
<br />
<font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/ArchitectureCodeReview.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/ArchitectureCodeReview.aspx</a></font></li>

<li><a name="SpecificationReviewPresentation"></a>
<h2>Do you effectively present the outcomes of the Specification Review?<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>

<dl class="image" style="float:right; clear:both; width:362px;">  
<dt><img src="/SSW/Standards/Rules/Images/ProjectManagement_DecisionMakers.jpg" 
        alt="It's a lot easier to get a signature when you've got the right people in the room"/></dt>
<dd >Figure: It's a lot easier to get a signature when you've got the right people in the room</dd>
</dl>
<p>
The findings of the Spec Review (the Initial Release Plan) should be presented at a meeting with the key decision makers of the project for 
review and acceptance, generally in the form of a PowerPoint presentation. It is important that all the required people are in a room together 
to review the Initial Release Plan.
</p>
<p>
If you've run the Spec Review successfully the client should not be surprised by anything you present. This means discussions should focus
on issues such as what particular requirements could be added into the scope in the first phase, or what releases can be completed by what date, 
rather than spending the meeting helping the client regain consciousness after they blacked out from seeing the price.
</p>
<p>
The Spec Review presentation should be scheduled by the Project Manager or Account Manager for the afternoon of the final day of the Spec 
Review, or if the Spec Review is short (less than a week) in the week following. A proposal can sent following the conclusion of the Spec 
Review but at SSW we generally email the PowerPoint presentation to the client as we are already operating in a contractual relationship.
</p>
<p>
Once again the presentation needs to pass a 'test please' from another SSW Senior Architect and Account Manager before the meeting takes place.
</p>
<font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/SpecificationReviewPresentation.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/SpecificationReviewPresentation.aspx</a></font>
</li>
<li><a name="ApprovalInitialReleasePlan"></a><h2>Do you obtain approval for the Initial Release Plan and Ballpark?<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
<p>
The client will already have entered a contractual relationship with SSW. It is not absolutely necessary to issue a new proposal for 
the commencement of Release 1. SSW is happy to commence working on Release 1 once the client has agreed to the Initial Release Plan. 
Agreement can be verbal with a confirming 'as per our conversation' email from the Project Manager.
</p>
<font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/ApprovalInitialReleasePlan.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/ApprovalInitialReleasePlan.aspx</a></font>

</li>
<li>
<h2>
<a name="Specification"></a>Do you do schedule further specifications?</h2>


<dl class="image" style="float:right; clear:right; width:448px;"> 
<dt><img src="/SSW/Standards/Rules/Images/ProjectManagement_DigaLittleDeeper.jpg" 
        alt="Schedule time to dig a little deeper. There's always another layer to uncover"/></dt>
<dd >Figure: Schedule time to dig a little deeper. There's always another layer to uncover</dd>
</dl>
<p>
<strong>More specs? How much is too much?</strong>
</p>
<p>
    An over simplified way of differentiating Agile methods from Waterfall methods is to say Agile does the least amount of preparation 
    required to get something into production, while Waterfall does the most. Taking into account commercial realities SSW recommends an 
    agile approach. But the question remains, for your specific project, how much of the whole project do you need to know in detail 
    before you start coding? 
</p>
<p>
    The answer varies from project to project and those with the responsibility to provide the answer are the architects on the project - 
    subject to peer review. Having said that, our standard is to schedule specification time in every release.
</p>
<font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/ScheduleFurtherSpecifications.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/ScheduleFurtherSpecifications.aspx</a></font>
</li>
<li>
<h2>
<a name="DetailedReleasePlan"></a>Do you create a detailed release plan and get it approved? </h2>
<p>
    SSW develops software in Releases. A Release is a detailed task list of work items. A Release is a maximum 2 weeks duration a maximum of 
    160 hours. The work items are a breakdown of all the tasks required to be performed in that release (including all the specs, forms, mock up 
    screens, and the business rules/customer stories related to those tasks.
</p>
<p>
    The term "release" implies the unit of work is delivered at its completion, but delivery can be either public (i.e. to the client) or private 
    (i.e. just to the development/test environment). The more frequently we delivery releases publicly the better the application will be.
</p>
<p>
   To physically create release plans at SSW we use TFS (preferred) or SSW eXtreme Emails!. This makes constructing a release plan as easy as clicking a button!
</p>
    <ol>
        <li><a href="RulesToBetterProjectManagementWithTFS.aspx">Creating release plans with TFS Work Items</a>
            <ul>
                <li>Sample TFS Release Plan</li>
            </ul>
        </li>
        <li><a href="/ssw/eXtremeEmails/ManageProjects.aspx">Creating release plans with Extreme Emails</a>
            <ul>
                <li><a href="/ssw/eXtremeEmails/Reports/ReleasePlanReport.htm">Sample Extreme Emails Release Plan</a></li>
            </ul>
        </li>
   </ol>

<p>
    Note: Why don't we use Microsoft Project because of the following problems:
</p>    
<ul>
<!--SSW Code Auditor - Ignore next	line(HTML)-->
    <li>Tasks are auto scheduled based on dependency and resource allocation (who is assigned to it). This generates an estimated completion date which is never accurate, due to annual leave, public holidays and general shuffling of people in the team (e.g Urgent fix for an old client for a day).<!--XXXXX Remove fullstops at end of bullet points XXXXX--> </li>
    <li>It gets the summing wrong (the totals don't seem to update and no way to trigger it)</li>
    <li>It's hard to synchronize with timesheets (as it doesn't connect to 3rd party timesheet systems out of the box &#8211; however, it does have its own time sheeting system, that is missing billing information!)</li>
    <li>You cannot allocate two people to a task. This create a lot of additional overhead to get it right. **fixed in TFS 2008**</li>
</ul>

<p>
    <!--**MOVE OUT AND MAKE ITS OWN POINT**--> Mockups - One of the first thing to agree with the customer is the mockup. SSW offers <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/SpecificationByMockUp.aspx">four options</a> for mockups.
</p>
<font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/DetailedReleasePlan.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/DetailedReleasePlan.aspx</a></font>

    </li>
    
    <li><a name="ReleaseEstimationProcess"></a><h2>Do you know how to estimate a Release (that include the &#8216;General Project Costs&#8217;)?</h2>
    
    <p>
    Release contain two main classes of work: work items relating to the particular release (e.g. 
        Create Customers.aspx) and work 
    relating to all releases (e.g. management, administration, testing, software audit etc).    
    </p>
    <p>
    Project specific work items many only make up between 25% and 50% of the total project time. Project Managers
    and developers should not think that the only work being charged on a project are coding tasks.
    </p>
<b>General Project Costs</b>
<p>
Management costs can change depending on how much management the client requires. SSW will recommend a suitable level of management. 
'Management', or to put it another way: 'accountability and transparency' has a cost. 
</p>
<p>
At SSW we add general project costs as a % of the work items generally in line with the following:
</p>
<ul>
<li>Further specification: 20%</li>
<li>Unit tests: 20%</li>
<li>Testing: 10-20%</li>        
<li>Fixes from testing: 10-20%</li>
<li>Software Audit: 4 hours per Release - usually conducted by two experienced architects</li>
<li>Fixes from the Software Audit: 5%</li>
<li>Project Administration: 5% - this includes items like stand up meetings, timesheets, standard updates</li>
<li>Project Management: at least 1 day per week per resource on the project (e.g. two developers full time requires a PM two days per week) 
UNLESS the client provides a full time Project Manager and takes full responsibility for all resources</li>
<li>Unknowns: 10%. While this is arbitrary it raises awareness for everybody that 'there are things we still don't know!'</li>
</ul>                            
<p>
<b>Project Specific Costs</b>
</p>
<p>
    At SSW, estimates for a project will be done by a developer, checked by another developer, and finally triple checked by a project manager. 
    While every project is different in some way, there are common elements. SSW has built an estimates calculator to assist in creating estimates.
</p>
<p>
    See the <a href="/ssw/StandardsInternal/Templates/SSW_Proposal-Project/SSWPrioritiesEstimatesTemplate.xltx" target=_blank>SSW Menu Estimates Calculator</a> (NOTE: this is an Excel template file and only works in Firefox (!) and you Save the File (don't "Open" it) and then open the file in Windows Explorer!)
</p>
<p>
If the client requires a fixed price quotation a 20% premium is added to the estimates for the releases specified in the 
Specification Release only (i.e. a fixed price is not given on the entire project). Requests for variations to a fixed price 
contract must wait until the contract is completed. If development is based on a fixed price contract work is completed 
offsite only to facilitate project management and prevent unauthorized scope development.
</p>
<p>Note: It would be great if TFS Web Access had functionality &#8220;Add <a href="/ssw/Standards/BetterSoftwareSuggestions/TeamFoundationServer.aspx#StandardItems">Standard Items</a> to a Iteration (aka Sprint, Release etc.)&#8221;</p>
<font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/DetailedReleasePlan.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/DetailedReleasePlan.aspx</a></font>
</li>
    
    

    <li>
    <a name="ManageReleaseDevelopmentProcess"></a>
    <h2>
        Does your project manager maintain a strict project schedule?
    </h2>
        
    <p>
        It's been called 'herding cats'. Managing the project team and keeping the client well informed during the release development 
        phase is critical. Keeping development of the release on track involves maintaining transparency on the important variables 
        of project management: time, scope, budget and quality. This is achieved by maintaining a strict project schedule with particular 
        activities taking place regularly like clock-work. 
    </p>
    <p>
        Some activities are run internally while some are run with the client.E.g.,
    </p>

    
    <table width="90%" class="clsSSWTable">
                    <tr>
                        <th scope="col" width="16%">
                            Day
                        </th>
                        <th scope="col" width="42%">
                            Internal activity
                        </th>
                        <th scope="col" width="42%">
                            External activity
                        </th>
                    </tr>
                    <tr>
                        <td valign="top">
                            Monday
                        </td>
                        <td valign="top">
                            <ul>
                            <li><a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/DailyStandUpScrum.aspx">Stand Up meeting (or Scrum)</a></li>
                            <li>Management Reporting</li>
                            <li>Build review</li>
                            </ul>
                        </td>
                        <td valign="top">
                      
                        </td>
                    </tr>
                    <tr >
                        <td colspan="3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td valign="top">
                            Tuesday
                        </td>
                        <td valign="top">
                            <ul>
                            <li><a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/DailyStandUpScrum.aspx">Stand Up meeting (or Scrum)</a></li>
                            </ul>
                        </td>
                        <td valign="top">
                            <ul>
                        
                                <li>Conduct a <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/InternalTestPlease.aspx">test please</a> with the client</li>
                                <li><a href="RulestoHappyClients.aspx#TriageAdditionalItemRequests">Triage additional item requests</a></li>
                                <li><a href="RulestoHappyClients.aspx#ObtainApprovalAdditionalItemsExceedEstimates">Obtain approval for additional items and budget overuns</a></li>
                                <li><a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/EnforceDeadlinesHaveAProjectReleasePlanADebriefAMark10AndAStatusMeeting.aspx">Release update/debrief</a></li>
                                <li>Release sign-off</li>
                                <li>Release deployment</li>
                                <li>Next Release approved</li>
                            </ul>
                        </td>
                    </tr>
                    <tr >
                        <td colspan="3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td valign="top">
                            Wednesday
                        </td>
                        <td valign="top">
                            <ul>
                            <li><a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/DailyStandUpScrum.aspx">Stand Up meeting (or Scrum)</a></li>
                            </ul>
                        </td>
                        <td valign="top">
             
                        </td>
                    </tr>    
                    <tr >
                        <td colspan="3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td valign="top">
                            Thursday
                        </td>
                        <td valign="top">
                            <ul>
                                <li><a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/DailyStandUpScrum.aspx">Stand Up meeting (or Scrum)</a></li>
                                <li><a href="#ArchitectureCodeReview">Architecture/code review</a></li>
                            </ul>
                        </td>
                        <td valign="top">
                
                        </td>
                    </tr>
                    <tr >
                        <td colspan="3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td valign="top">
                            Friday
                        </td>
                        <td valign="top">
                            <ul>
                                <li><a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/DailyStandUpScrum.aspx">Stand Up meeting (or Scrum)</a></li>
                                <li><a href="RulesToBetterSetups.aspx#BuildVersionDay">Internal build</a></li>
                                <li><a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/InternalTestPlease.aspx">Test please</a></li>
                            </ul>
                        </td>
                        <td valign="top">
           
                        </td>
                    </tr>    
    
    </table>
    
     
    <dl class="image" > 
    <dt><img src="/SSW/Standards/Rules/Images/ProjectManagement_Coach.jpg" 
        alt="Only with a strict project schedule can the manager coach the team to success!"/></dt>
    <dd >Figure: Only with a strict project schedule can the manager coach the team to success!</dd>
    </dl>  
    <br /><font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterScrumUsingTFS/Pages/MaintainStrictProjectSchedule.aspx">http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterScrumUsingTFS/Pages/MaintainStrictProjectSchedule.aspx</a></font>
</li>
    <li>
        <h2>
            <a name="HandoverandWarranty"></a>Handover, support and warranty</h2>
              
       <p>
<b>Implementing a Support plan</b>
</p>
<p>
Just like a car, applications need servicing and tuning every now and then to stay in top condition. They might need 
alterations to deal with new business problems, or just tuning to increase efficiency based on changing user patterns.
</p>
<p>
Different clients need different levels of support. At SSW we offer a number of different <a href="/ssw/Products/ProdCategory.aspx?CategoryID=8SUPP">support 
offerings</a>.
</p>
   
      
                </p>
                <div class="TableOfContents">
                    <b>Important:</b><br/>When User Acceptance Testing(UAT) begins and there will be 30 days warranty period
                            to test the application by the client and report any <b>bugs</b> back to us for
                            free correction, after this warranty period, even bug fixing becomes chargeable.
                            <b>During the warranty period, all feedback from clients should be moved to next release
                                unless they fall into the </b>
                    <a href="/SSW/Redirect/SSW/RulestoSuccessfulProjects.htm">bug definition</a>. After all reported critical bugs have been fixed, you
                            may generate a release plan for the next release and ask for approval to start a
                            new release.
                        </div>
        <p>
            <b>Warranty on a Fixed Price Contract</b>
        </p>
                The Project Manager should review the specification, check off and test all items.
                This will determine whether (in his opinion) all items have been completed in totality.<p>
                    The specification and project is handed over to a Tester (not a developer on the
                    project) and the Tester reviews the specification, checking off and testing all
                    items. He determines whether (in his opinion) all items have been completed in totality</p>
                Bugs and enhancements are made if required<p>
                    When the Tester and the Project Manager are agreed that the project is completed:&nbsp;</p>
        <ul>
            <li>If a Client Review has been scheduled into the specification send an email using
                        (at SSW we use ClientDiaryCategory "12 Fixed Price Handover (Review)")</li>
            <li>If a Client Review has NOT been scheduled into the specification send an email (at
                        SSW we useClientDiaryCategory &quot;12 Fixed Price Handover (No Review)")</li>
        </ul>
        <p>
                    Note: The warranty period pauses when the client reports a bug. The warranty period
                    resumes when a new version is sent. For example, the client may report a bug on
                    a Wednesday morning on &quot;Day 18&quot; of the warranty. The bug is fixed on Friday
                    and a new version is sent late in the afternoon. The warranty period resumes on
                    Monday morning, at &quot;day 18&quot;. Therefore Wednesday through Friday were not
                    included in the warranty.
                </p>
        <p>
                    Note: There is no warranty on a time &amp; materials contract
                </p>
                            <b>Leaving Incomplete/Untested Work</b>
        
        <p>
                    If, at the end of the day, work hasn't been fully tested, or is incomplete and you
                    haven't been booked in for the next day, speak to the Company Champion that issues
                    may arise and further work is likely to be required. After the conversation, email
                    the Company Champion and CC your manager to confirm that further work is required.</p>
                    <p>
                        e.g. As per our conversation, this work has not yet been tested and may still include bugs. At this stage you would prefer if we did not continue work tomorrow, but I do recommend that we come in and finish soon.
                    </p>
                    <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterProjectManagement/Pages/HandoverAndWarranty.aspx">http://sharepoint.ssw.com.au/Standards/Management/Management/RulesToBetterProjectManagement/Pages/HandoverAndWarranty.aspx</a></font>
</li>
</ol>
        <h2>
            <a name="Links"></a>Links
        </h2>
        <ul>
            <li><a href="/ssw/Redirect/HomePageeXtremeProgramming.htm" target="_blank">www.eXtremeProgramming.org</a>
                <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17" height="11" />
            <li><a href="/ssw/Redirect/HomePagexprogramming.htm" target="_blank">www.xprogramming.com</a>
                <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17" height="11" />
            <li><a href="/ssw/Redirect/ssw/XP-Refactoring.htm" target="_blank">www.refactoring.com</a>
                <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17" height="11" />
            <li><a href="/ssw/Redirect/ssw/XP-c2.htm" target="_blank">www.c2.com</a>
                <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17" height="11" />
            <li><a href="/ssw/eXtremeEmails/ManageProjects.aspx">SSW - Using eXtreme Emails! to Manage Projects</a>
            <li><a href="/ssw/Standards/Rules/RulesToBetterProjectManagementWithTFS.aspx">SSW -  Rules to Better Project Management with TFS</a>
            <li><a href="/ssw/eXtremeEmails/ssw9steps.pdf" class="pdf">9 Steps to get your project up and running</a></li>
        </ul>
    
        
<h2>
Acknowledgements
</h2>
<a href="/ssw/Employees/employeesprofile.aspx?EmpID=AC">Adam Cogan</a><br />
<a href="/ssw/Employees/employeesprofile.aspx?EmpID=UM">Ulysses Maclaren</a><br />
<a href="/ssw/Employees/employeesprofile.aspx?EmpID=CS">Cameron Shaw</a><br />
<a href="/ssw/Employees/employeesprofile.aspx?EmpID=JK">Justin King</a><br />

</div>
</asp:Content>