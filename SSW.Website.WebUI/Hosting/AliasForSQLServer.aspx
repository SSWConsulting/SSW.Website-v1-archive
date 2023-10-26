<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="Connecting to SQL on our hosting servers"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

				<p>
		<h3>Connecting to our Servers</h3></p>
		<p>To connect to our server you have to make an alias because we are 
		using a different port to normal for security reasons. Once you have 
		made an alias then you can test the connection by making a .udl test 
		file.</p>
		<h2>How to make the Alias for SQL Server 2000</h2>
		<p> 
		Once you have installed the SQL Server Client Tools on your  
		computer, you can find the tools under that Start menu (on 
		your desktop), open up Client Network Utility by following these steps:</p>
		<p> 
		Start-&gt;All Programs-&gt;Microsoft SQL Server-&gt;Client Network Utility</p>
		<p> 
		then click on Alias Tab.</p>
		<p> 
		<img border="0" src="/ssw/Hosting/Images/AliasForSQL1.jpg" alt="Click on alias" width="534" height="340"></p>
		<p> 
		Click on Add to add a new Alias.</p>
		<p> 
		&nbsp;</p>
		<p> 
		<img border="0" src="/ssw/Hosting/Images/AliasForSQL2.jpg" alt="Adding Network Library Configuration" width="591" height="307"></p>
		<p> 
		Make sure TCP/IP is selected in the 'Network libraries'. By default, the 
		SQL Server Client Tools use Named Pipes protocol. In the 'Server alias' 
		field enter &quot;www.ssw.com.au&quot;. 
		Uncheck the 'Dynamically determine port ' checkbox and enter 2433 as the 
		port number. Click 'OK' to exit both of the opened windows.</p>
		<p> 
		&nbsp;</p>
		<p> 
		<img border="0" src="/ssw/Hosting/Images/AliasForSQL3.jpg" alt="SQL Server Client Network Utility" width="537" height="340"></p>
		<p> 
		A new Server alias name 'www.ssw.com.au' 
		will be added.&nbsp; 
	</p>
		<p> 
		Click on OK to finish.</p>
		<p> 
		&nbsp;</p>

<h2>How to make a UDL</h2>
<p><h3>Use a UDL file to make a connection string</h3></p>
<p>Microsoft uses 
								Universal Data Links in various products, 
								controlled by a file ending in a .udl 
								extension.&nbsp; You can make use of the .udl file to 
								create a connection string using the tools 
								supplied to configure your connection.</p>
								<p>Follow these steps to make a .udl connection:</p>
								<ol>
									<li>Create a new text file on your 
									computer.&nbsp; I generally create the file on my 
									desktop.<br>&nbsp;</li>
									<li>Rename the file to a .udl extension so 
									your file name looks like myfile.udl<br>
&nbsp;</li>
									<li>Double-click the new .udl file.&nbsp;Click 
									on 'Provider' tab and select 'Microsoft OLE 
									DB Provider for SQL Server' and click 
									'Next&gt;&gt;'.<li>Enter in &quot;www.ssw.com.au&quot; 
									as the server name.<li>Enter &quot;Northwind&quot; as 
									username and &quot;test&quot; as password, and select 
									Northwind as database and then click 'Test Connection'.</li><br>
									<img border="0" src="Images/AliasForSQL4.jpg" alt="Universal data link" width="361" height="463">
									<li>When you are done, and the &quot;Test 
									Connection&quot; works, close the .udl property 
									pages.</li>
									<li>Now open the .udl file in Notepad or 
									another text editor.&nbsp; You can copy the 
									connection string out of the .udl file and 
									paste it into your application as needed. </li>
								</ol>
<p>&nbsp;</p>
<h2>Acknowledgements</h2>
<p><a href="/ssw/Employees/employeesprofile.aspx?EmpID=DH">Daniel Hyles</a></p>
		</asp:content>