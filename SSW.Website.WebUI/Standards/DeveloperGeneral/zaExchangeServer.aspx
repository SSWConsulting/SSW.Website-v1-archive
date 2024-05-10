<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW The Best 3rd Party Exchange Server Tools"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				

			<!--
			This is the main document.
			-->
		<div class="TableOfContents">
          	<h3>Exchange Server Tools</h3>
          	<ol>
          		<li><a href="#ExchangeIntelligentMessageFilter">Exchange 2003 Intelligent Message Filter</a></li>
          		<li><a href="#ExchangeReporter">SSW Exchange Reporter</a></li>
          		<li><a href="#ExchangeSPAMFilter">GFI MailEssentials</a></li>
          		<li><a href="#QSSExchangeConnector">QSS Exchange Connector</a></li>
          		

            </ol>
		</div>
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D54686525323042657374253230546F6F6C73253230466F7225323045786368616E6765253230536572766572')">
    Let us know</a> what you think.</p> 

<p>
 would you like your software to be considered for this list?  
	<a href="TheBest3rdPartyTools.aspx#HowToGetMyToolsConsidered">Give us your details</a>.
</p>
		<ol>
		<li>
			<a name="ExchangeIntelligentMessageFilter"></a>
			<h2>Exchange 2003 Intelligent Message Filter</h2>
		</li>

			<p>
				Microsoft Exchange Intelligent Message Filter provides server-side message 
				filtering, heuristics-based message analysis, and support for per-message spam 
				confidence level ratings.
			</p>
			<p>
				Intelligent Message Filter is based on Microsoft SmartScreen Technology from
				Microsoft Research, which means the add-on is able to distinguish between 
				legitimate email messages and unsolicited commercial email.
				By using email characteristics tracked by SmartScreen technology, 
				Intelligent Message Filter can help determine whether each incoming email 
				message is likely to be spam. Based on this likelihood, you can choose to block
				email messages at the gateway or at the mailbox store.
			</p>
			<p>Microsoft Exchange Intelligent Message Filter requires Exchange Server 2003. </p>
			<p>
				<a href="/ssw/Redirect/Microsoft/ExchangeIntelliegentMessageFilter.htm" target="_blank">Exchange 2003 Intelligent Message Filter Web Site</a>
				<img src="Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
			</p>
				
		<li>
			<a name="ExchangeReporter"></a>
			<h2>SSW Exchange Reporter</h2>
		</li>
			<p>
				If you are using Microsoft Exchange Server in your organization,
				<a href="/ssw/ExchangeReporter/">SSW 
				Exchange Reports</a> provides the tools you need to efficiently 
				 analyze your organization's email usage. The SSW Exchange Extraction 
				 Service captures all of your Exchange data into SQL Server. The 
				 service will run as a windows service on your Exchange Server to 
				 seamlessly extract your email messages and mail folder statistics,
				 from here the custom set of Reporting Services reports on any number 
				 of different usages of Exchange within your organization. 
			</p>
			<p>
			    Reports can be viewed by any user with a web browser. Reports can also be 
				configured to automatically 'push' themselves to users' mailboxes according 
				to a schedule, ensuring that all the necessary people in your organization 
				are kept up to date with the latest statistics.
			</p>
			<div class="imageHolder">
				<img src="/ssw/ExchangeReporter/Images/ExtractionManager.gif" width="404" height="603" alt="Wizard">
			<p>
				<span class="Caption">Figure: SSW Exchange Reporter</span>
				<br>
				<a href="/ssw/ExchangeReporter/" target="_blank">SSW Exchange Reporter Web Site</a>
			</p>
			</div>
	    <li>
			<a name="ExchangeSPAMFilter"></a>
			<h2>GFI MailEssentials</h2>
		</li>
			<p>
			   The GFI MailEssentials uses Bayesian filtering technology to detect spam based on message 
			   content. Rather than just checking for keywords, GFI's Bayesian filter takes the whole message 
			   into consideration as well as the content of valid emails that you send (known as "ham"). This gives 
			   it a huge advantage over other anti-spam solution that only take spam into account.
			</p>
			<p>
			   GFI is a multifunctional software. Rather than filtering incoming email only, GFI ME can be far more
			   anti-spam intensive and includes: mail reporting, disclaimers, inbound/outbound email archiving to
			   database, auto replies, etc.
			</p>
			<p>
			<div class="imageHolder">
				<img src="/ssw/Standards/DeveloperGeneral/Images/SpamFilter.gif" width="586" height="446" alt="Wizard">
			<p>
			<span class="Caption">Figure:GFI MailEssentials</span>
			<p>
			</div>
		    GFI MailEssentials clients no longer need to use spambayes (a popular client side application that uses Bayesian Analysis). GFI integrates 
			seamlessly with Microsoft Exchange 2000/2003: It installs on the Exchange SMTP service and does not require gateway configuration. Via the SMTP protocol,
			it also works with Exchange 5.5, Lotus Notes and other popular SMTP/POP3 servers.
			
			<p>Some key features of GFI's AntiSpam Folders:
		<ul>
			<li>Add to blacklist: GFI MailEssentials checks if the mail sender is on a third party DNS blacklist (ORDB, SpamHaus, etc). You can also 
			configure your own blacklist of domains and email addresses.</li>
			
			<li>Add to whitelist: Whitelist drastically reduces false positives (a problem inherent in anti-spam software). GFI automatically 
			creates a whitelist for you on the basis of emails your company has sent.</li>
			
			<li>I want this Discussion list: Often discussion lists are sent out without including the recipient email address in the MIME TO and are therefore marked as spam.
			 If you want to receive these discussion lists, you need to white list the email addresses of these valid list mailers.</li>
			
			<li>This is a legitimate email: GFI intelligently analyzes the email header and identifies spam based on message field information. It detects forged headers, encoded IP's
			spam mutation, spam sent from invalid domains determining originality of emails.</li>
			
			<li>This is a spam email:  GFI gives you the flexibility to choose what to do with spam. You can delete it, move it to a folder,
			 forward the spam mail to a public email address or folder, or send it to individual customizable folders (for example, a junk mail folder) in the
			 end-users inboxes.</li>
		</ul>
		</p>
			<p>
			    <img src="/ssw/Standards/DeveloperGeneral/Images/GFIFolder.gif" alt="Wizard" width="210" height="118">
            <p>
			<span class="Caption">Figure:GFI's AntiSpam Folders</span>
		    </p>
			
				<br>
				<a href="/ssw/Redirect/gfimailessentials.htm" target="_blank">GFI MailEssentials</a>
				<img src="Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
			</p>
			
			
		<li>
			<a name="QSSExchangeConnector"></a>
			<h2>QSS Exchange Connector</h2>
		</li>

			<p>
                Exchange Connector allows you to integrate your existing POP3 mailboxes with Microsoft Exchange Server by periodically accessing 
                user-determined POP3 mailboxes and delivering the messages to the appropriate Exchange Server accounts.
			</p>
            <p>
		        With Exchange Connector you can
		    </p>
	        <ul>
		        <li>Access legacy email accounts without leaving the Exchange environment</li>
		        <li>Divert your mail through third-party servers (eg. GMail) for filtering</li>
		        <li>Access multiple POP accounts</li>
		        <li>Choose whether mail is delivered to a predetermined account or accounts auto-detected from "To:" fields</li>
	        </ul>
	        <p>
			    <img src="/ssw/Standards/DeveloperGeneral/Images/ExchangeConnector.gif" alt="Wizard" width="456" height="546">
            <p>
			<span class="Caption">Figure:QSS Exchange Connector configuration options.</span>
		    </p>
	        <p>
		        <a target="_blank" href="/ssw/Redirect/exchangeconnector.htm">Exchange Connector Website</a><img src="Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
	        </p>
			
			

			<h2>Acknowledgements</h2>	
			
			<p>
				<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
			</p>
		</asp:content>