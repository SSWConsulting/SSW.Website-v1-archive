<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="SSW Registration" %> 

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
&nbsp;<p>To 
help us built a better product please send your
 <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','sswregistration',this)"
               onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer"  category="info" process='true' >696e666f407373772e636f6d2e6175</a>
               <br>
<br>
</p>
<table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Prepared By" width="80%" cols="2">
	<tr>
		<td width="32%">Prepared By</td>
		<td width="68%">Daniel Hyles and John Liu</td>
	</tr>
	<tr>
		<td width="32%">Subject</td>
		<td width="68%">SSW Registration .NET</td>
	</tr>
	<tr>
		<td width="32%">Date</td>
		<td width="68%">16/01/2003, 13/03/2002, 14/03/2002</td>
	</tr>
</table>
<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
	<tr>
		<td><b>Registration </b>
		<ol>
			<li><a href="#NewLook">New Look</a></li>
			<li><a href="#Versions">Versions</a></li>
			<li><a href="#FeatBenefits">Key Features and Benefits</a></li>
			<li><a href="#Implement">Developer notes and implementation</a></li>
			<li><a href="#ResetUsage">How to reset the registration usage information</a></li>
			<li><a href="#RegisterProductInternal">How to register the product (internal use only)</a></li>
			<li><a href="#RegisterProductExternal">How to register the product (external)</a></li>
			<li><a href="#WebServiceExtension">How do I extend user&#39;s evaluation period for another 7 days or 10 uses?</a></li>
			<li><a href="#automate">What does the Website/Registration automate?</a></li>
			<li><a href="#HowAutoRegWorks">How does the auto registration work?</a></li>
			<li><a href="#Weakness">The following are some weakness with the registration dll</a></li>
			<li><a href="#JournoVersions">How do I give away free versions for Journalists?</a></li>
			<li><a href="#MagVersions">How do I give away free versions in Magazines?</a></li>
			<li><a href="#Resellers">What happens when our products are bought through Resellers?</a></li>
		</ol>
		</td>
	</tr>
</table>
<br>
<ol>
	<li>
	<h2><a name="NewLook"></a>New Look of SSW Registration Wizard</h2>
	<br>
	<img border="0" src="/SSW/Registration/Images/Rego1.png" alt="Registration Wizard"><table id="table1">
		<tr>
			<td><b>Figure: New look of the main page</b></td>
		</tr>
	</table>
	<p><span lang="EN-AU" style="FONT-FAMILY:Tahoma; FONT-SIZE:10pt;">
	<a href="/ssw/Registration/UserGuide.aspx">More screen captures</a></span></p>
	<br>
	</li>
	<li>
	<h2><a name="Versions"></a>Versions</h2>
	<br>
	<table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Prepared By" width="80%" cols="4">
		<tr>
			<td width="11%"><b>Version</b></td>
			<td width="8%"><b>Date</b></td>
			<td width="15%"><b>Updated</b></td>
			<td width="66%"><b>Changes</b></td>
		</tr>
		<tr>
			<td>1.0</td>
			<td>14/03/2002</td>
			<td>JL, JHL</td>
			<td>First Release</td>
		</tr>
		<tr>
			<td width="11%">2.0</td>
			<td width="8%">16/01/2003</td>
			<td width="15%">DH</td>
			<td width="66%">Major changes. Added all info about how to use DLL and 
			ways to get around it</td>
		</tr>
		<tr>
			<td width="11%">2.1</td>
			<td width="8%">31/01/2003</td>
			<td width="15%">RAD</td>
			<td width="66%">Changed the image for adding a project reference to 
			SSWRegistration2002; Added section &#39;Before Releasing your Program&#39;; 
			Small changes</td>
		</tr>
		<tr>
			<td width="11%">3.0</td>
			<td width="8%">23/02/2004</td>
			<td width="15%">DH</td>
			<td width="66%">Added all the auto registration functionality</td>
		</tr>
		<tr>
			<td width="11%">3.1</td>
			<td width="8%">23/05/2005</td>
			<td width="15%">DH</td>
			<td width="66%">Updated to use new database tables for prod name</td>
		</tr>
		<tr>
			<td width="11%">3.25</td>
			<td width="8%">21/07/2005</td>
			<td width="15%">DH</td>
			<td width="66%">First relese of new version</td>
		</tr>
	</table>
	<br>
	</li>
	<li>
	<h2><a name="FeatBenefits"></a>Key Features &amp; Benefits</h2>
	Since .NET and Web Services became available, we wanted to revisit our problem 
	of registering software that people download from our website. The New Registration 
	DLL uses this technology to incorporate our database with client registrations 
	and trials while making it fail safe and easy to debug.
	<p>
	<!--<div class="clsTitle">--></p>
	</li>
	<li>
	<h2><a name="Implement"></a>Developer notes and implementation</h2>
	<p><span lang="EN-AU" style="FONT-FAMILY:Tahoma; FONT-SIZE:10pt;">
	For developers please read the <a href="RegistrationForDevelopers.aspx">
	Registration for SSW Developers</a> page</span><br>
