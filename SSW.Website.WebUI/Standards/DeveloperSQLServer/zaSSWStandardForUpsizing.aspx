<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Standard for Upsizing Access to SQL Server"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
		<h2>Why Upsize to SQL Server? </h2></b>
		<p >This document is a summary of the SSW whitepapers, <b>
		<a href="/ssw/Standards/DeveloperSQLServer">Whats New and Different 
		when Moving Your Backend from Access to SQL Server 2000</a> </b>and<b>
		<a href="/ssw/Standards/DeveloperSQLServer">How to Migrate 
        Your Backend from Access to SQL Server 2000</a>.</b></p>
		<p >Microsoft Access developers generally consider a move to SQL Server 
		for performance, security and stability reasons. This process is known 
		as upsizing and developers will find a number of key differences while 
		migrating from Access to SQL Server. The 4 main reasons to upsize your 
		database from Access to SQL Server 2000 are:</p>
		<ol>
			<li>Less Chance of Data Corruption</li>
			<li>Database Log Files Enable Data Recovery</li>
			<li>Support for More Concurrent Users</li>
			<li >Support for a Larger Database</li>
		</ol>
		<p>
		<br>
		<b>1. Less Chance of Data Corruption</b></p>
		<p>In Access, you open the MDB file directly. If, for example, the 
		network connection is unexpectedly broken or a client or server machine 
		shuts off without properly shutting down the application, there is a 
		good chance your data will be corrupted.</p>
		<p>SQL Server, on the other hand, runs as a service  you do not have 
		direct access to the file. Requests for data are managed by the SQL 
		Server service, so if the server shuts down unexpectedly or the network 
		connection is broken, the next request for data will not be fulfilled. 
		Therefore the integrity of the data is maintained. <br>
&nbsp;</p>
		<p><b>2. Database Log Files Enable Data Recovery</b></p>
		<p>SQL Server has a distinct advantage over Access in that all 
		transactions (database updates, insertions and deletions) are kept in a 
		log file. This log records the changes to the data and enough 
		information to undo the modifications (if necessary later) made during 
		each transaction. These logs can also be used to recover your data in 
		the event of system failure. <br>
		&nbsp;</p>
		<p><b>3. Support for More Concurrent Users</b></p>
		<p class="Text">Access supports a maximum of 255 concurrent users, and 
		as such is not a feasible enterprise-level data storage solution. In a 
		real world environment it is common to experience major performance 
		issues with as few as 20 users attempting to use the Access database 
		simultaneously over a network.</p>
		<p class="Text">SQL Server supports a concurrent user base that <i>is 
		limited only by available system memory</i>, and because of its 
		optimized query processing engine and ability to simultaneously utilize 
		multiple computers, processors and hard drives, it can scale to meet any 
		enterprise requirements.</p>
		<p><b>4. Support for a Larger Database</b></p>
		<p>Access supports a maximum database size of 2GB plus linked tables. 
		Although use of linked tables theoretically enables you to store much 
		more data, it is common to experience performance issues due to the 
		amount of data being processed. Generally you should consider upsizing 
		your Access database(s) if the size of any one of them reaches 100MB.<br>
		<br>
		SQL Server, on the other hand, has vastly improved storage capabilities, 
		allowing for 1,048,516 TB of data to be stored efficiently across 
		multiple devices. It also has self-repairing and self-compacting 
		features, making it a very robust database solution.</p>
		<p>For many more reasons to upsize your database, and steps on how to 
		perform an effective migration, see the SSW whitepapers, <b>
		<a href="/ssw/Standards/DeveloperSQLServer">Whats New and Different 
		when Moving Your Backend from Access to SQL Server 2000</a> </b>and <b>
		<a href="/ssw/Standards/DeveloperSQLServer">How to Migrate 
        Your Backend from Access to SQL Server 2000</a>.</b><br></p>
          <h2>More Links on Upsizing</h2>
		<p><b><a href="/ssw/Standards/DeveloperSQLServer">Whats New and 
		Different when Moving Your Backend from Access to SQL Server 2000</a>
		</b></p>
		<b>
		<a href="/ssw/Standards/DeveloperSQLServer">How to Migrate 
        Your Backend from Access to SQL Server 2000</a></b><p>
		<a href="../Templates/">Sample Release Plan for 
upsizing</a> (Upsizing Template)<br>
&nbsp;</p>
<h2>Acknowledgements</h2>   
	<p>
		<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=JV">Jatin Valabjee</a></p>
	<p>
		<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=MA">Marten Ataalla</a></p>
<p>
		<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DDK">David Klein</a><br>
        &nbsp;</p>
	</asp:content>