<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>Redirect Files Standard</title>


<script language="JavaScript" src="/ssw/include/incCheckemail.js"></script>
<bgsound id="sound" loop="1"> 
<link href="/ssw/Include/ssw.css" type="text/css" rel="stylesheet">
<link href="/SSW/Images/icoSsw.ico" rel="shortcut icon">
<script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script>
<script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>
	</head>
	<body onbeforeprint="javascript:togglePrint();" onafterprint="javascript:togglePrint();" stats=1>
<!-- Start of DeepMetrix (.NET) StatScript -->
<script language="javascript">

var DMNETdomain = "";
var DMNETpage = window.location;
var DMNETversion = "86";
var DMNETsendTo = "//www.ssw.com.au/dm.gif?";
var DMNETsession;

function dmneterr(){return true;}

window.onerror=dmneterr;
var s = new Date();

if (navigator.userAgent.indexOf('Mac') >= 0 && s.getTimezoneOffset() >= 720)
  s.setTime (s.getTime() - 1440*60*1000);

var dmnetURL = location.protocol + DMNETsendTo+"v="+DMNETversion+"&vst=1";
var dmnetCookieString = document.cookie.toString();

if(dmnetCookieString.indexOf("_dmnid") == -1)
  {
    DMNETsession = parseInt( Math.random()*1000000 ) + "_" + s.getTime();
    var domStr = "";
    if(DMNETdomain != "")
    {
      domStr = "domain="+ DMNETdomain +";";
    }
    document.cookie = "_dmnid=" + DMNETsession + ";expires=Mon, 31-Dec-2008 00:00:00 GMT;"+domStr+"path=/;";
  }
dmnetCookieString = document.cookie.toString();
if(dmnetCookieString.indexOf('_dmnid') == -1)
  {
    DMNETsession = "";
  }
else
  {
    if(dmnetCookieString.indexOf(';') == -1)
      dmnetCookieString = dmnetCookieString.replace(/_dm/g, ';_dm');

    var start = dmnetCookieString.indexOf("_dmnid=") + 7;
    var end = dmnetCookieString.indexOf(";",start);

    if (end == -1)
      end = dmnetCookieString.length;
    DMNETsession = unescape(dmnetCookieString.substring(start,end));
  }
dmnetURL += "&id="+DMNETsession+"&url="+escape(DMNETpage) + "&ref="+escape(document.referrer)+"&lng=" + ((!document.all ||  navigator.userAgent.match('Opera')) ? navigator.language : navigator.userLanguage) + "&tz=" + (Math.round(new Date('dec 1, 2002').getTimezoneOffset()/60)*-1);
if(screen)
  dmnetURL += "&scr=" + escape( screen.width + "x" + screen.height + " " + screen.colorDepth + "bpp" );

dmnetURL += "&rnd=" + new Date().getTime();

if(document.layers)
{
  document.write("<la"+"yer name=\"DMStats\" visibility=hide><img src=\""+dmnetURL+"\" height=1 width=1></la"+"yer>");
}
else
{
  document.write("<di"+"v id=\"DMStats\" STYLE=\"position:absolute;visibility:hidden;\"><img src=\""+dmnetURL+"\" height=1 width=1></di"+"v>");
}

</script>
<!-- End of DeepMetrix (.NET) StatScript -->


<TABLE WIDTH=100% BGCOLOR=white BORDER=0 CELLSPACING=0 CELLPADDING=0>
	

	<table class="clsBody" cellpadding="0" cellspacing="0" style="{ width: 100%; }" summary="Formatting Table">
		<tr>
			<td width="67" valign="top">
				<img src="/ssw/Images/SSWsmall.gif" alt="SSW Logo" width="67" height="45">
			</td>
			<!-- JAC. 20/06/03 -- <td background="/ssw/images/BackGradient.png">-->
			<td background="/ssw/images/BackGradient.png">
				<h1>Redirect Files Standard</h1>
				<td>
					<form id="frmShowLeftNav" name="frmShowLeftNav">
						<p><span style="font: 8pt Verdana"><input type="checkbox" id="chkShowLeftNav" NAME="chkShowLeftNav" onClick="javascript:toggleSSWLeftNavBar();">Hide Left Navigation</span></p>
					</form>
				</td>
			</td>
		</tr>
	</table>
		<!--<script language="JavaScript" src="/ssw/include/MenuDropDown.js" type="text/javascript"></script>-->
<!--<script language="JavaScript" src="/ssw/include/MenuDropDownData.js" type="text/javascript"></script>-->
<SCRIPT language=JavaScript type=text/javascript>
		  showToolbar();
		  updateIt();
</SCRIPT>

<!-- end heading//-->
<BR>
<table  bgcolor=white cellpadding=0 cellspacing=0 width=101% border=0>
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
									<form id="frmSearch" name="frmSearch" onsubmit="return ValidateForm(this);"  method="get">
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
									<form id="frmSearchIS" name="frmSearchIS" onsubmit="return ValidateForm(this);" action="/SSW/search.aspx" method="post">
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
									<form id="newsletter" name="newsletter"  method="get">
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
    <td colspan=5 valign="top"> 
      <p>&nbsp;</p>
      <table width="100%" cellpadding="0">
        <tr bgcolor="#ff0033"> 
          <td> 
            <div align="right">.</div>
          </td>
        </tr>
      </table>
      <table width="100%" cellpadding="0">
        <tr bgcolor="#cccccc"> 
          <td><b>Redirect 
            Standard </b></td>
        </tr>
      </table>
      <p>This is the 
        code in the htm file used to redirect to an external site.</p>
      <table width="90%" border="2" cellspacing="2" cellpadding="2" bordercolor="#FF0000">
        <tr bordercolor="#CCCCCC" bgcolor="#CCCCCC"> 
          <td>
            <p>&lt;HTML&gt;<br>
              &lt;HEAD&gt;</p>
            <p> &lt;META HTTP-EQUIV=&quot;REFRESH&quot; 
              CONTENT=&quot;0; URL=http://put your redirect address here...&quot;&gt;<br>
              </p>
            <p>&lt;/HEAD&gt;<br>
              &lt;/HTML&gt;</p>
      </td>
        </tr>
      </table>
      
      <!--#include virtual="/SSW/include/FooterSSW.htm" -->
    <td rowspan=2 width="30"></td>
  </tr>
  <tr> </tr>
</table>
</body></HTML>
