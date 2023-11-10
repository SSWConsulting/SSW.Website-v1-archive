<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft Outlook Suggestions"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

<asp:label id="lblWelcome" runat="server"></asp:label>

<div id="intro">
    <p>
        <table class="floatLeft">
            <tr>
                <td><img src="images/OutlookIcon.GIF" border="0" alt="" width="55" height="52" /></td>
            </tr>
        </table>
        As Emails become major method for communication, Outlook becomes an essential tool 
        for business. In SSW, we use Outlook extensively to manage our internal/external communication and 
        projects, we treat Emails very seriously and we believe we can make Outlook better by giving the 
        following suggestions.
        
    </p>
</div>
<br />
<div class="TableOfContents">
        <ol>
            <li><a href="#RelatedEmails">Show number of related messages left in your inbox and their subfolders</a></li>
			<li><a href="#CloseReliable">Make the closing down of outlook more reliable</a></li>
			<li><a href="#ContactInfomation">Adding "Created By" and "Updated By" fields for contact information</a></li>
			<li><a href="#Plugins">Outlook needs to have a better model to develop plugins</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
			<li><a href="#OutlookProgramming">Bad Outlook Programming Model: No Outlook.Item exposed!</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
			<li><a href="#OutlookProgramming2">Bad Outlook Programming Model: Incorrect FolderPath returned!</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
			<li><a href="#CorruptFiles">Corrupt .PST and .OST Files</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
			<li><a href="#Redemption">Need to lose Redemption</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
			<li><a href="#EmailsAsTasks">Outlook should support treating emails as Tasks</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
			<li><a href="#CorruptMail">Corrupt mail on bounce-resend</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
			<li><a href="#GoogleHighlight">Google highlight for emails</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></li>
			<li><a href="#OutlookFilter">Add Filter to context menu</a></li>
			<li><a href="#OutlookAttachments">Can attachments be listed in a reply?</a></li>
			<li><a href="#OutlookCompress">There needs to be a 'compress email' option</a></li>
			<li><a href="#OutlookHTMLView">When editing an email in HTML format there should be an HTML view</a></li>
			<li><a href="#OutlookCalendarFormat">Calendar entries should support HTML formatting</a></li>
			<li><a href="#AddEditButtonInCalendar">Calendar - Missing an edit button</a></li>
			<li><a href="#OutlookCalendarPrint">Calendar - Help me Print my Monthly Calendar without certain appointments showing</a></li>
			<li><a href="#OutlookTimeZone">Need a country/time zone combo</a></li>
			<li><a href="#OutlookNewsgroups">Newsgroups</a></li>
			<li><a href="#OutlookSpam"><strike>Give Outlook better spam filtering</strike></a></li>
			<li><a href="#OutlookAutoComplete">Autocomplete Email addresses</a></li>
			<li><a href="#OutlookStatus">Status bar in HTML mails</a></li>
			<li><a href="#OutlookReceipts">Making Read Receipts useful</a></li>
			<li><a href="#OutlookSortMethod">Limitation on Sort Method</a></li>
			<li><a href="#OutlookConflict">Conflict errors and Conflict Resolver</a></li>
			<li><a href="#OutlookFolderName"><strike>Cannot Edit Mail Folder Name Directly (Fixed in Outlook 2007, the textbox is disabled)</strike></a></li>
			<li><a href="#sortBySubject"><strike>Replied Mails aren't in the same group</strike></a></li>
			<li><a href="#Datafiles">Outlook data files</a></li>
			<li><a href="#MoveToFolderList">Outlook Move To Folder list</a></li>
			<li><a href="#ItemsDisappear">Items disappear when moved into a folder with a home page</a></li>
			<li><a href="#AppointmentHistory"><strike>Appointments lose the history when you reply (Fixed in Outlook 2007)</strike></a></li>
			<li><a href="#VoteHistory"><strike>Votes lose the history when you reply (Fixed in Outlook 2007)</strike></a></li>
			<li><a href="#SendSpecificItem">There should be a way to send a specific item immediately</a></li>
			<li><a href="#WebAccessMoveAddress">There should be a 'Move to CC' option on right click in OWA</a></li>
			<li><a href="#DeleteButtonOnDrafts">Have a delete button on draft emails</a></li>
			<li><a href="#Addfullpath">Add full path to the location field</a></li>
			<li><a href="#SendReceiveSettings">Bad UI in Send/Receive Settings window</a></li>
			<li><a href="#RemoveDefault">Remove one of the dumbest defaults in history</a></li>
			<li><a href="#FavoritesFolder">Working with favorites folder</a></li>
			<li><a href="#SMSSupport"><strike>SMS Support (Fixed in Outlook 2007)</strike></a></li>
			<li><a href="#SpamFolder">Spam folder should have a "Spam" field like Spam Bayes does</a></li>
			<li><a href="#OutlookProgress">Outlook progress difficult to see</a></li>
			<li><a href="#AllDayEvent"><strike>Number of visible "All Day Event" should not be limited by window size (Fixed by separate scrollbar in Outlook 2007)</strike></a></li>
			<li><a href="#RemoveRTF">Remove RTF as an option or explain when it is a good choice</a></li>
			<li><a href="#ContentsPage">Add the ability to have a contents page added to an email</a></li>
			<li><a href="#ProgressState">Add the status for the progress bar</a></li>
			<li><a href="#SoundFeedback">Play a sound at the end of send/receive process</a></li>
			<li><a href="#HideProgressBar">Hide the progress bar at the end of send/receive process</a></li>
			<li><a href="#PasteScreenPrint"><strike>Allow me to do a alt+PrintScreen and paste an image in Outlook (Fixed in Outlook 2007)</strike></a></li>
			<li><a href="#ToFieldOptions">Add options on the names in To field in OWA</a></li>
			<li><a href="#ImageSize">Image Size</a></li>			
			<li><a href="#CheckActive">Check if Active Sync is active before closing down</a></li>
			<li><a href="#CreateAppointment">Have a smart tag that shows "Create calendar appointment" by intelligently parsing the text</a></li>
			<li><a href="#NameIntellisenseShortcutNames">Name Intellisense - shortcuts names should be stored with the PST/OST</a></li>
			<li><a href="#NameIntellisenseCheckMoreNames">Name Intellisense - add one more option to check for more names</a></li>
			<li><a href="#NameIntellisenseCheckbox">Name Intellisense - should be referred to the suggeset names checkbox in advance email option</a></li>
			<li><a href="#RemoveRTFOption">Remove RTF Option</a></li>
			<li><a href="#ShowMessengerPicture">Show display picture from MSN Messenger</a></li>
			<li><a href="#OutlookTemplates">Quick Templates for Outlook</a></li>
			<li><a href="#SendFaxandSMS">Send Fax and SMS</a></li>
			<li><a href="#ConversationThread">Allow you to fix the Conversation Threading</a></li>
			<li><a href="#OutolookSupportTemplates">Outlook /OWA should support templates</a></li>
			<li><a href="#FolderSearch">Add a way to search the current folder and subfolders</a></li>
			<li><a href="#RemindersResize">Allow me to resize or maximize Reminders Form</a></li>
			<!--SSW Code Auditor - Ignore next line -->
			<li><a href="#RemindersOpenOnSeperateThread">Open a reminder on a seperate thread</a></li>
			<li><a href="#SearchResultImprovement">Search results could benefit from 3 improvements</a></li>
			<li><a href="#OWAAttachImage">OWA should support pasting images into the email content.</a></li>
			<li><a href="#OutlookIndex">Outlook should add 'Configure' button to 'Indexing Status...' form.</a></li>			
			<li><a href="#AppointmentsImage">Appointments should be able to store images</a></li>			
			<li><a href="#UndoButton">Please add an 'Undo' button on Reminders</a></li>
			<li><a href="#ValidateSubject">Outlook need validate for no subject</a></li>
			<li><a href="#Progress">Send/Receive Progress</a></li>
			<li><a href="#LookingContact">Looking up a contact</a></li>
			<li><a href="#OpenFolderNeed">Need 'Open folder' on right click menu</a></li>
			<li><a href="#DrillThroughOption">Give a drill through option for Categories</a></li>
			<li><a href="#SupportFormatBrush">OWA 2007 should supports FormatBrush</a></li>
			<li><a href="#OWARefresh">OWA 2007 need add Refresh Option</a></li>
			<li><a href="#SearchType">Search - Add "Type" to the "Criteria" combo</a></li>
			<li><a href ="#NoteOnDeletedRecord"> Add a note on deleted record</a></li>
			<li><a href="#AppointmentReminder">Outlook Appointments - Make the Reminders Visible and changeable as when you receive them</a></li>
			<li><a href="#AddFindContacts">Add 'Find' to the right click  menu of the 'Contacts' folder</a></li>
			<li><a href="#ImproveCheckName">Check Names Improvement</a></li>
			<li><a href="#Crashes">All unhandled errors (aka crashes) should take your email</a></li>
			<li><a href="#SupportSMS">Outlook should support SMS (and sync my SMSes)</a></li>
			<li><a href="#ChangeConversationID">Refresh Conversation ID after changing the subject</a></li>
			<li><a href="#DeletedEmails">Outlook should warn of deleted emails on the server</a></li>
			<li><a href="#ExchangeProxy">Exchange Proxy UI + get settings from the server</a></li>
			<li><a href="#Signature">Provide the possibility to add a signature in appointments like in Mail messages</a></li>
			<li><a href="#AppointmentProps">Please add 2 properties to an appointment</a></li>
			<li><a href="#DaysToGo">Need an additional field "Days To Go"</a></li>
			<li><a href="#SpellCheckSubject">Auto spell check the subject</a></li>
			<li><a href="#RepairingMoreInfo">When Repairing Corrupt Data files you need more info</a></li>
			<li><a href="#RunSQLQueries">Would love to run SQL queries against my inbox</a></li>
			<li><a href="#OutlookSearch">Help me setup Outlook search on Windows Server 2008 R2</a></li>
			<li><a href="#CheckNames">Outlook 2010 - Help me fix this annoying behaviour of "Check Names" (aka Control + K)</a></li>
			<li><a href="#SubscribedNewsletters">Cater for Subscribed Newsletters (aka SPAM Level 2)</a></li>
			<li><a href="#MoreInfoAboutSync">Syncing Offline Address Book - need more info so we don't think it is a corrupt 'offline address book template file'</a></li>
			<li><a href="#CompactReason">Slow Outlook - Add a KB explaining the compacting reason</a></li>
			<li><a href="#CompactInfo">Slow Outlook - In the UI, inform about compacting</a></li>
			<li><a href="#MaximumSize">Slow Outlook - In the UI, show the maximum size of the OST/PST</a></li>
			<li><a href="#ConfusionInKB">Slow Outlook - Fix the confusion in the KB</a></li>
			<li><a href="#ChooseContact">Choose Contact - Help me clean duplicates</a></li>
			<li><a href="#MakeCategories">Make working with Categories better</a></li>
			<li><a href="#Outbox">Outlook 2010 suggestion for outbox</a></li>
			<li><a href="#RecurringEmails">I wish Outlook allowed you to have 'Recurring Emails' (like recurring appointments)</a></li>
			<li><a href="#CompactNowUI">Outlook 'Compact Now' UI </a></li>
			<li><a href="#ConvertTimeZone">Outlook should be able help you convert a time zone</a></li>
		</ol>
</div>
<div id="mainContent">

