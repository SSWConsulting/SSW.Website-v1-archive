<%@ Page Language="VB" MasterPageFile= "~/Masters/Default.master" AutoEventWireup="false" Title="SSW The Best 3rd Party Outlook tools"  %>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
</script>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
			<!--
			This is the main document.
			-->
			<br />
<div id="intro">
	<p>Believe it or not 70% of the average user's day is spent in Outlook - that is why I put it first.</p>
</div>
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D54686525323042657374253230546F6F6C73253230466F722532304F75746C6F6F6B')">
    Let us know</a> what you think.</p> 
<div class="TableOfContents">
<h3>Outlook Tools</h3>
  	<ol>
  		<li><a href="#OutlookAttachment">Attachment Options for Outlook</a></li> 
 		<li><a href="#SSWLookOut">SSW LookOut</a></li>
        <li><a href="#Redemption">Outlook Redemption</a></li>
        <li><a href="#Plaxo">Plaxo</a></li>
        <li><a href ="#SMSOfficer">SMSOfficer</a></li>
		<li><a href="#RedOxygenOutlookSMS">Red Oxygen OutlookSMS </a></li>
        <li><a href="#TeamCompanion">TeamCompanion</a></li>
        <li><a href="#OnePlaceMail">OnePlaceMail</a></li>
          <li><a href="#CRMToolbar">CRM Toolbar</a></li>
       </ol>
</div>
<dl class="image">
    <dt><img src="/ssw/Standards/DeveloperGeneral/Images/Outlook-addins.jpg" alt="Outlook add-ins" /></dt>
    <dd>Figure: Outlook Add-Ins</dd>
</dl>
<p>
	Do you agree with them all? Are we missing some? Email me your tips, thoughts or arguments. 
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC"> Let me know</a> what you think.
</p>
<p>
	Would you like your software to be considered for this list? 
	<a href="TheBest3rdPartyTools.aspx#HowToGetMyToolsConsidered">Give us your details</a>
</p>

<ol>

<li>
<a name="OutlookAttachment"></a>
<h2>Attachment Options for Outlook</h2>
</li>
<br>

<p>
	In Outlook you are unable to view attachments that have certain file extensions. 
	With this update  you are able to specify which extensions you want outlook to hide and 
	which ones to view. 
</p>
	
<p>
	A COM add-in by Outlook MVP Ken Slovak that adds an Attachment Security Options page to the Tools | Options 
	dialog in Outlook to allow you to manage which file attachments are blocked.<br>
	<a href="/ssw/Redirect/Slovatek.htm" target="_blank">STS Attachment Options</a>
	<img src="Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
</p>
<div class="imageHolder">
	<img src="/ssw/Standards/DeveloperGeneral/Images/OutlookSecurity1.gif" alt="Outlook Security" width="300" height="327">
<p>
	<span class="Caption">Figure: Click the "Move All->" button to enable you to receive all attachments in Outlook</span><br>
<br>
	<a href="/ssw/Redirect/Microsoft/MSOutlookEmail.htm" target="_blank">Others solutions</a>
	<img src="Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
</p>
</div>

<li>
	<a name="SSWLookOut"></a>
	<h2>SSW LookOut</h2>
	<p>
		Whenever you receive an email, SSW LookOut searches and matches people from your database. 
		It clearly tags every email you receive, telling you where the details of the contact can be 
		found. And LookOut will let you know if no contact exists, which is especially helpful in 
		the case of sales databases, when you want to be sure that every person who emails you and 
		your colleagues exists in your database. 
	</p>
	<p>
		SSW is a simple plug-in tool for all your users - it simply adds a field to your existing
		Outlook view to let you know who is contacting you! So, for your users, no technology needs
		to be learnt, no view needs to change and no changes need to be made! Simple!
	</p>
	<div class="imageHolder">
		<img src="/ssw/LookOut/Images/Properties.gif" alt="Properties" width="414" height="463">
		<p>
			<span class="Caption">Figure: This shows the ClientID column added to some mail items in Outlook</span>
		<br>
			<a href="/ssw/LookOut/" target="_blank">SSW LookOut Web Site</a>
		</p>
	</div>
</li>
<li>
<a name="Redemption"></a>
<h2>Outlook Redemption</h2>
	<p>
		Outlook Redemption works around limitations imposed by the Outlook Security Patch and Service Pack 2 
		of MS Office 2000 and Office XP (which includes Security Patch) plus provides a number of functions to 
		work with properties and functionality not exposed through the Outlook object model.
	</p>
	<div class="topoflist">
		With Outlook Redemption you can
	<ul>
		<li>Make your VB and VBA code run unaffected by the Security Patch.</li>
		<li>Access properties not exposed by the Outlook Object Model (Internet message headers, sender email 
			address and hundreds more properties)</li>
		<li>Directly access RTF body of any Outlook item</li>
		<li>Import .MSG files</li>
		<li>Directly access message attachments as strings or as arrays without saving them as files first</li>
		<li>Display Address Book</li>
		<li>Force immediate Send/Receive (<i>Tools | Send/Receive</i> in Outlook)</li>
		<li>Track new email events with (unlike Outlook) new email item passed to your handler.</li>
	</ul>
	<p><a href="/ssw/Redirect/Redemption.htm" target="_blank">Outlook Redemption Website</a><img src="Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11"></p>
	</div>
