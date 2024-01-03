<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW LookOut - Screenshots"  %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:Content ID="Title" ContentPlaceHolderID="title" runat="server">
    <img src="Images/LookOutLogo.gif" alt="SSW LookOut" width="141" height="84" />
    <h2>SSW LookOut! for Outlook - Utility to Enforce Email Rules</h2>
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="maincontent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

<p>
	Email is a fundamental corporate communications tool used every day to 
    manage staff, establish contracts and communicate with clients. Use SSW 
    LookOut! to organize and manage your email and help ensure email is always 
    an advantage to your business and not a liability! With tons of rules and 
    auditing checks, SSW LookOut! also notifies the user whether emails are from 
    people with their corporate Access or SQL Server database.
 </p>
<table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index" style="{width:100%}">
		<tr>
			<td>
				<b>SSW LookOut User Guide</b>
                <ol>
				<li><a href="#Pre">Prerequisites</a>
				<li><a href="#install">Installation Guide</a>
				<li><a href="#Settings">Settings</a>
				<li><a href="#asettings">Advanced Database Settings (Programming required)</a>
				<li><a href="#storedproc">Sample Stored Procedure</a>
                </ol>
			</td>
		</tr>
	</table>

<SSW:UserGuideLinks id="UserGuideLinks1" runat="server"></SSW:UserGuideLinks>

<h2>Installation Guide<a name="install"></a></h2>
	<p>
		When you run the install exe there is a simple wizard interface to guide you thru the setup process. All you have to do is 
		select which directory you want SSW LookOut! to be installed into.
	</p>
	<p>
		Note #1: SSW LookOut! contains a third party dll called Outlook Redemption that is used to bypass the security measures 
		in Outlook 2000 SR2 and Outlook 2002. A virus could be written to target this dll. We advise against opening exe and 
		script files from unknown or unexpected sources. 
	</p>
	<p>
		Note #2:
		Refer to <a href="/ssw/KB/KB.asp?KBID=Q751500">this KB article</a> regarding removing the SSW LookOut! toolbar when you uninstall SSW LookOut!.
	</p>
<h2>Settings<a name ="Settings"></a></h2>
	<p>
	<ol>
		<p>
		<IMG src="Images/Properties.gif" border="1" width="414" height="456" alt="properties">&nbsp;<br />
            <strong>Figure: Access SSW LookOut! through Tools/Options in Outlook</strong></p>
		<p>
		&nbsp;</p>
    </ol>
        <ol><p>
		<img src="Images/BadWords.gif" width="414" height="463" alt="Bad words">&nbsp;<br />
            <strong>Figure: Adjust the "Bad Words" settings</strong></p>
		<p>
		&nbsp;</p>
        </ol>
        <ol><p>
		<img src="Images/EmailSettings.gif" width="414" height="463" alt="Email Settings">&nbsp;<br />
            <strong>Figure: Optimise your Outlook settings through LookOut!</strong></p>
		<p>
		&nbsp;</p>
        </ol>
        <ol><p>
		<img src="Images/Other.gif" width="414" height="463" alt="Other">&nbsp;<br />
            <strong>Figure: Determine the extra available options</strong></p>
	</ol>