<ol>
	<li>
		<h2><a name="RelatedEmails"></a>Show number of related messages left in your inbox and their subfolders</h2>	
		<p>When I am processing an email in my inbox, I want to complete it and its related messages.
		Currently, Outlook 2007 only gives you the "Related" button and it works very slowly and poorly because Outlook needs to search the related emails in all folders.
		</p>
		<ul>
		    <li>Add a checkbox in Tools | Options "Show number of related messages left and their subfolders".</li>
		    <li>Add a red bar to alert "There are N related messages left and their subfolders".</li>
		</ul>
		<dl class="image">
		    <dt><img src="Images/RelateEmails.gif" /></dt>
		    <dd>Figure: Find related message</dd>
		</dl>
    </li>
	
    <li>
		<h2><a name="CloseReliable"></a>Make the closing down of outlook more reliable</h2>	
		<p>The problem I find with Outlook 2007 (also occurs in Outlook 2003) is that I often close down Outlook, wait a short while then shut down Vista... yet invariably when I start up again, it says the data files weren't closed properly. 
		I can only presume this has something to do with the fact that it seems to keep receiving mail even when it's shut down. 
		I have had the Outlook OST file so corrupted it was impossible to recover it, so I had to re-synchronize > 10+ GB of mails.
		</p>
		<p>I use two laptops (both Vista) and I would say that at least 60% of the time I start up Outlook 2007 on one, it says the file was not closed properly. I don't know what is causing it, but it just adds to the many pain points of Outlook 2007.<br />
		The likely cause of this is that <a href="#CheckActive">some "3rd party" application is keeping Outlook running.</a>
		</p>
    </li>

    <li>
		<h2><a name="ContactInfomation"></a>Adding "Created By" and "Updated By" fields for contact information</h2>	
		<p>
		    I want to know who created this contact and who updated the information for this contact, 
		    it should have "Created By" and "Updated By" fields.
		</p>
		<dl class="image">
		    <dt><img src="Images/outlookcontact.jpg" alt="Contact information" width="663" height="520" /></dt>
		    <dd>Figures: Contact information</dd>
		 </dl>
		<p>
		    <b>Suggestion: Adding "Created By" and "Updated By" fields for contact information, 
            <!--SSW Code Auditor - Ignore next line(HTML)-->
		    and automatic save the logon user to the fields after a contact information was created or updated.</b>    
    	</p>
    	<p>
		    We have a rule better to interfaces about this, please see 
		    <a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Forms.aspx#DataEntryForms">
		    Data Entry Forms - The way to develop Data Entry Forms - Created/Last Updated By Fields</a>
		</p>
    </li>
    
    <li>
	<h2><a name="Plugins"></a>Outlook needs to have a better model to develop plugins<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2> 
	<p>
		The current object model does not make for nice and easy plugin 
		development. Some issues include:
	</p>
	<p>
	Setting the title of the COM addin in the options page:
	</p>
	<dl class="image">
	    <dt><img src="Images/OutlookOptions.gif" width="439" height="509" alt="Options Screen from Outlook" /></dt>
	    <dd>Figure: It takes a lot of effort to change the name of the tab in options</dd>
	</dl>
	<p>
	    To set the title using VSTO you have to have code like this, which is rather unnatural:
	</p>
<pre>[System.Runtime.InteropServices.DispId(-518)]
public string Caption 
{
	get {return &quot;SSW eXtreme Emails&quot;;}
}</pre>


	<p>
		Throw out backwards compatibility and start a fresh. For example, you should be able to inherit the contacts page and change the way it looks 
		and add extra functionality to it.
	</p>
	
</li>
<li>
		<h2>
			<a name="OutlookProgramming"></a>Bad Outlook Programming Model: No Outlook.Item exposed! <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
		<h3>Item Enumeration</h3>
		<p>
		Outlook (probably for backward compatibility reasons) doesn't have a default 
	    Outlook.Item object as the parent of the various Outlook.Items (Outlook.MailItem, 
	    PostItem, AppointmentItem).&nbsp; This means code like this wouldn't work:
	    </p>
	    
	    <dl class="code">
	        <dt>
	        <pre>
dim oItem as Outlook.MailItem
for each oItem in Outlook.ActiveExplorer.Selection
' you get errors for any items (like PostItem), that isn't an 
MailItem in your inbox
MsgBox oItem.Subject
next
		    </pre>
	        </dt>
	        <dd>Figure: Example of incorrect code</dd>
	    </dl>
	    <br />
	    So you have to write something like this<br />
	    <br />
	    <dl class="code">
	        <dt>
	        <pre>
dim oItem as Object
for each oItem in Outlook.ActiveExplorer.Selection
' this will work, because every type of Outlook Item has the subject property... 
' but we're relying on reflection (late binding) here and 
' intellisense doesn't help us when we write code,
' compiler doesn't tell us if we made a typo,
' late binding is slower...
MsgBox oItem.Subject
next
			</pre>
	        </dt>
	        <dd>Figure: Example of correct code</dd>
	    </dl>
</li>	    
	
	<li>
		<h2>
			<a name="OutlookProgramming2"></a>Bad Outlook Programming Model: Cached Exchange Mode Limitations</h2>	
	    
	    <h3>Cached Items in Outlook <img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h3>
		<p>
		When "Cached Exchange Mode" is enabled, items which have been cached locally will have some unexpected behaviour.
		This feature allows one to work with your personal folders, as well as selected public folder contents even when 
		they're disconnected from the Exchange Server.
		</p>
		<p>
		However, once that feature is enabled, if you attempt to access the Parent.FolderPath property, you will be returned 
		an inaccurate folder path. To see this bug in action, select an item in a subfolder of the folder which you have added 
		to Favorites.  Now press Alt+F11 to bring up the Visual Basic editor, followed by Ctrl+G to bring up the Immediate 
		window.
	    </p>
	    <pre>Application.ActiveExplorer.Selection(1).Parent.FolderPath</pre>
		<p>
		This will return 
		</p>
		<pre>'\\Public Folders\Favorites\ImmediateParentFolder'</pre>
		<p>
		One would assume it would return 
		</p>
		<pre>'\\Public Folders\Favorites\ParentFolder\ImmediateParentFolder'</pre>
		<p> 
		but that's not the case. If you disable "Download Public Folder Favorites", then the above code would return the correct canonical 
		path of the folder.
		</p>
		<pre>'\\Public Folders\All Public Folders\ParentFolder\ImmediateParentFolder'</pre>
		
	    <p>
	    In our product <a href="/ssw/EXtremeEmails/">SSW eXtremeEmails!</a>, it prevents the Incident screen from obtaining a 
	    valid URL for the email item.
	    </p>
	    <dl class="image">
	        <dt><img src="Images/OutlookProgramming_url2.jpg" width="536" height="560" /></dt>
	        <dd>Figure: CDO object model failed to retrieve Outlook Web Access URL.</dd>
	    </dl>
	    <p>
	    As a work around, the "Download Public Folder Favorites" settings should be disabled. If you wish to see correct URLs in your 
	    personal folders, "Cached Exchanged Mode" must be disabled all together.
	    </p>
	    <dl class="image">
	        <dt><img src="Images/OutlookProgramming_disablec.gif" width="344" height="433" /></dt>
	        <dd>Figure: Disabling Cached Exchange Mode as a work around to invalid item properties.</dd>
	    </dl>
	    
		<p>
		I hope this would be fixed in the next version of Outlook.  Items in folders added to Favorites should provide the 
		canonical path to aid Outlook 'smart client' plug-ins with Offline functionality, even when "Download Public Folder 
		Favorites" is enabled.
		</p>

</li>

<li>
		<h2><a name="CorruptFiles"></a>Corrupt .PST and .OST Files<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
		<p>
	        We need something better than a .pst file. I would prefer a SQL/MSDE database file that has less chance of going corrupt. I 
	        have seen this message box too many times and the tools scanpst.exe and scanost.exe do not fix it.
	    </p>
	    <dl image="image">
	        <dt><img border="0" src="Images/CorruptFiles.gif" alt="Corrupt Files" width="600" height="130" /></dt>
	        <dd>Figure: There should be something better that .PST files</dd>
	    </dl>
</li>
<li>
	  	<h2>
	  		<a name="Redemption"></a>Need to lose Redemption<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
	  	<p>	  	
	  	There should be some way that it is not needed to create plugins for 
		Outlook.
		</p>
</li>	  
	  		
	
<li>
	<h2><a name="EmailsAsTasks"></a>Outlook should support treating Emails as Tasks<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>

	<p>
	    We believe that email is at it's most effective when you're using your 
	    inbox as a task list. If you need to ask someone a question 
	    it's usually a better option to use the phone. If you are asking 
	    someone to do something however, email works really well, because you then 
	    have a record of the task - with the date and time as well. Outlook should encourage you using your email as a task 
	    tracking system, 
	    and provide a way you can see the status of emails.      
    </p>
	<p>
	    When you send an email there should be a field 'Action' with these choices:
    </p>
	<ul>
		<li>Task - Action Required (default)</li>
		<li>FYI - email is for information purposes only, no action required. </li>
	</ul>
	<p>
	Please add a status combo field to emails (should appear by default in sent items):
	</p>
	<ol>	
        <li>N/A  was a FYI</li>
        <li>N/A  by Adam on 21/9/2005</li>
        <li>Replied  Not Resolved</li>
        <li>Not Replied  in \\Tim\inbox</li>
        <li>Not Replied  deleted from \\Tim\inbox</li>
	</ol>
</li>	

<li>
	<h2>
		<a name="CorruptMail"></a>Corrupt mail on bounce-resend<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
	
	<p>
	    This error occurs when you send an email and it bounces, then you hit send 
	    again. For some reason it sends a whole lot of rubbish.
	</p>
	
    <dl class="image">
        <dt><img border="0" src="Images/Outlook_CorruptionOnResend.gif" alt="Corruption on resend" width="520" height="327" /></dt>
        <dd>Figure: An email has bounced for some reason</dd>
    </dl>
    <dl class="image">
        <dt><img border="0" src="Images/Outlook_CorruptionOnResend1.gif" alt="Corruption on resend" width="532" height="418" /></dt>
        <dd>Figure: Sending the email again... </dd>
    </dl>
    <dl class="image">
        <dt><img border="0" src="Images/Outlook_CorruptionOnResend2.gif" width="547" alt="Corruption on resend" height="418" /></dt>
        <dd>Figure: For some reason the email body becomes corrupted.</dd>
    </dl>
	
</li>

<li>
	<h2>
		<a name="GoogleHighlight"></a>Google Toolbar in Emails<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14" /></h2>
	<p>
	Often I want to search emails for certain words. It would be nice to have the functionality of the Google toolbar 
	available when writing emails.
	</p>
	<p>
	I would like to have this functionality in other office applications also. <a href="Office.aspx#OfficeHighlight">Details</a>
	</p>
	<dl class="image">
	    <dt><img border="0" src="Images/Outlook_GoogleHighlight.gif" alt="Outlook Google Toolbar" width="600" height="349" /></dt>
	    <dd>Figure: It would be nice to have the google toolbar in emails</dd>
	</dl>
</li>	
	
<li>
	<h2>
		<a name="OutlookFilter"></a>Add Filter to context menu</h2>
		<p>
		    The context menus for the grids in in Outlook should have all of the filtering features
		    found in Access.
		</p>
		<p>
		<dl class="image">
		    <dt><img border="0" src="Images/filter_outlook.gif" alt="Outlook" width="382" height="250" /></dt>
		    <dd>Figure: Context menu in Outlook</dd>
		</dl>
	    <dl class="image">
	        <dt><img border="0" src="Images/filter_access.gif" alt="filter access" width="314" height="224" /></dt>
	        <dd>Figure: Context menu in Access</dd>
	    </dl>
            </p>
