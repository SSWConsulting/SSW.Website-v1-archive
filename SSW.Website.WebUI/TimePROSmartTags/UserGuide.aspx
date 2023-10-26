<%@ Page  Language="C#" MasterPageFile="~/Masters/RavenSubpage.master" Title="TimePRO Smart Tags - User Guide"  %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
        <p>This product is no longer supported. </p>
    </div>

<div id=contentContainer>
<img src="Images/TimePROSmartTagsLogo.gif" alt="SSW TimePRO Smart Tags" width="301" height="83">  
<p>
	<b>Connect Office XP and your database with SSW Time PRO! Smart Tags</b>
</p>
<p>
	Office XP offers Smart Tag functionality. Smart Tags recognise text in your Word/Excel or Outlook (with Word as your editor)
	and then offer a range of possible actions and commands. With SSW Time PRO! Smart Tags you can access your corporate
	database from Microsoft Office, and send letters, faxes or emails based on existing templates.
</p>
<p>
	This user guide is designed at helping you getting started and also provide 
    a few quick tutorials on how to use Time PRO! Smart Tags.</p>
<p>
		<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
		<tr>
			<td>
			<p>
				<b>SSW Time PRO! Smart Tags</b><br>
					<a href="#Pre">1.</a> Prerequisites<br />
				<a href="#GettingStarted">2.</a> Getting Started<br>
                <a href="#CheckInstallation">3.</a> Check installation<br>
				<a href="#Configuring">4.</a> Configuring Time PRO! Smart Tags<br>
				<a href="#InsertingTemplates">5.</a> Inserting Templates<br>
				<a href="#InsertingContactData">6.</a> Inserting Contact Data<br>
				<a href="#InsertingTemplatesWithContactData">7.</a> Inserting Templates with Contact Data (Mail Merge)
			</p>
			</td>
		</tr>
	</table>
</p>
</div> 

<SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>
<h2><a name="GettingStarted"></a>Getting Started</h2>
		<p>First you will need to install Time PRO! Smart Tags. Before you do 
        this, make sure that all office applications are closed.</p>
        <p>Once you have installed the application, open up Microsoft Word and 
        the Time PRO! Smart Tags screen will be displayed. </p>
<h2><a name="CheckInstallation"></a>Check Installation</h2>

<p>
	Open Word – Tools  - Autocorrect. Click on the 'Smart Tags' tab. If it is not there, then 
	the instance of Word many not have been closed. Restart your PC.
</p>
<table>
<tr>
<td>
<img src="Images/AutoCorrectOptions.gif" alt="Auto Correct Options" width="421" height="482">
</td>
</tr>
<tr>
<td>
<b>Figure:  Make sure the Smart Tag recogniser is "On"</b>
</td>
</tr>
</table>

<h2><a name="Configuring"></a>Configuring Time PRO! Smart Tags</h2>
        
	    <p>Now that we have installed Time PRO! Smart Tags, it is time to 
        configure the application. Type 'SSWDiary' in Microsoft Word and hover 
        the mouse over the word and select the 'Options...' menu item.</p>
        <p>
        <img border="0" src="Images/SmartTagMenuOptions.gif" alt="Smart Tag Menu Options" width="227" height="143"><br />
            <b>Figure: Configure the application</b></p>
        <p>
            &nbsp;</p>
        <p>
        <img border="0" src="Images/OptionsGeneral.gif" alt="Options General" width="592" height="408"><br />
            <b>Figure: Click the UDL button and specify the connection to your database</b></p>
        <p>At this point, most of the fields on the Customer, Contacts and 
        Letters will be filled in if you are using the sample database or if 
        your database structure is similar to Northwind. Otherwise you will need 
        to specify which field in your tables gets mapped to each field used by 
        Time PRO! Smart Tags.</p>
        <p>
        <img border="0" src="Images/OptionsCustomer.gif" alt="Options Customer" width="592" height="408"><br />
            <b>Figure: specify which field in your tables gets mapped to each field (this should
            be done automatically)</b></p>
        <p>Here we have configured the Customer table to be 'Customers'. The 
        Customer ID field has been mapped to 'CustomerID' and the Company Name 
        field has been mapped to 'CompanyName'. Now proceed to go through each 
        Tab and make sure you have specified the tables and fields.</p>
        <p>On the Employee tab, you can select a Employee name (Recommended as 
        this Employee name will be used with the Templates).</p>
        <p>
        <img border="0" src="Images/OptionsEmployee.gif" alt="Options Employee" width="592" height="409"></p>
        <p>
            <b>Figure: On the Employee tab, you can select a Employee name (Recommended)</b></p>
    <p>
        Once you have configured everything click on the OK button to store 
        the settings.</p>

