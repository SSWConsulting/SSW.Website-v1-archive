<%@ Page Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="SSW Web Template"%>



<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script><script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>				<table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Tips On How to Show a Table" align="left" style="{width:50%;}" id="table1">
			<tr>
				<td>
					Hi, My Name is Lei Xu, just joined SSW yesterday, still busy 
					with all this induction stuff. I will start working on 
					business in the next couple of hours, hopefully.
					<p>Nice to talk to you all.</p>
					</p>
				</td>
			</tr>
		</table>
	
		
		<table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Formatting Table" style="{width:90%;}" id="table2">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Address</th>
			</tr>
			<tr>
				<td>
					Lei</td>
				<td>
					Xu</td>
				<td><!--SSW Code Auditor - Ignore next line(HTML)-->  
					<a href="mailto:LeiXu@ssw.com.au">LeiXu@ssw.com.au</a></td>
				<td>
					Unit 396, 83-93 Dalmeny Ave.<br>
					Rosebery, NSW, 2018</td>
			</tr>
			</table>
		</asp:content>