</li>
<li>
	<a name="Plaxo"></a>
	<h2>Plaxo</h2>
	<p>
		Plaxo helps you to stay connected with people that is most important to you. Plaxo can update 
		your address book quickly and automatically, and keep it current without the hassle. 
	</p>
	<div class="topoflist">
		With Plaxo you can
	<ul>
		<li>Can plugs seamlessly in to Outlook or Outlook Express</li>
		<li>Plaxo can save time by keeping your address book up-to-date automatically</li>
		<li>Can synchronize your home and work computers</li>
		<li>Can access your information anywhere using Plaxo Online</li>
		<li>Can back up and recover your vital information</li>
	</ul>
	<p>
	BTW The only thing that <a href="/ssw/Standards/Rules/RulesToBetterWebsitesMarketing.aspx#PhoneNumber"">Plaxo doesnt do is check that the phone numbers are the correct international format</a>
	</p>
	<p>
		<a target="_blank" href="/ssw/Redirect/plaxo.htm">Plaxo Website</a><img src="Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
	</p>
	</div>
</li>	

<li>
<a name = "SMSOfficer"></a>
<h2>SMSOfficer</h2>
<p> SMSOfficer is a service that connects Microsoft Office Outlook 2007 with any mobile phone.
<br />It allows you to easily send SMS to any mobile phone using the built-in Outlook 2007 option.It also allows you to receive Calendar meetings reminders and incoming email alerts to your mobile phone</p>
<div class="imageHolder">
	<img src="images/SMSOfficer.jpg" alt="SMSOfficer">
<p>
	<span class="Caption">Figure: SMSOfficer</span>&nbsp;
</p>
</div>
</li>
<li>
	<a name="RedOxygenOutlookSMS"></a>
	<h2>Red Oxygen OutlookSMS</h2>
	<strike><p>
		Red Oxygen OutlookSMS, as the name suggested, it allows you to send instant SMS messages from Outlook to any mobile phone using 
		your personal address book, Global Address List or direct number entry, and receive SMS directly from your Outlook Email inbox. </p></strike> 
		<div class="imageHolder">
	<img src="images/Redoxygen.jpg" alt="Red Oxygen" height="327">
<p>
	<span class="Caption">Figure: Red Oxygen</span>&nbsp;
</p>
</div>
		<div class="topoflist">
			<strike>With Red Oxygen you can 
			<ul>
				<li>Send/Receive SMS message in your outlook</li>
				<li>Use Smart Tags to send an SMS</li>
				<li>Send scheduled SMS</li>
				<li>Send long messages</li>
				<li>Receive recurring reminders</li>
				<li>CC SMS to Email address</li>
			</ul>
			</strike>
			<p>
		<a target="_blank" href="/ssw/Redirect/regoxygen.htm">Red Oxygen Website</a><img src="Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11"></p>

		</div>
		<p>     <span lang="EN-US">Today, most of people 
                are still using SMS from their mobile phone, so it makes sense to use outlook to 
                send/receive SMS via your Windows Mobile phone because the receiver can always 
                see your mobile number.
                <br />
                <a target="_blank" href="pocketpctools.aspx#JeyoMobileExtender">Jeyo Mobile Extender</a> </span>
            </p>
</li>	

    <li>
        <h2><a name="TeamCompanion"></a>TeamCompanion</h2>
            <p>Integrate Outlook and TFS with TeamCompanion and manage your Application Lifecycle more efficiently.</p>
            <p>For all Outlook and Team Foundation Server (TFS) users TeamCompanion is a must-have tool that provides for better collaboration, efficient Agile Project Management and increased productivity in daily tasks.</p>
            <dl class="image">
                <dt><img src="/ssw/Standards/DeveloperGeneral/Images/TeamCompanion.jpg" alt="TeamCompanion" /></dt>
                <dd>Figure: Teamcompanion allows access to your Team projects hosted in TFS from Outlook</dd>
            </dl>
    </li>

    <li>
        <h2><a name="OnePlaceMail"></a>OnePlaceMail</h2>
            <p>OnePlaceMail connects Microsoft Outlook, Microsoft Office and Windows Explorer to Microsoft SharePoint and Office 365. Oneplacemail by <a href="http://www.scinaptic.com/" target="_blank">Scinaptic</a> promotes the adoption of SharePoint as your enterprise information management and collaboration platform.</p>
            <ul>
                <li>Promote user adoption and capitalise on the investment made in Microsoft SharePoint.</li>
                <li>Unlock valuable information assets trapped in personal inboxes.</li>
                <li>Reduce compliance and records management risk through better email management.</li>
                <li>Increase information visibility across project teams. Securely manage enterprise information with SharePoint.</li>
                <li>OnePlaceMail simply feels like a natural extension to the desktop applications. Reduce training and have a common, intuitive experience across all applications from Outlook/Office 2003 through to Outlook/Office 2010 and File Explorer.</li>
                <li>Minimises change for end users by providing an Outlook style experience for SharePoint</li>
            </ul>
            <dl class="image">
                <dt><img src="Images/outlook-style-interface.jpg" alt="outlook-style-interface.jpg" /></dt>
                <dd>Figure: OnePlaceMail features</dd>
            </dl>
    </li>

    <li>
        <h2><a name="CRMToolbar"></a>CRM Toolbar</h2>
        <p><a target="_blank" href="http://www.microsoft.com/en-us/download/details.aspx?id=1079">Microsoft Dynamics CRM</a> for Outlook enables access to the same data through Outlook as the Microsoft Dynamics CRM Web application. </p>
    </li>

</ol>

		<h2>Acknowledgements</h2>	
			
			<p>
				<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
			</p>
		</asp:content>