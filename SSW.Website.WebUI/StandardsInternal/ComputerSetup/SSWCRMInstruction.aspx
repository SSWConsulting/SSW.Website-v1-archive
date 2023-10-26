<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
  Title="SSW CRM Setup And Information" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
  <p>
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
    </asp:SiteMapPath>
  </p>
  <h1>
    SSW CRM Setup And Information</h1>
  <p>
    This standard is provided to give you information related to your CRM account and
    settings.</p>
  <div class="TableOfContents">
    <h3>
      SSW CRM Setup And Information</h3>
    <ol>
      <li><a href="#UninstallCRM4">Uninstall existing CRM 4.0 Outlook client (if required)</a></li>
      <li><a href="#OutlookCRM">How to Install CRM 2011 for Outlook Client</a></li>
      <li><a href="#CRM2011Troubleshooting">(If Required) Troubleshooting: After installation Outlook may lose the Search Ribbon</a></li>
      <li><a href="#PersonalSettingsOutlookCRM">How to configure your Outlook CRM personal
        options</a></li>
      <li><a href="#RecordSalesOpportunity">How to record a sales opportunity</a></li>
      <li><a href="#RecordProjectedIncome">How to record monthly projected income</a></li>
      <li><a href="#TrackInCRM">How to Track Contact, Email, Task, etc.. from Outlook in
        CRM</a></li>
      <li><a href="#SendingOutstandingInvoiceReminder">How to send outstanding invoice reminder</a></li>
    </ol>
  </div>
  <div id="mainContent">
    <ol>
      <li>
        <h2>
          <a name="UninstallCRM4"></a>Uninstall existing CRM 4.0 Outlook client (if required)</h2>
        <p>
          Close Outlook if you have it open</p>
        <dl class="image">
          <dt>
            <img src="Images/UninstallCRM4.png" alt="Program and features" />
          </dt>
          <dd>
            Figure: Open Control Panel | Program and features | Uninstall Crm 4.0 for Microsoft
            office Outlook
          </dd>
        </dl>
      </li>
      <li>
        <h2>
          <a name="OutlookCRM"></a>How to Install CRM 2011 for Outlook Client</h2>
        <ol>
          <li>Close outlook if you have it open.</li>
          <li>Install CRM client for Outlook from: 
              <ol>
                  <li><a href="file://fileserver/SetupFiles/SetupMS/SetupProgram/MSCRM2011Outlook/CRM2011-Client-ENU-i386.exe">FileServer</a> (32 Bit Office)&nbsp; OR</li>
                  <li><a href="file://fileserver/SetupFiles/SetupMS/SetupProgram/MSCRM2011Outlook/CRM2011-Client-ENU-amd64.exe">FileServer</a> (64 Bit Office)<br />
