<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW SQL Server Reporting Services Naming Standard"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				<b>SQL 
        Server Reporting Services Naming Standard</b>
      <p>This standard 
        outlines the procedure on naming Reports at SSW for SQL Server Reporting Services. Use this 
        standard when creating new Reports or if you find an older Report that 
        doesn't follow that standard.</p>
      <h2>
Syntax</h2>

      <p>Report names 
        are to have this syntax:<br>
        [rpt] [Reportname]<br>
        [ &nbsp;&nbsp;1&nbsp;&nbsp;] [&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ]</p>
      <p>Sub Report names 
        are to have this syntax:<br>
        [subrpt] [Reportname]<br>
        [ &nbsp;&nbsp;1&nbsp;&nbsp;]&nbsp;&nbsp; [&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ]</p>
      <p>&nbsp;</p>
      <table width="50%" Class="ClsSSWTable">
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="22%"> 
            <div align="center"><b>Prefix</b></div>
          </td>
          <td width="78%"> 
            <div align="center"><b>Type</b></div>
          </td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="22%" height="2">rpt</td>
          <td width="78%" height="2">Main Report</td>
        </tr>

        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="22%" height="2">subrpt</td>
          <td width="78%" height="2">Sub Report</td>
        </tr>
      </table>
      </p>
      <h2>
Examples</h2>

      <br>
      <table width="90%" Class="ClsSSWTable">
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="49%"> 
            <div align="center"><b>Old 
              Style</b></div>
          </td>
          <td width="51%"> 
            <div align="center"><b>Recommended 
              Style</b></div>
          </td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="49%">Report 
            'Quote'</td>
          <td width="51%">'rptQuote'</td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="49%" height="2">Sub Report 'Quote Header'</td>
          <td width="51%" height="2">'subrptQuoteHeader'</td>
        </tr>
      </table>
</p>
      
          <h2>Acknowledgments</h2>

<p>
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
</p>  
		</asp:content>