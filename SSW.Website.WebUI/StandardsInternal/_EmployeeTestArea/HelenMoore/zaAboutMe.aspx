<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="Helen Moore - About Me"  %>


<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script><script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>				
		<H2>Helen Moore</H2>
		<ol>
			<LI>
				<div><H3>Role at SSW</H3></div>
				<div>
					At SSW I am responsible for making sure Adam organised and all the reception duties.
				</div>
			</LI>
			<LI>
				<div><H3>Personal Traits</H3></div>
				<div>
					I enjoy watching movies, listening to music and being with friends.
				</div>
				<div>
					
				</div>
			</LI>
			<LI>
				<div><H3>Previous Experience</H3></div>
				<div>
					I am halfway through a science degree at Sydney University, and hope to finish it one day when I finally pick my major.
				</div>
			</LI>
		</ol>
			
	
		<p>My email here is <a onclick="javascript:sendEmailWithoutSubject('48656c656e4d6f6f7265407373772e636f6d2e6175',this)" category="HelenMoore" process='true' onmouseover="self.status='mailto:' + decodeit('48656c656e4d6f6f7265407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer" >48656c656e4d6f6f7265407373772e636f6d2e6175</a></p>
		<p>Return to the<a href="/SSW/Employees/employeesXML.aspx"> SSW Employee's page</a>.</p>
		</asp:content>