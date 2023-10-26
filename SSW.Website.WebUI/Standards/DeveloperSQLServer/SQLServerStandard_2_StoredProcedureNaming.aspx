<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW SQL Stored Procedure Naming Standard"  %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
		<p><b>SQL 
        Server Stored Procedure Naming Standard</b></p>
      <p>This 
        standard outlines the standard on naming Stored Procedures within SQL 
        Server. Use these standards when creating new Stored Procedures or if 
        you find an older Stored Procedure that doesn't follow these standards 
        within SSW.</p>
      <p>Note: Stored 
        Procedures will run fractionally slower if they start with a prefix of 
        sp_ &nbsp;&nbsp;This is because SQL Server will look for a system stored 
        proc first. Therefore we never recommend starting stored procs with a 
        prefix of sp_</p>
        
            <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D53514C20536572766572205374616E646172642053746F7265642050726F636564757265204E616D696E67')">
    Let us know</a> what you think.</p> 
      
      <h2>
	Syntax</h2>


      <p>Stored 
        Procedure names are to have this syntax:<br>
        [proc] [MainTableName] By [FieldName(optional)] [Action]<br>
        [ &nbsp;1&nbsp; ] [&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        ]&nbsp;&nbsp;&nbsp;&nbsp; [&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        ]&nbsp;[&nbsp;&nbsp;&nbsp;4 &nbsp;&nbsp;&nbsp;]</p>
      <p>[1] All stored 
        procedures must have the prefix of 'proc'. All internal SQL Server stored 
        procedures are prefixed with &quot;sp_&quot;, and it is recommended not 
        to prefix stored procedures with this as it is a little slower. <br>
        [2] The name of the table that the Stored Procedure accesses.<br>
        [3] (optional) The name of the field that are in the WHERE clause. ie. 
        procClientByCoNameSelect, procClientByClientIDSelect<br>
        [4] Lastly the action which this Stored Procedure performs.</p>
      <p><br>
        If Stored Procedure returns a recordset then suffix is 'Select'.<br>
        If Stored Procedure inserts data then suffix is 'Insert'.<br>
        If Stored Procedure updates data then suffix is 'Update'.<br>
        If Stored Procedure Inserts and updates then suffix is 'Save'.<br>
        If Stored Procedure deletes data then suffix is 'Delete'.<br>
        If Stored Procedure refreshes data (ie. drop and create) a table then 
        suffix is 'Create'.<br>
        If Stored Procedure returns an output parameter and nothing else then 
        make the suffix is 'Output'.<br>
      </p>
      <h2>
	Examples</h2>
      <b><br>
      An example of a stored proc that returns only an output parameter </b> 
      <br>
      <table width="90%" Class="ClsSSWTable">
        <tr> 
          <td> 
            <p>ALTER PROCEDURE 
              procClientRateOutput</p>
            <blockquote> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@pstrClientID 
                VARCHAR(6) = 'CABLE',<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@pstrCategoryID 
                VARCHAR(6) = '&lt;All&gt;',<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@pstrEmpID 
                VARCHAR(6)='AC',<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@pdteDate 
                datetime = '1996/1/1',<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@curRate 
                MONEY OUTPUT</p>
            </blockquote>
            <p>AS<br>
              <br>
              -- Description: Get the $Rate for this client and this employee 
              <br>
              --&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;and this category 
              from Table ClientRate</p>
            <p>SET @curRate = 
              (<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              SELECT TOP 1 Rate <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              FROM ClientRate <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              WHERE ClientID=@pstrClientID <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              AND EmpID=@pstrEmpID <br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              AND CategoryID=@pstrCategoryID<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              AND DateEnd &gt; @pdteDate<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              ORDER BY DateEnd<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              )<br>
              <br>
              IF @curRate 
              IS NULL</p>
            <blockquote> 
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SET 
                @curRate =<br>
                (<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                SELECT TOP 1 Rate <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                FROM ClientRate <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                WHERE ClientID=@pstrClientID<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND 
                EmpID=@pstrEmpID <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND 
                CategoryID='&lt;ALL&gt;' <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND 
                DateEnd &gt; @pdteDate <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ORDER 
                BY DateEnd<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                )</p>
            </blockquote>
            <p>RETURN</p>
          </td>
        </tr>
      </table>
      <p><br>
      </p>
      <table width="90%" Class="ClsSSWTable">
        <tr> 
          <td width="49%"> 
            <div align="center"><b>Old 
              Style</b></div>
          </td>
          <td width="51%"> 
            <div align="center"><b>Recommended 
              Style</b></div>
          </td>
        </tr>
        <tr> 
          <td width="49%">Select 
            'procGetRate' or 'sp_GetRate'</td>
          <td width="51%">'procClientRateSelect'</td>
        </tr>
        <tr> 
          <td width="49%">Insert 
            'procEmailMergeAdd'</td>
          <td width="51%">'procEmailMergeInsert'</td>
        </tr>
      </table>
      
      <h2>Acknowledgments</h2>

<p>
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
</p>
 		</asp:content>