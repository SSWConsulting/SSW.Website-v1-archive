<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Data Renovator - Screenshots"  %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

				

		
<a href="/ssw/DataRenovator/">SSW DataRenovator</a> > Screenshots<br><br>
<p><img src="Images/Datarenovatorlogo.gif" alt="Data Renovator Logo" width="237" height="83"></p>
<b>Compare and update Access database back-ends with SSW Data Renovator</b>
	<p>	
	Welcome to the 'SSW Data Renovator' User Guide. This help facility is 
	designed
	to let you quickly and easily start using 'SSW Data Renovator'.<p>With 'SSW Data Renovator' you can:
								<ol>
									<li>
									Clear all data out of the database - ready to give to your new client.
									<li>
										Compare the back end structure of two databases and print reports.
										<ul>
											<li>
											find the tables to add or delete in the old database.
											<li>
											create, delete or modify relationships.
											<li>
												create or delete indexes.<br>
												(then make the changes manually in Access)<br>
											</li>
										</ul>
									<li>
									If you don't like doing things manually then use the 'Automatic Data Upgrade' 
									option. This uses the clear and copy method ie. it clears all data out of the 
									master and then copies all data from the old structure.
									<li>
										For remote deployment have SSW Data Renovator create a table with all 
										structural changes in the 'SSW Data PRO!' (97 &amp; 2000) format and then use 
										'SSW Data PRO! (97 &amp; 2000)' for automatic upgrading of clients old 
										databases.</li></ol>
			
	<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:80%}">
		<tr>
			<td>
				<b>SSW Data Renovator User Guide</b><br>
					<a href="#Pre">1.</a> Prerequisites<br />
				<a href="#Howitworks">2.</a> How it works<br>
				<a href="#GettingStarted">3.</a> Getting started<br>
				<a href="#Firsttimeuse">4.</a> First time use<br>
				<a href="#Tutorial">5.</a>  Tutorial<br>
				<a href="#NewProject">6.</a> New Project<br>
				<a href="#MainMenu">7.</a> Main Menu<br>
				<a href="#SampleData">8.</a> Sample Data<br>
				<a href="#ClearData">9.</a> Clear data<br>
				<a href="#CompareStructure">10.</a> Compare Structure<br>
				<a href="#DbStructure">11.</a> Database Structure<br>
				<a href="#ChangeRelationship">12.</a> Change Relationship<br>
				<a href="#ChangeIndex">13.</a> Change Index<br>
				<a href="#CountRecords">14.</a> Count Records<br>
				<a href="#DataPro">15.</a> Data PRO! Format<br>
				<a href="#AutoUpgrade">16.</a> Automatic Upgrade<br>
			</td>
		</tr>
	</table>
