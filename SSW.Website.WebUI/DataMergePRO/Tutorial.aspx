<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW Data Merge PRO!"  %>

<asp:Content ContentPlaceHolderID="title" runat="server">
    <img src="Images/MergePROLogo.gif" alt="Merge Pro Logo" width="220" height="77" />
    <h2>SSW Data Merge PRO! is allows you to merge two different databases into one.</h2>
</asp:Content>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
				
    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

			<span class="clsTitleTopYellowBg"></span>
			<h2> SSW Data Merge&nbsp;PRO! Tutorial </h2>
						
			
				<P>
					This tutorial demonstrates how to merge a purchased client database into your 
					corporate database.
				</P>
				<P>
					When you install SSW Data Merge PRO!, two sample databases are included. They 
					are \SampleData\MailingListPurchased2000.mdb and 
					\SampleData\NorthwindData2000.mdb. The NorthwindData2000.mdb is exactly the 
					same as Northwind.mdb included in MS Office, while the 
					PurchasedMailingListPurchased2000.mdb database has 5 companies which are not 
					existed in NorthwindData2000.mdb.
				</P>
				<P>
					The data structure of these two databases are different. 
					MailingListPurchased2000.mdb has a table named 'Client' with ClientID, CoName, 
					etc, columns.&nbsp; has a table named 'Customers' with CustomerID, CompanyName, 
					etc columns. Our goal is to merge the 'Client' table into 'Customers' based on 
					the duplicate criteria of 'CoName' in MailingListPurchased2000.mdb is same as 
					'CompanyName' in NorthwindData2000.mdb.
				</P>
				<P>
					Let's begin.
				</P>
				<P>
					<STRONG>STEP 1. Start SSW Data Merge PRO!</STRONG>
				</P>
				<P>
			&nbsp;<IMG alt="" src="Images/frmStartUp.gif" width="399" height="309">
			<br>
			Click 'Next&gt;'</P>
			<P>
				<STRONG>STEP 2.&nbsp;Select a merge.</STRONG>
			</P>
			<P>
				You can Add, Edit or Delete a predefined merge Or set 
					up options.
			</P>
			<P>
				Suppose you want to add a new Merge, click on 'Add'.
			</P>
			<P>
				<STRONG>
                <IMG alt="" src="Images/frmmain.gif" width="400" height="300"></STRONG>
			</P>
			<P>
				<STRONG>STEP 3. Add a merge.</STRONG>
			</P>
			<P>
				<STRONG>Step 3.1. Configure Merge Databases</STRONG>
			</P>
			<P>
				A default destination detail is set. (to change the 
					default destination, click Options on 'Select a Merge' Form)
			</P>
			<P>
				You can use UDL wizard to construct a connection 
					string by click on the UDL icon.
			</P>
			<P>
				Click Next&gt; 
			</P>
			<P>
				<STRONG>
                <IMG alt="" src="Images/frmDataBase.gif" width="328" height="400"></STRONG>
			</P>
			<P>
				<STRONG><STRONG>Step 3.2. Configure 
								Duplicate Criteria</STRONG></STRONG>
			</P>
			<P>
				Choose the Criteria for duplicates. Here we choose 
					Company Name.
			</P>
			<P>
				Click 'Next'
			</P>
			<P>
				<STRONG>
                <IMG alt="" src="Images/frmCriteria.gif" width="560" height="456"></STRONG>
			</P>
			<P>
				<STRONG><STRONG><STRONG>
										Step 3.3. Configure Field Mapping</STRONG></STRONG></STRONG>
			</P>
			<P>
				Here you map all source field into destination field.
			</P>
			<P>
				Click 'Show All' to list all the Source or 
					Destination fields. To delete a row, click on the row header and press 'Delete' 
					key.
			</P>
			<P>
				Click 'Finish' to complete the merge setup.
			</P>
			<P>
				<IMG alt="" src="Images/frmDuplicate.gif" width="554" height="454">
			</P>
			<P>
				Now, there is a new Merge Named 'PurchaseList' on the 
					merge list.
			</P>
			<P>
				Click 'Next&gt;' to start merge processing.
			</P>
			<P>
				<IMG alt="" src="Images/frmMain1.gif" width="554" height="454">
			</P>
			<P>
				<STRONG>
								<STRONG><STRONG>Step 4. Merge Result Processing</STRONG></STRONG></STRONG>
			</P>
			<P>
				Here is the result of Merge Processing. The result 
					shows:
			</P>
			<P>
				There are 34 records in total of the source database. 
					5 are possibly new (with 0 possible duplicate) and others are possibly existing 
					(with 1 or more&nbsp;duplicates).
			</P>
			<P>
				After Click on 'Add' on the record with ClientID 
					'SSW', that record's status changed from 'Unprocessed' to 'Added'.
			</P>
			<P>
				To turn off the confirmation message box, uncheck the 
					'Show Confirmation' checkbox.
			</P>
			<P>
				To change different views (UnProcessed, Added, 
					NotAdded, Skipped), choose a different item in 'Current Filter'.
			</P>
			<P>
				You can also change the number of records per 
					process. The larger the number, the slower the process. The default is 20 
					records per process.
			</P>
			<P>
				If you want to see details of the possible 
				duplicates or make some change before adding the record to destination, use the 
				'Advanced Add'.
			</P>
			<P>
				<IMG alt="" src="Images/frmResult.gif" width="416" height="344">
			</P>
			<P>
				<STRONG>
								<STRONG><STRONG>Step 5. Advanced Add</STRONG></STRONG></STRONG>
			</P>
			<P>
				Here you can see the source and destination record side by side. You can make 
				change on the source record before you add into destination. You can even make 
				change on the destination record if you find some error on your corporate 
				database!
			</P>
			<P>
				These two forms are synchronized 
					so you can navigate and view records withought open and close forms all the 
					time.
			</P>
			<P class="MsoNormal">
				<STRONG>
                <IMG alt="" src="Images/frmAdvancedAdd.gif" width="376" height="544"></STRONG>
			</P>
			If you experience any 
				technical problem when using SSW Merge PRO! Please send us <A href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Bug%20Reports';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">
					bug reports</A> and <A href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Feedback';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">feedback</A> so that 
				we can evolve SSW Merge PRO! into a product that matches your requirements.
				<br>
			<!--
			<BR>
				<span class="clsTitleTopYellowBg"></span>
				<h2> Purchasing Information: </h2>
			<p>
				Information on 
					purchasing SSW Data Merge PRO! and other SSW products can be found <A href="/ssw/Products/frmProdSummary.asp?CategoryID=sswmer">
						Commented</A>.
			</p>
			-->
		</asp:content>