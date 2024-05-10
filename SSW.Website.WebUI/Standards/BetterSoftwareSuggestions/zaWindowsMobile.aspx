<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft Windows Mobile Suggestions"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	    <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <asp:label id="lblWelcome" runat="server"></asp:label>
    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" align="right" style="{width:100%;}">
	    <tr> 
  		    <td> 
			    <ol>				
				    <li><a href="#SMSSupport">Text Characters in mobile phone number prevent me from sending SMS</a></li>
				    <li><a href="#SyncHistory">Sync call history to SQL Database</a></li>
				    <li><a href="#SMSTaskNotes">SMS Task/Notes from Windows Mobile</a></li>
				    <li><a href="#BeepUnreadSMS">Beep for unread SMS</a></li>
				    <li><a href="#TagContact">Tag contact</a></li>
				    <li><a href="#AllowKeyboard">Allow keyboard to do anything</a></li>
				    <li><a href="#XMLAttachment">Attach .xml files to SMS</a></li>
				    <li><a href="#GPSRecorder">Record track via GPS</a></li>
				    <li><a href="#SQLXcopy">SQL Mobile - Xcopy .sdf please</a></li>
			    </ol>			
			    <br>
		    </td>
	    </tr>
    </table>
	<ol>	
	    <li>
	        <a name="SMSSupport"></a><H2>Text Characters in mobile phone number prevent me from sending SMS</h2>
		    <p>
		    In Windows Mobile 5 when you try sending an SMS change the validation message from <br/>
     
		    "You cannot send this message as both an SMS and email message. Please remove either the SMS or the email address and send again."<br/>

		    To<br/>

		    "You cannot send this message as both an SMS and email message or you have text characters in the mobile address field. Please remove the field showing '04 1985 1995 (Adam)' and send again."

		    <br/>PS: This might take you a long time to work out because you can successfully call someone but not send an SMS message. Go figure!
		    <br/>This is related to a suggestion for Outlook - <a href="outlook.aspx#SMSSupport">Text Characters in mobile phone number prevent me from sending SMS </a>
		    </p>
	    </li>
	    <li>
	        <a name="SyncHistory"></a><H2>Sync call history to SQL Database</h2>
		    <p>
		    Windows Mobile 6 should have an option to allow sync all phone call history to a centralized SQL database, to enable a corporation to trace and 
		    report on the calls that employees make to and from their customers.
		    </p>
	    </li>
	    <li>
	        <a name="SMSTaskNotes"></a><H2>SMS Task/Notes from Windows Mobile</h2>
		    <p>
		    Windows Mobile 6 should have a functionality to allow send task or notes. For example, if I keep a shopping list in my task and 
		    I should be able to SMS this to my wife.
		    </p>
	    </li>
	    <li>
	        <a name="BeepUnreadSMS"></a><H2>Beep for unread SMS</h2>
		    <p>
		    Windows Mobile 6 should have a beep every minutes or sometime when I have a unread SMS. I always miss some SMS because I didn't hear the alert initially. 
		    </p>
	    </li>
	    <li>
	        <a name="TagContact"></a><H2>Tag contact</h2>
		    <p>
		    I want to easily to make phone call to some customers when I have free time. So I want to tag a contact to call in Outlook of Windows Mobile 6.
		    You can flag an email and you should be able to flag a contact.
		    </p>
		    <dl class="image">
                <dt>
                    <img border="0" src="Images/TagContact.gif" />
                </dt>
                <dd>Figure: Flag an email</dd>
            </dl>
	    </li>
	    <li>
	        <a name="AllowKeyboard"></a><H2>Allow keyboard to do anything</h2>
		    <p>
		    Sometime my touch screen doesn't work, then I can't do anything. Windows Mobile 6 should allow everything to be done in keyboard, like the drop down next to the name field in the contact. 
		    </p>	    
	    </li>
	    <li>
	        <a name="XMLAttachment"></a><H2>Attach .xml files to SMS</h2>
		    <p>
		    Nowadays, we can't attach .xml files to SMS. We think it would improve application if we could attach .xml files to SMS. For example, mobile check-in already exists in some airports. 
		    If the 2D barcode is in xml format, the size of SMS will be smaller. Then the efficiency of receiving xml barcode will be much better than receiving image barcode.
		    </p>	    
	    </li>
	    <li>
	        <a name="GPSRecorder"></a><H2>Record track via GPS</h2>
		    <p>
		    As a standard device, GPS is now available for mobile phone. But there is no useful application for GPS embedded in Windows Mobile. It must be convinent for travellers to supply these functionalities:
		        <ul>
		            <li>Record when and where I go.</li>
		            <li>Draw my travel routes in Google Earth.</li>
		        </ul> 
		    </p>	    
	    </li>
	    
	    <li>
	        <a name="SQLXcopy"></a><H2>SQL Mobile - Xcopy .sdf please</h2>
		    <p>
		      I want to be able to create the .sdf file using SQL Management Studio and then xcopy the file to the device. <br />
		      Currently the only way to move data is to use SQL Replication or the object model (RDA). <br /> 
		    </p>	    
	    </li>
	</ol>
    <h2>Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />    
	    </p>
</asp:content>