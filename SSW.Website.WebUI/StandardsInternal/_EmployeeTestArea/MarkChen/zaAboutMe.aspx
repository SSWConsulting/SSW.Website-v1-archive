<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="Mark Chen - About Me"  %>



<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script><script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>				
		<H2>Mark Chen</H2>
<ol>
	<li>
		<div><h3>University</h3></div>
		<div>I graduated from NorthEast University and got my bachelor in China.</div>
	</li>
	<li>
		<div><h3>Others about me </h3></div>
		<div>I like playing tennis.</div>
	</li>
	<li>
		<div><h3>Experience</h3></div>
		<div>I have about 2 years experience on .net and sqlserver database,I like doing .Net Development and really enjoy programming Windows and the Web .</div>
	</li>
</ol>
<!--SSW Code Auditor - Ignore next line(HTML)-->  
<p>Connect me at <a href="mailto:MarkChen@ssw.com.au">Mark Chen</a></p>

<p>Return to the Employees<a href="/SSW/Employees/employeesXML.aspx"> Go Back</a></p>


		</asp:content>