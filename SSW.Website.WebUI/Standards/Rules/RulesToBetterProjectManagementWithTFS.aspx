<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="Rules to Better Project Management with TFS (Creating and Managing Release Plans)" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <p>
        At SSW we advocate using the rich features of email and a release plan approach
        to getting work done. Follow these steps and you will have happier clients and clients
        that know what is going on.
    </p>
    <div class="TableOfContents">
        <table>
            <tr>
                <td style="width: 80%">
                    <h3>
                        Rules to Better Project Management with TFS (Creating and Managing Release Plans)
                    </h3>
                    <ol>
                        <li><a href="#OutlookAddin">Do you know what Outlook add-ins you need?</a></li>
                        <li><a href="#PrintedStoryCard">Do you use printed 'SSW Story Cards' with your customers
                            in the Spec Review?</a></li>
                        <li><a href="#CompletingWorkItem">Dones - Do you reply 'Done - changeset xxx' (bad example
                            using TFS instead of TeamCompanion)</a></li>
                        <li><a href="#WorkItemEmail">Dones - Describe the work item request in an email</a></li>
                        <li><a href="#TeamCompanionWorkItem">Dones - Move the email from your inbox to a TFS
                            Work Item (via an Outlook Addin)</a></li>
                        <li><a href="#KeepConsistentName">Done - Do you fix/update the TeamCompanion template,
                            so the email "subject" doesn't change?</a></li>
                        <li><a href="#EmailTemplate">Dones - Do you fix/update the TeamCompanion template, so
                            the email "history" looks decent?</a></li>
                        <li><a href="#ProperDoneMail">Dones - Do your "dones" include the right details </a>
                        </li>
                        <li><a href="#Send-Done-Email">Dones - Do you reply 'Done - changeset xxx' (4 step good example
                            using TeamCompanion instead of plain TFS)</a></li>
                        <li><a href="#ExcelWorkItem">Initializing the Project - Do you get the work items into
                            TFS via Excel</a></li>
                        <li><a href="#TriageWorkItem">Triage the work item</a></li>
                        <li><a href="#ManagingRequests">What if this is a related work item?</a></li>
                        <li><a href="#Links">Do you know what to do with a duplicate? (aka Linking Work Items)</a></li>
                        <li><a href="#HierarchyView">Do you use the Implementation tab to organize your requirements
                            hierarchy?</a></li>
                        <li><a href="#MultipleProjects">Do you avoid creating multiple Team Projects for the
                            same project?</a></li>
                        <li><a href="#ReleasePlan">Reports - Do you know how to create a sprint backlog (was
                            a release plan) with TFS?</a></li>
                        <li><a href="#UpdateDebrief">Do you know how to create a Release Update/Debrief report
                            with TFS?</a></li>
                        <li><a href="#ProxyForBuild">Do you use TFS Proxy server for Build server </a></li>
                        <li><a href="#FindURL">Do you know how to find the URL of a task?</a></li>
                        <li><a href="#NiceURL">Do you know about the nice URLs for TFS Web Access?</a></li>
                        <li><a href="#RefreshCube">Do you know how to refresh the cube?</a></li>
                        <li><a href="#ThreeConcepts">Do you explain the 3 concepts to a client?</a></li>
                        <li><a href="#TeamProjectAndTFSPortal">Do you know when to create the team project and
                            'TFS Portal' for a prospect/client?</a></li>
                        <li><a href="#CreateProjectPortal">Do you know how to create your Project Portal (for
                            existing TFS Team Projects)?</a></li>
                        <li><a href="#SPWithTFS2010">Do you know how to get SharePoint 2010 working with TFS
                            2010?</a></li>
                        <li><a href="#KeepSubjectTreadingUsingTeamCompanion">Do you know how to make a better
                            subject and keep threading using TeamCompanion?</a></li>
                        <li><a href="#ADAccounts">Do you check that the 3 services are running on their own
                            AD accounts?</a></li>
                        <li><a href="#SPFoundationForTFS">Do you know to use SharePoint over SharePoint Foundation
                            for TFS?</a></li>
                        <li><a href="#WikiOrDocLibrary">Do you know wither to use a Wiki or Document Library?</a></li>
                        <li><a href="#KeepServerDetails">Do you know where to keep server details?</a></li>
                        <li><a href="#TFSMaster">Do you have a TFS Master?</a></li>
                    </ol>
                </td>
                <td valign="top">
                    <table align="right" cellpadding="8" cellspacing="0" style="width: 400px; #ffffcc;
                        border: solid 2px #999999;">
                        <tr>
                            <td valign="top">
                                <img src="../Rules/Images/Icon-MultiMedia.jpg" alt="" />
                            </td>
                            <td style="width: 100%">
                                <p>
                                    <strong>
                                        <img src="../../Images/IconWMV.gif" alt="This Video is in WMV format" />
                                        <a href="http://www.dnrtv.com/default.aspx?showNum=159">Download video</a></strong></p>
                                <p>
                                    <strong>Duration:</strong> 52 minutes 42 Seconds<br />
                                    <strong>Size:</strong> 92.9MB
                                </p>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <ol>
        <li>
            <h2>
                <a name="OutlookAddin" id="OutlookAddin"></a>Do you know what Outlook add-ins you
                need?</h2>
            <p>
                At SSW we advocate using the rich features of email to describe work items. As Team
                Foundation Server (TFS) does not support this implicitly, you need to use a 3rd
                party solution:</p>
            <ul>
                <li><a href="/ssw/Redirect/TeamCompanion.htm">Team Companion</a>&nbsp;($) Recommended</li>
                <li><a href="/ssw/Redirect/PersonifyDesign.htm">TeamLook from Personify Design</a>&nbsp;($)</li>
                <li><a href="/ssw/Redirect/Outlook2007TFSAddin.htm">Outlook TFS Addin</a>&nbsp;(free)</li>
            </ul>
            <p>
                Check our <a href="/ssw/Standards/DeveloperGeneral/TFS.aspx">The Best 3rd Party TFS
                    Tools</a> for more information.</p>
            <dl class="goodImage">
                <dt>
                    <img alt="" src="/ssw/Standards/DeveloperGeneral/Images/TeamCompanionMain.jpg" width="725"
                        height="478" />
                </dt>
                <dd>
                    Figure: Good Example - Using Team Companion
                </dd>
            </dl>
            <dl class="badImage">
                <dt>
                    <img alt="" src="/ssw/Standards/DeveloperGeneral/Images/TeamLookNewWI.png" width="545"
                        height="510" />
                </dt>
                <dd>
                    Figure: Bad Example - Using TeamLook
                </dd>
            </dl>
            <p>
                Team Companion is the best TFS tool for Outlook, it allows you to easily:</p>
            <ul>
                <li>Move emails (from your inbox) to the current sprint (in TFS)</li>
                <li>Close items and reply &#8216;done&#8217; to the client (with the history)</li>
                <li>Download and work offline (with the TFS work items) in Outlook</li>
            </ul>
            <p>
                Above features are almost all you need to easily manage the process to track a job.
            </p>
        </li>
        <li>
            <h2>
                <a name="PrintedStoryCard" id="PrintedStoryCard"></a>Do you use printed 'SSW Story
                Cards' with your customers in the Spec Review?
            </h2>
            <p>
                When doing a Spec Review, always bring printed <a href="http://rules.ssw.com.au/Documents/SSWStoryCard.pdf"
                    class="pdf">SSW Story Cards</a>.</p>
            <ul>
                <li>Complete the story card with the client</li>
                <li>Teach the clients how to complete story cards by themselves </li>
                <li>Go to Web Portal (projects.ssw.com.au/tfs/Northwind) and enter the story </li>
                <li>Write the Story ID field on the card</li>
                <li>Stick the cards on the project room wall maximizing visibility</li>
            </ul>
            <dl class="image">
                <dt>
                    <img alt="SSW Story Card" src="Images/SSWStoryCard.jpg" />
                </dt>
                <dd>
                    Figure: SSW Story Card</dd>
            </dl>
            See also the <a href="http://sharepoint.ssw.com.au/Standards/Management/RulesToBetterScrumUsingTFS/Pages/PhysicalTaskboard.aspx">
                SSW client taskboard</a>. </li>
        <li><a name="CompletingWorkItem" id="CompletingWorkItem"></a>
            <h2>
                Dones - Do you reply 'Done - changeset xxx' (bad example using TFS instead of TeamCompanion)</h2>
            <ol>
                <li>When the work item is completed opens up the work item and opens the original attachment
                    email and click "reply to all"
                    <table class="clsSSWTable" width="30%" align="right">
                        <tr>
                            <td>
                                <p>
                                    A Feature request for TFS would be to have a 'Reply to All' option on the File Attachments
                                    dialog (see figure below), this would open a new email with the original message.
                                    Once this message has been sent it then should add the file to the file attachments
                                    for the work item.</p>
                                <p>
                                    At this stage this is the way to do it manually.</p>
                            </td>
                        </tr>
                    </table>
                    <dl class="badImage">
                        <dt>
                            <img alt="Open original email from work items" src="Images/TFSWA_CompleteWI_Step1.jpg"
                                width="668" height="331" />
                        </dt>
                        <dd>
                            Figure: Bad Example - Open work item and select file attachments, then open the
                            original email request (using TFSWA)</dd></dl>
                </li>
                <li>Select 'reply to all' and create a 'done' email
                    <dl class="badImage">
                        <dt>
                            <img alt="Explain what you did." src="Images/DraftReplyToAll.gif" width="723" height="712" />
                        </dt>
                        <dd>
                            Figure: Bad Example - Reply 'done' to all (using TFSWA)</dd></dl>
                </li>
                <li>Save "done" email as msg file to a local folder
                    <dl class="badImage">
                        <dt>
                            <img alt="Save email as msg file" src="Images/SaveAsMsg.gif" width="610" height="480" />
                        </dt>
                        <dd>
                            Figure: Bad Example - Save 'done' email as msg file to a local folder (using TFSWA)</dd></dl>
                    <dl class="badImage">
                        <dt>
                            <img alt="Attach done email into the work item" src="Images/TFSWA_CompleteWI_Step4.jpg"
                                width="668" height="331" />
                        </dt>
                        <dd>
                            Figure: Bad Example - Attach 'done' email back against the work item (using TFSWA)</dd></dl>
                </li>
                <li>Change the status of the work item and update the hours worked
                    <dl class="badImage">
                        <dt>
                            <img alt="Close work items with actual hours spent." src="Images/TFSWA_CompleteWI_Step5.jpg"
                                width="672" height="373" />
                        </dt>
                        <dd>
                            Figure: Bad Example - Change Status to 'Closed', add hours to worked completed and
                            change remaining hours to 0 (using TFSWA)</dd></dl>
                </li>
            </ol>
            <p>
                Check the good example to <a href="/ssw/standards/rules/rulestobetterprojectmanagementwithtfs.aspx#Send-Done-Email">
                    send a "Done" email using Team Companion</a></p>
        </li>
        <li>
            <h2>
                <a name="WorkItemEmail" id="WorkItemEmail"></a>Dones - Describe the work item request
                in an email
            </h2>
            <p>
                The required work item (bug request, new feature or change) should be described
                in sufficient detail in the body of an email and emailed according to the projects
                work item communication standard. It is preferred that the email not include any
                attachments.If you send the email to yourself make sure to follow <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/EmailToMyself.aspx">
                    Email to yourself.</a>
            </p>
            <dl class="image">
                <dt>
                    <img alt="Confirming requirement with email" src="Images/RequirementEmail.gif" width="752"
                        height="511" />
                </dt>
                <dd>
                    Figure: Confirming the requirement by sending an email to yourself
                </dd>
            </dl>
        </li>
        <li><a name="TeamCompanionWorkItem"></a>
            <h2>
                Dones - Move the email from your inbox to a TFS Work Item (via an Outlook Addin)
            </h2>
            <p>
                Open the task email and click on "New Work Item from Mail" in Team Companion toolbar,
                the good thing about this it will automatically attach the original email as an
                attachment when you check the option.
            </p>
            <dl class="image">
                <dt>
                    <img alt="Converting email to TFS with TeamCompanion" src="Images/TFS_OAdd_01.jpg" />
                </dt>
                <dd>
                    Figure: Convert the email into a TFS work item by click TeamCompanion's 'New Work
                    Item from Mail' button</dd>
            </dl>
            <dl class="image">
                <dt>
                    <img alt="Converting email to TFS with TeamCompanion" src="Images/TFS_OAdd_02.jpg" />
                </dt>
                <dd>
                    Figure: The original email will be attached to the TFS work item so you have the
                    original (plus all the rich formatting in the email)</dd>
            </dl>
            <p>
                Ensure you inform the client that the current task, and all subsequent tasks, will
                be added to backlog, or to a specified iteration.</p>
            <dl class="">
                <pre>Hi Adam,
 
