<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="How To Setup Concurrency for the Web Site"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
<p>

	<a/>Just like in an Access database, it is important to setup Concurrency on 
    SQL Server tables and add code to our web sites so that they handle 
    Concurrency. Usually this would be done with a Timestamp field. But we have 
    decided to use an integer field called Concurrency that would be incremented 
    whenever a record is updated.</p>
         
	<a/>
         
	<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
		<tr> 
  			<td>
  				<b>Steps for Setting up Concurrency for the Web Site</b><br> 
				<a href="#AddConcurrencyField">1.</a> Add the Concurrency field to 
                the Table<br>
				<a href="#UpdateSelectStoredProcedure">2.</a> Update the Select Stored 
                Procedure<br>
			<!-- this page was incomplete.. 
				<a href="#UpdateUpdateStoredProcedure">3.</a> Update the Update Stored 
                Procedure<br>
				<a href="#AddCodeToWebSite">4.</a> Add Code to the Web Site to handle 
                this <br>
                -->
			</td>
		</tr>
	</table>
			
<ol>
<li>
<h2><a name="AddConcurrencyField"></a>Add the Concurrency field to the Table</h2>
</li>

<p>
	First we need to add the 'Concurrency' field to the table we want to update. 
    More often than not, this table will be replicated and so we will need to 
    use the replication wizard to add the new field to the table. To do this:</p>
		
<ol>
<li>Select a publication and right-click on it and select 'Properties'.</li>
<li>Select the 'Filter Columns' Tab, select the table to modify and click the 
'Add Column to Table...' button.<br>
<img border="0" src="images/PublicationProperties.gif" alt="Publication properties" width="521" height="475">&nbsp; 
</li>
<li>Specify the field name as 'Concurrency'. You will need to set a default of 0 
and the Data Type to integer. You can delete the rest of the script. Click OK to 
add the field.<br><img border="0" src="images/AddColumn.gif" alt="Add column" width="444" height="432"></li>		
</ol>

<li>
<h2><a name="UpdateSelectStoredProcedure"></a>Update the Select Stored Procedure</h2>
</li>

<p>
	Next we need to update the Select Stored Procedure to retrieve the 
    'Concurrency' field we created. E.g. the procedure would change to (See 
    bold):</p>
 		
<p>
	<i>Create Stored Procedure [dbo].[ClientContactSelect]<br><br>
 		
	@ContactID int<br><br>
 		
	AS<br><br>
 		
	SELECT<br>
 		
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ClientContact.FirstName,<br>
 		
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ClientContact.Surname<b>,</b></i><b><i><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ClientContact.Concurrency</i></b><i><br>
 		
	FROM<br>
 		
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ClientContact<br>
 		
	WHERE<br>
 		
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ClientContact.ContactID = @ContactID</i></p>
 		
 		
</ol>
        </a>
		<p><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GO</i></p>
        <p>&nbsp;</p>
		</asp:content>