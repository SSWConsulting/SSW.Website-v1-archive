<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW - Rules to Better Email" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If Not Page.IsPostBack Then
            Dim head As HtmlHead = Page.Header
            Dim hm As HtmlMeta = CType(head.FindControl("keywords"), HtmlMeta)
            If hm IsNot Nothing Then
                hm.Content = hm.Content + ", protocol"
            End If
        End If
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
    <div id="mainContent">
        <div class="quoteRightWrap">
            <blockquote>
                Your website has an answer for everything! Thanks for the tips.</blockquote>
            <p>
                Sophie Vassarotti - Oxon Data Systems</p>
        </div>
        <p>
            Often emails are rambling and unorganized, forcing the reader to wade through
            blocks of totally useless text. When it comes to written communication, less is
            more. Having hundreds of emails in your Inbox is not uncommon. But it's very uncommon
            to find people who successfully manage their Inbox. Instead they let their Inbox
            become a great black hole with no business value. Email has a bad name in business
            primarily because people don't treat email correctly. Email can be a vital tool
            to your company and your software development project, but it has to be managed.
            Email should be an accurate record of requests, conversations, and decisions. Emails
            are legal documents and should be treated with the same care as any other correspondence
            with clients or employees. Email is also in an extremely effective task tracking
            tool, and requests made by email should be treated with the same seriousness as Project
            Plans and other directives, for email can be seen as the protocol between the sender
            and receiver. Here are a series of email rules / etiquette that govern how we use
            our Inbox.
        </p>
        <p>
            Do you agree with them all? Are we missing some? Email us your tips, thoughts or
            arguments.&nbsp;<a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230456D61696C')">
                Let us know</a> what you think.</p>
        <p>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor">
                <tr>
                    <td>
                        <p>
                            <b>*** Update ***</b> Instead of manually implementing these rules, use <a href="/ssw/LookOut">
                                SSW LookOut!</a> to automatically implement them for you. If you use Microsoft
                            Outlook as your email client, <a href="/ssw/Download/Download.aspx?GroupCategoryID=4EXOUT">
                                download</a> it and give it a go.
                        </p>
                    </td>
                </tr>
            </table>
        </p>
        <p>
            <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" />
            Indicates important rule</p>
        <div class="TableOfContents">
            <b>Rules to Better Email</b>
            <ol>
                <li><a href="#TasksNotCommunication">Do you use email for tasks - not communication?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#InboxTaskListOnly">Is your inbox a task list only?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#ReplyAndDelete">Do you reply DONE and delete the email?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#SavedItems">Do you save important items in a separate folder?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#KeepEmailHistory">Do you keep the history of an email?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#SendUnnecessaryEmails">Do you send unnecessary emails?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#HurrySomeoneUp">Do you know how to hurry someone up?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#ImportanceofaGoodSubject">Do you realize the importance of a good email
                    Subject?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#WhenToChangeEmailSubject">Do you know when you should change a subject?</a></li>
                <li><a href="#SortbyReceivedThenImportant">Do you sort your emails by Received AND Important?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#KnowWhenWhenNottoUseEmail">Do you know when, and when NOT, to use email?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#LessIsMore">Do you realise that less is more?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#IncludeOriginal">Do you include the original content in your email when
                    asking for modifications to be made?</a></li>
                <li><a href="#BugReporting">Do you know the right way to report bugs?</a></li>
                <li><a href="#HowToUseBalloons">Do you know how to use balloons in screenshots for instructions?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#Voting">Do you use the voting option appropriately?</a></li>
                <li><a href="#Clarification">Do you seek Clarification Via the Telephone First</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#PrepareAndConfirm">Do you prepare, then confirm conversations/decisions?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#EmailToMyself">Do you send yourself emails?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#CCEveryone">Do you CC everyone and reply to all when necessary?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#BulkEmail">Do you not send bulk email in the TO field if all parties are not contacts of each other?</a></li>
                <li><a href="#UseEmailSignatures">Do you use email signatures?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#ImagesInEmailSignatures">Do you avoid using images in your email signatures?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#EmailInDB">Do you keep your email addresses in a company database?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#KeepSentItems">Do you always keep your sent items?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#BetterLateThanNever">Do you think that when replying to emails it's better
                    late than never?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#MinimiseOutlookDistractions">Do you minimize Outlook distractions?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#FollowUp">Do you follow up emails effectively?</a></li>
                <li><a href="#2WaysToFollowUp">Do you know the two ways to follow up a task?</a></li>
                <li><a href="#Preempt">Do answer all questions, and pre-empt further ones?</a></li>
                <li><a href="#AddContentReasoningInEmails">Do you add context/reasoning to your emails?</a></li>
                <li><a href="#Wizard">Do you avoid the Rules Wizard?</a></li>
                <li><a href="#Active">Do you use active language in your emails?</a></li>
                <li><a href="#Sarcasm">Do you know that people misunderstand sarcasm in email?</a></li>
                <li><a href="#Grammar">Are you careful with your spelling, grammar and punctuation?</a></li>
                <li><a href="#AddSomeone">Do you know how to add someone into the conversation?</a></li>
                <li><a href="#RecurringTasks">Use Tasks only for Recurring Appointments</a></li>
                <li><a href="#ManageDeletedItems">Do you manage your Deleted Items?</a></li>
                <li><a href="#IncludeNameFirstLine">Do you include the name of the person you address
                    as the first line?</a></li>
                <li><a href="#OneEmailAtATime">Do you send tasks one email at a time?</a></li>
                <li><a href="#RespondEachEmailIndividually">Do you respond to each email individually?</a></li>
                <li><a href="#KeeptheContext">Do you use &gt; and indentation to keep the context?</a></li>
                <li><a href="#ReplyInline">When you reply inline, do you use a different color?</a></li>
                <li><a href="#IncludeBeforeAfter">When asked to change content, do you reply with the
                    content before and after the change?</a></li>
                <li><a href="#AvoidSensitiveInformation">Do you avoid emailing sensitive information?</a></li>
                <li><a href="#RememberAttachment">Do you always remember your attachment?</a></li>
                <li><a href="#LargeAttachment">Do you avoid huge images or attachments in your email?</a></li>
                <li><a href="#UseWORDAsEditor">Do you use Word as your Editor?</a></li>
                <li><a href="#ResistTheUrgetoSpam">Do you resist the urge to SPAM to an email alias?</a></li>
                <li><a href="#DontSendImmediately">Do you avoid sending your emails immediately?</a></li>
                <li><a href="#RecallEmails">Do you know how to recall an email?</a></li>
                <li><s><a href="#SortbyClientID">Can you sort your emails by ClientID?</a></s></li>
                <li><a href="#ManageEmailAccounts">Do you manage your email accounts?</a></li>
                <li><a href="#RequestReceipt">Do you use "Request a Receipt" selectively?</a></li>
                <li><a href="#MakeAppointments">Do you send Outlook Calendar appointments when appropriate?</a></li>
                <li><a href="#someonescalendar">Do you know how to add an appointment in someone else's
                    calendar?</a></li>
                <li><a href="#BetterMeeting">Have you done follow-up for tomorrow appointment?</a></li>
                <li><a href="#AppointmentSubject">Appointments - Do you see who is coming to the meeting
                    in the subject?</a></li>
                <li><a href="#MeetingTimeDate">Do you avoid putting the time and date into the text
                    field of a meeting?</a></li>
                <li><a href="#DontUseAutoArchive">Do you avoid using Auto Archive?</a></li>
                <li><a href="#EmailsArentYourProperty">Do you remember that Emails aren't your property?</a></li>
                <li><a href="#MonitorCompanyEmail">Do you monitor company email?</a></li>
                <li><a href="#DontUseBadWords">Do you avoid using words that make your email like junk
                    mail?</a></li>
                <li><a href="#Unsubscribe">Do you unsubscribe from newsletters?</a></li>
                <li><a href="#ReplyAllOnBcc">Do you avoid replying to all when you are only BCC'ed?</a></li>
                <li><a href="#Outlook2003Security">Do you use the security options in Outlook 2003?</a></li>
                <li><a href="#Offlineemail">Do you use Offline Email?</a></li>
                <li><a href="#OutofOffice">Do you avoid using Out of Office?</a></li>
                <li><a href="#FixUpHistory">Do you fix up the history?</a></li>
                <li><a href="#ReplyToFreeSupport">How do you reply to free support requests which would
                    need more than 20 minutes work?</a></li>
                <li><a href="#SearchingSentItem">Do you use a search tool to find your lists of sent
                    items instead of doing it manually?</a>
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
                <li><a href="#SentToYourself">Do you assume necessary tasks will get approval?</a></li>
                <li><a href="#WorkOffline">Do you work offline with the current release public folder?</a></li>
                <li><a href="#ClientAttachment">Are you aware of the importance of client's attachment?</a></li>
                <li><a href="#ReduceSpam">Do you know how to reduce spam?</a></li>
                <li><a href="#PlusOne">Do you know when to use +1?</a></li>
                <li><a href="#EmailwithEstimation">Do you put the estimation at the bottom of the email
                    when sending a task to self?</a></li>
                <li><a href="#ReplyBug">Do you know how to reply a bug or problem reported?</a></li>
                <li><a href="#HandOverTask">Do you know how to hand over tasks to others?</a></li>
                <li><a href="#AttachEmail">Do you avoid attaching emails to emails?</a></li>
                <li><a href="#DoneTasks">Do you add a quality control step for checking "DONE" tasks?</a></li>
                <li><a href="#Attachment">Do you know not to use email to forward client attachments?</a></li>
            </ol>
        </div>
        <ol>
            <li>
                <h2>
                    <a name="TasksNotCommunication"></a>Do you use email for tasks only - not communication?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    Email is a very powerful business tool. The main problem, however, is that for most
                    people it is out of control - emails build up until they are impossible to manage.
                    To help minimize mailbox clutter, try these tips:</p>
                <ul>
                    <li>Send emails that contain clear tasks, not banter</li>
                    <li>If the email you receive is not clear, call up the person who sent it and ask for
                        more information. Too many people reply to the unclear email asking for clarification,
                        which wastes time and does not guarantee a response.</li>
                </ul>
                <p>
                    Using your mailbox as a task list also saves you from having to use inefficient
                    paper-based cards for your extreme programming work! - That will make Dr. Neil cranky
                    :)</p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/EmailBad.gif" alt="Bad email" /></dt><dd>Figure: A bad email is one
                            that gives no clear action items</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/EmailGood.gif" alt="Good email" /></dt><dd>Figure: A good email has
                            a clear next step action point</dd></dl><br />
                 <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/EmailForTasksNotCommunication.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/EmailForTasksNotCommunication.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="InboxTaskListOnly"></a>Is your inbox a task list only?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    Most people have no idea of how to manage their inbox effectively. Emails should be
                    treated as a list to do. As you complete a task you can just delete the email.</p>
                <p>
                    Your inbox should only contain 'tasks', that is actionable items that are on your
                    list of things to do. Everything that is in your 'Inbox' (including sub folders)
                    should only be to-do items. So do it now, delete all emails you have done, or move
                    them out of the folder if you want to keep them for reference.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/Inbox.gif" alt="Inbox" border="1" width="186" height="70" /></dt><dd>Figure:
                            Everything in your Inbox (and subfolders) is still "to-do"</dd></dl>
                <p>
                    In fact you could go so far as to say you should not do anything unless you have an
                    email telling you to do that task. (Which is why we <a href="#SentToYourself">send ourselves
                        emails</a>.)
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/InboxTaskListOnly.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/InboxTaskListOnly.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ReplyAndDelete"></a>Do you reply DONE and delete the email?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    If someone asks you to perform a task by email, don't
                    reply "OK, I will do that" or fail to reply at all. Instead, do the task and reply
                    "DONE" when the task has been completed and delete the email. This way the person
                    requesting the task knows that it has been done, and doesn't waste time following
                    you up. If you don't agree with the work requested, reply &quot;no&quot; and give
                    a reason. 
                </p>
                <p>
                    If you find that the task is already done, then reply "ALREADY DONE".
                </p>
                <p>
                    If you find:
                </p>
                <ul>
                    <li>You don't agree with the task</li>
                    <li>Are unable to complete the task</li>
                </ul>
                <p>
                    Then simply reply "NOT DONE - the reason is XXX". 
                </p>
                <p>
                    <strong>
                        Tip 1: Provide Detail in your "DONE"
                    </strong>
                </p>
                <p>
                    In any reply include relevant information, such as the URL and the code
                    or text that has been updated, which allows the person requesting the work to check
                    what was done and allows for offline reading.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/email_done_bad.jpg" alt="Bad Done Email" border="1"
                            width="484" height="180" />
                    </dt>
                    <dd>
                        Figure: Example of a Bad "DONE" email.</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/email_done_good.jpg" alt="Good Done Email"
                            border="1" width="494" height="690" />
                    </dt>
                    <dd>
                        Figure: Good Example of "DONE" email as it has both the link and the changed text.</dd></dl>
                <p>
                    <strong>
                        Tip 2: Reply "DONE" if you have a task that is > 4 hours
                    </strong>
                </p>
                <p>
                    Ideally all tasks are less than 4 hours. If you are given a task that is going to take days. Then split it by doing the first 4 hours.
                </p>
                <p>
                    <strong>Q: </strong>What if you can do 8 out of 9 items? Can I reply "DONE"?
                </p>
                <p>
                    <strong>A: </strong>Yes. If there are multiple items of work in an email and you
                    can't do them all at once (in say 4 hours), reply "DONE" to each item individually,
                    and put yourself in the TO: so you can go back and do the remaining items. (See
                    rule "To Myself")</p>
                <p>
                    <strong>
                        Tip 3: Don't consolidate emails
                    </strong>
                </p>    
                
                <p>
                    If you get multiple emails, don't consolidate. It is still best to
                    reply to each email individually, rather than compile the information into one email.
                    This way the person requesting the work hasn't <a href="#KeepEmailHistory">lost the
                        email history</a> and can understand what the work done relates to.</p>
                <p>
                    <strong>
                        Tip 4: Keep your inbox clean
                    </strong>
                </p>
                <p>
                    There is no point keeping emails that just clutter your Inbox. You don't need to keep the original email because after you have replied "DONE" there is a copy in Sent Items. If you must keep an email, then move to your "Saved Items" folder.</p>
                <p>
                    <strong>
                        Tip 5: When appropriate use text instead of an image
                    </strong>
                </p>
                <div class="greyBox">
                    To: Ross<br />
                    From: Jliu<br />
                    Subject: RE: BUG on Product.aspx<p>
                        DONE - There was a problem with the SQL. I added the following:
                    </p>
                    <pre>SELECT
                                    
     ProdName = CASE WHEN Download.ProdCategoryID &lt;&gt; ''

     THEN ProdCategory.CategoryName
     ELSE Download.ProdName END,
     Downloads = (SELECT Count(*) FROM ClientDiary 
     WHERE ClientDiary.DownloadID = Download.DownloadID
     AND ClientDiary.CategoryID = 'DOWN' AND ClientDiary.DateCreated &gt; '01/01/2000'
     AND ClientDiary.DateCreated &lt; '01/01/2003')

     FROM

     Download
     LEFT JOIN ProdCategory ON Download.ProdCategoryID=ProdCategory.CategoryID

     ORDER By Downloads DESC 
                    </pre>
                </div>
                <p>
                <b>Figure: Good example - Most of time screens need images. However this "DONE" uses text instead of an image. It is easier to search and easy to reply with a modification</b></p>
                <p>
                    <strong>
                        Tip 6: Handle an email once
                    </strong>
                </p>
                <p>
                    Follow a tip I got from my accounting days... &quot;A sign of an efficient
                    person is they handle a piece of paper once&quot;. When you get an email - don't
                    just open it have a quick look and close it with the idea that you will go back
                    to it later. Read it, make a decision and do the action. Delete as many emails as
                    you can on the first go.
                </p>
                <p>
                    <strong>
                        Tip 7: Use a Email tool for Outlook
                    </strong>
                </p>
                <table class="clsSSWProductTable" summary="LookOut" style="width: 550">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/eXtremeEmails/">SSW eXtreme Emails! for Outlook</a>
                            that you can use to reply "DONE".
                            <br />
                            <img border="0" src="Images/eXtremeEmails_Incident.jpg" alt="SSW eXtreme Emails! add-in for Outlook"
                                width="623" height="102" />
                        </td>
                    </tr>
                </table>
                <br />
                <p>
                    <strong>
                        Tip 8: Consider alternatives in a team environment
                    </strong>
                </p>
                <p>
                    In a developer team environment, it is better to move emails to bug tracking systems eg.: </p>
                <ol>
                    <li>Exchange Public Folders (with SSW Extreme emails)</li>
                    <li>TFS Work Items</li>
                    <li>JIRA</li>
                </ol>
                <p>
                    <strong>
                        Tip 9: Include URLs in screen captures
                    </strong>
                </p>
                <dl class="greyBox">
                    <dt>Screen captures should always include the:<br />
                        <strong>* URL </strong>
                        <br />
                        <strong>* Top left - so you can see what browser it is eg. Internet Explorer or FireFox </strong> </dt>
                </dl><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/DoneReplyAndDeleteEmail.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/DoneReplyAndDeleteEmail.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="SavedItems"></a>Do you save important items in a separate folder?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    There are many types of emails which you receive but will never actually reply to.
                    For example a client may email &quot;Sounds great - please go ahead.&quot; These
                    kinds of emails should be kept as a reference for the future.
                    <br />
                    Emails that came into your mailbox should not be left in your Inbox. The aim is to
                    read, action (if needed) and delete. You should be trying to get your Inbox down to
                    0 items.</p>
                <p>
                    So what's left in your 'Inbox' should only be 'To Do' items. Sure you might want to
                    add subfolders to group related projects etc. but these subfolders should also contain
                    items 'To Do'.&nbsp; Some people leave emails in their Inbox, for later reference
                    only. We believe this is not a good idea, and you should create 2 folders outside
                    your Inbox called 'Saved Items' and 'Saved Personal Items' for such emails.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/SavedMail.gif" alt="Saved Mail" border="1" width="175" height="97" /></dt><dd>Figure:
                            Save important reference items in a separate folder</dd></dl>
                <p>
                    Microsoft Outlook provides you with 4 main folders: 'Draft', 'Inbox', 'Outbox' and
                    'Send Items'.&nbsp; But we believe they are missing 2 additional folders: 'Saved
                    Items' and 'Saved Personal Items'.&nbsp; You can use these two folders to keep the
                    your work related or personal emails that you wanted to keep.<br />
                    <br />
                    You can create these two folders next to the Inbox and move the emails there.</p>
                <table class="clsSSWProductTable" summary="LookOut" style="width: 550">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/LookOut/">SSW LookOut! for Outlook</a> to
                            check for this rule.
                            <br />
                            <br />
                            <img border="0" src="/ssw/LookOut/Images/ContactorSavedItemsFolder.gif" alt="Contact or Saved Items Folder"
                                width="275" height="79" />
                            It can add these folders for you.
                        </td>
                    </tr>
                </table>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/SaveImportantItemsInSeparateFolder.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/SaveImportantItemsInSeparateFolder.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="KeepEmailHistory"></a>Do you keep the history of an email?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    Often I receive a reply to an email I sent and it has one word - "Yes." I can't
                    remember what I asked for and the respondent has deleted the history, so I don't
                    know what's going on. I can't check to see whether they have answered all my questions,
                    or what the URL was in the original email, and I can't CC someone else on my reply
                    because the email is missing half the information. So I have to go back into my
                    sent items, find what I asked for and copy and paste it into my reply.
                </p>
                <p>
                    Crazy. Just don't delete the history! Geezzzzeeeee, surely we arent that hard up
                    for disk space.
                </p>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/KeepEmailHistory.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/KeepEmailHistory.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="SendUnnecessaryEmails"></a>Do you send unnecessary emails?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    Every email you process takes time. Sifting through unnecessary emails becomes really
                    frustrating. Don't clog up someone else's emails Inbox with unnecessary emails.
                </p>
                <p>
                    A good rule of thumb for whether an email is unnecessary is if your email comprises
                    of less than 5 words (e.g. &quot;Thanks!&quot; or &quot;Well Done&quot;) it's likely
                    it doesn't need to be sent.
                </p>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/SendUnnecessaryEmails.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/SendUnnecessaryEmails.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="HurrySomeoneUp"></a>Do you know how to hurry someone up?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    Sometimes the person you send your email to may not reply immediately because they're
                    busy or just may have forgotten about it.&nbsp; If you need an answer, use a RESEND
                    by doing the following:</p>
                <ol>
                    <li>Reply to ALL&nbsp;</li>
                    <li>Put (RESEND) in 1<sup>st</sup> line of the Body </li>
                    <li>Plus any other instructions - such as "Hurry Up!"
                        <br />
                        <dl class="goodImage">
                            <dt>
                                <img src="Images/HurryUp.gif" alt="Hurry Up" />
                            </dt>
                            <dd>
                                Figure: This is an example of a RESEND.</dd></dl>
                    </li>
                </ol>
                <p>
                    This reminds the other person that you are still waiting for a response.
                </p>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/HurrySomeoneUp.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/HurrySomeoneUp.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ImportanceofaGoodSubject"></a>Do you realize the importance of a good email
                    Subject?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    Just as we should not 'judge a book by it's cover' - we will not judge an email by
                    its subject. But, we do! Because users get SOOOO many emails, getting your clients
                    and suppliers to take notice of yours among the sea of email in their Inbox can
                    be quite a struggle.</p>
                <dl class="good floatRight">
                    <dt>
                        <img src="Images/Outlook_ChooseAnInterestingSubject.gif" alt="Outlook Choose an interesting subject"
                            border="1" /></dt><dd>Figure: I'm definitely going to read this email</dd></dl>
                <p>
                    Use the email Subject to grab your recipients attention. Choosing the right subject
                    can give an email a sense of urgency or importance that choosing the wrong subject
                    won't!<br />
                    The best way of doing this is to ensure that your subject includes either an ACTION
                    POINT (e.g. 6.30 TONIGHT! See you at The Oaks Hotel...) or a RESULT of a task you
                    were asked to do (e.g. Here's the 5 mins. of FEEDBACK you requested from our meeting
                    with Charles Merton). You'll note from this that including the date and time in
                    the subject gives immediacy to the email.<br />
                    If there's anything to be learnt from spammers, they know how to get your attention.
                    Spammers use very tabloid based, or headline grabbing subjects, to try and coerce
                    you to open that email. But don't make your email subjects tabloid-tacky, instead
                    follow a good broadsheet papers' style of attention grabbing lines.
                </p>
                <p>
                    Never leave the subject blank! It's like writing a book and failing to give it a
                    name!</p>
                <table class="clsSSWTable" width="50%">
                    <!-- MSTableType="layout" -->
                    <tr>
                        <td width="50%">
                            <b>Bad Subject Example </b>
                        </td>
                        <td width="50%">
                            <b>Good Subject Example </b>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Database
                        </td>
                        <td>
                            Meeting to get your software solution rolling, next Monday 2pm
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Dinner
                        </td>
                        <td>
                            Dinner Tonight, 6.30pm at The Oaks
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ??
                        </td>
                        <td>
                            BUG! SSW SQL Auditor
                        </td>
                    </tr>
                    <tr>
                        <td>
                            User Group
                        </td>
                        <td>
                            User Group this month needs a speaker - Call Tom Howe pronto!
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Feedback
                        </td>
                        <td>
                            The user interface feedback I promised you yesterday
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            Broker Form
                        </td>
                        <td valign="top">
                            CPF - Fix combo box on Broker Form
                        </td>
                    </tr>
                </table>
                <p>
                    <b>Figure: Always use a descriptive email subject to make it easier to find later</b></p>
                <p>
                    Of course, we also use a structured approach for emails - especially when sending
                    them internally. I want to be able to determine which emails are the most important.
                    Using a meaningful subject with key words makes it easy to identify and categorize
                    emails without actually opening them (and is also makes it easy to find emails in
                    my Sent Items). When emails are really important I write IMPORTANT in the subject.
                    Other emails I consider important or urgent have the following in the subject field:
                </p>
                <ul>
                    <li>BUG</li>
                    <li>INCOMPLETE</li>
                    <li>URGENT</li>
                </ul>
                Other words we use are:
                <ul>
                    <li>TIMESHEETS</li>
                    <li>INVOICES</li>
                    <li>PROSPECT</li>
                    <li>TO-DO - for tasks pending</li>
                    <li>FYI - information you want to keep around for a while, for yourself or for others
                        (never for a task)</li>
                    <li>FUTURE - ideas for the future</li>
                    <li>IGNORE - for the rare occasion when something is requested and you really don't
                        want to do it yet</li>
                    <li>Product name - Registered User Support</li>
                    <li>Product name - Pre-Sales Support</li>
                    <li>Project name</li>
                    <li>Client Name</li>
                </ul>
                <table class="clsSSWTable" width="50%">
                    <tr>
                        <td>
                            <b>How do you structure email subjects for SSW eXtreme Emails! </b>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Incident Type - Product/Client Name - Module Name - Description of Incident <a href="../../eXtremeEmails/ManageProjects.aspx#IncidentProEmailSubjects">
                                Details</a>
                        </td>
                    </tr>
                </table>
                <p>
                    Many people are not aware that you can easily change someone's email subject, you should 
                    do this if the subject is too general for you to remember what it is about (e.g. "re: bug") 
                    or the content strays from the initial subject after the email thread continues for a 
                    while. To edit the email subject, open the email and click in the subject field to focus
                     the cursor there. You can change the subject by typing, and saving your changes. However 
                     you SHOULD NOT change the subject (especially of a newsgroup item) if the email has a long 
                     thread behind it, except the subject is not relevant to the conversation.
                </p>
                <table class="clsSSWTable" width="50%" id="table2" height="101">
                    <tr>
                        <td>
                            <b>Remember!</b>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ul>
                                <li>For external emails, it is acceptable to change the subject line if the subject
                                    is unclear</li>
                                <li>For internal emails, the subject line should not be changed as it will break the threading
                                    of emails</li>
                            </ul>
                        </td>
                    </tr>
                </table>
                <table class="clsSSWProductTable" summary="LookOut" style="width: 500">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/LookOut/">SSW LookOut! for Outlook</a> to
                            check for this rule.
                            <br />
                            <br />
                            It will warn you if you forget to include a subject in your email.
                        </td>
                    </tr>
                </table>
                <br />
                <table class="clsSSWProductTable" summary="LookOut" style="width: 500">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/ExchangeReporter/">SSW Exchange Reporter</a>
                            to show statistics of emails with word "Urgent" in subjects.
                            <br />
                            Check sample report <a href="/ssw/exchangereporter/ReportSamples.aspx#CurrentFolder">
                                Current - All Mailboxes (By Folder)</a>
                        </td>
                    </tr>
                </table><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ImportanceOfAGoodSubject.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ImportanceOfAGoodSubject.aspx</a></font>
            </li>
            
            <li>
                <h2>
                    <a name="WhenToChangeEmailSubject"></a>Do you know when you should change a subject?</h2>
                <p>
