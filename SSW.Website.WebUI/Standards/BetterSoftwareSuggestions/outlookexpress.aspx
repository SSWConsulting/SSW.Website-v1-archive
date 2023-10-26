<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft Outlook Express Suggestions"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				<asp:label id="lblWelcome" runat="server"></asp:label><p>


<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" align="right" style="{width:100%;}">
	<tr> 
  		<td> 
			1. <A href="#StoreLocation">Storing all settings in the Store Location directory</a><br>
			2. <A href="#ContactInfomation">Adding "Created By" and "Updated By" fields for contact information</a><br>
			
			<br>
		</td>
	</tr>
</table>






	<ol>
	<li>

		<a name="StoreLocation"></a>
		<h2>Storing all settings in the Store Location directory</h2>	
	</li>
		<p>
		Outlook Express is aimed at home users. The file & settings transfer wizard allows users to transfer addresses 
		between computers.  However, it is very difficult when changing computers to keep all your mail and newsgroups from 
		your old computer.
		</p>
		<p>
		The current 'Files and settings transfer wizard' is inadequate in transfering mail, news groups and setting between machines.
		</p>
		<p>
		<img src="Images/FilesandSettingWizard.gif" alt="Files and Settings Wizard" width="504" height="393"><br> <b>Figures: Files and Settings Transfer Wizard</b>
		</p>
		<p>
		
		<p><b>Suggestion: </b>All settings be kept in the Store Location directory. This would make moving to another PC as easy as 
    	clicking on the "Store Folder" button.    
    	</p>

		<img src="Images/StoreLocation.gif" alt="Store location" width="580" height="613"><br><br><b>Example: Store Location Folder</b>

		<p>For more information on this topic see your addition article "When changing computers, how can I 
    	keep all my mail and newsgroups from my old computer?"<br>
    	<a href="/ssw/KB/KB.aspx?KBID=Q557363">Article "When changing computers, how can I 
    	keep all my mail and newsgroups from my old computer?"</a>
		
		</p>

		
	<li>

		<a name="ContactInfomation"></a>
		<h2>Adding "Created By" and "Updated By" fields for contact information</h2>	
	</li>
		<p>I want to know who created this contact and who updated the information for this contact, it should have "Created By" and "Updated By" fields.</p>
		<p>
		<img src="Images/outlookcontact.jpg" alt="Contact information" width="663" height="520"><br> <b>Figures: Contact information</b>
		</p>
        <!--SSW Code Auditor - Ignore next line(HTML)-->
		<p><b>Suggestion: Adding "Created By" and "Updated By" fields for contact information, and automatic save the logon user to the fields after a contact information was created or updated.</b>    
    	</p>
		We have a rule for checking your database about this, please see <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#StandardTableFields">Do you have standard Tables and Columns?</a>
		</p>

	</ol>
		
		</asp:content>