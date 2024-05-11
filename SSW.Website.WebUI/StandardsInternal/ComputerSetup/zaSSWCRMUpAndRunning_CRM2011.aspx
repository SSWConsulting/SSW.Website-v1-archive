<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="SSW CRM 2011 Up and Running" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <h1>
        SSW CRM 2011 Up and Running</h1>
    <div>
        <div style="display: inline; float: left;">
            <p>
                This standard is provided to give you information related to your CRM account and
                settings.</p>
            <div class="TableOfContents">
                <h3>
                    SSW CRM Setup And Information</h3>
                <ol>
                    <li><a href="#UninstallCRM4">Uninstall existing CRM 4.0 Outlook client (if required)</a></li>
                    <li><a href="#OutlookCRM">How to Install CRM 2011 for Outlook Client</a></li>
                    <li><a href="#CRM2011TroubleshootingCplusplus">(If Required) Troubleshooting: Installation failed due to newer version of c++</a></li>
                    <li><a href="#CRM2011Troubleshooting">(If Required) Troubleshooting: After installation
                        Outlook may lose the Search Ribbon</a></li>                    
                    <li><a href="#PersonalSettingsOutlookCRM">How to configure your Outlook CRM personal
                        options</a></li>
                    <li><a href="#RecordSalesOpportunity">How to record a sales opportunity</a></li>
                    <!--  commented out - Approved by Uly & Marlon <li><a href="#RecordProjectedIncome">How to record monthly projected income</a></li>  -->
                    <li><a href="#TrackInCRM">How to Track Contact, Email, Task, etc.. from Outlook in CRM</a></li>
                    <li><a href="#SendingOutstandingInvoiceReminder">How to send outstanding invoice reminder</a></li>
                </ol>
            </div>
        </div>
        <div class="floatRight" style="display: inline; float: right;">
            <div class="greyBox">
                <img src="Images/reciprocal_link.jpg" alt="Alternative link" width="50" height="50"
                    style="display: inline; vertical-align: top;" />
                <div style="display: inline; vertical-align: top;">
                    <span style="text-align: left; display: inline-block; vertical-align: middle; width: 300px;">
                        If you are still running old CRM 4
                        <br />
                        <s>Please see <a href="/ssw/StandardsInternal/ComputerSetup/SSWCRMUpAndRunning_CRM4.aspx">
                            SSW CRM 4 up and running</a></s></span>
                </div>
            </div>
        </div>
    </div>
    <!-- 10 <br/> is deleted-->
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
                    <li>Install CRM client for Outlook from: <a href="file://fileserver/SetupFiles/SetupMS/SetupProgram/MSCRM2011Outlook/CRM2011-Client-ENU-i386.exe">
                        FileServer</a> </li>
                    <dl class="image">
                        <dt>
                            <img src="Images/CRM011_Install1.png" alt="License agreement for CRM 2011 for outlook" />
                        </dt>
                        <dd>
                            Figure: Accept the Agreement and then click Next
                        </dd>
                    </dl>
                    <dl class="image">
                        <dt>
                            <img src="Images/CRM011_Install2.png" alt="Select the installation" />
                        </dt>
                        <dd>
                            Figure: Click on Install Now Button
                        </dd>
                    </dl>
                    <dl class="image">
                        <dt>
                            <img src="Images/CRM011_Install3.png" alt="Configure Organization" />
                        </dt>
                        <dd>
                            Figure: Replace the server url with correct address. Example: crm.northwind.com</dd>
                    </dl>
                </ol>
                <p>
                    CRM should now be configured to work with Outlook.</p>
            </li>
            <li>
                <h2><a name="CRM2011TroubleshootingCplusplus"></a>(If Required) Troubleshooting: Installation failed due to newer version of c++</h2>
                If installation failed then open the log file. 
                <ol>
                    <li>Then Check for following line: Installation of Microsoft Visual C++ Runtime failed. Exit code: 5100. Result: Asia</li>
                    <li>If you found above line, then go to Control Panel | Program and Features | Uninstall the program outline in following screenshot </li>
                </ol>
                <dl class="image">
                    <dt>
                        <img src="Images/CRM2011cplus_issue.png" alt="Uninstall Microsoft Visual c++ 2010 x86 Redistributable - 10.0.40219" /></dt>
                    <dd>
                        Figure: Uninstall Microsoft Visual c++ 2010 x86 Redistributable - 10.0.40219
                    </dd>
                </dl>
                <p> Now restart CRM 2011 for Outlook setup. 
                </p>
            </li>
            <li>
                <h2>
                    <a name="CRM2011Troubleshooting"></a>(If Required) Troubleshooting: After installation
                    Outlook may lose the Search Ribbon</h2>
                <dl class="image">
                    <dt>
                        <img src="Images/CRM2011SearchRibbon.png" alt="Outlook Search ribbon" />
                    </dt>
                    <dd>
                        Figure: Outlook 2010 Search ribbon</dd>
                </dl>
                <ol>
                    <li>Close Outlook 2010</li>
                    <li>Click on Start Button | Run | Type in regedit</li>
                    <li>Navigate to HKEY_CLASSES_ROOT\TypeLib\{2DF8D04C-5BFA-101B-BDE5-00AA0044DE52}
                    </li>
                    <li>Right click on the 2.4 regkey and choose Export. Save this export to your desktop
                        for now so we have a backup.</li>
                    <li>Now once that is backed up right click on the 2.4 regkey and choose delete.</li>
                    <li>Launch Outlook</li>
                </ol>
                <p>
                    Your Outlook ribbon should now be back</p>
                <dl class="image">
                    <dt>
                        <img src="Images/CRM2011SearchRibbon.png" alt="Restored Outlook Search ribbon" /></dt>
                    <dd>
                        Figure: Restored Outlook 2010 Search ribbon
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="PersonalSettingsOutlookCRM"></a>How to configure your Outlook CRM personal
                    options</h2>
                <p>
                </p>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/OutlookCRM2011Options.png" alt="Outlook CRM Options" /></dt><dd>
                            Figure: Go to Outlook main Window | File Tab | CRM | Set Personal options
                        </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/CRM2011SynchronizationOptions.png" alt="CRM Synchronization Options" /></dt><dd>
                            Figure: Synchronization tab within 'Set Personal Options' window</dd></dl>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/CRM2011EmailOptions.png" alt="CRM Email Options" /></dt><dd>
                            Figure: Configure your email tab according to above Screenshot</dd></dl>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/CRM2011OutlookFilter.png" alt="CRM Email Options" />
                    </dt>
                    <dd>
                        Figure: Configure your Outlook CRM filter
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="RecordSalesOpportunity"></a>How to record a sales opportunity</h2>
                <p>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/CRM2011NewOpportunity.png" alt="Create New Opportunity" /></dt><dd>
                                Figure: Go to Microsoft Dynamics CRM | Sales | Opportunities | New.</dd></dl>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/CRM2011OpportunityNaming.png" alt="Naming Opportunity" /></dt><dd>
                                Figure: This allows better understanding of opprotunity when look at opportunity
                                list.</dd></dl>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/CRM2011OpportunityCustomer.png" alt="Set Potental Customer for Opportunity" /></dt><dd>
                                Figure: Setting potential customer of an opportunity to a company instead of contact
                                will avoid problem when the contact moves to another company.</dd></dl>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/CRM2011OpportunityRevenue.png" alt="Set Revenue for Opportunity" /></dt><dd>
                                Figure: Recording revenue in the right field allows us to give a better report on
                                our sales pipeline.</dd></dl>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/CRM2011OpportunitySalesStage.png" alt="Set Sales Stage for Opportunity" /></dt><dd>
                                Figure: This allows us reporting on our oppotunities base on sales stage and work
                                out what to do next.</dd></dl>
                </p>
                <p>
                    After creating opportunities you will need:
                    <ul>
                        <li>Keep Sales Stage up to date.</li>
                        <li>Close Opportunity whenever we win or lose the opportunity. Closing opportunity is
                            important because if the opportunity is won, it will create a Project record in
                            CRM. This allows Project Manager to record montly projected income.</li>
                    </ul>
                </p>
            </li>
            <!--  commented out - Approved by Uly & Marlon 
            <li>
                <h2>
                    <a name="RecordProjectedIncome"></a>How to record monthly projected income</h2>
                <p>
                    When an Account Manager close the sales opportunity and set status to "Won". A project
                    will be created in CRM, for Project Manager to update the projected income.
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/CRM2011CompanyAccount.png" alt="Search for Company/Account" /></dt><dd>
                                Figure: Go to Microsoft Dynamics CRM | Companies/Accounts | Search for the company
                                of the project you want to record.</dd></dl>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/CRM2011Project.png" alt="Open the Project" /></dt><dd>
                                Figure: Open the company/account record | Click "Projects" | Open up the project
                                that you want to record projected income.</dd></dl>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/CRM2011ProjectForm.png" alt="Open the Project" /></dt><dd>
                                Figure: Because Project record is created automatically, there are some information
                                that are populated by default value. You will need to update the project information
                                with correct information.</dd></dl>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/CRM2011ProjectedIncomes.png" alt="Projected Incomes" /></dt><dd>
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
            </li>
            -->
            <li>
                <h2>
                    <a name="TrackInCRM"></a>How to Track Contact, Email, Task, etc.. from Outlook in
                    CRM</h2>
                <p>
                    To track a contact, email, task, etc.. from Outlook in CRM, you need to:
                </p>
                <ol>
                    <li>Click Message tab in Outlook </li>
                    <li>Hit "Track" button
                        <dl class="image">
                            <dt>
                                <img border="0" src="Images/TrackInCRM2011.png" alt="Track In CRM" />
                            </dt>
                            <dd>
                                Figure: Tracking an outlook content in CRM</dd></dl>
                    </li>
                </ol>
                <p>
                    Only track activities as per rule <a href="/SSW/Standards/Rules/Rulestobettermicrosoftcrm.aspx#WhenToTrackActivity">
                        Sales - Do you know when to track activities in CRM?</a> to avoid CRM becoming
                    a spam place of all activities.
                </p>
                <p>
                    When tracking a contact in CRM, company field in outlook does not sync with CRM.
                    You need to click on "Set Regarding" and choose appropriate company in CRM:
                </p>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/OutlookCRM2011SetRegardingCompary.png" alt="Set Parent Company"
                            width="743" height="623" /></dt><dd>
                                Figure: Set Regarding for Outlook Contact</dd></dl>
                <p>
                    Any contact without a company/account will automatically go to account name "Outlook
                    contacts - Please set Regarding Company/Account" in CRM.
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/OutlookCRMContactWithoutCompany.gif" alt="Outlook Contact without Parent Company"
                                width="805" height="365" /></dt><dd>
                                    Figure: Outlook Contact without Parent Company</dd></dl>
                </p>
            </li>
            <li>
                <h2>
                    <a name="SendingOutstandingInvoiceReminder"></a>How to send outstanding invoice
                    reminder</h2>
                <ol>
                    <li>Create a new email, fill in necessary fields and save it as a draft email. You will
                        use this email as your template.</li>
                    <li>CRM uses your subject line to save the record in correct category in TimePRO. It's
                        important that your subject must start with one of the following:
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
                    <li>Go to <a href="/timePROOnline/invoice/invoiceOutstanding.aspx">TimePRO Online Oustanding
                        Invoice</a> page </li>
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
