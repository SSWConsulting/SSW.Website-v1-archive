<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW SQL Auditor - Screenshots"  %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

				 <!--
  This first table is the heading above the drop down menu
  -->
		<!--
			This is the main document.
			-->
<a href="/ssw/SQLAuditor/">SSW SQL Auditor</a> > Screenshots<br><br>
<table summary="Formatting Table" border="0" cellspacing="0" cellpadding="0" >
	<tbody>
		<tr>
			<td>
				<img src="Images/SQLAuditorLogo.gif" alt="SSW SQL Auditor" />
				
	<br />
		<table class="clsSSWTableOfContents" cellspacing="0" cellpadding="0" summary="Index" style="width:100%">
			<tr>
				<td>
			
			<b>SSW SQL Auditor Wizard Pages</b><br /><br />
			<a href="#RelationshipsScriptWizard">1. Relationships Wizard</a><br />
			<a href="#PrimaryKeyWizard">2. Primary Key Wizard</a><br />
                    <a href="#ClusteredIndexWizard">3. Clustered Index Wizard</a><br />
                    <a href="#ValidateForeignKeycolumnswithScriptWizard">4. Validate Foreign 
			Key columns Wizard</a><br />
                    <a href="#LastModifiedColumnWizard">5. LastModified column Wizard</a><br />
                    <a href="#TimestampScriptWizard">6. Timestamp Wizard</a><br />
                    <br />
                </td> 
			</tr>

		</table>
                <br />
               
               <a href="/ssw/SQLAuditor/userguide.aspx"><b>Back</b></a> 
               <br />
               <br />
		<a href="UserGuide_Old.aspx"></a>
			<ol>
			<li>
				<h2><a name="RelationshipsScriptWizard"></a>Relationships Wizard</h2>
				<p>This wizard lets you modify relationships constraints on all tables.
				<a href="/ssw/Standards/Rules/RulestoBetterSQLServerdatabases.aspx#IncludeONUPDATECASCADE">
						Details...</a>
				</p>

				<img border="0" src="Images/V9-77_SQLAuditorRelationships1.gif" alt="Relationships" width="658" height="549"><br>
				<b>Figure: Choose your script creation options </b><br>
            <br />
			</li>
		 
		<a name="RelationshipOptions"></a>
                <ul>
                    <li>
				"Enforce Relationship For Insert And Update" - Select this means someone can't add or change records 
				to a related table if there is no associated record in the primary table.</li></ul>
                <ul>
                    <li>
                "Check Existing Data on Creation" - Select this option to check existing data when you create a relationship <br />
                if the foreign key constraint should apply to existing data as well as to new data.</li></ul>
               <ul> 
                    <li>
                "Cascade Update Related Fields" - Specifies that if an attempt is made to update a key value in a row, where <br />
                the key value is referenced by foreign keys in existing rows in other tables, all the values that make up the <br />
                foreign key are also updated to the new value specified for the key.</li></ul>
                
                    <ul><li>
                "Exclude Relationship from Replication" - Select this option will add a NOT FOR REPLICATION clause when creating relationship. 
                <a href="/ssw/Standards/Rules/RulestoBetterSQLServerdatabases.aspx#RelationshipsReplication">
						Details...</a> </li>
						</ul>
						<ul>
                    <li>
                "Cascade Delete Realated Fields" - Specifies that if an attempt is made to delete a row with a key referenced <br />
                by foreign keys in existing rows in other tables, all rows that contain those foreign keys are also deleted. <br />This 
                could be very dangerouse.
                <br /></li>
                </ul>

			<li>
				<h2><a name="PrimaryKeyWizard"></a>Primary Key Wizard</h2>
				<p>This Wizard can help to optimize SQL Server performance by analyzing the data 
									in a table and recommending candidate columns for a Primary Key. It will 
									generate a SQL script to add or change the Primary Key for the selected 
									column. <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#PrimaryKey">
										Details...</a></p>

				<img border="0" src="Images/V9-77_PrimaryKey1.gif" alt="Primary Key" width="658" height="549"><br>
				<b>Figure: Select the table to add Primary Key</b><br><br>

				<img border="0" src="Images/V9-77_PrimaryKey2.gif" alt="Primary Key" width="658" height="549"><br>
				<b>Figure: Pick the candidate column to create Primary Key  <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#KeyTypes">
						   How to choose an appropriate Primary Key?</a></b><br><br>

				<img border="0" src="Images/V9-77_PrimaryKey3.gif" alt="Primary Key" width="658" height="549"><br>
					<b>Figure: Review the options for creating Primary Key