<h2>Advanced Database Settings (Programming required)<a name ="asettings"></a></h2>
		<p>
            &nbsp;</p><ol><p>
		<img src="Images/Database.gif" width="414" height="463" alt="Database">&nbsp;<br />
            <strong>Figure: Set the database connections to a SQL Statement, Query or Stored Procedure<br />
            </strong>
		</p>
		<p>
		<img src="Images/ClientID.gif" width="414" height="463" alt="Client ID">&nbsp;<br />
            <strong>Figure: Set the desired scanning behaviours<br />
            </strong>
        </p>
        </ol>
        <ol><p>
		<img src="Images/ClientButton.gif" width="414" height="463" alt="Client Button">
            <br />
            <strong>Figure: Determine the Client Button settings</strong></p>
		<p>
            <br />
		<img src="Images/About.gif" width="414" height="463" alt="About">
		</p>
            <p>
                <strong>Figure: Keep up to date with the latest version</strong></p>
				
	</ol>
	&nbsp;<p>
         Note: If you're using Outlook 2000, you need to add the ClientID field 
         manually into your Outlook View. (This is not the case with Outlook 
         2000/XP, as you will notice that it is added automatically when you 
         click "Scan Selection". </p>
		<p>
		<img src="Images/field.gif" border=1 width="172" height="234" alt="Field">
            <br />
            <strong>Figure: If you're using Outlook 2000, you need to add the ClientID field manually
                into your Outlook View</strong></p>

<h2><a name="storedproc"></a>Sample Stored Procedure</h2>

	<P>
		* LookOut! requires a stored procedure (SQL Server) or query (Access) to be placed in the database that is selected on the property page.
	</P>
	<P>
		For SQL Server, the Stored Procedure is passed a char(50) argument (the email address). It returns at least a single 
		column recordset with the field name of 'ClientID'. Below is an example that we use at SSW.
	</p>
	<ol>
		<li>Example stored procedure for SQL Server backend</li><p>	
	<table width="80%" align="center" class="clsSSWTable">
		<tr> 
			<td colspan="all">
				<code>CREATE PROC procSSWLookOutClientIDSelect <br>
				@pstrEmail varchar(50)<br>
				AS<br>
				SELECT ClientContact.ClientID<br>
				FROM ClientContact<br>
				WHERE Email = @pstrEmail<br>
				OR EmailSecond = @pstrEmail<br>
				OR BouncedEmail = @pstrEmail<br>
				GO<br>
				</code>
			</td>
		</tr>
	</table>
	<table width="80%" align="center"><tr><td><b>Figure: Stored procedure for SQL Server backend</b></td></tr></table>
</p>
		<li>Example query for Access backend (Simple)</li>, save it as &quot;qrySSWLookOutEmailSelect&quot;<p>
	
 	<table width="80%" align="center" class="clsSSWTable">
		<tr> 
			<td><code>
			SELECT Customers.CustomerID <BR>
			FROM Customers <BR>
			WHERE (Customers.Email = [@EMAIL]);<br>
			</code>
			</td>
		</tr>
	</table>
	<table width="80%" align="center"><tr><td><b>Figure: Query for Access backend (Simple)</b></td></tr></table>

	</P>
		<li>Example query for Access backend (Complex)</li>, save it as &quot;qrySSWLookOutEmailSelect&quot;<P>
		Remember, your Stored Procedure/Query will be passed one argument (the email) and it must return at least one column.  
		Any extra columns returned, if more than one, are ignored for now and only the first column will be used.  Here's an 
		example of a slightly more complex query, this query is included in the sample Northwind database packaged with SSW 
		LookOut!:
	<P>
      
 	<table width="80%" align="center" class="clsSSWTable">
		<tr> 
			<td><code>
			SELECT '(E)' + EmployeeID FROM Employees<br>
			WHERE Email = [@Email]<br>
			UNION SELECT '(C)' + CustomerID FROM Customers<br>
			WHERE Email = [@Email]<br>
			UNION SELECT '(S)' + SupplierID FROM Suppliers<br>
			WHERE Email = [@Email];<br>
			</code>
			</td>
		</tr>
	</table>
	<table width="80%" align="center"><tr><td><b>Figure: Query for Access backend (Complex)</b></td></tr></table>
	</ol>
	LookOut now have the ability to integrate with your database to process bounced emails. 
		Here are some simple query to show you the arguments available.
		<ol><li>Sample query for SQL Server Backend to process bounced emails:</li><table width="80%" align="center" class="clsSSWTable">
		<tr> 
			<td colspan="all"><code>CREATE PROC procBouncedEmailUpdate<br>
&nbsp;&nbsp;&nbsp; @pstrBouncedEmail NVARCHAR(50),<br>
&nbsp;&nbsp;&nbsp; @pintIsHardBounce INT = 0,<br>
&nbsp;&nbsp;&nbsp; @pdteBouncedDate&nbsp; DATETIME = NULL<br>
			AS<br>
			<br>
			UPDATE Customers<br>
			SET IsBouncedEmail = true,<br>
&nbsp;&nbsp;&nbsp; LastBounceDate = @pdteBouncedDate,<br>
			WHERE Email = @pstrBouncedEmail<br>
			<br>
			GO </code></td>
		</tr>
	</table>
	<table width="80%" align="center"><tr><td><b>Figure: Stored procedure to 
		process bounced email for SQL Server backend</b></td></tr></table>
		<li>Sample query for Access Backend to process bounced emails, save as 
		qrySSWLookOutBounceUpdate:</li><p>
	<table width="80%" align="center" class="clsSSWTable">
		<tr> 
			<td colspan="all"><code>
				UPDATE Customers SET Customers.IsBouncedEmail = Yes<br>
				WHERE (((Customers.Email)=[@pstrBouncedEmail]));</code></td>
		</tr>
	</table>
	<table width="80%" align="center"><tr><td><b>Figure: Stored procedure to 
		process bounced email for Access backend</b></td></tr></table>
	</p>
	</ol>
		LookOut now have the ability to integrate with your database to process 
		Unsubscribe emails. Here are some simple query to show you the arguments 
		available.
	<ol>
		<li>Sample query for SQL Server Backend to process unsubscribe emails:</li><table width="80%" align="center" class="clsSSWTable">
		<tr> 
			<td colspan="all"><code>CREATE PROC procSSWLookOutUnsubscribeUpdate<br>
&nbsp;&nbsp;&nbsp; @pstrEmail varchar(50)<br>
			AS<br>
			UPDATE Customers<br>
			SET&nbsp;&nbsp;&nbsp; OffMailingList = 1<br>
			WHERE&nbsp; Email = @pstrEmail<br>
&nbsp;</code></td>
		</tr>
	</table>
	<table width="80%" align="center"><tr><td><b>Figure: Stored procedure to 
		process bounced email for SQL Server backend</b></td></tr></table>
<li>Sample query for Access Backend to process unsubscribe emails, save as 
qrySSWLookOutUnsubscribe:</li><table width="80%" align="center" class="clsSSWTable">
		<tr> 
			<td colspan="all"><code>UPDATE Customers SET Customers.IsSubscribed 
			= No<br>
			WHERE (((Customers.Email)=[@Email]));</code></td>
		</tr>
	</table>
	<table width="80%" align="center"><tr><td><b>Figure: Stored procedure to 
		process bounced email for Access backend</b></td></tr></table>
	</ol>


		
		</asp:content>
