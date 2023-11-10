<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/RavenSubpage.master" Title="Before Using Upsizing PRO!"  %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
			
<h2>Before Using Upsizing PRO!</h2>
<p>
Essential things you should check in your Access 2000 database BEFORE upsizing:
	<ol>
		<li>If the field size in an Access relationship is not exactly the same for both fields, the DRI constraint is 
		not upsized - it is reported (cryptically) in the Upsizing Wizard.</li>
		<li>Check for tables without a unique index</li>
		<li>Check for spaces in table and field names</li>
		<li>Check for Validation rules</li>
		<li>Check for Unique index on a field and Required property set to no</li>
		<li>Check for default values like &quot;0.00&quot; when a field type is double, single, long, integer or byte.</li>
		<li>Check for large index on multiple fields. i.e. text fields that add up to more than 450 characters.</li>\
		<li>Check for fields that have more than 2 foreign keys because the table will be skipped.</li>
		<li>Check for dates that are invalid.</li>
		<li>The Upsizing Wizard can fail when upsizing a large table.</li>
		<li>If you are using Access Replication, you should delete all the old system fields that Access Replication added.</li>
	</ol>
</p>      
		</asp:content>