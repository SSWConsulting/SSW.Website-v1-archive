<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="Evan Lin - About Me"  %>



<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script><script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>				
		<H2>Evan Lin</H2>
<ol>
	<li>
		<div><h3>University</h3></div>
		<div>I will graduate from BUAA (<span style="font-size: 10pt"><span style="color: #cc0033">Beijing
                University</span> of Aeronautics and Astronautics</span>) in July of 2006,and
            my subject is Computer
            Science and Technology.<br />
        </div>
	</li>
	<li>
		<div><h3>Others about me </h3></div>
		<div>
            Football is my favorite sport.<br />
        </div>
	</li>
	<li>
		<div><h3>Experience</h3></div>
		<div>
            Participated in development of a network project in Embeded Laboratory for two years.</div>
	</li>
</ol>
<!--SSW Code Auditor - Ignore next line(HTML)-->  
<p>Connect me at <a href="mailto:evanlin@ssw.com.au">Evan Lin</a> </p>

<p>Return to the Employees<a href="/SSW/Employees/employeesXML.aspx"> Go Back</a></p>


		</asp:content>