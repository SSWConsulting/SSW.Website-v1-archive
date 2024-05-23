<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="Eric Fang - About Me"  %>


<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script><script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>				
	
			<h2>About Me</h2>
				<ol>
			<LI>
				<div><H3>University</H3></div>
				<div>
					I graduated from Bauman Moscow State Technical University (Moscow, Russia) in 1994
                    with a Master Degree.
                    <br />
                    Speciality: "Information and Measurement Technology".&nbsp; I have MCAD.NET certificate.<BR>
					<BR>
				</div>
			</LI>
			<LI>
				<div><H3>Other things about me</H3></div>
				<div>
					I love traveling, playing football and chess, visiting gym and watching movies.<BR><BR>
				</div>
			</LI>
			<LI>
				<div><H3>Previous Experience</H3></div>
				<div>
					I've worked for 5 years as Software Developer in Moscow, Russia.</div>
			</LI>
		
		</ol>
	</asp:content>