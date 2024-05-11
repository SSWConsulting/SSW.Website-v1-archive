<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="Cleaning Your Mailbox"  %>

        
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
<div class="clsTitle">
	<h2>Cleaning your inbox</h2> 
		
		<p>
		Before you leave SSW it is important that you are able to allocate all unfinished work to other people or move tasks to a 
		folder for others to access. Please follow the following standard for cleaning out you emails. 
		</p>
		
<p>
<ul type="1">
	<li>Open up Active Directory Users and computers on wolf, you could physically go to wolf or do it via remote desktop.</li>
	<li>Double click on the user in question. This will take you to their properties.</li>
	<li>Click on the "Exchange Advanced Tab" then "Mailbox Rights"<br>
	<p>
	<img border="0" src="../InductionTraining/images/AddPermissions.gif" alt="Add Permission" width="650" height="459">
	</p>
	<li>Click on the button &quot;Add&quot; </li>
	<li>Add yourself to the list 
	and click "OK"</li>	
	
	<p>
		<img border="0" src="../InductionTraining/images/AddName.gif" alt="Add name" width="452" height="418">
	<br>
&nbsp;</p>
	<li>Allow yourself Full mailbox access by checking the combo box.</li>
	<li>Open up your Outlook</li>
<li>You now need to add the users mailbox to your folders list.</li>
<li>To do this, go to your main Outlook window click on "Tools" > "Email Accounts" then check "View or change existing email accounts"</li>
<li>In the Public folders make a new folder under the SSWExchangeManager using your name</li>
<li>Create a 2 subfolder's SentItems and SavedItems. Please 
	see below</li>
		<p>
	<img border="0" src="../InductionTraining/Images/CreatingPublicFolder.gif" alt="Creating public folder" width="148" height="422"><br>
	<p>Figure 1.</p>

	<li>Move all of the user's sent items to 
	the newly created sent items folder in SSWExchangeManager.<li>
	Go through the user's&nbsp; inbox and delete any emails that were non work related and 
	directed to a group e.g those sent to sswall<li>For any emails that remain, forward them to the relevant people as per
	<a href="/ssw/StandardsInternal/InductionTraining/EmployeeResponsibilities.aspx">
	http://hippo/ssw/StandardsInternal/InductionTraining/EmployeeResponsibilities.aspx</a></li>
	<li>Now that you don't have any emails in any folders in your Outlook repeat 
	steps 1 and 2</li>
	<li>Click on the &quot;Email Addresses&quot; Tab </li>
	<li>Select the user's email alias that is like &lt;yourname&gt;@sydney.ssw.com.au </li>
	<li>Click on the button &quot;Set as Primary&quot; button to change your default reply 
	address</li>
	<li> Makle a note of the email aliases that exist then select and &quot;Remove&quot; all other email addresses <b>except for</b> the &lt;yourname&gt;@sydney.ssw.com.au
	<b>and</b> X400 type email. Please note: before you remove them take a note of what 
	email addresses they are as you will need them in the next step after they 
	have been deleted. See Figure 2.</li>
	
	<p>
	<img border="0" src="images/DeletingEmails.gif" alt="Deleting email" width="394" height="273"> <br>
	<br>
	Figure 2.<br>
&nbsp;</p>
	
	<li>Click on "OK" then go to the user &quot;info&quot; and open up the properties by double clicking.</li>
	<li>Click on the &quot;Email Addresses&quot; tab the click New</li>
	<li>Highlight "SMTP Addresses" then click "OK"</li>
	<li>Type in the email addresses that you removed in step 16</li>
	<li>Click "OK" then check the list that they have been registered into info. From this point onwards any emails that have been directed
	to the user's email aliases is now directed to info's inbox.</li>
	<li>Delete the user's old account by highlighting and pressing 
	&quot;Delete&quot; on your keyboard.</li>
	
	</asp:content>