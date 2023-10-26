<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="Terry Su - About Me"  %>



<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script><script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>				
		<H2>Terry Su</H2>
<ol>
	<li>
		<div><h3>University</h3></div>
		<div>I have done my bachelor in Computer Science and Technology in China.</div>
	</li>
	<li>
		<div><h3>Others about me </h3></div>
		<div>I like playing basketball with my friends.</div>
	</li>
	<li>
		<div><h3>Experience</h3></div>
		<div>I have about 2 years experience on OA and KM developing.</div>
	</li>
</ol>
<!--SSW Code Auditor - Ignore next line(HTML)-->  
<p>Connect me at <a href="mailto:terrysu@ssw.com.au">Terry Su</a></p>

<p>Return to the Employees<a href="/SSW/Employees/employeesXML.aspx"> Go Back</a></p>


		</asp:content>