<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW SQL Total Compare - Screenshots"  %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

		<div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

<a href="/ssw/SQLTotalCompare/">SSW SQLTotalCompare</a> > Screenshots<br><br>

	<img src="Images/SQLTotalCompareLogo.gif" alt="SSW SQL Total Compare" width="294" height="83">  
	<p>
		<b>Manage SQL Server Replication simply with SSW SQL Total Compare</b>
	</p>
	<p>
		SQL Server replication is a fantastic piece of functionality but can lead to a database administration nightmare. Data 
		conflicts are a common occurrence and require constant attention. SSW SQL Total Compare reports the differences between 
		the Publisher and Subscribers databases and makes the changes necessary to fully synchronize the data.
	</p>
	
	<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
		<tr>
			<td><b>SSW Total Compare User Guide</b><br />
				<a href="#Pre">1.</a> Prerequisites <br>
				<a href="#Totalcompare">2.</a> SSW Total Compare User Guide <br>
				</td>
		</tr>
	</table>
	
	<SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>
<h2>SSW Total Compare User Guide<a name="Totalcompare"></a></h2>	

	<p>
		<ol>
			<li><a name ="InstallGuide"></a>Install SSW SQL Total Compare on the server on which the subscriber database resides 
			and merge replication was configured.</li><li><a name ="Specfydb"></a>Specify the Publisher database and the subscriber database</li><p>
			<img src="Images/LogonScreen.png" width="533" height="509" alt="Select the DB">
                <br />
                <strong>Figure: Specify the Publisher database and the subscriber database</strong></p>
			<li><a name ="Createstpc"></a>Create the Stored Procedures and Linked Servers.</li><p>
			<img src="Images/CreateSPAndLS.png" alt="Creating Linked Servers and Procedures" width="533" height="509">&nbsp;<br />
                <strong>Figure: Create the Stored Procedures and Linked Servers</strong></p>
			<li><a name ="comparedb"></a>Compare the databases. This process may take some time depending on the size and quantity of tables in 
			the databases. The tables with data not in sync will then be displayed. Note: A period (.) is used to 
			indicate a NULL value in SSW SQL Total Compare.</li><p>
			<img src="Images/MainScreen.png" alt="Main Screen" width="533" height="408">
			</p>
            <p>
                <strong>Figure: Compare the databases</strong></p>
			<li><a name ="detcourse"></a>Determine the best course of action to resolve conflicts:
			<ul>
				<li>Add missing records. Any missing records detected in your tables from either the Publisher or the 
				Subscriber database servers can be added by selecting the records required and clicking on the 'Update' 
				button. Then synchronize the data.</li><li>Modifying records that are different. Examine the data from the two database servers and select the 
				one which has the correct data and click 'Update'. (This actions the sp_dummyupdate Stored Procedure). Then synchronize the data.</li><li>Deleting records that are no longer required. Select the record you wish to delete from the list 
				of records. Then click on the 'Delete' button which will display the form. There are two queries options. 
				The first query will select the record and display its details in the results section. Once you are 
				sure that this is the record you wish to delete you can delete the record by running the second query.</li></ul>
			<p>
			<img src="Images/Delete.png" alt="Delete" width="533" height="640">
                <br />
                <strong>Figure: Determine the best course of action to resolve conflicts</strong></p>
			<li><a name ="syncdata"></a>Synchronizing the Data. SSW SQL Total Compare has this functionality inbuilt utilising the Synchronize 
			and Conflict Viewer tools. Click on the 'Synchronize' button.</li><p>
			<img src="Images/Synchronize.png" alt="Syncronise" width="530" height="200">&nbsp;<br />
                <strong>Figure: Synchronizing the Data</strong></p>
			<li><a name ="selcop"></a>Select one of the four options:</li><ul>
				<li>Options - configure the path and parameters for the Synchronize and Conflict Viewer tools.</li><li>Synchronise - runs the Synchronize tool.</li><li>Conflict Viewer - runs the Conflict Viewer tool.</li><li>Close - closes the form.</li></ul>
			<li><a name ="checkop"></a>Check the options page for the correct configuration of paths and parameters for the Synchronize and Conflict 
			Viewer tools. Specify the path to the Conflict Viewer tool, the Server Name and Database Name of the first 
			database (or publisher) and the path to the Synchronize tool. Note: If you do not have these tools on your system, do not worry as the tools have been 
			installed in the Install Directory of SSW SQL Total Compare.</li><p>
			<img src="Images/Options.png" alt="Options" width="530" height="549">
                <br />
                <strong>Figure: Check the options page</strong></p>
			<li><a name ="clicksync"></a>Click on the 'Synchronize' button on the displayed form.</li><li><a name ="resconf"></a>Resolve conflicts using the Conflict Viewer. You will be notified in the Synchronize tool if there are any 
			conflicts. If there are conflicts, click on the 'View' button and read the description for each conflict and 
			choose either to take the winning change or select the losing change to keep its data.</li><li><a name ="compdata"></a>Compare the data again to make sure that the data has been correctly synchronised.</li><li><a name ="completed"></a>Finished - thanks for using SSW Total Compare</li></ol>
		</asp:content>
