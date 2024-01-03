<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Email Merge PRO - Screenshots"  %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

				<div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>
		
<a href="/ssw/EmailMergePro/">SSW EmailMergePRO</a> > Screenshots<br><br>

<p>
    <img src="Images/EmailMergePROLogo.gif" alt="access reporter logo"  width="250" height="83"><p>
	<b>Mail merge HTML emails simply with SSW Email Merge PRO!</b></P>

	<p>
       
SSW Email Merge PRO! makes sending bulk email a breeze. Especially useful for 
periodical email newsletters, it provides real time tracking information and reports on 
bounced emails, enabling you to keep your subscribers list clean and up-to-date.
	</p>
	
	<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
		<tr>
			<td>
				<b>SSW EmailMergePRO User Guide</b><br>
					<a href="#Pre">1.</a> Prerequisites<br />
				<a href="#userGuide">2.</a> User Guide<br>
		        <a href="#ooptions">3.</a> Other Screens<br>	
		        <a href="#faq">4.</a> FAQ<br>			
			</td>
		</tr>
	</table>
		<SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>

<h2>User Guide<a name ="userGuide"></a></h2>
<p>
When you run the install exe there is a simple wizard interface to guide you 
thru the setup process. 
</p>
	<p><a href="Images/EmailMergePROSetupBig.gif" target="_blank" border=0>
		<img src="Images/EmailMergePROSetupSml.gif" alt="SSW Email Merge PRO Setup" border="1" width="400" height="310" >
	</a>
	</p>