&nbsp; 
	</p> 
	</li>
	<li>
	<h2><a name="ResetUsage"></a>How to reset the registration usage information</h2>
	<br>
	To reset furiously double click around the area marked by the red dot<br>
	<img src="Images/Reset.gif" alt="Reset" width="431" height="365"><p>A message 
	box will be displayed confirming that you want to reset the trail.<br>
	</p>
	</li>
	<li>
	<h2><a name="RegisterProductInternal"></a>How to register the product (internal 
	use only)</h2>
    <!--SSW Code Auditor - Ignore next line(HTML)-->
	Add a dummy invoice to the SSW user in TimePro for this product and then login 
	with your email address and password (preferred)<p>OR</p>
	<p>To register the product enter rekcolnu (unlocker backwards) in the Registration 
	Key field, press [Ctrl] and ] , and then <b>right click</b> on the Options 
	label of the window title &quot;Registration Options&quot; at the top 6 times until the 
	registration Key field changes to the unlock code. Click &#39;Next&#39; to complete 
	the process.<br>
	</p>
		<img src="Images/UnlockPage.gif" alt="Register" width="431" height="365">
	<p>More screen shots in the <a href="/ssw/Registration/UserGuide.aspx">User Guide</a>.</p>
	</li>
	<li><a name="RegisterProductExternal">
	<h2>How to register the product (external)</h2>
	</a>
	<p>Once the customer has a a paid invoice they are able to register the 
	product via the web by simply entering their email address and password.</p>
	<p>The client picks the Register Now option<br>
	<img border="0" src="/SSW/Registration/Images/Rego1.png" alt="Existing client option"></p>
	<p>They then select the &quot;existing client&quot; option and click Next<br>
	<img border="0" src="/SSW/Registration/Images/Rego2.png" alt="Existing client option"></p>
	<p>The client will then need to type in their email address and password and 
	click Next<br>
	<img border="0" src="/SSW/Registration/Images/Rego4.png" alt="Enter email"></p>
	<p>The registration will check SSWData2000 database through Registration Web 
	Services and activate the product. </p>
	<p>Refer to the &quot;How does the auto registration work?&quot; section for any 
	registration problems.</p>
	<p>&nbsp;</p>
	<p>If the user does not have an Internet connection then as an absolute last 
	resort you can use the Unlock program.</p>
	<p>
	<a href="unlocker/SSWRegistrationUnlocker.exe">SSWRegistrationUnlocker.exe</a><br>
	<img src="Images/Unlocker.gif" alt="SSW registration Unlocker" width="303" height="228"></p>
	<p>If the product name is not found in the list then click on the Refresh List 
	button to get any new product names from our database. </p>
	<p><b>Please Note:</b> You may have to copy the Unlocker directory to your computer 
	so you have permissions to refresh the product list.</p>
	<p><strong>Please Note:</strong> You can only give a client ONE temporary key. 
	Once they have used it they cannot get another one.</p>
	</li>
	<li>
	<h2><a name="WebServiceExtension"></a>How do I extend user&#39;s evaluation period 
	for another 7 days or 10 uses?&nbsp;&nbsp;&nbsp; </h2>
	<p>Temp key can only extend user&#39;s evaluation period once, therefore we cannot 
	issue another temp key for the same user after the initial one, which is not 
	good. </p>
	<p>From version 3.13, you can use web service and Time PRO client diary to extend 
	user&#39;s evaluation period for multiple times. In order to use this function, 
	user need to have an entry in Client table (normally when user download the 
	software, a new entry will be created). </p>
	<p>To do this, you need to find the client record in Time PRO and click on &quot;Dairy&quot; 
	button on the top:<br>
	<img border="1" src="Images/WSExtension1.gif" alt="Dairy" width="393" height="216"></p>
	<p>then, add new diary record and choose the category &quot;Registration Trial Can 
	Be Extended&quot; :<br>
	<img border="1" src="Images/WSExtension2.gif" alt="Trail Extension" width="499" height="172"></p>
	<p>On the client side, they need to use &quot;existing client&quot; option<br>
	<img border="0" src="/SSW/Registration/Images//Rego2.png" alt="Existing client option"></p>
	<p>Then, the client need to type in his email address and password:<br>
	<img border="0" src="/SSW/Registration/Images//Rego4.png" alt="Enter email"></p>
	<p>The registration will check SSWData2000 database through Registration Web 
	Services, because we have already add the diary record to enable extension for 
	this user, his product trail will be extended.</p>
	<p>After the user extends evaluation, the record in client&#39;s diary will be replaced 
	with another record, saying &quot;Registration Trial Extended (WWW)&quot;, then we know 
	his evaluation extension has been done. <br>
	<img border="1" src="Images/WSExtension6.gif" alt="Trail Extended" width="742" height="165"></p>
	<p>For multiple extensions, you just need to add another &quot;Registration Trial 
	Can Be Extended&quot; record in the client&#39;s diary. </p>
	<p>Note: After the client extend his evaluation for the 1st time, a temp key 
	will be added into his local registry and any temp key will return a &quot;Invalid 
	key&quot; error message. </p>
	</li>
	<li>
	<h2><a name="automate"></a>What does the Website/Registration automate?</h2>
	<ul>
		<li>Creates the client if one doesn&#39;t already exist</li>
		<li>Creates the invoice</li>
		<li>Emails <a href="javascript:var e1='%73s%77.%63%6fm&#046;&#097;&#117;',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='%69%6e&#102;%6f';var e0=e2+e3+'@'+e1;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">info@s*w.com.au</a> about the 
		new invoice  telling you to process it<br>
