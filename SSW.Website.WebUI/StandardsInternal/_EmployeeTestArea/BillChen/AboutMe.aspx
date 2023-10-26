<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="Bill Chen - About Me"  %>



<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script><script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>				
		<H2>Allan Zhou</H2>
<ol>
	<li>
		<div><h3>Who AM I?</h3></div>
		<div><img src="images/photo.jpg"  alt="Bill's Photo" /> <br />I am Bill Chen in SSW as a .Net developer </div>
	</li>
	<li>
		<div><h3>What I did before?</h3></div>
		<div>I worked in an Chinese Software development company in the past 4 years and majorty in B/S artitecture.
        </div>
	</li>
	<li>
		<div><h3>What do I like?</h3></div>
		<div>Design & Sports
        </div>
	</li>
</ol>
<!--SSW Code Auditor - Ignore next line(HTML)-->  
<p>Connect me at <a href="mailto:billchen@ssw.com.au">Bill Chen</a> </p>

<p>Return to the Employees<a href="/SSW/Employees/employeesXML.aspx"> Go Back</a></p>


		</asp:content>