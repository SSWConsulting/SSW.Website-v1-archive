<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<TITLE>How to link your SSW Access database to a SQL Server backend</TITLE>
		<LINK href="/ssw/Include/ssw.css" type="text/css" rel="stylesheet">
		<META HTTP-EQUIV="Content-Type" CONTENT="text/html;charset=windows-1252">
	</HEAD>
	<BODY LINK="#0000ff">
		<p ALIGN="center"><IMG border="0" height="218" src="/ssw/Standards/DeveloperAccess/Images/image10.gif" alt="How to link your SSW Access database to a SQL Server backend" width="287"></p>
		<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0">
			<TR HEIGHT="23">
				<TD WIDTH="53">
					<BR><br>
				</TD>
				<TD WIDTH="661"><B>How to link your SSW Access 
							database to a SQL Server backend</B></TD>
			</TR>
		</TABLE>
		<br>
		<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0">
			<TR HEIGHT="17">
				<TD WIDTH="53">
					<BR>
				</TD>
				<TD WIDTH="661">
						<OL type="1">
							<li>
								Select 
        Start -&gt; Settings -&gt; Control Panel and Double-click the ODBC 
        Data Sources (32 - bit). This will enable you to create a new data 
        source so that your SSW database can connect 
        to SQL Server.<BR><br>    <IMG alt="" src="/ssw/Images/ImagesPastAndOld/conpnl.jpg"><BR><BR>
							<LI>
								Click the tab named "System DSN", and click the "Add" button <BR><BR>
							<li>
								Select the SQL Server Driver in the "Create New 
        Data Source" window and click the "Finish" button.<BR><br> 
                     
           <IMG alt="" src="/ssw/Images/ImagesPastAndOld/dsnbox.jpg"><BR><BR>
							<li>
								In 
        the first "Microsoft SQL Server DSN Configuration" Page, Enter the Data 
        as above. But ask your System Administrator for the name of the server 
        where the SQL Server database resides, and input this into the Server 
        field if it is not listed in the drop-down list. click the "Next" 
        button.&nbsp;&nbsp;&nbsp;<BR><br><IMG alt="" src="/ssw/Images/ImagesPastAndOld/dsnconf.jpg"><BR><br> 
								
							<LI>
								Enter 
        the information as below - selecting the option button "With Windows NT 
        authentication using the Network Login ID"
								<BR><br>
								<IMG alt="" src="/ssw/Images/ImagesPastAndOld/ntlogin.jpg"><BR>
								<BR>
							<LI>
								Ensure 
        that the information is entered in as below, and click the 
        "Finish" button. <br><br><IMG alt="" src="/ssw/Images/ImagesPastAndOld/finishbox.jpg">
								<BR>
								<BR>
							<LI>
								
									Enter the information as below. However, you will 
        need to ask the System Administrator about the name of the Database on 
        the Server, and select this option in the drop-downbox titled "Change 
        the default database to:". click the "Next" button.<BR> <br>
                    
                    
                  
             <IMG alt="" src="/ssw/Images/ImagesPastAndOld/changedb.jpg"><BR><BR>
								
							<LI>
								
									
										You 
        will then click the "Test Data Source" button on this screen, where it 
        will say "Test completed successfully. Click OK and OK again. You have 
        now successfully enabled your computer for connectivity to SQL Server.<BR><BR>
        <IMG alt="" src="/ssw/Images/ImagesPastAndOld/testds.jpg"><BR><BR>
		<br><LI>Start up Tennis PRO! or TimePRO! and it will detect that you need to 
        link to the database.<BR><br>
        <IMG alt="" src="/ssw/Images/ImagesPastAndOld/tennisprobox.jpg"><BR><br>
		<LI>Select SQL Server Option button if it is not already selected.<BR>
		<LI>Enter the information as above in to the "Enter DSN:" text 
        box.<BR>
        <LI>click the open button on the attachment screen, and you will be presented 
        with a dialog box entitled "Data Link Properties" as below. Select the 
        "Microsoft OLE DB Provider for SQL Server" as highlighted below. Click the "Next button".<br><br><IMG alt="" src="/ssw/Images/ImagesPastAndOld/udl1.jpg"><BR><BR>
													
												
											
										
									
								
							<LI>
								
									
										
											
												
													
														
															Enter 
        the server name as per step 4 into the "1. Select or enter a server 
        name:" drop down list (as seen below). Also select the Database Name as 
        per step 7 in the Select 
        the database on the server: drop-down list.<br><br><IMG alt="" src="/ssw/Images/ImagesPastAndOld/udl2.jpg"><BR><BR>
														
													
												
											
										
									
								
							<LI>
								
									
										
											
												
													
														
															
																Click 
         "Test Connection" button, and it will respond with "TEST COMPLETED 
        SUCCESSFULLY". click the "OK" button. 
        <BR>
															
														
													
												
											
										
									
								
							<LI>
								
									
										
											
												
													
														
															
																
																	Click 
         the "Link to Database" button on the main attachment screen. The 
        program will then proceed to link the tables to your 
        computer.
																
															
														
													
												
											
										
									
								</LI></OL>
						<P>
					&nbsp;</P></TD>
			</TR>
		</TABLE>
		<table width="100%" border="0">
			<tr hight="300">
				<td><br>
				</td>
				<td></td>
				<td align="right"></td>
			</tr>
			<tr>
				<td width="30%" align="left"><A href="#">Top</A>
				</td>
				<td></td>
				<td width="30%" align="right" nowrap></td>
			</tr>
			<tr>
				<td colspan="3"></td>
			</tr>
		</table>
		<table border="0">
			<tr>
				<td width="15%"></td>
				<td align="middle"><!--#include virtual="/ssw/Include/FooterSSW.htm"-->
				</td>
				<td width="15%"></td>
			</tr>
		</table>
	</BODY>
</HTML>