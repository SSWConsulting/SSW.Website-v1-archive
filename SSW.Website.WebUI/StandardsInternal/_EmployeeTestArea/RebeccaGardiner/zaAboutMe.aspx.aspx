<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="SSW Web Template"  %>



<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
<script language="JavaScript" type="text/javascript" src="/ssw/Include/Validation.js"></script><script language="JavaScript" type="text/javascript" src="/ssw/Include/Printing.js"></script>				
		

	<ol>
		<li>
		<p>
			Only edit pages when viewing them on an intranet. If trying to edit pages 
			from external servers you could encounter problems. For more 
			information see <a href="/ssw/Standards/Rules/RulesToBetterWebsitesAdministration.aspx#FrontPage">Rules to better website administration</a>.
		</p>
		</li>
		<li>
		<p>
			New web pages are to be consistent with the SSW Template. All new pages must also abide by 
			the rules set out in <a href="/SSW/Standards/default.aspx#WebSiteRules">SSW Rules to 
			Better Websites</a>. 
		</p>
		</li>
		<li>
		<p>
			Please also read the standard on SSW Branding before you create a new page...
		</p>
		</li>

		<li>
			<h2>Sample Heading to look like this</h2>
		</li>
		<p>
		<li>
			Add this Include file for all SSW Products:
			<ssw:incdemonstration id="IncDemo" runat="server"></ssw:incdemonstration>
		</li>
		</p>
			
		<p>
		<li>
		<table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Tips On How to Show a Table" align="right" style="{width:50%;}">
			<tr>
				<td>
					<p>
						&lt;table class="clsSSWTable" cellspacing="2" cellpadding="2" 
						summary="Formatting Table" align="right" style="{width:50%;}"&gt;
					</p>
					<p>
						When you have tables on your pages use the ssw colours Don't specify these colours in your HTML
						<ul>
							<li>BAD &lt;table bgcolor=white cellpadding=0 cellspacing=0 width="100%" border=0&gt;</li>
							<li>GOOD &lt;table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Tips On How to Show a Table" style="{width:90%;}"&gt;</li>
						</ul>
					</p>
					<p>
						Don't specify anything your &lt;tr&gt; or &lt;td&gt; tags
						<ul>
							<li>BAD &lt;tr bordercolor="#cccccc" bgcolor="#cccccc"&gt;</li>
							<li>GOOD &lt;tr&gt;</li>
						</ul>
					</p>
				</td>
			</tr>
		</table>
	
		When you have large blocks of text, it's important to break up the page to make it visually 
		appealling. Using text boxes like this is a good idea...

		</li>
		</p>


		<p>
		<li>
			When you use named anchors in a table, use meaningful names. When you are sending
			the URL by email it helps indicate what you are talking about, and in addition, list 
			numbers often change. An anchor like "#13" becomes incorrect when the order changes. 
		</li>
		</p>
		<p>
		<li>
			When inserting a table use "class="clsSSWTable"" 
		</li>
		</p>
		<p>
		<li>
			If your table needs a header column use the &lt;th&gt; tag for the first table row 
			to get the correct formatting in your table.

		
		<table class="clsSSWTable" cellspacing="2" cellpadding="2" summary="Formatting Table" style="{width:90%;}">
			<tr>
				<th>Header Column</th>
				<th>Header Column</th>
				<th>Header Column</th>
				<th>Header Column</th>
			</tr>
			<tr>
				<td>
					varchar, nvarchar
				</td>
				<td>
					pstr
				</td>
				<td>
					@pstrEmail
				</td>
				<td>
					varchar(150)
				</td>
			</tr>
			<tr>
				<td>
					int
				</td>
				<td>
					pint
				</td>
				<td>
					@pintContactID
				</td>
				<td>
					int
				</td>
			</tr>
			<tr>
				<td>
					bit
				</td>
				<td>
					pbit
				</td>
				<td>
					@bitPrimaryContact
				</td>
				<td>
					bit
				</td>
			</tr>
		</table>
		</li>
		<p>
		<li>
		When you have tables that are displaying data (like a DataGrid) then use the same clsSSWTable but 
		with a font-size='xx-small' and a couple of other changes to the table tag.
		<table id="dgReport" class="clsSSWTable" style="font-size: xx-small;" bordercolor="#999999" cellspacing="0" cellpadding="3" rules="cols" border="1" align=Right">
			<tbody>
				<tr nowrap="nowrap">
					<th style="WIDTH: 220px">ProdName</th>
					<th style="WIDTH: 80px">Downloads</th>
				</tr>
				<tr style="BACKGROUND-COLOR: white">
					<td>Simple Table Documentor</td>
					<td>233</td>
				</tr>
				<tr style="BACKGROUND-COLOR: #efebde">
					<td>SSW Performance PRO!</td>
					<td>155</td>
				</tr>
				<tr style="BACKGROUND-COLOR: white">
					<td>SSW SQL Script Wizard</td>
					<td>128</td>
				</tr>
				<tr style="BACKGROUND-COLOR: #efebde">
					<td>SSW Data Renovator</td>
					<td>122</td>
				</tr>
			</tbody>
		</table>
 
		</li>
		</p>
		<p>
		<li>
			Always write code in the CODE tag...
			<ol>
				<li>BAD &lt;font face="Courier New, Courier, mono" size="2"&gt;</li>
				<li>GOOD &lt;code&gt;Code in Here&lt;/code&gt;
				<a href="/SSW/Standards/Rules/RulestoBetterWebsites.aspx#DisplayCode">
				Details</a></li>
			</ol>
		</li>
		</p>

		<p>
		<li>
			Close tags that offically need closing eg. 
			&lt;p&gt;, &lt;li&gt;.
		</p>
		<p>
			Also close tags such as &lt;/br&gt;, &lt;/img&gt; as it will 
			make it easier to go to XHTML in the future.
		</li>
		</p>
		<p>
		<li>
			The Header and Footer tags. These are required on all pages so that you only 
			need to keep the main body of the page and the heading html on the aspx page. 
			The heading, menu, side, footer, table structure is all taken care of for you 
			in the includes.
		</p>
		<p>
			At the top of your page you must tell the page to use the templates. You do this by 
			inserting these 2 lines:
			
				<table class="clsSSWTableCode">
					<tr>
						<td>
							<ol><li><code>&lt;%@ Register TagPrefix=&quot;SSW&quot; TagName=&quot;incBottom&quot; 
							Src=&quot;/ssw/Include/incBottom.ascx&quot; %&gt;<br>&lt;%@ Register TagPrefix=&quot;SSW&quot; TagName=&quot;incTop&quot; 
							Src=&quot;/ssw/Include/incTop.ascx&quot; %&gt;</code></li>
							</ol>
					  </td>
					</tr>
				</table>
				<b>Figure: Include Templates</b>
				<p>Now you can call the header template: </p>
				<table class="clsSSWTableCode">
					<tr>
						<td>
							<code>&lt;SSW:INCTOP id=&quot;Inctop&quot; runat=&quot;server&quot; 
							PageTitle=&quot;SSW Template&quot;&gt;&lt;/SSW:INCTOP&gt;</code>
						</td>
					</tr>
				</table>
				<b>Figure: Calling the Header Template</b>
				<p>At the end of your page you call the footer that will close the table structure 
					and put the footer image on the page: 
				<table class="clsSSWTableCode">
					<tr>
						<td>
							<code>&lt;SSW:INCBOTTOM id=&quot;incBottom&quot; 
							runat=&quot;server&quot;&gt;&lt;/SSW:INCBOTTOM&gt;</code>
						</td>
					</tr>
				</table>
				<b>Figure: Calling the Footer Template</b>

				<br>
		</p>
		</li>
		<p>
		<li>
			To use this template, you can just copy this file or if you want to 
			include custom backend scripting you will be required to copy 2 files for this 
			template. By default the webpage is using a custom code behind page to populate 
			the side html in the template. When you use this template you have to rename 
			the 2 files so they are similar. This is for ease of maintenance more than 
			anything. E.g. Login.aspx and Login.aspx.vb 
		</li>
		</p>
		<p>
		<li>
			You also have to change the Class name. You must pick a totally unique class name than has 
			not been used on the rest of the site. Eg. LoginMaintancePage
		</p>
		<p>
			This class name must be changed at the top of the aspx page: 
			<table class="clsSSWTableCode">
					<tr>
						<td>
							<code>&lt;%@ Page Language=&quot;vb&quot; src=&quot;Login.aspx.vb&quot; 
							AutoEventWireup=&quot;false&quot; Inherits=&quot;SSW. LoginMaintancePage &quot; 
							%&gt;</code>						
						</td>
					</tr>
				</table>
				<b>Figure: Changing the Class name</b>

			
		</p>
		<p>
			And at the top of the aspx.vb page: <code>Public Class LoginMaintancePage</code>
		</p>
		</li>
		<li>
		<p>
			There are now two methods of placing some HTML in the left hand side bar in the template:
			<ol>
				<li>Make a txt file in the same directory called CurrentPagename.txt If this file 
				exists when the page loads, it will display the html in the txt file in the side 
				nav. i.e. If you call the page default.aspx then you will have to make a default.txt 
				file.</li>
				<li>If you have a page where the side content changes depending on different query 
				strings on the page then you can enter the URL into the database and when the page 
				loads, it will check the database for that URL and display the corresponding HTML.
				Eg. If I have a products aspx page (the product is dependant on the query string 
				passed into the page) then I would use this method.</li>
			</ol>
		</p>
		</li>
		<li>
		<p>
			The Nav Bar is edited using by altering the appropriate table in SQL Server on 
			Joey. Then you need to use a special web page on Seal to generate a new static 
			text file from this table.
		</p>
		</li>
		<li>
		<p>

			You should acknowledge any contributers in accordance with standard convention. 
			If you are quoting another author directly you should use direct quotes - for 
			example: As Cameron Shaw says in the SSW Web Template &quot;You should 
			acknowledge any contributers&quot;. OR, if you are just referring to another 
			persons idea don't quote the author directly, but mention that it is his idea - 
			for example: Adam Cogan recommends on his site (<a href="/ssw/">www.ssw.com.au</a>) 
			that every coding company should have a series of rules and standards that 
			every developer must adhere to.&quot; Following this standard will ensure we 
			don't get accused of plagiarism.
		</p>
		</li>
		<li>
		<p>
			Finally if you are not sure then see www.w3.org
		</p>
		</li>
		
		<li>
		
		<h2>Acknowledgements </h2>

		<p>
			Always <a href="/SSW/standards/rules/rulestobetterwebsiteslayout.aspx#acknowledge">acknowledge</a>
			your work.
</li>
		
	</ol>
		</asp:content>