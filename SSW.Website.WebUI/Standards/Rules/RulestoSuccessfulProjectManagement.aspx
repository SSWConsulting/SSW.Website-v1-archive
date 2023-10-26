<%@ Page Language="vb" MasterPageFile="~/Masters/Default.master" Title="Rules to Successful Project Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
  <p>
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
    </asp:SiteMapPath>
  </p>
  <!-- Get Tristan to help with this one.    
<div class="section">
    <h1>Our Project Management System</h1>
    <h2>Reducing the risk in software development</h2>
</div>
-->
  <p>
    Software must help a business become more efficient and build better relationships
    with their clients. This means that software must also be cost-effective and quick
    to market. Traditionally, software has been slow to build and difficult to change.
  </p>
  <p>
    SSW's Rules to Successful Project Management, built on eXtreme Programming, allows
    businesses to address their most important challenges first, and respond quickly
    to a changing commercial environment. We prefer to work on-site, in close consultation
    with you and your business users, becoming an integrated part of your team. We believe
    these rules deliver functional, value-adding software - faster.
  </p>
  <div class="TableOfContents">
    <h3>
      Rules to Successful Project Management
    </h3>
    <ol>
      <li><a href="#InitialMeeting">Do you have an Initial Meeting?</a></li>
      <li><a href="#SpecificationReview">Do you conduct a Specification Review?</a></li>
      <li><a href="#InitialReleasePlanBallpark">Do you create an Initial Release Plan and
        Ballpark?</a></li>
      <li><a href="#SpecificationReviewPresentation">Do you effectively present the outcomes
        of the Specification Review?</a></li>
      <li><a href="#ApprovalInitialReleasePlan">Do you obtain approval for the Initial Release
        Plan and Ballpark?</a></li>
      <li><a href="#SpecificationDetailedReleasePlan">Do you schedule further specifications
        and a detailed Release Plan?</a></li>
      <li><a href="#ReleaseEstimationProcess">Do you know how to estimate a Release?</a></li>
      <li><a href="#ApprovalDetailedReleasePlan">Do you obtain approval on the detailed
        Release Plan</a></li>
      <li><a href="#ManageReleaseDevelopmentProcess">Do you manage the Release development
        process?</a></li>
      <li><a href="#ProjectCompletionSignOff">Do you know how to complete a Release?</a></li>
    </ol>
  </div>
  <div id="mainContent">
    <ol>
      <li><a name="InitialMeeting"></a>
        <h2>
          Do you have an Initial Meeting?</h2>
        <p>
          The initial meeting for a project is part of the Sales and Account Management process.
          Rules regarding the planning, execution and outcomes of the initial meeting can
          be found <a href="/SSW/Standards/Rules/RulestoSuccessfulSalesAccountManagement.aspx#PrepareInitialMeeting">
            here</a>.
        </p>
      </li>
      <li><a name="SpecificationReview"></a>
        <h2>
          Do you conduct a Specification Review?</h2>
        <p>
          The Specification Review is paid work and conducted by two Senior Software Architects
          at the client premises. The time allocated for a Spec Review is generally 1 - 5
          days depending on initial expectations of the project. The rule of thumb is 1 -
          2 days Spec Review per estimated month of project time. The Spec Review is a process
          that will demonstrate to the client whether SSW has the business sense to understand
          their business and the technical and management capacity to complete the project.
        </p>
        <p>
          During the Spec Review SSW will obtain an overall 'outsiders' understanding of the
          business and project through an interview process with senior management, relevant
          business users and IT staff, reviewing any documentation the client may already
          have. Remember clients are mostly looking to SSW to assist them in solving business
          problems. Detailed discussions about technology with the client, unless they have
          a specific business purpose, are unlikely to be useful.
        </p>
        <p>
          The purpose of a Spec Review is to create an Initial Release Plan and Ballpark.
        </p>
        <p>
          While the information collected and the conclusions of the Spec Review are presented
          formally at the end of the Review it is important that the Project Manager convey
          key points to the client as they emerge through the course of the Spec Review. The
          formal presentation is NOT the time to be presenting new information to the client.
          Formal meetings can have an Us vs Them feel. Addressing key potential sticking points
          of budget and technology informally during the course of the Spec Review relieves
          the potential for unwelcome surprises during the Spec Review presentation. Canvassing
          the issues beforehand in casual 'corridor conversations' clears the decks for an
          agreement, rather than increasing the risk of heated discussions if you surprise
          a client at a formal meeting. Remember, no politician challenging for the leadership
          ever calls a vote before he or she knows the numbers; you too should avoid presenting
          a solution at a meeting if you aren't convinced the client is already agreeable.
          Through the course of the Spec Review the client should by aware of at least the
          following:
        </p>
        <p>
          <b>Budget ballpark indications expressed in terms of man months</b>
        </p>
        <p>
          Each man month for an SSW Senior Architect is between $24,000+GST and $33,000+GST
          depending on the resource. The client needs to understand that their original budget
          allocation or scope requirements may need adjustment.
        </p>
        <p>
          <b>Technology options</b>
        </p>
        <p>
          SSW will likely pursue recent Microsoft technologies. Some clients might want to
          do their own research or need some time to think about their options before agreeing
          to newer technologies.
        </p>
        <p>
          The Project Manager must run a 'test please' by other SSW Senior Architects and
          the Account Manager before anything is formally presented to the client.
        </p>
      </li>
      <li><a name="InitialReleasePlanBallpark"></a>
        <h2>
          Do you create an Initial Release Plan and Ballpark?</h2>
        <p>
          The Initial Release Plan is a summary of the work required to complete the clients
          project and provides a ballpark estimate. The Initial Replease Plan will contain
          the following elements:
        </p>
        <ul>
          <li>Providing an architectural roadmap for the project and recommending available
            technical solutions. E.g. Winforms, Webforms, SQL Server, SharePoint, PerformancePoint,
            Reporting Services</li>
          <li>An initial release plan including "Further Specification" as Release 1. At the
            conclusion of Release 1 a more accurate price estimate for Releases 2 - 4 will be
            available. (Further Specification is not generally required if the project is estimated
            to be less than one month)</li>
          <li>A breakdown of the required software application into its core components, likely
            to include the approximate number of main features (e.g. screens, reports or sitemap)</li>
          <li>A integration and deployment strategy</li>
          <li>A 'future functionality' wishlist - this requires the client to set the priorities
            for the project through defining what is in and out of scope</li>
          <li>Hardware and licensed software recommendations</li>
          <li>Any known project risks</li>
          <li>A sample mock-up screen where the project is less than one month</li>
        </ul>
      </li>
      <p>
        Sample Initial Release Plan
      </p>
      <ol>
        <li>Release 1 (1.5 man months) - Specification (mock up screens, customer stories/business
          rules) (Releases 2 - 4)</li>
        <li>Release 2 (1.5 man months) - Database schema design</li>
        <li>Release 3 (1.5 man months) - Development Module 1 Customers</li>
        <li>Release 4 (1.5 man months) - Development Module 2 Products</li>
        <li>Release 5 (1.5 man months) - Specification (mock up screens, customer stories/business
          rules) (Releases 6 - 8)</li>
        <li>Release 6 (1.5 man months) - Development Module 3 Orders</li>
        <li>Release 7 (1.5 man months) - Development Module 4 Suppliers</li>
        <li>Release 8 (1.5 man months) - Development Modules 5 Employees</li>
      </ol>
      <p>
        With the Initial Release Plan, the client can see whether SSW understands their
        business and the requirements for their software development project. The ballpark
        estimate allows them to decide whether the project is feasible for their budget
        and time-frame.
      </p>
      <li><a name="SpecificationReviewPresentation"></a>
        <h2>
          Do you effectively present the outcomes of the Specification Review?</h2>
        <p>
          The findings of the Spec Review (the Initial Release Plan) should be presented at
          a meeting with the key decision makers of the project for review and acceptance,
          generally in the form of a PowerPoint presentation. It is important that all the
          required people are in a room together to review the Initial Release Plan.
        </p>
        <p>
          If you've run the Spec Review successfully the client should not be surprised by
          anything you present. This means discussions should focus on issues such as what
          particular requirements could be added into the scope in the first phase, or what
          releases can be completed by what date, rather than spending the meeting helping
          the client regain consciousness after they blacked out from seeing the price.
        </p>
        <p>
          The Spec Review presentation should be scheduled by the Project Manager or Account
          Manager for the afternoon of the final day of the Spec Review, or if the Spec Review
          is short (less than a week) in the week following. A proposal can sent following
          the conclusion of the Spec Review.
        </p>
        <p>
          Once again the presentation needs to pass a 'test please' from another SSW Senior
          Architect and Account Manager.
        </p>
      </li>
      <li><a name="ApprovalInitialReleasePlan"></a>Do you obtain approval for the Initial
        Release Plan and Ballpark?
        <p>
          The client will already have entered a contractual relationship with SSW. It is
          not absolutely necessary to issue a new proposal for the commencement of Release
          1. SSW is happy to commence working on Release 1 once the client has agreed in writing
          (even by email) to the Initial Release Plan.
        </p>
      </li>
      <table class="clsSSWTable" align="right" summary="What is Pair Programming?" style="{width: 40%;
        }">
        <tr>
          <td>
            <a name="PairProgramming"></a>
            <p>
              <b>What is Pair Programming?</b></p>
            <p>
              Pair Programming is two developers sitting side-by-side, working together on the
              same design, function or form (on the one PC). Software is complex and the benefits
              of working together are:</p>
            <ul>
              <li>Less time stuck on a problem - you have someone familiar with the project to help
                you work through the problem</li>
              <li>Your code with have less a strange workarounds - because if something doesn't
                add up to a developer, he has someone to ask</li>
              <li>Cleaner code - because you know someone else is going to be looking at your code</li>
              <li>Support - when you need changes down the track, you have 2 people to call on</li>
            </ul>
            <p>
              <b>Do we do Pair Programming at SSW?</b></p>
            <p>
              Not if we use that definition. At SSW we have our own version of Pair Programming.
              We work in 2's but each developer has a PC and they sit right next to each other.
              We do this because we get the benefits of 2, but have a lower cost overhead.
            </p>
            <p>
              <b>Is there an Overhead?</b></p>
            <p>
              Some projects are done quicker with 2 people - especially when they are complex.
              But on most projects there is an overhead, because of the extra communication between
              the developers - you now have to please someone else - not just yourself.
            </p>
            <p>
              We generally estimate the overhead as 20% extra. But this is more than offset by
              the cleaner code and better solutions that come from two brains working together.
            </p>
            <p>
              <b>I know you've said all that, but really, can't I just pay for one developer??</b>
            </p>
            <p>
              Two heads are better than one. If your business is going to be using the application
              for years to come, having only one developer on your project will lead to headaches,
              period. At SSW we just won't do it. One developer will too often lead to unorthodox
              or poor quality designs. No point in a project can be more critical than the architecture.
              Using (at least) two heads for the architecture will mean your application is better
              to manage far into the future. The architecture is the foundations of the application
              and you will rely for years upon that foundation being right. Every dollar you save
              in architecture will cost you ten fold in the future. Don't skimp on architecture!
            </p>
          </td>
        </tr>
      </table>
      <li>
        <h2>
          <a name="SpecificationDetailedReleasePlan"></a>Do you do schedule further specifications
          and a detailed release plan?</h2>
        <p>
          SSW develops software in Releases. A Release is a detailed task list of work items
          and their deliverable elements together with the time and cost estimates associated
          with those tasks. A Release is 2 - 3 duration weeks and has between 2 - 6 resources
          allocated depending on the project size and completion schedule.
        </p>
        <p>
          The term "release" implies the unit of work is delivered at its completion, but
          delivery can be either public (i.e. to the client) or private (i.e. just to the
          test environment). It is common for the first 2 - 3 releases (e.g. Specs & Database)
          to be private. Short release cycles ensure clients have continuous visibility on
          progress.
        </p>
        <p>
          The first Release for projects of greater than 1 month is a further period of specification
          and the creation of a detailed Release Plan for, generally, Releases 2 - 4. The
          specification will primarily contain:
        </p>
        <ul>
          <li>A decision on technologies for both development and management of the project</li>
          <li>Mock up screens for look and feel</li>
          <li>Business Rules/Customer Stories</li>
          <li>Database Schema</li>
        </ul>
        <p>
          <b>Mock up screens</b>
        </p>
        <p>
          We recommend as part of the Specification SSW create mock-ups all major screens.
          Being a visual medium and easily understood mock-ups quickly identify basic functionality.
          Mock-ups can minimising refactoring going forward.
        </p>
        <p>
          SSW offers four types of mock-ups:</p>
        <ul>
          <li>A wireframe mockup - A layout of how controls would look in static form, no interaction
            in image format. e.g Visio</li>
          <li>A developer mockup - These are mockups in a Web/Windows Forms/Access UI with limited
            functionality</li>
          <li>A designer mockup - These are also mockups in a Web/Windows Forms with full CSS
            Styling and graphic designer enhancements</li>
          <li>A designer concept mockup - These are concept mockups in Photoshop providing a
            guidance of the final look with full styling</li>
        </ul>
        <p>
          Mockups incorporate all business rules in a Business Rules section at the bottom
          of each page these requirements come from customer's word documents, excel spreadsheets,
          email conversations, etc. The client should initial a print out of each mock-up
          screen as they are completed. You can find a sample series or mock-up screens <a
            href="/Projects/AC_Metalcorp/Default.aspx">here</a>.
        </p>
      </li>
      <li><a name="ReleaseEstimationProcess"></a>
        <h2>
          Do you know how to estimate a Release?</h2>
        <p>
          Release contain two main classes of work: work items relating to the particular
          project (e.g. Web app, upsizing, data migration etc) and work relating to all projects
          (management, administration, testing, software audit etc).
        </p>
        <p>
          Project specific work items (e.g. Create Customer form) many only make up between
          25% and 50% of the total project time. Project Managers and developers should not
          think that the only work being charged for on a project is coding tasks.
        </p>
        <p>
          Managing costs can change depending on how much management the client requires.
          SSW will recommend a suitable level of management. 'Management', or to put it another
          way: 'accountability and transparency' has a cost.
        </p>
        <h2>
          The Release Estimation Process</h2>
        <p>
          Preparing specifications for a client takes time and money. The aim is to gain a
          greater shared understanding of the project, and build trust.
        </p>
        <p>
          At SSW, estimates for a project will be done by a developer, checked by another
          developer, and finally triple checked by a project manager. You should have some
          idea of the budget from the initial phone call and meeting, so keep that in mind
          when preparing your estimate.
        </p>
        <p>
          Generally, there are 2 types of specifications you can prepare for a prospect:
        </p>
        <ol>
          <li><b>A Time and Materials Specification.</b> This is our preferred method of working.
            The benefit of this type of development is flexibility clients can add, remove and
            reprioritize development tasks during development.
            <br />
          </li>
          <li><b>A Fixed Price Quote.</b> Fixed price contracts necessitate having a mock-up
            &amp; schema release completed on a time and materials basis. In rare cases we may
            offer to do the mockup and schema release as a separate fixed price project - as
            a guide we would usually spend about a week to design 10 forms. Requests for variations
            to a fixed price contract must wait until the contract is completed. We charge a
            surcharge of 20% for fixed price projects. If development is based on a fixed price
            contract, developers cannot work onsite because it would make project management
            difficult.</li>
        </ol>
        <p>
          <b>Standard Steps:</b></p>
        <ol>
          <li>Prepare the specifications using a <a href="CostingsTemplate.xlt">spreadsheet
            template<?xml namespace="" ns="urn:schemas-microsoft-com:office:office" prefix="o" ?></a></li>
          <li>Paste spreadsheet into our <a href="../templates/SendingSpecificationsTemplate_v1.doc">
            standard email template</a> to be sent to a client. </li>
        </ol>
        <p>
          Alternatively if they just want to know more about us, then do the same without
          the spreadsheet and Ballpark Schedule" section
        </p>
        <p>
          When quoting on a new application, you should start by counting the number of forms
          that will be needed. You can find the excel template we use for estimates in \\ant\ssw\standardsinternal\templates.
          You can then use the template below to estimate how long the job will take, not
          forgetting to factor in mockup time if you are completing a mockup release. This
          assumes 3 tier development (4 stored procs per table):
        </p>
        <ul>
          <li>4 hrs x 2 developers per screen mockup</li>
          <li>8 hrs x 2 per simple form - 1 recordset</li>
          <li>4 hrs x 2 per subform - read only</li>
          <li>8 hrs x 2 per subform - read write</li>
        </ul>
        <p>
          In SSW, we always have 2 developers work together on a project. please refer to
          <a href="RulesToBeingSoftwareConsultantsWorkingInATeam.aspx#PairWork">Do you always
            try to work in pairs?</a>.
        </p>
      </li>
      <li><a name="ApprovalDetailedReleasePlan"></a>
        <h2>
          Do you obtain approval on the detailed Release Plan</h2>
        <p>
          Each Release Plan is treated as a separate proposal and must be signed off after
          review by the client.
        </p>
        <p>
          To manage Release Plans at SSW we use either eXtreme Emails! or TFS and MS Project.
          This makes constructing a release plan as easy as clicking a button!</p>
        <ul>
          <li>More informationon managing projects with <a href="/SSW/ExtremeEmails/ManageProjects.aspx">
            Extreme Emails</a></li>
          <li>More informationon managing projects with <a href="/ssw/Standards/Rules/RulesToBetterProjectManagementWithTFS.aspx">
            TFS</a></li>
        </ul>
        <!--
