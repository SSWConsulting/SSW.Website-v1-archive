<%@ Control Language="C#" AutoEventWireup="false" Codebehind="incMainTimePROOnline.ascx.cs" Inherits="SSW.Website.WebUI.include.incMainTimePROOnline" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" />
<HTML>
  <HEAD>
		<TITLE>
		</TITLE>
			<META http-equiv="PICS-Label" content='(PICS-1.1 "http://www.icra.org/ratingsv02.html" l gen true for "http://www.ssw.com.au" r (cz 1 lz 1 nz 1 oz 1 vz 1) "http://www.rsac.org/ratingsv01.html" l gen true for "http://www.ssw.com.au" r (n 0 s 0 v 0 l 0))'>
			<META http-equiv="Pragma" content="no-cache">
			<META http-equiv="Cache-Control" content="no-cache">
			<LINK href="/ssw/Include/ssw.css" type="text/css" rel="stylesheet">
				<LINK href="/ssw/Images/icoSsw_v2.ico" rel="shortcut icon">
					<SCRIPT language="JavaScript" type="text/javascript">
							function UserLoggedStatus()
							{
								return "";
							}

					</SCRIPT>				
					<SCRIPT language="JavaScript" src="/ssw/Include/Validation.js" type="text/javascript"></SCRIPT>
					<SCRIPT language="JavaScript" src="/ssw/Include/Printing.js" type="text/javascript"></SCRIPT>
	<!--onload="javascript:showLeftNavBar();"-->
  </HEAD>
<body onafterprint="javascript:togglePrint();" onbeforeprint="javascript:togglePrint();">
	
<div id="headerTPO">
	<div id="headerTitleTPO">
		<span>
			<script>
				var title = document.title;
				var titleTrimmed = title.replace("SSW - ", "").replace("SSW ?", ""); //Note the different types of dashes!
				document.write("<h1 class=headerTitle>" + titleTrimmed + "</h1>");
			</script>
		</span>
	</div>
	<div id="headerMenuTPO">
		<div id="headerMenuLeftTPO"></div>
		<script type="text/javascript" src="/ssw/include/includes/browser_tpo.js"></script>
	</div>
</div>

<SCRIPT language="JavaScript" type="text/javascript">
		function updateIt()
		{
			if (document.all)
			{
				setTimeout("updateIt()", 200);
			}
		}

</SCRIPT>		
		
		<% If Not Me.HideLeftNav Then %>
	<script language="JavaScript" type="text/javascript">var leftNavVisible = true;</script>
<% Else %>
	<script language="JavaScript" type="text/javascript">var leftNavVisible = false;</script>
