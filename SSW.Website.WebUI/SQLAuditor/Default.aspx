<%@ page Language="C#" autoeventwireup="false" masterpagefile="~/Masters/RavenSubpage.master" title="SSW SQL Auditor - Optimize your SQL Server 7/2000/2005/2008 performance" %>

<%@ register tagprefix="SSW" tagname="InfoBox" src="~/Components/InfoBoxLink.ascx" %>
<%@ register tagprefix="SSW" tagname="incStars" src="~/Components/incStars.ascx" %>
<%@ register tagprefix="SSW" tagname="RandomTestimonial" src="~/Components/RandomTestimonial.ascx" %>
<%@ register tagprefix="SSW" tagname="incDemonstration" src="~/Components/incDemonstration.ascx" %>
<%@ register tagprefix="SSW" tagname="ProductPageSideBar" src="~/Components/ProductPageSideBar.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content contentplaceholderid="title" runat="server">
<h1>SQL Auditor</h1>
</asp:content>

<asp:content contentplaceholderid="sidebar" runat="server">
<img src="/ssw/sqlauditor/Images/productbox.gif" /><br /><br />
<p class="download"><a href="/ssw/Products/ProdCategory.aspx?CategoryID=SQLTUN" class="red next btn">Purchase</a></p>
<p class="download"><a href="/ssw/Download/ProdBasket.aspx?ID=SA" class="black next btn">Download Trial</a></p>
<div class="section">
    <ul>
        <li><a href="UserGuide.aspx">Screenshots</a></li>
        <li><a href="Flyer/sqlauditorFlyer.pdf">Promotional Flyers</a></li>
    </ul>
</div>
<br />
<h6>Awards</h6>
<div class="section">	 
	<img src="/ssw/Images/Awards/SharewareRiverlinkbutton(bw).gif" alt="Shareware River" width="80" height="28" />&nbsp;&nbsp;&nbsp;&nbsp;
	<img src="/ssw/Images/Awards/coredownload(bw).gif" alt="Core Download" width="86" height="42" />
</div>
<br />
    <h6 class="red">Getting Support</h6>
<div class="section">
    <p>If you can&#39;t find it in the product documentation then check our <a href="/ssw/KB/KBResult.aspx?searchOn=ProdID&searchFor=SQLTUN">
    knowledge base</a> for further information and tips about this product.
    </p>
    <p>Please send us <a href="/ssw/Standards/Support/BugReportOrEnhancement.aspx">bug reports</a>
    and  <a onclick="javascript:sendEmailWithSubject('696e666f407373772e636f6d2e6175','FeedBack',this)" category="info" process='true' onmouseover="self.status='mailto:' + decodeit('696e666f72407373772e636f6d2e6175 '); return true;" onmouseout="self.status='';return true;" style=" text-decoration: underline; cursor:pointer">696e666f72407373772e636f6d2e6175 </a>  so that we 
    can evolve our software into a product that matches your requirements. We 
    guarantee a response.
</div>
<br />
<h6>Links</h6>
<div class="section">
<ul>
	<li>
		<a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx">Rules to better 
			SQL Server databases</a></li><li>
		<a href="/ssw/Standards/Rules/RulesToBetterCode.aspx#NamingConventions">SQL Naming 
			Conventions</a></li><li>
		<a href="/ssw/KB/KB.aspx?KBID=Q811788">Installing SQL Server databases</a></li><li>
		<a href="/ssw/Redirect/whitebear.htm" class="external">MSDE Manager and Utilities</a> 
	</li>
</ul>
</div>

</asp:content>


