<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better ISA Server"  %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
		
		<p>MS ISA Server (Internet Security and Acceleration Server) provides safe and fast Internet access for our office. It integrates a multi-stage firewall and scalable web cache which limits our bandwidth usage. </p>
		<p>However, to run MS ISA Server in a most efficient way, we have developed a few rules for a better ISA usage. </p>
		
		    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230495341253230536572766572')">
    Let us know</a> what you think.</p> 
<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" align="right" style="{width:100%;}">
		<tr> 
  			<td> 
			<b>Rules to Better ISA Server</b><br>
			1. <a href="#triggers">Do you use triggers for automatically announcements of server events?</a><br>
			2. <a href="#blockbanners">Can I block those annoying Internet banners and save bandwidth?</a><br>
            3. <a href="#logSQL">Do you log to SQL server?</a><br>
			4. <a href="#customreports">Do you use custom reports?</a><br>
            5. <a href="#authenticate">Do you require everyone to authenticate with your Internet connection?</a><br>
              </td>
		</tr>
        </table>
</p>
</p>
<ol>
	<li>
	<h2><A name="triggers"></A>Do you use triggers for 
      automatically announcements of server events?</h2>
</li>
	
	<p>
		We have triggers on two different database tables, FirewallLog and WebProxyLog, which log all files downloaded from the web and uploaded to the web. These triggers created by MS SQL Server Enterprise Manager announce automatically all file transfers bigger than 50 MBs. Thus the network administrator can rest assured that the monthly bandwidth is not going to differ hudgley during the month as no monster downloads are performed without an 
		acknowledgement.&nbsp; Note that this will not get all large downloads. 
		If a client uses a file splitter program like many download managers and 
		peer to peer programs then there will be a couple smaller size downloads 
		and this trigger will not be called.<br>
&nbsp;</p>
	
	<li>
	<h2><A name="blockbanners"></A>Can I block those annoying Internet banners and save bandwidth? </h2>
</li>

<p>
	There are two ways of blocking annoying banners with your ISA 2000 Server. Have a look into our <a href="../../KB/KB.asp?KBID=Q453237">Knowledge Base</a>. 
    <br>
	There currently is no script file for ISA 2004. Once we make one or receive 
	one then we will put it up for public download.<br>
&nbsp;</p>

<li>
	<h2><A name="logSQL"></A>Do you log to SQL server?</h2>
</li>

	<p>
		By default ISA 2000 server logs to text files. ISA 2004 is better and 
		stores the data in a MSDE database. The only problem with this is that 
		you cannot connect to this MSDE database by default. You have to enable 
		TCP/IP and Named Pipes though the SQL Server Network Utility.<br>
		<img border="0" src="Images/SQLNamedPipes.gif" alt="SQL named pipes" width="350" height="246"></p>
	<p>
		Also it only stored the last months data. After this time summary files are made to summarize the 
		month.<br>
		Generally you want to keep data for a couple months and show the trend 
		over time.</p>
	<p>
		The solution is to log to your own SQL server and manage the data 
		however you choose.</p>
	<p>
		<b>Warning:</b> This log can get extremely big very fast. Our 
		database is about 17gig and we only keep 6 months of data.</p>
	<p>
		A good idea is to have a job that runs weekly that will delete any OLD 
		data to spare some space. </p>
	<p>
		Also ISA performance is degraded when using ODBC logging (as opposed to 
		text logging). This is true whether the SQL server is on the same 
		machine or over the network. They both use per-entry logging to SQL and 
		will both stop serving requests if the logging destination fails. This 
		is not limited to SQL logging; if text or database logging fails, then 
		ISA will stop serving requests. If the logging destination is 
		unresponsive during startup, the services will not start.<br>
		This is by design, since firewall logs are often used as evidence.</p>
	<p>
		&nbsp;</p>
	<li>
	<h2><A name="customreports"></A>Do you use custom reports?</h2>
	<p>Now that we have got the data in SQL and at our disposal we can make some 
	meaningful reports</p>
	<p>We can use reporting services to query the data directly and spit out 
	some reports. Exception reports can be made. Things like which employees are 
	Checking external mail (Hotmail, Yahoo, GMail) within work hours.</p>
	<p>OLAP is also another great way to report on this mammoth amount of data. 
	Once a cube has been made and processed, management can quickly and easily 
	query this data though Data Analyzer or Excel. Reports such as bandwidth by 
	employee by time by date can easily be achieved. Because the SQL database 
	has been interrogated earlier that day these reports with would take a long 
	time to produce can come up instantly.</p>
	<p><img border="0" src="Images/ExcelOLAP.jpg" alt="" width="400" height="326"> <img border="0" src="Images/DAOLAP.jpg" alt="" width="400" ></p>
	</li>
        <li>
            <h2>
                <a name="authenticate"></a>Do you require everyone to authenticate with your Internet connection?</h2>
            <p>We have these nice OLAP cubes from SQL for our Internet usage. However they are not very meaningful as we only know the clients IP and not who.  You could always ping the IP address to find the computer then find out who owns that computer but that is a lot of work.</p>
            <p>The solution is to enforce authentication to the proxy.  This will slow users a little as every time they want to access some external content there computer has to authenticate every packet.</p>
            <p><img border="0" src="Images/ISAAuthentication.gif" alt="" width="613" height="160" ></p>
            <p>When a customer/supplier turns up and wants a wireless Internet connection at your office, what do you say?</p>
            <p>The answer should be </p>
            <p>"No we don't allow wireless access to people not on our domain for security reasons. Instead there is a hub in the boardroom. Under it there is a sticker with manually IP addresses you can use."</p>
            <p>This will be a special IP address which will bypass the authentication rule</p>
                </li>
</ol>
   

<h2>Acknowledgements</h2>
	<p>
	<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DH">Daniel Hyles</a><br>
    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></p> 

		</asp:content>