<ol>
<li>	<SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>
</li>

	<li>
		<h2><a name="Howitworks"></a>How it works</h2></li>
		<p>SSW Data Renovator works on two databases that have similar 
					structure.
			<p>Data Renovator can automatically clear data from the new 
					version. This is useful when you are about to give a client a new version of 
					your application and you want the data mdb file to be blank. To clear data, it 
					analyzes database relationships and deletes the records in the appropriate 
					order. 
			<p>Between two databases 'SSW Data Renovator' compares structure 
					(asks a few questions about the deleted tables and fields - as these may be 
					renames) and generates reports. These reports indicate what operations (i.e. 
					add, delete or rename) need to be performed on the old database structure, so 
					they can use the new front end. 
			<p> For remote 
						deployment upgrades, the above information 
					can also be converted to a table that can be used with 'SSW Data PRO!'. ie. 
					when the data upgrade is to be done at the client's site. 
			<p>The most popular option is the 'Automatic Data Upgrade'. It can 
					clear one database (the master copy) and&nbsp;copy the data from the second 
					database (the client's data) into the master database. 

	<li>
		<h2><a name="GettingStarted"></a>Getting Started</h2></li>

		<p>After installing 'SSW Data Renovator', it will create an icon on 
				your start menu. Click on "Start", select "Programs" and look for the 'SSW Data 
				Renovator' group. Click on the 'SSW Data Renovator' icon and the application 
				will start. 
		<p><img alt="Starting SSW DataRenovator" src="Images/imgGettingStarted.gif" border="2" width="455" height="94"><br />
            <strong>Figure: SSW Data Renovator options appear in your start menu once installed</strong></p>
	
	
				
	<li>
		<h2><a name="Firsttimeuse"></a>First time use</h2></li>
		<p>
			When 'SSW Data Renovator' is 
				installed NorthwindDATA(97/2000)_Ver1.mdb (Old DataVersion) and 
				NorthwindDATA(97/2000)_Ver2.mdb are added to the 'SSW Data Renovator' sample 
				folder on the C: drive.... C:\DataPRORenovator(97/2000)\Sample (drive letter 
				will be different depending upon where 'SSW Data Renovator' is installed).
		<p>This user guide uses the above 
				sample files 
		</p>
		<p>The 'Select the Project' screen 
				appears when the application starts. This screen has an existing project called 
				'Northwind'. You can use this project for practicing.
		</p>
		<p>&nbsp;
			<table border="0" bgcolor="#CCCCCC" width ="80%">
				<tr>
					<td height="67">
						<ol>
							
								<li>
									Choose 
										'Northwind' In Projects window.
								<li>
									Then make sure 
										the Master and Old database path is valid. If not choose the databases using 
										the browse button. Read above for which databases to select.
								<li>
									When you have 
										completed these steps, click on "Next".
							
						</ol>
					</td>
				</tr>
			</table>
			
			<p><br>
			<p><img src="Images/ImgFirstTimeUse.gif" alt="Using SSW DataRenovator for the first time" border="2" width="600" height="434"><br />
                <strong>Figure: Set up the Northwind database for testing</strong></p>
						
	<li><a name="Tutorial"></a><h2>Tutorial</h2></li>		
			
			<p>
			Now we will guide you through the use of 'SSW Data 
				Renovator', using a step by step tutorial.<br>
			
				<br>
			
		<p>
			<table border="0" width="80%" bgcolor="#CCCCCC" bordercolor="#FFFFFF" bordercolordark="#000000">
				<tr>
					<td height="43">
						<p><b>Example</b></p>
						<p>Microsoft purchased your database last year. Since then 
								you have made a new version of your application (front end), in addition you 
								have also made structural changes to your back end. Now they want the latest 
								version of the database. To do this you will need to update their back end 
								first. 
						</p>
						<p>In the following examples we will explore how you can do 
								this job painlessly by using 'SSW Data Renovator'.</p>
						<p><b>Important </b>
						</p>
						<p>The following the steps in the 
								tutorial example will modify the sample database NorthwindDATA2000_Ver2.mdb 
								(and possibly NorthwindDATA2000_Ver1.mdb). 
						<p>Please make a backup of:
							<ul>
								<li>
									NorthwindDATA2000_Ver1.mdb to 
										NorthwindDATA2000BACKUP_Ver1.mdb and
								</li>
								<li>
									NorthwindDATA2000_Ver2.mdb to 
										NorthwindDATA2000BACKUP_Ver2.mdb.
								</li>
							</ul>
						<p>Now you are ready to continue the 
								tutorial on the original *.mdbs.
					</td>
				</tr>
			</table>
		<p>It is assumed that you have 
				installed 'SSW Data Renovator' 
				and will toggle between the tutorial and utility when following instructions.</p>
		<p>It is strongly recommended that you follow all step by 
				step instructions to reduce learning time.
		</p>
													
	
	<li>
		<h2><a name="NewProject"></a>New Project</h2></li>
	
<p>
		You can create a new project by clicking the 'Add' 
			button on the 'Select the Project' screen.
	<p>The 'New Project' screen will appear after you click&nbsp; 'Add'.
			<br>
		
			<p>	<p><img src="Images/imgNewProject.gif" alt="New project" border="2" width="600" height="433"><br />
                <strong>Figure: Create a new project </strong>
                <br>
			</p>
	
	<li>
		<h2><a name="MainMenu"></a>Main Menu</h2></li>
		
		<p>After you have created or selected a project 'Main Menu' 
				screen shows. This screen displays the main options available with 'SSW Data 
				Renovaor'. 
		<p>On this screen when you select an option it displays 
				more information on the method at the bottom. 
		<p><img src="Images/Wizard.gif" alt="Main Menu" border="2" width="600" height="438"><br />
            <strong>Figure: Select one of the available options to see its description</strong></p>
		
		
	<li>
		<h2><a name="SampleData"></a>Sample Data</h2></li>
		
<table>
	<tr>
		<td valign="top">
		<p align="left"><b>Append Sample Data</b>
		<p align="left">'The 'Append Sample Data' option is located 
				on the 'Data to Delete' screen. After deleting all data from a Database SSW 
				Data Renovator can append data from Sample tables found in the database. 
		<p align="left">For example the Categories Table in the 
				Northwind sample database contains a list of product categories. If this table 
				is empty and referential integrity is enabled then products will not be able to 
				be added without having a matching product category.
		<p align="left">SSW Data Renovator allows Sample tables to 
				be stored in a database and appended after all the data is removed from the 
				database. This means that lookup tables can be populated with basic information 
				before distribution to new sites.
		<p align="left"><b>Defining Sample Tables</b>
		<p align="left">To define a sample table, create an exact 
				copy of the table with the same table name plus 'Sample' on the end of the 
				name. i.e. the sample table for the Categories table would be CategoriesSample.
		<p align="left">SSW Data Renovator detects sample tables 
				and shows which tables have sample tables defined. You can then set which 
				tables should have sample data appended.
            <p align="left">
		<img src="Images/imgDataToDelete.gif" alt="Deleting the data" align="left" border="2" width="600" height="355">
              
            </p>
            <br /><br />
	</td>
	</tr>
</table>
            <strong>Figure: Set which tables should have sample data appended.
                <br />
            </strong>
            <br />
	<table cellpadding="10" border="2" bordercolor="#000000" width="80%">
				<tr bgcolor="#CCCCCC">
					<td height="143">
						<p><b>Example</b></p>
						<p><b>Appending Sample Data</b></p>
						<p>In the figure 'Data To Delete' 
								you can see check boxes for 'Sample Data Available' and 'Sample Data Append'. 
								The 'Available' checkbox lets you know if there is any sample data available 
								for that Table. Checking the 'Append' checkbox will append sample data after 
								all data has been deleted from the database.</p>
						<p>To continue the Tutorial, check 
								the 'Append Sample Data' box for the Categories Table.</p>
						<p>Next, press the 'Start &gt;' 
								button to begin deleting data.</p>
					</td>
				</tr>
		</table>
		
	<li>
		<h2><a name="ClearData"></a>Clear Data</h2></li>
		
<p>&nbsp;
							<table width="80%" border="1">
								<tr bgcolor="#CCCCCC">
									<td height="139">
										<p><b>Example</b></p>
										<p><b>Clear all Data out of Database</b></p>
										<p>You have a new customer and you 
												need to make a blank copy of the back end.</p>
										<p> After you are sure that you want 
												to clear the master database, click the 'Next &gt;' button to proceed. 'SSW 
												Data Renovator' analyzes the database relationships and works out the order to 
												delete.
										</p>
									</td>
								</tr>
							</table>
						<p><img alt="Clear data"  src="Images/imgClearData.gif" border="2" width="600" height="429">
                            <br />
                            <strong>Figure: With the 'Clear all Data out of Database' option you can delete all
                                the existing data out of your master database</strong></p>
						<p>
                            &nbsp;<p><img src="Images/imgDataToDelete.gif" alt="Data to delete" width="550" height="355" border="2"><br />
                                <strong>Figure: The order that tables will be deleted from is show on the 'Data to Delete'
                                    screen. Tables at the top of the list will have their 
								data deleted first.</strong></p>
								
	<li>
		<h2><a name="CompareStructure"></a>Compare Structure</h2></li>

<p>'Compare Database Structure' compares the structure of 
			the master and old databases. This is useful when you want to compare the 
			client's old data structure with the current structure of the new master 
			database. 
	<p>During the process you will be asked for any renames 
			that were done and you can print the report of changes. You can then make this 
			changes manually.
	<p><table border="0" width ="80%">
			<tr>
				<td> 
					<p>The following options on the left are available --&gt;</p>
					<p>Details for all the options available are explained 
							later.</p>
					<p>Initially, only the first and the fourth options are 
							available. To compare relationships and indexes 'SSW Data Renovator' needs to 
							compare the database structure first.</p>
				</td>
				<td><img src="Images/ImgCompareStructure.gif" alt="Compare structure" width="342" height="270" border="2"><br />
                    <strong>Figure: Available options for comparing structure</strong></td>
			</tr>
		</table></p>
		
	<li><h2><a name="DbStructure"></a>Database Structure</h2></li>
		
<p align="left"><b>Compare Database Structure</b>
		<p>'Compare Database Structure' compares the structure of 
				the master and old databases. 
		<p>First of all it compares the tables and generates the 
				'Table Changes' form. This form displays the information of tables added or 
				deleted.
		<p> 'SSW Data Renovator' cannot determine if any tables 
				have been renamed. This is where you can help. 
		<p>&nbsp;
			<table border="1" bgcolor="#CCCCCC" width="80%">
				<tr>
					<td height="210">
						<p><b>Example</b></p>
						<p><b>Checking for renamed Tables</b></p>
						<p> In the figure below the 
								developer has made a rename of the 'EmployeesNames' table to a shorter and more 
								practical 'Employees'. 
						</p>
						<ol>
							<li>
								To let 'SSW Data Renovator' know 
									about this, select 'Rename To' from the 'Operation' combo and 'Employees' in 
									the 'New Table Name' combo.</li><li>
								Upon saving (go to a new record) 
									please note that the corresponding record above has the 'Operation' and 'New 
									Table Name' automatically filled in.
							</li>
							<li>
								Click 'Next' and 'SSW Data 
									Renovator' will start checking the fields.</li></ol>
					</td>
				</tr>
			</table>
		<p><p><IMG border="2" height="0" src="Images/imgTableChange.gif" alt="Changes made to Table" width="0" ></p>
				<table width="80%" border="0" bgcolor="#CCCCCC">
					<tr>
						<td>
							<p><b>Example</b></p>
							<p><b>Checking for renamed Fields</b></p>
							<p> In the figure below the 
									developer has made a rename of the 'PostalCodeOfAust' field to a shorter and 
									more practical 'PostalCode'. 
							</p>
							<ol>
								<li>
									To let 'SSW Data Renovator' know 
										about this select 'Rename To' from the 'Operation' combo and 'PostalCode' in 
										the 'New Field Name' combo.</li><li>
									Upon saving please note that the 
										corresponding record above has the 'Operation' and 'New Field Name' 
										automatically filled in.
								</li>
								<li>
									Click 'Next'</li><li>
									You will get a message box with 
										the fillowing message &quot;Do you wish to analyze the properties of the fields 
										in both databases? Esitmated time: 1 minute&quot;. Click 'Yes' to compare the 
										properties of the fields in both databases.</li></ol>
						</td>
					</tr>
				</table>
				<p><img alt="Changes made to fields"  border="2" src="Images/imgFieldChange.gif" width="499" height="167">
                    <br />
                    <strong>Figure: Field Changes</strong></p>
			
		<p>The following four reports are generated after the above 
				process:
		<p>
			<img src="Images/imgTableChangesPart.gif" alt="Report showing Table changes" width="495" height="141" border="2">
            <br />
            <strong>Figure: Table Changes Report - This report shows what changes need to be made
                to tables in the old database</strong><p align="left"> <img alt="Report showing field changes"  src="Images/imgFieldChangesPart.gif" width="495" height="103" border="2">&nbsp;<br />
                    <strong>Figure: Field Changes Report - This report shows what changes need to be made
                        to the fields in tables in the old database</strong><p align="left">
                            &nbsp;<p><img src="Images/imgFieldsValidationPart.gif" alt="Report showing required field validation" width="495" height="152" border="2">
                                <br />
                                <strong>Figure: Required Field
						Validation Report -
				This report shows the fields that have 'Required' property set to 'Yes' in the 
				New database but are empty (NULL) in the old database</strong><div align="left">
                                        &nbsp;</div>
		<p>
			<img src="Images/ImgPropertyChangesPart.gif" alt="Report showing property changes" width="495" height="111" border="2">&nbsp;<br />
            <strong>Figure: Property Changes Report - This report shows what changes need to be
                made to the properties of table fields in the old database</strong><li>
		<h2><a name="ChangeRelationship"></a>Change Relationships</h2></li>
		
<p align="left"><b>Compare Database Relationships</b>
		<p align="left">You have already compared the structure. 
				Now you can compare the relationships.
			This process just takes 
				on click.<br>
			
		<p align="left">&nbsp;
			<table width="80%" border="0" bgcolor="#CCCCCC">
				<tr>
					<td>
						<p><b>Example</b></p>
						<p><b>Comparing Relationships</b></p>
						<p> Click the 'Go' button for 
								'Compare Database Relationships' on 'Compare Structure' form. 
						</p>
					</td>
				</tr>
			</table>
		<p align="left">This process compares the relationships and 
				generates the following reports:
		<p>
            &nbsp;</p>
		<p><img src="Images/ImgRelationshipsPart.gif" alt="Relationship changes" width="499" height="157" border="2"><br />
            <strong>Figure: Relationship Changes Report - This report shows the relationships that
                need to be added, deleted and changed in the old database</strong></p>
		<p align="left"><br>
				Many database programmers use standard naming conventions ie. using ID in the 
				field name to indicate a relationship with another table. ie. ClientID has many 
				Invoices.</p>
		<p><img src="Images/ImgIDRelationshipsPart.gif" alt="Report showing relationships" width="499" height="162" border="2"><br />
            <strong>Figure: ID Fields - Relationship report - This report shows all Fields with
                ID characters without a relationship in the new database</strong></p>
	<li>
		<h2><a name="ChangeIndex"></a>Change Indexes</h2></li>

			<p align="left"><b>Compare Database Indexes</b>
			<p align="left">Like relationships, 
					after comparing the structure you can compare the Indexes.
			<p align="left">This process creates three reports after 
					comparing the indexes of master and old database.
			<p align="left">&nbsp;
				<table border="1" bgcolor="#CCCCCC">
					<tr>
						<td>
							<p><b>Example</b></p>
							<p><b>Comparing Indexes</b></p>
							<p> Click the 'Go' button for 
									'Compare Database Indexes' on 'Compare Structure' form.</p>
						</td>
					</tr>
				</table>
			<p align="left">The reports are:
			<p align="left"><img src="Images/imgIndexesChangePart.gif" alt="Changes to the Indices" width="499" height="185" border="2">&nbsp;<br />
                <strong>Figure: Index Changes - This report shows the all indexes that need to be added,
                    deleted and changed in the old database</strong><p align="left"><br>
					This report checks all exact indexes that needs to be added or deleted.
				If you have only renamed a 
					relationship (using utility like SSW Data PRO!) you do not need to delete and 
					add index because they are still the same. For example compare the two reports 
					'Index Changes' and 'Exact Index Changes', you will find that with Products and 
					Orders tables you do not need to delete and add the indexes.
			<p><img src="Images/ImgExactIndexesPart.gif" alt="Exact Index changes" width="496" height="134" border="2">
                <br />
                <strong>Figure: Report - Exact Index Changes</strong><p align="left"><b><i><br>
						</i></b>Many database programmers use 
					standard Indexing conventions ie. using ID in the field name to indicate an 
					Index ie. ClientID has an Index.
			<p>This report shows all Fields with ID characters without 
					an Index in the new database.</p>
			<p>
				<img src="Images/imgIDIndexChange.gif" alt="Report showing index changes " width="499" height="137" border="2"> 		
                <br />
                <strong>Figure: Report - ID Fields Index </strong>
	<li>
		<h2><a name="CountRecords"></a>Count Records</h2></li>

<p align="left"><b>Count records in tables in old and new 
									databases</b>
						<p>This option lets you count the 
								records in your old and new databases simultaneously. After counting the 
								records it generates a report so you can be assured that the records are as you 
								expect: 
						<p>&nbsp;
							<table border="0" bgcolor="#CCCCCC">
								<tr>
									<td>
										<p><b>Example</b></p>
										<p><b>Counting number of records in 
														tables</b></p>
										<p> Click the 'Go' button for 'Count 
												records in tables in old and new databases' on 'Compare Structure' form.</p>
									</td>
								</tr>
							</table>
						<p>
                            &nbsp;<p>
							<img src="Images/imgrptRecordCount.gif" alt="SSW Check PRO-Reports" border="2" width="496" height="388">&nbsp;<br />
                                <strong>Figure: Report - Count Records in New Database - This report gives the record count in tables of new and old database.
								If any problems (i.e. table does not exist) it will display 'Problems'</strong><p align="left">&nbsp;
							<table border="0">
								<tr bgcolor="#CCCCCC">
									<td>
										<p><b>Implementing Changes</b></p>
										<p>After completing this part you 
												can use the printed reports to make manual changes to the old database on the 
												basis of the reports.</p>
									</td>
								</tr>
							</table>		
	<li>
		<h2><a name="DataPro"></a>Data PRO! Format</h2></li>

			<p align="left"><b>Convert Differences into 'SSW Data PRO!' 
						Format</b></p>
			<p align="left">Before we talk about this new feature..... 
					lets face it, the job that 'SSW Data Renovator' does itself is amazing. The 
					time saved is a a big relief to programmers even if they are just using the 
					reports (that tell them the differences) and implementing the changes manually. </p>
			<p align="left">A commonly requested feature of earlier 
					versions went along the lines of...</p>
			<p align="left"><i>&quot;I email the new application version to 
						the client and use </i><i>the reports from 
						'The Renovator' to talk the client through all the changes to the data mdb over 
						the phone. Still a pain on neck!!!! Can't I email them a little converter 
						program?&quot;</i></p>
			<p align="left">'SSW Data Renovator' can convert all report 
					content into a table that can be used by 'SSW Data PRO!' for automatic changes. </p>
			<p align="left">So now we use 'SSW Data Renovator' to 
					convert all the report content into a table that can be used by 'SSW Data PRO!' 
					(a separate product*) to replay the changes automatically. (ie. Especially good 
					in deployment).</p>
			<p align="left">After you use this 
					option a table called 'DPRDataChange' is created in 'SSW Data Renovator'. To 
					replay this changes automatically your customer's front end and backend should 
					be under 'SSW Data PRO!' control. In the front-end of your customer's database 
					there should be a table called 'zsDPDataChange'. You need to copy all the 
					records from 'DPRDataChange' in 'SSW Data PRO!' to 'zsDPDataChange' in your 
					customer's front-end. Next time your customer runs the front end it will 
					automatically replay the changes.</p>
			<p align="left">*'SSW Data PRO!' is a utility developed by 
					SSW to automatically commit structural changes into a 
					Microsoft Access database.</p>
					
	<li>
		<h2><a name="AutoUpgrade"></a>Automatic Upgrade</h2></li>

						<p align="left"><b>Automatic Data Upgrade</b>
						<p align="left">This should be your favourite option. 
								'Automatic Data Upgrade' automatically works out the structural difference 
								between your old and new databases and copies the data from your old to your 
								new database. You do not have to print any reports or worry about manually 
								changing the structure and copying data (like the other options). 
						<p align="left"><b>When will you need to use it?<br>
								</b>
							<ol>
								<li>
									If your new database has significant changes to the 
										data structure.</li><li>
									You have taken the database off-line. ie. You are not 
										the going to make data changes in the client's database (old structure) while 
										you have the copy of their data. Once you use this option to copy the data from 
										the old database to the new database you will return this mdb in the new 
										structure to the client.</li><li>
									The client has been instructed not to use the database 
										until you send them the new data version.</li></ol>
						<p><b>When you may not want to use this option?</b></p>
						<p>If you have a very large database 
								(&gt;100MB) and have only made a few changes ( i.e added relationship or 
								changed properties of a table) it is going to be a lot quicker to use the 
								'Compare Database Structure' method and make the few changes manually.</p>
						<p> This is because the 'Automatic 
								Data Upgrade' option, copies all data from the old database to the new 
								database. 
						</p>
						<table border="0" width="80%">
							<tr bgcolor="#CCCCCC">
								<td>
									<p><b>Example</b></p>
									<p><b>Using Automatic Upgrade</b></p>
									<p>You made few structural changes 
											to in your database that you do not remember. Now you need to go out to 
											customers and upgrade their database. You just want to copy the old data to the 
											new database.</p>
									<ol>
										<li>
											You will need to <!--<a href="09ClearData.htm">-->
													clear all data out of the new database before you can append the old 
												data into the new database. To do this click on the 'Clear New Database' 
												button.</li><li>
											Click 'Start &gt;' on the 'Data 
												To Delete' form. This will clear all the data from the new database. 
										</li>
									</ol>
								</td>
							</tr>
						</table>
						<p><img src="Images/imgAutoUpgrade.gif" alt="Auto Upgrade" width="499" height="309" border="2"><br />
                            <strong>Figure: Using Automatic Upgrade</strong></p>
						<p>Before it copies data it needs to analyze the structure 
								of the old and new databases. 
						</p>
						<table border="0" bgcolor="#CCCCCC" width ="80%">
							<tr>
								<td>
									<p><b>Example</b></p>
									<p><b>Using Automatic Upgrade 
													(continued..)</b></p>
									<p>After clearing the data in above example, click the 
											'Next &gt;' button to start analyzing the structures. This will take you 
											through the steps explained in <!--'<a href="10CompareStructure.htm">-->Compare 
													Structure. 
									</p>
									<p>After comparing the structures it will show the 'Data 
											Transfer' form. This form shows the record count in all tables of the old and 
											new databases. Click 'Next &gt;' to start appending data from the old database 
											to new database.</p>
								</td>
							</tr>
						</table>
						<p>&nbsp;</p>
						<p> <img src="Images/imgDataTransfter.gif" alt="Data transfer" width="499" height="293" border="2">&nbsp;</p>
                            <p>
                                <strong>Figure: Using Automatic Upgrade #2</strong></p>
						<table border="0" bordercolordark="#CCCCCC" width="80%">
							<tr bgcolor="#CCCCCC">
								<td>
									<p><b>Example</b></p>
									<p><b>Deployment of the new database.</b></p>
									<p align="left">On completion of data append process, click 
											on 'Finish' to get to the main menu. 
									</p>
									<p align="left">Now you can distribute the new database 
											with all the old data to your client.</p>
								</td>
							</tr>
						</table>	
</ol>
		</asp:content>