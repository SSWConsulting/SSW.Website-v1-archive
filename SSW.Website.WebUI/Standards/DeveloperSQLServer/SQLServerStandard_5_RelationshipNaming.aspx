<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW SQL Server Relationship Naming Standard"  %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
		<b>SQL 
        Server Relationship Naming Standard</b>
      <p>This standard 
        outlines the procedure on naming Relationships at SSW for SQL Server. 
        Use this standard when creating new Relationships or if you find an older 
        Relationship that doesn't follow that standard.<br>
        </p>
            <p>Do you agree with them all? Are we missing some? <a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=SQL Server Standard Relationship Naming';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">
    Let us know</a> what you think.</p> 
      <h2>
Syntax</h2>

      <p>Relationship 
        names are to have this syntax:<br>
        [PrimaryTable] - [ForeignTable]<br>
        [ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;] 
        - [&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        ]</p>
      <p>[1] The table 
        whose columns are referenced by other tables in a one-to-one or one-to-many 
        relationship.<br>
        </p>
      <h2>
Examples</h2>
      <p>Rather than 
        accepting the default value i.e. ClientAccount_FK01 that is given from 
        upsizing.<br>
        <img src="Images/imgRelationshipPic1.gif" alt=" " width="401" height="500" border="1"> 
      </p>
      <p>We recommend 
        using Prod-ClientAccount.</p>
      <p><img src="Images/imgRelationshipPic2.gif" alt=" " width="401" height="500" border="1"> 
      </p>
      <p>The good 
        thing is when you look at the relationship from the other side it is there 
        as well.</p>
      <p><img src="Images/imgRelationshipPic3.gif" alt=" " width="401" height="500" border="1"> 
      </p>
      <p> We also 
        believe in using Cascade Updates - but never cascade deletes.<br>
    
</p>
<h2>Acknowledgments</h2>

<p>
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
</p>
		</asp:content>