<% End If %>
		
			<TABLE cellSpacing="0" border="0" cellPadding="0" summary="Formatting Table" width="100%">
					<TR>
					<% If Not Me.HideLeftNav Then %>
						<TD id="leftNav" valign="top" width="523">
						<!--Left Side Nav.-->
						<!--<div id="hideLeftNav">
				<a href="javascript:hideLeftNavBar();" title="Close left navigation bar">Hide Left Navigator <img src="/ssw/Images/CloseLeftNav.gif" alt="Close Left Navigation Bar"></a></div>-->
	        			<!--Old Left Navigation-->
	        			<div id="hideLeftNav">
							<a href="javascript:hideLeftNavBar();" alt="Close left navigation bar">Hide Left Navigator <img src="/ssw/Images/CloseLeftNav.gif" alt="Close left navigation bar"></a>
						</div>
						<br>
							<TABLE cellSpacing="2" cellPadding="2" summary="Formatting Table" width="50%">
								<TR>
									<TD>
										
											<TABLE cellSpacing="0" cellPadding="2" summary="Formatting Table">
												<tr><td><h2>Welcome</h2></td></tr>
												<tr>
													<td>
														<table class="clsTblSmallText" style="MARGIN-TOP : 4px; MARGIN-LEFT : 5px" cellpadding="3">
															<tr><td><asp:Literal id="lblWelcome" runat="server"></asp:Literal></td></tr>
															<tr><td><%=Application("ActiveUsers")+20%> Current Users</td></tr>
														</table>
													</td>
												</tr>	
											</TABLE>
											<br>
											<!--<TABLE cellSpacing="0" cellPadding="2" summary="Formatting Table" width="100%">					
												<tr>
													<TD colspan="2" class="clsLeftNavBar">Search SSW Intranet</TD>
												</tr>
												<TR>
													<TD vAlign="top"><FORM id="frmSearchIntranet" name="frmSearchIntranet" onsubmit="return ValidateForm(this);" action="http://bee:81/Search.aspx" method="get">&nbsp;<INPUT id="k" maxLength="60" size="16" name="k"> <INPUT class="clsInputButton" id="btnSubmit" type="submit" value="Go" name="btnSubmitIntranet"><INPUT id="s" type="hidden" value="All%20sources" name="s"></FORM></TD>
													<td align="right"><IMG src="/ssw/Images/SharePointlogo.gif" alt="SharePoint Portal Server 2003" width="50"></td>
												</TR>
											</TABLE>-->
											<TABLE cellSpacing="0" cellPadding="2" summary="Formatting Table" width="90%">
											<tr><td colspan=2><h2>Search SSW Intranet</h2></td></tr>
											<TR>
											<TD vAlign="top"><FORM id="frmSearchIntranet" name="frmSearchIntranet" onsubmit="return ValidateForm(this);" action="http://roo/Search.aspx" method="get">&nbsp;<INPUT id="k" maxLength="60" size="14" name="k"> <INPUT class="clsInputButton" id="btnSubmit" type="submit" value="Go" name="btnSubmitIntranet"><INPUT id="s" type="hidden" value="All%20sources" name="s"></FORM></TD>
											<td align="right"><IMG src="/ssw/Images/SharePointlogo.gif" alt="Share Point" width="50"></td>
											</TR>
											</TABLE>
											<!-- <TABLE cellSpacing="0" cellPadding="2" summary="Formatting Table" width="100%">
												<TR>
													<TD colspan="2" class="clsLeftNavBar">Search SSW Website</TD>
												</TR>
												<TR>
													<TD><FORM id="frmSearchIS" name="frmSearchIS" onsubmit="return ValidateForm(this);" action="/ssw/search.aspx" method="post">&nbsp;<INPUT id="query" maxLength="60" size="12" name="query"> <INPUT class="clsInputButton" id="btnSubmitIS" type="submit" value="Go" name="btnSubmitIS"></FORM></TD>
													<TD align="right"><IMG src="/ssw/Images/IndexServer.jpg" alt="Microsoft Index Server"></TD>
												</TR>
											</TABLE> -->
											<!--<TABLE cellSpacing="0" cellPadding="2" summary="Formatting Table" width="100%">
												<tr><td colspan=2><h2>Search SSW Website</h2></td></tr>
												<TR>
													<TD><FORM id="frmSearchIS" name="frmSearchIS" onsubmit="return ValidateForm(this);" action="/ssw/search.aspx" method="post">&nbsp;<INPUT id="query" maxLength="60" size="14" name="query"> <INPUT class="clsInputButton" id="btnSubmitIS" type="submit" value="Go" name="btnSubmitIS"></FORM></TD>
													<TD align="right"><IMG src="/ssw/Images/IndexServer.jpg" alt="Index Server" ></TD>
												</TR>
											</TABLE>-->
											<TABLE cellSpacing="0" cellPadding="2" summary="Formatting Table" width="90%">
												<tr><td colspan=2><h2>Search SSW Website</h2></td></tr>
												<TR>
													<TD><FORM id="frmSearchIS" name="frmSearchIS" onsubmit="return ValidateForm(this);" action="/ssw/search.aspx" method="post">&nbsp;<INPUT id="query" maxLength="60" size="14" name="query"> <INPUT class="clsInputButton" id="btnSubmitIS" type="submit" value="Go" name="btnSubmitIS"></FORM></TD>
													<TD align="right"><IMG src="/ssw/Images/IndexServer.jpg" alt="Index Server" ></TD>
												</TR>
											</TABLE>
											<!--<TABLE cellSpacing="0" cellPadding="2" summary="Formatting Table" width="100%">
												<TR><TD colspan="2" class="clsLeftNavBar">SSW KB Search</TD></TR>
												<TR>
													<TD><FORM id="frmSearch" name="frmSearch" onsubmit="return ValidateForm(this);" action="/ssw/KB/KBResult.aspx" method="get">&nbsp;<INPUT id="searchFor" maxLength="60" size="17" name="searchFor"> <INPUT class="clsInputButton" id="btnSubmit" type="submit" value="Go" name="btnSubmit">
														<INPUT id="searchON" type="hidden" value="Words" name="searchON"></FORM>
													</TD>
													<td align="right"><IMG src="/ssw/Images/sswsmall_whitebg.gif" alt="Superior Software For Windows"></td>
												</TR>
											</TABLE>-->
											<TABLE cellSpacing="0" cellPadding="2" summary="Formatting Table" width="90%">
												<tr><td colspan=2><h2>Search SSW KB</h2></td></tr>
												<TR>
													<TD><FORM id="frmSearch" name="frmSearch" onsubmit="return ValidateForm(this);" action="/ssw/KB/KBResult.aspx" method="get">&nbsp;<INPUT id="searchFor" maxLength="60" size="14" name="searchFor"> <INPUT class="clsInputButton" id="btnSubmit" type="submit" value="Go" name="btnSubmit">
														<INPUT id="searchON" type="hidden" value="Words" name="searchON"></FORM>
													</TD>
													<td align="right"><IMG src="/ssw/Images/sswsmall_whitebg.gif" alt="SSW" ></td>
												</TR>
											</TABLE>	
										<asp:Placeholder runat="server" Visible="true" id="BasicSearches"></asp:Placeholder>												
										<asp:Placeholder runat="server" id="MoreSearches" Visible="false"></asp:Placeholder>
											<TABLE cellSpacing="0" cellPadding="2" summary="Formatting Table" width="90%">
												<TR>
													<TD colspan="2" class="clsLeftNavBar">TimePro Company Search</TD>
												</TR>
												<TR>
													<TD><FORM id="frmSearchTP" name="frmSearchTP" onsubmit="document.frmSearchTP.WHERE.value = 'ClientContact.FirstName LIKE \'%' + searchFor.value + '%\' OR ClientContact.Surname LIKE \'%' + searchFor.value + '%\' OR ClientContact.CoName LIKE \'%' + searchFor.value + '%\''; return ValidateForm(this);" action="/TimeProOnline/ClientSearch.aspx" method="get">&nbsp;<INPUT id=searchFor maxLength=60 
								                  size=14 searchFor?> <INPUT class=clsInputButton id=btnSubmit type=submit value=Go name=btnSubmit> 
								                  <INPUT id=WHERE type=hidden 
								                  value="ClientContact.FirstName LIKE '%searchFor%'" name=WHERE> 
								                  <INPUT id=searchON type=hidden value=Words 
								                  name=searchON></FORM></TD>
								                <TD><IMG src="/ssw/Images/sswTimePro_ReallyLittle.gif" alt="TimePro!"></TD></TR>
											</TABLE>
									<TABLE cellPadding="2" summary="Formatting Table" cellSpacing=0>
								<TR>
									<TD class="clsLeftNavBar">Free Monthly Newsletter</TD>
								</TR>
								<TR>
									<TD>
                                    <form id="Form1" name="newsletter" action="/ssw/Shop/ClientDetailNew.aspx" method="get">
										<input type="text" id="Email" name="Email" class="clsInput" maxlength="60" size="20" value="Your Email" onblur="if (value == '') {value = 'Your Email'}" onfocus="if (value == 'Your Email') {value =''}" >
										<input type="hidden" id="Tag" name="Tag" value="FreeNewsletter">
										<input type="submit" id="Submit1" class="clsInput" value="Sign Up" onclick="return emailOK(document.newsletter.ctlemail.value);" >
									</form>									
									
									</TD>
								</TR>
							<tr><td class="clsLeftNavBar">Quick Links</td></tr>
							
							<tr><td><ul style="MARGIN-TOP : 6px; MARGIN-LEFT : 22px; TEXT-INDENT : 4px">
								<li><a href="/TimeproOnline/">Time PRO Online</a>
								<li><a href="http://bee/Reports/Pages/Folder.aspx?ItemPath=%2fSSW+Exchange+Reporter+(Live)&IsDetailsView=False">Exchange Reporter</a> (SSWData) - Bee (Internal Only)
                    
								<li><a href="http://reports.ssw.com.au/Reports/Pages/Folder.aspx?ItemPath=%2fSSW+Exchange+Reporter+(Samples)&IsDetailsView=False">Exchange Reporter</a> (Demo) 
                    
								<li><a href="http://cow/teamcalendar/">Team Calendar</a> (SSWData) - Cow (Internal Only) 
                    
								<li><a href="/TimePROOnline/zsMaintenance/MenuExternal.aspx">Edit Menus</a> (Site) 
                    
								<li><a href="/TimePROOnline/zsMaintenance/MenuInternal.aspx">Edit Menus</a> (Time PRO)</A>
								<li><a href="/ssw/zsValidate/">Validation Tests</a>
								</li>
							</ul></td></tr>
								<TR>
									<TD align="left">
										<TABLE>
											<TR>
												<TD width="190">
													<asp:Label id="lblFillFromMenu" style="FONT-SIZE: xx-small" runat="server"></asp:Label></TD>
											</TR>
										</TABLE>
										<BR>
									</TD>
								</TR>
								<TR>
									<TD vAlign="top" align="center">
										<asp:Label id="lblSideExtra" style="FONT-SIZE: xx-small" runat="server"></asp:Label>
										<asp:Label id="lblSideVersion" runat="server"></asp:Label></TD>
								</TR></TABLE>
						
					</TD>
				</TR>
			</TABLE>
		</TD>
		<% End If %>
    <TD><!--
        This is the main document.
        -->
			<% If Me.HideLeftNav Then %>
			<div id="showLeftNav">
				<a href="javascript:showLeftNavBar();" alt="Show left navigation bar">Show Left Navigator</a>
			</div>
			<div id="printTitle" style="display: none;">
				<span>
					<script type="text/javascript">
						document.write("<h1>" + document.title + "</h1>");
					</script>
				</span>
			</div>
			<% End If %>        
			<DIV id=content>
				<DIV id=contentContainer>