Normal reminder emails (should all have the same subject, then people know there is nothing out of the ordinary) should be<br /> 
Subject: "Outstanding Balance with SSW"<br /><br />

When in dispute <br />
Subject: "Swift - Issues to be resolved"<br /><br />

When in they have gone over $20K<br />
Subject: "Swift - Account temporarily on Hold"<br /><br /><br />
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/WhenToChangeEmailSubject.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/WhenToChangeEmailSubject.aspx</a></font>
             </li>
            
            <li>
                <h2>
                    <a name="SortbyReceivedThenImportant"></a>Do you sort your emails by Received AND
                    Important?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    OK - so now you've got your important emails identified, don't let them get lost
                    in the quagmire. If you use Outlook make use of its inbuilt functionality. Always
                    sort your emails by the Received, but add a secondary sort by "Important". This
                    way your important emails always stay at the top to haunt you until they are done.</p>
                <p>
                    &nbsp;<img src="Images/OutlookSortbyReceivedThenImportant.gif" alt="Outlook Sort By Received Then Important"
                        border="1" width="566" height="132" />
                    <br />
                    <b>Figure: Sort your emails by received and then by important to keep the most recent
                        and important ones on top</b></p>
                <p>
                    &nbsp;<img src="Images/OutlookPriority.gif" align="Left" alt="Always use a meaningful Subject"
                        border="1" width="521" height="51" />
                    <br />
                    <br />
                    <br />
                    <br />
                    I think the Red Exclamation Mark is a good start, but I hate the Blue Arrow - it
                    keeps getting my attention.
                </p>
                <p>
                    Use sort by importance to sort the items with the blue arrow to the bottom.
                    <br />
                    <b>Figure: Use sort by importance to sort the items with the blue arrow to the bottom.
                    </b>
                </p>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/SortByReceivedAndImportant.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/SortByReceivedAndImportant.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="KnowWhenWhenNottoUseEmail"></a>Do you know when, and when NOT, to use email?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <table align="right" width="20%">
                    <tr>
                        <td>
                            <img src="Images/MetaGroupPhoneOverEmail.gif" alt="Meta Group Phone Over Email" align="center"
                                width="400" height="314" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="Images/MetaGroupEmailOverPhone.gif" alt="Meta Group Email Over Phone" align="center"
                                width="282" height="202" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Figures: a
                                <img src="/ssw/Images/IconPdf.gif" alt="Icon PDF" width="16" height="17" />
                                <a target="_blank" href="/ssw/Redirect/SSWUpdate/0304MetagroupUsersPreferEmailPDFReport.htm">
                                    Meta Group survey</a> </b>
                            <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif"
                                width="17" height="11" /><b> found that 81% of respondents preferred the phone above
                                    email to build relationships, but 80% preferred email generally</b>
                        </td>
                    </tr>
                </table>
                As all these rules indicate, email can either be a blessing or a curse. One of the
                most deadly of all the potential curses of email is when people choose to use email
                when it is just not the right tool for that particular task. Absolutely avoid email
                in the following situations:
                <ol>
                    <li>When you want to discuss an issue and make a decision</li>
                    <li>When you are dealing with a 'delicate' problem</li>
                </ol>
                <p>
                    <b>Making a Decision</b>
                </p>
                <p>
                    If you want to make a decision, asking for opinions via email is the best way to
                    ensure one isn't made. Email discussions get off topic, lose track and generally
                    go nowhere, with every email ending with "Yes, but what about..." or "Just my 2c".
                    This leads to a lot of time-wasting.
                </p>
                <p>
                    You should either pick up the phone or have a meeting to discuss the issue, make a
                    decision then and there, and then confirm the decision via email. The first line
                    in your follow up email should be "As per our conversation..." This records that a
                    conversation was held.</p>
                <p>
                    The issue becomes even more important internally, when you email someone in the
                    next office and ask them a question. This is a great way of creating unnecessary
                    emails. Instead, stand up, walk to their desk and ask them the question. Otherwise,
                    have a folder called &quot;AskDavid&quot; or similar, file all your emails that
                    you need to ask him about in there, and when he next comes to visit you, go through
                    them and get an answer.
                </p>
                <p>
                    <b>Dealing with Delicate Situations</b>
                </p>
                <p>
                    Similarly, never bring up a tricky topic with someone by email. It's very easy to
                    misunderstand or misrepresent via email. We always pick up the phone and speak to
                    the person first when discussing important, sensitive, complex issues, or issues
                    where some serious convincing is required. This is the standard we follow:</p>
                <ul>
                    <li>Draft the email covering the issues we want to confirm</li>
                    <li>Call the person covering every issue outlined in the draft</li>
                    <li>Adjust the email according to the decisions made together, adding "As per our conversation..."</li>
                    <li>Send the email</li>
                </ul>
                This way you can review issues together, and, importantly, decisions are confirmed
                in writing.
                <p>
                    <img src="Images/pic38-KeepDrasticThingsForImportantThings.gif" alt="Don't shoot people!"
                        border="1" width="287" height="384" />
                    <br />
                    <b>Figure: Are you in the right frame of mind?</b>
                </p>
               <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/WhenWhenNotToUseEmail.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/WhenWhenNotToUseEmail.aspx</a></font> 
            </li>
            <li>
                <h2>
                    <a name="LessIsMore"></a>Do you know that less is more?</h2>
                <p>
                    Often emails are rambling and unorganized, forcing the reader to wade through blocks
                    of totally useless text. When it comes to written communication, less is more. Be
                    concise and to the point, listing only what is relevant. People tend to ignore reading
                    larger emails if they are on the run and leave to a later when they are not as busy.
                </p>
                <p>
                    "I didn't have time to write a short letter, so I wrote a long one instead." 
                <br />
                    Mark Twain
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/LessIsMore.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/LessIsMore.aspx</a></font>
            </li>
            <li>
                <h2>
                    &nbsp;<a name="IncludeOriginal"></a>Do you include the original content in your
                    email when asking for modifications to be made?</h2>
                <p>
                    When asking for changes to be made, always include the original version of the content
                    because the email may be actioned at a much later time and subsequent changes may
                    have been made.</p>
                <dl class="bad">
                    <pre>Hi Eric,
