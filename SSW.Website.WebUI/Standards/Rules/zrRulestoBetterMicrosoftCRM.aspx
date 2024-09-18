<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Microsoft CRM" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
  <p>
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
    </asp:SiteMapPath>
  </p>
  <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />

  <div class="TableOfContents">
    <h3>Rules to Better Microsoft CRM</h3>
    <ol>
        <li><a href="#ProjectPlanning">Project Planning - Do you download a copy of the Microsoft CRM Implementation Guide?</a></li>
        <li><a href="#ScreenShot">Installation - Do you log each screen which is different to the default?</a></li>
        <li><a href="#DevErrors">Installation - Do you turn on "Development Errors" and "Platform Tracing")?</a></li>
        <li><a href="#OrganizationalChart">Installation - Do you simplify the organizational chart before you load it into Microsoft CRM?</a></li>
        <li><a href="#ClientDemo">Do you know the best way to demo Microsoft CRM 4 to clients?</a></li>
        <li><a href="#OnlyOnePersonCustomize">Customization - Do you have only one person making changes to your CRM customization?</a></li>
        <li><a href="#ExportOnlyRelatedCustomizations">Customization - Do you only export the customizations and related ones that you have made?</a></li>
        <li><a href="#CustomizationBackupNaming">Customization - Do you have a naming convention for your customization back up?</a></li>
        <li><a href="#SupportedCustomization">Customization - Do you use a supported method of customization?</a></li>
        <li><a href="#BackupXMLSchema">Customization - Do you always make backup versions of the XML schema?</a></li>
        <li><a href="#Javascript">Customization - Do you use the built-in test form events before you publish JavaScript changes?</a></li>
        <li><a href="#RSVersion">Customization - Do you know which version of SQL Reporting Services and Visual Studio you are using?</a> </li>
        <li><a href="#FilteredView">Customization - Do you always use the filtered views when designing custom reports? </a></li>
        <li><a href="#CustomizationDoc">Customization - Do you have your customizations documented?</a></li>
        <li><a href="#Prefix">Customization - Do you set the schema-name prefix?</a></li>
        <li><a href="#EmailAddress">Customization - Do you have email address in the Associated Contact View?</a></li>
        <li><a href="#ChangeLogo">Customization - Do you know how to change default CRM logo?</a></li>
        <li><a href="#ExportCustomize">Customization - Do you export only the customizations of entities that you did customize?</a></li>
        <li><a href="#LegacyData">Data Migration - Do you prioritize the data that is to be imported? </a></li>
        <li><a href="#UseCheckBox">Form Design - Do you change contact method options from default option group to checkboxes?</a></li>
        <li><a href="#Environment">Do you identify Development, Test and Production CRM Web Servers by colors?</a></li>
        <li><a href="#DeploymentBat">Do you make batch files for deployment to Test and Production servers?</a></li>
        <li><a href="#Contact">Do you enable your contacts to have more than 3 email address and phone numbers?</a></li>
        <li><a href="#PutIntoSC">Do you put your exported customizations and your plug-in customization under source-control during deployment?</a></li>
        <li><a href="#PluginToolForExport">Do you export your configuration on deployment using the CRM Plug-in Registration Tool?</a></li>
        <li><a href="#AvoidOnTestServer">Do you avoid doing small bug fixes on your test-server?</a></li>
        <li><a href="#SyncOutlookContactsToCRM">Do you sync your Outlook contacts to CRM?</a></li>
    </ol>
  </div>

  <div id="mainContent">
    <ol>

      <li>
            <h2><a name="ProjectPlanning"></a>Project Planning - Do you download a copy of the Microsoft CRM Implementation Guide?</h2>
                <p>The <a href="http://www.microsoft.com/en-us/download/details.aspx?id=3621" target="_blank">Microsoft CRM Implementation Guide</a> contains essential information on installation pre-requisites and planning, implementation tools and troubleshooting.</p>
                <p>Using the CHM (Compiled HTML Help) makes searching easier than using a word or pdf document.</p>
                <dl class="image">
                    <dt><img src="Images/crm-implementation-guide.jpg" alt="Implementation guide screenshot" /></dt>
                    <dd>Figure: Searching the CHM version of the implementation guide is much nicer than the Word document</dd>
                </dl>
      </li>

      <li>
            <h2><a name="ScreenShot"></a>Installation - Do you log each screen which is different to the default?</h2>
                <p>It is impossible to exactly remember every configuration setting in an MSCRM install. A historical log of the installation is hugely valuable when there are problems after installation is completed and helps to correctly re-install if required. The easiest and most convenient way of doing this is to take screen captures of every screen and paste them into a Word document. E.g. _InstallSteps_CRM2011.docx</p>
                <p>You will also need this because you are going to do this in a Dev, then Test and then Production environment aren't you :-)</p>
                <dl class="image">
                    <dt><img src="Images/CRM-screen.jpg" alt="DevErrors in web.config" /></dt>
                    <dd>Figure: This is the last dialog before it installs. So you want a screen capture of everything up to here - so you can replay it for the Test and Production servers</dd>
                </dl>
      </li>

      <li>
            <h2><a name="DevErrors"></a>Installation - Do you turn on "Development Errors" and "Platform Tracing")?</h2>
                <p>When exceptions occur in CRM they are trapped by the platform layer and a standard error message is displayed to the user. At SSW we similarly implement exception handling and use <a href="/ssw/Standards/Rules/RulesToBetterErrorhandling.aspx#CatchRethrow"> SSW Code Auditor to audit exception handling</a>.</p>
                <p>By turning DevErrors on (mainly applicable to CRM 3 and 4) you will obtain the actual error. This is what that will be posted onto newsgroups. Microsoft Support should also ask you for this information, so you probably cannot do any meaningful troubleshooting until this has been activated. To switch DevErrors on, open the web.config and change DevErrors value ="On".</p>
                <dl class="image">
                    <dt><img src="Images/CRM_DevErrors.jpg" alt="DevErrors in web.config" width="434" height="258" /></dt>
                    <dd>Figure: Turn on DevErrors within Web.Config file to get details of error</dd>
                </dl>
                <p>In CRM2011 we accomplish the same thing by turning on tracing. For more information on tracing refer to MS KB907490.</p>
                <p>Now if all that info on the MS KS was too much, use the Diagnostics Tool for Microsoft Dynamics CRM 2011. It makes collecting trace information a snap.</p>
                <dl class="image">
                    <dt><img src="Images/Diagnostics-for-CRM.jpg" alt="Figure: Diagnostics for CRM2011" /></dt>
                    <dd>Figure: Diagnostics for CRM2011</dd>
                </dl>
      </li>

      <li>
            <h2><a name="OrganizationalChart"></a>Installation - Do you know that your organizational chart does not equal your CRM Business Units?</h2>
                <p>Usually there is not much point creating an over-complicated organizational structure in MSCRM, a flatter organizational chart will achieve the same end result. Whilst the security model of Microsoft CRM is highly configurable, most organizations do no need to have excessive differentiation of data ownership and hence could cut down on unnecessary work. It is recommended to use the "out of the box" roles for almost all organizations less than 30 users.</p>
                <dl class="image">
                    <dt><img src="Images/CRM-Default-Role.jpg" alt="Microsoft CRM Default Security Roles are good enough to start with" /></dt>
                    <dd>Figure: Microsoft CRM Default Security Roles are good enough to start with - this is not a thing to stuff with early on</dd>
                </dl>
                <p>First thing first... <strong>never</strong> delete an Out of the Box (OOTB) role. Instead just disable... Period. The reason is it can cause system instability when the only solution can be to start from scratch with a New Organization.</p>
                <p>CRM Roles and Business Units (BUs) are related but quite separate in concept. When designing security roles, there are two schools of thought - job function oriented and functional task oriented. Hybrid model is commonly seen as well.</p>
                <p>BU's don't normally equate to an Organization Chart in real life, and more often than you might realize.</p>
                <p>Considerations when designing BU's:</p>
                <ul>
                    <li>Security</li>
                    <li>Data ownership</li>
                    <li>Operations and collaborations</li>
                    <li>Business functions</li>
                    <li>Geographical locations</li>
                </ul>
                <p>In CRM 2011, two new features help in simplifying security design:</p>
                <ol>
                    <li>Multiple forms per entity can be assigned to different security roles</li>
                    <li>Field level security to add to the next level of security granularity</li>
                </ol>
      </li>

      <li>
            <h2><a name="ClientDemo"></a>Do you know the best way to demo Microsoft CRM to clients?</h2>
                <p>If in the office:</p>
                <ul>
                    <li>Option 1 is the Outlook Client - connect to the demo organization (you will need to deploy a demo org first).</li>
                    <li>Option 2 is the Web Browser - connect to the demo organization (you will need to deploy a demo org first).</li>
                </ul>
                <p><strong>Note:</strong> If not in the office (say at a client site) with an Internet connection, only demo with a strong Internet connection. eg. at least 1MB on speedtest.net</p>
                <p>Away from the office options:</p>
                <ul>
                    <li>Option 3 is Offline Outlook Client (but you cannot demonstrate all of the functionality such as Administration Settings)</li>
                    <li>Option 4 CRM Online Trial &#8211; Sign up for a free 30 day trial, this can be used to demo to the client and then (optionally) the client can continue to access the trial to further evaluate CRM. (recommended, except signing up for the trial is a little bit of pain)</li>
                </ul>
                <p>If there is no Internet connection then work offline:</p>
                <ul>
                    <li>* Option 5 is a Virtual Machine Self hosted (Win 8 + Hyper-V being the latest stack) &#8211; with internal network connection shared up between host and guest. Host IE10 and Outlook 2013 on Win 8 offer best user/demo experience.</li>
                </ul>
                <p>You should be able to show:</p>
                <ul>
                    <li>Accounts (aka Companies)</li>
                    <li>Contacts</li>
                    <li>Sales (aka Leads and Invoicing and Quoting)</li>
                    <li>Marketing (aka Campaigns)</li>
                    <li>Service (aka Support)</li>
                    <li>Mail Merge</li>
                </ul>
                <dl class="image">
                    <dt><img alt="" src="Images/CRMscreenshot.jpg" width="996" height="708" /></dt>
                    <dd>Figure: Outlook 2007 with the CRM plugin</dd>
                </dl>
                <dl class="image">
                    <dt><img alt="" src="Images/CRM-2013-screenshot.jpg" /></dt>
                    <dd>Figure: Outlook 2013 with the CRM plugin</dd>
                </dl>
      </li>
     
      <li>
            <h2><a name="OnlyOnePersonCustomize"></a>Customization - Do you have only one person making changes to your CRM customization?</h2>
            <p>Customizations cannot be undone and are cumulative, e.g: if you add an attribute on a form and deploy, there is no easy way to remove the attribute from the entity.
            <a href="/SSW/Standards/BetterSoftwareSuggestions/CRM.aspx#RemoveAttributeOnForm"> We have a suggestion to CRM on this issue.</a></p>
            <p>In order to remove the attribute, what you have to do:</p>
            <ol>
                <li>If attribute is not a required field then go to step 3.</li>
                <li>Set attribute to be not required field</li>
                <li>Save and publish the changes</li>
                <li>Remove attribute from the form</li>
                <li>Save and publish the changes</li>
                <li>Remove attribute from the entity</li>
                <li>Save and publish the changes</li>
            </ol>
            <p>Because of this reason, we have to take extra care in tracking and maintaining the CRM customization changes. So the solution:</p>
            <ol>
                <li>Make someone (that person is called CRM Champion) in charge of schema changes</li>
                <li>Define security roles so that only this person can make customization changes</li>
                <li>Everyone else has to send customization changes to the CRM Champion in development team</li>
            </ol>
      </li>

      <li>
            <h2><a name="ExportOnlyRelatedCustomizations"></a>Customization - Do you only export the customizations and related ones that you have made?
        </h2>
            <p>
          Sometimes less is better, CRM customizations are cumulative, this means that a customization
          that you import will override your existing schema. So if you're only working on
          for example Account entity, you should only export the Account entity's customization
          and any related entites in any new relationship that you have added to the schema.
          This avoids unexpected overriding existing entity's customization that potentially
          can break your CRM system.</p>
        <p>
          You could also export all the customizations and then just import the customization
          and the related ones that you have made changes. However this requires you taking
          an extra effort to take note of which customizations that you have made changes.</p>
      </li>
      <li>
        <h2>
          <a name="CustomizationBackupNaming"></a>Customization - Do you have a naming convention
          for your customization back up?</h2>
        <p>
          Keeping track of CRM customization changes is just as difficult as back-end database
          changes. We have a rule <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/DoYouStopDealingWithDataAndSchema.aspx">
            Is a Back-end structural change going to be a hassle?</a> which provide you an
          example how you should keep track of back-end changes. You can apply this rule to
          CRM changes and use a naming convention on each customization backup file to identify
          and keep track of your changes. Your customization file name should be: [IncrementalNumber]_[Entity]_[Date].zip,
          for example: 001_account_29042009.zip The file's name can tell you which entity
          you made changes and which date the changes were made. The incremental number will
          provides us step by step instruction on how to produce the current CRM system from
          a vanilla Microsoft Dynamics CRM.
        </p>
      </li>
      <li>
        <h2>
          <a name="SupportedCustomization"></a>Customization - Do you use a supported method
          of customization?</h2>
        <p>
          The Microsoft CRM customization tools make it no longer necessary for you to hack
          ie. write triggers, stored procedures and .aspx pages. In fact if you were to do
          any of these your CRM is unsupported. Changes will not be preserved in any upgrades
          or fixes and Microsoft will not attend to any of your support calls until you revert
          your CRM back to a supported state.
        </p>
        <p>
          The common ways to customize are:
          <ol>
            <li>Use the designer to add Entities and Forms (aka Tables and Forms)</li>
            <li>Write SQL Reporting Services Reports</li>
            <li>Write workflows with the CRM designer</li>
            <li>Write workflows with VS.NET and .NET 3.0 WF (new in CRM 4.0)</li>
            <li>Write callouts with VS.NET (the extension points made available)</li>
          </ol>
        </p>
        <p>
          The diagram below briefly outlines what are possible supported methods of customization.
          <dl class="image">
            <dt>
              <img src="Images/CRM_CustomizationArchitectrue.jpg" alt=" Microsoft CRM Customization Architecture "
                width="437" height="324"></dt>
            <dd>
              Figure: Microsoft CRM Customization Architecture
            </dd>
          </dl>
          Refer to P19 of the CRM Customization Manual Course 8525A for a more in depth discussion.<br />
          PS: For CRM 3.0 you can't find everything on the web - you will need the CRM Customization
          Manual Course 8525A - you have to buy it from Microsoft :-(
        </p>
      </li>
      <li>
        <h2>
          <a name="BackupXMLSchema"></a>Customization - Do you always make backup versions
          of the XML schema?</h2>
        <p>
          When the XML schema is published it re-generates the underlying SQL and .aspx code.
          If trouble hits, a "refresh" or "rollback" to an uncorrupted schema is always a
          backup plan. A versioning scheme is also required to keep track of different versions
          of the XML schema at different points in time. To make a backup of the schema from
          within Microsoft CRM navigate to Settings -&gt; Customization -&gt; Export Customizations.
          Browse to the location on your personal hard drive where the .XML file is to be
          stored.
        </p>
        <dl class="image">
          <dt>
            <img src="Images/CRM_CustomizationPane.jpg" alt="Microsoft CRM Customization Pane"
              width="442" height="365"></dt>
          <dd>
            Figure: Export customizations as backup
          </dd>
        </dl>
        <p>
          Tip #1: Export only the customizations of entities that you customize and keep each
          entity customizations in a separate file, see the rule:<a href="#ExportCustomize">Customization
            - Do you export only the customizations of entities that you did customize?</a><br />
          Tip #2: Put the date on the file names and while you are working you will be doing
          this multiple times a day.
          <br />
          Tip #3: don't save this on the Dev Virtual Machine.
        </p>
        <%--                <dl class="image">
                    <dt>
                        <img src="Images/CRM_ArchiveBackup.jpg" alt="Archive of backup CRM customizations"
                            width="497" height="161"></dt>
                    <dd>
                        Figure: Archive of backup CRM customizations
                    </dd>
                </dl>
        --%>
      </li>
      <li>
        <h2>
          <a name="Javascript"></a>Customization - Do you use the built-in test form events
          before you publish JavaScript changes?</h2>
        <p>
          Generally you will add Javascript to the form to give client side validation.
        </p>
        <p>
          Given JavaScript is difficult to debug and doesn't get precompiled this can save
          a lot of time rather than re-publishing all the form changes and having to reload
          and refresh the forms manually.<br />
          These events can be trigged using the Preview menu from the form customization environment.
        </p>
        <dl class="image">
          <dt>
            <img src="Images/CRM_TestForm.jpg" alt="Test your Javascript via the Preview menu in the Custom Forms Designer"
              width="497" height="390" /></dt>
          <dd>
            Figure: Test your Javascript via the Preview menu in the Custom Forms Designer
          </dd>
        </dl>
      </li>
      <li>
        <h2>
          <a name="RSVersion"></a>Customization - Do you know which version of SQL Reporting
          Services and Visual Studio you are using?</h2>
        <ul>
          <p>
            CRM 3.0 is in .NET 1.1 so it was designed to work with:</p>
          <li>SQL Server 2000 (even better to use 2005)</li>
          <li>Reporting Services 2000 (design reports in VS.NET 2003)</li>
          <li>Callouts in VS.NET 2003</li>
        </ul>
        <p>
          Tip #1: Do try to use SQL 2005 if available - it is marginally faster.<br />
          Tip #2: Don't try working in VS.NET 2005 - there are workarounds but they become
          very, very painful.<br />
          Tip #3: SQL Reporting Services and the .rdl files are not backward compatible -
          there is no hope of doing them in 2005 and back porting the RDL.
        </p>
      </li>
      <li>
        <h2>
          <a name="FilteredView"></a>Customization - Do you always use the filtered views
          when designing custom reports?</h2>
        <p>
          Directly querying the table bypasses the security and filtering of MSCRM as well
          as not being supported by Microsoft. This is not the correct method for reports
          to be written.
          <br />
          The correct filtered views can be found under the Views section of the CRM database
          and these are the Views that should always be used to design SQL Reporting Services
          reports.
        </p>
        <dl class="image">
          <dt>
            <img src="Images/CRM_FilteredView.jpg" alt="When developing reports don't go against the base tables - instead use the filtered views of Microsoft CRM 3.0"
              width="501" height="332" />
          </dt>
          <dd>
            Figure: When developing reports don't go against the base tables - instead use the
            filtered views of Microsoft CRM 3.0</dd>
        </dl>
      </li>
      <li><a name="CustomizationDoc"></a>
        <h2>
          Customization - Do you have your customizations documented?</h2>
        <p>
          You will want to have a list of all customizations - from Custom Entities to Callouts.
          You can export the customizations to an XML file - but that is not fun to read.
          There is no tool to document or any visual tool to look at - so the best thing is
          screen captures with circles highlighting the customized areas.
        </p>
      </li>
      <li>
        <h2>
          <a name="Prefix"></a>Customization - Do you set the schema-name prefix?</h2>
        <p>
          Note when you do a customization it gives it a prefix with the schema name - in
          our case SSW. With this prefix you can easily distinguish customized attributes
          from default attributes.
        </p>
        <dl class="image">
          <dt>
            <img src="Images/CRM_PrefixSetting.gif" alt="Set your schema-name prefix to use for custom entities and attributes"
              width="578" height="231" /></dt>
          <dd>
            Figure: Set your schema-name prefix to use for custom entities and attributes</dd>
        </dl>
        <dl class="image">
          <dt>
            <img src="Images/CRM_Prefix.gif" alt="customized attributes with the prefix" width="351"
              height="248" /></dt>
          <dd>
            Figure: customized attributes with the prefix</dd>
        </dl>
      </li>
      <li>
        <h2>
          <a name="EmailAddress"></a>Customization - Do you have email address in the Associated
          Contact View?</h2>
        <p>
          In default view for Associated Contact you cannot see the email address, it would
          be better to customize it as an extra column.
        </p>
        <dl class="badImage">
          <dt>
            <img alt="Associated Contact View without the email address src="Images/ContactView_NoEmail.gif" />
          </dt>
          <dd>
            Figure: Associated Contact View without the email address</dd>
        </dl>
        <dl class="goodImage">
          <dt>
            <img alt="Associated Contact View with the email address" src="Images/ContactView_Email.gif" /></dt>
          <dd>
            Figure: Associated Contact View with the email address</dd>
        </dl>
        <p>
          It is easy to do this by import the <a href="/ssw/Standards/BetterSoftwareSuggestions/CRM.aspx#Customizations">
            customisations xml files</a>.
        </p>
      </li>
      <li>
        <h2>
          <a name="ChangeLogo"></a>Customization - Do you know how to change default CRM logo?</h2>
        <p>
          The name of default crm logo is 'masthead.jpg' which is located under directory
          '_imgs' of the crm web folder. Rename this file to, say, masthead_backup.jpg and
          put your company logo and name it as ''masthead.jpg'. Done!
        </p>
        <dl class="goodImage">
          <dt>
            <img alt="Change CRM company Logo" width="503" height="269" src="Images/CRM_ChangeLogo.gif" />
          </dt>
          <dd>
            Figure: Change CRM company logo</dd>
        </dl>
      </li>
      <li>
        <h2>
          <a name="ExportCustomize"></a>Customization - Do you export only the customizations of entities that you did customize?
        </h2>
        <p>
          Export each single entity customization and keep each entity customization in a
          separate file, like:
        </p>
        <ul>
          <li>Account_11022009.xml </li>
          <li>Contact_11022009.xml </li>
        </ul>
        <p>
          This way, if an entity is changed or broken on the Live environment, you can re-import
          the customization for this entity again, without breaking other entities on live
          environment.
        </p>
        <p>
          Instead of exporting each single entity, you can also export only your customized
          entities in 1 step, and afterwards select what entities to import
        </p>
        <dl class="image">
          <dt>
            <img alt="Import single customization" src="Images/CRM_CUS_01.JPG" />
          </dt>
          <dd>
            Figure: You can select the single customization to import
          </dd>
        </dl>
      </li>
      
      <li>
        <h2>
          <a name="LegacyData"></a>Data Migration - Do you prioritize the data that is to be imported?</h2>
        <p>
          Step 1 - What data?
        </p>
        <ol>
          <li>Don't take all the data for the first release - Usually there are huge amounts
            of data in legacy systems - take only the most important firstly.</li>
          <li>Using the planning spreadsheets included with the <a href="/ssw/Redirect/Microsoft/CRMDataMigrationPack.htm">
            Microsoft CRM Data Migration Pack</a> - they are excellent for specifying data migration
            field mappings.</li>
        </ol>
        Step 2 - Sync or import?
        <ol>
          <li>Syncing and keeping the old system live is the preferred option</li>
          <li>Consider writing .NET callouts - or consider Scribe Insight</li>
        </ol>
      </li>
     
     
      <li>
        <h2>
          <a name="UseCheckBox"></a>Form Design - Do you change contact method options from default option group to checkboxes?</h2>
        <dl class="badImage">
          <dt>
            <img src="Images/CRMContactMethods.gif" alt="CRM contact methods" /></dt>
          <dd>
            Figure: Bad Example - By default CRM uses option group for contact's and account's
            contact methods.</dd>
        </dl>
        <p>
          As per our rule <a href="/SSW/standards/rules/RulesToBetterInterfacesEdit.aspx#UseCheckBox">
            Do you know when to use CheckBox?</a>. Checkboxes should be used instead of the
          option group since the answer is a boolean type. You can change the option group
          to checkboxes by:
        </p>
        <ol>
          <li>From CRM, go to Settings | Customizations | Customize Entities</li>
          <li>Double-Click "Contact" entity</li>
          <li>Click "Form and Views"</li>
          <li>Double-Click "Form" to edit contact form</li>
          <li>Click "Administration" tab</li>
          <li>Select a contact method field, i.e. Email</li>
          <li>Click "Change Properties"
            <dl class="image">
              <dt>
                <img src="Images/CRMChangeContactMethodsFieldProperties.gif" alt="CRM contact methods form design" /></dt>
              <dd>
                Figure: Select and change the email field's properties.</dd>
            </dl>
          </li>
          <li>Click "Formatting" tab</li>
          <li>Change layout from "Two Columns" to "One Column" and select "Check box" as control
            formatting</li>
          <dl class="image">
            <dt>
              <img src="Images/CRMEmailFieldProperties.gif" alt="CRM email field properties"></dt>
            <dd>
              Figure: Change layout and control formatting of email field to one column type and
              check box.</dd>
          </dl>
          <li>Repeat steps 6-9 for other contact method</li>
          <li>Repeat steps 3-9 for account entity</li>
        </ol>
        <dl class="goodImage">
          <dt>
            <img src="Images/CRMContactMethodsWithCheckboxes.gif" alt="CRM contact methods with checkboxes" /></dt>
          <dd>
            Figure: Good example - Checkboxes are used for contact methods because they're clear
            and simple.</dd>
        </dl>
      </li>
      
      <li>
        <h2>
          <a name="Environment"></a>Do you identify Development, Test and Production CRM Web
          Servers by colors?
        </h2>
        <p>
          As per rule <a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/SeparateDevelopmentTestingAndProductionEnvironment.aspx">
            "Do you have separate development, testing and production environment?"</a>, it's
          better to use different background colors to identify Development, Test and Production
          servers. The way to change the default background color is to edit the global.css.aspx
          file:
        </p>
        <pre>
	        body.stage
            {
                &lt;% if (CrmStyles.IsRightToLeft) { %&gt;
                    dir:rtl;
                &lt;%} %&gt;
                border-top:1px solid #6893cf;
                <span style="background-color: #ffff00">/* background-color: #d6e8ff; */</span>
                <span style="background-color: #ffff00">background-color: #ffff00;</span>
                <span style="background-color: #ffff00">padding: 4px;</span>
                <span style="background-color: #ffff00">/* background-repeat: repeat-x;</span>
                <span style="background-color: #ffff00">background-image: url(/_imgs/app_back.gif);
                  */</span>
            }
	      </pre>
        <dd>
          Figure: In C:\Inetpub\wwwroot\_common\styles\global.css.aspx comment out and change
          the reference in yellow so the users know what server they are on
        </dd>
        <dl class="image">
          <dt>
            <img src="Images/CRM_DevelopmentColor.gif" alt="Color of CRM Development Server" /></dt>
          <dd>
            Figure: Color of CRM Development Server - Red</dd>
        </dl>
        <dl class="image">
          <dt>
            <img src="Images/CRM_TestColor.gif" alt="Color of CRM Test Server" /></dt>
          <dd>
            Figure: Color of CRM Test Server - Yellow</dd>
        </dl>
        <dl class="image">
          <dt>
            <img src="Images/CRM_ProductionColor.gif" alt="Color of CRM Test Server" /></dt>
          <dd>
            Figure: Color of CRM Production Server - Default</dd>
        </dl>
      </li>
      <li>
        <h2>
          <a name="DeploymentBat"></a>Do you make batch files for deployment to Test and Production servers?</h2>
        <p>
          The goal is that I don't want CRM developers to move from Dev to Test and to Production
          manually. Basically I don't want a developer to touch Test or Production servers.
          The testers can run the .bat file. <a href="/ssw/Standards/Rules/RulesToBetterSetups.aspx">
            See SSW rules to setup packages</a>
        </p>
        <p>
          How developers should work?
        </p>
        <ul>
          <li>All development done in a Virtual Server</li>
          <li>Use TFS and VS.NET 2003 (since working with VS.NET 2003 you need to TFS adapter
            for 2003)</li>
          <li>Backup your customizations.xml</li>
          <li>Put into TFS (see rule: <a href="#PutIntoSC">Do you put your exported customizations
            and your plug-in customization under source-control during deployment?</a>) - check
            it in and replace the file (avoid it customizing workflow in 3.0 because it deploys
            better in 4.0 - but if you do then you need to backup your workflow changes also)</li>
        </ul>
        <p>
          Create a Deployment.bat like this</p>
        <pre>
	        REM (deploy the callouts - Part 1)

            REM	(restart IIS of CRM TEST Server - BASILISK)
            iisreset BASILISK

            REM	(copy callouts dlls onto CRM TEST Server - BASILISK)
            copy Microsoft.Crm.Platform.Callout.Base.dll "\\BASILISK\C$\Program Files\Microsoft CRM\Server\bin\assembly"            
            copy SSW.TimeProIntegrationCallouts.dll "\\BASILISK\C$\Program Files\Microsoft CRM\Server\bin\assembly"            
            copy callout.config.xml "\\BASILISK\C$\Program Files\Microsoft CRM\Server\bin\assembly" 
            
            REM (deploy the callouts - part 2)
            REM Stop the WorkFlow Service (as we need to remove the lock on the .dlls)
            REM Start it 
            REM (avoid workflow in v3 - see comment above C but if you do you need to)
            REM Manual - use Import wizard
            REM (avoid server side validation logic in v3)
            REM  Deploy a 1.1 web service
	        </pre>
        <p>
          Deploy to Test Server
          <ul>
            <li>Import the customizations.xml</li>
            <li>Run .bat file</li>
          </ul>
        </p>
        <p>
          Deploy to Production Server
        </p>
        <ul>
          <li>Import the customizations.xml</li>
          <li>Run .bat file</li>
        </ul>
      </li>

      <li><a name="Contact"></a>
        <h2>
          Customization - Do you enable your contacts to have more than the default 3 email addresses and phone numbers?</h2>
        <p>
          Out of the box CRM4 only enables a contact to have 3 phone numbers (home, business
          and mobile) + 3 email addresses (but only one visible). A customization that almost
          everyone needs is to remove this limitation (to allow contacts to have an unlimited
          amount of phone numbers and email addresses).
        </p>
        <dl class="badImage">
          <dt>
            <img border="0" src="Images/contact1.gif" alt="" />
          </dt>
          <dd>
            <b>Figure: Bad example - Out of the box a contact can only have 3 phone numbers and
              1 email address </b>
          </dd>
        </dl>
        <p>
          There are a few customizations needed to get the SSW Contact Makeover:
        </p>
        <ul>
          <li>Show some hidden fields </li>
          <li>Make some form changes to move to a new tab </li>
          <li>Make a CRM frame (to add in a subform) </li>
          <li>Add some entities </li>
          <li>Add some form java script to hide the core Contact Details? tab when a user is
            entering a new contact </li>
        </ul>
        <p>
          &nbsp;</p>
        <dl class="goodImage">
          <dt>
            <img border="0" src="Images/contact3.gif" alt="" />
          </dt>
          <dd>
            <b>Figure: Good example - Enable the hidden fields and move it to a new tab. And now
              a Contact has 3 email addresses and phone numbers </b>
          </dd>
        </dl>
        <dl class="goodImage">
          <dt>
            <img border="0" src="Images/contact2.gif" alt="" />
          </dt>
          <dd>
            <b>Figure: Good example - After adding an entity, you add a frame show the unlimited
              contact details (phone, fax, email etc) </b>
          </dd>
        </dl>
        <p>
          <span>Q: So what is the end result? </span>
          <br />
          <span>A: The end user experience to add a phone number is .. </span>
          <br />
        </p>
        <dl class="image">
          <dt>
            <img border="0" src="Images/contact4.gif" alt="" />
          </dt>
          <dd>
            <b>Figure:&nbsp; Step 1: Double-click the contact (or right-click the contact and
              select Open) Open</b>
          </dd>
        </dl>
        <br />
        <dl>
          <dt>
            <img border="0" src="Images/contact5.gif" />
          </dt>
          <dd>
            <b>Figure:&nbsp; Step 2: Select the tab 'More Contact Details' </b>
          </dd>
        </dl>
        <br />
        <dl>
          <dt>
            <img border="0" src="Images/contact6.gif" />
          </dt>
          <dd>
            <b>Figure:&nbsp; Step 3: Click the button 'New Contact Detail' </b>
          </dd>
        </dl>
        <br />
        <dl>
          <dt>
            <img border="0" src="Images/contact7.gif" />
          </dt>
          <dd>
            <b>Figure:&nbsp; Step 4: Enter the details and click button 'Save and Close' (top
              left) </b>
          </dd>
        </dl>
      </li>
     
     
     
    
      <li>
        <h2>
          <a name="PutIntoSC"></a>Do you put your exported customizations and your plug-in
          customization under source-control during deployment?
        </h2>
        <p>
          If you export your customizations from your CRM Development server, put them under
          TFS source-control, so that TFS is your central repository for everything, and you
          have all the advantages of a source control system.
        </p>
      </li>
      <li>
        <h2>
          <a name="PluginToolForExport"></a>Do you export your configuration on deployment
          using the CRM Plug-in Registration Tool?
        </h2>
        <p>
          Instead of configuring your plug-in manually in the registration tool, export all
          settings and import them on the other server.
        </p>
        <p>
          <a href="#PutIntoSC">Make sure you put your plug-in customization file under source
            control</a>
        </p>
      </li>
      <li>
        <h2>
          <a name="AvoidOnTestServer"></a>Do you avoid doing small bug fixes on your test-server?
        </h2>
        <p>
          Don't make any changes to the test server, it can break your deployment process
          of your plug-in.
        </p>
        <p>
          Develop only on your development server.
        </p>
      </li>


    </ol>
    <h2>
      Acknowledgements</h2>
    <p>
      <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=ZV">Zune Vien</a>
      <br />
      <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
      <br />
      <a href="/people/alumni/peter-gfader">Peter Gfader</a>
    </p>
  </div>
</asp:Content>
