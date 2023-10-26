<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW SQL Auditor - Sample Report"  %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

				<asp:label id="lblWelcome" runat="server"></asp:label><p>
		<a href="Default.aspx"><b>Link back to main SSW SQL Auditor page</b></a></p>
<p>

<h2>
	SSW SQL Auditor - Sample Report</h2>

	
		<p>
		<img border="0" src="Images/samplereport.gif" alt="Sample Report" width="600" height="450" ></p>
<h2>Acknowledgements</h2>
</div>
	<p>
	<a href="/ssw/Employees/employeesprofile.aspx?EmpID=AC">Adam Cogan</a> 
	</p> 
		</asp:content>