&nbsp;&nbsp;&nbsp; Admin guy then processes this invoice manually</li>
		<li>You process it then reply to customer telling them to:<br>
&nbsp;&nbsp;&nbsp; Install the software if it is not already (chances are it is 
		as they purchased the software though it)<br>
&nbsp;&nbsp;&nbsp; Tell them to open up the software package and click on &quot;Register 
		Now&quot;<br>
&nbsp;&nbsp;&nbsp; The user then selects the existing client option and then enters 
		in their email address and password<br>
&nbsp;&nbsp;&nbsp; The system will detect that that client has purchased the product 
		and will register the product automatically</li>
	</ul>
	<p>Note: If they dont have Internet Access then the user will have to go though 
	the old process:</p>
	<ul>
		<li>They click Register</li>
		<li>They email us their PC ID</li>
		<li>We email them their Unlock ID&quot;</li>
		<li>They open the product</li>
		<li>They click Help - Register Now</li>
		<li>They enter the Unlock ID</li>
	</ul>
	<p>&nbsp;</li>
	<li>
	<h2><a name="HowAutoRegWorks"></a>How does the auto registration work?</h2>
	<p>Users now have the option to auto register their program. </p>
	<p>When they do this a couple things get checked:<br>
	1) Did that user purchase that product?<br>
	2) Are they installing a new version and if so have their free upgrade time 
	expired?<br>
	3) Has the user registered too many times this month? </p>
	
	<p><b>1) Did that user purchase that product?</b></p>
	<p>This will look for a invoice for that client for that ProdCategory.</p>
	<p><img src="Images/AutoRegoNotPur.png" alt="Extension of Use"></p>
	
	<p><b>2) Are they installing a new version and if so have their free upgrade 
	time expired?</b></p>
	<p>We give them 6 months of free upgrades. This is judged by the &#39;DateCreated&#39; 
	of the invoice for the product. You can extend this for a client by altering 
	this field. After this period and the user tried to upgrade or install a newer 
	version that they had previously installed before this timeout period then they 
	will be denied. The user has the option to continue and purchase a &#39;maintenance&#39; 
	product with will allow the user to have another 12 months of upgrades. </p>
	<p><img src="Images/AutoRegoExceedMax.png" alt="Purchase again"></p>
	
	<p><b>3) Has the user registered too many times this month? </b></p>
	<p>This functionality was introduced so we can monitor and try to control warez 
	keys floating around the Internet.<br>
	We are allowing the client to register the product as many times as they have 
	licenses for with an additional 2 times every 
	month.<br>
	So if I have 2 licenses i can register it 4 times per month.<br>
	Every purchase counts for 1 license except if it is a enterprise product then 
	the purchase will account for 100 licenses.<br>
	Every time a client updates the application, or registers a new application 
	on a new machine, a new entry is made in the ClientDiary table. </p>
	<p><img src="Images/AutoRegoTooMany.png" alt="Auto Registration"></p>
		</li>
	<li>
	<h2><a name="Weakness"></a>The following are some weakness with the registration 
	dll</h2>
	<p>1) What is SSW goes broke?<br>
	<b>Problem:</b> If SSW goes broke then our web service will stop and clients 
	will be unable to register their product.<br>
	<b>Solution:</b> Buy source code.</p>
	<p>2) I don&#39;t have the original image that I had when I purchased the software. 
	Now I cannot register the latest version!<br>
	<b>Problem: </b>If you try to register a product after 12 months after the date 
	of purchase then you will be denied and prompted to purchase a upgrade. We don&#39;t 
	keep previous versions of our product so we cannot supply you with a working 
	version. You should have kept the download.<br>
	<b>Solution::</b> If they complain then go to their tags in TimePro! and add 
	a &#39;PRDUPD&#39; tag with the current version of the product. This will allow the 
	user to register the current version and you have now given them warning regarding 
	keeping the download. </p>
	</li>
	<li>
	<h2><a name="JournoVersions"></a>How do I give away free versions for Journalists?</h2>
	<p>All you have to do is make a dummy invoice for the person for that product 
	and they will be able to register the product.</p>
	<p>If you want to give them 3 months of upgrades then all you have to do is 
	change the DateCreated of the invoice for the product to a date 9 months prior 
	to the current date. (The rego dll gives them 12 months of upgrades. So by changing 
	the DateCreated to a earlier date their upgrade period is reduced).</p>
	</li>
	<li>
	<h2><a name="MagVersions"></a>How do I give away free versions in Magazines?</h2>
	<p>At times we give away free copies of our software as part of a magazine promotion 
	or some other promotion. When this happens we supply eligible persons with a 
	code. More information about our INETA and Practical Web Projects promotions 
	can be found here: <br>
	<a href="/ssw/Products/pwpmag.aspx">http://www.ssw.com.au/ssw/Products/Pwpmag.aspx</a> 
	and <a href="/ssw/Products/Ineta.aspx">http://www.ssw.com.au/ssw/Products/Ineta.aspx</a></p>
	</li>
	<li>
	<h2><a name="Resellers"></a>What happens when our products are bought through Resellers?</h2>
	<p>Each product registration is attached to a client ID. This means, the reseller who bought the product,
	has the product and its invoice attached to their client ID. To correct this and hand over the registration
	to the 'real' purchaser, you need to alter invoices. Once the invoice is paid:</p>
	<p>Step 1: Set the date back one year so they cannot activate the software themselves. Put in the notes field that they are a reseller, 
	the invoice was changed to avoid them being able to activate the software themselves and getting a free copy.</p>
	<p>Step 2:	Ensusre you have full details of the company that will be the registering company (not the reseller). If they have 
	not registered with SSW yet, create a Client ID and fill in the details. Make sure you know which person is going to be
	registering the software and make them the main contact with their email address.</p>
	<p>Step 3: Create the registering company an invoice for the product that the reseller purchased for them and set it to zero ($0)</p>
	<p>Step 4: To register, the company will need to know the email the product is now bought under, as well as the password that
	was generated to unlock the registration keys. Provide this information over the phone if possible to avoid sendoing
	sensitive information via email. If this is unavoidable, send the email and password to the one main contact who will
	be the one registering the software.</p>
	</li>
</ol>
</asp:content>