&nbsp;</li><dl class="image">
                          <dt>
                              <img src="Images/CRM011_Install1.png" alt="License agreement for CRM 2011 for outlook" /> </dt>
                          <dd>Figure: Accept the Agreement and then click Next
            </dd>
                      </dl>
                      <dl class="image">
                          <dt>
                              <img src="Images/CRM011_Install2.png" alt="Select the installation" /> </dt>
                          <dd>Figure: Click on Install Now Button
            </dd>
                      </dl>
                      <dl class="image">
                          <dt>
                              <img src="Images/CRM011_Install3.png" alt="Configure Organization" /> </dt>
                          <dd>Figure: Replace the server url with: https://ssw.crm.ssw.com.au</dd>
                      </dl>
              </ol>
        </ol>
        <p>CRM should now be configured to work with Outlook.</p>
          <p>Important: Once the Outlook CRM Plugin is installed, *make sure* you update to the latest CRM Rollup client that is on Fileserver (don't install latest from MS as SSW may not be on that version)<br />
              To install the latest CRM Rollup used by SSW goto: <strong>\\fileserver\SetupFiles\SetupMS\SetupProgram\MSCRM2011Outlook\ </strong>and install the latest Rollup ie Rollup 15. If you have 32 Bit Office&nbsp; install the file ending in <strong>i386</strong>, if you have 64 Bit Office install the file ending in <strong>amd64</strong>.</p>
      </li>
      <li>
        <h2><a name="CRM2011Troubleshooting"></a>(If Required) Troubleshooting: After installation Outlook may lose the Search Ribbonh2>
        <dl class="image">
          <dt>
            <img src="Images/CRM2011SearchRibbon.png" alt="Outlook Search ribbon" />
          </dt>
          <dd>Figure: Outlook 2010 Search ribbon</dd>
        </dl>
        <ol>
          <li>Close Outlook 2010</li>
          <li>Click on Start Button | Run | Type in regedit</li>
          <li>Navigate to HKEY_CLASSES_ROOT\TypeLib\{2DF8D04C-5BFA-101B-BDE5-00AA0044DE52} </li>
          <li>Right click on the 2.4 regkey and choose Export.  Save this export to your desktop for now so we have a backup.</li>
          <li>Now once that is backed up right click on the 2.4 regkey and choose delete.</li>
          <li>Launch Outlook</li>
        </ol>
        <p>Your Outlook ribbon should now be back</p>
        <dl class="image">
          <dt><img src="Images/CRM2011SearchRibbon.png" alt="Restored Outlook Search ribbon" /></dt>
          <dd>Figure: Restored Outlook 2010 Search ribbon </dd>
        </dl>
      </li>
      <li>
        <h2>
          <a name="PersonalSettingsOutlookCRM"></a>How to configure your Outlook CRM personal
          options</h2>
        <p>
          <dl class="image">
            <dt>
              <img border="0" src="Images/OutlookCRMOptions.gif" alt="Outlook CRM Options" /></dt><dd>
                Figure: From Outlook Home Tabe, go to CRM | More | Options.</dd></dl>
          <dl class="image">
            <dt>
              <img border="0" src="Images/CRMSynchronizationOptions.gif" alt="CRM Synchronization Options" /></dt><dd>
                Figure: On &#8220;Synchronization?tab, ensure you have the above checkboxes checked.</dd></dl>
          <dl class="image">
            <dt>
              <img border="0" src="Images/CRMEmailOptions.gif" alt="CRM Email Options" /></dt><dd>
                Figure: On &#8220;Email?tab, ensure you have the above options.</dd></dl>
        </p>
      </li>
      <li><a name="RecordSalesOpportunity"></a>
              <p>This page has moved to <a href="http://sugarlearning.com/Item/9410" target="_blank">http://sugarlearning.com/Item/9410</a></p>
    <div style="text-decoration: line-through;">
        <h2>
          How to record a sales opportunity</h2>
        <p>
          <dl class="image">
            <dt>
              <img border="0" src="Images/CRMNewOpportunity.gif" alt="Create New Opportunity" /></dt><dd>
                Figure: Go to Microsoft Dynamics CRM | Sales | Opportunities | New.</dd></dl>
          <dl class="image">
            <dt>
              <img border="0" src="Images/CRMOpportunityNaming.gif" alt="Naming Opportunity" /></dt><dd>
                Figure: This allows better understanding of opprotunity when look at opportunity
                list.</dd></dl>
          <dl class="image">
            <dt>
              <img border="0" src="Images/CRMOpportunityCustomer.gif" alt="Set Potental Customer for Opportunity" /></dt><dd>
                Figure: Setting potential customer of an opportunity to a company instead of contact
                will avoid problem when the contact moves to another company.</dd></dl>
          <dl class="image">
            <dt>
              <img border="0" src="Images/CRMOpportunityRevenue.gif" alt="Set Revenue for Opportunity" /></dt><dd>
                Figure: Recording revenue in the right field allows us to give a better report on
                our sales pipeline.</dd></dl>
          <dl class="image">
            <dt>
              <img border="0" src="Images/CRMOpportunitySalesStage.gif" alt="Set Sales Stage for Opportunity" /></dt><dd>
                Figure: This allows us reporting on our oppotunities base on sales stage and work
                out what to do next.</dd></dl>
        </p>
        <p>
          After creating opportunities you will need:
          <ul>
            <li>Keep Sales Stage up to date.</li>
            <li>Close Opportunity whenever we win or lose the opportunity. Closing opportunity
              is important because if the opportunity is won, it will create a Project record
              in CRM. This allows Project Manager to record montly projected income.</li>
          </ul>
        </p>
        </div>
      </li>
      <li><a name="RecordProjectedIncome"></a>
              <p>This page has moved to <a href="http://sugarlearning.com/Item/9384" target="_blank">http://sugarlearning.com/Item/9384</a></p>
    <div style="text-decoration: line-through;">
        <h2>
          How to record monthly projected income</h2>
        <p>
          When an Account Manager close the sales opportunity and set status to "Won". A project
          will be created in CRM, for Project Manager to update the projected income.
          <dl class="image">
            <dt>
              <img border="0" src="Images/CRMCompanyAccount.gif" alt="Search for Company/Account" /></dt><dd>
                Figure: Go to Microsoft Dynamics CRM | Companies/Accounts | Search for the company
                of the project you want to record.</dd></dl>
          <dl class="image">
            <dt>
              <img border="0" src="Images/CRMProject.gif" alt="Open the Project" /></dt><dd>
                Figure: Open the company/account record | Click "Projects" | Open up the project
                that you want to record projected income.</dd></dl>
          <dl class="image">
            <dt>
              <img border="0" src="Images/CRMProjectForm.gif" alt="Open the Project" /></dt><dd>
                Figure: Because Project record is created automatically, there are some information
                that are populated by default value. You will need to update the project information
                with correct information.</dd></dl>
          <dl class="image">
            <dt>
              <img border="0" src="Images/CRMProjectedIncomes.gif" alt="Projected Incomes" /></dt><dd>
                Figure: Go to Projected Incomes | New to add a new projected income.</dd></dl>
          <dl class="image">
            <dt>
              <img border="0" src="Images/CRMProjectedIncomeName.gif" alt="Projected Income Name" /></dt><dd>
                Figure: CRM requires every record to have a name, so you have to specifies a name
                for your projected income record.</dd></dl>
          <dl class="image">
            <dt>
              <img border="0" src="Images/CRMProjectedIncomeMonth.gif" alt="Projected Income Month" /></dt><dd>
                Figure: CRM does not allow us to record month and year only, so you have to specifies
                the full date. However this field will always be converted to the first day of the
                month of whichever month you have selected.</dd></dl>
          <dl class="image">
            <dt>
              <img border="0" src="Images/CRMProjectedIncomeIncome.gif" alt="Projected Income" /></dt><dd>
                Figure: Specifies the estimated income for that month.</dd></dl>
        </p>
        <p>
          <b>Note:</b> Project Manager please update the income value every Monday of the
          week so we can have the most up to date and accurate projected income.
        </p>
              </div>
      </li>
      <li><a name="TrackInCRM"></a>
        <h2>
          How to Track Contact, Email, Task, etc.. from Outlook in CRM</h2>
        <p>
          To track a contact, email, task, etc.. from Outlook in CRM, you need to:
          <ol>
            <li>Open the record in outlook</li>
            <li>Hit "Track In CRM" button in Outlook toolbar
              <dl class="image">
                <dt>
                  <img border="0" src="Images/TrackInCRM.gif" alt="Track In CRM" width="743" height="623" /></dt><dd>
                    Figure: Tracking an outlook contact in CRM</dd></dl>
            </li>
          </ol>
        </p>
        <p>
          Only track activities as per rule <a href="/SSW/Standards/Rules/Rulestobettermicrosoftcrm.aspx#WhenToTrackActivity">
            Sales - Do you know when to track activities in CRM?</a> to avoid CRM becoming
          a spam place of all activities.
        </p>
        <p>
          When tracking a contact in CRM, company field in outlook does not sync with CRM.
          You need to click on "Set Parent" and choose approritate company in CRM:
          <dl class="image">
            <dt>
              <img border="0" src="Images/OutlookCRMSetParentCompany.gif" alt="Set Parent Company"
                width="743" height="623" /></dt><dd>
                  Figure: Set Parent Company for Outlook Contact</dd></dl>
        </p>
        <p>
          Any contact without a company/account will automatacally go to account name "Outlook
          contacts - Please set parent company" in CRM.
          <dl class="image">
            <dt>
              <img border="0" src="Images/OutlookCRMContactWithoutCompany.gif" alt="Outlook Contact without Parent Company"
                width="805" height="365" /></dt><dd>
                  Figure: Outlook Contact without Parent Company</dd></dl>
        </p>
      </li>
      <li><a name="SendingOutstandingInvoiceReminder"></a>
        <h2>
          How to send outstanding invoice reminder</h2>
        <ol>
          <li>Create a new email, fill in necessary fields and save it as a draft email. You
            will use this email as your template.</li>
          <li>CRM uses your subject line to save the record in correct category in TimePRO.
            It's important that your subject must start with one of the following:
            <ul>
              <li>Outstanding Account with SSW - First Reminder</li>
              <li>Outstanding Account with SSW - Second Reminder</li>
              <li>Outstanding Account with SSW - Third Reminder</li>
              <li>Outstanding Account with SSW - Fourth Reminder</li>
              <li>Outstanding Account with SSW - Legal</li>
            </ul>
          </li>
          <dl class="image">
            <dt>
              <img border="0" src="Images/OutstantindInvoiceEmailTemplate.gif" alt="Email template for first outstanding invoice reminder" /></dt><dd>
                Figure: Example of outstanding invoice first reminder</dd></dl>
          <li>Go to draft folder in your outlook and make a copy of the email you just created.
            Each time you want to send an email, you will need to make a copy so that you don't
            loose the template.
            <dl class="image">
              <dt>
                <img border="0" src="Images/CopyOfDraftEmail.gif" alt="Copy of email template in draft folder" /></dt><dd>
                  Figure: Highlight the email you want to copy, hit CTRL + C then CTRL + V</dd></dl>
          </li>
          <li>Go to <a href="/timePROOnline/invoice/invoiceOutstanding.aspx">TimePRO Online
            Oustanding Invoice</a> page </li>
          <li>Click "Preview" button on the row of the client that you want to send the email
            to. This will open up the oustanding invoice details.</li>
          <dl class="image">
            <dt>
              <img border="0" src="Images/ClientOutstandingInvoiceList.gif" alt="Client outstanding invoice list" /></dt><dd>
                Figure: Click on preview button to open up the details</dd></dl>
          <dl class="image">
            <dt>
              <img border="0" src="Images/ClientOutstandingInvoiceDetails.gif" alt="Client outstanding invoice details" /></dt><dd>
                Figure: Client oustanding invoice details</dd></dl>
          <li>Open up your copy of draft email in your outlook.</li>
          <li>Copy the details such as the contact's email address, invoice details, etc. from
            TimePRO online to your outlook draft email.</li>
          <dl class="image">
            <dt>
              <img border="0" src="Images/SamepleOustandingInvoiceEmail.gif" alt="Sample outstanding invoice email with TimePRO details" /></dt><dd>
                Figure: Sample outstanding invoice email with TimePRO details</dd></dl>
          <li>From Outlook email, hit "Track In CRM" button.</li>
          <dl class="image">
            <dt>
              <img border="0" src="Images/TrackOutstandingInvoiceInCRM.gif" alt="Track Outstanding Invoice email in CRM" /></dt><dd>
                Figure: Track Outstanding Invoice email in CRM</dd></dl>
          <li>From Outlook email, hit "Set Regarding" button and select "More".</li>
          <dl class="image">
            <dt>
              <img border="0" src="Images/SetRegardingOutstandingInvoiceEmail.gif" alt="Set regarding for outstanding invoice email" /></dt><dd>
                Figure: Set regarding for outstanding invoice email</dd></dl>
          <li>Search for the client account that you want to send invoice email to, then click
            "Ok".</li>
          <dl class="image">
            <dt>
              <img border="0" src="Images/ClientWithOutstandingInvoice.gif" alt="Select the client to set regarding" /></dt><dd>
                Figure: Select the client to set regarding</dd></dl>
          <li>Send your outstanding invoice email from outlook.</li>
        </ol>
      </li>
    </ol>
  </div>
  <h2>
    Acknowledgements</h2>
  <p>
    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=ZV">Zune Vien</a>
    <br>
  </p>
  </div>
</asp:Content>
