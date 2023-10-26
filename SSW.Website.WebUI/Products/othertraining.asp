<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>SSW Developer Training</title>
<Link rel="stylesheet" type="text/css" href="/ssw/Include/sswmenu.css">
<link href="/ssw/Images/IcoSSW_v2.ico" rel="shortcut icon">
<script language="JavaScript" src="/ssw/Include/incCheckemail.js"></script>

</head>

<body TOPMARGIN="0" LEFTMARGIN="0" MARGINWIDTH="0" MARGINHEIGHT="0" TEXT="#000000" ALINK="#003399" LINK="#003399" VLINK="#003399" >
<bgsound id="sound" loop="1"> 
<TABLE WIDTH=100% BGCOLOR=white BORDER=0 CELLSPACING=0 CELLPADDING=0>
	
<TR>
    <TD><img src="/ssw/Images/SSWsmall.gif" alt="SSW" name="Image1" ><img src='Images/hdTraining.gif' alt="SSW" width="450" height="45" ><img src='../Images/hd_2.gif' alt="SSW" width="200" height="45" ></TD>
  </TR>
</TABLE>
		
<SCRIPT language=JavaScript type=text/javascript>
		  showToolbar();
		  updateIt();
</SCRIPT>


<!-- end heading//-->
<BR>
<table  bgcolor=white cellpadding=0 cellspacing=0 width=100% border=0>
  <tr><!-- spacer row - specify all others with colspan or rowspan--><!--1-->
    <td width=11></td>
    <!--2-->
    <td width=213></td>
    <!--3-->
    <td width=1></td>
    <!--4-->
    <td width=24></td>
    <!--5-->
    <td width=362></td>
    <!--6-->
    <td width=32></td>
    <!--7-->
    <td width=97></td>
    <!--8-->
    <td width=32></td>
    <!--9-->
    <td width=208></td>
    <!--10-->
    <td width=30></td>
  </tr>
  <tr><!-- spacer column --> 
    <td rowspan=2 valign="top"  colspan=2 >
		<table cellspacing="2" cellpadding="2" summary="Formatting Table" ID="Table1">
				<tr>
					<td>
						 <!--SSW Link Auditor - Ignore begin--> <form id="frmSearch" name="frmSearch" onsubmit="return ValidateForm(this);" action="/ssw/frmEmailProcess.asp" method="get"> <!--SSW Link Auditor - Ignore end--> 
							<table align="center" cellspacing="0" cellpadding="0" summary="Formatting Table" ID="Table2">
								<tr>
									<td nowrap>
										<span class="clsLeftNavBar">Search Knowledge Base</span>
									</td>
								</tr>
								<tr>
									<td  nowrap>
										<input id="searchFor" name="searchFor" maxlength="60" size="10"> <input type="submit" class="clsInputButton" id="btnSubmit" name="btnSubmit" value="Search">
										<input type="hidden" id="searchON" name="searchON" value="Words">
									</td>
								</tr>
							</table>
						</form>
						<form id="frmSearchIS" name="frmSearchIS" onsubmit="return ValidateForm(this);" action="/ssw/search.aspx" method="post">
							<table align="center" cellspacing="0" cellpadding="0" summary="Formatting Table" ID="Table3">
								<tr>
									<td>
										<span class="clsLeftNavBar">Search SSW Website</span>
									</td>
								</tr>
								<tr>
									<td>
										<input id="query" name="query" maxlength="60" size="10"> <input type="submit" class="clsInputButton" id="btnSubmitIS" name="btnSubmitIS" value="Search">
									</td>
								</tr>
							</table>
						</form>
                        <!--SSW Link Auditor - Ignore begin--> 
						<form id="newsletter" name="newsletter" action="/ssw/frmEmailProcess.asp" method="get">
                         <!--SSW Link Auditor - Ignore end--> 
							<table align="center" cellspacing="0" cellpadding="0" summary="Formatting Table" ID="Table4">
								<tr>
									<td>
										<span class="clsLeftNavBar">Free Newsletter</span>
									</td>
								</tr>
								<tr>
									<td  nowrap>
										<input type="text" id="ctlemail" name="ctlemail" maxlength="60" size="10" value="Your Email" onblur="if (value == '') {value = 'Your Email'}" onfocus="if (value == 'Your Email') {value =''}">
										<input type="submit" id="btnSubmit2" class="clsInputButton" value="Sign Up" onclick="return emailOK(document.newsletter.ctlemail.value);" NAME="btnSubmit2">
										<input type="hidden" id="T" name="T" value="FreeNewsletter">
									</td>
								</tr>
							</table>
						</form>
                       
					</td>
				</tr>
		</table>
	 
    </td>
    <!-- spacer column --> 
    <td rowspan=2 bgcolor="#7d7d7d" width="1"></td>
    <!-- spacer column --> 
    <td rowspan=2 width="24"></td>
    <!--main content cell-->
    <td colspan=5 valign="top"> <br>
      <br>
       
      <p><br>
      </p>
       
      <table width="100%" cellpadding="2" cellspacing="2" border="2" bordercolor="#FF0000">
        <tr bgcolor="#cccccc"> 
          <td height="16" bordercolor="#FFFFFF"><b>Training 
            Topics</b></td>
        </tr>
        <tr bgcolor="#cccccc"> 
          <td height="178" bordercolor="#FFFFFF">
            <p><a href="#14">14</a>. 
              Get to know ALL about ActiveX Data Objects (ADO)<br>
              <a href="#15">15</a>. Advanced ADO<br>
              <a href="#19">19</a>. Utilising XML as the Solution for n-Tier Development<br>
               </p>
            </td>
        </tr>
      </table>
      <p> <br>
        <a name="14"></a>
      <table width="100%" cellpadding="0">
        <tr bgcolor="#ff0033"> 
          <td>.</td>
        </tr>
        <tr bgcolor="#cccccc"> 
          <td><b> 
            14. Get to know ALL about ActiveX Data Objects (ADO)</b></td>
        </tr>
      </table>
      <p>ActiveX Data 
        Objects (ADO) is Microsoft's strategic, high-level interface for all kinds 
        of data. ADO provides the fastest, easiest and most productive means for 
        accessing both relational and non-relational data. You'll review the ADO 
        object model, and the role of the Connection, Command, Recordset, and 
        Parameters objects. Learn how to use ADO to build database solutions in 
        Access, Visual Basic, and Office.</p>
      <ul>
        <li> What 
          is ADO? 
        <li> Assessing 
          when to use ADO and when to use DAO 
        <li> Understanding 
          connection strings to ensure your code will work with any back-end 
        <li> Minimising 
          network traffic via ADO access over the Internet and Intranets</li>
      </ul>
      <p>Build on 
        your skill set by:</p>
      <ul>
        <li> Creating 
          recordsets 
        <li> Updating 
          recordset data, deleting records and working with multiple result sets 
        <li> Creating 
          and using Command Objects 
        <li> Developing 
          a constant connection to your datasource </li>
      </ul>
      <a name="15"></a> 
      <table width="100%" cellpadding="0">
        <tr bgcolor="#ff0033"> 
          <td>.</td>
        </tr>
        <tr bgcolor="#cccccc"> 
          <td><b>15. 
            Advanced ADO</b></td>
        </tr>
      </table>
      <p>Catapult 
        your working knowledge of ADO through this intensive session packed full 
        of key features. To name a few: </p>
      <ul>
        <li>Executing 
          a stored procedure  
          <ul>
            <li> input 
              and output parameters  
            <li> return 
              values </li>
          </ul>
        <li> Utilising 
          prepared statements  
        <li> Returning 
          multiple result sets to a single Recordset object  
        <li> Using 
          ADO to support complex cursors, including batch, client and server side 
          cursors  
        <li> Using 
          batch updating  
        <li> Generating 
          multiple result sets  
        <li> Working 
          with Persistent Recordsets  
        <li> Asynchronous 
          Operations  
        <li> Using 
          ADOx for Data Definition Language (DDL) operations </li>
      </ul>
      <p><br>
         </p>
      <a name="19"></a> 
      <table width="100%" cellpadding="0">
        <tr bgcolor="#ff0033"> 
          <td height="17">. </td>
        </tr>
      </table>
      <table width="100%" cellpadding="0">
        <tr bgcolor="#cccccc"> 
          <td height="19"><b>19. 
            Maximise the benefits of XML in your N-tier applications</b></td>
        </tr>
      </table>
      <br>
      This session 
      will highlight and detail how and where XML can be utilised within data 
      tiers. We will discuss the advantages of XML over DCOM and MTS/COM+. You&#146;ll 
      also be given a snapshot profile on how to:  
      <ul>
        <li> Build 
          stateless objects with XML via ADO</li>
        <li> Design 
          COM objects to use XML efficiently </li>
        <li> Develop 
          an N-tier solution that can use the Internet as its network </li>
        <li> Build 
          highly scalable distributed applications</li>
        <li> Use Data 
          Islands for &quot;rich&quot; browser development <br>
           </li>
      </ul>
      <td rowspan=2 width="30"></td>
  </tr>
  <tr> </tr>
</table>
</body></HTML>
