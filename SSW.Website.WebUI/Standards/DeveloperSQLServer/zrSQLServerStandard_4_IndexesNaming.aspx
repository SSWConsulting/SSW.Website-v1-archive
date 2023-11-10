<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW SQL Server Indexes Naming Standard"  %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
		<b>SQL 
        Server Indexes Naming Standard</b>
      <p>This standard 
        outlines the procedure on naming Indexes at SSW for SQL Server. Use this 
        standard when creating new Indexes or if you find an older Index that 
        doesn't follow that standard.</p>
      <p>Note: There 
        is not a lot of use naming Indexes - we only do it when we are printing 
        out documentation or using the 'Index Tuning Wizard' - then it becomes 
        real handy.<br>
        </p>
            <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D53514C20536572766572205374616E6461726420496E6465786573204E616D696E67')">
    Let us know</a> what you think.</p> 
        
      <h2>
Syntax</h2>

      <p>Index names 
        are to have this syntax:<br>
        [pkc_] [TableName] by [FieldName] <br>
        [ &nbsp;&nbsp;1&nbsp;&nbsp;] [&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        ]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [&nbsp;&nbsp;&nbsp; 3 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]</p>
      <p>[1] All indexes 
        must&nbsp;have a corresponding prefix.<br>
        </p>
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
          <td width="22%" height="2">pkc_</td>
          <td width="78%" height="2">Primary 
            Key, Clustered</td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="22%" height="2">pknc_</td>
          <td width="78%" height="2">Primary 
            Key, Non Clustered</td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="22%" height="2">ncu_</td>
          <td width="78%" height="2">Non 
            Clustered, Unique</td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="22%" height="2">cu_</td>
          <td width="78%" height="2">Clustered, 
            Unique</td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="22%" height="2">nc_</td>
          <td width="78%" height="2">Non 
            Clustered (Most Common)</td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p>Make unique 
        index name if possible. Ie. ProductName<br>
        </p>
      <p>[2] The name 
        of the table that the Index refers to.<br>
        </p>
      <p>[3] The name 
        of the column(s) that the Index refers to.</p>
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
          <td width="49%">Index 
            'BillingID'</td>
          <td width="51%">'nc_ClientDiary_BillingID'</td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="49%" height="2">Primary 
            Key 'aaaaaClient_PK'</td>
          <td width="51%" height="2">'pknc_ClientDiary_ClientID'</td>
        </tr>
      </table>
</p>
          <h2>Acknowledgments</h2>

<p>
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
</p>  
		</asp:content>