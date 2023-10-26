<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Link to Access or SQL Server"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				

<h2>How to link your SSW Access database to an Access or SQL backend</h2>
<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=0 ID="Table1">
<TR HEIGHT=28 >
<TD WIDTH="85%"  align="middle"></TD>
</TR>

<TR HEIGHT=17 >
<TD WIDTH="85%" >
      <p class="Text">Most Access developers split their Access application into 
      two files  the application database and the data database. The 
      application database (the forms, reports, saved queries and programming) 
      is installed on the local hard disk, and the data file is stored on the 
      network drive for access by multiple users over the network.</p>
      <P>Note: SSW recommends Microsoft Access to be installed locally on the C: drive. To share a Microsoft Access database across a network, the data database 
      (e.g. SSWDATA.MDB), needs to be moved to a location on the network that is accessible by everyone who wants to use the database. The  data database contains only tables and 
      data, not forms and reports.<br><br>A copy of the  application database (e.g. SSW.MDB) is required on each computer 
      which will access the shared data. This file contains 
      the forms, reports, saved queries and programming.</P>
      <P>&nbsp;</P></TD><TD WIDTH="7%"> <BR></TD>
</TR>
</TABLE>

<table ID="Table2">
<tr>
<TD WIDTH="8%" ><br></TD><td WIDTH ="85%" TD>
<IMG alt="Split Database" border=1 src="Images/splitdatabase.gif" width="484" height="404"><p><b>Figure: 
Split your database into application and data so that network users can share 
the data </b> </TD><td WIDTH="7%"><br></td></tr></table>
<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=0 ID="Table3">
<TR HEIGHT=17 >
<TD WIDTH="85%" ><br>
The "data" database will be placed on a shared drive such as E:, F: G: etc. or a 
UNC \\Server\Data&nbsp; </TD><TD WIDTH="7%"> <BR></TD>
</TR>
</TABLE>

<table  width="100%" border="0" ID="Table4">
 <tr hight ="300">
  <td ><br></td>
  <td></td>
  <td align="right"></td>
 </tr>
<tr><td colspan="3"></td></tr>
</table>

<h2>Moving the Database and Reconnecting to the Data</h2>

<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=0 ID="Table7">
  
  <TR>
    <TD width=53></TD>
    <TD width=661>&nbsp;
      <TABLE bgColor=silver border=1 borderColor=black cellPadding=1 
      cellSpacing=1 style="WIDTH: 100%" width="100%" ID="Table8">
        
        <TR>
          <TD>If backend is SQL Server, then your Access database does not point to a 
            particular data file. Instead your access to the database is via an 
            ODBC Data Source Name (DSN). A DSN has a&nbsp;reference to &nbsp;your 
            server (NT or Windows 2000) and the database name. <a href="LinkingToASQLServerbackend.asp">(How to link your SSW Access database 
            to a SQL Server backend</a>)&nbsp; 
       </TD></TR></TABLE></TD></TR>
<TR HEIGHT=17 >
<TD WIDTH=53 > <BR></TD><TD WIDTH=661>
<BR><ol type="1">
	<li>Ensure the database is not in use.
	<li>Copy the application database onto each computer that needs to use it.
	<li>Open the application database on each computer. You can use the built-in 
    Access linked table manager (in Access under <b>Tools &gt; Database Utilities 
    &gt; Linked Table Manager</b>) to link the application database to the data 
    database.</li>                   
</ol>
</TD>
</TR>
</TABLE>

<table ID="Table9">
<tr>
<td width="8%"><br></td>
<td width="85%">
<img border="0" src="../DeveloperSQLServer/Images/accesslinkedtablemanager.gif" alt="Access linked table manager" width="596" height="473"><br>
<b>Figure: You can use the Access Linked Table Manager to re-link your tables to 
the data database </b>&nbsp;</td><td width="7%"><br></td></tr></table>

<br>

<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=0 ID="Table10">
<TR HEIGHT=17 >
<TD WIDTH=53 > <BR></TD><TD WIDTH=661 >
If you are using <a href="/ssw/upsizingpro/">SSW Upsizing PRO!</a> or
<a href="/ssw/timepro/">SSW Time PRO!</a> you can simply open the application 
and follow the instructions given on the Attachment Manager to connect to the drive where the 
data database is stored.<p>
<IMG alt="" border=0 src="Images\tennisprobox.jpg" ><br>
<b>Figure: If you are using SSW Upsizing PRO! or SSW Time PRO! you can easily 
re-link your tables using the Attachment Manager</b></TD>
</TR>
</TABLE>


<table  width="100%" border="0" ID="Table14">
 <tr hight ="300">
  <td ><br><A href="#"></A></td>
  <td></td>
  <td align="right"></td>
 </tr>
</table>
        
		</asp:content>