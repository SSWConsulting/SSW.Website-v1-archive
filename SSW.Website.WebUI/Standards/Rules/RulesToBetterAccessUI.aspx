<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Access UI"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
		When designing their UI, Access developers often make these common 
		mistakes:<ul>
			<li>Non-standard fonts - for example, making fonts bold or 
			using different fonts on the same form</li>
			<li>Different background colors for labels and controls (see the
			<a href="#examples">examples</a>) - this will confuse users because 
			it's not standard with Windows, and the colors are distracting</li>
			<li>No standard OK/Cancel button pair - it's always a good idea to 
			do as Windows does because users are familiar with Windows dialogs. 
			&quot;Save&quot; and &quot;Cancel&quot; are non-standard, for example.</li>
			<li>Lots of different forms - having a separate form for every block 
			of data that needs to be entered can become a confusing and tedious 
			process.</li>
		</ul>
		<p>With the new breed of Windows XP icons, themes and form layouts, you 
		will try and steer away from the old Access look. The XP look is 
		cleaner, less cluttered, and quicker to navigate. With just a little 
		time you can fix up your Access forms. Try these tips and see how you 
		can transform even an Access Application!</p>	
		<p>Do you agree with them all? Are we missing some? Email us your tips, thoughts or
        arguments. <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532304163636573732532305549')">
        Let us know</a> what you think.</p>
		<div class="TableOfContents">
			<h3>Rules to Better Access UI</h3>
			<ol>
				<li><a href="#okcancel">Do you use OK/Cancel Buttons?</a></li>
				<li><a href="#icons">Do you use appropriate and user-friendly icons?</a></li>
                <li><a href="#tabs">Do you group forms into tabs where appropriate?</a></li>
                <li><a href="#Resolution">Do you target the correct resolution when designing forms?</a></li>
				<li><a href="#examples">Do you use clean designs when creating forms? (Bad, Good and Best)</a></li>	</ol>
		</div>
		<ol>
		
		
		<li><a name="okcancel"></a><h2>Do you use OK/Cancel Buttons?</h2>
		It's always a good idea to do as Windows does because users are familiar 
		with Windows dialogs. &quot;Save&quot; and &quot;Cancel&quot; are non-standard, for example. 
		For more information read
		<a href="/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx#ANCBTN">Do your forms have Accept and Cancel buttons?</a> 
		and <a href="/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx#ANCBTN">
		Do you name your Accept button OK or Next?</a> See the
		<a href="#examples">examples</a> for how to do this on your form.</li>

		<li><a name="icons"></a><h2>Do you use appropriate and user-friendly icons?</h2>
		All through Windows XP you will see a variety of icons
		used to represent the information they are related to, and to make the 
		interface more interesting and appealing. Just because you are 
		developing forms in Access, doesn't mean your forms can't look and feel 
		like Windows XP. One easy way to achieve this is to use XP-style icons. 
		We love the icon library from
		<a href="/ssw/Standards/DeveloperGeneral/ImageLibraries.aspx#IconExperience">
		Icon Experience</a> - see some <a href="#examples">examples</a> of how we used these icons to vastly 
		improve an old and stuffy Access UI.</li>
		
		<li><a name="tabs"></a><h2>Do you group forms into tabs where appropriate?</h2>
		Having a separate form for every block of data that needs to be entered 
		can become a confusing and tedious process. A common example is having 
		one form to add/edit Contact details, another to add/edit that Contact's 
		Address details, and another to add/edit that contact's Qualifications. 
		The most organized way to do this is by using tabs - see the
		<a href="#examples">examples</a>.</li>
        <li><a name="Resolution"></a><h2>Do you target the correct resolution when designing forms?</h2>
        You will target your application towards resolutions that your customers can use comfortably. It is no good to just tell the customer to increase their resolution on their 15-inch LCD 
        because your application and others can become unreadable on smaller screens. See <a href="/ssw/Standards/Rules/RulesToBetterWebsitesLayout.aspx#Resolution"> this rule</a> for a guide as to which resolutions you will be targeting.
        </li>
        
		<li><a name="examples"></a><h2>Do you use clean designs when creating forms? (Bad, Good and Best)</h2></li>
	<h2>Screenshots of an existing Application (Bad)</h2>	
