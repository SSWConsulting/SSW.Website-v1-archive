<%@ Page Language="c#" AutoEventWireup="false"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Language" content="en-au" />
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Mock Up</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" type="text/css" href="footer.css" />
<style type="text/css">
@import url('undohtml.css');
.style1 {
	font-family: "trebuchet ms", arial, tahoma, verdana, sans-serif;
	font-size: 1.8em;
	color: #EA8D1E;
}
</style>
<script language="JavaScript" type="text/javascript">

function switch1(div) {
var option=['WebsiteDevelopment','WindowsApplication','CMS','DatabaseDevelopment','SystemArchitecture','CustomSolutions'];
for(var i=0; i<option.length; i++) {
if (document.getElementById(option[i])) {
obj=document.getElementById(option[i]);
obj.style.display=(option[i]==div)? "block" : "none";
}
}
}
window.onload=function () {switch1('WebsiteDevelopment');}
</script>
</head>

<body>     
<form id="Form1" runat="server">             
    &nbsp;<div id="wrapper">
	<div id="container">
		<img src="images/topnav.gif" width="800" height="118" /><div id="featurewall">
			<img alt="Code Auditor - Keep your code healthy" src="featurewall_codeAuditor.gif" width="800" height="203" />
		</div>
		<div id="mainpane">
		
			<div class="mainsection">
				<h1>Our Development Methodology


                </h1>
				<p>SSW&#39;s Development Method XPDM, built on eXtreme Programming, 
				allows businesses to address their most important challenges first, 
				and respond quickly to a changing commercial environment. We prefer 
				to work on-site, in close consultation with you and your business 
				users, becoming an integrated part of your team. </p>
			</div>
			<div class="mainsection">
				<h1>Rules &amp; Standards</h1>
				<p>Whenever you are doing something more than once there should 
				be a standard. SSW standards manage our coding, development, project 
				management, email and phone communication. However, we don&#39;t follow 
				them blindly. If someone suggests a better way of doing something, 
				then we change the standard.</p>
			</div>
			<div class="mainsection">
				<div class="popular links">
					<h1>Popular Links:</h1>
					<ul>
						<li><a href="http://www.ssw.com.au/ssw/">Developer Training</a></li>
						<li><a href="http://www.ssw.com.au/ssw/">.NET User Group</a></li>
						<li><a href="http://www.ssw.com.au/ssw/">Content Management 
						Solutions</a></li>
						<li><a href="http://www.ssw.com.au/ssw/">News</a></li>
					</ul>
				</div>
				<div class="popular download">
					<h1>Popular Downloads:</h1>
					<ul>
						<li><a href="http://www.ssw.com.au/ssw/">Code Auditor</a></li>
						<li><a href="http://www.ssw.com.au/ssw/">eXtreme Emails!</a></li>
						<li><a href="http://www.ssw.com.au/ssw/">Link Auditor</a></li>
						<li><a href="http://www.ssw.com.au/ssw/">Upsizing Pro!</a></li>
					</ul>
				</div>
			</div>
			<div class="ad">
			<img src="/ssw/images/SSWTechBreakfastBanner.gif" /></div>
			</div>
		<div id="subpane">
			<div id="search">
				<form method="post">
					<input name="Text2" type="text" class="q" value="Search" onfocus="this.value='';" /><input name="Search" type="image" src="images/button_search.gif" width="23" height="20" class="go" /></form>
			</div>
			<div class="section">
				<h1>Upcoming Events</h1>
				<div class="section_content">
					<div class="event">
						<p class="datetime">Tuesday, 24 October 2006<br />
						9:00 AM - 11:00 AM</p>
						<p class="daystogo"><span class="style1">5</span> days to 
						go</p>
						<p><span class="thumbnail"><img src="images/thumb_expression.jpg" alt=""/></span>
						<strong><a href="javascript:;" class="eventtitle">Introduction 
						to Microsoft Expression</a></strong></p>
						<p>Learn more about the new Microsoft Expression suite and 
						how you can provide amazing UI without affecting your development 
						process.</p>
					</div>
					<asp:ScriptManager ID="MasterScriptManager" runat="server">
                    </asp:ScriptManager>
    <asp:Panel ID="Panel2" runat="server" CssClass="collapsePanelHeader" Height="30px"> 
        <div style="padding:5px; cursor: pointer; vertical-align: middle;">
            <div style="float: left;">More upcoming events</div>
            <div style="float: left; margin-left: 20px;"><asp:Label ID="Label1" runat="server">(Show More...)</asp:Label></div>
            <div style="float: right; vertical-align: middle;"><asp:Image ID="Image1" runat="server" ImageUrl="images/button_plus.gif"/></div>
        </div>
   </asp:Panel>					
				
  <asp:Panel ID="Panel1" runat="server" CssClass="collapsePanel" Height="0">
				
        <div class="event">
						        <p class="datetime">Tuesday, 24 October 2006<br />
						        9:00 AM - 11:00 AM</p>
						        <p class="daystogo"><span class="style1">5</span> days to 
						        go</p>
						        <p><span class="thumbnail"><img src="images/thumb_expression.jpg" alt=""/></span>
						        <strong><a href="javascript:;" class="eventtitle">Introduction 
						        to Microsoft Expression</a></strong></p>
						        <p>Learn more about the new Microsoft Expression suite and 
						        how you can provide amazing UI without affecting your development 
						        process.</p>
					        </div>
        <div class="event">
						        <p class="datetime">Tuesday, 24 October 2006<br />
						        9:00 AM - 11:00 AM</p>
						        <p class="daystogo"><span class="style1">5</span> days to 
						        go</p>
						        <p><span class="thumbnail"><img src="images/thumb_expression.jpg" alt=""/></span>
						        <strong><a href="javascript:;" class="eventtitle">Introduction 
						        to Microsoft Expression</a></strong></p>
						        <p>Learn more about the new Microsoft Expression suite and 
						        how you can provide amazing UI without affecting your development 
						        process.</p>
					        </div>
        <div class="event">
						        <p class="datetime">Tuesday, 24 October 2006<br />
						        9:00 AM - 11:00 AM</p>
						        <p class="daystogo"><span class="style1">5</span> days to 
						        go</p>
						        <p><span class="thumbnail"><img src="images/thumb_expression.jpg" alt=""/></span>
						        <strong><a href="javascript:;" class="eventtitle">Introduction 
						        to Microsoft Expression</a></strong></p>
						        <p>Learn more about the new Microsoft Expression suite and 
						        how you can provide amazing UI without affecting your development 
						        process.</p>
					        </div>
        <div class="event">
						        <p class="datetime">Tuesday, 24 October 2006<br />
						        9:00 AM - 11:00 AM</p>
						        <p class="daystogo"><span class="style1">5</span> days to 
						        go</p>
						        <p><span class="thumbnail"><img src="images/thumb_expression.jpg" alt=""/></span>
						        <strong><a href="javascript:;" class="eventtitle">Introduction 
						        to Microsoft Expression</a></strong></p>
						        <p>Learn more about the new Microsoft Expression suite and 
						        how you can provide amazing UI without affecting your development 
						        process.</p>
					        </div>
