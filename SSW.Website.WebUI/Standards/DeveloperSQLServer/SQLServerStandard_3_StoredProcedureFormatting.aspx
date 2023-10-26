<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW SQL Stored Procedure Formatting Standard"  %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>

				<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
		<p><b>SQL 
        Server Stored Procedure Formatting Standard</b></p>
      <p>This 
        standard outlines the standard on formatting Stored Procedures within 
        SQL Server. Use these standards when creating new Stored Procedures or 
        if you find an older Stored Procedure that doesn't follow these standards 
        within SSW. </p>
      <p>Note: Some 
        developers may question the convention for naming stored proc parameters. 
        We agree that this one is certainly open to debate. You need to ask yourself, 
        &quot;how will using this convention help my programmers?&quot; and be 
        prepared to drop the convention if the answer is &quot;well actually it 
        probably won't&quot;.</p>
      <p>We have always 
        found control naming conventions useful on Access, VB and ASP forms. Therefore 
        we bring them through to SQL Server - you may not. For example there is 
        some question on the usefulness on using a str prefix on string variable 
        types for Char, nChar, Varchar, nVarchar, Text, nText - in this case you 
        really need to know more information than that (ie. the length), however 
        you can at least tell whether you need single quotes in a WHERE clause 
        (ie. WHERE ClientID=' @strClientID '). Overall 
        we believe this convention saves time because the datatypes are intuitive 
        by their name. <br>
        <br>
      </p>
      
          <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D53514C20536572766572205374616E646172642053746F7265642050726F63656475726520466F726D617474696E67')">
    Let us know</a> what you think.</p> 
    <h2>Parameters</h2>

      <ol>
        <li> Each 
          parameter is to go on a new line.</li>
        <li>A prefix 
          of 'p' if the variable is passed in as a parameter i.e. @plngClientID</li>
        <li>A three-letter 
          string that indicates the type of variable being used</li>
      </ol>
      <h2>Parameter Type String Example</h2>

      <p>
      <table width="90%" class="clsSSWTable">
        <tr> 
          <td width="30%"> 
            <div align="center"><b>Parameter 
              Type </b></div>
          </td>
          <td width="10%"> 
            <div align="center"><b>String</b></div>
          </td>
          <td width="35%"> 
            <div align="center"><b>Example</b></div>
          </td>
          <td width="25%"> 
            <div align="center"><b>We 
              Don't use! </b></div>
          </td>
        </tr>
        <tr> 
          <td width="30%">Char, 
            nChar, Varchar, nVarchar, Text, nText</td>
          <td width="10%">str</td>
          <td width="35%">@strEmail 
            varchar(150)</td>
          <td width="25%">Chr 
            chv chrn chvn txt txtn</td>
        </tr>
        <tr> 
          <td width="30%">Datetime, 
            SmallDatetime</td>
          <td width="10%">dte</td>
          <td width="35%">@dteDateCreated 
            datetime</td>
          <td width="25%">dtm 
            dts</td>
        </tr>
        <tr> 
          <td width="30%">Tinyint, 
            Smallint, Integer, Bigint</td>
          <td width="10%">int</td>
          <td width="35%">@intContactID 
            int</td>
          <td width="25%">iny 
            ins inb</td>
        </tr>
        <tr> 
          <td width="30%">Bit</td>
          <td width="10%">bit</td>
          <td width="35%">@bitPrimaryContact 
            bit</td>
          <td width="25%"></td>
        </tr>
        <tr> 
          <td width="30%">Real</td>
          <td width="10%">sng</td>
          <td width="35%">@sngTotal 
            real</td>
          <td width="25%">rea</td>
        </tr>
        <tr> 
          <td width="30%">Float</td>
          <td width="10%">dbl</td>
          <td width="35%">@dblLength 
            float</td>
          <td width="25%">flt</td>
        </tr>
        <tr> 
          <td width="30%">Decimal</td>
          <td width="10%">dec</td>
          <td width="35%">@decLength 
            Decimal(4,2)</td>
          <td width="25%"></td>
        </tr>
        <tr> 
          <td width="30%">SmallMoney, 
            Money</td>
          <td width="10%">cur</td>
          <td width="35%">@curTotal 
            money</td>
          <td width="25%">mny 
            mns</td>
        </tr>
        <tr> 
          <td width="30%">Binary, 
            varBinary</td>
          <td width="10%">bin</td>
          <td width="35%">@binContract 
            binary</td>
          <td width="25%"> biv</td>
        </tr>
        <tr> 
          <td width="30%">Image</td>
          <td width="10%">img</td>
          <td width="35%">@imgLogo 
            image</td>
          <td width="25%"></td>
        </tr>
        <tr> 
          <td width="30%">Timestamp</td>
          <td width="10%">tsp</td>
          <td width="35%">@tspCurrent 
            timestamp</td>
          <td width="25%"></td>
        </tr>
        <tr> 
          <td width="30%">UniqueIdentifier</td>
          <td width="10%">guid</td>
          <td width="35%">@guidOrderID 
            Uniqueidentifier</td>
          <td width="25%"></td>
        </tr>
        <tr> 
          <td width="30%">Sql_Variant</td>
          <td width="10%">var</td>
          <td width="35%">@varPrice 
            sql_Variant</td>
          <td width="25%"></td>
        </tr>
        <tr> 
          <td width="30%">Cursor</td>
          <td width="10%">crs</td>
          <td width="35%">@crsInventory 
            Cursor</td>
          <td width="25%"></td>
        </tr>
        <tr> 
          <td width="30%">Table</td>
          <td width="10%">tab</td>
          <td width="35%">@tabMyTable table ( entryid int not null , lname varchar(16) not null )</td>
          <td width="25%"></td>
        </tr>
      </table>
      <p><br>
      </p>