<asp:content id="Content1" contentplaceholderid="mainContent" runat="server">

    <div class="discontinued-greybox">
            <p>This product is no longer supported. </p>
        </div>

		<%--<SSW:ProductPageSideBar runat="server" ProdID="SQLTUN" CatID="1SQL" UserGuide="UserGuide.aspx" PromotionalFlyer="Flyer/sqlauditorFlyer.pdf" DownloadID="SA" BoxShotPath="/ssw/sqlauditor/Images/productbox.gif" ProdName="SSW SQL Auditor">
		</SSW:ProductPageSideBar>--%>
		
		<asp:label id="lblWelcome" runat="server"></asp:label>
		<!--
			This is the main document.
			-->
    <div id="productInfo" class="printWidth">
    <div id="productDescription">
		    	<div id="productHighlights">
                <div class="noneFloat">

                    <ul>
                        <li>Identify and fix problems in database design</li>
                        <li>Keep SQL database standards</li>
                        <li>Prevent bad database practices</li>
                        <li>Friendly licensing model</li>
                    </ul>
                </div>
            </div>
	            <SSW:InfoBox ID="InfoBox1" runat="server" Css="interInfoBox noPrint" Text="<h1>Attention: SSW Developers</h1><a href='../Products/prodsummarylist.aspx'>This page is on the new template as it is one of the 6 products we are focused on.</a>" ></SSW:InfoBox>
					<h2>Keep your SQL Server 7/2000/2005/2008 database free from design flaws with SSW SQL Auditor</h2>
					<p>
						Are you looking for a consistent and optimized SQL 
						Server database?
						Maintaining 
						consistent quality code across a large team can be a challenge. Even when 
						standards are in place, developers can make mistakes that will slip through 
						Quality Assurance. SQL Auditor is a part of the range of database tools 
						designed by SSW to help to check best practice standards and optimize SQL 
						Server performance. SSW SQL Auditor supports SQL Server 
						7/2000/2005/2008.
					</p>
					<p>SSW SQL Auditor not only reports on design issues and areas where SQL 
						performance could be improved, it also has wizards that generate SQL scripts to 
						correct common problems.
					It was developed to assist in performance tuning in SQL 
					Server 7/2000/2005/2008 by performing a SQL Server 
					audits on your database. It allows Developers to check their database design against common 
						SQL Server design rules and report on the elements that do not conform to those 
						rules.
					</p>
					<p>If you are looking for a DB Auditing Tool that can perform a SQL database audit and 
						assist with SQL Server performance tuning, download a trial of SSW SQL Auditor 
						today.</p>

					<h2>Key Features and Benefits</h2>
					<p>SSW SQL Auditor is a solution that will globally change the data structure in a 
						database or range of tables.
					</p>
					<p>By using SSW SQL Auditor's simple wizard interface you 
					can:</p>
					<ul>
						<li>
							Identify and fix problems in database design, eg.<ol><li>
Identify any basic technical issues eg. missing primary keys</li><li>
Identify any naming problems</li><li>
Identify Missing relationships</li><li>
<a href="#PredefinedRules">More</a></li></ol>

							</li><li>
							Keep SQL database standards</li><li>
							Prevent bad database practices</li></ul>
							
		
		<table border="0" class="tblScreenshots normal">
	<tr>
		<td><img src="Images/ScreenPartial1.gif" alt="screenshot" /></td>
		<td><b>Great, user-friendly wizard style interface</b>
		With our <a href="/ssw/Standards/Rules/RulesToBetterInterfaces.aspx">standards compliant</a> user interface.
		</td>
	</tr>	
	<tr>
		<td><img src="Images/ScreenPartial2.gif" alt="Partial Screenshot 2"  /></td>
		<td>
			<b>Comprehensive rules to keep your database healthy </b> 
			<a href="/ssw/Standards/Rules/RulestoBetterSQLServerdatabases.aspx">Learn from the many SQL Rules.</a><br />
			Enable or disable the rules, and learn from the community of SQL developers which rules are popular and 
			which convention is popular - see <a href="http://reports.internal.ssw.com.au/Reports/Pages/Report.aspx?ItemPath=%2fSSW+SQL+Auditor+Reports%2f02+-+Rule+Agreement+Report">Rule Agreement Report</a> 
		</td>
	</tr>
	<tr>
		<td><img src="Images/ScreenPartial3.gif" alt="Partial ScreenShot 3"  /></td>
		<td>
			<b>Customizable rules</b>
            There is a detailed options form which helps you customize rules checking. 
		</td>
	</tr>
	<tr>
		<td><img src="Images/ScreenPartial4.gif" alt="Partial ScreenShot 4" /></td>
		<td>
			<b>Automatically generates a report of the violations for your database</b>
			You can get detailed reports of all the violations by a simple click.
		</td>
	</tr>
	<tr>
		<td><img src="Images/ScreenPartial5.gif" alt="Partial ScreenShot 5" /></td>
		<td>
			<b>Automatically generates scripts </b>
            SSW SQL Auditor will automatically generate scripts to correct most of the violations. 
		</td>
	</tr>
	<tr>
		<td><img src="Images/ScreenPartial6.gif" alt="Partial ScreenShot 6" /></td>
		<td>
			<b>Wide-ranging wizards, easy to use</b>
			There are 6 different wizards in SQL Auditor now, and there 
			will be more in future, these wizards will guide you to complete some complicated tasks: 
			e.g. adding foreign key relationships, adding clustered indexes or adding LastModified columns for appropriate tables.
		</td>
	</tr>