For the code auditor web page, please make the green ticks read:

    Scan all your projects for coding errors
    Enforce Industry best practices
    Friendly licensing model
					</pre>
                    <dd>
                        Figure: Bad example - original version of content has not been included in the email</dd></dl>
                <dl class="good">
                    <pre>Hi Eric,
On the code auditor web page, please change http://www.ssw.com.au/ssw/codeauditor  
From:

    Keep your code consistent across all projects 
    Add your own Rules 
    Friendly licensing model - pay nothing for full version! 

To

    Scan all your projects for coding errors
    Enforce Industry best practices 
    Friendly licensing model bloggers even pay nothing for the full version! 
					</pre>
                    <dd>
                        Figure: Good Example - it has 'From' and 'To'... so it is clear what needs to be
                        changed</dd></dl>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/IncludeOriginalWhenAskingForModification.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/IncludeOriginalWhenAskingForModification.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="BugReporting"></a>Do you know the right way to report bugs?</h2>
                <p>
                    When reporting bugs, it is essential that you are as descriptive as possible, so
                    that the developer can reproduce the error to find out what the problem is. Read
                    more about this on <a href="/ssw/Standards/Support/bugreportorenhancement.aspx">Reporting
                        a Bug or Enhancement</a>.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/emailbugreport_bad.gif" alt="Bad Bug Report" />
                    </dt>
                    <dd>
                        Figure: This email isn't going to help the developer much - it is vague and has
                        no screen capture, and gives no alternate way for the developer to contact the user
                        regarding the issue
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/emailbugreport_good.gif" alt="Good Bug Report" />
                    </dt>
                    <dd>
                        Figure: Much better - this email includes the product name and version, the category
                        of the issue (BUG), a screen capture and contact number, and shows that the user's
                        system is up to date
                    </dd>
                </dl>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/BugReporting.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/BugReporting.aspx</a></font>
            </li>
            
            
            <li>
         <h2><a name="HowToUseBalloons"></a>Do you know how to use balloons in screenshots for instructions?</h2>
         <p><font color="red">TODO: This rule was reviewed and will be changed.</font></p>
         <p>At SSW, we use a default style for balloons, arrows or other kinds of visual effects. Follow these instructions and configure Fullshot so you are consistent with our standards.</p>
                <p>Open Fullshot application and set this bar to be:</p> 
                <ol>
                	<li>Background color: <strong>red</strong></li>
                     <li>Font color: <strong>white</strong></li>
                    <li>Font family: <strong>arial</strong></li>
                    <li>Font size: <strong>14px</strong></li>
                </ol> 
          <dl class="image">
               <dt>
               <img src="Images/BalloonColorFontBar.jpg" alt="how to set the bar"/>
               </dt>
               <dd>Figure: Fullshot bar following the standards.</dd>
          </dl>
                <p>Once this is done, close Fullshot. Every time you open the program, it will default to the above settings.</p>
                <p>We recommend to use the rounded corner balloon (2nd option on the menu bar). If for some reason you need to use another object, just ensure it has the default style.</p>

            <dl class="image">
               <dt>
            <img src="Images/standardRoundBalloon.jpg" alt="example for a rounded balloon"/>
            </dt>
            <dd>Figure: How to get a rounded corner balloon.</dd>
            </dl>
			
			<p>Remember to keep the drop shadow effect enabled and opacity is set to 75 as the picture below. You can check that by right clicking on the created object.</p>
         <dl class="image">
           <dt>              
            <img src="Images/BalloonProperties.jpg" alt="shadow properties"/>
         </dt>
         <dd>Figure: Check the shadow properties.</dd>
         </dl>
                
            <dl class="goodImage">
              <dt>
                <img src="Images/BalloonGoodExample.jpg"alt="Good example of balloons" />
              </dt>
              <dd>Figure: Good example of using balloons on screenshots.</dd>
            </dl>
   
           <dl class="badImage">
             <dt>
               <img src="Images/BalloonBadExample.jpg" alt="Good example of balloons" />
             </dt>
             <dd>Figure: Bad example of using balloons on screenshots.</dd>
           </dl>
         <p>If you want to highlight an area of the screenshot, we use the following default style.</p>
           <ol>
             <li>Line color: <strong>red</strong></li>
             <li>Line width: <strong>2px</strong></li>
           </ol>
   
           <dl class="goodImage">
             <dt>
               <img src="Images/redHighlightedArea.jpg"alt="Good example of Highlighted Area" />
             </dt>
             <dd>Figure: Good example of using highlighted borders.</dd>
           </dl>
           <p> 
             If you need to show a sequence of actions in the same screenshot add the order of actions inside the balloons.
             See example of using an action sequence in a screenshot.</p>
             
           <dl class="goodImage">
             <dt>
               <img src="Images/BalloonSequence.jpg" alt="Good example of Sequence" />
             </dt>
             <dd>Figure: Good example of using action sequence on one screenshot.</dd>
           </dl><br/>
           <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/HowToUseBalloons.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/HowToUseBalloons.aspx</a></font>