Your task has been added to the next release, Release 04.  All subsequent tasks will be added to this iteration unless otherwise specified.
 
Regards,
 
Jonny Trees
www.ssw.com.au
					</pre>
                <dd>
                    Figure: After converting the email into TFS work item, you should send the client
                    an email.</dd></dl>
            <p>
                <b>Note: </b>Once you've moved the email into TFS as work item, you should delete
                the original email from your inbox or move it to a outlook folder called "Moved
                to TFS" to avoid duplication.
            </p>
        </li>
        <li><a name="KeepConsistentName"></a>
            <h2>
                Done - Do you fix/update the TeamCompanion template, so the email "subject" doesn't
                change?
            </h2>
            <p>
                Generally email subject should not change as it affects threading in Outlook, see
                our <a href="http://rules.ssw.com.au/Communication/RulesToBetterEmail/Pages/ImportanceOfAGoodSubject.aspx">
                    Rules to Better Emails</a>.
            </p>
            <p>
                Out of the box, Team Companion does change the "Email Subject" in the "Send Email"
                tab. To avoid this, change to "System.Title" as new task subject.</p>
            <p>
                Change from:</p>
            <dl class="badImage">
                <dt>
                    <img alt="Send Email option" src="Images/TFS_SendMail_Option1.jpg" />
                </dt>
                <dd>
                    Figure: The default template changes the subject</dd>
            </dl>
            <p>
                To</p>
            <dl class="goodImage">
                <dt>
                    <img alt="Send Email option" src="Images/TFS_SendMail_Option.jpg" />
                </dt>
                <dd>
                    Figure: Change the New Email subject to be 'RE: {System.Title}' so the subject does
                    not change
                </dd>
            </dl>
            <p>
                <b>Note: </b>You should add "RE:" as the prefix because this generated email will
                normally be a reply to the original request.
            </p>
        </li>
        <li><a name="EmailTemplate"></a>
            <h2>
                Dones - Do you fix/update the TeamCompanion template, so the email "history" looks
                decent?
            </h2>
            <dl class="goodImage">
                <dt>
                    <img alt="Send Email option" src="Images/TFS_SendMail_Option2.jpg" />
                </dt>
                <dd>
                    Figure: Change the "New e-mail body:" so you can generate a proper "done" mail
                </dd>
            </dl>
            <p>
                Besides the Email subject, you should:
                <ol>
                    <li>Update the "New e-mail body" to the following:
                        <br />
                        <br />
                        <pre>