</b><br />
					<br>

			</li>

			<li>
				<h2><a name="ClusteredIndexWizard"></a>Clustered Index Wizard</h2>
				<p>
					This Wizard can help to optimize SQL Server performance by analyzing the data 
					in a table and recommending candidate columns for a Clustered Index. It will 
					generate a SQL script to add or change the Clustered Index for the selected 
					column. <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#Clustered">
						Details...</a></p>
				<img border="0" src="Images/V9-77_ClusteredIndex1.gif" alt="Clustered Index" width="658" height="549"><br>
					<b>Figure: Select table to add Clustered Index</b><br><br>
				<img border="0" src="Images/V9-77_ClusteredIndex2.gif" alt="Clustered Index" width="658" height="549"><br>
					<b>Figure:  Pick candidate columns to create Clustered Index <a href="/ssw/KB/KB.aspx?KBID=Q833699">
						  More info about Clustered Index</a></b><br><br>
				<img border="0" src="Images/V9-77_ClusteredIndex3.gif" alt="Clustered Index" width="658" height="549"><br>
					<b>Figure:  Review the options for creating Clustered Index</b><br><br>
			</li>	

			<li>
				<h2><a name="ValidateForeignKeycolumnswithScriptWizard"></a>Validate Foreign Key 
					columns Wizard</h2>
				<p>Many SQL Server database programmers use standard naming conventions such as ID 
					in the column name to indicate a relationship with another table. i.e. 
					ClientID. This wizard identifies columns ending with 'ID' which are missing 
					FOREIGN KEY constraints and suggests relationships, where possible. 
					<a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#ReferentialIntegrity">
										Details...</a> </p>
					<img border="0" src="Images/V9-77_ForeignKey1.gif" alt="Foreign Key" width="658" height="549"><br>
					<b>Figure: The Foreign Key Relationship Wizard </b><br><br>
					<img border="0" src="Images/V9-77_ForeignKey2.gif" alt="Foreign Key" width="658" height="549"><br>
					<b>Figure: Choose Foreign Key columns </b><br><br>

				<img border="0" src="Images/V9-77_SQLAuditorRelationships1.gif" alt="Relationships" width="658" height="549"><br>
				<b>Figure:  Choose script creation options   <a href="#RelationshipOptions">More info...</a></b><br><br>

			</li>
			
						<li>
				<h2><a name="LastModifiedColumnWizard"></a>LastModified Column Wizard</h2>
				<p>Every table should have a LastModified column to record the last modified time of each row,
				 our script will add a trigger with the columns to record the time. <a href="/ssw/Standards/Rules/RulestoBetterSQLServerdatabases.aspx#LastModified">
										Details...</a> </p>
					<img border="0" src="Images/V9-77_SQLAuditorLastModified1.gif" alt="LastModifiedColumnWizard1" width="658" height="549"><br>
					<b>Figure: Choose the tables that you want to add LastModified column</b><br>
                     <p>This will add the column into your tables as well as create a trigger to update this column automatically.</p> 
					<br />
			</li>
			
			<li>
				<h2><a name="TimestampScriptWizard"></a>Timestamp Wizard</h2>
				<p>The Timestamp Wizard will add Timestamp columns to any or all tables that do 
					not have a Timestamp column. <a href="/ssw/Standards/Rules/RulestoBetterSQLServerdatabases.aspx#Timestamp">
										Details...</a></p>
					<img border="0" src="Images/V9-77_Timestamp1.gif" alt="Timestamp" width="658" height="549"><br>
					<b>Figure: Choose the tables that you want to add Timestamp column</b><br><br>
			</li>
                
               </ol> 
		</td>
	</tr>
</tbody>
</table>

		</asp:content>