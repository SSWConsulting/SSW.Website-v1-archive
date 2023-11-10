<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft Exchange Server Suggestions"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<p>
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
</p>
<p>
<asp:label id="lblWelcome" runat="server"></asp:label>
<p>
<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14"> Indicates important rule</p>

<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
<tr>
<td>
<ol>
	<li><a href="#SQLBackend">Exchange Server should have an option to use a SQL Backend </a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14">
	<li><a href="#SQLManagement">Connect to Exchange Server from SQL Management Studio</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14">
	<li><a href="#RecordScript">Record a Script for Deployment</a><img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14">
	<li><a href="#SpecialCharacters">Problems caused by Special Characters</a>
	<li><a href="#EasyRedundancy">Exchange Server should allow easier cluster configuration.</a>
	<li><a href="#KeepPublicFolders">Please keep public folders.</a>
	<li><a href="#DailyAgendaEmail">Daily Agenda Email</a></li>
	<li><a href="#Subfolders">Add "Include Subfolders" option to the Search form in OWA</a></li>
	<li><a href="#NiceURLs">Help me get nice URLs</a></li>
	<li><a href="#OWAOpenTwoTabs">Exchange2010 - OWA can't open a 2nd tab</a></li>
	<li><a href="#Spam">Exchange OWA spam suggestion. Please be a little smarter please</a></li>
	<li><a href="#RightClickMenu">OWA - Need a right click menu like outlook e.g. 'Reply to All'</a></li>
	<li><a href="#EditSubject">Let me edit the subject of an email in OWA</a></li>
	<li><a href="#NiceURL">I want nice URLs in OWA</a></li>
</ol>
</td>
</tr>
</table>


<ol>
<li>
	<h2>
	<a name="SQLBackend"></a>Exchange Server should have an option to use a SQL Backend
	<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14">
	</h2>
	<p>
		We are aware that there are a lot of difficulties in doing this from all 
		the performance issues of converting a hierarchical database to a 
		relational one, but the performance issues that need to be fixed. This 
		allows us to do a few things.</p>
	<p>Also, the SQL Database that Exchange Server will use should be visible. 
	We want to be able to query it and not want to learn a new API. In fact, you 
	should be able to query Exchange Server through Query Analyzer.</p>
	<p>&nbsp;</p>

<li><h2><a name="SQLManagement"></a>Connect to Exchange Server from SQL Management Studio<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14"></h2>
	<p>
		We want to be able to use Exchange Server as easily as we use SQL Server. We 
		want to be able to use a gui to write a query in Outlook/SQL Management Studio against 
		exchange server to find out useful data for the company. e.g. How many important items there are in a users inbox.
		are in my inbox</p>
<p>
<li>
	<h2><a name="RecordScript"></a>Record a Script for Deployment<img src="/ssw/Images/Validation/redstar.gif" alt="Red star" width="18" height="14"></h2>
		Exchange should be able to record a script to create a folder so that it 
	can be used to deploy on other computers (like Reporting Services scripts - 
		using that in SQL Management Studio) 
		   <dl class="image">
		    <dt><img src="Images/DeploymentScript.jpg"  alt="Recording a script"/></dt>
		    <dd>Figure: SQL Management - Record Script</dd>
		</dl>