</li>

                <li><h2>
                    <a name="Voting"></a>Do you use the voting option appropriately?</h2>
                <p>
                    Usually when an employee from the company wants to make a decision about either
                    a naming convention, a button style, using user-controls or forms, or even something
                    as simple as changing a font; there should always be reassurance from the rest of
                    the team that it should/should not be done.</p>
                <dl class="goodImage">
                    <dt>
                        <img border="1" src="Images/OutlookVoting.gif" alt="Outlook Voting" width="579" height="446" /></dt><dd>Figure:
                            using the voting buttons option.</dd></dl>
                <p>
                    1. The subject should start with &quot;VOTE: ...&quot;</p>
                <p>
                    2. The sender should reply with a summary after either everyone has replied or after
                    a certain period of time to let the group know how significant their input was.</p>
                <p>
                    3. The voting options should be short, to the point, and provide a distinct difference
                    for each option.<br />
                    i.e. option1;&quot;option1&quot;;option2;&quot;option2&quot; is not appropriate.</p>
                <p>
                    4. There should also be an extra option to allow a flexible result if a member of
                    the email group does not want to vote. i.e. yes; no; un-opinionated.<br />
                    This will provide an accurate result of the vote and will not force anyone to select
                    an option just for the sake of giving a reply.</p>
                <p>
                    5. Voters should be allowed to add their extra comments along with their vote when
                    replying to all, regardless of whether or not they think it is their &quot;two cents&quot;,
                    simply because the person who initially voted is looking for any and all opinions
                    to assure the right decision is made.</p>
                <p>
                    6. When making a vote, try to make the options clear enough so that voters would
                    not have to spend too much time deciding.<br />
                    A good voting system is one that allows the voters to choose an option quickly and
                    carry on with their work, unless of course it is controversial.</p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/UseVotingOptionAppropriately.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/UseVotingOptionAppropriately.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="Clarification"></a>Do you seek clarification via the telephone first?<img
                        src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    Let's face it, we've all sent or received a cryptic email at some point. When you
                    do receive a list of tasks in an email and part of it you just don't understand,
                    don't just reply saying "I don't understand". Using email for this type of conversation
                    will just waste time waiting for replies and email is best not used for these types of ongoing discussions. Chances are if the sender of the task
                    couldn't give you enough detail or explain the task well enough the first time then
                    it's likely to be a tough task so more conversation is needed anyway. Deal with
                    it via a telephone conversation or meeting (MSN may also be acceptable) with the
                    person who sent the email.</p>
                <p>
                    Having had the conversation, reply to the email (remembering to CC all involved)
                    with:
                </p>
                <ul>
                    <li>Reply to the original email (Do not change the subject because it will break the threading).</li>
                    <li>Update the email with the new details arising from the conversation along with all
                        original content. (Remember to start with an "As per our conversation" line).
                    </li>
                    <li>Action the tasks from the email </li>
                </ul>
                <br />
                Another benefit of this type of email is so that you can subtly let the person know
                that next time they need to provide more details.<br />
                <br />
                However, sometimes you just cannot reach the task owner. In this case, you need to keep contacting this person for 
                24 hours. If you are still not able to contact the person or the clarification is not enough for you to action 
                the task, you need to reply to the email and put the following in red in the first line:
                <br />   
                <dl class="good">
                <dt>
                <p><b>Hi John</b></p>
                 <p style="color:Red">(FYI: Clarification was needed to complete this task - next time, please include additional information like the below so I can complete this task autonomously)</p>                    
				<p style="color:Red">This task has been put into the next release.</p>
				<p><b>To Myself</b></p>
				<p>[Fill in the information you just got from the conversation]</p>
                     </dt>                
                 
                       <dd>Figure: Send this email and now move on to other tasks and leave this task to next release.</dd>
                </dl><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/SeekClarificationViaTelephoneFirst.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/SeekClarificationViaTelephoneFirst.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="PrepareAndConfirm"></a>Do you prepare, then confirm conversations/decisions?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    Ideally all phone conversations and meetings should be confirmed afterwards so you
                    have a record of the decisions and action points. Meetings and phone calls should
                    have adequate preparation so they are efficiently run. The reality is after the
                    meeting or phone call we get busy on the next call. So this is the workflow that
                    should happen:</p>
                <ol>
                    <li>Prior to speaking to a client, speak to relevant people to help you formulate your
                        recommendations e.g. speak to a developer about the proposal</li>
                    <li>Draft an email with bullet points for each issue (don't send) </li>
                    <li>Call up the client (or have a meeting)</li>
                    <li>Modify during conversation</li>
                    <li>Send the email to the client (cc relevant people e.g. the developer)</li>
                </ol><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/PrepareAndConfirm.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/PrepareAndConfirm.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="EmailToMyself"></a>Do you send yourself emails?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    When a colleague or a Client asks you to do a task verbally, what method do you
                    have for remembering to do it? I think the best solution is to send yourself an
                    email CC'ing the person that asked you to do the task saying "As per our conversation..."
                    This way both of you know that the job needs to be done. Writing yourself a "Post-It
                    Note" has never worked for me.
                </p>
                <p>
                    Always add "To myself" in the email body so that other people CC'd know what is
                    going on. Don't write it in the email subject as it's confusing to other recipients
                    of the email. Put it in big font as well.
                </p>
                <dl class="image" style="clear: right;">
                    <dt>
                        <img src="Images/EmailToMyself.gif" alt="Send yourself an email, and make it clear to everyone else" /></dt>
                    <dd>
                        Figure: Send yourself an email, and make it clear to everyone else</dd>
                </dl><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/EmailToMyself.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/EmailToMyself.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="CCEveryone"></a>Do you CC everyone and reply to all when necessary?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    When emailing external parties, it is a good idea to CC the other colleagues within
                    your organization that may have an interest in the email. Some of the benefits of
                    CC'ing others include:</p>
                <ul>
                    <li>It can save time</li>
                    <li>Gives the email more credibility if you have CC'd others in your organization</li>
                    <li>Colleagues may correct your mistakes<br />
                    </li>
                </ul>
                <p>
                    <img src="Images/ReplyToAll.gif" alt="Outlook Reply to All" align="right" width="91"
                        height="36" />
                    In addition, I often see people replying only to the sender of the email, ignoring
                    the fact that there that there were other persons included in the original email.
                    Obviously the original sender intended to keep everyone in the loop, so it would
                    be polite to CC everyone included on the original communication. The converse is
                    true also - don't cc people unnecessarily - you're just adding to the email problem!
                </p>
                <dl class="goodImage">
                    <dt>
                        <img border="1" src="Images/OutlookNotetoSelf.gif" alt="Outlook Note to Self" /></dt><dd>Figure:
                            Reply All so that everyone is kept in the loop.</dd></dl>
                <br />
                If the original email was to an alias with many subscribers, in general you should
                not Reply All.
                <br />
                Also if the sender requests a <a href="/ssw/Redirect/Netlingo.htm">'little r'</a>
                <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif"
                    width="17" height="11" />
                reply, then you should not Reply All.
                <br />
                <table class="clsSSWTable" width="50%" id="table3">
                    <tr>
                        <td>
                            <b>Exception</b>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ul>
                                <li>If not all recipients need to be informed</li>
                                <li>The opinions of the rest of the recipients do not matter as they are unlikely to
                                    disagree</li>
                            </ul>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="clsSSWProductTable" summary="LookOut" style="width: 550">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/LookOut/">SSW LookOut! for Outlook</a> to
                            check for this rule.
                            <br />
                            <br />
                            It checks this for you, and would raise a warning like this one:<br />
                            <img src="Images/ContactorNotAllCC.gif" alt="LookOut warning - not everyone is CC'ed"
                                align="left" width="555" height="372" /><br />
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Figure: SSW Lookout checks that you have Replied All each time you send an email
                            </b>
                        </td>
                    </tr>
                </table>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/CCEveryoneAndReplyToAllWhenNecessary.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/CCEveryoneAndReplyToAllWhenNecessary.aspx</a></font>
            </li>
                        <li><h2><a name="BulkEmail"></a>Do you send bulk email via 'Bcc' field (if all parties are not contacts of each other)?</h2>
                <p>To ensure privacy and not allow parties to get hold of others email addresses, emails to multiple parties should be entered in the 'Bcc' field (not the 'To' field).</p>
                <dl class="badImage">
                    <dt>
                        <img alt="Bad" src="Images/better_emails_bulk_to.jpg" />
                    </dt>
                    <dd>
                        Bad Example: Send bulk email via 'To' field
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img alt="Good" src="Images/better_emails_bulk_bcc.jpg" />
                    </dt>
                    <dd>
                        Good Example: Send bulk email via 'Bcc' field
                    </dd>
                </dl><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/BulkEmail.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/BulkEmail.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="UseEmailSignatures"></a>Do you use email signatures?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    Email signatures are a great way of adding some advertising and branding to a medium
                    which isn't seen as too obtrusive. E.g. A URL in footer from your friend isn't as
                    taboo as junk mail from an unknown company. <a href="RulestoBetterBranding.aspx#EmailSignatures">
                        Details</a>
                </p>
                <p>
                    NOTE: Delete your footer when you send emails internally, it's unnecessary.
                </p>
                <p>
                    If you are on site at a customer, you want colleagues to be able to give you a call
                    without asking the office what your mobile number is. In this case, you should include
                    your mobile and/or temp number for internal emails (e.g.Jonny Trees | On Site |
                    0412 xxx xxx).
                </p>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/UseEmailSignatures.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/UseEmailSignatures.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ImagesInEmailSignatures"></a>Do you avoid using images in your email signatures?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    As useful as email signatures are for promoting your brand, using images in your
                    signatures is a bad idea. To many recipients this can appear to be an attachment
                    to the email. This will annoy some users, so it's better to keep your signatures
                    as HTML or just plain text.</p>
                 <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AvoidImagesInEmailSignatures.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AvoidImagesInEmailSignatures.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="EmailInDB"></a>Do you make sure every customers' (and prospects') email
                    is in your company database?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    Most companies keep all their customers' (and prospects') contact information in
                    a database (e.g. SQL Server, Access, Oracle). This allows all staff to easily locate
                    contact details about a particular person. So when you get an email, make sure you
                    check that email address it is in the company database.
                </p>
                <table class="clsSSWProductTable" summary="LookOut">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/LookOut/">SSW LookOut! for Outlook</a> to
                            check for this rule.
                            <p>
                                <img border="0" src="Images/StephenKoopIsNotInTheDatabase.jpg" alt="Stephen Koop not in database"
                                    width="683" height="155" /><br />
                                <b>Figure: Stephen Koop needs to be put into the database</b></p>
                            <p>
                                <img border="0" src="Images/NotInDatabase.gif" alt="Not in database" width="554"
                                    height="370" /><br />
                                <b>Figure: SSW Lookout! Can also check the emails that you are send and tell you if
                                    the email address is not in your database.</b>
                            </p>
                        </td>
                    </tr>
                </table>
                <br />
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/EmailsInDB.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/EmailsInDB.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="KeepSentItems"></a>Do you always keep your sent items?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    You should never ever delete your sent items. This will in most cases be the only
                    record you have of the emails you have sent to customers and clients. If you ever
                    need to find some correspondence (and believe me you will) then you will be very
                    thankful you got into this habit!
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/KeepSentItems.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/KeepSentItems.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="BetterLateThanNever"></a>Do you think that when replying to emails it's
                    better late than never?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    You should always try and reply to emails within a timely period, but sometimes, for
                    many reasons, it can take ages for you to get around to answering that email. I've
                    seen people see an email 6 months old and just delete it, because it's &quot;too
                    old&quot; or they refuse to reply because &quot;the customer will think we're a
                    joke taking this long to do something!&quot; This is a great way to lose business,
                    no matter how long it takes to do some things, it's always better to do it than
                    not. Sometimes people email me an enhancement suggestion for a particular product,
                    but we put their requests on the back burner until other important issues are dealt
                    with. It might take us 12 months to implement that change, and when it's done, we'll
                    email the customer and send them the link to the new version. It's highly likely
                    that their need still exists, and they'll realise that their ideas and suggestions
                    are not ignored. Reply to customers regardless of how long it takes to respond.
                    It shows you value their feedback, and it's highly likely they'll give you some
                    more...
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/BetterLateThanNever.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/BetterLateThanNever.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="MinimiseOutlookDistractions"></a>Do you minimize your Outlook Distractions?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <table align="right" width="10%">
                    <tr>
                        <td>
                            <dl class="goodImage">
                                <dt>
                                    <img src="Images/OutlookMinimiseDistractions.gif" alt="Outlook Minimise Distractions"
                                        width="359" height="123" /></dt><dd>Figure: Turn off Outlook distractions!</dd></dl>
                        </td>
                    </tr>
                </table>
                Getting in the zone is pretty challenging in any work environment. Outlook in particular
                likes to offer as many distractions as possible to ensure you can never forget you've
                got it open. Set your options so that Outlook:
                <ul>
                    <li>Doesn't play a sound </li>
                    <li>Doesn't briefly change the mouse cursor</li>
                    <li>Doesn't show an envelope</li>
                    <li>and DOESN'T display a New Mail Desktop Alert (Outlook 2003) </li>
                </ul>
                <p>
                    Here's a few more distractions tips:</p>
                <ul>
                    <li><a href="RulestoSuccessfulProjects.aspx#MinimiseDistractions">MSN Messenger distractions</a></li>
                    <li><a href="RulestoSuccessfulProjects.aspx#MinimiseDistractions">General working environment
                        distractions</a></li>
                </ul><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/MinimiseOutlookDistractions.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/MinimiseOutlookDistractions.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="FollowUp"></a>Do you follow up emails effectively?</h2>
                <p>
                    Promises made by email are often pretty empty - the person who made the promise
                    either has to make a note in a paper diary, stick a post-it note to his screen,
                    or regularly trawl through Sent Items for all the off-hand promises made.
                </p>
                <p>
                    To ensure you follow up when you make a promise, you should do the following:
                </p>
                <ol>
                    <li>When you receive an email from a client requesting a response, CC yourself in the
                        reply.</li>
                    <li>Move the email you have just sent yourself into a subfolder of your mailbox called
                        'Follow Ups'. </li>
                    <li>Add a follow up reminder to the email.</li>
                    <li>Check your follow up folder daily, and reply to any emails that are older than a
                        week using the words 'Just touching base....'</li>
                    <li>Remove the email from your follow up folder when you have resolved the issue.
                    </li>
                </ol>
                <dl class="image">
                    <dt>
                        <img src="images/followupfolder.gif" alt="" height="314" width="275" /></dt><dd>Figure:
                            Create a folder called "Follow Ups" to store emails that need to be followed up</dd></dl><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/FollowUpEmailsEffectively.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/FollowUpEmailsEffectively.aspx</a></font>
            </li>
            <li><a name="2WaysToFollowUp"></a>
                <h2>
                    Do you know the two ways to follow up a task?</h2>
                <p>
                    There are two ways to set yourself a task to follow up in the future.
                </p>
                <ul>
                    <li>Delayed Email
                        <ul>
                            <li>Write yourself an email in Outlook 2007</li>
                            <li>Before pressing send, click Options | Delay Delivery, and then specify when you
                                want to be reminded</li>
                            <li>The email will sit in your outbox until the required time, when it will be sent
                                to whoever you specified (you in this case)</li>
                            <li>When you receive it in your inbox, action the task</li>
                        </ul>
                    </li>
                    <li>Reminders (follow up flags)
                        <ul>
                            <li>Send yourself an email</li>
                            <li>Once it arrives in your inbox, flag it for follow up and set a reminder</li>
                            <li>When the reminder goes off, action the task</li>
                        </ul>
                    </li>
                </ul><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/TwoWaysToFollowUpATask.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/TwoWaysToFollowUpATask.aspx</a></font>
            </li>
            <li><a name="Preempt"></a>
                <h2>
                    Do you answer all questions, and pre-empt further ones?</h2>
                <p>
                    Often people will hit send on a reply and not realise that they have not answered
                    one of the questions in the email. This creates more traffic that can be avoided.
                    In the same vein, it's a good idea to supply any information the recipient may need,
                    which will avoid another two emails.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AnswerAllQuestionsAndPreEmptFurther.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AnswerAllQuestionsAndPreEmptFurther.aspx</a></font>
            </li>
            <li><a name="AddContentReasoningInEmails"></a>
                <h2>
                    Do you add context/reasoning to your emails?</h2>
                <p>
                    When sending an email it is important to give context and reasoning.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/BadContextReasoning.gif" alt="Bad - no context or reasoning" width="339"
                            height="76" />
                    </dt>
                    <dd>
                        Figure - Bad example: there is no context or reasoning!
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/GoodContextReasoning.gif" alt="Good - there is context and reasoning"
                            width="814" height="79" />
                    </dt>
                    <dd>
                        Figure - Good example: there is both context and reasoning!
                    </dd>
                </dl><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AddContentReasoningInEmails.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AddContentReasoningInEmails.aspx</a></font>
            </li>
            <li><a name="Wizard"></a>
                <h2>
                    Do you avoid the Rules Wizard?</h2>
                <p>
                    Some people make extensive use of the rules wizard so that as email messages arrive
                    they already appear in the appropriately created folder. I basically think this
                    doesnt work as you never look at these emails.</p>
                <p>
                    I guess there could be special folders for bug reports that are sent by exception
                    handlers, but I still would not be keen on this.</p>
                <p>
                    A better way is Conversation View and collapsing them if you need to hide them.</p>
                <dl class="image">
                    <dt>
                        <img src="/ssw/Standards/Rules/Images/conversationview.jpg" alt="Conversation View" /></dt><dd>Figure:
                            Conversation View allows you to choose which folders to collapse.</dd></dl><br/>
                            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AvoidTheRulesWizard.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AvoidTheRulesWizard.aspx</a></font>
            </li>
            <li><a name="Active"></a>
                <h2>
                    Do you use active language in your emails?</h2>
                <p>
                    Try to use the active voice of a verb wherever possible. For instance, 'We will
                    process your order today', sounds better than 'Your order will be processed today'.
                    The first sounds more personal, whereas the latter, especially when used frequently,
                    sounds unnecessarily formal.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ActiveLanguageInYourEmails.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ActiveLanguageInYourEmails.aspx</a></font>
            </li>
            <li><a name="Sarcasm"></a>
                <h2>
                    Do you know that people misunderstand sarcasm in email?</h2>
                <p>
                    From <a href="/ssw/Redirect/smh_flameemailsmissingthemark.htm" target="_blank">Flame
                        emails missing the mark</a>
                    <img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif"
                        width="17" height="11" />
                    on the Sydney Morning Herald: &quot;The senders of the [email] messages expected
                    their partners to correctly interpret their tone nearly 80 per cent of the time,
                    but in fact they only scored just over 50 per cent... Those attempting to interpret
                    the message believed they had scored 90 per cent accuracy&quot;</p>
                <p>
                    Because there is no &quot;tone of voice&quot; in an email, sarcasm can easily be
                    misinterpreted by the receiver.</p>
                <p>
                    <b>Bad example:</b> &quot;John, make sure your office is clean when clients come
                    in - you might scare them away with all that mess.&quot;</p>
                <p>
                    This is bad because it may seem like John is being reprimanded, even though the
                    sender may just be giving him a &quot;heads up&quot; for next time. When in doubt,
                    use a smiley face at the end of the comment to soften it up a bit:</p>
                <p>
                    <b>Good example: </b>&quot;John, make sure your office is clean when clients come
                    in - you might scare them away with all that mess :)&quot;</p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/PeopleMisunderstandSarcasmInEmail.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/PeopleMisunderstandSarcasmInEmail.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="Grammar"></a>Are you careful with your spelling, grammar and punctuation?</h2>
                <p>
                    Improper spelling, grammar and punctuation gives a bad impression of your company,
                    and can result in your message not being conveyed correctly. Emails with no full
                    stops or commas are difficult to read and can sometimes even change the meaning
                    of the text. And, if your program has a spell checking option, why not use it?
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/SpellingGrammarAndPunctuation.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/SpellingGrammarAndPunctuation.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="AddSomeone"></a>Do you know how to add someone into the conversation?</h2>
                <p>
                    If you think someone should be involved in a conversation but they're not on the recipient
                    list, all you need to do is reply all, put the new recipient in the 'CC' field,
                    and include one line that says &quot;I'm adding this person into the loop because
                    I think they may have some input.&quot;
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/AddRecipient.jpg" alt="Add Recipient" width="510" height="173" /></dt><dd>Figure:
                            Adding a recipient to an email thread</dd></dl><br/>
              <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AddSomeoneIntoTheConversation.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AddSomeoneIntoTheConversation.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="RecurringTasks"></a>Use Tasks only for Recurring Appointments</h2>
                <p>
                    Often you will have personal tasks that need a recurring reminder. For example,
                    &quot;send backup tapes offsite&quot; might need to run as a reminder each Monday
                    morning. To manage these types of tasks you should use Outlooks &quot;Tasks&quot;
                    functionality to add recurring reminders.</p>
                <p>
                    Tasks in Outlook are a powerful tool for keeping on top of to-do items but since
                    we use <a href="#InboxTaskListOnly">email for our task list</a> items you should avoid
                    using them otherwise you would need to do twice as much management for your task
                    list. You should use follow up flags with reminders for tasks on email that only need
                    to be handled once.</p>
                <dl class="goodImage">
                    <dt>
                        <img border="0" src="Images/EmailTasks.jpg" alt="Email Tasks" width="600" height="278" /></dt><dd>Figure:
                            Use Tasks only for tasks that need recurring reminders.</dd></dl><br/>
                 <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/UseTasksOnlyForRecurringAppointments.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/UseTasksOnlyForRecurringAppointments.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ManageDeletedItems"></a>Do you manage your Deleted Items?</h2>
                <p>
                    Your deleted items can become quite out of hand if you don't manage them some way.
                    First, it can waste a lot of space on your hard drive, and second, after accidentally
                    deleting a mail item, and it's taken me days to find it again amongst the 30,000
                    messages in my Deleted Items Folder.
                </p>
                <p>
                    Here's a couple of solutions:</p>
                <ul>
                    <li>Permanently delete your deleted items. This is based on the theory that once you
                        have deleted a mail item, you should NEVER HAVE TO LOOK AT IT AGAIN. This is a good
                        theory, but unfortunately we don't always follow it in practice and there's no recovery</li>
                    <li>
                        <table align="right">
                            <tr>
                                <td>
                                    <dl class="goodImage">
                                        <dt>
                                            <img src="Images/OulookDeletedItemsSubFolders.gif" alt="Outlook Deleted Items Subfolders"
                                                border="1" width="141" height="65" /></dt><dd>Figure: Deleted Items</dd></dl>
                                </td>
                            </tr>
                        </table>
                        Move the items into subfolders under Deleted Items. This is a good solution as you
                        can manually archive items, making it easier to search. You can permanently delete
                        items when they reach a certain age.</li>
                </ul>
                <p>
                    NOTE: A hot tip for making it easy to search for an accidentally deleted item is
                    to add the &quot;Modified&quot; field into your Deleted Items view and sort by &quot;Modified&quot;.
                    The item from two months ago which you just accidentally deleted will be sitting
                    at the top.</p>
                <table>
                    <tr>
                        <td>
                            <dl class="goodImage">
                                <dt>
                                    <img src="Images/OutlookModifiedByDate.gif" alt="Outlook Modified By Date" border="1"
                                        width="382" height="39" /></dt><dd>Figure: Sort by "Modified"</dd></dl>
                        </td>
                    </tr>
                </table>
                <table class="clsSSWProductTable" summary="LookOut" style="width: 500">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/LookOut/">SSW LookOut! for Outlook</a> to
                            check for this rule.
                            <br />
                            <br />
                            It leaves a reminder in your Inbox to remind you to clear your deleted items folder.
                        </td>
                    </tr>
                </table><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ManageDeletedItems.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ManageDeletedItems.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="IncludeNameFirstLine"></a>Do you include the name of the person you address
                    as the first line?</h2>
                <p>
                    If you include more than one person in your email, include the name of the person/s
                    you are addressing as the first line. Generally don't put more than one name in
                    the "To" box, so that people won't have to be unsure to whom the email is addressed.
                    If you have to address multiple people in an email (including yourself - i.e. notes
                    to self), include each person's name as a heading as shown below. This helps them
                    quickly locate the part of the email that applies to them.</p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/IncludeNameFirstLine.gif" border="1" alt="Include each addressee's name as a heading in the email body"
                            width="755" height="327" /></dt><dd>Figure: When addressing multiple people, include
                                each addressee's name as a separate heading</dd></dl><br/>
              <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/IncludeNameFirstLine.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/IncludeNameFirstLine.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="OneEmailAtATime"></a>Do you send tasks one email at a time?</h2>
                <p>
                    Do you sometimes find that people don't attend to all the items you have listed
                    in your long and carefully drafted email?
                </p>
                <p>
                    Make it easier for everyone to track the status of tasks by sending tasks one email
                    at a time, and make the task it requests very clear. When a person has completed
                    a task they just have to reply &quot;Done&quot; to that email, delete the email
                    from their Inbox and then move on to the next task.</p>
                <p>
                    This rule can be by-passed when dealing with small tasks relating to the same topic.
                    In cases where this is needed, you should number each task that you wish to be completed;
                    however, the person completing the task should still reply a single &quot;Done&quot;
                    to the whole email once they have completed all of the small tasks.</p>
                <p>
                    Also send separate emails per topic - that way there can be one email per topic.
                    The advantages are that you get an email history on a specific topic and <span lang="en-au">
                    </span>it is easier to include someone else.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/separateTasksSeparateEmails.gif" alt="GOOD - Separate emails for separate tasks."
                            width="540" height="190" /></dt><dd>Figure: GOOD - Separate emails for separate tasks.</dd></dl>
                <dl class="badImage">
                    <dt>
                        <img src="Images/separateTasksOneEmail.gif" alt="BAD - One email for separate tasks."
                            border="1" width="600" height="139" /></dt><dd>Figure: BAD - One email for separate
                                tasks.</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/relatedTasks.gif" alt="GOOD - Exception to the rule." width="468"
                            height="341" /></dt><dd>Figure: GOOD - A few related tasks in one email.</dd></dl><br/>
              <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/SendTasksOneEmailAtATime.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/SendTasksOneEmailAtATime.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="RespondEachEmailIndividually"></a>Do you respond to each email individually?</h2>
                <p>
                    (AKA - don't respond to a series of emails in one email) If you receive separate
                    emails, respond to each email individually. Don't answer a few emails in one email.</p>
                <ul>
                    <li>Each email is a little job (eating the elephant one bit at a time)</li>
                    <li>You get a steady flow back as bits are achieved (can get a feel or monitor employees
                        efficiency)</li>
                    <li>You can move to 'todo' list folders</li>
                    <li>You get a email history for that one topic</li>
                </ul><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/RespondToEachEmailIndividually.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/RespondToEachEmailIndividually.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="KeeptheContext"></a>Do you use &gt; and indentation to keep the context?</h2>
                <p>
                    Electronic communication can easily cause misunderstandings. Help the reader understand
                    your message better by:
                </p>
                <ul>
                    <li>Keeping the prior email in your reply </li>
                    <li>Quote the original email by using the &quot;&gt;&quot; and indentation</li>
                </ul>
                This way you won't forget any questions in the original email.
                <table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Attachments"
                    style="{width: 50%; }">
                    <tr>
                        <td>
                            <p>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt;The program flow logic worries me a bit
                            </p>
                            <p>
                                Sorry, this wasn't a final decision - I just put it there for testing purposes.
                            </p>
                        </td>
                    </tr>
                </table><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/KeeptheContext.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/KeeptheContext.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ReplyInline"></a>When you reply inline, do you use a different color?</h2>
                <p>
                    Replying inline should be the exception rather than the rule as it messes up the history
                    of the email thread. If you do - copy and paste the entire email in your reply and
                    comment on each issue at a time. It's useful to write your comments in
                    red. And make sure what you type should always be aligned left, not indented.
                    Remember, if you write emails with one issue at a time you won't need to do
                    this too often.
                </p>
                <table class="clsSSWTable" style="{width: 70%}">
                    <tr>
                        <td>
                            <p>
                                -----Original Message-----<br />
                                From: Daniel Hyles www.ssw.com.au<br />
                                Sent: Tuesday, 28 May 2002 7:31 AM<br />
                                To: Adam Cogan www.ssw.com.au<br />
                                Subject: FW: Morning Goals<br />
                            </p>
                            <p>
                                Reply In-line in <span class="RedText">red</span></p>
                            <p>
                                -----Original Message-----<br />
                                From: Daniel Hyles www.ssw.com.au
                                <br />
                                Sent: Monday, 27 May 2002 8:00 AM<br />
                                To: Adam Cogan www.ssw.com.au<br />
                                Subject: FW: Morning Goals<br />
                            </p>
                            <p>
                                - TimePro Online pages<br />
                                <span class="RedText">Done</span><br />
                                - Double check backups (get backup today on both drives, I configured the other
                                drive last night)<br />
                                <span class="RedText">Done</span><br />
                                - Make sure Exchange is backing itself up.. Check Google on why not.<br />
                                <span class="RedText">Not Done</span><br />
                                - Access reporter<br />
                                <span class="RedText">Not Done</span><br />
                            </p>
                        </td>
                    </tr>
                </table>
                <p>
                    Figure: See the "Reply In-line" comment, and see how the RED makes the email easier
                    to read.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ReplyInLineUseADifferentColor.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ReplyInLineUseADifferentColor.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="IncludeBeforeAfter"></a>When asked to change content, do you reply with
                    the content before and after the change?</h2>
                <p>
                    Your boss asks you to change a page on your website. You discuss it with your team
                    and come up with the changes. Wouldn't it be nice if your boss could see exactly
                    what was changed? Always keep a copy of what the page (or document) before you make
                    the change, and reply to the original email with the before and after.
                </p>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ContentChangeIncludeBeforeAfter.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ContentChangeIncludeBeforeAfter.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="AvoidSensitiveInformation"></a>Do you avoid emailing sensitive information?</h2>
                <p>
                    Never email sensitive information such as Credit Card details, PINs or passwords.
                    Not only does it present serious security problems, it looks like you don't care
                    two-hoots about other people's information.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AvoidSensitiveInformation.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AvoidSensitiveInformation.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="RememberAttachment"></a>Do you always remember your attachment?</h2>
                <p>
                    When you refer to an attachment in your email, don't forget to include the attachment.
                    I always attach the files first before I write my message.
                </p>
                <table class="clsSSWProductTable" summary="LookOut" style="width: 550">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/LookOut/">SSW LookOut! for Outlook</a> to
                            check for this rule.
                            <br />
                            <br />
                            <img src="Images/ContactorAttached.gif" alt="Contact or attached" width="510" height="126" /><br />
                            <b>Figure: SSW LookOut! for Outlook automatically warns you if you have forgotten to
                                include your attachments. </b>
                        </td>
                    </tr>
                </table><br/>
              <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/RememberAttachment.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/RememberAttachment.aspx</a></font>                  
            </li>
            <li>
                <h2>
                    <a name="LargeAttachment"></a>Do you avoid huge images or attachments in your email?</h2>
                <table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Attachments"
                    width="40%" align="right">
                    <tr>
                        <td>
                            Dear Mike<br />
                            Thank you for spending time with us to come to a better understanding of your business
                            requirements. Please review the new version of specification at <a href="/ssw/SQLAuditor/Default.aspx">
                                http://www.ssw.com.au/ssw/SQLAuditor/Default.asp</a><br />
                            PS: The .docx was 4MB so I didn't attach a copy Regards,<br />
                            Adam Cogan<br />
                            <a href="/ssw">www.ssw.com.au</a>
                        </td>
                    </tr>
                </table>
                <ol>
                    <li>Avoid large attachments. So if you are sending an email that is >1MB you need to
                        take one second to think:
                        <ul>
                            <li>Could a URL be better than this attachment? (see example on the right)</li>
                            <li>Could I send this a UNC to an internal share be better than this attachment?</li>
                            <li>Could I .zip this?</li>
                            <li>Could I put this picture on flickr or picasca?</li>
                        </ul>
                        PS: An added advantage is that the document stays alive. If the URL has been updated
                        and a user takes a week to get around to this email, they will view the latest version.
                    </li>
                    <li>If you have to attach the document, always use WinZip - it is common courtesy -
                        I'll assume you already know that. </li>
                    <li>Never use Rich Text inside Outlook. As a software developer, most large messages
                        I receive are screen captures. By all means use screen captures - pictures do tell
                        a thousand words - but don't include unnecessarily huge images or attachments in
                        your email. Generally the only time you will have serious size problems is if you
                        are using Rich Text instead of HTML inside Outlook.</li>
                    <li>If you are sending screenshots then just send the region of the screen you need.
                        Use a screen capture utility like <a href="/ssw/Standards/DeveloperGeneral/WindowsTools.aspx#Fullshot">
                            Fullshot</a> so you can use the region tool and get only the relevant part of
                        the image you need. PS: Don't send screenshots as .bmps use .jpgs .gif or .png
                    </li>
                    <li>If you are sending pictures (every year digital cameras are making our photos bigger
                        and bigger) you may need to resize them down. You can either use Photoshop or for
                        something quicker try Office Document Imaging.</li>
                    <dl class="image">
                        <dt>
                            <img src="Images/OfficeDocumentImagingResize.gif" alt="Office Document Imaging Resize"
                                width="200" height="444" /><img src="Images/OfficeDocumentImagingExport.gif" alt="Office Document Imaging Export"
                                    width="200" height="444" />
                        </dt>
                        <dd>
                            Figure: Office Document Imaging Resize and Export Options</dd></dl>
                </ol>
                <br />
                <b>When should you break these size rules?</b>
                <p>
                    Basically you should be practical:
                </p>
                <ol>
                    <li>Keep history</li>
                    <li>Paste images into the email - not into a Word document and attach (so it stays with
                        the customers reply)</li>
                    <li>When you paste a URL, also paste the section of the web page you are referring to
                        (allows for offline reading)</li>
                </ol>
                <br />
                &nbsp;
                <table class="clsSSWProductTable" summary="LookOut">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/LookOut/">SSW LookOut! for Outlook</a> to
                            check for this rule.
                            <br />
                            <br />
                            <img src="Images/ContactorMailSize.gif" alt="Contact or Mail Size" width="504" height="273" /><br />
                            <b>Figure: SSW LookOut! for Outlook warns you if your mail size is large. </b>
                        </td>
                    </tr>
                </table><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AvoidLargeAttachment.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AvoidLargeAttachment.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="UseWORDAsEditor"></a>Do you use Word as your editor?</h2>
                <dl class="image">
                    <dt>
                        <img src="Images/OutlookWordAsEditor.gif" alt="Outlook Word As Editor" border="1"
                            width="398" height="80" /></dt><dd>Figure: Make sure you have this check box on</dd></dl>
                In Microsoft Outlook you have the option to use Word as your Email editor.
                <p>
                    This has a few advantages:</p>
                <ol>
                    <li>It automatically compresses images which you paste into your email (meaning a much
                        smaller size email) </li>
                    <li>You get all the benefits of Word eg. Formatting and styles, spell checking smart
                        tags, thesaurus - the list goes on and on. </li>
                    <li>With the emergence of some great 3rd Party Smart Tags you can integrate your database
                        in your email program. Companies often forget that improving users ability to handle
                        email efficiently can be one of the biggest productivity gains you can achieve.
                    </li>
                </ol>
                <dl class="image">
                    <dt>
                        <img src="Images/OutlookUsingWordAsMyEditor.gif" alt="Outlook Using Word As My Editor"
                            border="1" width="525" height="55" /></dt><dd>Figure: See the difference in size
                            </dd>
                </dl><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/UseWORDAsEditor.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/UseWORDAsEditor.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ResistTheUrgetoSpam"></a>Do you resist the urge to SPAM to an email alias?</h2>
                <p>
                    When you post to an email alias, you are posting to many, many people. Unnecessary
                    emails are spam - only send emails that are valid or if there is a need for all
                    to see.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ResistTheUrgetoSpam.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ResistTheUrgetoSpam.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="DontSendImmediately"></a>Do you avoid sending your emails immediately?</h2>
                <dl class="image">
                    <dt>
                        <img src="Images/OutlookSendImmediately.gif" alt="Outlook Send Immediately" border="1"
                            width="412" height="71" /></dt><dd>Figure: Don't send emails immediately - you will
                                often remember something you needed to add</dd></dl>
                How often have you clicked "Send" and then wished you hadn't? It's a common problem.
                It can be easily solved by un-checking the "Send Immediately When Connected" option
                in Tools/ Options/ Mail Setup. I guarantee this will save you, one day!<br />
                <br />
                <table class="clsSSWProductTable" summary="LookOut" style="width: 550">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/LookOut/">SSW LookOut! for Outlook</a> to
                            check for this rule.
                            <br />
                            <br />
                            It checks your Outlook settings and tell you if it's not set properly.<br />
                            <img src="Images/ContactorSendImmediately.gif" alt="Contact or Send Immediately"
                                width="366" height="55" />
                            <br />
                            <b>Figure: SSW LookOut! for Outlook warns you if Outlook is set to send emails immediately</b>
                        </td>
                    </tr>
                </table><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/DontSendImmediately.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/DontSendImmediately.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="RecallEmails"></a>Do you know how to recall an email?</h2>
                <p>
                    Even though you may check your emails before sending, use SSW lookout to help you
                    avoid mistakes, and even if you send/receive manually, there will still be times
                    where you will send out an email with mistakes or incorrect content.
                </p>
                <p>
                    But all is not lost. If you go into your sent items, open up the offending email,
                    and go into Actions | Recall this Message, outlook will attempt to delete the message
                    from the recipient's inbox before he has a chance to read it.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/RecallMessage.jpg" alt="Recall a message" height="270" /></dt><dd>Figure:
                            SSW LookOut! for Outlook warns you if Outlook is set to send emails immediately</dd></dl>
                <p>
                    Outlook will tell you whether it was successful or not.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/RecallEmails.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/RecallEmails.aspx</a></font>
            </li>
            <li><s>
                <h2>
                    <a name="SortbyClientID"></a>Can you sort your emails by ClientID?</h2>
                <p>
                    When sending emails internally about a Client, include the Client ID as the first
                    word in the subject of the email. This makes it very simple when you are trying
                    the find emails about that client or product. If you're emailing about a product
                    also include the version number in the Subject as well.
                </p>
                <p>
                    Bad Example<br />
                    <b>Subject:</b> Meeting regarding Quicken Smart Tags<br />
                    Good Example<br />
                    <b>Subject:</b> QUICK - Meeting regarding Smart Tags v1.1
                </p>
                <p>
                    Instead of doing this manually, you can use SSW LookOut!, which puts a Client ID
                    field into your Outlook view.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/ContactorClientID.gif" alt="Contact or Client ID" border="1" width="240"
                            height="116" /></dt><dd>Figure: SSW LookOut! adds a Client ID into your Outlook view
                                so you can sort by client</dd></dl><br/></s>
            </li>
            <li>
                <h2>
                    <a name="ManageEmailAccounts"></a>Do you manage your email accounts?</h2>
                <p>
                    I've met some people who have more the 5 email accounts. Now I know that it's pretty
                    easy to get a temporary account while you're on holiday in Spain, or an email account
                    one of your clients might choose to give you while you are working on-site.
                </p>
                <p>
                    We always use Outlook Web Access or VPN when we're out of the office and need to
                    email. If a clients firewall won't let us do this, and we have to use a local account,
                    we always CC our internal account on every email we send. Emails are an important
                    record for your business, and they need to be treated as legally relevant documents.
                    Having multiple accounts will only cause trouble.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ManageEmailAccounts.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ManageEmailAccounts.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="RequestReceipt"></a>Do you use "Request a Receipt" selectively?</h2>
                <dl class="image">
                    <dt>
                        <img src="Images/OutlookReceiptRequest.gif" alt="Outlook Receipt Request" border="1"
                            width="243" height="54" /></dt><dd>Figure: Selectively request read receipts so as not
                                to annoy your recipient.</dd></dl>
                <p>
                    Do you always demand a receipt for every email you send? This is the equivalent
                    of crying wolf. People get prompted about receipts so often, that eventually they
                    change the settings to automatically ignore receipt requests. Then when someone
                    really, really needs acknowledgement that an email has been received, you never
                    get one, because they've turn off the mechanism. Turning this option on all the
                    time effectively throws the option away, not just for yourself, but everyone else
                    as well.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/RequestReceipt.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/RequestReceipt.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="MakeAppointments"></a>Do you send Outlook Calendar appointments when appropriate?</h2>
                <table>
                    <tr valign="top">
                        <td>
                            <p>
                                If you wish to organize a meeting that involves some of your colleagues and a client,
                                instead of sending an email, send an appointment. Sending appointments is convenient
                                because all the user has to do is click 'accept' and it is in their calendar.
                            </p>
                            <dl class="image">
                                <dt>
                                    <img src="Images/OutlookAppointment.gif" alt="Outlook Appointment" border="1" width="345"
                                        height="168" /></dt><dd>Figure: Use Outlook appointments to easily synchronise your
                                            calendar with your client's</dd></dl>
                            <p>
                                This way Outlook will remind your colleagues about the appointment and you can update
                                them if any changes are made.
                            </p>
                            <p>
                                If the appointment is for <b>3 days or less</b>, send a separate appointment for
                                each day. This is because multiple-day appointments appear at the top in your Outlook
                                Calendar, so you risk missing the appointment (see below).</p>
                            <dl class="badImage">
                                <dt>
                                    <img border="0" src="Images/BadMultipleDayAppointment.gif" alt="Bad Multiple Day Appointment"
                                        width="600" height="465" /></dt><dd>Figure - Bad: Multiple-day appointments appear hidden
                                            at the top of your Outlook calendar, so you might miss it, thinking that the time
                                            is free</dd></dl>
                            <dl class="goodImage">
                                <dt>
                                    <img border="0" src="Images/GoodSingleDayAppointments.gif" alt="Good Single Day Appointments"
                                        width="600" height="465" /></dt><dd>Figure - Good: Send a separate appointment for each
                                            day so you can clearly see it in your Outlook calendar</dd></dl>
                        </td>
                    </tr>
                </table><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/SendOutlookCalendarAppointmentsAppropriate.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/SendOutlookCalendarAppointmentsAppropriate.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="someonescalendar"></a>Do you know how to add an appointment in someone
                    else's calendar?</h2>
                <p>
                    When sending an appointment from someone else's calendar, you should always include
                    that person as an attendee so that they also receive the same appointment email
                    that their guests do. It shows them that the invitation has been sent, and also
                    allows them to check for any mistakes or additional information that needs to be
                    added.</p>
               <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AddAppointmentInCalendarOfSomeone.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AddAppointmentInCalendarOfSomeone.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="BetterMeeting"></a>Have you done follow-up for tomorrow appointment?</h2>
                <br />
                <p>
                    Step 1: Get the appointment<br />
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/betterMeeting1.gif" alt="Calendar window" width="1060"
                                height="752" /></dt><dd>Figure: Calendar page</dd></dl>
                    <br />
                    Step 2: Reply to All<br />
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/betterMeeting2.gif" alt="Sent to all who participate in the meeting"
                                width="1060" height="588" /></dt><dd>Figure: Sent to all participators</dd></dl>
                    <br />
                    Step 3: Change from RTF to HTML<br />
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/betterMeeting3.gif" alt="Changing email format to HTML"
                                width="1060" height="584" /></dt><dd>Figure: Change format to HTML</dd></dl>
                    <br />
                    Step 4: And type [below]
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/betterMeeting4.gif" alt="Type the messages" width="1060"
                                height="588" /></dt><dd>Figure: Types the messages</dd></dl>
                    <br />
                </p>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AppointmentForBetterMeeting.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AppointmentForBetterMeeting.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="AppointmentSubject"></a>Appointments - Do you see who is coming to the
                    meeting in the subject?</h2>
                <p>
                    When sending an appointment, it's a good idea to choose your subject intelligently
                    so that people can see in their calendar who will be attending without having to
                    open the item. Think about what the recipient sees in their calendar and try to
                    make it as clear as possible.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/ApptSubjectBad.jpg" alt="Bad Appointment Subject" width="771" height="558" /></dt><dd>Figure:
                            Bad appointment subject</dd></dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/ApptSubjectGood.jpg" alt="Good Appointment Subject" width="770"
                            height="593" /></dt><dd>Figure: A good appointment subject</dd></dl><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AppointmentSubject.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AppointmentSubject.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="MeetingTimeDate"></a>Do you avoid putting the time and date into the text
                    field of a meeting?</h2>
                <p>
                    Avoid putting the date and time into the text field of a meeting since these are
                    often overlooked when changing the meeting time/date metadata.
                </p>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AvoidMeetingTimeDate.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AvoidMeetingTimeDate.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="DontUseAutoArchive"></a>Do you avoid using Auto Archive?</h2>
                <dl class="image">
                    <dt>
                        <img src="Images/OutlookAutoArchive.gif" alt="Outlook Auto Archive" width="272" height="162" /></dt><dd>Figure:
                            Turn off AutoArchive so your emails do not get thrown away</dd></dl>
                <p>
                    If you use Exchange Server, Auto-Archive moves the archived items from the Exchange
                    Server to a local drive on your notebook or desktop. While this keeps your Exchange
                    Server nice and small, if you happen to use email as legal documents, or want to
                    search for emails you've sent a year ago, Auto-Archive is like throwing data away.
                </p>
                <p>
                    I promise you'll be thankful you never deleted your Sent Items.
                </p>
                <table class="clsSSWProductTable" summary="LookOut" width="55%">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/LookOut/">SSW LookOut! for Outlook</a> to
                            check for this rule.
                            <br />
                            SSW LookOut! for Outlook can tell you if you have archive on.<br />
                            <img src="Images/ContactorNoAging.jpg" alt="Contact or No Aging" width="364" height="59" />
                            <br />
                            <b>Figure: SSW LookOut! for Outlook warns you if Outlook is set to archive your emails</b>
                        </td>
                    </tr>
                </table><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/DontUseAutoArchive.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/DontUseAutoArchive.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="EmailsArentYourProperty"></a>Do you remember that emails aren't your property?</h2>
                <p>
                    The Australian Government Privacy Act permits employers to monitor employees' email
                    (and web browsing) logs. While employers are encouraged to develop and promulgate
                    a clear privacy policy, it's essentially a recommendation. Many employers may not
                    have the resources to develop such a policy, but nothing prevents them from reviewing
                    email records on the server. The Government admits that &quot;system administrators
                    are usually able to access everything on the network.&quot;
                </p>
                <p>
                    The sensible response for employees is to be careful about what they say in email
                    and abide by appropriate usage rules / etiquette even if they don't exist! Follow
                    common sense on this one. Remember that your work email address should not be used
                    for personal mail.
                </p>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/EmailsArentYourProperty.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/EmailsArentYourProperty.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="MonitorCompanyEmail"></a>Do you Monitor Company Email?</h2>
                <table align="right" width="20%">
                    <tr>
                        <td>
                            <dl class="image">
                                <dt>
                                    <img src="Images/OutlookMonitorSentItems.gif" alt="Outlook Monitor Sent Items" width="468"
                                        height="123" /></dt><dd>Figure: Monitor Sent Items</dd></dl>
                        </td>
                    </tr>
                </table>
                <p>
                    Following from the previous rule, if email is actually the property of the employer
                    then it makes sense to actually track who is sending emails to whom.
                </p>
                <p>
                    Using the Microsoft Exchange Web Storage System we track the number of emails sent
                    internally (i.e. to an SSW address) and emails sent to clients in our Corporate
                    database.</p>
                <p>
                    We use a <a href="/ssw/ExchangeReporter/">utility for Exchange Reports</a> called
                    SSW Exchange Reporter.</p>
                <p>
                    Note that although it is acceptable for seniors to check juniors' email, it is not
                    acceptable for juniors to check seniors' email.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/MonitorCompanyEmail.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/MonitorCompanyEmail.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="DontUseBadWords"></a>Do you avoid using words that make your email like
                    junk mail?</h2>
                <p>
                    Outlook by default reads your emails and can flag your email as potential junk email,
                    or adult content email by examining a list of bad words. <a href="/ssw/Redirect/Microsoft/OutlookBadWords.htm">
                        Microsoft list of words</a>.<br />
                    <br />
                    Sometimes, you would want to avoid using swear words, or using an angry tone as
                    well.<br />
                    <br />
                </p>
                <table class="clsSSWProductTable" summary="LookOut">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/LookOut/">SSW LookOut! for Outlook</a> to
                            check for this rule.
                            <br />
                            <br />
                            <img src="Images/ContactorBadWord.gif" alt="Contact or bad word" width="504" height="273" />
                            <br />
                            <b>Figure: SSW LookOut! for Outlook checks that you don't use bad words.</b>
                        </td>
                    </tr>
                </table><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/DontUseBadWords.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/DontUseBadWords.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="Unsubscribe"></a>Do you unsubscribe from newsletters?</h2>
                <p>
                    Throughout your years of surfing the net, you're sure to have subscribed to some
                    newsletters that may have interested you at the time. As your interests and preferences
                    change, you will find that you're still on many different spam lists. Instead of
                    deleting the email from your Inbox and thinking that the problem has been solved,
                    you should take the necessary steps to unsubscribe from the list so that you will
                    never get bothered again.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/UnsubscribeFromNewsletters.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/UnsubscribeFromNewsletters.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ReplyAllOnBcc"></a>Do you avoid replying to all when you are only Bcc'ed?</h2>
                <p>
                    If you receive email via BCC other recipients are not aware that you were sent a
                    copy so its actually VERY BAD idea to Reply All in this case.&nbsp; So it's ok to
                    reply to the message you were BCCed, but it's not ok to send your reply to the people
                    on TO or CC list. Only the sender should receive replies from BCC people.
                </p>
                <table class="clsSSWProductTable" summary="LookOut" width="55%">
                    <tr>
                        <td>
                            We have a program called <a href="/ssw/LookOut/">SSW LookOut! for Outlook</a> to
                            check for this rule.
                            <br />
                            <br />
                            <img src="Images/LookoutReplyAllBCCWarning.gif" alt="Lookout Reply All BCC Warning"
                                width="535" height="89" />
                            <br />
                            <b>Figure: SSW LookOut! for Outlook warns you if you accidentally 'Reply All' when you
                                have been BCC'ed</b>
                        </td>
                    </tr>
                </table><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AvoidReplyToAllWhenBcc.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AvoidReplyToAllWhenBcc.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="Outlook2003Security"></a>Do you use the security options in Outlook 2003?</h2>
                <p>
                    When you distribute important information by email all you can do is put &quot;Do
                    Not Forward this please&quot;. Important corporate information should be protected
                    better than this.</p>
                <dl class="image">
                    <dt>
                        <img src="Images/Outlook2003IRMDoNotForward.gif" alt="Outlook 2003 IRM Do Not Forward"
                            border="1" width="269" height="118" /></dt><dd>Figure: With Outlook 2003 IRM you can
                                protect your email messages</dd></dl>
                <p>
                    A solution exists in Microsoft Office 2003 which you will see built into Outlook
                    2003 (and the rest of Office [except Access]), entitled 'Information Rights Management',
                    a file level security application built onto Windows Server 2003. The capability
                    enables you to prevent recipients of your emails (and attachments) from forwarding
                    them on, copying any text, or printing the document (be aware that determined chaps
                    could use a lower level screen shot program to get past this). Additionally, it
                    encrypts the file as it's sent away. As an added basis - you can secure on a group
                    level (based on Active Directory groups).
                </p>
                <p>
                    If you're not running Office 2003 install the <a href="/ssw/Redirect/Microsoft/Office2003IRMDownload.htm">
                        IRM for Internet Explorer download</a>
                    <img src="/ssw/Images/LeaveSite.gif" alt="Leave Site" width="17" height="11" />
                </p>
                <p>
                    BTW you may be interested to know that every mail item that you send gets a file
                    saved with these credentials so you can still open the emails when you are offline.
                    To see: go to Start - Run %USERPROFILE%\Local Settings\Application Data\Microsoft\drm.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/Outlook2003SecurityOption.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/Outlook2003SecurityOption.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="Offlineemail"></a>Do you use Offline Email?</h2>
                <p>
                    And remember to periodically select &quot;Check All Subfolders&quot; to make sure
                    all folders are being synced in your .ost file</p>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/offline.jpg" alt="offline" width="571" height="465" /></dt><dd>Figure:
                            Periodically check that all your mail folders are being synced in your offline.ost
                            file</dd></dl><br/>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/OfflineEmail.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/OfflineEmail.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="OutofOffice"></a>Do you avoid using Out of Office?</h2>
                <dl class="image">
                    <dt>
                        <img height="364" alt="Do you avoid using Out of Office?" src="Images/OutOfOffice.gif"
                            width="491" /></dt><dd>Figure: Avoid using the Outlook Out of Office Assistant - This
                                can fill up your clients' mailboxes with annoying auto-replies</dd></dl>
                <p>
                    When you are on leave, you need to make sure that your mailbox is monitored. I find
                    the best way to do this is by either:
                </p>
                <ul>
                    <li>Asking someone (nicely) to check your mailbox if you are away for 3 days or more.
                        This ensures that any important emails from clients are actioned or,</li>
                    <li>Check it yourself every 3-4 days from home or wherever you are (Hawaii maybe!)</li>
                </ul>
                <p>
                    We do not use 'Out of Office - Automated Response' emails as they can clog up the
                    clients' inboxes - they are considered to be annoying! For example, John gets 300
                    emails a week, if he goes away for 2 weeks and sets his auto-reply on, that's 600
                    auto-replies!
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AvoidUsingOutOfOffice.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AvoidUsingOutOfOffice.aspx</a></font>
            </li>
            <li>
                <h2>
                    &nbsp;<a name="FixUpHistory"></a>Do you fix up the history?</h2>
                <p>
                    When someone sends you a .doc file or images that are attached, when you reply done
                    they (and others CCed) won't be able to see the appropriate history. If it is a
                    word .doc or images open it, copy and paste the text/image into the footer don't
                    leave it as an attachment.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/FixUpHistory.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/FixUpHistory.aspx</a></font>
            </li>
            <li><a name="ReplyToFreeSupport"></a>
                <h2>
                    How do you reply to free support requests which would need more than 20 minutes
                    work?</h2>
                <p>
                    You should reply like this:<br />
                    <table class="clsSSWTable" style="">
                        <tbody>
                            <tr>
                                <td>
                                    <p>
                                        Dear Peter<br />
                                        If it was a quick 5 mins I would do it straight away. However I need to do a little
                                        investigation - maybe a couple of hours.
                                        <br />
                                        If that is OK then here is a <a href="/ssw/Shop/BasketInsert.aspx?ProductID=SUPP2">link
                                            to purchase 2 hours</a> and I will spend that time on this and let you know
                                        how I go.
                                        <br />
                                        James
                                        <br />
                                        www.ssw.com.au
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ReplyToFreeSupport.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ReplyToFreeSupport.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="SearchingSentItem"></a>Do you use a search tool to find your lists of sent
                    items instead of doing it manually?
                    <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
                <p>
                    Looking manually through your Outlook sent items is plain donkey work, that you
                    should not be doing. The better way is: On Windows XP and Office 2003 use the Windows
                    Desktop Search (or Google Desktop Search). On Vista and Office 2007 it is all built
                    in.</p>
                <dl class="badImage">
                    <dt>
                        <img src="/ssw/Images/SearchingManually.jpg" alt="Searching sent emails manually" /></dt><dd>Figure:
                            Bad Example ?Opening your <b>sent Items?</b> and manually looking at the emails
                            ?can take minutes
                        </dd>
                </dl>
                <br />
                <p>
                    Lets use an example, say you are looking for emails sent to Frank where they have
                    sql auditor?and link auditor?in the email (subject or body) then you enter <b>"sent
                        items" to:Frank "sql auditor"</b> in search box; then you get the list of sql
                    auditor emails sent to Frank.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="/ssw/Images/SearchingSentEmails.jpg" alt="Searching sent emails" /></dt><dd>Figure:
                            Good Example ?On Windows XP use Windows Desktop Search ?takes seconds
                        </dd>
                </dl>
                <br />
                <p>
                    If using Microsoft Outlook 2007, then use the search option to find your sent items.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="/ssw/Images/Windows Outlook 2007 Searching.jpg" alt="Searching sent emails in Outlook 2007" /></dt><dd>Figure:
                            Good Example - of searching sent emails using Windows Desktop Search</dd></dl>
                <p>
                    We can also use Exchange Reporter to see the number of emails sent by each users.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="/ssw/Images/ExchangeReporter.jpg" alt="Searching sent emails in Exchange Reporter" /></dt><dd>Figure:
                            Good Example - of searching sent emails using Exchange Reporter</dd></dl><br/>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/UsingSearchToolFindSentItem.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/UsingSearchToolFindSentItem.aspx</a></font>
            </li>
            <li><a name="SentToYourself"></a>
                <h2>
                    Do you assume necessary tasks will get approval?</h2>
                When you are working on a project, you need to follow a <a href="/ssw/Standards/Rules/RulestoManagingSoftwareConsultants.aspx#ProductOwner">
                    Company Champion</a>. However, there will be other little tasks that popup while
                you are working and you have two options to choose.
                <ul>
                    <li>Get the client's approval every time you work on a task</li>
                    <li>Asking the client to respond if they disagree</li>
                </ul>
                <p>
                    You should not be sending yourself a task that you are uncertain of and you need to
                    wait for customer's approval, this can be time consuming. If you assume that the
                    task you are working on would be approved by the customer, you should go ahead with
                    that task.</p>
                <dl class="bad">
                    <pre>To: Scott
Subject: QWI - Aqua UI Improvements from Adam 
Adam suggested that we make the positioning of the "New" Button consistent on all forms. 
Move the New to the right with the Save and close buttons. 
Estimated 15 minutes.
<br />
<span style="background-color: Yellow;">Please approve.</span>
					</pre>
                    <dd>
                        Figure: Bad example.</dd></dl>
                <br />
                <dl class="good">
                    <pre>To: Scott
Subject: QWI - Aqua UI Improvements from Adam 
Adam suggested that we make the positioning of the "New" Button consistent on all forms. 
Move the New to the right with the Save and close buttons. 
Estimated 15 minutes.
					</pre>
                    <dd>
                        Figure: Good Example.</dd></dl>
                <br /><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AssumeNecessaryTasks.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AssumeNecessaryTasks.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="WorkOffline"></a>Do you work offline with the current release public folder?</h2>
                <p>
                    Public folders can't work offline unless you have them added to the Favorites folders.
                    This is necessary because you can't keep connected with the Internet all the time.<br />
                    After you add a public folder into your Favorites folder, outlook can synchronize
                    it to your local machine automatically, so that you can work offline with the public
                    folder.<br />
                    If there are many public folders, just keep the current release public folders synced.
                </p>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/FavoritiesFolder.gif" alt="Work offline with the public folder" /></dt><dd>Figure:
                            Good Example - Work offline with the Public folder</dd></dl><br/>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/WorkOffline.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/WorkOffline.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ClientAttachment"></a>Are you aware of the importance of client's attachment?
                </h2>
                <p>
                    Sometimes clients will add attachment files into emails. Those files could be documents
                    or images, which may contain details or solutions of the issue, or some helpful
                    information.<br />
                    To keep the history, it is very important to embed the attachment files into the
                    email since it's easy to lose those files when responding.
                </p>
                <dl class="badImage">
                    <dt>
                        <img src="Images/EmailAttachImage_1.JPG" alt="Image attached" />
                    </dt>
                    <dd>
                        Figure: The image is in attachment.</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img src="Images/EmailAttachImage_2.JPG" alt="Image in the content" />
                    </dt>
                    <dd>
                        Figure: The image is included in the context.</dd>
                </dl>
                <p>
                    PS:clients make attachments because they are using OWA and you can't paste an image
                    in - <a href="../BetterSoftwareSuggestions/outlook.aspx#OWAAttachImage">see suggestion
                        for OWA </a>
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ClientAttachment.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ClientAttachment.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="ReduceSpam"></a>Do you know how to reduce spam?
                </h2>
                <p>
                    <b>Problem:</b>
                    <br />
                    Spam. It wastes time and resources. In most cases, the amount of spam received by
                    an organization far exceeds the amount of legitimate email.
                    <br />
                    Eg. Average volume of spam received daily at SSW
                    <br />
                    <table border="1">
                        <tr>
                            <td>
                                Total Email Recieved
                            </td>
                            <td>
                                Spam
                            </td>
                            <td>
                                Legitimate
                            </td>
                            <td>
                                Spam %
                            </td>
                        </tr>
                        <tr>
                            <td>
                                2130
                            </td>
                            <td>
                                1331
                            </td>
                            <td>
                                799
                            </td>
                            <td>
                                62
                            </td>
                        </tr>
                    </table>
                    <br />
                    <b>Options:</b>
                    <br />
                    1. Software Spam Filters
                    <ul>
                        <li>Microsoft Outlook Junk Filter</li>
                        <li>GFI MailEssentials</li>
                        <li>Red Earth Policy Patrol</li>
                        <li>Websense Email Security</li>
                    </ul>
                    2. Hosted Spam Filters
                    <ul>
                        <li>Google Apps Gmail (Free)</li>
                        <li>Google Message Filtering</li>
                        <li>Websense Hosted Email Security</li>
                        <li>SpamSoap Core Filtering</li>
                        <li>Microsoft Exchange Hosted Services</li>
                    </ul>
                    <br />
                    <b>Solution:</b>
                    <br />
                    At present, all email is filtered at the local Exchange server by GFI MailEssentials
                    12. While it removes a large amount of spam, an unacceptable amount still reaches
                    user inboxes. The current architecture is shown here.
                    <br />
                    <dl class="goodImage">
                        <dt>
                            <img src="/ssw/Standards/Rules/Images/Spam.gif" alt="Previous Email Architecture" />
                        </dt>
                        <dd>
                            Figure: Previous email architecture.</dd>
                    </dl>
                    <br />
                    GMail's basic service is the only free hosted solution, so it is naturally the first
                    one to try. With Gmail as part of the solution the architecture changes to the following.
                    The number of emails caught by each of the filters are averages.
                    <br />
                    <dl class="goodImage">
                        <dt>
                            <img src="/ssw/Standards/Rules/Images/SpamWithGoogle.gif" alt="Current Email Architecture with GMail" />
                        </dt>
                        <dd>
                            Figure: Current email architecture with GMail.</dd>
                    </dl>
                    <br />
                    <b>Process:</b>
                    <br />
                    The following steps need to be taken:
                    <br />
                    <ul>
                        <li>1. Register for a Google Apps Standard Edition account. Go to <a href="/SSW/Redirect/Google/GoogleMail.htm">
                            http://mail.google.com</a> and register with your domain name.</li><br />
                        <li>2. Setup a catch-all account in Gmail and enable POP3 access to it. This means that
                            only one account will need to be checked to retrieve filtered mail.</li><br />
                        <li>3. Setup QSS Exchange Connector (<a href="/SSW/Redirect/quantumsoftware.htm">http://www.quantumsoftware.com.au/</a>)
                            on your local Exchange server. This software bridges Gmail with Exchange. It logs
                            into Gmail via POP3, retrieves the messages and then distributes them to users'
                            individual accounts based on the header recipient fields.</li><br />
                        <li>4. Switch over your MX records to point to Google's servers. This takes around 24
                            hours to take effect. When the change fully propagates, email will be delivered
                            to GMail and retrieved by Exchange Connector.</li><br />
                        <li>5. Monitor the GMail spam folder for false positives. Move false positives to Inbox.
                            After approximately a week, GMail should have learnt enough to be left unmonitored.
                            Emails can then be retrieved by user request.</li><br />
                    </ul>
                    <b>Results</b><br />
                    The following report was generated by GFI MailEssentials 12. Note that the MX records
                    changed over on 12/02/08.
                    <br />
                    <dl class="goodImage">
                        <dt>
                            <img src="/ssw/Standards/Rules/Images/SpamGFIReportWithFullshot.gif" alt="GFI MailEssentials Reports" />
                        </dt>
                        <dd>
                            Figure: GFI spam statistics over the architecture change-over periods.</dd>
                    </dl>
                    <br />
                    <ul>
                        <li>It can be seen that after the MX records changed over, there were a couple of days
                            of unusual data. This was due to the MX record change over and filter learning period.</li>
                        <li>By the 16th, only 20 emails were marked as spam by MailEssentials. It can also be
                            seen that the percentage of overall spam dropped from as high at 78% to mostly single
                            digit percentages. GMail was now catching the vast majority of spam.</li><br />
                    </ul>
                    It must be acknowledged that, while these figures do not represent the amount of
                    spam actually reaching mailboxes, they do give a good indication of how effective
                    Gmail's filters are.<br />
                    <br />
                    <ul>
                        <li>From further investigation, it was found that info[at]ssw.com.au, which receives
                            more spam than any other account, was now receiving around 5 unsolicited messages
                            a week, as opposed to a hundred or more prior to GMail implementation.</li>
                        <li>In the first two weeks after implementation GMail caught 23124 spam emails, an average
                            of 1652 per day.</li>
                        <li>Apart from the obvious benefits, this also saved 641 MB of bandwidth allowance.</li>
                        <li>In the case of info[at]ssw.com.au, a modest calculation of time saved reviewing
                            spam would be 10 hours per year. This estimate is based on an average of 25 emails
                            per day and 4 seconds spent reviewing each one. Actual times will obviously fluctuate,
                            as will the amount of spam other users receive.</li><br />
                    </ul>
                    <b>Possible Issues:</b><br />
                    <ul>
                        <li>A third-party has access to your email.</li>
                        <li>False positives. The GMail filter is very accurate but it is possible legitimate
                            emails will be caught. In the Standard (free) Edition of Google Apps, spam emails
                            are only retained for 30 days before being permanently deleted. With Premier Edition
                            (US$50 for one account for a year) you have 90 days with the inclusion of Postini
                            message management.</li>
                        <li>Inbound emails will be limited to 20MB per message.</li>
                        <li>In the current stable release (3.5.9) of QSS Exchange Connector, mailing list emails
                            from Yahoo Groups and the like are not correctly delivered to mailboxes when "Automatically
                            detect recipients" is turned on. This has been addressed in beta release 3.6.0.2397
                            and should make it to a stable release soon.</li>
                        <li>Using this method, all spam is delivered to one mailbox. This has the advantage
                            that one person can easily review all spam. The disadvantage is that each user doesn't
                            have easy access to his/her spam messages. If users do not personally their own
                            messages, legitimate email is more likely to be lost. Google Message Filtering would
                            be a solution to this issue.</li>
                    </ul>
                </p>
               <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ReduceSpam.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ReduceSpam.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="PlusOne"></a>Do you know when to use +1?
                </h2>
                <p>
                    When someone make a suggestion or a complaint. Usually you only hear from the ones
                    who disagree. It helps to let others on the thread know you agree, by replying with
                    "+1" and a quick sentence.
                </p>
                <dl class="good">
                    <pre>
From: Adam Cogan
Sent: Tuesday, 29 April 2008 11:59 AM
To: Code Auditor Team
Subject: RE: Rule files

+1 on this. It can be quite frustrating.
________________________________________
From: Uly
Sent: Tuesday, 29 April 2008 11:51 AM
To: Code Auditor Team
Subject: Rule files
Hi,
 
I saw two clients today that complained about Rule files being created even though one had already existed.  They were all named
<name-here>x.SSWCodeAuditor where x was a number from 1 to 13 in one of the cases.
 
Why do these keep being created?
 
Uly
</pre>
                    <dd>
                        Figure: Good Example.</dd>
                </dl><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/PlusOne.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/PlusOne.aspx</a></font>
            </li>
            <li><a name="EmailwithEstimation"></a>
                <h2>
                    Do you put the estimation at the bottom of the email when sending a task to self?</h2>
                <p>
                    If you are asked to do some work, at first you should send yourself a task and CC
                    the one who asks you to do the task (and other related people ). When you draft
                    this email, please put an estimation at the bottom, so every knows how much you
                    need to finish this task.
                </p>
                <p>
                    The estimation is more important if the task is from clients. A client cares about
                    the time more than others because he has to pay for having this task done. Thus,
                    he will be happier to see a notification with an estimation. With this estimation,
                    he can stop you easily if he thinks the time is a bit more than excepted. No client
                    would like to know it takes a lot of time to complete this task without being informed
                    of this in advance.</p>
                <dl class="badImage">
                    <dt>
                        <img alt="Bad - Send a task to self without an estimation" src="Images/EmailWithoutEstimation.JPG" />
                    </dt>
                    <dd>
                        Figure: Bad - Send a task to self without an estimation
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img alt="Good - Send a task to self with an estimation" src="Images/EmailWithEstimation.jpg" />
                    </dt>
                    <dd>
                        Figure: Good - Send a task to self with an estimation
                    </dd>
                </dl><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/EmailWithEstimation.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/EmailWithEstimation.aspx</a></font>
            </li>
            <li><a name="ReplyBug"></a>
                <h2>
                    Do you know how to reply a bug or problem reported?</h2>
                <p>
                    To reply a bug effectively and efficiently in your emails, you need include:
                </p>
                <ol>
                    <li>Investigation - the reason of the bug or what you have investigated if cannot figure
                        out the cause, e.g. check Windows event logs and found nothing helpful </li>
                    <li>Solution - how you fix the bug (code snippet if necessary)</li>
                    <li>Current Status - the bug is fixed (screenshot of working application) or not fixed
                        (ask more details information to client)</li>
                </ol>
                <dl class="goodImage">
                    <dt>
                        <img alt="Good - Reply a bug" src="Images/better_emails_reply_bug.jpg" />
                    </dt>
                    <dd>
                        Figure: Good - Reply a bug
                    </dd>
                </dl><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ReplyBugOrProblemReported.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ReplyBugOrProblemReported.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="HandOverTask"></a>Do you know how to hand over tasks to others?</h2>
                <pre>
New,
I already talked with Sergei, he will handle it.

________________________________________
From: Adam 
To: Andy 
Cc: Sergei; 
Subject: Timepro! 

Hi Andy,

As per our conversation yesterday about TimePro! keeps crashing when I do a search under 'Company', please fix
</pre>
                <dl class="bad">
                    <dd>
                        Figure: Bad example - task not clearly redirected</dd></dl>
                <pre>
Sergei

As per our conversation - please action


________________________________________
From: Adam 
To: Andy 
Cc: Sergei; 
Subject: Timepro! 

Hi Andy,

As per our conversation yesterday about TimePro! keeps crashing when I do a search under 'Company', please fix
</pre>
                <dl class="good">
                    <dd>
                        Figure: Good example - task clearly redirected</dd></dl><br/>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/HandOverTask.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/HandOverTask.aspx</a></font>
            </li>
            <li>
                <h2>
                    <a name="AttachEmail"></a>Do you avoid attaching emails to emails?</h2>
                <p>
                    Sometimes, in order to add someone in to the loop on something, you might write
                    an email and attach another email as reference material.
                    <br />
                    Generally this is not a good idea and you are better off replying to the original
                    email instead to you can keep it in the history of ongoing threads.<br />
                    The exception is when you are already in a conversation thread with important history
                    and you want to add more reference material to the email, although even then it's
                    a good idea to also quote the particular line of interest as well.
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AvoidAttachEmail.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/AvoidAttachEmail.aspx</a></font>
            </li>
            <li>
                <h2><a name="DoneTasks"></a>Do you add a quality control step for checking "DONE" tasks?</h2>
                <p>
                    If you need someone to check your work before sending the "DONE" email, simply ask for that person to come over and check it on your computer or IM him/her if the person is not close by (e.g. in different room). This way you are guaranteed instant feedback and you won't clog up someone else's inbox with unnecessary emails. 
                </p>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/QualityControlStepForDoneTasks.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/QualityControlStepForDoneTasks.aspx</a></font>
            </li>
            <li>
                <h2><a name="Attachment"></a>Do you know not to use email to forward client attachments?</h2>
                <p>
                    You'd better use location links instead of forward client attachments.
                </p>
                <dl class="badImage">
                    <dt>
                        <img alt="Forward client attachments" src="Images/Email_Attachment_1.jpg" />
                    </dt>
                    <dd>
                        Figure: Bad example - Forward client attachment by mail
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img alt="Use location links" src="Images/Email_Attachment_2.jpg" />
                    </dt>
                    <dd>
                        Figure: Good example - Use location links in mail
                    </dd>
                </dl><br/>
                <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ClientAttachments.aspx">http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/ClientAttachments.aspx</a></font>
            </li>
        </ol>
        <h2>
            Links</h2>
        <ul>
            <li><a href="/ssw/Redirect/Microsoft/MSOutlookTips.htm" target="_blank" class="external">
                Microsoft Power Tips for Organizing Your Outlook 2002 Inbox</a> </li>
            <li><a target="_blank" href="/ssw/Redirect/YaleUniLibraryTipsEffectiveEmails.htm"
                class="external">Yale University Library - Tips on Writing Effective Email Messages</a>
            </li>
            <li><a target="_blank" href="/ssw/Redirect/Web/AustralianGovernmentPrivacy.htm" class="external">
                Australian Government Guidelines on Workplace Email, Web Browsing and Privacy</a>
            </li>
            <li><a href="/ssw/Redirect/EmailBlues.htm" target="_blank" class="external">News.com.au
                - Email blues cause stress</a> </li>
            <li><a target="_blank" href="/ssw/Redirect/SSWUpdate/0304MetagroupUsersPreferEmail.htm"
                class="external">80% of Users Prefer EMail as Business Communication Tool</a>
            </li>
            <li><a target="_blank" href="/ssw/Redirect/SMH/SMH.htm" class="external">New study shows
                that email is a contributor to workplace stress</a> </li>
        </ul>
    </div>
    <br />
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <%--<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=CS">--%>
        Cameron Shaw<%--</a>--%>
    </p>
</asp:Content>