</li>

<li>
	<h2><a name="OutlookAttachments"></a>Can attachments be listed in a reply?</h2>
    <dl class="image">
        <dt><img border="0" src="Images/Outlook2.gif" alt="Outlook" width="439" height="110" /></dt>
        <dd>Figure: Can attachments be listed in a reply?</dd>
    </dl>
</li>

<li>
	<h2><a name="OutlookCompress"></a>There needs to be a 'Compress Email' option</h2>
	<p> 
	    Depending on the editor used to create an email (eg Word vs. Outlook), 
	    size can vary dramatically. Unfortunately, which editor the sender uses cannot 
        always be controlled. There should be a 'Compress Email' option to 
	    optimize emails using the default editor.
	</p>
		
	<dl class="image">
	    <dt><img border="0" src="Images/Outlook3.gif" alt="Outlook" width="525" height="55" /></dt>
	    <dd>Figure: Put 'Compress Email' option here.</dd>
	</dl>
</li>	
<li>
	<h2><a name="OutlookHTMLView"></a>When editing an email in HTML format there should be an HTML view</h2>
		<p> 
		    Users should be able to access the HTML like in Internet Explorer with 
	        View &gt; Source. This could be implemented like Frontpage with a HTML tab at 
	        the bottom of the window.
	    </p>		
		<dl class="image">
		    <dt><img border="0" src="Images/Outlook5.gif" alt="Outlook" width="245" height="54" /></dt>
		    <dd>Figure: FrontPage provides an HTML view of the content.</dd>
		</dl>
</li>		
<li>
	<h2><a name="OutlookCalendarFormat"></a>Calendar entries should support HTML formatting</h2>
	<p> 
	    Our observations suggest that all calendar entries created with Microsoft 
		Outlook are in Rich Text format. Seeing this has a message size overhead 
		and is less supported by all mail clients, we'd like to see an option 
		for HTML formatting. From what we can tell, the
		<a href="/ssw/Redirect/ICalender.htm" class="external">iCalendar format</a>
		that Outlook makes use of does not have any requirements for rich text.
	</p>
	<dl class="image">
	    <dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/ScreeniCalendarFormat.gif" alt="Screen iCalendar Format" width="555" height="424" /></dt>
	    <dd>Figure: An option for calendar formatting could be found around the 
		iCalendar-relevant data on this screen.</dd>
	</dl>	
</li>	

<li>
	<h2><a name="AddEditButtonInCalendar"></a>Calendar - Missing an edit button</h2>
	<p> 
	 We need an 'Edit' button.
	</p>
	<dl class="image">
	    <dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/EditButton.jpg" alt="There should be an Edit button."  /></dt>
	    <dd>Figure: When someone else adds an item to your calendar (like a PA), you will see this email. There should be an Edit button.</dd>
	</dl>	
</li>	
<li>
   <h2><a name="OutlookCalendarPrint"></a>Calendar - Help me Print my Monthly Calendar without certain appointments showing</h2>
   <dl class="image">
	    <dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/CalendarPrintPreview.jpg" alt="Outlook Calendar print preview."  /></dt>
	    <dd>Figure: There should be a way of setting some appointments to low importance (eg. Daily Standup) and not printing it</dd>
	</dl>	
    <dl class="image">
	    <dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/MoreCheckboxes.jpg" alt="We needs more checkboxes."  /></dt>
	    <dd>Figure: What we need is 2 more checkboxes under this one.</dd>
	</dl>	
	<p>
	[x] Don't print anything for 'Private' appointments<br />
    [x] Don't print anything for 'Low Importance' appointments
	</p>
</li>
<li>
	<h2><a name="OutlookTimeZone"></a>Calendar Items - Need a country/time zone combo</h2>
	<p>
		When I am in Sydney and want to make a 9am appointment (New York time) it should be as simple as choosing [9am] [New York] 
		Currently I have to work it backwards and enter it in Sydney time.  All I need is a "Time Zone" combo.  
		The crazy thing is if you cycle through the properties of a calendar item the "Time Zone" value is there 
		- it is just not exposed on the UI.
		Even when I reply to an appointment I can see both time zones! As an example I get:
	</p>
	<dl class="code">
	    <dt>
	        <pre>
Webinar:    .NET Enterprise Services Essentials
Time:       Thursday, April 17, 2003, 11:00 a.m. PDT (2:00 p.m. EST)
Duration:   One hour, including a Q&A</pre>
	    </dt>
	</dl>
	
	<dl class="image">
	    <dt><img border="0" src="Images/Outlook6.gif" alt="Outlook" width="426" height="163" /></dt>
	    <dd>Figure: Add a "Time Zone" combo box here.</dd>
	</dl>
</li>	
<li>
	<h2><a name="OutlookNewsgroups"></a>Newsgroups</h2>
	<p>
	    Yes, it would be nice not to have to switch to Outlook Express to use newsgroups. 
	    And although I would like to see the functionality in Outlook, I am of the belief 
	    that there are so many other things that the Outlook team needs to do, that it just cant be justified.
	</p>
	<p>
		Newsgroups are not used by average Jo. The Outlook team should stick to core issues.
	</p>
</li>

<li>
	<h2><a name="OutlookSpam"></a><strike>Give Outlook better spam filtering.(Thank you. Fixed in Outlook 2003 Beta 2) </strike></h2>
	<p>
		<strike>
	The current Junk Mail/Adult Content filters do nothing more than highlight messages in the Inbox. 
	And the filtering mechanism itself isn't particularly good. Sure, third-party products like SpamNet 
	work with Outlook. But Microsoft ought to be able to a better job itself. 
		</strike>
	</p>
</li>
	
<li>
	<h2><a name="OutlookAutoComplete"></a>Autocomplete Email addresses</h2>
	<p>
		This autocomplete feature is very useful however when I move to a new PC and 
		setup my outlook with my old Outlook Data File (.pst) I lose all my history of email addresses. Very disappointing.
	</p>
	<p>
		If we want to keep it Microsoft expect us to figure out NK2 files or something
	</p>
	<p>
		In addition this file appears to be binary, instead of XML, so we cant work with them eg. I want to combine 
		2 files together from different PCs.
	</p>
	<dl class="image">
	    <dt><img border="0" src="Images/email_autocomplete.gif" alt="Auto complete" width="441" height="99" /></dt>
	    <dd>Figure: AutoComplete feature in use.</dd>
	</dl>
</li>	
<li>
	<h2><a name="OutlookStatus"></a>Status bar in HTML emails</h2>
	<p>
		Where is the status bar, as in Internet Explorer?
	</p>
	<p>
		When you receive HTML email, you want to be able to see the URL when you hover over a hyperlink.
	</p>
	<dl class="image">
	    <dt><img border="0" src="Images/hover_over_link.gif" width="447" alt="Hover over link" height="245" /></dt>
	    <dd>Figure: No status bar when reading emails in Outlook.</dd>
	</dl>
</li>	
<li>
	<h2><a name="OutlookReceipts"></a>Making Read Receipts useful</h2>
	<p>
		When you send an email you could have a flag "Requires Action" or "FYI".
	</p>
	<p>
		When you look in your sent items there should be a column showing the status:
	</p>
		<ul>
			<li>Not received</li>
			<li>Received - read</li>
			<li>Received - unread</li>
			<li>Replied</li>
			<li>Forwarded</li>
			<li>Deleted</li>
			<li>Recalled</li>
		</ul>
	<p>
	    <b>Note:</b> This isn't a normal Outlook feature, it requires Exchange Server.
	</p>
	<dl class="image">
	    <dt><img border="0" src="Images/receipt.gif" alt="receipt" width="319" height="347" /></dt>
	    <dd>Figure: Mail item properties dialog.</dd>
	</dl>
</li>
<li>
	<h2><a name="OutlookSortMethod"></a>Limitation on Sort Method</h2>		
	<p>
		While developing our product <a href="/ssw/eXtremeEmails/Default.aspx">SSW eXtreme Emails!</a> 
		we wanted to add a feature that sends an email with history. We wanted it to simulate how Outlook keeps the 
		history on an email. So by code we wanted to:
	</p>
		<ul>
		    <li>Go to Sent Items</li>
		    <li>Find the last email sent with that subject (sort by DateSent)</li>
		</ul>
	<p>
		However you can't sort on the Sent field. It seems totally crazy to me that the sort method cannot be used on the sent field. 
	</p>
	<p>
		This is a primary field I would want to sort on!
	</p>
    <p>
		By the way: The DateModified has a sort method.
	</p>
</li>
<li>
	<h2><a name="OutlookConflict"></a>Conflict errors and Conflict Resolver</h2>
	<p>
		We need field level replication and a Conflicit Resolver like SQL Server.<br />
		When two users make offline modifications to the same public folder entry, then they get conflict errors.<br />
	</p>
	<dl class="image">
	    <dt><img border="0" src="Images/conflict.gif" alt="Conflict" width="495" height="24" /></dt>
	</dl>
	<p>
		This has similar issues to SQL Server Replication but more because:
	</p>
	<p>
		It works at an entire email level, not a field level like SQL.
    </p>
    <p>
		The conflict resolver doesnt even point out the differences you have to look through them manually.
	</p>
</li>

<li>
	<h2><a name="OutlookFolderName"></a><strike>Cannot Edit Mail Folder Name Directly (Fixed in Outlook 2007, the textbox is disabled)</strike></h2>
	<p>
	    <strike>
		In the folder properties dialog, a text-box containing the name of the folder appears. The text-box
		is not disabled, yet its contents cannot be edited. To change the mail folder name, the user must
		click the Customize button.
		</strike>
	</p>
	<p>
	    <strike>
		This is illogical and confusing. Microsoft should either allow editing of the name without having to
		click Customize or disable the text-box altogether.
		</strike>
	</p>
	<dl class="image">
	    <dt><img src="Images/outlook8.gif" alt="Outlook" width="367" height="452" /></dt>
	    <dd><strike>Figure: Outlook's mail folder properties dialog</strike></dd>
	</dl>
</li>
<li>
	<h2><a name="sortBySubject"></a><strike>Replied Mails aren't in the same group</strike></h2>
	<p>
	    <strike>
		When I click "Subject" I would expect that the yellow items are grouped together. 
		The replied mails should be in the same group as the original mails, even if they have 
		the prefix "Re:" or "Fwd:" in their subjects.
		</strike>
	</p>
	<dl class="image">
	    <dt><img src="Images/sortBySubject.gif" alt="Sort by subject" width="600" height="339" /></dt>
	    <dd><strike>Figure: The yellow items should be in the same group</strike></dd>
	</dl>	
	<p>
	    <strike>And other ones along the same lines - these 3 should be together</strike>
	</p>
	<dl class="image">
	    <dt><img src="/ssw/Standards/BetterSoftwareSuggestions/Images/Outlook_ConversationThreads.gif" alt="Outlook conversation threads" width="600" height="137" /></dt>
	    <dd><strike>Figure:&nbsp; Screen capture from Outlook 2003 Beta 2</strike></dd>
	</dl>
	<p>
		<strike>When in conversation thread view in Outlook, why cant these two be threaded 
	    together?</strike>
	</p>
	<dl class="image">
	    <dt><img border="0" src="Images/Outlook1.jpg" width="472" alt="Outlook" height="138" /></dt>
	    <dd>Figure: Outlook won't thread the two messages together.</dd>
	</dl>
