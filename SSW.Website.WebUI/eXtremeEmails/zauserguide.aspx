<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>


<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW eXtreme Emails! - Screenshots"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

	<a href="/ssw/eXtremeEmails/">SSW eXtremeEmails</a> >Screenshots<br><br>	
		 <p> 
	      <img src="Images/eXtremeEmailsLogo.gif" alt="eXtremeEmailsLogo"  width="278" height="83"><p>
  <b>Turn your Inbox into a task-tracking system with SSW eXtreme Emails!</b>

      <p>Dont let your Inbox get out of control. More than a bug tracking 
		software for Outlook, SSW eXtreme Emails manage your email effectively. Allocate tasks, set priorities, assign due dates 
        and get Progress Reports without re-entering any data and working in the 
        familiar Microsoft Outlook environment. Written in .NET, this Outlook 
        COM Add-In let&#146;s you take control of your email. </p>
        
        <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
		<tr>
			<td>
				<b>SSW eXtreme Emails! User Guide</b><br>
				1.<a href="#Pre"> Prerequisites<br /></a>
				2.<a href="#EmailuG"> SSW eXtreme Emails! User Guide<br></a>
				3.<a href="#Report"> Reports<br></a>
                4.<a href="#ReportCustomisation"> Report Customisation<br></a>
                5.<a href="#UsingExchangeServer"> Using Exchange Server with SSW eXtreme Emails<br></a>
                6.<a href="#TFSIntegration"> Team Foundation Server (TFS) Integration<br /></a>
				7.<a href="#ToolsOptions"> Tools | Options<br/></a>
			</td>
		</tr>
	</table>
	
	  <SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>
      
             	<h2>SSW eXtreme Emails! User Guide<a name ="EmailuG"></a></h2>
			
			
		  <ol>
          <li>Install SSW eXtreme Emails! on your client machine.</li><li>Open Microsoft Outlook, you will see a new Toolbar appear.</li><li>Click on 'Incident' to create a new incident.</li><p>
          <blockquote>
          <img src="Images/Toolbar.png" alt="eXtreme email toolbar in Outlook" border="1"><br>
          <b><span style = "FONT-SIZE:10pt;">Figure: Create a new incident</b></blockquote>
          <li>The Incident form will appear once the incident button is clicked. It will allow you to set priorities,
           set times to complete an Incident and select the project folder.
          <p>
          <blockquote>
          <img border="0" src="Images/eXtremeEmails.png" alt="Incident"><br>
          <b><span style = "FONT-SIZE:10pt;">Figure: Beginning a new incident</b>
          </blockquote>
          <li>By Selecting the Project tab it will allow you to Allocate the task to a person.<p>
          <blockquote>
         <img border="0" src="Images/eXtremeEmailsSched.png" alt="Incident"><br>
		<b><span style = "FONT-SIZE:10pt;">Figure: Scheduling a new incident</b>
          </blockquote>
         <li>Click 'Save' to attach the incident properties to the 
         email message.<span style = "FONT-SIZE:10pt;"></li><li>On completion the incident will be moved into a sub folder called zsCompleted 
         within the project directory.</li></ol>
         &nbsp;<h2>Developer Notes<a name ="Devnotes"></a></h2>
			<ol>
			<li>
			<p>To create developer notes click 'Add Developer Notes' on the SSW eXtreme Emails! toolbar.</p>
			<blockquote>
			<img border="0" src="Images/DevNotestoolbar.gif" alt="DevNotes in toolbar" width="799" height="81"><br>
			<b><span style = "FONT-SIZE:10pt;">
			Figure: The 'Developer Notes' button on the SSW eXtreme Emails! toolbar
			</b>
            </blockquote>
             </li>
         
			<p>
			
			<li>
			<p>Enter the notes in the developer notes text box that you want to include.</p>
			 
			 <img border="0" src="Images/DevNotes.gif" alt="Developer Notes form" width="540" height="548"><br>
			  <b><span style = "FONT-SIZE:10pt;">
			  Figure: Use the 'Developer Notes' to add additional notes to yourself when an email is not clear
			   </b>
			
			</li>
			<p>
			<li>
			Click 'Apply' button to enter multiple notes continuously and click 'OK' button to Exit after finished.
			</li>
			<p>
			
			<li>
				<p>Sample Developer Notes appended to the email.</p>
				 <img border="0" src="Images/sampleDevNotes.gif" alt="Sample Developer Notes" width="588" height="709"><br>
			  <b><span style = "FONT-SIZE:10pt;">Figure: Sample Developer Notes </b>
			</li>
			
			</ol>
			
         &nbsp;<h2>Reports<a name ="Report"></a></h2>
		 &nbsp;<p>With SSW eXtreme Emails! generating reports has never been easier. 
        To generate a report you simply:</p>
		 <ol>
		 	<li>Click 'Reports' on the SSW eXtreme Emails! toolbar.</li><blockquote>
         <img border="0" src="Images/eeReportToolbar.png" alt="Reports in toolbar"><br>
		 <b><span style = "FONT-SIZE:10pt;">Figure: The 'Reports' button on the SSW eXtreme Emails! toolbar</b>
         </blockquote>
		

		<li>Select the report you would like to generate.</li><blockquote>
         <img border="0" src="Images/eeReportForm.png" alt="Report"><br>
		 <b><span style = "FONT-SIZE:10pt;">Figure: Selecting a report</b>
         </blockquote>
         
         <li>Click 'OK' to generate the report.</li>
         
         
        <h2><a name="ReportCustomisation"></a> Report Customization</h2>
        <p>With SSW eXtreme Emails!, you are not stuck with the reports that SSW 
        provides. </p>
        <p class="MsoNormal">SSW eXtreme Emails allows customization of its 
        built-in reports - they are all stored in the Reports subfolder of the 
        eXtreme Emails program directory. You can click the &quot;Customize Reports&quot; 
        button on the reports form to get there. </p>
        <p class="MsoNormal">
         <img border="0" src="Images/CustomiseReport.png" alt="Customising a report"><br>
		 <b><span style = "FONT-SIZE:10pt;">Figure: Customizing a report</b></p>
		<p class="MsoNormal">The reports are defined in the industry standard 
        transform language XSL. This is human readable, and can be modified with 
        notepad or more advanced XML/XSL utilities such as 
        <a href="/ssw/redirect/XML/AltovaXMLSpy.htm">XML Spy</a>. </p>
        <p class="MsoNormal">There are several standard fields that are in the 
        XML file. These can be used in your customized XSL reports. These fields 
        include:</p>
        <table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border-collapse: collapse; border: medium none">
          <tr>
            <td  valign="top" style="width: 125.75pt; border: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm; background: #D9D9D9">
            <p class="MsoNormal"><b>Field Name</b></td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm; background: #D9D9D9">
            <p class="MsoNormal"><b>Description</b></td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm; background: #D9D9D9">
            <p class="MsoNormal"><b>Data Type</b></td>
          </tr>
          <tr>
            <td  valign="top" style="width: 125.75pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">IncidentID</td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">Incident Unique Identifier</td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">String</td>
          </tr>
          <tr>
            <td  valign="top" style="width: 125.75pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">PNo</td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">Priority Number </td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">Number (1-100). Priority 1 is the highest</td>
          </tr>
          <tr>
            <td  valign="top" style="width: 125.75pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">EstimatedHours</td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">Estimate of How long the Incident will take in 
            hours and minutes</td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">String</td>
          </tr>
          <tr>
            <td  valign="top" style="width: 125.75pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">ActualHours</td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">Actual time the Incident took in hours and 
            minutes</td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">String</td>
          </tr>
          <tr>
            <td  valign="top" style="width: 125.75pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">From</td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">Sender of Email</td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">String</td>
          </tr>
          <tr>
            <td  valign="top" style="width: 125.75pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">Subject</td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">Subject of Outlook Item</td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">String</td>
          </tr>
          <tr>
            <td  valign="top" style="width: 125.75pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">URL</td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">URL to online OWA version of the Incident 
            (properties dont show in OWA though) </td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            <p class="MsoNormal">String</td>
          </tr>
          <tr>
            <td  valign="top" style="width: 125.75pt; border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            Status</td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            The Status of the Incident</td>
            <td width="40%" valign="top" style="width: 125.8pt; border-left: medium none; border-right: 1.0pt solid windowtext; border-top: medium none; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0cm; padding-bottom: 0cm">
            String</td>
          </tr>
        </table>
       <a href="/ssw/eXtremeEmails/Reports/Default.aspx">View sample reports</a>
	    </ol>
              <span style="font-size: 10pt"><span style="font-size: 10pt"><span style="font-size: 10pt">
                  <span style="font-size: 10pt"><span style="font-size: 10pt"><span style="font-size: 10pt">
                      <span style="font-size: 10pt"><span style="font-size: 10pt"><span style="font-size: 10pt">
                          <span style="font-size: 10pt"><span style="font-size: 10pt">
                              
                          </span></span></span></span></span></span></span></span></span></span></span>
              <span style="font-size: 10pt"><span style="font-size: 10pt"><span style="font-size: 10pt">
                  <span style="font-size: 10pt"><span style="font-size: 10pt"><span style="font-size: 10pt">
                      <span style="font-size: 10pt"><span style="font-size: 10pt"><span style="font-size: 10pt">
                          <span style="font-size: 10pt"><span style="font-size: 10pt">
                              
                          </span></span></span></span></span></span></span></span></span></span></span>
              <span style="font-size: 10pt"><span style="font-size: 10pt"><span style="font-size: 10pt">
                  <span style="font-size: 10pt"><span style="font-size: 10pt"><span style="font-size: 10pt">
                      <span style="font-size: 10pt"><span style="font-size: 10pt"><span style="font-size: 10pt">
                          <span style="font-size: 10pt"><span style="font-size: 10pt">
                            
         <br />
         <h2><a name="UsingExchangeServer"></a> Using Exchange Server with SSW eXtreme Emails</h2>
         <p>For operation with Exchange Public folders, we recommend that you have "Publishing Editor"
          permissions on the folders you are dealing with. This is because you potentially need to do
           the following </p>
         <ol>
         <li>
         Edit, Create and Delete Items (because a move includes a read, create and a delete)
         </li>
         <li>
         Create subfolders (as the zsCompleted folder will be created if it does not already exist)</li></ol>                     
         <blockquote>
         <img border="0" src="Images/ExchangeServer.jpg" alt="Exchange Server" width="367" height="459"><br />
         <b><span style = "FONT-SIZE:10pt;">Figure: Required folder permissions for Exchange Public Folders. 
         Right-click on the folder in outlook and click permissions to get this dialog. </b>
         </blockquote> 
         <!--Team Foundation Server (TFS) Integration -->
		 <h2><a name="TFSIntegration"></a> Team Foundation Server (TFS) Integration</h2>
		 <p>With TFS Integration, you can manage your project progress easily by emails.</p>
		 <blockquote>
         <img border="0" src="Images/optionTFS.gif" alt="Integrate with TFS" width="554" height="660"><br />
         <b><span style = "FONT-SIZE:10pt;">Figure: Enable TFS support in your eXtreme Emails</b>
         </blockquote> 
         <blockquote>
         <img border="0" src="Images/IncidentItem.gif" alt="Create a Work Item" width="551" height="579"><br />
         <b><span style = "FONT-SIZE:10pt;">Figure: Create a Work Item when you make an email an incident</b>
         </blockquote> 
         <blockquote>
         <img border="0" src="Images/MyWorkItem.png" alt="Create a Work Item"><br />
         <b><span style = "FONT-SIZE:10pt;">Figure: The new work item you created in TFS</b>
         </blockquote> 		 
		 
		 <h2><a name="ToolsOptions"></a>Tools | Options</h2>
		 <p>With SSW eXtreme Emails, you can easily customize and empower your project management.</p>
		 <blockquote>
			<img border="0" src="Images/optionGeneral.gif" alt="General" width="554" height="660"><br/>
			<b><span style="FONT-SIZE:10pt;">Figure: eXtreme Emails! Settings to Manage Projects 
		</blockquote>
		<blockquote>
			<img border="0" src="Images/optionExchangeServer.gif" alt="ExchangeServer" width="554" height="660"><br/>
			<b><span style="FONT-SIZE:10pt;">Figure: eXtreme Emails! Settings for Microsoft Exchange Server 
		 </blockquote>
		 		<blockquote>
			<img border="0" src="Images/optionTeamSystem.gif" alt="TeamSystem.gif" width="554" height="660"><br/>
			<b><span style="FONT-SIZE:10pt;">Figure: eXtreme Emails! Settings for Integrating with Team Foundation Server (TFS) 
		 </blockquote>
		 		<blockquote>
			<img border="0" src="Images/optionAdvanced.gif" alt="Advanced" width="554" height="660"><br/>
			<b><span style="FONT-SIZE:10pt;">Figure: eXtreme Emails! Settings for Advanced options 
		 </blockquote>
		 		<blockquote>
			<img border="0" src="Images/optionTimer.gif" alt="Timer" width="554" height="660"><br/>
			<b><span style="FONT-SIZE:10pt;">Figure: eXtreme Emails! Settings for Incident Log Timer Opacity 
		 </blockquote>
		 <blockquote>
			<img border="0" src="Images/optionOther.gif" alt="Other" width="554" height="660"><br/>
			<b><span style="FONT-SIZE:10pt;">Figure: eXtreme Emails! Settings for other things like resetting toolbars and settings back to the default
		 </blockquote>
                          </span></span></span></span></span></span></span></span></span></span></span>
       </asp:content>