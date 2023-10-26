<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title=".NET Hosting Setup"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
		<% 'Note: there can be a PageTitle parameter if it is different to the Document.Title %>

<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" align="right" style="{width:100%;}">
	<tr> 
  		<td> 
			<b>.NET Hosting Setup</b>
			<br><br>
			<A href="#User">1.</a> Setting Up A User On Seal<br>
			<A href="#Domain">2.</a> Steps required for the delegation of a domain to SEAL.<br>
		</td>
	</tr>
</table>






	<ol>
	<li>
	
	<h2>
		<a name="User"></a>		To setup a new Internet user on Seal we have to do a couple of things.</h2>
	
	<UL>
	<LI>Create a new directory for this user in wwwroot. 
	<LI>Go in IIS and make the users directory have application properties. 
    <!--SSW Code Auditor - Ignore next line(HTML)-->
	<LI>Go in Serv-U FTP server and create a login for the user to access their own 
	space. 
	<LI>Create a mail account ( Not configured yet )
	</UL>
	</p>


	<div class="clsTitle"><h2>Step 1 - Creating a Directory</h2>	
	
		<p>
		<ol>
		<LI>Open up Windows Explorer and browse to the d:\inetpub\wwwroot folder. 
		<LI>Create a new folder and rename it to their UserName
		</ol>
		</p>
		
	
	<div class="clsTitle"><h2>Step 2 - Setting up IIS</h2>	
	
		<p>
		<ol>
  <li> Open up IIS by clicking on the icon in the task bar</li>
  <li> Expand the SSW web share </li>
  <li> Locate the User's folder that you created in step 1, right click on it 
    and go to properties</li>
  <li> Click on the Create button and then click ok <br>
  </li>
</ol>
<p>
<img src="Images/IIS_UserProperties.jpg" alt="IIS user properties" width="322" height="303">
</p><p>
<img src="Images/IIS_Users.jpeg" alt="IIS user properties" width="448" height="316">
		</p>

	
	<div class="clsTitle"><h2>Step 3- Setting up Serv-U FTP</h2>	
		<p><ol>
		<LI>Open up Serv-U FTP server by clicking on the image in the taskbar. Pease 
note that the image suggests that the FTP server is OFFLINE! This is a known bug 
with terminal server and should be ignored. 
<br><img src="Images/FTP_TaskBar.jpg" alt="FTP taskbar" width="90" height="34"><br>
<LI>Expand the domain that this user is a part. (This will always be 
ftp.ssw.com.au UNLESS the user has their own domain on our server.) 
<LI>Right click in this area and select a new user. 
		
		<br><img src="Images/FTP_Users.jpg" alt="FTP users" width="485" height="333"><br>
		
		<LI>Follow the wizard to add a new user, Just make sure that:<BR>o In step 3 - 
you select the folder you made and not any other by mistake.<BR>o In Step 4 - 
Lock user in home directory. Always Select YES for obvious reasons. Also if this 
is off, the user tried to access there space though full parths I.E. 
d:/inetpub/wwwroot/&lt;UserName&gt; rather than just /&lt;UserName&gt; 
<LI>Once the user is created, go into the Account Tab and in the notes section, 
type in the user's password and a contact email address. This way we can test 
the account if the user has a problem and also can email a lost password to the 
account holders true email address. 
<img src="Images/FTP_AccountTab.jpg" alt="FTP account tab" width="486" height="333"><br>
<LI>In the General Tab, Make sure that there is only 2 logins from same IP, that 
the idle time-out is set at 5 minuets, and that the MAX number of users is set 
to 3. 
<LI>In the Dir Access Tab, for any paths that are listed, make sure that all the 
permissions are selected EXCEPT the Execute one. 
<br><img src="Images/FTP_DirAccessTab.jpg" alt="FTP Directory Access Tab " width="486" height="334"><br>
<LI>In the Quota Tab, tick the enable quota checkbox and enter in the Maximum 
size of hard drive space you wish to allocate to the user. ( I.E. 30meg will be 
30000) 
<!--SSW Code Auditor - Ignore next line(HTML)-->
<LI>Now that you have setup the FTP, test it by login into the users account, 
upload a file, and delete it. Making sure that the users space decreases one the 
file is uploaded. 
</p></ol>


	<li>
	<div class="clsTitle">
		<a name="Domain"><h2>Steps required for the delegation of a domain to SEAL.</h2>	
	</li>
		<p>
		This documents aim is to give an overview of what is required to configure a domain on Seal. It is recommend that you read through this document and collect all required information before starting the process.
		</p>
		<p>1. Configure the DNS for the domain on Seal: DNS is a large topic beyond what I can cover in this document. Look at the configuration of ssw.com.au on Seal to get an idea of what is required. Make sure that mail information is carried across from the previous delegation and that pridns.pacific.net.au is listed as a secondary DNS for the domain.
		</p><p>
		2. Phone Pacific Internet and ask them to configure a secondary DNS for the domain on pridns.pacific.net.au. Pacific will ask for the IP of Seal and for the domain name. Our account name at Pacific is SSW.
		</p>


	<div class="clsTitle"><h2>For .com.au domains:</h2>	
	
		<p>
		3. Go to the .com.au maintenance pages at http://www.inww.com/. On that page there should be a link to Name Server Delegation. You will require the Admin NIC handle and the Tech NIC handle for the domain. If you have configured DNS incorrectly this form will not accept your request. It will normally tell you what is wrong so its good for debugging DNS settings.
		</p><p>
		4. Return to the .com.au maintenance pages. There should be a link to Delegation Authorisation. This is where you prove that you have the authority to make the changes you requested in step 3. You require the registry key for the domain for this step. 
		</p><p>
		(Note: Without the Admin NIC handle, Tech NIC handle and registry key delegation can not go ahead. There is information on <a href="/ssw/redirect/web/aunic.htm">http://www.aunic.net/</a> and <a href="/ssw/redirect/inww.htm">http://www.inww.com/</a> giving instructions on how to retrieve this information.)
		</p>
		
	
	
	<div class="clsTitle"><h2>For other domains:</h2>	
	
		<p>
		5. You will need to know where the domain was originally registered. Once you find this site you will have to research what steps are required to delegate. This may require the cooperation of a third party involved in the original registration process. Many international registers require only the username and password of either the admin or tech contact for the domain.
		</p>
	



	</ol>





		</asp:content>