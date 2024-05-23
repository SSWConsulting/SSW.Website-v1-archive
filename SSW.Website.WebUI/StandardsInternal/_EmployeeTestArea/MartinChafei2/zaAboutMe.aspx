<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="Allan Zhou - About Me"  %>



<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script><script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>				
		<H2>Allan Zhou</H2>
<ol>
	<li>
		<div><h3>Who AM I?</h3></div>
		<div>I'm a new stuff to SSW as a senior .Net developer.
        </div>
	</li>
	<li>
		<div><h3>What I did before?</h3></div>
		<div>I worked in an Australia Software development company in the past 3 years and majorty in crchitecture.
        </div>
	</li>
	<li>
		<div><h3>What do I like?</h3></div>
		<div>Basketball
        </div>
	</li>
</ol>
<!--SSW Code Auditor - Ignore next line(HTML)-->  
<p>Connect me at <a href="mailto:allanzhou@ssw.com.au">Allan Zhou</a> </p>

<p>Return to the Employees<a href="/SSW/Employees/employeesXML.aspx"> Go Back</a></p>


		</asp:content>