</table>

					<p>More Technical Features include the ability to:</p>
					<ul>
						<li>
							Generate SQL script to create a <b>timestamp</b> column in every Table
						</li>

						<li>
							Check for columns using the <b>ntext</b> and <b>text</b> datatypes 
							and compare the maximum length of existing data and see a large variance from 
							current size of <b>varchar(8000)</b></li><li>
							List all <b>rowguid</b> columns that have indexes</li><li>
							As Enterprise Manager and Access do not allow you to enter a null in a <b>bit</b>
							column. Unfortunately, you can with ADO code. Therefore, the problem occurs when 
							you have ADO code that enters a record and then if you try to edit the record 
							in your front end Access application, it will not allow you to save your 
							changes. Access will say someone else has edited the record since you started 
							editing (the famous 3 button &#39;Write Conflict&#39; error)</li><li>
							Check for Cascade/Update, Delete/Cascade relationships - especially to see the 
							relationships without cascading updates turned on.</li></ul>
					
						<%--<p><img border="0" src="Images/V9-77_SQLAuditorWelcomeSmaller.gif" alt="SQL Auditor" width="550" height="457"><br>
						<b>Figure: SSW SQL Auditor helps to check best practice 
						standards and optimize SQL Server performance</b><br> </p>--%>
				
					<p>See more screenshots in the <a href="UserGuide.aspx">SQL Auditor User Guide</a>.
					</p>
					<br />
          <h2>Upcoming Features</h2>   
	    <ul>
          <li>Add online profile - lists users scans (by PCName_DatabaseName), votes and comments for the rules</li>
          <li>XML based project definition files</li>
          <li>Multi-Databases scan at a time</li>
         <li>Group rules to compliant with different version of SQL Server</li>
          </ul>
          <br />


					<h2>How it Works</h2>
					<p>SSW SQL Auditor allows Developers to check their database design against common 
						SQL Server design rules and report on the elements that do not conform to those 
						rules.
					</p>
					<p>SSW SQL Auditor not only reports on design issues and areas where SQL 
						performance could be improved, it also has wizards that generate SQL scripts to 
						correct common problems.
					</p>
					<br />
					
					<a name="PredefinedRules"></a><h2>Predefined Rules - these are examples of the rules you use</h2>
					
					<p><b>General</b></p>
					<ol>
						<li>
							Object names should not contain spaces. See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#NamingConventions">Object name should follow your company Naming Conventions.</a>
						</li>
						<li>
							Database collation differs from SQL Server collation (server-wide check). See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#Collation">Do you make sure you use a consistent Collation server-wide?</a>
						</li>
						<li>
							Usage of SQL Server reserved words. See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#NamingConventions">Object name should follow your company Naming Conventions.</a>
						</li>
					</ol>
					<p><b>Data Structure</b></p>
					<ol>
						<li>
							Columns using the Unicode data type of nchar, nvarchar or ntext. See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#UnicodeDatatype">Only use Unicode datatypes (nchar, nvarchar and ntext) in special circumstances.</a></li><li>
							Columns using datetime datatype when data could be stored in a smalldatetime 
							column. See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#DateTime">Use smalldatetime datatype, where possible, instead of datetime datatype.</a></li><li>
							Columns using bit datatype and allowing NULL values. See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#BitFields">Do you use Bit/Numeric data type correctly?</a>
						</li>
						<li>
							Columns with RowGuid datatype and an Index. See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#RowGuid">Do not use indexes on RowGuid column.</a> 
						</li>
						<li>
							Tables missing Clustered Index. See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#Clustered">Do you create clustered index on your tables?</a>
						</li>

						<li>
							Every table should have Primary Key. See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#PrimaryKey">Do you create primary key on your tables?</a>
						</li>
						
						<li>
							Tables missing Timestamp Column (configure Timestamp column name in the 
							Timestamp Wizard). See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#Timestamp">Do you create primary key on your tables?</a></li><li>
							Tables missing &quot;Standard Columns&quot; (user defined columns that all 
							tables should have). It is definable in Tools -&gt; Options</li><li>
							Maximum row size for a table larger than SQL Server data page size (8060 bytes). See
							<a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#MaxRowSize">Maximum row size for a table.</a>
						</li>
						<li>
							Table names longer than 24 characters. See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#NamingConventions">Object name should follow your company Naming Conventions.</a>
						</li>
						<li>
							Columns using bit datatype. Recommended to use smallint instead. See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#BitFields">Do you use Bit/Numeric data type correctly?</a>
						</li>
						<li>
							Indexes and constraints without a fill factor of 90%. See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#Fillfactor">Use FillFactor of 90% for indexes and constraints.</a>
						</li>
					</ol>
					<p><b>Relationships</b></p>
					<ol>
						<li>
							Relationships not using ON UPDATE CASCADE. See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#IncludeONUPDATECASCADE">Use ON UPDATE CASCADE clause when creating relationship.</a>
						</li>
						<li>
							Relationships using ON DELETE CASCADE. See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#DontIncludeONDELETECASCADE">Do not use ON DELETE CASCADE clause when creating relationship.</a>
						</li>
						<li>
							Relationships not using NOT FOR REPLICATION. See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#RelationshipsReplication">Use NOT FOR REPLICATION clause when creating relationship.</a>
						</li>
					</ol>
					<p><b>Data</b></p>
					<ol>
						<li>
							Data in character type columns having empty line (&lt;Ctrl&gt; + &lt;Enter&gt;) 
							as the first character</li><li>
							Data in character columns having empty string instead of NULL. See <a href="/ssw/Standards/Rules/RulesToBetterSQLServerDatabases.aspx#AvoidNullsTextFields">Don't allow Nulls in text fields.</a>
						</li>
						<li>
							Data that violates referential integrity
						</li>
					</ol>
					<p><b>Stored Procedures</b></p>
					<ol>
						<li>
							Stored procedures and Views with unsynchronized names in procedure/view 
							definition and object name.</li><li>
							Stored procedures missing &quot;Standard Stored Procedure Description&quot; 
							(configure in Tools&gt;Options)</li><li>
							User-defined stored procedures starting with &quot;sp_&quot; or &quot;dt_&quot;</li></ol>
					<br />
					<h2><a name="SampleReports">Sample Reports</a></h2>
					<p>The Database Optimization Report lists areas of the database that may be changed 
						to improve SQL performance. It shows a summary of violations for each rule 
						database is checked against.&nbsp; Here is a sample report:
					</p>
					<div class="greybox"><a href="SSWSQLAuditorSampleReport.pdf" target="_blank">Standard Report</a>
					</div>
					
					<h2>System Requirements</h2>
					
					<ul>
                        <li class="win8" >Windows 8</li>
						<li>
							<a href="/ssw/Database/LinksSoftwareUpdates.aspx#MicrosoftNET">.NET Framework 2.0</a>
						</li>
						<li>
							MDAC for Windows 2000 - Get the latest MDAC from Microsoft website at: <a href="/ssw/Redirect/Microsoft/MicrosoftData.htm" target="_blank">
								www.microsoft.com/data</a> 
                            <img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW site" width="17" height="11">
						</li>
					</ul>
<h2>What does the unregistered version give me?</h2>

		<p>In respect to the unregistered version we know you want to see it working before you buy it. We aim for that. </p>
		<p><strong>Note:</strong> we also give free version targeted to the little guys</p>
		<p>For more details see <a href="/ssw/KB/KB.aspx?KBID=Q658302">http://www.ssw.com.au/ssw/KB/KB.aspx?KBID=Q658302</a></p>
<p>SSW provides free phone and email support to answer queries on 
registered products.</p>


					<h2>I&#39;m Sold... What&#39;s next?
					</h2>

					<div class="download">
				
				<p><a href="/ssw/Products/ProdCategory.aspx?CategoryID=SQLTUN" class="red next btn">Purchase</a></p>

				<p><a href="/ssw/Download/ProdBasket.aspx?ID=SA" class="button btn">Download Trial</a></p>
	            </div>
	            
	            
					<p>Microsoft and the Office logo are trademarks or registered trademarks of Microsoft Corporation in the United States and/or other countries.</p>
		</div>
		</div>
		        		
		</asp:content>