</li>	
<li>
	<h2><a name="Datafiles"></a>Outlook data files</h2>
	<p>
	    Why call it Microsoft Outlook Personal Folders File (.pst)?
	</p>
	<p>
	    Microsoft please change it to Microsoft Outlook 2003 Personal Folders File (.pst)?
	</p>
	<p>
	Note: And NO I dont believe the file format will never change again
	</p>
    <dl class="image">
        <dt><img border="0" src="Images/Outlook9.gif" alt="Outlook 2003 .pst file" width="361" height="243" /></dt>
        <dd>Figure: No consistency and no forward thinking by Microsoft here</dd>
    </dl>
</li>
	
<li>
	<h2><a name="MoveToFolderList"></a>Move To Folder list</h2>	
	<p>
	    I love the Move To Folder option and use it every day. However I run my PC at a resolution of 1400x1050 and this list 
	    is not long enough. Please increase the length by 3 times.
	</p>
    <dl class="image">
        <dt><img border="0" src="Images/Outlook_MoveToFolder.gif" alt="Outlook 2003 Move To Folder" width="351" height="340" /></dt>
        <dd>Figure: The list is too short at 1400x1050 screen resolution</dd>
    </dl>
</li>	
<li>
	<h2><a name="ItemsDisappear"></a>Items disappear when moved into a folder with a home page</h2>
	<p>
	    If you drag an item into a folder which has a home page (for example, the root of the Inbox, which has Outlook Today),
	    there is no way to access the item, except by disabling the folder's home page. The setting to disable the home page is buried in
	    the Folder Properties, and many users may not know where to find it.
	 </p>
	 <dl class="image">
	    <dt><img src="Images/Outlook_ItemsDisappear.gif" alt="Outlook Items Disappear" width="367" height="459" /></dt>
	 </dl>	 
	 <p>
	    Outlook should display a warning that the item will not
	    be visible if you attempt to move an item into a folder which has a home page.
	</p>
</li>	
<li>
<strike>
	<h2><a name="AppointmentHistory"></a>Appointments lose the history when you reply (fixed in Outlook 2007)</h2>	
	<p>When you reply to an appointment someone sends you, Outlook deletes the history. Instead
	the history should be retained, like with normal email messages.</p>
</strike>
</li>

<li>
<strike>
	<h2><a name="VoteHistory"></a>Votes lose the history when you reply (Fixed in Outlook 2007)</h2>
	<p>When you vote, it should keep the history in the reply.</p>
</strike>
</li>

<li>
	<h2><a name="SendSpecificItem"></a>There should be a way to send a specific item immediately</h2>
	<p>
	    It is useful to turn off the "Send immediately when connected" option in Outlook so you can go
		back to messages before sending them. However, sometimes you want to send a single message
		immediately without emptying the entire Outbox. You should be able to Ctrl+Click the send button on a
		message to force it to send immediately, without doing a full Send/Receive.
	</p>
</li>
	
<li>
	<h2><a name="WebAccessMoveAddress"></a>There should be a 'Move to CC' option on right click in OWA</h2>
	<p>It would be useful to have a 'Move to CC' option on right click in 
		Outlook Web Access</p>
	<dl class="image">
	    <dt><img src=Images/MoveAddress.gif alt="Move Address" border="1" width="600" height="294" /></dt>
	    <dd>Figure: It would be good to have 'Move to CC' option on right click</dd>
	</dl>
</li>

<li>
	<h2><a name="DeleteButtonOnDrafts"></a>Have a delete button on draft emails</h2>
	<p>
	    I often store things in my Drafts folder in Outlook, but there is no X (delete) 
	    button, so I have to locate the email in my drafts folder and delete it manually.
	</p>
	<dl class="image">
	    <dt><img src="Images/OutlookDeleteButtonOnDrafts1.gif" alt="Outlook Delete Button On Drafts" width="600" height="522" /></dt>
	    <dd>Figure: Where is the delete button on this draft email?</dd>
	</dl>
	<dl class="image">
	    <dt><img src="Images/OutlookDeleteButtonOnDrafts2.gif" alt="Outlook Delete Button On Drafts" width="566" height="480" /></dt>
	    <dd>Figure: We need a delete button on drafts like in this normal Inbox email</dd>
	</dl>
	
</li>

<li>
	<h2><a name="Addfullpath"></a>Add full path the the location field</h2>			
	<p>
	    The location field should have the full path viewable. I use the Lookout Tool a lot and want to 
		know which folder an email is in.
	</p>
	
	<dl class="image">
	    <dt><img src="Images/addlocation.gif" alt="Add Location" width="442" height="601" /></dt>
	    <dd>Figure: List the folder in the location field</dd>
	</dl>
</li>

<li>
    <h2><a name="SendReceiveSettings"></a>Bad UI in Send/Receive Settings window</h2>
    <p>
        I want to work offline - but have everything sync every 5 minutes 
        (EXCEPT my Outbox - I will do that manually)
    </p>
    <p>
		1) So I choose File | Work Offline
	</p>
	<dl class="image">
	    <dt><img src="Images/OutlookBadUI1.gif" alt="Outlook bad user interface" width="196" height="408" /></dt>
	    <dd>Figure: Select Work Offline</dd>
	</dl>
	
	<p>
	    2) Select Define Send/Receive Groups
	</p>
	<dl class="image">
	    <dt><img src="Images/OutlookBadUI2.gif" alt="Outlook bad user interface" width="782" height="463" /></dt>
	    <dd>Figure: Select Define Send/Receive Groups</dd>
	</dl>
		
	<p>
	    3) Tick the checkbox - Schedule an automatic send/receive every 5 minutes, then edit 'All Accounts'.
    </p>
    <dl class="image">
        <dt><img src="Images/OutlookBadUI3.gif" alt="Outlook bad user interface" width="403" height="465" /></dt>
        <dd>Figure: Send/Receive Groups</dd>
    </dl>

    <p>
        4) Then check off "Send mail items"
        <br />
		However it keeps sending emails because the Outbox is selected in the tree control
		The Outbox should show as <s>Strikethrough</s> when that checkbox is off
	</p>
	<dl class="image">
	    <dt><img src="Images/OutlookBadUI4.gif" alt="Outlook bad user interface" width="574" height="468" /></dt>
	    <dd>Figure: Bad UI in Send/Receive Settings, the Outbox should show as strikethrough.</dd>
	</dl>
</li>

<li>
    <h2><a name="RemoveDefault"></a>Remove one of the dumbest defaults in history</h2>
    <p>
        How many times have you create a meeting request - saved and sent it - then realised you forgot to put the time and date.
        <br />
        You reopen it and fix it - but the other person still receives the original email with an "Updated: xxxxx"
        </p>
     <p>
        Why would the assumption be every meeting is going to be for the next 30 minutes?
     </p>
        <p>
            Microsoft, please default it to zero - or give an option in Tools  Options to turn it off
        </p>
    <dl class="image">
        <dt><img src="Images/AppoinmentConflict.gif" width="600" height="542" alt="Outlook Appointment" /></dt>
        <dd>Figure: Microsoft Outlook assumes every meeting is going to be for the next 30 minutes.</dd>
    </dl>

</li>
<li>
    <h2><a name="FavoritesFolder"></a>Working with Favorites Folder</h2>
    <p>
        You are not allowed to create new folders under Favorites. 
        <br />
        When you are adding to Favorites, dont just add single Project Folder. 
        <br />
        But add the entire hierarchy making sure that all sub folders are included.
    </p>
    <dl class="image">
        <dt><img src="Images/FavoritesFolder.gif" width="531" height="519" alt="FavoritesFolder" /></dt>
        <dd>Figure: creating new folder under favorites.</dd>
    </dl>
</li>

<li>
<strike>
	<h2><a name="SMSSupport"></a>Add SMS Support (Fixed in Outlook 2007)</h2>
	<p>
		Sending SMSs should be as easy as sending an email. Outlook should 
		include the functionality of the greate COM Addin from 
		<a href="/ssw/Standards/DeveloperGeneral/OutlookTools.aspx#RedOxygenOutlookSMS">Reg Oxygen
		OutlookSMS</a>, also outlook should provide SMS folder and allow ActiveSync to sync your SMS messages to mobile phones. 
	</p>
</strike>
</li>

<li>
	<h2><a name="SpamFolder"></a>Spam folder should have a "Spam" field like Spam Bayes does</h2>

    <dl class="image">
        <dt><img src="Images/SpamFolder.gif" width="822" height="336" alt="Spam folder" /></dt>
        <dd>Figure: Spam Bayes' spam folder</dd>
    </dl>
</li>

<li>	
	<h2><a name="OutlookProgress"></a>Outlook progress difficult to see</h2>
    <p>
	When the Send/Receive button is clicked in Outlook a progress window is shown. 
	Using the words "Completed" and "Processing" can have a nasty side effect of not 
	being able to easily see which messages are still to be processed. A better 
	Solution would be to change the word "Completed" by the word "Done".
	</p>
	<dl class="image">
	    <dt><img src="Images/OutlookProgress.gif" width="664" height="506" alt="Outlook progress window" border="1" /></dt>
	    <dd>Figure: Outlook progress window</dd>
	</dl>
</li>

<li>	
<strike>
	<h2><a name="AllDayEvent"></a>Number of visible "All Day Event" should not be limited by window size (Fixed by adding separate scroll bar in Outlook 2007)</h2>
    <p>
        From the screenshot below, we can see 7 all day events, and <b>it looks like that's all</b> on the date.
    </p>
	<dl class="image">
	    <dt><img src="Images/AllDayEvent.gif" alt="All Day Event" width="600" height="410" /></dt>
	    <dd>Figure: Only 7 all day events are visible</dd>
	</dl>
    <p>
        Now we maximized Outlook, and we can see up to 11 all day events.
    </p>
	<dl class="image">
	    <dt><img src="Images/AllDayEventMaximized.gif" border="1" alt="We can see more all day events when Outlook is maximized" width="800" height="600" /></dt>
	    <dd>Figure: We can see more all day events when Outlook is maximized</dd>
	</dl>
    <p>
        In fact, these 11 all day events are not all on the date. There are more, 
        but the rest is not visible due to the limited window size and screen resolution.<br />
        This is seriously annoying, a user might think that the all day events they entered 
        have gone missing. And they might miss an appointment if the reminder alarm is not set.
    </p>
    <p>
        The only way to see more is to change your screen resolution to a bigger one. If you 
        still can't see all, then hide some of the toolbars so that you have more space for 
        Outlook to show the all day events, but how pratical is this?<br />
        Why can't the all day events be put on to a scrollable panel? (like Outlook 2007, or 
        Outlook Web Access)<br />
        Or at least, it should show a message to inform users not all of the all day events are visible!
    </p>
</strike>
</li>

<li>
<h2><a name="RemoveRTF"></a>Remove RTF as an option or explain when it is a good choice</h2>
I see nothing good about it and outlook handles RTF poorly by replacing images with " << OLE Object: Picture (Device Independent Bitmap) >> "
<br /><br /> 
Also change "HTML" to "HTML (recommended)":
	<dl class="image">
	    <dt><img src="Images/MailFormatHTML.gif" border="1" alt="Change &quot;HTML&quot; to &quot;HTML (recommended)&quot;" width="454" height="550" /></dt>
	    <dd>Figure: Change "HTML" to "HTML (recommended)" and remove Rich Text</dd>
	</dl>

</li>

<li>
<h2><a name="ContentsPage"></a>Add the ability to have a contents page added to an email</h2>