<dl class="image">
<dt>
<img src="/Images/XP_ReleasePlansAreOneClick.gif" alt="XP One Click" width="629" height="650" /></dt><dd>Figure:
Releases are created with one click of the mouse with SSW eXtreme Emails!</dd></dl>
-->
        <p>
          <!--
                    <dl class="image">
                    <dt>
                        <img src="Images/WorkItems.gif" alt="TFS WorkItems" width="630" height="364" /></dt><dd>Figure:
                            Work Items generated in Team Foundation Server</dd><dt>&nbsp;</dt></dl>
                                    <dl class="image">
                    <dt>
                        <img src="Images/ProjectWorkItems.gif" alt="TFS WorkItems" width="650" height="436" /></dt><dd>Figure:
                            Microsoft Project Work Items linked to Team Foundation Server</dd><dt>&nbsp;</dt></dl>
-->
      </li>
      <li><a name="ManageReleaseDevelopmentProcess"></a>
        <h2>
          Do you manage the Release development process?</h2>
        <p>
          Managing both the client and the project team during the release development phase
          is critical. Two important variables need to be controlled: Specs and Budget
        </p>
        <p>
          <b>Specs</b></p>
        <p>
          It doesn't matter whether you follow a Waterfall and Agile development method, in
          the real world, new information will come to light during the development phase.
          New information might lead to further work required in the project.
        </p>
        <ul>
          <li>Bugs get fixed first (if fixed price these are not charged if within the 30 day
            warranty period).</li>
          <li>Critical tasks get added into this release as Additional Items (if fixed price
            then these are chargeable).</li>
          <li>New work is moved to the next release.</li>
        </ul>
        <p>
          <b>Investigation Time</b>
        </p>
        <p>
          Clients will often request changes to be made to existing functionality or even
          entire slabs of new work. This work should not be managed any differently to a new
          project specifications. Therefore, a Release Plan should be prepared for the new
          work. As with any project work, this time is billable, and the client needs to be
          informed as such.
        </p>
        <ul>
          <li>Develop as per the mock-ups and specifications. </li>
          <li>Expect additional changes from customers as requirements change. These changes
            will NOT be reflected in the mockup.</li>
        </ul>
      </li>
      <li>
        <h2>
          Send &quot;Test Please&quot; Email</h2>
        <p>
          At the end of the Release Plan schedule (2 weeks) SSW releases a version of the
          software to the Client for review. The Client reviews the delivered version against
          the Release Plan created at the first step. Where deficiencies arise, they are fixed
          before future development takes place (SSW strictly believes in <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/FixBugsFrst.aspx">
            fixing bugs before writing new code</a>). Once a release has been completed we
          then move onto the next release of the project. If the project is fixed price, the
          warranty period commences at the Test Please stage.
        </p>
      </li>
      <p>
        At SSW, we use ClientDiaryCategory &quot;08 Development - Changes &amp; Additional
        Work&quot; to create an email to send to the client and inform him of the process,
        including:
      </p>
      <ul>
        <li>Time needed to investigate list of items</li>
        <li>Time to produce Release Plan(s) with associated tasks and estimates</li>
        <li>Time for client to review and prioritise/delay/exclude items</li>
      </ul>
      <p>
        <b>Inform Client of Resources</b></p>
      <p>
        If, at any stage during the project, extra resources are needed, the developer should
        contact the client and request the use of these extra resources.
      </p>
      </li>
      <li>
        <h2>
          <a name="NewlyDiscoveredWork"></a>Work outside the Project Scope/Newly Discovered
          Work</h2>
        <table class="clsSSWTable" width="50%" align="Right" summary="Formatting Table">
          <tr>
            <td>
              Subject: Newly discovered work<br />
              Dear Angelo,<br />
              This is to inform you that work is required outside of the initial project scope.
              This work is required as (e.g.) the SQL Server instance was not configured correctly
              by your DBA. The estimate for this newly discovered work is 16 hours.
              <br />
              Please let me know if you have any questions.
            </td>
          </tr>
        </table>
        <p>
          Where a project has a scope or proposal (either written or oral), work not anticipated
          as part of the original scope may become necessary. We call this work &quot;Newly
          discovered Work.&quot; Where this work will take more than one day to complete it
          is paramount the client be informed by email.
        </p>
        <p>
          In addition, in your diary write &quot;Outside Scope&quot; and note the work you
          completed, ensuring the Client sign your diary at the end of the day.
        </p>
        <p>
          If you are working purely on a Time &amp; Materials basis with no project proposal
          or scope document, this is not required.
        </p>
      </li>
      <li>
        <h2>
          Send the "Release Debrief" Email</h2>
        <ol>
          <li>The appointment for the debrief should be sent before the start of the release.</li>
          <li>If you're not finished development you should have the debrief anyway, otherwise
            they can get pushed out indefinitely, and it gives you a chance to take stock and
            see why you're taking longer than expected.</li>
        </ol>
      </li>
      <li>
        <h2>
          Deployment</h2>
        <ul>
          <li>Once signed off, the application is deployed into production by SSW, or (although
            rarely) handed to internal resources for deployment</li>
          <li>Test the application works in the production environment</li>
          <li>Customer signs off to accept the work is complete</li>
        </ul>
      </li>
      <li>
        <h2>
          Another &quot;Release Plan&quot; or Support</h2>
        <p>
          Just like a car, applications need servicing and tuning every now and then to stay
          in top condition. They might need alterations to deal with new business problems,
          or just tuning to increase efficiency based on changing user patterns.
        </p>
        <p>
          Different Clients need different levels of support. We understand that your needs
          must be met, whether for user assistance or high-resource emergencies. Check out
          our <a href="/ssw/Products/ProdCategory.aspx?CategoryID=8SUPP">support offerings</a>
          for more information.
        </p>
        <p>
          Whatever your need, SSW will be here to support your application, and make sure
          it stays current and does not fall into antiquity.
        </p>
        <ul>
          <li>The appointment for the debrief should be sent before the start of the release.</li>
          <li>If you're not finished development you should have the debrief anyway, otherwise
            they can get pushed out indefinitely, and it gives you a chance to take stock and
            see why you're taking longer than expected.</li>
        </ul>
        <p>
          More on the specifics at <a href="/ssw/EXtremeEmails/ManageProjects.aspx">http://www.SSW.com.au/ssw/eXtremeEmails/ManageProjects.aspx</a>
        </p>
      </li>
      <li><a name="ReleaseEstimationProcess"></a></li>
      <li><a name="ProjectCompletionSignOff"></a>
        <h2>
          Do you know how to complete and sign off a project?</h2>
        <p>
          Once our developers have finished working on a project, there are three steps you
          need to make sure they follow:</p>
        <ol>
          <li><b>Get the application tested.</b> At SSW the testing will usually be done by
            a project manager, but in all cases it must be done by someone who hasn't been involved
            in development. We use a standard email for this - it asks the tester to either
            send through any bugs, or to reply with an 'ok' indicating that the application
            passed testing. </li>
          <li><b>Send the client a project debrief.</b> Once internal testing is complete, send
            a project debrief to the client. This marks the end of general development. The
            client may send through bugs if they can find any. For Fixed Price contracts, we
            offer a warranty period of 30 days. Any bugs reported in this warranty period will
            be fixed for free. Our terms and condition state that payment on fixed price projects
            may be collected at the start of the warranty period, but this will depend on your
            particular contract.
            <div class="TableOfContents">
              <b>Important:</b><br />
              When User Acceptance Testing(UAT) begins and there will be 30 days warranty period
              to test the application by the client and report any <b>bugs</b> back to us for
              free correction, after this warranty period, even bug fixing becomes chargeable.
              <b>During the warranty period, all feedback from clients should be moved to next release
                unless they fall into the </b><a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/BugDefinition.aspx">
                  bug definition</a>. After all reported critical bugs have been fixed, you may
              generate a release plan for the next release and ask for approval to start a new
              release.
            </div>
          </li>
          <li><b>Deploy the application.</b> Once you have fixed all bugs reported by the client,
            you should email them saying something like 'If you're satisfied that we've fixed
            all bugs and development has been completed as required, please reply with your
            authorization to deploy your application into production.' This is a great way to
            gain acknowledgement that the project has been completed successfully. </li>
        </ol>
        <p>
          Aside from making sure your developers follow the appropriate steps upon completion
          of development, you should:</p>
        <ol>
          <li>Send your self an email using the follow up standard to call the client in a week.
            Ask questions like &quot;is there anything else we can assist you with at this point?&quot;.
            Ask for payment on any outstanding amount/invoices </li>
          <li>Send an email to Accounts personnel advising of project completion and Accountants
            can call the customer to collect any outstanding invoices.</li>
          <li>Send yourself emails to follow up after 3 and 6 months. You can say &quot;I'm
            just doing our standard follow up call to make sure you were satisfied with everything
            and experienced no problems.&quot;</li>
        </ol>
      </li>
      <li>
        <h2>
          <a name="HandoverandWarranty"></a>Handover and Warranty</h2>
        <p>
          <b>Leaving Incomplete/Untested Work</b>
        </p>
        <p>
          If, at the end of the day, work hasn't been fully tested, or is incomplete and you
          haven't been booked in for the next day, speak to the Company Champion that issues
          may arise and further work is likely to be required. After the conversation, email
          the Company Champion and CC your manager to confirm that further work is required.</p>
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
          <li>If a Client Review has NOT been scheduled into the specification send an email
            (at SSW we useClientDiaryCategory &quot;12 Fixed Price Handover (No Review)")</li>
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
      </li>
      <!-- Needs improvement -->
      <li><a name="SendWarningEmails"></a>
        <h2>
          Do you send a warning email to the client?</h2>
        <p>
          Throughout a release an email should to be sent to the client when the release is
          at 40%, 80% and 100% of the budget, saying "We have just hit 40% of the budget"
          <!--you are tracking behind because you have only completed 31% of the release" (we can't tell this can we??)-->
          .
        </p>
      </li>
      <li>
        <h2>
          Managing Software Consultants</h2>
        <p>
          SSW developers follow a series of standards to ensure successful projects and good
          quality code.
        </p>
        <p>
          But we've also taken some thought and learnt some lessons about what it's like being
          on the other end of the software development stick. These Rules are there to help
          you <a href="/ssw/Standards/Rules/RulestoManagingSoftwareConsultants.aspx">manage
            your software consultants</a> effectively.
        </p>
      </li>
      <li>
        <h2>
          <a name="Links"></a>Links
        </h2>
        <ul>
          <li><a href="/ssw/Redirect/HomePageeXtremeProgramming.htm" target="_blank">www.eXtremeProgramming.org</a>
            <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17"
              height="11" />
            <li><a href="/ssw/Redirect/HomePagexprogramming.htm" target="_blank">www.xprogramming.com</a>
              <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17"
                height="11" />
              <li><a href="/ssw/Redirect/ssw/XP-Refactoring.htm" target="_blank">www.refactoring.com</a>
                <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17"
                  height="11" />
                <li><a href="/ssw/Redirect/ssw/XP-c2.htm" target="_blank">www.c2.com</a>
                  <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17"
                    height="11" />
                  <li><a href="/ssw/EXtremeEmails/manageprojects.aspx">SSW - Using eXtreme Emails! to
                    Manage Projects</a>
                    <li><a href="/ssw/Standards/Rules/RulesToBetterProjectManagementWithTFS.aspx">SSW
                      - Rules to Better Project Management with TFS</a>
                      <li><a href="/ssw/EXtremeEmails/ssw9steps.pdf" class="pdf">9 Steps to get your project
                        up and running</a></li>
        </ul>
      </li>
    </ol>
    <h2>
      Acknowledgements
    </h2>
    <a href="/ssw/Employees/employeesprofile.aspx?EmpID=AC">Adam Coganogan</a><br />
    <a href="/ssw/Employees/employeesprofile.aspx?EmpID=UM">Ulysses Maclaren</a><br />
    <a href="/ssw/Employees/employeesprofile.aspx?EmpID=CS">Cameron Shaw</a><br />
    <a href="/ssw/Employees/employeesprofile.aspx?EmpID=JK">Justin King</a><br />
  </div>
</asp:Content>