<div class="TableOfContents">
        
    <p>
    
        <b>&nbsp;A fairly standard Access 97 application that needs some love (Before a
            makeover)</b></p>
		<p>
		<img border="0" src="Images/accessui_candidateedit1_before.gif" width="592" height="372"><br>
		<b>Figure:&nbsp; Avoid using background colors for your form controls - they can be confusing (bad)</b></p>
		<p>
		<img border="0" src="Images/accessui_candidateedit2_before.gif" width="592" height="372"><br>
		<b>Figure: Avoid using non-standard fonts on your forms - keep them as 
		close to Windows XP forms as possible (bad)</b></p>
		<p>
		<img border="0" src="Images/accessui_candidateedit3_before.gif" width="592" height="372"><br>
		<b>Figure: All these forms will be grouped into a tabbed form (bad)</b></p>
		<p>
		<img border="0" src="Images/accessui_candidateedit4_before.gif" width="592" height="372"></p>
<p>
		<img border="0" src="Images/accessui_candidatesearch_before.gif" style="width: 593px; height: 459px"><br>
		<b>Figure: The colors on this form are very distracting and add no value 
		to the user - keep it clean (bad)</b></p>
</div>
<p>&nbsp;</p>
<h2>Screenshots of the existing Application in Access 97 after an SSW makeover (Good)</h2>
<div class="TableOfContents">
<p><a name="after"></a>
        <!-- Modified by ZV, Date: 27/10/2008 -->
		<b>After (these are the same forms &#8211; many developers think it is a .NET windows form!)</b></p>
        <!-- End of modification -->
<p>
		<img border="0" src="Images/accessui_candidateedit1_after.gif" width="850" height="536"><br>
		<b>Figure: This is the same application above - can you believe it? We 
		grouped the forms into tabs</b></p>
<p>
		<img border="0" src="Images/accessui_candidateedit2_after.gif" width="850" height="538"><br>
		<b>Figure: The icons give the form visual appeal and help to break up 
		the plain colors</b></p>
<p>
		<img border="0" src="Images/accessui_candidateedit3_after.gif" width="850" height="538"><br>
		<b>Figure: It's easy to present your form more cleanly and with a 
		Windows XP feel</b></p>
		<p>
		<img border="0" src="Images/accessui_candidatesearch_after.gif" width="654" height="769"><br>
		<b>Figure: Even tricky forms with lots of logic can be tidied up. We 
		used XP-styled controls and careful alignment to make this form more 
		usable.</b></p>
		</div>

<h2>
    Access 2007 is an Easy Way to Give Your Old Access Application a new look (Best)</h2>
<div class="TableOfContents">
<p><a name="after"></a>
		<b>Access 2007 UI Showcase (of all the Office products &#8211; Access 2007 got the best UI overhaul)</b></p>
<p>
    These samples are from a Property Purchase and Negotiation Tracking application created for Queensland Water Infrastructure.
</p>		
<p>

		<img border="0" src="Images/Aqua_MainMenu.jpg" width="751" height="843" alt="Aqua Main Menu"><br>
		<strong>Figure: The main menu of one of our first Access 2007 UIs. It looks even better
            than the revamped Access 97 application.</strong></p>
<p>
		<img border="0" src="Images/Aqua_Valuation.jpg" width="870" height="852"><br>
		<b>Figure: Note the Action buttons in the top right hand corner - they are based on the Access 2007 templates</b></p>
<p>
		<img border="0" src="Images/Aqua_PickerForm.jpg" width="687" height="573"><br>
		<b>Figure: This picker form is based on a web-style picker UI such as Hotmail so users have a familiar UI</b></p>
		<p>
		<img border="0" src="Images/Aqua_Agreement.jpg" width="870" height="752"><br>
		<b>Figure: With the use of frames with background colours, we have visually grouped controls</b></p>
		</div>	
		
		
		
		</ol>
		
</asp:content>