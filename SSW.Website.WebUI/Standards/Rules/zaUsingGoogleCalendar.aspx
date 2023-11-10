
<%@ Register TagPrefix="uc1" TagName="OpenTime" Src="~/Components/OpenTime.ascx" %>

<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Using Google Calendar to Manage Recurring Tasks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

<div id="mainContent">

<table border="0" align="right" width="10%">
<tr>
<td><image src="images/GoogleCalendar_PostItNote.jpg" border="1">
</td>
</tr>
<tr>
<td>
<b>Figure: Ever tried to run a SQL query against a post-it note? With Google you can query the XML of a calendar.</b>
</td>
</tr>
</table>
<p>
Recurring tasks are tasks that happen on a regular basis, but not necessarily every day (and therefore 
potentially easy to forget!) They might be personal tasks, such as changing the oil in your prized Datsun 
120Y every six months, or booking a holiday for you and your partner a month before your anniversary. They 
could be work related tasks, such as updating your profile on the Microsoft Gold Partner website (every three 
months), running financial reports on a monthly basis, or even watering the office plants every week. 
</p>
<p>
Now managing those tasks can be difficult. "Just stick an appointment in Outlook" - yes I've heard and tried 
that method. Outlook is perfect when you are the one performing the task. But it's nowhere near perfect if you're 
managing people who are allocated to perform the task. In fact it's a disaster, because when that person leaves, 
(or just changes job role) that scheduled task/reminder disappears with them. 
</p>
<p>
The other problem with Outlook is if you are an organization that relies upon using your email inbox as a to-do/task list, Outlook 
doesn't send an automated email. 
</p>
<p>
After reviewing a few different options (namely yahoo.com/calendar, hotmail.com and BackPackIT.com), we decided using Google Calendar to manage recurring tasks was the best option.
</p>	
<p>
By using Google Calendar you can:
<ol>
<li>
Create a Scheduled Task
</li>
<li>
Add or delete people as required
</li>
<li>
Access over the web (no install/deployment issues)
</li>
<li>
Send an automated email
</li>
<li>
Store and query the data
</li>
</ol>
</p>
<h2>
Setting up Google Calendar
</h2>
<ol>
<!--Using Javascript to encrypted our email addresses-->
<li>Create an account. If you are going to use this calendar to manage an organization or department, use
a generic email address, e.g. <script language="javascript" type="text/javascript">document.write(decodeEmail('696e666f407373772e636f6d2e6175')); document.write(" or "); document.write(decodeEmail('73616c6573407373772e636f6d2e6175')); </script>. Note: Of Google, Yahoo and Live! only Google allows 
you to sign in with an email address that isn't @yahoo, @gmail or @hotmail.
</li>
<p>
<img src="Images/GoogleCalendar_SignIn.jpg" border="1" width="648" height="322">
<br>
<b>
Figure: Sign in to Google Calendar with any email address. 
</b>
</p>
<li>
Create your first task. Google's functionality for recurrance mirrors that of Outlook quite closely. 
</li>
<p>
<img src="Images/GoogleCalendar_CreateTask-Recurrance.jpg" border="1" width="444" height="425">
<br>
<b>
Figure: Create the task and add how often and when it recurs.
</b>
</p>
<li>
Set who is to receive the task. 
</li>
<p>
<img src="Images/GoogleCalendar_InviteRelevantPerson.jpg" border="1" width="304" height="318">
<br>
<b>
Figure: Select only the person who is to complete the task. 
</b>
</p>

<li>
The recipient will receive an email/appointment. (The email comes with an .ics file attached.) NOTE: users should 
click BOTH the link in the email as a means of accepting/rejecting/maybe-ing (that's the only way the Google Server will
know what your response is) and the "Accept/Reject/Tentative" buttons in the Outlook Reminder.
</li>
<p>
<img src="Images/GoogleCalendar_Invitation.jpg" border="1" width="352" height="415">
<br>
<b>Figure: The user can Accept/Reject/Maybe and the appointment goes into their calendar. Remember to accept/reject
using the link in the email and the Outlook buttons... The formatting of the email isn't that great (why is the font so large??) </b>
</p>
</ol>
<p>
That's it. Pretty simple. 
</p>
<h2>
Managing the Reminder Email
</h2>
<p>
Unfortunately the Google functionality isn't as good as it could be in this area. 
</p>
<p>
The Event Organizer can specify exactly when, and how many, reminder emails (or SMS's) are to be sent to themselves. 
Sadly, those receiving the invitation will only receive a reminder email <i>if</i> they have a Google account <i>and</i> 
they have agreed to receive Reminder Emails <i> and only when</i> they have determined to receive them. 
</p>
<p>
When a new user sign's up the default Reminder is a "Pop Up" 10 minutes before the event. You should change this to an email
say 15 mins before the event. If you need a lot of reminding you can add further email reminders to be sent.
</p>
<p>
<img src="images/GoogleCalendar_SetUpPersonalNotifications.jpg" border="1" width="542" height="157">
<br>
<b>
Figure: Change your default Reminder to "Email", and add as many Reminders as you think you need.
</b>
<p>
Therefore every user to whom you are going to be sending tasks needs to create their own Google account.
</p>
<h2>Administrating the Tasks</h2>
<p>
Let's say you have a task dedicated to the Junior Network Admin, George W, which is "fix broken links" on a website.
Let's say George W is promoted to Senior Network Admin and wants to pass on all his tasks to the new Junior, 
John H. With Google Calendar it's really simple.
</p>
<p>
<ol>
<li>
Open the calendar, type the name or email address of the relevant person in the Search box, and click "Search My Calendars". 

</li>
<p>
<img src="Images/GoogleCalendar_Search.jpg" border="1" width="658" height="170">
<br>
<b>Figure: Enter the full email address of the person.</b>
</p>

<li>
Click the Activity link which exposes the link to "Edit event details".
</li>
<p>
<img src="Images/GoogleCalendar_Search-Edit.jpg" border="1" width="654" height="169">
<br>
<b>
Figure: Click "Edit Event Details"
</b>
</p>
<li>
Google Calendar now allows you to add or remove guests to this activity. 
</li>
<p>
<img src="Images/GoogleCalendar_Add-RemoveGuests.jpg" border="1" width="298" height="76">
<br>
<b>Figure: Easily add or remove guests from the recurring task.
</b>
</p>
<li>
Remove the person you wish to remove and add the new person. 
</li>
<p>
<img src="images/GoogleCalendar_AddGuests.jpg" border="1" width="278" height="187">
<br>
<b>Figure: Add the name of the person who is taking over the recurring task.
</b>
</p>
<li>
Click save, and then click "All following". 
</li>
<p>
<img src="Images/GoogleCalendar_EditRecurringEvent.jpg" border="1" width="636" height="100">
<br>
<b>Figure: Click "All Following". In this case it will show that George W. did the task until one date, 
and then John H took over from there on.
</b>
</p>
<li>Don't forget to send the update which will remove the event from George W's calendar and add it to John H's 
calendar.
</li>
<p>
<img src="Images/GoogleCalendar_SendUpdate.jpg" border="1" width="524" height="104">
<br>
<b>
Figure: Send the update to all the parties associated with the updated recurring task.
</b>
</p>
<li>
John H will now get the reminder emails and do the specified recurring task as requested. Easy.
</li>

</ol>
</p>
<h2>Acknowledgements</h2>
<p>
Adam Cogan
<br>
Cameron Shaw
</p>
</div>


</asp:Content>