<h2>Example</h2>

      <p>-- Description Call 
        this proc for every Bounced Email<br>
        -- Date &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; v1 11/11/1999 AC<br>
        -- Modified &nbsp;&nbsp;&nbsp;v2 14/11/1999 DDK<br>
        -- Modified &nbsp;&nbsp;&nbsp;v3 13/12/1999 DDK</p>
      <p>CREATE PROC procClientBouncedEmailUpdate</p>
      <blockquote>
        <p>@pstrClientID nvarchar(6),<br>
          @pintContactID int,<br>
          @pstrBouncedEmail varchar(50)</p>
      </blockquote>
      <p>AS</p>
      <p>-- Continued below...</p>
<h2>New Lines</h2>
<p>
      <ol>
        <li>Start 
          a new line before each keyword ie. SELECT, FROM, WHERE, ORDER BY.</li>
        <li>Each field 
          in a SELECT/UPDATE statement is to go on a new line</li>
        <li>Each item 
          is to be indented. (See below)</li>
        <li>Place 
          each condition of a WHERE clause on a new line.</li>
      </ol>
</p>   
   <h2>Example</h2>
<dl class="badImage">
<dt>
<p>UPDATE ClientContact 
        SET DateBouncedLast = getdate(),
        BouncedTimes = 1,
        BouncedEmail = @pstrBouncedEmail 
        FROM ClientContact 
        WHERE Email = @pstrBouncedEmail
        AND ContactID = @pintContactID</p>
      <p>RETURN<br>
        </p>
</dt>
<dd>Figure: Example of bad format</dd></dl>
<dl class="goodImage">
<dt>
<p>UPDATE ClientContact<br>
        SET DateBouncedLast = getdate(), <br>
        &nbsp;&nbsp;&nbsp;&nbsp;BouncedTimes = 1,<br>
        &nbsp;&nbsp;&nbsp;&nbsp;BouncedEmail = @pstrBouncedEmail<br>
        FROM ClientContact<br>
        WHERE Email = @pstrBouncedEmail<br>
        AND ContactID = @pintContactID</p>
      <p>RETURN<br>
        </p>
</dt>
<dd>Figure: Example of good format</dd></dl>

<h2>Acknowledgments</h2>

<p>
<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a>
</p>		</asp:content>