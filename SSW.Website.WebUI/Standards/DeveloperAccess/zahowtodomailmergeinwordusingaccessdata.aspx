<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW How to do a Mail Merge in Microsoft Word using Access Data"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
<h2> How to do a Mail Merge in Word Using Access Data</h2>
      <br>
      <table width="40%" border="2" cellpadding="2" cellspacing="2" align="right" bordercolor="#ff0000" bgcolor="#ffffff">
        <tr> 
          <td bordercolor="#ffffff" bgcolor="#cccccc" height="87"> 
            <p>This 
              document assumes the use of "Select Clients" which is on the Reports 
              Tab of SSW Time PRO!  
              If you are not a Time PRO! user please read on as the instructions 
              are still usable.</p>
            </td>
        </tr>
      </table>
      <p>Mail merging 
        is a process whereby <b>merge fields</b> interspersed through your standard 
        or <b>boilerplate</b> text are replaced from a data source when printed. 
        This feature allows you to send a one document to many recipients, with 
        the correct details for each. </p>
      <p>How is this 
        done using Microsoft Word and Access?</p>
      <p>It's easy! 
        Just start Word. Select Tools/Mail Merge </p>
      <p align="CENTER"><img src="Images/InvokingMailMergeMenu.gif" alt="Invoking Mail Merge Menu" width=457 height=406 border=0></p>
      <p><b>Figure 
        1: Invoking the Mail Merge Menu</b></p>
      <p>A Wizard 
        called the Mail Merge Helper will appear. The first step is to tell it 
        which document will contain the merge fields.</p>
      <p align="CENTER"><img src="Images/MailMergeHelper.gif" alt="Mail Merge Helper" width=408 height=395></p>
      <p><b>Figure 
        2: The Mail Merge Helper</b></p>
      <p>You can choose 
        to use the currently open Word document or to open another.</p>
      <p align="CENTER"><img src="Images/ChoosingDocument.gif" alt="Choosing Document" width=497 height=406></p>
      <p><b>Figure 
        3: Choosing a document to merge to</b></p>
      <p>If you want 
        to use Access as the source of data for your merge fields, choose the 
        "Open Data Source " option, under the "Get Data" item.</p>
      <p align="CENTER"><img src="Images/OpeningLinktoAccess.gif" alt="Opening Link to Access" width=407 height=394></p>
      <p><b>Figure 
        4: Opening a Link to Access</b></p>
      <p>This will 
        open up a file navigation dialog box, such as shown below. Use this 
        dialog box to point to the correct Access database file which contains 
        the merge field information. For example, if you are using Time PRO! then 
        select C:\Timepro\Ssw97.mdb.</p>
      <p align="CENTER"><img src="Images/SelectingRightAccessDatabase1.gif" alt="Selecting RightAccess Database" width=600 height=350></p>
      <p><b>Figure 
        5: Selecting the right Access database</b></p>
      <p>Since a single 
        database can contain more than one table, a further dialog box appears 
        enabling you to choose which table (or query) you wish to use a source 
        for your merge fields. In this case, the "SelectClient" table is selected.</p>
      <p align="CENTER"><img src="Images/ChoosingATable.gif" alt="Choosing A Table" width=412 height=398></p>
      <p><b>Figure 
        6: Choosing a table from a large database</b></p>
      <p>The merge 
        fields will appear in a temporary toolbar in Word, corresponding to 
        the field names in the "SelectClient" table. click it, and a drop-down 
        selection of merge fields appears. Just select a field and it is inserted 
        into the document.</p>
      <p align="CENTER"><img src="Images/DropDownSelection.gif" alt="Drop Down Selection" width=394 height=408></p>
      <p><b>Figure 
        7: A drop down selection of merge fields to choose from</b></p>
      <p>In this example, 
        the merge fields from "SelectClient" table have been inserted in between 
        the standard text. Once merged, the correct value of each record will 
        be substituted where the merge fields are located.</p>
      <p align="CENTER"><img src="Images/MixingWithBoilerplateText.gif" alt="Mixing With Boiler plate Text" width=600 height=263></p>
      <p><b>Figure 
        8: Mixing your boilerplate text with the merge fields</b></p>
      <p>Now that 
        the document is done, are you ready for the merge? If you don't want to 
        use all the records in the "SelectClient" table then you can either delete 
        unwanted records through the SelectClient form (in Time PRO!) Or you can 
        use the "Query Options" in the Mail Merge Helper.</p>
      <p align="CENTER"><img src="Images/QueryOptions.gif" alt="Query Options" width=407 height=394></p>
      <p><b>Figure 
        9: Mail Merge Helper Query Options</b></p>
      <p>Clicking 
        on "Query Options" brings up a control which lets you choose a part of 
        your table. In this example, the user is limiting the mail merge only 
        to those whose suburb is "Chatswood".</p>
      <p align="CENTER"><img src="Images/RefiningRecords.gif" alt="Refining Records" width=538 height=278 border=0></p>
      <p><b>Figure 
        10: Refining the records which will be merged into the document</b></p>
      <p>The Mail 
        Merge helper will now let you output the result in a variety of ways. 
        You might want to examine the mail merge before you print it. Select "Merge 
        to: New document". This will create a single document containing all the 
        letters that would have been printed had you chosen to. You can look through 
        it to see that no awkward substitutions have taken place.</p>
      <p align="CENTER"><img src="Images/ToDocument.gif" alt="To Document" width=465 height=209 border=0></p>
      <p><b>Figure 
        11: This creates one document containing each merge instance</b></p>
      <p>When you 
        are satisfied, select "Merge to Printer" or "Merge to Email". This will 
        create one document for each instance, using the <b>boilerplate</b> text 
        and subsitituting the correct details in each case.</p>
      <p align="CENTER"><img src="Images/ToPrinter.gif" alt="To Printer" width=465 height=209 border=0></p>
      <p><b>Figure 
        12: Selecting "Merge to Printer" means the printing will print each merge 
        instance as a separate document</b></p>

		</asp:content>