Done
&lt;br /&gt;
&lt;br /&gt;
-----------------------------------
&lt;br /&gt;
&lt;b&gt;Work Item URL: &lt;/b&gt;{TeamCompanion.WorkItemUrl}
&lt;br /&gt;
&lt;b&gt;Area: &lt;/b&gt; {System.AreaPath}
&lt;br /&gt;
&lt;b&gt;Iteration: &lt;/b&gt;{System.IterationPath}
&lt;br /&gt;
&lt;b&gt;Type: &lt;/b&gt; {System.WorkItemType}
&lt;br /&gt;
&lt;b&gt;State: &lt;/b&gt; {System.State}
&lt;br /&gt;
&lt;b&gt;Estimated&lt;/b&gt;: {Microsoft.VSTS.Scheduling.BaselineWork} 
&lt;br /&gt;
&lt;b&gt;Completed&lt;/b&gt;: {Microsoft.VSTS.Scheduling.CompletedWork}
&lt;br /&gt;
&lt;b&gt;Additional&lt;/b&gt;: {SSW.Agile.Additional}
-----------------------------------
</pre>
                        <p>
                            <strong>Note:</strong>
                            <br />
                            If you are reply "done" to a work item other than "Task", you need to manually remove
                            the following fields because these work items don't have these fields:
                            <ul>
                                <li>Estimated: {Microsoft.VSTS.Scheduling.BaselineWork} </li>
                                <li>Completed: {Microsoft.VSTS.Scheduling.CompletedWork} </li>
                                <li>Additional: {SSW.Agile.Additional}</li>
                            </ul>
                            <br />
                            - {SSW.Agile.Additional} field will only be available when you installed <a href="/ssw/AgileTemplate/">
                                SSW.Agile.Template </a>.
                            <br />
                            - We didn't include {System.Description} here because we are going to reply to the
                            original email, so the history will do the job.
                            <br />
                        </p>
                    </li>
                    <li>Uncheck "Use Work Item Html preview as Email body". </li>
                    <li>Check "Use HTML markup in body". </li>
                    <li>Choose "Send Email (and Attach to Work Item)" as "Default Send by Mail action".
                    </li>
                </ol>
            </p>
        </li>
        <li><a name="ProperDoneMail"></a>
            <h2>
                Dones - Do your "dones" include the right details
            </h2>
            <ul>
                <li>Description of the original change request</li>
                <li>Baseline estimates</li>
                <li>Completed time</li>
                <li>Technical detail & code if the client is interested (you will need to factor time
                    for this in your estimate)</li>
                <li>Relevant screenshots</li>
                <li>A link or reference to the original item in TFS</li>
            </ul>
        </li>
        <li>
            <h2><a name="Send-Done-Email"></a>Dones - Do you reply 'Done - changeset xxx'? (4 step of using TeamCompanion instead of plain TFS)</h2>
            <p>Here are the steps to follow when you complete a task. Generate the email using TeamCompanion and you will get the TFS work item into an acceptable state to send to a client:</p>
            <ul>
                <li>Step 1: Open the work item using Team Companion</li>
                <li>Step 2: Choose in the menu "Done"</li>
                <li>Step 3: Include the replied original request (the customers email) as history</li>
                <li>Step 4: Send the done email (and TeamCompanion will close the work item in the current backlog)</li>
            </ul>
            <h4>More Information</h4>
            <p><b>Step 1: Open the work item and the customers email</b></p>
            <div class="greyBox">
                <b>Note:</b> Make sure you have followed rule <a href="#TeamCompanionWorkItem">Dones - Move the email from your inbox to a TFS Work Item (via an Outlook Addin) </a>to create work items in TFS. If you followed this rule then you have attached the original email to the work item.
            </div>
            <p>
                A done email should include the original request as part of the history so your
                client can easily see what the original task was.
            </p>
            <ul>
                <li>Open the work item
                    <dl class="Image">
                        <dt><img alt="Work Item File Attachments" src="Images/open-work-item.jpg" /></dt>
                        <dd>Figure: Open the work item using Team Companion</dd>
                    </dl>
                </li>

                <li>Open the email in attachments hit 'Reply' to this email and copy the email history (we will use the history of this email in our "Done" email). 
                    <dl class="Image">
                        <dt><img alt="Replied original request email as the history" src="Images/email-clipboard.jpg" /></dt>
                        <dd>Figure: Once opened, Control+A, Control+C to copy the email history to the clipboard</dd>
                    </dl>
                </li>

            </ul>
            <p><b>Step 2: Choose "Done"</b></p>
            <dl class="Image">
                <dt>
                    <img alt="Generate done mail template" src="Images/choose-done.jpg" />
                </dt>
                <dd>Choose "Done"</dd>
            </dl>
            <p>You will see that the following Windows, check "Send done e-mail" and click "OK"</p>
            <dl class="Image">
                <dt>
                    <img alt="Generate done mail template" src="Images/done-window.jpg" />
                </dt>
                <dd>Figure: The done windows from Team Companion that will close the work item from you</dd>
            </dl>
            <p>
                <b>Step 3: Include the replied original request email (the customers email) as history</b>
            </p>
            <p>
                As you can see, this "done" email template only includes basic information about
                the work item - missing the customers history! In order to keep client fully informed about the task, you should
                include the original email history that we copied to the clipboard in step 1. 
            </p>
            <div class="greybox">
                <b>Note: </b>You should not do it the other way around as TeamCompanion will not attach it back to the work item. 
            </div>
            <dl class="Image">
                <dt><img alt="Proper done mail" src="Images/TFS_4StepDone_5.jpg" /></dt>
                <dd>Figure: Wooolaaaah... The properly formatted "done" email</dd>
            </dl>
            <p>
               Take note of the 4 red rectangles above. They are the steps to follow, being: 
            </p>
            <ol>
                <li>Enter the client's email</li>
                <li>Make it clear that the task is done</li>
                <li>Include necessary information about the implementation/fix and screen shots</li>
                <li>Paste the reply to the original email as the history </li>
            </ol>
            <p>
                <b>Step 4: Send the done email (and TeamCompanion close the work item in the current backlog)</b>
            </p>
            <p>Now you are all set. All you need to do now is to send this "done" email is click the "Send" button. </p>
            <p>TeamCompanion will attach this "done" email back to the work item and close it.</p>
            <dl class="Image">
                <dt><img alt="File Attachments" src="Images/done-attachment.jpg" /></dt>
                <dd>Figure: You will now have the attachments - the "Done" email</dd>
            </dl>
            <p>For more tips on sending "Done" emails see "<a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/default.aspx">Rules to better Email</a>"
            </p>
            <p>And the work item is now closed.</p>
            <dl class="Image">
                <dt><img alt="work item is closed" src="Images/closed-work-item.jpg" /></dt>
                <dd>Figure: The work item is closed in TFS 2012</dd>
            </dl>
            
        </li>
        <li><a name="ExcelWorkItem"></a>
            <h2>
                Initializing the Project - Do you get the work items into TFS via Excel
            </h2>
            <ul>
                <li>Open SSW Priorities Estimate Template in Excel
                    <dl class="image">
                        <dt>
                            <img alt="Find SSW Template - 'New | My templates... | SSW_Proposal-Project | SSWPrioritiesEstimateTemplate.xltx'"
                                src="Images/ExcelSSWTemplate.jpg" />
                        </dt>
                        <dd>
                            Figure: Find SSW Template - 'New | My templates... | SSW_Proposal-Project | SSWPrioritiesEstimateTemplate.xltx'</dd>
                    </dl>
                </li>
                <li>Add the tasks and additional tasks into Release_XX sheet
                    <dl class="image">
                        <dt>
                            <img alt="Copy work items to Release_XX sheet" src="Images/ExcelReleaseSheet.jpg" />
                        </dt>
                        <dd>
                            Figure: Copy work items to Release_XX sheet</dd>
                    </dl>
                    Note: The Project Management tasks will be calculated based on your tasks </li>
                <li>Create a new sheet and go to Team tab</li>
                <li>Click "New List" and choose your project
                    <dl class="image">
                        <dt>
                            <img alt="Find your project in the list" src="Images/ExcelFindProject.jpg" />
                        </dt>
                        <dd>
                            Figure: Find your project in the list</dd>
                    </dl>
                    <dl class="image">
                        <dt>
                            <img alt="Choose 'Input list' to download the empty template" src="Images/ExcelInputList.jpg" />
                        </dt>
                        <dd>
                            Figure: Choose 'Input list' to download the empty template</dd>
                    </dl>
                </li>
                <li>Add the other useful columns e.g. Baseline Work, Remaining Work, Completed Work
                    into Excel
                    <dl class="image">
                        <dt>
                            <img alt="Click 'Choose columns'" src="Images/ExcelChooseColumnsButton.jpg" />
                        </dt>
                        <dd>
                            Figure: Click 'Choose columns'</dd>
                    </dl>
                    <dl class="image">
                        <dt>
                            <img alt="Select columns in the left list" src="Images/ExcelChooseColumnsList.jpg" />
                        </dt>
                        <dd>
                            Figure: Select columns in the left list</dd>
                    </dl>
                </li>
                <li>Copy work items (including the Project Management tasks) from Release_XX to the
                    new sheet
                    <dl class="image">
                        <dt>
                            <img alt="Copy work items from Release_XX" src="Images/ExcelWorkItems.jpg" />
                        </dt>
                        <dd>
                            Figure: Copy work items from Release_XX</dd>
                    </dl>
                </li>
                <li>Click "Publish" button to upload the work items to TFS </li>
            </ul>
        </li>
        <li><a name="TriageWorkItem"></a>
            <h2>
                Triage the work item</h2>
            <p>
                If you are already working on an iteration, you will need to Triage the work item.
                Ideally choose a future iteration</p>
            <dl class="image">
                <dt>
                    <img alt="Assign the converted task to an interation" src="Images/TFS_TW_01.jpg" />
                </dt>
                <dd>
                    Figure: Triage the work item. Aim to assign the task to a future iteration.</dd>
            </dl>
        </li>
        <li><a name="ManagingRequests" id="ManagingRequests"></a>
            <h2>
                What if this is a related work item?
            </h2>
            <ul>
                <li>If the request is related to another work item or is a duplicate request, <a
                    href="#Links">create a link to the other work item (see below)</a></li>
                <li>If the request is a bug from a closed work item that needs to be re-opened
                    <dl class="badImage">
                        <dt>
                            <img alt="Close work items with actual hours spent." src="Images/TFSWA_AttachFile.jpg"
                                width="676" height="375" />
                        </dt>
                        <dd>
                            Figure: Bad Example - Work Item is re-opened and email added to attachments (using
                            TFSWA)
                        </dd>
                    </dl>
                    <dl class="goodImage">
                        <dt>
                            <img alt="Attach Email - Team Companion" src="Images/TeamCompanionAttachEmail.jpg"
                                width="852" height="664" />
                            </td>
                            <dd>
                                Figure: Good Example - Work Item is re-opened and email added to the attachments
                                (using Team Companion)
                            </dd>
                    </dl>
                </li>
            </ul>
        </li>
        <li><a name="Links" id="Links"></a>
            <h2>
                Do you know what to do with a duplicate? (aka Linking Work Items)
            </h2>
            <p>
                If a work item is related to another work item or is a duplicate request, create
                a link between the work items.
            </p>
            <table class="clsSSWTable" cellspacing="2" cellpadding="2">
                <tr>
                    <td>
                        In the next version of Visual Studio Team System 2008 there is a feature of hierarchy
                        tables that may allow better management of related work items and multiple change
                        requests on the same work item.
                    </td>
                </tr>
            </table>
            <dl class="badImage">
                <dt>
                    <img alt="Add link between work items" src="Images/TFSWA_LinkWorkItem.jpg" width="676"
                        height="375" />
                </dt>
                <dd>
                    Figure: Bad Example - Add the link between the two work items, you will be prompted
                    for search options to locate the related item (using TFSWA)</dd></dl>
            <dl class="badImage">
                <dt>
                    <img alt="Locate Work Item" src="Images/TFSWA_FindWorkItem.jpg" width="610" height="453" />
                </dt>
                <dd>
                    Figure: Bad Example - Locate original work item from your work items list (using
                    TFSWA)</dd></dl>
            <dl class="badImage">
                <dt>
                    <img alt="Locate Work Item" src="Images/TFSWA_LinkWorkItemComplete.jpg" width="676"
                        height="375" />
                </dt>
                <dd>
                    Figure: Bad Example - Link has been added and you can save the new work item (using
                    TFSWA)</dd></dl>
            <p>
                Team Companion provides an easy way to link with an existing work item.</p>
            <dl class="goodImage">
                <dt>
                    <img alt="Open the existing work item" src="Images/TeamCompanionOpenWorkItem.jpg"
                        width="854" height="320" />
                </dt>
                <dd>
                    Figure: Good Example - Open an existing work item from work item list (using Team
                    Companion)
                </dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img alt="Create related work item" src="Images/TeamCompanionAddRelatedWI.jpg" width="854"
                        height="660" />
                </dt>
                <dd>
                    Figure: Good Example - Link has been added to the new created work item (using Team
                    Companion)
                </dd>
            </dl>
        </li>
        <li><a name="HierarchyView"></a>
            <h2>
                Do you use the Implementation tab to organize your requirements hierarchy?
            </h2>
            <p>
                At SSW, we are using Agile process to manage our project, in MSF Agile Template
                5.0, there are different work item types that can help us to organize our requirements
                hierarchy. User Stories work items present a piece of user requirements, normally
                it describe a complete scenario a user interact with the software; such description
                make senses to customer as well as the developers, provide the team a common understanding
                of what is required. Tasks work items make more senses to the developers which provide
                a breakdown of a single User Story, and they can be filled into the "Implementation"
                tab of a User Story by linking them together.
            </p>
            <p>
                The advantages of this new MSF Agile Template 5.0 and Team Foundation Server 2010
                is it understands the hierarchy itself by providing Child/Parent link type between
                User Stories and Tasks, therefore not only the people understand their relationship,
                but also the server itself can use such links to generate more meaningful reports.
            </p>
            <dl class="Image">
                <dt>
                    <img alt="Link types" src="Images/Agile5LinkTypes.jpg" />
                </dt>
                <dd>
                    Figure:Child/Parent link types
                </dd>
            </dl>
            <p>
                Compare to the old Agile Template which only provide links between work items, it
                couldn't distinguish a child or a parent.
            </p>
            <dl class="badImage">
                <dt>
                    <img alt="Agile 4 Links tab" src="Images/Agile4LinkTab.jpg" />
                </dt>
                <dd>
                    Bad Example: The old Agile template only provides "related" links</dd></dl>
            <dl class="goodImage">
                <dt>
                    <img alt="Agile 5 Implementation tab" src="Images/Agile5ImpTab.jpg" />
                </dt>
                <dd>
                    Good Example:Using the "Implementation" tab to organize hierarchy by using "Child"
                    link type
                </dd>
            </dl>
        </li>
        <li><a name="MultipleProjects"></a>
            <h2>
                Do you avoid creating multiple Team Projects for the same project?
            </h2>
            <p>
                TFS uses Team Project to manage sources code, Work Items and other project related
                document; the source control allows you to create multiple solution folders under
                the same Team Project to meet your need. You shouldn't create multiple Team Projects
                for the same project as this make it very difficult to query the Work Items, create
                reference between projects and make builds.
            </p>
            <p>
                TFS Team Project should be considered from a project management point of view instead
                of technical point of view, you should use a Team Project to manage all resources
                in your project, including source code, documentations and reports etc. If you are
                separating the related source code into different Team Project, you will find it's
                difficult for you to decide the location of your other resources should be going
                to, like your release plan, project update etc.
            </p>
            <dl class="badImage">
                <dt>
                    <img alt="Bad Multiple Project Example" src="Images/BadMultipleProject.gif" />
                </dt>
                <dd>
                    Figure: Bad Example - Multiple Team Projects for the same product</dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img alt="Good Multiple Project Example" src="Images/GoodMultipleProject.gif" />
                </dt>
                <dd>
                    Figure: Good Example - Multiple solution folders in the same Team Project
                </dd>
            </dl>
        </li>
        <li><a name="ReleasePlan"></a>
            <h2>
                Reports - Do you know how to create a sprint backlog (was release plan) with TFS?</h2>
            <p>
                <dl class="image">
                    <dt>
                        <img src="Images\Scrum Overview Diagram - Update Product Backlog.jpg" alt="The Update Product Backlog Stage" /></dt>
                    <dd>
                        Figure: At this point, you are at "Update Product Backlog" stage</dd>
                </dl>
            </p>
            <p>
                Prior to your meeting with the customer you should prepare. Get your 'Sprint Contract'
                (was 'Release Plan') email ready, so after the meeting you can adjust and promptly
                send it. Let's learn how to do it.
            </p>
            <ol>
                <li>Open your team project in Visual Studio<br />
                    Tip: Use SSW Agile Template to create or upgrade your TFS team project. See rule
                    <a href="/ssw/Standards/Rules/RulesToBetterVersionControlWithTFS(AKASourceControl).aspx#Template">
                        Do you use SSW Agile Template for SSW project?</a> </li>
                <br />
                <li>Create a new TFS iteration for your sprint
                    <br />
                    Tip: Go to Visual Studio | Team | Team Project Settings | Areas and Iterations
                    <dl class="image">
                        <dt>
                            <img src="Images\AreasAndIterations.png" alt="Create Iteration in TFS" /></dt>
                        <dd>
                            Figure: Create Iteration in TFS</dd>
                    </dl>
                </li>
                <br />
                <li>Add the task work items<br />
                    Tip: Use Excel as per this rule <a href="#ExcelWorkItem">Initializing the Project -
                        Do you get the work items into TFS via Excel</a><br />
                    Note: You should have already used Team Companion to create your user stories as
                    per this rule <a href="#TeamCompanionWorkItem">Use Outlook Add-in to move the email
                        to a TFS Work Item</a> </li>
                <br />
                <li>Estimate each task and fill in fields of 'Baseline work' and 'Remaining work'<br />
                    Tip: The value of the two fields should be equal before the work item starts
                    <dl class="Image">
                        <dt>
                            <img alt="create work item for release plan" src="Images/TFS_WorkItem_Baseline.gif" />
                        </dt>
                        <dd>
                            Figure: Fill in 'Baseline work' and 'Remaining work' fields (Tip: Use Excel instead
                            of Visual Studio)</dd>
                    </dl>
                </li>
                <br />
                <li>Create an email as per the rule <a href="http://rules.ssw.com.au/Management/RulesToBetterScrumUsingTFS/Pages/Do-you-have-a-Sprint-Contract-aka-The-deal-between-the-Product-Owner-and-Team.aspx">
                    Do you have a contract between Product Owner and the Team?</a> </li>
                <br />
                <li>In your email add the tasks<br />
                    Tip: Attach a PDF of the Story Overview report<br />
                    or<br />
                    Tip: Open Excel and copy the stories
                    <dl class="image">
                        <dt>
                            <img src="Images\StoriesOverviewReport.jpg" alt="Stories Overview Report" /></dt>
                        <dd>
                            Figure: Open the 'Stories Overview Report' and attach .pdf in your sprint contract
                            (was 'Release Plan' email)</dd>
                    </dl>
                </li>
                <%--
					<li>Open "SSW Release Plan" report in your team project of TFS
						<dl class="Image">
							<dt>
								<img alt="release plan report" src="Images/TFS_RP_01.jpg" />
							</dt>
							<dd>
								Figure: Use the SSW Agile Template report to generate Release Plan</dd>
						</dl>
					</li>--%>
                <%--
					<li>Go to eXtreme Emails and generate a release plan based on inbox tasks.
						<dl class="Image">
							<dt>
								<img alt="Use eXtreme Emails to generate Release Plan" src="Images/ReportsToolbar.gif" />
							</dt>
							<dd>Figure: Use eXtreme Emails to generate Release Plan</dd>
						</dl>
						
						<dl class="Image">
							<dt>
								<img alt="Select report type" src="Images/ReleasePlan.gif" />
							</dt>
							<dd>Figure: Select report type</dd>
						</dl>
						
						<dl class="Image">
							<dt>
								<img alt="Release Plan is generated by eXtreme Emails" src="Images/ReleasePlanEmail.gif" />
							</dt>
							<dd>Figure: Release Plan is generated by eXtreme Emails</dd>
						</dl>
					</li>
                --%>
                <%--					<li>Copy the content of <a href="/ssw/eXtremeEmails/Reports/ReleasePlanReport.htm">Release
						Plan Report</a></li>
					<li>Update the information in &lt; &gt; and [ ]</li>
					<li>Use the tasks table of the SSW Agile Template instead of eXtreme Emails
						<ul>
							<li>Open the release plan generated by the SSW Agile Template</li>
							<li>Copy the tasks table</li>
							<li>Open the release plan created by eXtreme Emails</li>
							<li>Paste and replace the tasks table in eXtreme Emails</li>
						</ul>
					</li>--%>
            </ol>
        </li>
        <li><a name="UpdateDebrief"></a>
            <h2>
                Do you know how to create a Release Update/Debrief report with TFS?</h2>
            <p>
                As per rule <a href="https://www.ssw.com.au/rules/burndown-and-stories-overview-reports-updates">
                    Do you get regular updates on costs and progress?</a>, we send project update
                report to client every week (usually on Monday) and a debrief report at the end
                of each release.
            </p>
            <p>
                Before using TFS to generate release update or debrief report, you should create
                a Release Plan following rule <a href="#ReleasePlan">Do you know how to create a project
                    release plan with TFS?</a>.
                <br />
                Then you need:
                <ul>
                    <li>Follow rule <a href="#CompletingWorkItem">Dones - Do you reply 'Done - changeset
                        xxx' (bad example using TFS instead of TeamCompanion)</a> to complete work item
                        after it's done or update </li>
                    <li>Update work items which are not done
                        <dl class="Image">
                            <dt>
                                <img alt="update work item" src="Images/TFS_WorkItem_Completed.gif" />
                            </dt>
                            <dd>
                                Figure: Update work item fields</dd></dl>
                    </li>
                    <li>Go to TFS report server and open report folder of your team project, generate project
                        Update/Debrief from SSW Release Update
                        <dl class="Image">
                            <dt>
                                <img alt="release update/debrief report" src="Images/TFS_UP_01.jpg" />
                            </dt>
                            <dd>
                                Figure: SSW Release Update report</dd></dl>
                    </li>
                </ul>
            </p>
        </li>
        <li><a name="ProxyForBuild"></a>
            <h2>
                Do you use TFS Proxy server for Build server</h2>
            <p>
                Automated build contribute the most load on TFS server, adding a TFS proxy server
                even in the same LAN will help to reduce the concurrent connections to the main
                TFS server.
            </p>
        </li>
        <li><a name="FindURL"></a>
            <h2>
                Do you know how to find the URL of a task?</h2>
            <ul>
                <li>Open the TFS Web Access in browser (<a href="https://tfs.ssw.com.au/tfs">tfs.ssw.com.au/tfs</a>)</li>
                <li>Find and click on your task
                    <dl class="image">
                        <dt>
                            <img src="Images\FindYourTask.png" alt="Find your task" /></dt>
                        <dd>
                            Figure: Find your task</dd>
                    </dl>
                    <dl class="image">
                        <dt>
                            <img src="Images\SeeTaskDetail.png" alt="Click on your task and see the detail" /></dt>
                        <dd>
                            Figure: Click on your task and see the detail</dd>
                    </dl>
                </li>
                <li>Get the URL in the address bar</li>
            </ul>
        </li>
        <li><a name="NiceURL"></a>
            <h2>
                Do you know about the nice URLs for TFS Web Access?</h2>
            <p>
                By default the URLs that come out of TFS Web Access are ugly.</p>
            <dl class="badImage">
                <dt>
                    <p style="background-color: #eeeeee">
                        http://tfswa.ssw.com.au/UI/Pages/WorkItems/WorkItemEdit.aspx?pid=1425&state-guid=0b5f1ed0-6ca5-4907-8ff4-9a41b4c11581&oqs=pid%3d1425%26state-guid%3d436808a0-3f8e-452a-97c4-c93ef887e160%26oqs%3did%253d10197</p>
                </dt>
                <dd>
                    Figure: Ugly URL</dd>
            </dl>
            <p>
                You can use the following nice URLs to get access to the work items you need:</p>
            <p>
                Open a work item</p>
            <dl class="goodImage">
                <dt>
                    <p style="background-color: #eeeeee">
                        http://<tswa>/wi.aspx?id=&lt;workItemID&gt;</p>
                </dt>
            </dl>
            <p>
                Open a work item in a team collection by GUID</p>
            <dl class="goodImage">
                <dt>
                    <p style="background-color: #eeeeee">
                        http://<tswa>/<b>wi</b>.aspx?id=&lt;workItemID&gt;&pguid=&lt;teamProjectCollectionGuid&gt;</p>
                </dt>
            </dl>
            <p>
                Open a work item in a team collection by collection name</p>
            <dl class="goodImage">
                <dt>
                    <p style="background-color: #eeeeee">
                        http://<tswa>/<b>wi</b>.aspx?id=&lt;workItemID&gt;&pname=&lt;teamProjectCollectionName&gt;</p>
                </dt>
            </dl>
            <p>
                Create a new work item</p>
            <dl class="goodImage">
                <dt>
                    <p style="background-color: #eeeeee">
                        http://<tswa>/<b>wi</b>.aspx?wit=&lt;workItemType&gt;&pcname=&lt;CollectionName&gt;&pname=&lt;ProjectName&gt;</p>
                </dt>
            </dl>
            <p>
                Note: You can also use a tool <a href="/SSW/Redirect/CreateNiceURLs.htm" class="external">
                    Team System Web Access Link Creator to create nice URLs</a>
            </p>
            <dl class="Image">
                <dt>
                    <img src="Images\TSWALinkCreator.jpg" alt="TSWA Link Creator" /></dt>
                <dd>
                    Figure: Create nice URL by TSWA Link Auditor</dd>
            </dl>
        </li>
        <li><a name="RefreshCube"></a>
            <h2>
                Do you know how to refresh the cube?</h2>
            <p>
                Note: These are instructions for TFS 2010 Beta 2</p>
            <p>
                If you enter data and then look at reports you will see stale data!!!
                <dl class="image">
                    <dt>
                        <img src="Images\StaleData.jpg" alt="The TFS Warehouse needs to be updated." /></dt>
                    <dd>
                        Figure: The report footer tells you that the TFS Warehouse is not up to date.</dd>
                </dl>
            </p>
            <p>
                The UI does not provide an easy option. However you have 2 *hard* ways of updating
                the TFS Data Warehouse.<br />
                Option 1. Open SQL Management Studio and then force re-processing<br />
                Option 2. Open the TFS Web Services in IE and then force processing (Recommended
                - see below)
            </p>
            <p>
                More info on Option 2<br />
                Follow these instructions to reprocess the data warehouse using the web services
                (this took us a long time to work out):<br />
                <ol>
                    <li>Open IIS Manager </li>
                    <li>Go to "Team Foundation Server"</li>
                    <li>Open the feature "Directory browsing"</li>
                    <li>"Enable" </li>
                    <li>Back to "Team Foundation Server"</li>
                    <li>"Browse website"</li>
                    <li>Browse to http://localhost:8080/tfs/TeamFoundation/Administration/v3.0/WarehouseControlService.asmx
                        <dl class="image">
                            <dt>
                                <img src="Images\WebService.jpg" alt="Warehouse Control web services" /></dt>
                            <dd>
                                Figure: You will need to call 2 of these web services</dd>
                        </dl>
                    </li>
                    <li>Invoke "ProcessWarehouse" with the parameter "DefaultCollection" (or whatever your
                        collection is called)
                        <dl class="image">
                            <dt>
                                <img src="Images\ProcessWarehouse.jpg" alt="Process Warehouse" /></dt>
                            <dd>
                                Figure: Call "ProcessWarehouse" web service with paramter "DefaultCollection"</dd>
                        </dl>
                    </li>
                    <li>Invoke "ProcessAnalysisDatabase" with parameter "Full"
                        <dl class="image">
                            <dt>
                                <img src="Images\ProcessAnalysisDatabase.jpg" alt="Process Analysis Database" /></dt>
                            <dd>
                                Figure: Call "ProcessAnalysisDatabase" with paramter "Full"
                            </dd>
                        </dl>
                    </li>
                    <li>Now once the the reprocess is completed, the reports are up to date</li>
                </ol>
            </p>
            <p>
                More info see the blog entry from Grant Holliday:<a href="/SSW/Redirect/ForceDataWarehouseforUpdateTFS.htm"
                    class="external">http://ozgrant.com/2006/05/15/forcing-data-warehouse-update-for-tfs/</a>
            </p>
            <p>
                Note: <a href="/ssw/Standards/BetterSoftwareSuggestions/TeamFoundationServer.aspx#RefreshTFSCube">
                    We have a suggestion to the TFS team for this.</a></p>
            <p><a href="/ssw/Standards/BetterSoftwareSuggestions/TeamFoundationServer.aspx#RefreshData">See the suggestion for a VS extension to Refresh Report Data</a></p>
        </li>

        <li>
            <h2>
                <a name="ThreeConcepts"></a>Do you explain the 3 concepts to a client?</h2>
            <p>
                <b>Step 1: Line up some ducks</b><br />
                <dl class="image">
                    <dt>
                        <img src="Images\ducksinrow.jpg" alt="Ducks in row" /></dt>
                </dl>
                <br />
                Lining up the ducks means to get ready. To get the project ready you need to know
                the client's requirements. The best way to track requirements is through User Stories.
                Present the client with these <a href="http://rules.ssw.com.au/Documents/SSWStoryCard.pdf" class="pdf">
                    User Story Cards</a> and get them to start filing in what they want to get out
                of the application.
            </p>
            <dl class="image">
                <dt>
                    <img src="Images\filledStoryCard.jpg" alt=" Filled Story Card" /></dt>
                <dd>
                    Figure: Clear concise requirements captured in a User Story Card</dd>
            </dl>
            <p>
                <b>Step 2: Do a few practice shots</b>
                <dl class="image">
                    <dt>
                        <img src="Images\target.jpg" alt="Target" /></dt>
                </dl>
                Start preparing. Get the user story cards and enter them into TFS. Pick the high
                priority ones to do in this iteration and start the mockups and test cases.
            </p>
            <p>
                <b>Step 3: Do it for real (start the race)</b>
                <dl class="image">
                    <dt>
                        <img src="Images\startofrace.jpg" alt="startofrace" /></dt>
                </dl>
                Once everything has been prepared you can start the real development work.
            </p>
        </li>
        <li>
            <h2>
                <a name="TeamProjectAndTFSPortal">Do you know when to create the team project and 'TFS
                    Portal' for a prospect/client?</a></h2>
            <ol>
                When a prospect/client is ready to move forward (typically after a <a href="/ssw/Standards/Rules/RulesToBetterProjectManagementWithTFS.aspx#PrintedStoryCard">
                    specification review</a>), you need to create a place to collaborate. Here is
                how you create a TFS Portal:
                <li>Create a TFS project (to track the work items and releases)</li>
                <li>Create a SharePoint project site</li>
            </ol>
            <p>
                You can do both of these at the same time by creating a TFS project and use a SharePoint
                dashboard.
                <dl class="image">
                    <dt>
                        <img src="Images\CreateNewSPSite.jpg" alt="Create New SP Site " /></dt>
                    <dd>
                        Figure: Choose to create a new SharePoint site when creating TFS project</dd>
                </dl>
            </p>
            <p>
                Note: It is also possible to <a href="/ssw/Standards/Rules/RulesToBetterProjectManagementWithTFS.aspx#CreateProjectPortal">
                    create a new SharePoint site afterwards and attach it to a TFS project, via this
                    hack</a>
            </p>
            <ol>
                Next, make sure that all the documents for this client are kept in the same place.
                <li>Move all the documents you've created for this client, from the 'Prospects Site
                    (Document Library)' into the new project site.</li>
            </ol>
            <br />
            <ol>
                A few other things to do frequently do right away
                <li>If required, create an external user account for the Product Owner. This enables
                    the client access to your SharePoint Extranet to see the documents, sites and reports.
                </li>
                <li>If required, let the client know they can upload additional files, or download a
                    copy of the project for testing and deployment.</li>
                <li>Check permissions and access rights</li>
                <li>Consider synchronizing the project documents offline via Outlook or SharePoint Workspaces</li>
                <li>Edit the SharePoint site landing wiki-page and upload some pictures of the team</li>
            </ol>
            <dl class="image">
                <dt>
                    <img src="Images\AddImgToTeamSite.jpg" alt="Add an image To Team Site once the TFS portal is ready " /></dt>
                <dd>
                    Figure: Once your 'TFS Portal' is ready, add a picture of the team site, prior to
                    letting them know about the new site</dd>
            </dl>
        </li>
        <li>
            <h2>
                <a name="CreateProjectPortal"></a>Do you know how to create your Project Portal
                (for existing TFS Team Projects)</h2>
            <p>
                Unfortunately the TFS team did not have time to build the feature to create a SharePoint
                site, after the project is created. Next version, we hope.
            </p>
            <ol>
                There is a goofy work around.
                <li>Create a new temporary project (with a SharePoint site for it) </li>
                <li>Disable the site for the new project, by checking off '[x] Enable team project portal'</li>
                <li>Go back to the old TFS project</li>
                <li>Enable the site for the original one (pointing to that newly created site) </li>
                <li>Finally, delete the temporary project you created</li>
            </ol>
            <p>
                More info at <a href="http://www.ewaldhofman.nl/post/2009/08/13/Configure-TFS-portal-afterwards.aspx ">
                    http://www.ewaldhofman.nl/post/2009/08/13/Configure-TFS-portal-afterwards.aspx
                
                </a>
            </p>
        </li>
        <li>
            <h2>
                <a name="SPWithTFS2010"></a>Do you know how to get SharePoint 2010 working with
                TFS 2010?</h2>
            <p>
                There are some steps to getting Sharepoint 2010 working with Team Foundation Server
                2010 to get some lovely dashboards</p>
            <dl class="image">
                <dt>
                    <img src="Images\SPWithTFS2010.jpg" alt="Dashboards take the guessing out of the Project Planning and estimation" /></dt>
                <dd>
                    Figure: Dashboards take the guessing out of Project Planning and estimation. Plus
                    writing these reports would be boring!</dd>
            </dl>
            <p>
                Follow <a href="http://blog.hinshelwood.com/archive/2010/05/03/integrate-sharepoint-2010-with-team-foundation-server-2010.aspx">
                    Integrate SharePoint 2010 with Team Foundation Server 2010 </a>
            </p>
        </li>
        <li>
            <h2>
                <a name="KeepSubjectTreadingUsingTeamCompanion"></a>Do you know how to make a better
                subject and keep threading using TeamCompanion?</h2>
            <p>
                For the most of time, when we put email as an attachment in TFS via TeamCompanion,
                we keep the original email subject and the Title in TFS consistent so the threading
                won't be lost. However, sometimes we need to change the Title when the original email
                subject is not crystal clear or redundant.
                <br />
                We need to follow the pattern if we need to change the Title as below.
                <br />
                [New Subject] WAS: [Old Subject]
            </p>
            <dl class="badImage">
                <dt>
                    <img alt="" src="/ssw/Standards/Rules/Images/KeepTreading - Bad.jpg" width="885"
                        height="496" />
                </dt>
                <dd>
                    Figure: Bad Example - The Title is totally changed and the treading is broken.
                </dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img alt="" src="/ssw/Standards/Rules/Images/KeepTreading - Good.jpg" width="725"
                        height="478" />
                </dt>
                <dd>
                    Figure: Good Example - Keep the old Title to keep the threading.
                </dd>
            </dl>
        </li>
        <li>
            <h2>
                <a name="ADAccounts"></a>Do you check that the 3 services are running on their own
                AD accounts</h2>
            <dl class="badImage">
                <dt>
                    <img src="images/DefaultAdministrationAccount.jpg" alt="Default Administrator account " />
                </dt>
                <dd>
                    Figure: Bad example - using the default Administrator account</dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img src="images/CreateNewAccount.jpg" alt="Create new account " />
                </dt>
                <dd>
                    Figure: Better example - At least don't use the Administrator account, create a
                    new account</dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img src="images/SpecificADAccount.jpg" alt="Specific AD Account " />
                </dt>
                <dd>
                    Figure: Best example - A specific AD account for each major server</dd>
            </dl>
            <dl class="badImage">
                <dt>
                    <img src="images/NetworkAdminName.jpg" alt="Network admin name" />
                </dt>
                <dd>
                    Figure: Bad example - using the network admin's name</dd>
            </dl>
            <dl class="goodImage">
                <dt>
                    <img src="images/SQLServerAccount.jpg" alt="SQL Server Account" />
                </dt>
                <dd>
                    Figure: Good example - a specific SQL Server account being used (Suggestion: Make
                    the text box wider and link to the one in 'Services')</dd>
            </dl>
        </li>
        <li>
            <h2>
                <a name="SPFoundationForTFS"></a>Do you know to use SharePoint over SharePoint Foundation
                for TFS?</h2>
            <p>
                There are advantages to using Microsoft Office SharePoint Server (MOSS) over SharePoint
                Foundation when plugging TFS into SharePoint.
            </p>
            <ul>
                <li><b>Better reporting</b> - Excel Services instead of Reporting Services</li>
                <li><b>Dashboards</b> &#8211; Pulling all the information together under nice dynamic headings</li>
                <li><b>Customizing</b> &#8211; It is much easier to customize Excel reports than Reporting
                    Services</li>
            </ul>
            <dl class="image">
                <dt>
                    <img src="images/ProjectDashboard.jpg" alt="Project Dashboard - limited dashboard and reports" />
                </dt>
                <dd>
                    Figure: OK Example &#8211; Using SharePoint Foundation you get limited dashboards and
                    reports</dd>
            </dl>
            <p>
                See <a href="http://blogs.msdn.com/b/sunder/archive/2010/02/18/reporting-in-team-foundation-server-2010-part-5-sharepoint-foundation-dashboard.aspx">
                    Reporting in Team Foundation Server 2010 - Part 5: SharePoint Foundation Dashboard</a>
                for more information</p>
            <dl class="image">
                <dt>
                    <img src="images/BugDashboard.jpg" alt="Bug Dashboard" />
                </dt>
                <dd>
                    Figure: Ultimate example &#8211; The bug dashboard gives you easy access to all the data</dd>
            </dl>
            <p>
                See <a href="http://blogs.msdn.com/b/sunder/archive/2010/01/05/reporting-in-team-foundation-server-2010-part-2-sharepoint-dashboards-sharepoint-server-dashboard.aspx">
                    Reporting in Team Foundation Server 2010 &#8211; Part 2: SharePoint Dashboards: SharePoint
                    Server dashboard</a> for more information</p>
            <p>
                See also: <a href="/ssw/Standards/Rules/RulesToBetterProjectManagementWithTFS.aspx#SPWithTFS2010">
                    Do you know how to get SharePoint 2010 working with TFS 2010?</a>
            </p>
        </li>
        <li>
            <h2>
                <a name="WikiOrDocLibrary"></a>Do you know wither to use a Wiki or Document Library?</h2>
            <p>
                When you create a new team project it has both a Document Library and a Wiki and
                you should know
            </p>
            <dl class="image">
                <dt>
                    <img src="images/TeamInfomation.jpg" alt="Add team information" />
                </dt>
                <dd>
                    Figure: Always add team information to a Wiki and Client communication to the Document
                    Library</dd>
            </dl>
            <ul>
                We recommend:
                <li>Document Library
                    <ul>
                        <li>for documents received from (or sent to) the client</li>
                    </ul>
                </li>
                <li>Wiki
                    <ul>
                        <li>for collaboration within the team</li>
                        <li>Server settings and connection details</li>
                        <li>Hyperlinks to reading material</li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            <h2>
                <a name="KeepServerDetails"></a>Do you know where to keep server details</h2>
            <p>
                If you need to store details about a server or configuration of that server for
                use on your project you should store it in a Wiki.</p>
            <dl class="image">
                <dt>
                    <img src="images/WikiExample.jpg" alt="Wiki is a good example for editing" />
                </dt>
                <dd>
                    Figure: Good example &#8211; Things on a Wiki can easily be edited and quickly checked</dd>
            </dl>
            <p>
                See <a href="#WikiOrDocLibrary">Do you know wither to use a Wiki or Document Library?</a></p>
        </li>
        <li>
            <h2>
                <a name="TFSMaster"></a>Do you have a TFS Master?</h2>
            Please read the rule here. <a href="/ssw/Standards/Rules/RulesToBetterVersionControlWithTFS(AKASourceControl).aspx#TFSMaster">
                Do you have a TFS Master?</a> </li>
    </ol>
    <h2>
        Links</h2>
    <ul>
        <li><a href="/ssw/Standards/DeveloperGeneral/TFS.aspx">The Best 3rd Party TFS Tools</a></li>
        <li><a href="/SSW/Redirect/personifydesign.htm">Personify Design TeamLook</a></li>
        <li><a href="/ssw/Redirect/TeamCompanion.htm">Team Companion</a></li>
    </ul>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JK">Justin King</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=ML">Mark Liu</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=LX">Lei Xu</a><br />
    </p>
</asp:Content>