This functionality  existed in outlook 2003.

	<dl class="image">
	    <dt><img src="Images/TableOfContents.gif" border="1" alt="Table of Contents functionality in MS Word 2007" width="347" height="204" /></dt>
	    <dd>Figure: Table of Contents functionality in MS Word 2007</dd>
	</dl>

</li>

<li>
<h2><a name="ProgressState"></a>Add the status for the progress bar</h2>
Add the status for progress bar, we can clearly see the progress status. We have a rule about this, please refer to <a href="/ssw/Standards/Rules/RulestoBetterInterfaces-WinApp.aspx#ProgressStatus">Long Process - Do you show the status of progress bar on winform's title?</a>

	<dl class="image">
	    <dt><img src="Images/recieveprogress.gif" border="1" alt="Send/receive progress form in outlook" width="501" height="335" /></dt>
	    <dd>Figure: Send/receive progress form in outlook</dd>
	</dl>
</li>

<li>
<h2><a name="SoundFeedback"></a>Paly a sound at the end of send/receive process</h2>
By playing a sound at the end of the long process it will alert the user to go back and check on it. We have a rule about this, please refer to <a href="/ssw/Standards/Rules/RulesToBetterInterfacesEdit.aspx#LongRunningProcess">Long Process - Do you know how to make long-running processes user-friendly?</a>

	<dl class="image">
	    <dt><img src="Images/recieveprogress2.gif" border="1" alt="Send/receive progress form in outlook" width="501" height="335" /></dt>
	    <dd>Figure: (Supposed) adding a check box for playing a sound at the end of send/receive progress</dd>
	</dl>
</li>
<li>
<h2><a name="HideProgressBar"></a>Hide the progress bar at the end of send/receive process</h2>
The progress bar should be hidden at the end of the long process. We have a rule about this, please refer to <a href="/ssw/Standards/Rules/RulesToBetterInterfacesEdit.aspx#LongRunningProcess">Long Process - Do you know how to make long-running processes user-friendly?</a>

	<dl class="image">
	    <dt><img src="Images/recieveprogress3.gif" border="1" alt="Send/receive progress form in outlook" width="491" height="324" /></dt>
	    <dd>Figure: The progress bar will be hidden at the end of send/receive progress</dd>
	</dl>
</li>
<li>
<strike>
    <h2><a name="PasteScreenPrint"></a>Allow me to do a alt+PrintScreen and paste an image in Outlook (Fixed in Outlook 2007)</h2>
    <p> I cannot do a alt+PrintScreen and paste an image in Outlook even using HTML format. This has not been fixed in Outlook 2007.
    </p>
</strike>
</li>
<li><h2><a name="ToFieldOptions"></a>Add options on the names in To field in OWA</h2>
    <p>
    Add another right click option on names in the To field.
    <dl class="image">
	    <dt><img src="Images/Outlook_ToFieldOptions.gif" border="1" alt="Add options on the names in To field in OWA" width="430" height="233" /></dt>
	    <dd>Figure: Add options on the names in To field in OWA</dd>
	</dl>    
    You should be able to right click a name in the "To:" field and select "Move to CC" or "Move to BCC".<br />
    PS: Likewise similar options would be useful in the CC and BCC fields.
    </p>
    
    </li>     
     
     <li><h2><a name="ImageSize"></a>Image Size</h2>
    <p>       
    When I put pictures into an Outlook HTML email, they are much less quality and significantly larger, even though Outlook reports that they are 100%
    </p>       
    </li>

	<li><h2><a name="CheckActive"></a>Check if Active Sync is active before closing down</h2>
    <p>People close Outlook and they will notice it continues to check for new mail after they think Outlook is closed! <br />
	Really what do they do? They close Outlook and they still see (surprisingly some time later) an envelope appear in their system tray and a popup appearing showing the mail that has just arrived.
    </p>
    <p>The basic issue is that Outlook hasn&#8217;t really shut down even though you intended for it to shut down.  The most likely cause of this is that some "3rd party" application is keeping Outlook running.
    </p>
    <p>The most common one I see is Active Sync - and now you have Outlook running with no visible windows. We suggest: <br />
	<ol>
		<li>Never ever have the situation that Outlook is running without any visible windows</li>
		<li>Show which client is keeping Outlook alive</li>
		<li>Specifically check for ActiveSync. ActiveSync is so common Microsoft should pop a message box: "You have ActiveSync running, please close that down first and then try exiting Outlook again."</li>
	</ol>
    </p>
    </li>

	<li><h2><a name="CreateAppointment"></a>Have a smart tag that shows "Create calendar appointment" by intelligently parsing the text</h2>
    <p>Then the user can use the right click menu to create a calendar appointment.
    </p>
	<dl class="image">
	    <dt><img src="Images/CreateAppointment.gif" border="1" alt="Add menu to create appointment intelligently" width="1067" height="381" /></dt>
	    <dd>Figure: Have a smart tag that shows "Create calendar appointment"</dd>
	</dl> 
    </li>
    <li><h2><a name="NameIntellisenseShortcutNames"></a>Name Intellisense - shortcuts names should be stored with the PST/OST</h2>
        <p>These shortcuts names should be stored with the PST/OST so that customers won't lose these when they create a new profile.</p>
        <dl class="image">
	    <dt><img src="Images/Outlook_NameIntellisense_ShortcutName.GIF" border="1" alt="Outlook Shortcut Names" width="265" height="116" /></dt>
	    <dd>Figure: shortcut names should not be lost while users create new profiles.</dd>
	</dl>
    </li>
	<li><h2><a name="NameIntellisenseCheckMoreNames"></a>Name Intellisense - add one more option to check for more names</h2>
	    <p>Have one more option at the bottom of the shortcut name list " - Check for more Names - "</p>
	    <p>Reason #1: not many users know the shortcut "Control+K" <br />
           Reason #2: users they should not have to pick up the mouse to click the "Check Names" button</p>
        <dl class="image">
	    <dt><img src="Images/Outlook_NameIntellisense_CheckName.GIF" border="1" alt="Outlook Check Names" width="110" height="81" /></dt>
	    <dd>Figure: users should not always have to click this button to check more names.</dd>
	</dl> 
	</li>
	<li><h2><a name="NameIntellisenseCheckbox"></a>Name Intellisense - should be referred to the suggeset names checkbox in advanced email options</h2>
	    <p>The Name Intellisense (or 'auto suggest names', 'smart shortlist', etc) should be referred to the suggeset names checkbox in advanced Email options so people use it consistently</p>
	    <dl class="image">
	    <dt><img src="Images/Outlook_NameIntellisense_RefertoCheckbox.GIF" border="1" alt="Outlook Advanced Email Options" width="385" height="513" /></dt>
	    <dd>Figure: It will be referred to in the 2nd last checkbox.</dd>
	</dl>
	</li>
	<li><h2><a name="RemoveRTFOption"></a>Remove RTF Option</h2>
	    <p>In Outlook, the size of an email in RTF format is much larger than that in HTML format.</p>
	    <dl class="image">
	    <dt><img src="Images/Outlook_RemoveRTF_1.GIF" border="1" alt="Different Size of email" width="800" height="208" /></dt>
	    <dd>Figure: The different size of the same mail in two formats.</dd>
	</dl>
	<p>So we suggest: remove the RTF option in the message format to save space and make emails faster.</p>
	    <dl class="image">
	    <dt><img src="Images/Outlook_RemoveRTF_2.GIF" border="1" alt="Mail Format Option" width="439" height="484" /></dt>
	    <dd>Figure: Here to select the message format.</dd>
	</dl>
	</li>
	<li><h2><a name="ShowMessengerPicture"></a>Show display picture from MSN Messenger</h2>
	    <p>When viewing an email, Outlook 2007 shows an image of the sender. Currently this only works if the sender is already in your contact list and has an image assigned to the contact card.  Although this is a really nice feature, inserting the picture to each contact is time consuming and if you have hundreds of contacts, you definitely don't want to go through each one of them.</p>
        <p>Outlook has been providing a nice integration with MSN Messenger for a while. It is capable of showing the status of email recipients marked with a little color icon indicating their status (green if available, red if busy, etc).</p>
        <p>In a similar fashion, Outlook should be able to make use of the display picture from MSN Messenger and show it on the email message should the sender cannot be found in the contact list.</p>
        <dl class="image">
        <dt><img src="Images/Outlook_ShowMessengerPicture_1.jpg" border="1" alt="Outlook sender image" width="393" height="271" /></dt>
        <dd>Figure 1: Outlook 2007 now shows the image of the sender</dd>
        <dt><img src="Images/Outlook_ShowMessengerPicture_2.jpg" border="1" alt="Contact card with image" width="439" height="349" /></dt>
        <dd>Figure 2: Contact card with image attached</dd>
        <dt><img src="Images/Outlook_ShowMessengerPicture_3.jpg" border="1" alt="MSN Messenger display image" width="324" height="642" /></dt>
        <dd>Figure 3: MSN Messenger already has Display Picture capability</dd>
        </dl>
	</li>
	<li><h2><a name="OutlookTemplates"></a>Quick Templates for Outlook</h2>
	    <p>Add-in Quick Templates for Outlook is designed for fast insertion of text templates into Microsoft Outlook 2000,2002(XP),2003 mail messages. It will help you with entering frequently repeated text fragments, save the time you spend on message writing, and you will have no more misprints in your messages. Quick Templates plugin is a very useful tool for technical support officers, sales personnel and all other people who make an extensive use of email in their work.</p>
        <p>You will have to write and format your text only once and then you can insert it in mail messages of any type (HTML, RTF, plain text) repeatedly. the Quick Templates keeps all the text parameters and formatting unchanged, which allows you to create lots of various headings, signatures, phrases, or any other text blocks, lines, or words you use frequently in your correspondence.</p>
        <p>With the Quick Templates plugin you can create a template list and insert the text from template into a message by a single mouse click or through a hotkey you can set for each template individually.</p>
        <dl class="image">
        <dt><img src="Images/quick-templates-1.gif" border="1" alt="Quick Templates for Outlook" width="600" height="410" /></dt>
        <dd>Figure 1: Quick Templates for Outlook</dd>
        <dt><img src="Images/quick-templates-2.gif" border="1" alt="Edit text of the template" width="569" height="351" /></dt>
        <dd>Figure 2: Edit text of the template</dd>
        <dt><img src="Images/quick-templates-3.gif" border="1" alt="Toolbar in MS Word (when Word is used as an email editor)" width="600" height="410" /></dt>
        <dd>Figure 3: Toolbar in MS Word (when Word is used as an email editor)</dd>
        <dt><img src="Images/quick-templates-4.gif" border="1" alt="Templates menu in Outlook" width="600" height="410" /></dt>
        <dd>Figure 4: Templates menu in Outlook</dd>
        </dl>
	</li>
    <li><h2><a name="SendFaxandSMS"></a>Send Fax and SMS</h2>
    <p>
        <ol><li>
        By default you should be able to type in a phone number and have it send a fax.</li><li>
        By default you should be able to type in a mobile number and have it send a SMS.</li>
        </ol>
    </p>
    <dl class="image">
        <dt><img src="Images/SendFaxSMS.gif" border="1" alt="Send Fax and SMS" width="982" height="648" /></dt>
        <dd>Figure: Send Fax and SMS by filling in the number.</dd>
    </dl>    
    </li>
    <li><h2><a name="ConversationThread"></a>Allow you to fix the Conversation Threading</h2>
    <p>
        When someone replies to an email with an incompatible mail client eg. Blackberry, outlook express you loose your threading inside Outlook. Please:<br />
        <ol>
        <li>Add a button to the toolbar &#8220;Merge into one Thread?</li>
        <li>Also allow you to drag it into that conversation.</li>
        </ol>
    </p>
    <dl class="image">
        <dt><img src="Images/MergeThread.gif" border="1" alt="Merge into one thread" width="864" height="191" /></dt>
        <dd>Figure: Add a button &#8220;Merge into one thread?</dd>
    </dl>    
    </li>
    <li><h2><a name="OutolookSupportTemplates"></a>Outlook /OWA should support templates</h2>
    <p>
        Anastasia, our accountant keeps a bunch of text documents on her desktop which she copies and pastes into emails. It would be a great feature if Outlook and OWA supported creating and inserting templates into new emails. If the new email UI had a drop down list to insert templates then this would make outlook a more powerful tool.
    </p>
    <p>
        There are already some third party plugins that do this in Outlook:
    </p>
        <ol>
        <li><a href="/SSW/Redirect/SperrySoftware1.htm">Quick Text Hotkey</a></li>
        <li><a href="/SSW/Redirect/office-addins.htm">Quick Templates for Outlook</a></li>
        </ol>
    <p>
        But there are no tools to do this in OWA.
    </p>
    </li>
    <li><h2><a name="FolderSearch"></a>Add a way to search the current folder and subfolders</h2>
    <p>
        See the last option group in the search options, we also need a "Search current folder and subfolders".
    </p>
    <dl class="image">
        <dt><img src="Images/FolderSearch.jpg" border="1" alt="Search Options" width="342" height="490" /></dt>
        <dd>Figure: Need "Current Folder and subfolders" in the last "Instant Search Pane" group</dd>
    </dl>
    </li>    
    <li>
        <h2><a name="RemindersResize"></a>Allow me to resize or maximize Reminders Form</h2>
        <p>
            It is bad that you are not allowed to resize or maximize the reminders form when you are in the situation showed below.
        </p>
        <dl class="image">
            <dt><img src="Images/ReminderResize.gif" width="462" height="325" alt="reminders form" /></dt>
            <dd>Figure: Reminders Form</dd>
        </dl>
    </li>
    <li><!--SSW Code Auditor - Ignore next line -->
        <h2><a name="RemindersOpenOnSeperateThread"></a>Open a reminder on a seperate thread</h2>
        <p>
            Please make a reminder open on a separate thread. When you have a lot the Inbox UI does not respond.
        </p>
        <dl class="image">
            <dt><img src="Images/ReminderResize.gif" width="462" height="325" alt="many inbox reminders" /></dt>
            <dd>Figure: Many Inbox Reminders</dd>
        </dl>
    </li>
    <li>
        <h2><a name="SearchResultImprovement"></a>Search results could benefit from 3 improvements</h2>        
        <ul>
        <li>Use strikethrough for the deleted items. See our <a href="/ssw/Standards/Rules/RulestoBetterInterfaces-WinApp.aspx#StrikeThroughCompletedItems">
            Rules To Better Interfaces</a> for more information.</li>
        <li>Use blue with italics for the outbox</li>
        <li>When you select an Outbox item -- do not change it back to normal from italics</li>
        </ul>        
        <dl class="image">
            <dt><img src="Images/SearchResult.gif" alt="Search Result" width="746" height="262" /></dt>
            <dd>Figure: Search Results</dd>
        </dl>
    </li>
   <li><h2><a name="OWAAttachImage"></a>OWA should support pasting images into the email content.</h2>
    <p>It will be greate to support pasting image in OWA. Now the OWA only allow us to add the images to attachments. This will affect reading and the attachments are easily lost while responding.</p>
   <dl class="image">
    <dt><img src="Images/OWAPasteImage.JPG" alt="Past Image" /></dt>
   <dd>Figure: The editor supports pasting images.</dd> 
   </dl> 
   </li>    
   <li>
        <h2><a name="OutlookIndex"></a>Outlook should add 'Configure' button to 'Indexing Status...' form.</h2>        
        <P>Add a 'Configure' button to 'Indexing Status...' form:</P>
        <dl class="image">
            <dt><img src="Images/IndexSearch.jpg" alt="Indexing Status... form" /></dt>
            <dd>Figure: This Indexing Status form needs a 'Configure' button to take you to the below form</dd>
        </dl>
    <p>That takes you to 'Indexing Options' form:</p>
   <dl class="image">
    <dt><img src="Images/IndexOptions.JPG" alt="Indexing Options form" /></dt>
   <dd>Figure: You need to be able to easy to get to the 'Indexing Options' form from Outlook</dd> 
   </dl> 
   </li>    
   <li>
        <h2><a name="AppointmentsImage"></a>Appointments should be able to store images</h2>        
        <p>Well actually they can add images as same as emails. but because they are stored as RTF (instead of HTML like normal email messages) so they convert to 4-5MB attachments.

