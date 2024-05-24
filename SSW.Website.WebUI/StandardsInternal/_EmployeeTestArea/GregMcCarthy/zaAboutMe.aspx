<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="Greg McCarthy - About Me"  %>



<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script><script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>				
		<h2>Greg McCarthy</h2>
<ol>
	<li>
		<div><h3>Who AM I?</h3></div>
		<br /><div>I am Greg McCarthy. Born in Detroit, Michigan USA. Interning in SSW's Beijing office as a software developer.</div>
	</li>
	<li>
		<div><h3>What I did before?</h3></div>
		<div>I worked for an architecture firm's IT department for 4 years in Detroit, Michigan
        </div>
	</li>
	<li>
		<div><h3>What do I like?</h3></div>
		<div>My hobbies are studying Chinese, writing code in .NET, going to the park, and exercising.
        </div>
	</li>
</ol>
<!--SSW Code Auditor - Ignore next line(HTML)-->  
<p>Connect me at <a href="mailto:gregmccarthy@ssw.com.au">Greg McCarthy</a> </p>

<p>Return to the Employees<a href="/SSW/Employees/employeesXML.aspx"> Go Back</a></p>


		</asp:content>