<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="Wilson Wu - About Me"  %>



<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script><script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>				
		<H2>Wilson Wu</H2>
<ol>
	<li>
		<div><h3>University</h3></div>
		<div>I will graduate from Jiujiang University in July of 2007,and
            my subject is Computer
            Science and Technology.<br />
        </div>
	</li>
	<li>
		<div><h3>Others about me </h3></div>
		<div>
            I like coding, computer games and so on about computer.<br />
        </div>
	</li>
	<li>
		<div><h3>Experience</h3></div>
		<div>
            Remedy develop in Beijing NewBase Technology Company for six months.</div>
            
		<div>
            .NET develop in Shenzhen Meifo Technology Company about two years.</div>
	</li>
</ol>
<!--SSW Code Auditor - Ignore next line(HTML)-->  
<p>Connect me at <a href="mailto:wilsonwu@ssw.com.au">Wilson Wu</a> </p>

<p>Return to the Employees<a href="/SSW/Employees/employeesXML.aspx"> Go Back</a></p>


		</asp:content>