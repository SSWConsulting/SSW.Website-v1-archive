<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<TITLE>How to use AccessDB on Network</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html;charset=windows-1252">
<LINK href="/ssw/Include/ssw.css" type="text/css" rel="stylesheet">
</HEAD>
<% if Request.QueryString("pageNo")= 1 or Request.QueryString("pageNo")= "" then%>

<BODY>
<p ALIGN="center"><IMG border=0 height=218 alt="SSW Logo" src="Images/image10.gif" width=287></p>
<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=0 >
<TR HEIGHT=28 >
<TD WIDTH="8%" > <BR></TD><TD WIDTH="85%"  align="middle"><B>How to link your SSW Access database to an Access or SQL backend</B></TD><TD WIDTH="7%"> <BR></TD>
</TR>

<tr><td><br></td></tr>

<TR HEIGHT=17 >
<TD WIDTH="8%" > <BR></TD><TD WIDTH="85%" >
      <P>Your database consists of 2 main files. The 
      application file and the data file. The application file (including the 
      application database, postcode database, icons, etc) is installed locally 
      on to C: drive (i.e. the 
hard drive on your computer). The data file is the only file that should be stored on the network 
drive, i.e. F: drive.</P>
      <P>Note: SSW recommends Microsoft Access also be installed locally on the C: drive.  
To share a Microsoft Access database across a network, the 'data' database e.g. SSWDATA.MDB, needs to be moved to a 
location on the network that is accessible by everyone who wants to use the database. The 'data' database contains only 
tables and your data, not forms and reports. It can be recognised by the word data in its name. 
<br><br>A copy of the 'application' database e.g. SSW.MDB is 
      required on each computer to access the shared data. This file contains 
      the forms, reports, saved queries and programming.</P></TD><TD WIDTH="7%"> <BR></TD>
</TR>
</TABLE>


<table>
<tr>
<TD WIDTH="8%" ><br></TD><td WIDTH ="85%" TD>
<IMG alt="" border=0 height=651 src="/SSW/Images/ImagesPastAndOld/network1.jpg" width=530> </TD><td WIDTH="7%"><br></td></tr></table>
<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=0 >
<TR HEIGHT=17 >
<TD WIDTH="8%" > <BR></TD><TD WIDTH="85%" >The data database is usually placed on a shared drive such as E:, F: or G:. If you do not know where your 'data' database 
should be placed, contact your network administrator. If you are not sure which database is the 'application' database and which is the 'data' database, contact SSW.</TD><TD WIDTH="7%"> <BR></TD>
</TR>
</TABLE>

<table  width="100%" border="0">
 <tr hight ="300">
  <td ><br><A href="#"></A></td>
  <td></td>
  <td align="right"></td>
 </tr>
<form action="AttachmentManagerOverview.asp" id=form1 name=form1 method="get">

<tr><td width="30%" align="left"><input type=hidden value="2" name="pageNo"> </td><td><INPUT disabled id=submit1 name=Action type=submit value="<< Previous">&nbsp;&nbsp;&nbsp;&nbsp; 
<INPUT id="submit2" name=Action type=submit value="Next >>"></td><td width="30%" align="right" nowrap>Page 1 of 2</td></tr>
</form>
<tr><td colspan="3"></td></tr>
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
<%Else%>
<BODY LINK="#0000ff">

<p ALIGN="center"><IMG border=0 height=218 alt="SSW Logo" src="Images/image10.gif" width=287></p>
<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=0 >
<TR HEIGHT=23 >
<TD WIDTH=53 > <BR></TD><TD WIDTH=661 ><B>&nbsp;&nbsp;&nbsp;Moving the Database and Reconnecting to the Data</B></TD>
</TR>
</TABLE>


<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=0 >
  
  <TR>
    <TD width=53></TD>
    <TD width=661>&nbsp;
      <TABLE bgColor=silver border=1 borderColor=black cellPadding=1 
      cellSpacing=1 style="WIDTH: 100%" width="100%">
        
        <TR>
          <TD>If backend 
            is SQL Server, then your Access database does not point to a 
            particular data file. Instead your access to the database is via an 
            ODBC Data Source Name (DSN). A DSN has a&nbsp;reference to&nbsp;your 
            server (NT or Windows 2000) and the database name. <A href="SQLServerbackend.asp">( How to link your SSW Access database 
            to a SQL Server backend</a>)&nbsp; 
        </TD></TR></TABLE></TD></TR>
<TR HEIGHT=17 >
<TD WIDTH=53 > <BR></TD><TD WIDTH=661 >
<br>
<ol type="1">
	<li>Ensure the database is not in use.
	<li>Install the database on each computer that needs to use it.
	<li>If you are using Windows 95 (and do not already have a server computer), choose the most powerful computer to act as a non-dedicated server.
	<li>Install the database on your server.
	<li>Delete the 'data' database (not the 'application' database) from every computer EXCEPT the server.
	<li>Open the database on each computer. The 
        databases will not find the data and the attachment manager screen is 
        displayed.</li>                   
</ol>
</TD>
</TR>
</TABLE>

<table>
<tr>
<td width="8%"><br></td>
<td width="85%">
<IMG alt="" border=0 src="Images\tennisprobox.jpg" >

</td><td width="7%"><br></td></tr></table>

<br>

<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=0 >
<TR HEIGHT=17 >
<TD WIDTH=53 > <BR></TD><TD WIDTH=661 >

<ol start="7">

<li type="1">Follow the instructions given on the Attachment Manager to connect to the drive where the 'data' database is stored.
</li></ol></TD>
</TR>
</TABLE>
<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=0 >
<TR HEIGHT=15 >
<TD WIDTH=53 > <BR></TD><TD WIDTH=661 > <BR></TD>
</TR>
</TABLE>
<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=0 >
<TR HEIGHT=15 >
<TD WIDTH=53 > <BR></TD><TD WIDTH=661 >The main menu of the database will show the loacation of the data database.</TD>
</TR>
</TABLE>
<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=0 >
<TR HEIGHT=15 >
<TD WIDTH=53 > <BR></TD><TD WIDTH=661 > <BR></TD>
</TR>
</TABLE>


<table  width="100%" border="0">
 <tr hight ="300">
  <td ><br><A href="#"></A></td>
  <td></td>
  <td align="right"></td>
 </tr>
<form action="AttachmentManagerOverview.asp" id=form1 name=form1 method="get">
<tr><td width="30%" align="left">  </td><td><INPUT id=submit1 name=Action type=submit value="<< Previous">&nbsp;&nbsp;&nbsp; 
<INPUT disabled id="submit2" name=Action type=submit value="Next >>"></td><td width="30%" align="right" nowrap>Page 2 of 2</td></tr>

<tr><td colspan="3"></td></tr>
</table>
</form>
<table border="0">
<tr>
<td width="15%"></td>
   <td align="middle"><!--#include virtual="/ssw/Include/FooterSSW.htm"-->
   </td>
   <td width="15%"></td>
</tr>


</table>
</BODY>

<%End if%>
</HTML>