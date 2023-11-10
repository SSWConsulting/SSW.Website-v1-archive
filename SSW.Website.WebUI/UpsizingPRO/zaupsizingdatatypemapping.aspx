<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SQL Data Type Mapping"  %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
			
<h2>SQL Data Type Mapping</h2>
<p><table width="75%" border="0">
        <tr bgcolor="#FF0000"> 
          <td width="50%" bgcolor="#991284"><b>Jet</b></td>
          <td width="50%" bgcolor="#991284"><b>SQL 
            Server</b></td>
        </tr>
        <tr bgcolor="#CCCCCC"> 
          <td width="50%">Text</td>
          <td width="50%">char, 
            nchar, varchar, nvarchar</td>
        </tr>
        <tr bgcolor="#CCCCCC"> 
          <td width="50%">Memo</td>
          <td width="50%">text, 
            ntext</td>
        </tr>
        <tr bgcolor="#CCCCCC"> 
          <td width="50%">Byte</td>
          <td width="50%">tinyint</td>
        </tr>
        <tr bgcolor="#CCCCCC"> 
          <td width="50%">Integer</td>
          <td width="50%">smallint</td>
        </tr>
        <tr bgcolor="#CCCCCC"> 
          <td width="50%">Long 
            Integer</td>
          <td width="50%">integer</td>
        </tr>
        <tr bgcolor="#CCCCCC"> 
          <td width="50%">Single</td>
          <td width="50%">real</td>
        </tr>
        <tr bgcolor="#CCCCCC"> 
          <td width="50%">Double</td>
          <td width="50%">float</td>
        </tr>
        <tr bgcolor="#CCCCCC"> 
          <td width="50%">Replication 
            ID</td>
          <td width="50%">uniqueidentifier</td>
        </tr>
        <tr bgcolor="#CCCCCC"> 
          <td width="50%">Decimal</td>
          <td width="50%">decimal</td>
        </tr>
        <tr bgcolor="#CCCCCC"> 
          <td width="50%">Date/Time</td>
          <td width="50%">smalldatetime, 
            datetime, timestamp</td>
        </tr>
        <tr bgcolor="#CCCCCC"> 
          <td width="50%">Currency</td>
          <td width="50%">smallmoney, 
            money</td>
        </tr>
        <tr bgcolor="#CCCCCC"> 
          <td width="50%">AutoNumber</td>
          <td width="50%">int 
            + identity property</td>
        </tr>
        <tr bgcolor="#CCCCCC"> 
          <td width="50%">Yes/No</td>
          <td width="50%">bit</td>
        </tr>
        <tr bgcolor="#CCCCCC"> 
          <td width="50%">OLE 
            Object</td>
          <td width="50%">image</td>
        </tr>
        <tr bgcolor="#CCCCCC"> 
          <td width="50%">Hyperlink</td>
          <td width="50%">&lt;no 
            equivalent&gt;</td>
        </tr>
        <tr bgcolor="#CCCCCC"> 
          <td width="50%">&lt;no 
            equivalent&gt;</td>
          <td width="50%">binary, 
            varbinary</td>
        </tr>
      </table>
      <p>SQL Server 
        2000 introduced new data types not supported in SQL Server 7: <b>sql_variant</b> 
        and <b>bigint</b> (integer data from -2^63 (-9223372036854775808) through 
        2^63-1 (9223372036854775807). Storage size is 8 bytes.).</p>
      <p><a href="/ssw/Employees/employeesprofile.aspx?EmpID=ST">Sergei 
        Tchernykh </a> and <a href="/ssw/Employees/employeesprofile.aspx?EmpID=AC">Adam Cogan</a><br>
        November 2000
        
		</asp:content>