<a name="InsertingTemplates"></a><h2>Inserting Templates</h2>	
	
		<p>Type 'SSWDiary' and hover over the Smart Tag (purple dotted line).</p>
        <p>
        <img border="0" src="Images/SmartTagMenuInsertTemplate.gif" alt="Smart Tag Menu Insert Template" width="230" height="145"><br />
            <strong>Figure: Select the 'Insert Diary Template...' option.</strong></p>

        <p>
        <img border="0" src="Images/InsertTemplate.gif" alt="Insert Template" width="560" height="440"><br />
            <strong>Figure: Select the template you want to insert</strong></p>

        <p>Click the 'Insert' button. If you had selected the Company Profile 
        template in the sample database you would get the following letter 
        inserted into your Word document.</p>

		<table class="clsSSWTable">
		<tr>
		<td>
          <p >
          Dear «FirstName»</p>
          <p >
          Good talking to you. SSW 
          specialises in delivering efficient, cost effective solutions for your 
          database or Internet requirements. Our ability to integrate these 
          functions together will help «CoName» streamline operations, while 
          making the most of opportunities presented by the ''on-line'' world.
          </p>
          <p >
          Please find SSW's Company Profile 
          at <a href="/ssw/Company/AboutUs.aspx">http://www.ssw.com.au/ssw/Company/AboutUs.aspx</a>
          </p>
          <p >
          If you would like to discuss any aspect of our 
          services, please do not hesitate to contact me.</p>
          <p >
          Many thanks<br><<EmpNam>><br>«EmpEmail»
          </td>
          </tr>
          </table>



        <p>Congratulations! Now you know an easy way to get to your standard 
        letters.</p>

<h2><a name="InsertingContactData"></a>Inserting Contact Data</h2>


        <p>Inserting a template is pretty good, but the true 
        power of SSW Time PRO! Smart Tags is its ability to recognize contacts 
        from your database by specifying either:</p>
        <ul>
          <li>Customer ID</li><li>Company Name</li><li>Contact Name (either First Name, Surname or both)</li></ul>
        <p>So in this tutorial we are going to retrieve customer information on 
        the Customer ID BOLID.</p>
        <p>Type '&lt;BOLID&gt;'.</p>
        <p>Note: you will need to enclose 'BOLID' in '&lt;&gt;' for 
        Time PRO! Smart Tags to recognize the word.</p>
        <p>
        <img border="0" src="Images/SmartTagMenuPostalAddress.gif" alt="Smart Tag Menu Postal Address" width="230" height="330"><br />
            <strong>Figure: Hover over the Smart Tag (purple dotted line) and 
        select the 'Postal Address' option</strong></p>
        <p style="page-break-after: avoid">
        &nbsp;And you will get this:</p>
        <div style="border: 1.5pt solid windowtext; margin-left: 18.0pt; margin-right: 0cm; padding-left: 4.0pt; padding-right: 4.0pt; padding-top: 1.0pt; padding-bottom: 1.0pt; background: #E6E6E6; width:202; height:78">
          C/ Araquil, 67<br>Madrid<br>28023<br>Spain</div>
        <p>Let's try something else. </p>
        <p>
        <img border="0" src="Images/SmartTagMenuSendEmail.gif" alt="Smart Tag Menu Send Email" width="229" height="307"><br />
            <strong>Figure: Select the 'Send Email' option.</strong></p>
        <p>
        <img border="0" src="Images/EmailClient.gif" alt="Email client" width="326" height="328">&nbsp;</p>
    <p>
        <strong>Figure: Your email Client will open with the Contact's email address in 
        the 'TO' property.</strong></p>
        <p class="MsoNormal">Congratulations! Now you know an 
        easy way to get to any information about a client.</p>

<h2>
	<a name="InsertingTemplatesWithContactData"></a>Inserting Templates with Contact Data (Mail Merge)</h2>


        <p>Now we are going to show a combination of the first two tutorials.</p>
        <p>Type '&lt;BOLID&gt;' and hover over the smart tag (the purple dotted line).</p>
        <p>
        <img border="0" src="Images/SmartTagMenuInsertTemplateAll.gif" alt="Smart Tag menu Insert template All" width="231" height="309"><br />
            <strong>Figure: Select the 'Insert Diary Template...' option</strong></p>
        <p>
        <img border="0" src="Images/SelectCustomer.gif" alt="Select Customer" width="560" height="440">&nbsp;</p>
    <p>
        <strong>Figure: This will display the Select Customer screen with the only contact 
        for Customer ID 'BOLID' selected</strong></p>
    <p>
        Click Next to continue.</p>
        <p>
            &nbsp;</p>
        <p>
        <img border="0" src="Images/InsertTemplateCompanyProfile.gif" alt="Insert Template Company Profile" width="560" height="440"><br />
            <strong>Figure: Select the Company Profile template then click Insert to insert the
                text</strong></p>
        
        	<table class="clsSSWTable">
        	<tr>
        	<td>
          Dear Martín Sommer
          <p>
          Good talking to you. SSW specialises 
          in delivering efficient, cost effective solutions for your database or 
          Internet requirements. Our ability to integrate these functions 
          together will help Bolido Comidas preparadas streamline operations, 
          while making the most of opportunities presented by the ''on-line'' 
          world. 
          <p>
          Please find SSW's Company Profile at 
          <a href="/ssw/Company/AboutUs.aspx">http://www.ssw.com.au/ssw/Company/AboutUs.aspx</a></p>
          <p>
          If you would like to discuss any aspect of our 
          services, please do not hesitate to contact me.</p>
          <p>
        
          Many thanks<br>Nancy Davolio<br>NancyDavolio@Northw*nd.com (Note: Please change "*" in "w*n" to a "i")
          </td>
          </tr>
          </table>
        <p>Congratulations, now you know an 
        easy way to enter your standard letters, complete with mail merge data.</p>
</asp:content>