</asp:Panel>
	
				
</div>
			</div>
			<div class="section newsletter">
				<h1>SSW Monthly Newsletter</h1>
				<div class="section_content">
					<p>Join our newsletter and receive updates, tips, and special 
					deals on SSW events.</p>
					<form method="post">
						<input name="Text1" type="text" /><input name="btn_subscribe" type="submit" value="Subscribe" /></form>
					<p><a href="#">View Newsletter Archive</a></p>
				</div>
			</div>
			<div class="testimonial">
				<div class="rbtop">
					<div>
					</div>
				</div>
				<div class="rbcontent">
					<blockquote>
						Your app is getting very good reviews from the user base 
						and we have a queue of people lined up nationally wanting 
						to get on and use it.</blockquote>
					<br />
					<p>Simon Renton - Retail Operations- Manager Finance and Modeling, 
					Commonwealth Bank</p>
				</div>
				<!-- /rbcontent -->
				<div class="rbbot">
					<div>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<span class="copyright">Copyright � SSW 1990-2006. All Rights Reserved.
			</span>
			<ul>
				<li class="first">
				<a class="email" tabindex="100"  onclick="javascript:sendEmailWithSubjectAndBody('696e666f407373772e636f6d2e6175','Feedback','http://www.ssw.com.au/ssw/Default.aspx',this)" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer" >696e666f72407373772e636f6d2e6175</a>></li>
				<li><a href="/ssw/Company/Privacy.aspx">Privacy Policy</a></li>
				<li><a href="/ssw/Company/AboutUs.aspx">About SSW</a></li>
				<li><a href="/ssw/Advertising/Default.aspx">Advertising</a></li>
				<li class="last"><a href="/ssw/MenuMap.aspx">Sitemap</a></li>
			</ul>
			<span class="proudly">Proudly developed by
			<a href="http://www.ssw.com.au">SSW Sydney Web Designers</a></span>
			<p class="serverName">Server: ANT</p>
		</div>
	</div>
</div>

    <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server"
            TargetControlID="Panel1"
            ExpandControlID="Panel2"
            CollapseControlID="Panel2" 
            Collapsed="True"
            TextLabelID="Label1"
            ExpandedText="(Hide Details...)"
            CollapsedText="(Show More...)"
            ImageControlID="Image1"
            ExpandedImage="images/button_minus.gif"
            CollapsedImage="images/button_plus.gif"
            SuppressPostBack="true"    
    >
    </ajaxToolkit:CollapsiblePanelExtender></form>  
</body>

</html>

