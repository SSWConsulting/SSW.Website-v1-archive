<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="How to create and use mail merge templates in Microsoft CRM?" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532304D6963726F736F667425323043524D')">
            Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <h3>
            How to create and use mail merge templates in Microsoft CRM?</h3>
        <ol>
            <li><a href="#CreateMMTemplate">Do you know how to create mail merge template in Microsoft
                CRM?</a></li>
            <li><a href="#EditMMTemplate">Do you know how to edit a mail merge template?</a></li>
            <li><a href="#CRMDataField">Do you know how to insert CRM data field in your template?</a></li>
            <li><a href="#SendEmail">Do you know how to send email using Microsoft CRM mail merge
                template?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="CreateMMTemplate"></a>Do you know how to create mail merge template in
                    Microsoft CRM?</h2>
                <p>
                    The following instructions to create Microsoft CRM mail merge template require you
                    to have Microsft CRM Outlook add-in installed on your outlook, and you need to open
                    outlook while creating the template:
                    <ol>
                        <li>Go to <b>Settings</b> from Microsoft CRM home page.</li>
                        <li>Click <b>Templates</b> on the left navigation panel.</li>
                        <li>Click <b>Mail Merge Templates</b> on right content panel.</li>
                        <li>Click button <b>New</b> to create the new mail merge template.</li>
                        <li>Fill in the mail merge template details and leave the <b>File Attachment</b> fields
                            empty.</li>
                        <dl class="image">
                            <dt>
                                <img src="Images/CRMMailMergeTemplateDetails.gif" alt="Fill in mail merge template details"
                                    width="882" height="573"></dt>
                            <dd>
                                Figure: Fill in mail merge template details</dd>
                        </dl>
                        <li>Click the <b>Save</b> button to save your template.</li>
                        <li>After you save the template, click the button <b>Create Template in Word</b>
                            to start creating the template content.</li>
                        <dl class="image">
                            <dt>
                                <img src="Images/CRMMailMergeTemplateCreateTemplate.gif" alt="Create Mail Merge Template"
                                    width="887" height="575"></dt>
                            <dd>
                                Figure: Create Mail Merge Template</dd>
                        </dl>
                        <li>A Microsoft Word document will be open on your machine. You'll see a popup about
                            <b>Mail Merge Recipients</b>, click <b>Ok</b> to proceed.</li>
                        <li>Follow on screen instructions on the right panel of the word document to create
                            the template.</li>
                        <dl class="image">
                            <dt>
                                <img src="Images/CRMMailMergeTemplateWordDoc.gif" alt="Mail Merge Template Document"
                                    width="809" height="655"></dt>
                            <dd>
                                Figure: Follow the instructions to create template content</dd>
                        </dl>
                        <% If (Server.MachineName = ConfigurationManager.AppSettings.Get("internalMachineName")) Then %>
                        <div class="interInfoBoxSide" style="width: 50%; text-align: left;">
                            <h1>
                                Attention: SSW Developers</h1>
                            <p style="font-weight: normal;">
                                Please hightlight the block of text that you want user to edit in yellow.</p>
                        </div>
                        <% End If %>
                        <li>At the last step of Mail Merge instructions in Microsoft Word, click <b>Upload
                            Template To CRM</b> and click <b>Yes</b> on the popup window to save your template
                            in CRM.</li>
                        <dl class="image">
                            <dt>
                                <img src="Images/CRMMailMergeTemplateSaveToCRM.gif" alt="Save Mail Merge Template To CRM"
                                    width="806" height="650"></dt>
                            <dd>
                                Figure: Save Mail Merge Template To CRM</dd>
                        </dl>
                    </ol>
                </p>
            </li>
            <li>
                <h2>
                    <a name="EditMMTemplate">Do you know how to edit a mail merge template?</a>
                </h2>
                <p>
                    <ol>
                        <li>Go to <b>Settings</b> from Microsoft CRM home page.</li>
                        <li>Click <b>Templates</b> on the left navigation panel.</li>
                        <li>Click <b>Mail Merge Templates</b> on right content panel.</li>
                        <li>Double click the template that you want to edit.</li>
                        <li>On top of the template details window, click <b>Edit Template in Word</b>.</li>
                        <li>A word document will be open like when you create the template, from there you can
                            follow on screen instructions to edit the template content.</li>
                        <% If (Server.MachineName = ConfigurationManager.AppSettings.Get("internalMachineName")) Then %>
                        <div class="interInfoBoxSide" style="width: 50%; text-align: left;">
                            <h1>
                                Attention: SSW Developers</h1>
                            <p style="font-weight: normal;">
                                Please hightlight the block of text that you want user to edit in yellow.</p>
                        </div>
                        <% End If %>
                        <li>At the last step of the Mail Merge instructions, click <b>Upload Template To
                            CRM</b> and click <b>Yes</b> on the popup window, to save the template in the current
                            template record that you open in Microsoft CRM.</li>
                        <dl class="image">
                            <dt>
                                <img src="Images/CRMMailMergeTemplateSaveToCRM.gif" alt="Save Mail Merge Template To CRM"
                                    width="806" height="650"></dt>
                            <dd>
                                Figure: Save Mail Merge Template To CRM</dd>
                        </dl>
                    </ol>
                </p>
            </li>
            <li>
                <h2>
                    <a name="CRMDataField">Do you know how to insert CRM data field in your template?</a>
                </h2>
                <p>
                    While editing your mail merge template in Microsoft Word, you can add CRM data field
                    in the template.For example, I can add the contacts' first name in my mail merge
                    templat
                    <ol>
                        <li>While you're editing your mail merge template in Microsoft Word, click the <b>
                            Mailings</b> tab.</li>
                        <dl class="image">
                            <dt>
                                <img src="Images/CRMMailMergeTemplateWordMailings.gif" alt="Mailings tab in the mail merge template"
                                    width="562" height="48"></dt>
                            <dd>
                                Figure: Click the Mailings tab</dd>
                        </dl>
                        <li>Click <b>Insert Merge Field</b> on the Ribbon.</li>
                        <li>Select the field from Microsoft CRM that you want to insert, in this case I'm inserting
                            contact's first name.</li>
                        <dl class="image">
                            <dt>
                                <img src="Images/CRMMailMergeTemplateInsertFirstname.gif" alt="Insert contact's first name in mail merge template"
                                    width="885" height="481"></dt>
                            <dd>
                                Figure: Insert contact's first name in mail merge template</dd>
                        </dl>
                        <% If (Server.MachineName = ConfigurationManager.AppSettings.Get("internalMachineName")) Then %>
                        <div class="interInfoBoxSide" style="width: 50%; text-align: left;">
                            <h1>
                                Attention: SSW Developers</h1>
                            <p style="font-weight: normal;">
                                Please hightlight your CRM field with a green background so the user know that the
                                text is Microsoft CRM field.</p>
                        </div>
                        <% End If %>
                        <li>Finish your editing your template and upload the template to CRM.</li>
                    </ol>
                </p>
            </li>
            <li>
                <h2>
                    <a name="SendEmail">Do you know how to send email using Microsoft CRM mail merge template?</a>
                </h2>
                <p>
                    You can use mail merge template, to send email to account, contact... Each mail
                    merge template is associated to an entity, and you can only use the mail merge template
                    that associated to the entity you're sending email to. In the following instructions,
                    I'm sending email to the contact entity:
                    <ol>
                        <li>From Microsoft CRM homepage, click <b>Contacts</b> to view the list of contacts.</li>
                        <li>Search for the contact that you want to send email to.</li>
                        <li>Highlight the contact that you want to send email to, and click the mail merge
                            button.</li>
                        <dl class="image">
                            <dt>
                                <img src="Images/CRMMailMergeTemplateMailMergeButton.gif" alt="Mail Merge Button"
                                    width="695" height="332"></dt>
                            <dd>
                                Figure: Mail merge button</dd>
                        </dl>
                        <li>At <b>Select the mail merge type</b>, select Email.</li>
                        <li>At <b>Start with a</b>, select either personal mail merge template (this is your
                            own template), or the organization template (this is the template that is used by
                            the whole organizaion).</li>
                        <li>At <b>Merge</b>, check <b>Selected records on current page</b> check box.</li>
                        <li>Click <b>Ok</b></li>
                        <dl class="image">
                            <dt>
                                <img src="Images/CRMMailMergeTemplateMailMergeDetails.gif" alt="Mail Merge details"
                                    width="616" height="659"></dt>
                            <dd>
                                Figure: Fill in the mail merge details</dd>
                        </dl>
                        <li>A Microsoft Word document is open, and the <b>Mail Merge Recipients</b> window is
                            pop-up with the list of contacts that you're sending email to.</li>
                        <dl class="image">
                            <dt>
                                <img src="Images/CRMMailMergeTemplateRecipientList.gif" alt="Mail Merge Recipients"
                                    width="628" height="462"></dt>
                            <dd>
                                Figure: Mail Merge Recipients</dd>
                        </dl>
                        <div class="infoBox" style="width: 50%; text-align: left;">
                            <h4>
                                Attention</h4>
                            <p>
                                If you don't see a contact in the recipient list, that means your contact either
                                has <b>Do Not Emails</b> or <b>Do Not Bulk Emails</b> field set to be <b>Do Not Allow</b>
                            </p>
                        </div>
                        <li>Follow the on screen instructions in Microsoft Word and edit the content of the
                            email that you want to send.</li>
                        <% If (Server.MachineName = ConfigurationManager.AppSettings.Get("internalMachineName")) Then %>
                        <div class="interInfoBoxSide" style="width: 50%; text-align: left;">
                            <h1>
                                Attention: SSW Developers</h1>
                            <p style="font-weight: normal;">
                                Please remove the yellow highlight for the block of the text that need to be filled
                                in by you and the green highlight for the CRM field while you're editing the email.</p>
                        </div>
                        <% End If %>
                        <li>At the last step of the mail merge instructions in Microsoft Word, click <b>Electronic
                            Mail</b> and fill in the subject line for your email.</li>
                                                    <dl class="image">
                            <dt>
                                <img src="Images/CRMMailMergeTemplateSendingEmail.gif" alt="Fill in subject line for email"
                                    width="1026" height="494"></dt>
                            <dd>
                                Figure: Fill in subject line for email</dd>
                        </dl>
                        <li>Click <b>Ok</b> to proceed to next step.</li>
                        <li>Now because we're using CRM outlook, CRM mail merge will give you an option to create the activities that associated to this email. Check <b>Create Microsoft Dynamic CRM Activities</b> radio button, and uncheck the <b>Include an ubsubcribe link in the email message</b> to create the activities.</li>
                                                                            <dl class="image">
                            <dt>
                                <img src="Images/CRMMailMergeTemplateAcitivity.gif" alt="Create activies for emails sending out using mail merge"
                                    width="606" height="586"></dt>
                            <dd>
                                Figure: Create activies for emails sending out using mail merge</dd>
                        </dl>
                        <li>Click <b>Ok</b> to send emails using your outlook.</li>
                    </ol>
                </p>
            </li>
        </ol>
        <h2>
            Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=ZV">Zune Vien</a>
            <br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
        </p>
    </div>
</asp:Content>
