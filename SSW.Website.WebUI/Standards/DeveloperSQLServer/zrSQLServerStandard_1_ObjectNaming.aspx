<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW SQL Server Object Naming Standard"  %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
		
<br />
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D53514C20536572766572205374616E64617264204F626A656374204E616D696E67')">
    Let us know</a> what you think.</p> 

<h2>SQL Server Object Naming Standard</h2>
<p>This 
        standard outlines the standard on naming objects within SQL Server. Use 
        these standards when naming any object or if you find an older object 
        that doesn't follow these standards within SSW.</p>
      <p>All feedback 
        is welcome. Thanks to all who gave feedback. A special thanks to Andy 
        Baron.<br>
        </p>

<h2>Syntax</h2>

<p>
<table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Tips On How to Show a Table" style="{width:80%;}">
	<tr> 
	  <td width="33%"><div align="left"><b>Object</b></div>
          </td>
          <td width="16%"> 
            <div align="left"><b>Prefix</b></div>
          </td>
          <td width="51%"> 
            <div align="left"><b>Example</b></div>
          </td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="33%"> 
            <div align="left">Table</div>
          </td>
          <td width="16%"> 
            <div align="left">--</div>
          </td>
          <td width="51%"> 
            <div align="left">Client</div>
          </td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="33%"> 
            <div align="left">Column</div>
          </td>
          <td width="16%"> 
            <div align="left">--</div>
          </td>
          <td width="51%"> 
            <div align="left">ClientID</div>
          </td>
        </tr>
        <tr>
          <td width="33%"> 
            <div align="left">Temporary Table</div>
          </td>
          <td width="16%"> 
            <div align="left">_zt</div>
          </td>
          <td width="51%"> 
            <div align="left">_ztClient</div>
          </td>
        </tr>
	<tr>
          <td width="33%"> 
            <div align="left">System Table</div>
          </td>
          <td width="16%"> 
            <div align="left">_zs</div>
          </td>
          <td width="51%"> 
            <div align="left">_zsDataVersion</div>
			<div align="left">_zsVersionLatest</div>
          </td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="33%"> 
            <div align="left">View</div>
          </td>
          <td width="16%"> 
            <div align="left">vw, gv_ </div>
          </td>
          <td width="51%"> 
            <div align="left">vwClientWithNoPhoneW <br /> gv_ClientWithNoPhoneW</div>
          </td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="33%"> 
            <div align="left">Stored 
              Procedure</div>
          </td>
          <td width="16%"> 
            <div align="left">proc, gp_</div>
          </td>
          <td width="51%"> 
            <div align="left">procSelectClientClientID <br /> gp_SelectClientClientID</div>
          </td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="33%"> 
            <div align="left">Trigger</div>
          </td>
          <td width="16%"> 
            <div align="left">trg</div>
          </td>
          <td width="51%"> 
            <div align="left">trgOrderIU</div>
          </td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="33%"> 
            <div align="left">Default* 
              </div>
          </td>
          <td width="16%"> 
            <div align="left">dft 
              * </div>
          </td>
          <td width="51%"> 
            <div align="left">dftToday 
              * </div>
          </td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="33%"> 
            <div align="left">Rule</div>
          </td>
          <td width="16%"> 
            <div align="left">rul</div>
          </td>
          <td width="51%"> 
            <div align="left">rulCheckZIP</div>
          </td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="33%"> 
            <div align="left">User-Defined 
              Datatype</div>
          </td>
          <td width="16%"> 
            <div align="left">udt</div>
          </td>
          <td width="51%"> 
            <div align="left">udtPhone</div>
          </td>
        </tr>
        <tr bordercolor="#FFFFFF" bgcolor="#CCCCCC"> 
          <td width="33%"> 
            <div align="left">User-Defined 
              Functions</div>
          </td>
          <td width="16%"> 
            <div align="left">udf</div>
          </td>
          <td width="51%"> 
            <div align="left">udfDueDates</div>
          </td>
        </tr>
      </table>
      <p>* We never 
        use defaults as objects, this is really an old thing that is just there 
        for backwards compatibility. Much better to use a default constraint.<br>
      </p>
<h2>Other Links</h2>
     
<p>
	<a href="/ssw/Redirect/SQLServer/SQLServerCentralcodingstandardspart1.htm" target="_blank">SQL Server Coding Standards - Part 1</a> <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW Site" width="17" height="11"><br>
	By Steve Jones on SQL Server Central
</p>
<p>
	<a href="/ssw/Redirect/SQLServer/SQLServerCentralcodingstandardspart2.htm" target="_blank">SQL Server Coding Standards - Part 2 - Formatting</a> <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW Site" width="17" height="11"><br>
	By Steve Jones on SQL Server Central
</p>

<h2>Acknowledgments</h2>

<p>
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam  Cogan</a>
</p>
		</asp:content>