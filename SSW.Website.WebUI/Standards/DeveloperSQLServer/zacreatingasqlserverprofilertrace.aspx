<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Creating a SQL Server Profiler Trace"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				<p><b>Creating 
        a SQL Server Profiler Trace</b></p>
      <h2>Summary</h2>&nbsp;</p>
     This standard 
        shows how to create a SQL Server Profiler Trace so as to log object changes 
        in a Database.</p>
 
      <p>The trace 
        must track any DDL (Database Definition Language) SQL statements for a 
        particular Database. This will not work with stored procedures, as they 
        are compiled, and their text is not shown on the trace. As such, we can 
        only track the creation and changes to stored procedures, not whether 
        they modify existing objects.</p>
      <p>NB: This 
        trace covers both batches and individual statements. However, this may 
        cause duplicates when there is a one-line operation to change the data. 
        Consequently, the duplicates in the data would have to be removed before 
        using for a process (eg to update two separate databases to the same structure)</p>
      <p>Running Profiler:<br>
        Run sqltrace.exe from a Run Dialog box to start.<br>
        Start a new Trace:<br>
        First, Create a New trace from the File menu.</p>
    
      <p><h2>GeneralTab</h2></p>
      <p>a. For the 
        trace name, use zsObjectChangeLog</p>
      <p><img src="Images/imgGeneralTab.gif" alt="" width="376" height="245"></p>
      
      <p>b. Enter 
        the Server Name<br>
        c. Check on &quot;Capture to Table, and Enter for the destination table 
        properties:<br>
        1. The Server Name on which the database resides <br>
        2. Select the database for which the trace is being done (log file kept 
        in same database as the one being logged.)<br>
        3. Set the owner as db_owner<br>
        4. Leave the Table as zsObjectChangeLog </p>
     

      <p><b>Events 
        Tab</b></p>
      <p> <img src="Images/imgEventsTab.gif" alt="" width="267" height="289"><br>
        Select the TSQL event class, and add the <br>
        1. SQL:StmtComplete <br>
        2. SQL:BatchComplete <br>
        Events to the SQL Server Profiler Trace.</p>
      
      </table>
      <p><h2>Data Columns Tab</h2></p>
      <p>&nbsp;</p>
      <img src="Images/imgDataColumnsTab.gif" alt="" width="268" height="288">
      <p><br>
        Add the following columns to &quot;Selected Data&quot;<br>
        1. DatabaseID<br>
        2. Event Class<br>
        3. Text<br>
        4. Server Name<br>
        5. Host Name<br>
        6. Application Name<br>
        7. NT User Name<br>
        8. SQL User Name<br>
        9. StartTime<br>
        10. Duration</p>
            <p><h2>Filters 
        Tab </h2></p>
      <p>&nbsp;</p>
      <p><img src="Images/imgFiltersTab.gif" alt=""  width="268" height="288"><br>
        <br>
        a. Under Applications Criteria, enter: SQL Server Profiler%;%SQLAgent 
        - Alert%<br>
        b. To focus the select to a particular database (as we wish to do), we 
        need to determine the DatabaseID as per sysdatabases and enter it into 
        profiler. To do this: <br>
        1. Go to SQL Server Query Analyzer (Type isqlw.exe from the Run Prompt.). 
        <br>
        2. Type SELECT DB_ID('YourDataBaseName') and Press F5 to run.<br>
        3. Use the value in the result window (in this case, 16), and enter it 
        into the DatabaseID Value Criteria.<br>
        4. The trace should also be restricted to DDL statements. To do this, 
        we must filter to only include CREATE, ALTER and DROP T-SQL statements. 
        Under the text criteria, Enter CREATE%;ALTER%;DROP%<br>
        <img src="Images/imgFiltersTabEnd.gif" alt="" width="265" height="288"><br>
        c. Click OK, then Let the Trace Run!<br>
        End of Document<br>
      </p>
		</asp:content>