<p>
When you run the SSW Email Merge PRO there wil be a step by step wizard to guide you 
thru the Email process.
</p>
 <ol>

	   
          <li>Run SSW Email Merge PRO  - Welcome screen - Select Start from the begining. <br>
          Note: If you want to resume from the last sent log, select Resume.
    	<p>
	<a href="Images/EmailMergeProStep1Big.gif" target="_blank" border=0>
		<img src="Images/EmailMergeProStep1sml.gif" alt="Email Merge PRO-Welcome" border="1" width="400" height="293" >
	</a>
	</p>

	
          <li>Select the html file you wish to use</li>
     
	      <ul>
            <li>Hints on creating HTM files:</li>
            <ol>
            <li>Front Page is a perfect tool</li>
            <li>Use full URLs, not relative paths</li>
            <li>Ensure there is no scripting in the page</li>
            </ol>
          </ul>
     	<p>
	<a href="Images/EmailMergeProStep2Big.gif" target="_blank" border=0>
		<img src="Images/EmailMergeProStep2sml.gif" alt="Email Merge PRO-Select newsletter" border="1" width="400" height="293" >
	</a>
	</p>

	
          <li>Select the address you wish to send from, any required 
          attachments, the Subject and the mail server</li>
   	<p>
	<a href="Images/EmailMergeProStep3Big.gif" target="_blank" border=0>
		<img src="Images/EmailMergeProStep3sml.gif" alt="Email Merge PRO-Email details" border="1" width="400" height="293">
	</a>
	</p>

		
          <li>If the &quot;From&quot; address is not in the list, you can add a new 
          address</li>
      	<p>
	<a href="Images/EmailMergePROOptionsBig.gif" target="_blank" border=0>
		<img src="Images/EmailMergePROOptionsSml.gif" alt="Email Merge PRO-Options" border="1" width="400" height="338" >
	</a>
	</p>
	      <li>Send a test email to selected recipients</li>
     
     <li>Generate subscriber list
     <ul>
     <li>Use custom database to generate the list</li>
     <ul>

 		
          <li>Select the database where your subscribers reside, select the 
          table and field which contains the email addresses.</li>
        
	<p>
	<a href="Images/EmailMergeProStep4Big.gif" target="_blank" border=0>	
		<img src="Images/EmailMergeProStep4sml.gif" alt="Email Merge PRO-what you want to send" border="1" width="400" height="293" >
	</a>
	</p>	
    </ul>
    <li>Use Microsoft CRM data to generate the list</li>
        <ul>

            <li>Change connection string to point to CRM Database and use custom SQL statement to generate your list, e.g: 
            <div class="greyBox">
            <p>
            SELECT DISTINCT emailaddress1 FROM Contact WHERE donotsendmm = 0 AND emailaddress1 is not null AND emailaddress1 LIKE '%@%'
            </p>
            </div>
            </li>
            <p>
                    <a href="Images/CRM_Subscribers.gif" target="_blank" border=0>	
		<img src="Images/CRM_Subscribers.gif" alt="CRM Database" border="1" width="686" height="533" >
		</a></p>
        </ul>
    </ul>
 	</li>
 	 	</ul>
	
 	
          <li>View the recipients if required</li>
    	 	<p>
 	<a href="Images/EmailMergeProRecipientsBig.gif" target="_blank" border=0>
 		<img src="Images/EmailMergeProRecipientsSml.gif" alt="Email Merge PRO-Recipients" border="1" width="400" height="337">
 	</a>
	</p>

  	
          <li>Send the Mail Merge</li>
        	<p>
 	
 	<a href="Images/EmailMergeProStep5Big.gif" target="_blank" border=0>
		<img src="Images/EmailMergeProStep5Sml.gif" alt="Email Merge PRO-Send newsletter " border="1" width="400" height="293">
	</a>
	</p>	

    	
              <li>SSW Email Merge PRO! informs you of progress</li>
       	<p>
	<a href="Images/EmailMergeProProcessBig.gif" target="_blank" border=0>
		<img src="Images/EmailMergeProProcessSml.gif" alt="Email Merge PRO-Processing " border="1" width="400" height="293">
	</a>
	</p>	
	
    	
              <li>SSW Email Merge PRO! reports on how many emails were send, and how 
              long it took to send them</li>
    <p>
    <a href="Images/EmailMergeProFinishBig.gif" target="_blank" border=0>
		<img src="Images/EmailMergeProFinishSml.gif" alt="Email Merge PRO-Finish" border="1" width="400" height="293">
	</a>
	</p>

     
      
	  
          <li>Using sent email log you can view the history of sent emails.</li>
              <p>
	<a href="Images/EmailMergeProSentLogBig.gif" target="_blank" border=0>    
		<img src="Images/EmailMergeProSentLogSml.gif" alt="Sent log" border="1" width="350" height="98">
	</a>
	</p>	
        </ol>
        
<h2> <a name ="ooptions" ></a>Other Screens </h2>      
  <ul>

	<li>You can resume the process by selecing any sent log from the list on step 1.</li>
	   	<p>
		<a href="Images/EmailMergePROResumeBig.gif" target="_blank" border=0>
			<img src="Images/EmailMergePROResumeSml.gif" alt="Other Screens" border="1" width="400" height="144">
		</a>
	</p>

	<li>You can mail merge into your newsletter using database field on step 5.</li>

	   	<p>
		<a href="Images/EmailMergeProMergeBig.gif" target="_blank" border=0>
			<img src="Images/EmailMergeProMergeSml.gif" alt="Merge Header,Body & Footer" border="1" width="400" height="315">
		</a>
	</p>

	<li>You will have the report for the result of your email process.</li>
	
	   	<p>
		<a href="Images/EmailMergeProResultBig.gif" target="_blank" border=0>
			<img src="Images/EmailMergeProResultSml.gif" alt="Email Merge PRO-Result" border="1" width="350" height="388">
		</a>
	</p>	
  </ul>

<h2> FAQ <a name="faq"></a></h2>
<p>
1. <a href="/ssw/KB/KB.aspx?KBID=Q915578" target="_blank">What is the difference between using Email Merge PRO! and the email merge within Microsoft Word?</a>

</p>    
     
		</asp:content>