</p><p>The worst thing is the syncing problems with Windows Mobile devices.</p><p>

PS: I think it should be easier to insert Live maps (or google maps) for directions.
</p>
        <dl class="image">
            <dt><img src="Images/LargeAppointment.jpg" alt="Indexing Status... form" /></dt>
            <dd>Figure: The Appointment with large image</dd>
        </dl>
   </li>
    <li><a name="UndoButton"></a><h2>Please add an 'Undo' button on Reminders</h2>
    <p>
        For example, I open an appointment and reply all to it, then close the appointment.<br />
        It has been updated, so it moves to the top, but I have already pressed Dismiss and so the wrong message was dismissed!
    </p>
    <dl class="image">
        <dt><img src="Images/UndoButtonExample.jpg" border="1" alt="Example" width="438" height="333" /></dt>
        <dd>Figure: Add Undo button at here</dd>
    </dl>
    </li>
    <li><a name="ValidateSubject"></a><h2>Outlook need validate for no subject</h2>
    <p>
        I think it would be great to never receive another email from a person without a subject!
        </p>
    <dl class="badImage">
        <dt><img src="Images/MailNoSubject.jpg" alt="No subject" /></dt>
        <dd>Figure: Bad example - No Validation when sending an email</dd>
    </dl>
    <dl class="goodImage">
        <dt><img src="Images/CheckSubject.jpg" alt="Validate subject" /></dt>
        <dd>Figure: Good example - Validation when sending an appointment</dd>
    </dl>
        <table class="clsSSWProductTable" summary="LookOut" style="width: 500">
            <tr>
                <td>
                    We have a program called <a href="/ssw/LookOut/">SSW LookOut! for Outlook</a> to
                    check for this rule.
                    <br />
                    <br />
                    It will warn you if you forget to include a subject in your email.</td>
            </tr>
        </table>
    </li>
    <li><h2><a name="Progress"></a>Send/Receive Progress</h2>
        <p>
            Sometimes you just want to sync quickly (eg. over GPRS) and one big, fat and unexpected 10MB email is coming without you knowing and without a way to skip it. So please improve this dialog, so you can see if you have a bottleneck and give an option to skip the email.
            </p>
        <dl class="image">
            <dt><img src="Images/SRProgress.jpg" alt="Send/Receive Progress dialog" /></dt>
            <dd>Figure: My UI suggestion would be to show the top 5 emails in size (sorted descending) with a button on each row "Skip for now"</dd>
        </dl>
    </li>
    <li><h2><a name="LookingContact"></a>Looking up a contact</h2>
        <p>
            Be aware that people create new email addresses all the time and for all types of reasons, eg. for mailing lists. 
            </p>
        <dl class="image">
            <dt><img src="Images/LookingContact.jpg" alt="Looking up a contact" /></dt>
            <dd>Figure: Looking up the address' contact</dd>
        </dl>
        <p>
            When looking up a contact and the email address does not exist. This message box is not good enough. It should say "Here are a list of suggestions that have email addresses that are very close."
        </p>
        <dl class="image">
            <dt><img src="Images/ContactNotExist.jpg" alt="The dialog of could not found contact" /></dt>
            <dd>Figure: This dialog is not good enough</dd>
        </dl>
    </li>
    <li><h2><a name="OpenFolderNeed"></a>Need 'Open folder' on right click menu</h2>
        <p>
            Need add 'Open folder' menu item on right click menu in the search results.
            </p>
        <dl class="image">
            <dt><img src="Images/OpenFolderNeed.jpg" alt="Looking up a contact" /></dt>
            <dd>Figure: Right click menu needs 'Open folder' or 'Open email location' if you want to be consistent with Vista Search like below</dd>
        </dl>
        <dl class="image">
            <dt><img src="Images/SameAsVista.jpg" alt="The dialog of could not found contact" /></dt>
            <dd>Figure: Outlook needs this 'Open file location' in their search results</dd>
        </dl>
    </li>
    <li><h2><a name="DrillThroughOption"></a>Give a drill through option for Categories</h2>
        <dl class="image">
            <dt><img src="Images/RightClickOption.jpg" alt="There should be a right click option for opening all SharePoint items." /></dt>
            <dd>Figure: Add a right click option "Open All 'SharePoint' (12 items)"</dd>
        </dl>
        <dl class="image">
            <dt><img src="Images/DrillThroughMenu.jpg" alt="Drill - through menu" /></dt>
            <dd>Figure: The drill-though menu would open like this</dd>
        </dl>
    </li>

    
    <li><h2><a name="SupportFormatBrush"></a>OWA 2007 should supports FormatBrush</h2>
        <p>
            OWA 2007 should add a FormatBrush button to copy the format from one place to other places, which also make it consistent with Outlook like other buttons.
            </p>
    </li>
    
    <li><h2><a name="OWARefresh"></a>OWA 2007 need add Refresh Option</h2>
        <p>
            OWA 2007 should add a Refresh button on the right click menu:
            </p>
        <dl class="image">
            <dt><img src="Images/OWARefresh.jpg" alt="Add Refresh on OWA 2007" /></dt>
            <dd>Figure: Need add Refresh button on the menu.</dd>
        </dl>
    </li>

    <li><h2><a name="SearchType"></a>Search - Add "Type" to the "Criteria" combo</h2>
        <p>
            Make it easy to find all the appointments in your inbox (that you have not accepted or declined).
        </p>
        <p>
            Eg. I want to say something like "Type: Calendar" or "Type: Appointment" however neither one works.
        </p>
       
        <dl class="image">
            <dt><img src="Images/AddType.jpg" alt="Add option Type" /></dt>
            <dd>Figure: Add option "Type" to allow you to find appointments</dd>
        </dl>
        <dl class="image">
            <dt><img src="Images/SearchHelp.jpg" alt="The search help form" /></dt>
            <dd>Figure: Search help needs a list of all options you can manually type (that is not in the "Criteria" dropdown)</dd>
        </dl>
    </li>
    
    
   <li> 
    <h2><a name="NoteOnDeletedRecord"></a>Add a note on deleted record</h2>
            <p>
                When you add a contact and it is the same name, then it offers to merge the contacts (and if you say &#8216;yes&#8217; it deletes it).
Can you please add a note on the deleted record &#8220;This record was deleted by the Contact Merge Tool&#8221;.</p>
                            
                            <dl class="image"> 
                            <dt> <img alt="Contacts with the same name" src="images/Note.jpg" /></dt>
                            <dd>   Figure: Contacts with the same name</dd>                                 
                            </dl> 
                            
                            <dl class="image"> 
                            <dt> <img alt="Contacts Details" src="images/Note1.jpg" /></dt>
                            <dd>   Figure: Contacts details</dd>
                            </dl> 
   </li>     
   <li> 
    <h2><a name="AppointmentReminder"></a>Outlook Appointments - Make the Reminders Visible and changeable as when you receive them</h2>
            <p>
                When you get an appointment in your inbox, they often have a Reminders in them, you can't see them, but they are there. The main issue is that I don't want the reminder going off later.</p>
                            <ul>
                                <li>Can you make the reminder visible</li>
                                <li>Can you add a button "Accept without reminder"</li>
                                <li>Can you add a button "Accept and edit the reminder"</li>
                            </ul>
                            <dl class="image"> 
                            <dt> <img alt="Appointment Reminder need visible" src="images/AppRimander_Outlook.jpg" /></dt>
                            <dd>Figure: The Appointment's reminder information, needs to be visible and changable</dd>
                            </dl> 
   </li>  
   <li><h2><a name="AddFindContacts"></a>Add 'Find' to the right click  menu of the 'Contacts' folder</h2>
   <p>It's more efficient to have a 'Find' option in the right click menu of the 'Contacts' folder. With it we can look for certain contacts easily.</p>
                            <dl class="image"> 
                            <dt><img alt="'Find' option is needed." src="/ssw/Standards/BetterSoftwareSuggestions/Images/FindContacts.JPG" /></dt>
                            <dd>Figure: 'Find' option is needed.</dd>
                            </dl> 
   </li> 
   <li><h2><a name="ImproveCheckName"></a>Check Names Improvement</h2>
   <p>If I get more than one contacts with the same email address when checking the names, I'd like to know which is in my Local Contacts and which in the Exchange User List. So please add a column to identify this.</p>
   <p>For instance, if I know the one in my Local Contacts is the latest and the first one is identified as Local Contacts, I can select it easily without checking details of these two.</p>
                            <dl class="image"> 
                            <dt><img alt="Add a column to idetify contacts" src="/ssw/Standards/BetterSoftwareSuggestions/Images/ImproveCheckNames.jpg" /></dt>
                            <dd>Figure: No column idetifies where contacts are from</dd>
                            </dl>    
   
   </li>
   <li><h2><a name="Crashes"></a>All unhandled errors (aka crashes) should take your email</h2>
   <p>
    All unhandled errors (aka crashes) will take your email...
   </p>
   <p>
    And inform you when a hot fix/service pack resolves that issue
   </p>
   <p>
    (I choose Outlook as the first application to implement this, as that is what I get the most crashes)
   </p>
                            <dl class="image"> 
                            <dt><img alt="Outlook crashed" src="Images/Outlook_Crashes_1.jpg" /></dt>
                            <dd>Figure: All crashes will take your email</dd>
                            </dl>    
   
   </li>
    <li><h2><a name="SupportSMS"></a>
        
            Outlook should support SMS (and sync my SMSes)</h2>
        <p>
            I am going to flash my TyTnII.
        </p>
        <p>
            All my data is synced Except my SMSes Grrrrrrr.
        </p>
    </li>
    <li><h2><a name="ChangeConversationID"></a>
        
            Refresh Conversation ID after changing the subject</h2>
        <p>
            I don't think subjects should be changed today, because those use the threading in Outlook, the thread is now ruined.
            However people do, so I wish Outlook gave the functionality to change a subject and then 
            use "Tools | Refresh Conversation ID" to change the Conversation ID.
            <br />
            PS: Better still just refresh the Conversation ID after you change a subject
        </p>
        <dl class="image"> 
            <dt><img alt="Change Conversation ID" src="Images/ChangeConversionID.gif" /></dt>
            <dd>Figure: Need an option "Tools | Refresh Conversation ID" for use after you change a subject</dd>
        </dl> 
    </li>
	<li><h2><a name="DeletedEmails"></a>
        
            Outlook should warn of deleted emails on the server</h2>
        <p>Here is my sad story...</p>
		<ol>
			<li>Exchange goes corrupt.... be frightened of running out of space with virtualization :-)</li>
			<li>We go back to a backup a 3-4 days old :-(</li>
			<li>Outlook (the 'smart' client) connects....  it sees that the server doesnt have the emails that it has... so it proceeds to quickly and violently delete hundreds of emails, from the last few days.</li>
			<li>Everybody is not happy</li>
		</ol>
		<p>Why doesn't Outlook not work better?    It could say.</p>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>Since you last connected, 356 emails have been deleted from 'Inbox' on the server.</strong></p>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>Do you want these emails to deleted on your PC?     [DELETE]</strong></p>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>Do you want to put your emails onto the server?      [UPLOAD]</strong></p>
		<p>Is there a downside to this? I cant think of anything....</p>
		<p>(with this feature, outlook would not just be a copy, it could be included into disaster recovery plans)</p>
    </li>
	<li><h2><a name="ExchangeProxy"></a>
        
            Exchange Proxy UI + get settings from the server</h2>
        <p>The "Connection" tab needs reordering as a minimum change.</p>
		<p>The first two sections are hardly ever touched (Being "Connection" and "Modem").</p>
		<p>However the "Outlook Anywhere" is used a lot, so that should be the first section.</p>
		<br />
		<p>PS: On the "Microsoft Exchange Proxy Settings" form, we need button under the first textbox "Populate Settings From Mail Server"(or is there a security reason this could not be done).</p>
        <dl class="image"> 
            <dt><img alt="Exchange Proxy UI" src="Images/ExchangeProxy.jpg" /></dt>
            <dd>Figure: Settings are hardly ever touched </dd>
        </dl> 
    </li>
    <li>
        <h2><a name="Signature"></a>
        Provide the possibility to add a signature in appointments like in Mail messages</h2>
        <p>It is better to add a signature in Appointments like in Mail messages</p>
        <dl class="image"> 
            <dt><img alt="Need a signature" src="Images/Outlook_SN_1.jpg" /></dt>
            <dd>Figure: There is no possibility to have a default signature for new appointments (Try File --> New appointment in Outlook)</dd>
        </dl> 
    </li>
    <li>
        <h2><a name="AppointmentProps"></a>
        Please add 2 properties to an appointment</h2>
        <p>
            Please add who created this (see yellow) in the UI... or at least on the Properties of the email
        </p>
        <p>
            Ideally you will be able to see:
        </p>
        <ul>
            <li>Who created this appointment (see yellow)</li>
            <li>On which PC it was created</li>
        </ul>
        <p>
            Currently you can only see this by clicking "Reply to All"
        </p>
        <dl class="image"> 
            <dt><img alt="Add properties in Appointment" src="Images/Outlook_AP_1.jpg" /></dt>
            <dd>Figure: I should not have to click "Reply to All" to find out that it was 'Ida Haugland' who created this appointment</dd>
        </dl> 
    </li>
    <li>
        <h2>
        <a name="DaysToGo"></a>Need an additional field "Days To Go"</h2>
        <p>
            We need an additional field "Days To Go" on appointment or meeting:
        </p>
        <dl class="image"> 
            <dt><img alt="Meeting need a new field" src="Images/Outlook_Days_1.jpg" /></dt>
            <dd>Figure: The date is good, an additional field "Days to Go" would be even better. A good example of this field is on the home page calendar of <a href="/ssw/">www.ssw.com.au</a></dd>
        </dl>
    </li>
    <li>
        <h2>
            <a name="SpellCheckSubject"></a>Auto spell check the subject
        </h2>
        <p>
            Please add auto spell check on mail subject.
        </p>
    </li>
    <li>
        <h2>
            <a name="RepairingMoreInfo"></a>
            When Repairing Corrupt Data files you need more info
        </h2>
        <p>
            When you are a damaged pst or ost you get this.
        </p>
        <p>
            Please give me a % complete (and any other info, like the part it is up to)
        </p>
        <p>
            It should also alert users that this is not fixing corrupt data.
        </p>
        <p>
            Eg. This is a consistency check only checking the free space - the non-data regions of the file (the free space that needs to be used).  Therefore, this check progresses has nothing to do with the data itself (i.e. it is not folder-by-folder, it is region-by-region in the file).  
        </p>
        <dl class="image"> 
            <dt><img alt="Need more info" src="Images/Outlook_RI_01.jpg" /></dt>
            <dd>Figure: Please give me a % complete</dd>
        </dl>

    </li>
     <li>
        <h2>
            <a name="RunSQLQueries"></a>
            Would love to run SQL queries against my inbox
        </h2>
        <p>
            Gmail allows me to take my email offline and run standard SQL queries against it <b>Not just email.... Contacts, Calendar and Tasks</b>.
        </p>
        <p>
        I wish I could do that with Outlook.
        </p>
  
        <dl class="image"> 
            <dt><img alt="Gears help Google enable powerful web application" src="Images/GoogleGears.jpg" /></dt>
            <dd>Figure: Google Gears allows storing data locally in a fully-searchable database.</dd>
        </dl>
    </li>
     <li>
        <h2>
            <a name="OutlookSearch"></a>
            Help me setup Outlook search on Windows Server 2008 R2
        </h2>
        <p>
          It is not that uncommon to configure Outlook on a server.
        </p>
        <dl class="image"> 
            <dt><img  src="Images/OutlookSearch.jpg" alt="Outlook should have the windows search service." /></dt>
            <dd>Figure: I think the Outlook team can do better than this.... as a minimum a web page with all the download links</dd>
        </dl>
        <ol>
         There are 2 options to fix this:
          <li>Command line: ServerManagerCmd -i FS-Search-Service or</li>
          <li>Server Manager > Roles > Add Roles > File Services > Windows Search Service</li>
        </ol>        
    </li>
    <li>
    <h2>
       <a name="CheckNames"></a>Outlook 2010 - Help me fix this annoying behaviour of "Check Names" (aka Control + K)
    </h2>
    <p>If I type "Brian"<br />
       <dl class="image"> 
            <dt><img  src="Images/CheckNames.jpg" alt="Click check names." /></dt>
            <dd>Figure: Then click "Check Names"</dd>
        </dl>
    </p>
    <p>
    It will change to "Brian Norton"<br /> 
    Instead of give me a choice of "Brian Norton" and "Brian Noyes"
       <dl class="image"> 
            <dt><img  src="Images/GlobalAdressList.jpg" alt="Global adress list." /></dt>
            <dd>Figure: The reason is it only looks in the "Global Address List"</dd>
        </dl>
    </p>
        <dl class="image"> 
            <dt><img  src="Images/Contacts.jpg" alt="Contacts list." /></dt>
            <dd>Figure: I want it to also look in the "Contacts" Address Book too.</dd>
        </dl>
    <p>PS: My iPhone uses the same data, but works as I expect.</p>
    <ul>
    <b>Summary points</b>
    <li>It should work out of the box (BTW it shows both "Brian's" out of the box, for my iPhone).</li>
    <li>This option, should be more discoverable.</li>
    </ul>
    <p>
    <b> Suggestion for the Outlook Team</b>
      <dl class="image"> 
         <dt><img  src="Images/RightButtonStyle.jpg" alt="The style of 'check names' button." /></dt>
         <dd>Figure: Change the "Check Names" button to this style</dd>
        </dl>
    </p>
    <dl class="image"> 
         <dt><img  src="Images/AddChangeOrderButton.jpg" alt="Add another 'change order' button below the 'check name' button." /></dt>
         <dd>Figure: Make the order more discoverable by adding "Change Order" under "Check Names" button that would take you to</dd>
    </dl>
    <dl class="image"> 
         <dt><img  src="Images/AddressBook.jpg" alt="Address book" /></dt>
    </dl>
    </li>
    <li>
    <h2><a name="SubscribedNewsletters"></a>Cater for Subscribed Newsletters (aka SPAM Level 2)</h2>
    <p>We all know what SPAM is... and Outlook seems to catch most of that fine.</p>
    <p>But there is a 2nd level of SPAM, and that is newsletters you subscribe to, but rarely get to read... but you will 'one day'</p>
    <p>I would love another mailbox called 'Junk Newsletters' and it picked up my newsletters.</p>
    <dl class="image"> 
         <dt><img  src="Images/JunkEmail.jpg" alt="Junk Email folder" /></dt>
         <dd>Figure: We need another folder "Junk Newsletters" and button "Not a Subscribed Newsletter"</dd>
    </dl>
    </li>
    <li>
     <h2><a name="MoreInfoAboutSync"></a>Syncing Offline Address Book - need more info so we don't think it is a corrupt 'offline address book template file'</h2>
     <ul>
     <li>This is a weird thing?what is it doing when it gets to this point?</li>
     <li>If you google, many results incorrectly seem to be talking about a corrupt 'offline address book template file'. Am I correct in assuming that they just were not patient enough?</li>
     <li>Why does it take so long?</li>
     </ul>
     <p>(feels like an eternity?actually you think it is hung?but it does complete)</p>
      <dl class="image"> 
         <dt><img  src="Images/SendAndReceiveProcess.jpg" alt="Send and receive process" /></dt>
         <dd>Figure: Takes so long you need more information</dd>
    </dl>
    </li>
    <li>
      <h2><a name="CompactReason"> </a>Slow Outlook - Add a KB explaining the compacting reason</h2>
       <p>Slow Outlook - Add a KB explaining the compacting reason</p>
       <p><b>Outlook gets really slow when your mailbox hits certain sizes eg. 1.9GB (for 2007 ANSI) or 19GB (for 2007 Unicode) or 48GB (for 2010 Unicode)</b></p>
       <p>Outlook gets really slow when your mailbox gets near its maximum.... it kicks in a whole lot of CPU processing</p>
       <p>The performance problems happens because the OST/PST silently takes it upon itself to compact much more aggressively than it would in a situation in which it's got "room to spare".  </p>
       <ul>
         The specifics are:
         <li>Outlook 2007 is 1.9GB (for ANSI OST/PST)<br />
            The 1.9GB limit is a hard limit (it relates to a fundamental limitation in the on-disk format) and, therefore, there is no work around (short of moving some of the data to another store or deleting it and allowing compaction to run its course).</li>
         <li>Outlook 2007 is 19GB (for Unicode OST/PST)<br />
            This is not a hard limit, the file format is capable of growing larger and so there is a work-around that can be found at <a href="http://support.microsoft.com/kb/832925.">http://support.microsoft.com/kb/832925.</a>  
         </li>
         <li>
           Outlook 2010 is 48GB (for Unicode OST/PST)<br />
           The new defaults in 2010 are 50GB for max file size and 47.5GB (95% of 50GB) for the warn file size in Unicode OSTs/PSTs.
         </li>
       </ul>
       <p>Note:<br />
          It's also worth looking over the information in <a href="http://support.microsoft.com/kb/940226">http://support.microsoft.com/kb/940226</a>, which covers some of the more common root causes of Outlook performance issues.  In particular, the table about SSDs can be useful for setting expectations (and keep in mind that the Vista WinSAT tool is fundamentally different than the Win7 WinSAT tool and you should download the Vista one and run it on your win7 machine if you want to compare your numbers to the numbers in the chart). 
       </p>
    </li>
    <li>
     <h2><a name="CompactInfo"></a>Slow Outlook - In the UI, inform about compacting</h2>
     <p>
      Fix the situation where there is no end user visibility when it starts compacting.<br />
      Surely by Outlook 2010 we should be able to see what it is doing.... create a Log file
     </p>
      <div class="greyBox">
       Microsoft Outlook Data file is very close to the maximum. <br />
       Performance will suffer as additional compacting will be kicking in.<br />
             [OK]
      </div>
    </li>
    <li>
      <h2><a name="MaximumSize"></a>Slow Outlook - In the UI, show the maximum size of the OST/PST</h2>
      <p>
       I didn't have any of the registry keys mentioned on <a href="http://support.microsoft.com/kb/832925">http://support.microsoft.com/kb/832925</a> 
      </p>
      <p>
       What ensured was a lot of effort to find out, that for Outlook 2007 I am using the default value of 20GB.
      </p>
      <p>
       2 columns should be added to this grid.
      </p>
      <dl class="image"> 
         <dt><img  src="Images/AccountSettings.jpg" alt="Add more account settings " /></dt>
         <dd>Figure: Suggestion - show the Current File Size and Maximum File Size (so I don't have to look up MaxLargeFileSize)</dd>
      </dl>
    </li>
    <li>
     <h2><a name="ConfusionInKB"></a>Slow Outlook - Fix the confusion in the KB</h2>
      <p>Regarding <a href="http://support.microsoft.com/kb/832925">http://support.microsoft.com/kb/832925</a> </p>
      <p>I didn't have any of the registry keys and I found the article a bit confusing. Especially when I could not copy and paste from the article to regedit.</p>
      <p>The worse thing is that copy and paste from the KB to outlook fails. So I have 4 suggestions for the KB:<br />
        #A - Add another column<br />
        <dl class="image"> 
         <dt><img  src="Images/AddColumns.jpg" alt="Add columns in front of ANSI and Unicode " /></dt>
         <dd>Figure: #1 Add a column in front to indicate ANSI or Unicode</dd>
      </dl>
       #B - Copy & paste from the KB doesn't work because regedit doesn't allow 0x0000c800 as hex number<br />
         <dl class="image"> 
           <dt><img  src="Images/CopyAndPasteFromKB.jpg" alt="Copy and paste from KB" /></dt>
         <dd>Figure: You should be able to copy and paste from the KB to the Regedit</dd>
         </dl>
      #C - Add a little explanation on how to get the HEX numbers <br />
         <ol>
           eg.
           <li>Open calc.exe</li>
           <li>Switch to "Programming mode"</li>
           <li>Make sure to have the calculator switched to "Dec"
             <dl class="image"> 
             <dt><img  src="Images/Calculator.jpg" alt="Calculator" /></dt>
             </dl>
           </li>
           <li>Enter the decimal number that you want to have as filesize</li>
           <li>Click on "Hex"</li>
           <li>Use that number</li>           
         </ol>
          #D - How do I know that my changes were applied? <br />
          Tell me?
      </p>
    </li>
    <li>
      <h2><a name="ChooseContact"></a>Choose Contact - Help me clean duplicates</h2>
         <dl class="image"> 
           <dt><img  src="Images/ChooseContact.jpg" alt="Choose contact" /></dt>
         <dd>Figure: When opening a contact, support multiple selection</dd>
         </dl>
    </li>
    <li>
      <h2><a name="MakeCategories"></a>Make working with Categories better</h2>
          <dl class="image"> 
           <dt><img  src="Images/UseCategories.jpg" alt="Using categories " /></dt>
           <dd>Figure: Using categories is great for mailing to a group of people</dd>
         </dl> 
         <p>
          I want to send an email to those tagged with 'iphone'...<br /> 
          How would I do it?
         </p>
         
         <dl class="image"> 
           <dt><img  src="Images/SelectContact.jpg" alt="Select contact" /></dt>
           <dd>Figure: Add an entry after 'Contacts'... As I would expect to find 'Contacts of a certain category' here</dd>
         </dl> 
         
         <dl class="image"> 
           <dt><img  src="Images/SearchResult.jpg" alt="SearchResult" /></dt>
           <dd>Figure: Looking for "Email" option on the right hand side.... or it could be called "Send email to Selection" </dd>
         </dl> 
         <dl class="image"> 
           <dt><img  src="Images/ActionsMenu.jpg" alt="Actions Menu" /></dt>
           <dd>Figure: Bingo... found it on the Actions menu</dd>
         </dl> 
         <p>
          So I would change <br />
           &nbsp; &nbsp;&nbsp;"Create | New Message to Contact"<br />
            &nbsp; &nbsp; &nbsp; to<br />
            &nbsp; &nbsp; &nbsp;"Send email to Selection"
         </p>
    </li>
    <li>
      <h2><a name="Outbox"></a>Outlook 2010 suggestion for outbox</h2>
         <dl class="image"> 
           <dt><img  src="Images/AddOptionToOutboxMenu.jpg" alt="Add an potion to the right click menu of outbox " /></dt>
           <dd>Figure: On the Outbox, wish it had an extra menu item "Send selected (3 emails)" </dd>
         </dl> 
    </li>
    <li>
     <h2><a name="RecurringEmails"></a>I wish Outlook allowed you to have 'Recurring Emails' (like recurring appointments)</h2>
       <p>We share our calendars and one of the things that screws scheduling meetings, is because many people put in a non-appointments as appointments (people look busy when they are not).
           e.g. 'Pay rent' when they actually just need an email each Tuesday.</p>
       <ol>
         There is another advantage to removing appointments of this type, people get fewer reminders. So they don't get desensitized to extra reminders that are not time critical.
         <li>Do you agree we should not put in non-appointments as appointments?</li>
         <li>Does anyone else wish for recurring emails to their inbox?</li>
         <li>Is there any solution?</li>
       </ol>
       <p>PS: I don't really want to install an outlook add-in (but I'll take anything)</p>
       <dl class="image"> 
           <dt><img  src="Images/NonAppointmentApp.jpg" alt="Non-Appointment App" /></dt>
           <dd>Figure:'Pay Rent' just another non-appointment as an appointment - because of missing functionality in Outlook/Exchange</dd>
         </dl> 
    </li>
    <li>
     <h2><a name="CompactNowUI"></a>Outlook 'Compact Now' UI</h2>
     <p>I know I can run 'Compact Now' manually. I just did some archiving and ran it now and it took about 12 hours (overnight)... however I should know that I don't have to.</p>
     <ol>
      <li><b>The UI should explain that this compacting happens in the background.</b>
       (in the PST's background idle task).
      </li>
      <li>
       <b>The UI should so that it is currently running. </b><br />
       That way you know if the performance problems that you are experiencing are related to compaction.<br />
        Gee Whizzzz?I should not have to ask to show what is going on with my PC?. <br />
        I am just asking for a 'Polite UI'
      </li>
      <li>
       <b>The UI should show that this is primarily about space savings,</b>not improving performance.<br />
       After I delete a lot of emails, I should see something different that indicates space can be saved.<br /><br />
        And if the UI is good, after I install Outlook 2007 SP2, and since things changed, (where you allowed the internal free space to grow - for a trade-off to allow for better locality of writes), I would see this in the UI.
         <dl class="image"> 
           <dt><img  src="Images/FeaturesAdded.jpg" alt="Need 3 more features" /></dt>
           <dd>Figure: This UI needs 3 features added </dd>
         </dl> 
      </li>      
     </ol>    
    </li>
    <li>
      <h2><a name="ConvertTimeZone"></a>Outlook should be able help you convert a time zone</h2>
       <p>If someone says "Let catch up at 4pm PST time" then you should be easily able to convert to your time e.g. Sydney time<br />
            Currently you need a tool like <b>timeanddate.com | Time Zones | Meeting Planner</b></p>
        <dl class="image"> 
           <dt><img  src="Images/TimeAndDate01.jpg" alt="Meeting planner" /></dt>
         </dl> 
         <dl class="image"> 
           <dt><img  src="Images/TimeAndDate02.jpg" alt="Meeting time" /></dt>
         </dl> 
    </li>
</ol>
<br />
</div>
<h2>Acknowledgements</h2>
<p>
    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a> 
    <br />
    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=LX">Lei Xu</a> 
</p>
</asp:content>