</li>
<li>
<h2>
	<a name="SpecialCharacters"></a>Problems caused by Special Characters</h2>
	<p> 
		Exchange Server 2000 has a problem when special characters (such as: !@#$%^&*()") are used in the message 
		subject line. OWA displays errors such as "Page cannot be found, HTTP 404 error messages as a result 
		from these special characters. 
	</p>
	<p>
		This problem does not occur with any Outlook clients (2000 or XP), and only in OWA and only if you have 
		the special characters in the subject line.  If you type the special characters in the body of the 
		message, you will be able to view the message just fine.
	</p>
	<p>
		Different versions of IE (5.0-6.0) and Netscape browsers have been tested, however the same thing happens.
		  The problem has been encountered by users for some time and the latest service packs have done nothing 
		  to overcome this problem.
	</p> 
  </li>
<li>

<h2><a name="EasyRedundancy"></a>Exchange Server should allow easier cluster configuration.</h2>
<p>
    I DO MIND having to worry about learning Exchange clustering (and worrying about hardware) to be able to have some redundancy if one box goes down.
</p>
<p>
    I have a dream that I can setup the cluster for Exchange as easy as how it works for SQL Server 2005 SP1. The Wizard is so simple to follow that my mum could run it. 
    And it doesn't require specific hardware. So a solution for the Exchange Team is to move the backend to SQL Server and then you can use SQL Server's mirroring feature. 
</p>
<p>Sorry for the repetition, I must have mentioned this many times over the past 5 years. 
</p>
</li>

<li>
    <h2><a name="KeepPublicFolders"></a>Please keep public folders</h2>
    <p>
        Public Folder is a very useful and cost effective way to share information on Exchange Server. I really dont concur with the phasing out of this feature unless there is 
        a very good reason. 
    </p>
    <p>
        This will affect many of my clients who are currently using <a href="/ssw/EXtremeEmails/">SSW eXtremeEmails!</a> and I think there are many others on the market as well. 
    </p>
</li>
<li>
<h2>
<a name="DailyAgendaEmail"></a>Daily Agenda Email
</h2>
<p>
Google Calendar has a setting where your daily agenda is emailed to you every morning at 5am. It's a simple feature
but extremely useful.
</p>
        <dl class="image">
		    <dt><img src="Images/Exchange_DailyCalendar.jpg" alt="Google Calendar" /></dt>
		    <dd>Figure: Google Calendar allows you to get your Daily Agenda emailed to you every morning</dd>
		</dl>
<p>
SSW will possibly add this feature to <a href="/SSW/TeamCalendar/">Team Calendar</a> in the future.
</p>
</li>
<li>
    <h2><a name="Subfolders"></a>Add "Include Subfolders" option to the Search form in OWA</h2>
    <p>
        OWA can only search the items in the current folder, but not including the subfolders. It will be better to add a check "Include subfolders" to fulfil this common requirement.
    </p>

        <dl class="image">
		    <dt><img src="Images/Subfolders.jpg" /></dt>
		    <dd>Figure: This is the option I was expecting</dd>
		</dl>
</li>
<li>
   <h2><a name="NiceURLs"></a>Help me get nice URLs</h2>
   <p>URLs are part of the UI, the Exchange Team should play with MVC and experience the nice URLs.</p>
    <ol>
    To Reproduce:
    <li>Go to your OWA inbox</li>
    <li>Right click on the "Sent Items" folder and "Open in New Window"</li>
    </ol>
    <dl class="badCode">
       <dt>
          <pre>https://mail.ssw.com.au/owa/?ae=Folder&t=IPF.Note&id=LgAAAADJ0hRZtBi8QpIgbESL70L1AQBZOBJtTQ9HQbOWNqsTETIFAAADTk8xAAAB</pre>
       </dt>
       <dd>Figure: Bad Example - Amazingly this is the Sent Items URL</dd>
     </dl>
      <dl class="goodCode">
       <dt>
          <pre>https://mail.ssw.com.au/owa/SentItems </pre>
       </dt>
       <dd>Figure: Good Example - This should be the URL</dd>
     </dl>
     <p>Note: We also have a <a href="/ssw/Standards/BetterSoftwareSuggestions/SharePointTeamServices.aspx#NiceURLs">similar suggestion for the URLs in SharePoint</a></p>
</li>
<li>
  <h2><a name="OWAOpenTwoTabs"></a>Exchange2010 - OWA can't open a 2nd tab</h2>
   <p>
    My first hour on Exchange 2010 was terrible ?I always open a 2nd tab with Exchange 2007 eg. my calendar.
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>You may have already opened your mailbox on a different browser tab. If you feel you've received this message in error, try refreshing your browser. 
   </p>
   <ol>
     So as you can tell I really love this new OWA "Feature" :-(
     <li>There is no information on the web about it (or how to turn it off).</li>
     <li>A work around is to open it in FireFox as well.</li>
   </ol>
   <p>Anyone know the technical reason behind this?</p>
   
     <dl class="image">
		    <dt><img src="Images/OpenOWAInTwoTabs.jpg" alt="Open two OWA in two tabs " /></dt>
		    <dd>Figure: Who programs a web app to be single instance?</dd>
     </dl>
</li>
<li>
  <h2><a name="Spam"></a>Exchange OWA spam suggestion. Please be a little smarter please</h2>
        <dl class="image">
		    <dt><img src="Images/CleanSpamFolder.jpg" alt="Clean Spam Folder " /></dt>
		    <dd>Figure: Reduce the steps to one, when cleaning the spam folder.</dd>
        </dl>
   <p><b>Make cleaning my junk less painful</b><br />
       Exchange OWA spam suggestion. Please be a little smarter please<br />
       If I say "Alex" is not spam... I wish it would be smart enough to move the rest of the emails from him</p>
</li>
<li>
  <h2><a name="RightClickMenu"></a>OWA - Need a right click menu like outlook e.g. 'Reply to All'</h2>
   <dl class="image">
	 <dt><img src="Images/OWAHasNoRightClickMenu.jpg" alt="OWA Has No Right Click Menu " /></dt>
	 <dd>Figure: No right click menu in OWA </dd>
        </dl>
</li>
<li>
  <h2><a name="EditSubject">Let me edit the subject of an email in OWA</a></h2>
  <p>Very often people don't follow rules ;-) <br />
     So they change the email subject on an email thread, what they shouldn't do, see <a href="http://sharepoint.ssw.com.au/Standards/Communication/RulesToBetterEmail/Pages/WhenToChangeEmailSubject.aspx">Rule</a> 
  </p>
  <p>How can I change the subject of an email if I am just using OWA?</p>
     <dl class="image">
	 <dt><img src="Images/EditSubject.jpg" alt="No edit subject" /></dt>
	 <dd>Figure: OWA ?right click ?No "Edit subject" </dd>
      </dl>
     <dl class="image">
	 <dt><img src="Images/EditMSG.jpg" alt="Edit message" /></dt>
	 <dd>Figure: No "Edit message" with the option to change the subject
      </dd>
      </dl>
</li>
<li>
  <h2><a name="NiceURL">I want nice URLs in OWA</a></h2>
  <p>Creating nice URLs is easy with ASP.NET 4 Routing features.<br />
     Please give me nice and easy understandable URLs</p>
  <p>BAD: mail.ssw.com.au/owa/?ae=Item&a=Open&t=IPM.Note&id=RgAAAAD3PIiVR9RLQ7MrvLiXEN66BwCwUlbTJLPVQIU6lf8q2bJXAAAHTUJLAACwUlbTJLPVQIU6lf8q2bJXAHWj3whFAAAJ </p>
  <p>GOOD: mail.ssw.com.au/owa/Emails/ShowDetails/Id=53311293 </p>
     <dl class="badImage">
	 <dt><img src="Images/URLForCalendar.jpg" alt="URL for the OWA calendar" /></dt>
	 <dd>Figure: BAD - URL for the OWA calendar
      </dd>
      </dl>
  <p>
    Same nice URLs could be done for the calendar https://mail.ssw.com.au/owa/Calendar/ShowWeek/StartDate=20090917 <br />
    -	link to same suggestion on SharePoint <a href="/SSW/Standards/BetterSoftwareSuggestions/SharePointTeamServices.aspx#NiceURLs">http://www.ssw.com.au/SSW/Standards/BetterSoftwareSuggestions/SharePointTeamServices.aspx#NiceURLs</a> <br />
    -	link to same suggestion on CRM <a href="/ssw/Standards/BetterSoftwareSuggestions/CRM.aspx#FriendlyURL">http://ssw.com.au/ssw/Standards/BetterSoftwareSuggestions/CRM.aspx#FriendlyURL</a> <br />
    -	link to same suggestion on TFS  <a href="/ssw/Standards/Rules/RulesToBetterProjectManagementWithTFS.aspx#NiceURL">http://www.ssw.com.au/ssw/Standards/Rules/RulesToBetterProjectManagementWithTFS.aspx#NiceURL</a> 
  </p>
</li>
</ol>
<h2>Acknowledgements</h2>

<p>
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
</p> 
</asp:content>
