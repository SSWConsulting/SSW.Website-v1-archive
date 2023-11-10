<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better LINQ" %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <SSW:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
    <div class="Intro">
        <p>
            Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532304C494E51')">Let us know</a> what you think.
            </p>
    </div>
    <div class="TableOfContents">
        <p>
            <strong>SSW Rules to Better LINQ</strong></p>
       
        <ol>
            <li><a href="#WhyUseLINQ">Do you know why you are using LINQ?</a></li>
            <li><a href="#UnderstandLINQtoEntities">Do you understand what "LINQ to Entities" has
                going for it?</a></li>
            <li><a href="#UnderstandLINQtoSQL">Do you understand what "LINQ to SQL" has going for
                it?</a></li>
            <li><a href="#EntityRenameGeneratedClassName">Do you know with LINQ to Entities you
                need to rename Generated Class Names (aka Entity Type)?</a></li>
            <li><a href="#WhyLINQtoEntitiesNotSQL">Do you know why you should choose "LINQ to Entities"
                over "LINQ to SQL"?</a></li>
            <li><a href="#NamespaceFolder">Do you put the edmx and dbml in the right Folders (with the right
                namespace)?</a></li>
            <li><a href="#EntityConnectionString">Do you understand the reason for the new connection
                string in the Entity Framework?</a></li>
            <li><a href="#GeneratedMetadataFiles">Are you aware of the generated .csdl, .ssdl and
                .msl files (or Do you embed your metadata files to make it simpler)?</a></li>
            <li><a href="#SQLMetal">Do you use SQL metal for the generation for DBML?</a></li>
            <li><a href="#SQLMetalPowerShell">Do you use SQL metal + PowerShell to keep your DBML
                clean?</a></li>
            <li><a href="#WizardAddsReferences">Do you understand the wizard adds references to
                System.Data.LINQ or System.Data.Entitiy?</a></li>
            <li><a href="#SchemaChanges">Do you understand what breaks when schema changes and how to fix it in LINQ to Entities?</a></li>
            <li><a href="#ObjectContextMemberVariable">Do you store object context in a member variable
                for Windows Forms?</a></li>
            <li><a href="#UseVar">Do you use "var"?</a></li>
            <li><a href="#UseLINQSyntaxSearch">Do you use LINQ syntax for search forms instead of
                stored procs?</a></li>
            <li><a href="#StoredProcsPerformance">Do you use Stored Procs only for performance issues?</a></li>
            <li><a href="#DBMLStoredProcs">Do you use DBML only for stored procs?</a></li>
            <li><a href="#SmartTasksBinding">Do you always use the Smart Tasks for binding?</a></li>
            <li><a href="#EntityFrameworkVision">Do you know why this Microsoft Entity Framework
                is so exciting?</a></li>
            <li><a href="#Architecture">Do you know how to use LINQ in a 3 tiered architecture?</a></li>
            <li><a href="#WCFChecklistDBML">WCF Checklist - Do you mark your DBML as serializable?</a></li>
            <li><a href="#WCFChecklistTimeStamp">WCF Checklist - Do you have a timestamp column on all your tables?</a></li>
            <li><a href="#WCFChecklistAttach">WCF Checklist - Do you use Attach and Refresh to do updates?</a></li>
            <li><a href="#WCFChecklistData">WCF Checklist - Do you always retrieve data in small chunks?</a></li>
            <li><a href="#EntityNameAsDatabase">Do you know we should name the EDMX and DBML the same as Database?</a></li>
            <li><a href="#OracleAndEF4">Oracle - Do you know your option with EF4 and Oracle? </a></li>
            <li><a href="#Evolved-Code">Do you know how code has evolved?</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a id="WhyUseLINQ"></a>Do you know why you are using LINQ?</h2>
            
            <dl class="badCode">
            <dt style="background-color: #DDDDDD">using (SqlConnection conn = new SqlConnection())<br />
&nbsp;&nbsp;&nbsp;&nbsp;{<br />
&nbsp;&nbsp;&nbsp;&nbsp;conn.ConnectionString = "Data Source=(local);Initial Catalog=Northwind;Integrated Security=True";<br />
&nbsp;&nbsp;&nbsp;&nbsp;conn.Open();<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;SqlCommand cmd = conn.CreateCommand();<br />
&nbsp;&nbsp;&nbsp;&nbsp;cmd.CommandText = "SELECT * FROM Customers WHERE CompanyName LIKE '" + companyNameTextbox.Text + "%'";<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;bindingSource1.DataSource = cmd.ExecuteReader();<br />
}
                </dt><dd>
                    Figure: Bad example - using ADO.NET and not strongly typed</dd>
            </dl>
            
            <dl class="goodCode">
                <dt style="background-color: #DDDDDD">var results =<br />
&nbsp;&nbsp;&nbsp;&nbsp;from c in dbContext.Customers<br />
&nbsp;&nbsp;&nbsp;&nbsp;where c.CompanyName.StartsWith(companyNameTextbox.Text)<br />
&nbsp;&nbsp;&nbsp;&nbsp;select c;<br />
            customersBindingSource.DataSource = results;<br />
<br />
or even<br />
<br />
           var results =<br />
&nbsp;&nbsp;&nbsp;&nbsp;from c in dbContext.Customers<br />
&nbsp;&nbsp;&nbsp;&nbsp;where c.CompanyName.StartsWith(companyNameTextbox.Text)<br />
&nbsp;&nbsp;&nbsp;&nbsp;select new {c.CompanyName, c.Phone};<br />
            customersBindingSource.DataSource = results;<br /></dt>
                <dd>
                    Figure: Good examples - at least 4 good reasons</dd>
            </dl>
                <p>
                <ol>
                    <li>More readable and less code</li>
<li>Less performance issues - Most serious .NET performance issues were because of unclosed connections. LINQ means no connection code needed to be done.<br />
LINQ is another layer and really is overhead.</li>
<li>Strongly typed fields - SQL tables/entities has intellisense</li>
<li>Strongly typed SQL - SQL (Familiar SQL like syntax aka LINQ) has intellisense</li>
                </ol>
                </p>
            </li>
            <li>
                <h2>
                    <a id="UnderstandLINQtoEntities"></a>Do you understand what "LINQ to Entities" has going for it?</h2>
                <p>
                LINQ to Entities is a more refined ORM than LINQ to SQL. It supports:
                </p>
                <ul>
                    <li>Many to Many relationships</li>
                    <ul>
                        <li>In LINQ to SQL when you model a many to many relationship (e.g. Employees and Territories from Northwind) it involved 3 tables: Employee, EmployeeTerritories and Territory</li>
                        <li>In LINQ to Entities it only uses the Employee and Territory tables and does not need the associative table EmployeeTerrirories</li>
                    </ul>
                    <li>Richer support for Inheritance</li>
                    <ul>
                        <li>Table per Hierarchy - store all the data from the inherited types into the same table e.g. Employee, Customer classes will store data into the Person table</li>
                        <li>Table per Type - each type is stored in a separate tables</li>
                    </ul>
                    <li>Validation</li>
                    <ul>
                        <li>This means you can use the designer to make changes and validate it against your schema</li>
                    </ul>
                    <li>Update model from database</li>
                    <ul>
                        <li>This tells you if schema has changed and allows you to update the mapping from the designer. This was a short coming in LINQ to SQL</li>
                    </ul>
                    <li>Mapping Editor</li>
                    <ul>
                        <li>Allows you to use the designer to create the mappings - similar to the Java Hibernate editor (eclipse add-in) </li>
                    </ul>
                </ul>
                
                <dl class="image">
                    <dt>
                        <img alt="Entity's mapping details" src="images/EntitiesMapping.jpg" width="537"
                            height="253" />
                    </dt>
                    <dd>
                        Figure: Entity's mapping details
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a id="UnderstandLINQtoSQL"></a>Do you understand what "LINQ to SQL" has going for it?</h2>
                    <ul>
                        <li>Performance</li>
                        <ul>
                            <li>In a recent benchmark LINQ to SQL performed 5 times faster than LINQ to Entities</li>
                        </ul>
                        <li>Automatically unpluralizes table names when it generates classes</li>
                    </ul>
                    
                <dl class="badImage">
                    <dt>
                        <img alt="Same straight" src="images/LINQ_HasToSQL_1.jpg" />
                    </dt>
                    <dd>
                        Figure: Bad example - LINQ to Entities takes the name straight from the Database
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img alt="Entities automatically unpluralizes" src="images/LINQ_HasToSQL_2.jpg" />
                    </dt>
                    <dd>
                        Figure: Good example - LINQ to Entities automatically unpluralizes the entities
                    </dd>
                </dl>
                <ul>
                    <li>
                    Stored procedures are easier to work with
                    </li>
                    <li>
                    Relationship editor UI is nicer (more like SQL Server)
                    </li>
                    
                </ul>
                <dl class="image">
                    <dt>
                        <img alt="This popup form is way nicer" src="images/DBMLDesigner.jpg" width="794"
                            height="456" />
                    </dt>
                    <dd>
                        Figure: This popup form is way nicer
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a id="EntityRenameGeneratedClassName"></a>Do you know with LINQ to Entities you need to rename Generated Class
                    Names (aka Entity Type)?</h2>
                <p>
                LINQ to Entities does not unpluralize the table names when it generates classes. Thus, if your tables are named with purals (e.g. Customers instead of Customer table) then your Entities will also be pluralized. This makes your code confusing to read.
                </p>
                <dl class="image">
                    <dt>
                        <img alt="You have to rename or you will be confused" src="images/EntityFrameworkPlural.jpg" width="219"
                            height="166" />
                    </dt>
                    <dd>
                        Figure: You have to rename or you will be confused
                    </dd>
                </dl>
                <p>
                e.g. This is confusing
                </p>
            <dl class="badCode">
                <dt>NorthwindModel.NorthwindEntities db = new NorthwindModel.NorthwindEntities();<br />
                    NorthwindModel.<span style="background-color: #FFFF00">Customers</span> customer = db.Customers.First();</dt>
                <dd>
                    Figure: Confusing code because you are saying "Customers" even though you are dealing with one customer</dd>
            </dl>
<p>
Note: That is why we don't use plurals in database tables - see rule <a href="RulestoBetterSQLServerdatabases.aspx#NamingConventions">"Object name should follow your company Naming Conventions"</a> or use <a href="/ssw/SqlAuditor">SSW SQL Auditor</a>.</p>
            </li>
            <li>
                <h2>
                    <a id="WhyLINQtoEntitiesNotSQL"></a>Do you know why you should choose "LINQ to Entities" over "LINQ to
                    SQL"?</h2>
                <p>
                This is a tough one to say... because at SSW we have used LINQ to SQL on many projects and have really enjoyed it (despite its a few short comings).<br />
However the choice for the future is "LINQ to Entities".<br />
<br />
These are the reasons:
<ul>
<li>All of the posts that come on ADO.NET blog (blogs.msdn.com/ADONET) are giving entity love</li>
<li>No notable new features in .NET 3.5 SP1 (the team only added support for SQL 2008 data types etc)</li>
<li>It is still only for SQL Server?we need more eg. SQL Compact support</li>
<li>LINQ to SQL was owned by the C# team, but is now owned by ADO.NET team. I expect they are now investing time and resources into <a href="#">ADO.NET Data Services</a> and Entity Framework</li>
<li>No mention of LINQ to SQL in preparation guide for upcoming .NET 3.5 certification, but there is a whole chapter on post 3.5 RTM Entity Framework</li>
<li>Limited support for LINQ to SQL in ADO.NET Data Services (Only Read, no Insert or Update). In general, ADO.NET Data Services' primary support for ADO.Net data providers is via the Entity Framework</li>
</ul>
<br />
So it is likely LINQ to SQL will join the illustrious group of failed data programmability attempts (Object Spaces, WinFS)<br />
PS: Stay tuned for this to be confirmed by the ADO.NET team. I expect we will eventually hear them say that "LINQ to SQL" will be a discontinued technology. I really am only mentioning this to save projects that are starting now and expecting this to be a framework to be improved in the future.<br />
PPS: I also recommend you check out the great new post by Roger Jennings who confirmed our thoughts <a href="/ssw/redirect/AbandoningLinqToSql.htm">http://oakleafblog.blogspot.com/2008/05/is-adonet-team-abandoning-linq-to-sql.html</a><br />
PPPS: Dam shame that excellent frameworks like CSLA are not being nailed by Microsoft.
                </p>
            </li>
            <li>
                <h2>
                    <a id="NamespaceFolder"></a>Do you put the edmx and dbml in the right Folders (with the right
                    namespace)?</h2>
                <p>
                Namespace
                    <ul>
                    <li>Edmx = Northwind.Data.Entity </li>
                    <li>Dbml = Northwind.Data.SQL</li>
                    </ul>
                </p>
                <dl class="image">
                    <dt>
                        <img alt="Entity in the right folder" src="images/EntityNamespaceFolder.jpg" width="455"
                            height="458" /><br />
                       <img alt="Entity's Namespace" src="images/EntityNamespace.jpg" width="312"
                            height="232" /><br />
                    </dt>
                    <dd>
                        Figure: Change the Namespace via the Property window 
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a id="EntityConnectionString"></a>Do you understand the reason for the new connection string in the
                    Entity Framework?</h2>
                            <dl class="code">
                <dt>
                        &lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;<br />
                        &lt;configuration&gt;<br />
                        &nbsp; &lt;configSections&gt;<br />
                        &nbsp; &lt;/configSections&gt;<br />
                        &nbsp; &lt;connectionStrings&gt;<br />
                        &nbsp;&nbsp;&nbsp; &lt;add name=&quot;NorthwindEntities&quot; <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; connectionString=<br />
                        <span style="background-color: #FFFF00">&quot;metadata=.\Northwind.csdl|.\Northwind.ssdl|.\Northwind.msl;<br />
                        provider=System.Data.SqlClient;<br />
                        provider connection string=&amp;quot;<br />
                        Data Source=(local);<br />
                        Initial Catalog=Northwind;<br />
                        Integrated Security=True;<br />
                        MultipleActiveResultSets=True&amp;quot;&quot;</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; providerName=&quot;System.Data.EntityClient&quot; /&gt;<br />
                        &nbsp;&nbsp;&nbsp; &lt;add name=&quot;WindowsUI.Properties.Settings.NorthwindConnectionString&quot;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; connectionString=&quot;Data Source=(local);Initial 
                        Catalog=Northwind;Integrated Security=True&quot;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; providerName=&quot;System.Data.SqlClient&quot; /&gt;<br />
                        &nbsp; &lt;/connectionStrings&gt;<br />
                        &lt;/configuration&gt;
                </dt>
                <dd>
                    Figure: Entity Connection String</dd>
            </dl>
            <p>
            The yellow is a new key called "XXXEntities" is used by the framework to construct the Entities at run time. It needs a reference in the metadata section to the *.csdl, *.ssdl and *.msl files which controls the mappings.
            </p>
            </li>
            <li>
                <h2>
                    <a id="GeneratedMetadataFiles"></a>Are you aware of the generated .csdl, .ssdl and .msl files (or Do
                    you embed your metadata files to make it simpler)?</h2>
                <p>
                A lot of errors when trying to get LINQ to Entities up and running. A lot of them are caused by the locations of the *.csdl, *.ssdl and *.msl files. You can stuff around with relative paths and generated files or you can make sure they are embedded. You can do that by:
                </p>
                    <dl class="badCode">
                        <dt>You can stuff around with relative paths and generated files or...<br />
                            <br />
                            Step 1: Change the EDMX's <strong>Metadata Artifact Processing</strong> property to <strong>"Embed in Output Assembly"</strong><br />
                            <dl class="badImage">
                                <dt>
                                    <img alt="Entity Metadata files are embedded in output assembly" src="images/EntityMetadataEmbed.jpg"
                                        width="512" height="168" /></dt>
                            </dl>
                            <br />
                            Step 2: copy the connection string in app.config from the data to the UI<br />
                            <br />
                            &lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;<br />
                            &lt;configuration&gt;<br />
                            &nbsp; &lt;configSections&gt;<br />
                            &nbsp; &lt;/configSections&gt;<br />
                            &nbsp; &lt;connectionStrings&gt;<br />
                            &nbsp;&nbsp;&nbsp; &lt;add name=&quot;NorthwindEntities&quot;
                            <br />
                            connectionString=&quot;<span style="background-color: #FFFF00">metadata=.\Properties\DataSources\Northwind.csdl|.\Properties\DataSources\Northwind.ssdl|.\Properties\DataSources\Northwind.msl;</span><br />
                            provider=System.Data.SqlClient;provider connection string=&amp;quot;Data Source=(local);Initial
                            Catalog=Northwind;Integrated Security=True;MultipleActiveResultSets=True&amp;quot;&quot;<br />
                            providerName=&quot;System.Data.EntityClient&quot; /&gt;<br />
                            &nbsp; &lt;/connectionStrings&gt;<br />
                            &lt;/configuration&gt;</dt>
                        <dd>
                            Figure: Bad example - This is all relative from the .exe path  and VS.NET does not reliably copy these files when you build</dd>
                    </dl>
                    <dl class="goodCode">
                        <dt>&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;<br />
                            &lt;configuration&gt;<br />
                            &nbsp; &lt;configSections&gt;<br />
                            &nbsp; &lt;/configSections&gt;<br />
                            &nbsp; &lt;connectionStrings&gt;<br />
                            &nbsp;&nbsp;&nbsp; &lt;add name=&quot;NorthwindEntities&quot;
                            <br />
                            connectionString=&quot;<span style="background-color: #FFFF00">metadata=res://*/Model.Northwind.csdl|res://*/Model.Northwind.ssdl|res://*/Model.Northwind.msl;</span><br />
                            provider=System.Data.SqlClient;provider connection string=&amp;quot;Data Source=(local);Initial
                            Catalog=Northwind;Integrated Security=True;MultipleActiveResultSets=True&amp;quot;&quot;
                            providerName=&quot;System.Data.EntityClient&quot; /&gt;<br />
                            &nbsp; &lt;/connectionStrings&gt;<br />
                            &lt;/configuration&gt;</dt>
                        <dd>
                            Figure: Good example - It is always there - but the problem is that it cannot be shared with another application</dd>
                    </dl>
                
            </li>
            <li>
                <h2>
                    <a id="SQLMetal"></a>Do you use SQL metal for the generation for DBML?</h2>
                  <dl class="badImage">
                    <dt>
                        <img alt="MS Vision of EDM in their world" src="images/DbmlDesigner2.jpg" width="1030"
                            height="426" /><br />
                    </dt>
                    <dd>
                        Figure: Bad - don't use designer
                    </dd>
                </dl>
            <dl class="goodCode">
                <dt>SqlMetal /server:.\sqlexpress /database:northwind /dbml:northwind.dbml</dt>
                <dd>
                    Figure: GOOD - it is always there - the problem is that it cannot be shared with another app</dd>
            </dl>
            <p>
            SqlMetal is the command line tool used by LINQ to SQL to generate entities. Developers
                    should use this instead of the DBML designer because it is easy to regenerate when
                    there is a schema change. See <a href="RulesToBetterWindowsForms.aspx#CodeGenerators">
                        Do you use code generators</a>.
</p>
<p>
                    Here is a comparison of SqlMetal and the DBML designer.</p>
        <p>
        <table cellpadding="5" cellspacing="1" align="left" bgcolor="silver" style="border: 1px solid gray;" ><%--width="590px"--%>
            <tr>
                <th bgcolor="#EBEBE9"  style="border-bottom:2px red solid; width:350px">
                    <b>Feature</b>
                </th>
                <th bgcolor="#EBEBE9"  style="border-bottom:2px red solid; width:120px">
                    <b>DBML Designer</b>
                </th>
                <th bgcolor="#EBEBE9"  style="border-bottom:2px red solid; width:120px">
                    <b>SqlMetal</b>
                </th>
            </tr>
            <tr>
                <td bgcolor="white">Ease of regeneration</td>
                <td bgcolor="white"><center><img alt="Cross" src="Images/fail-lg.gif" /></center></td>
                <td bgcolor="white"><center><img alt="Tick" src="Images/success-lg.gif" /></center></td>
            </tr>
            <tr>
                <td bgcolor="white"><b>Customizing classes easily</b></td>
                <td bgcolor="white"><center><img alt="Tick" src="Images/success-lg.gif" /></center></td>
                <td bgcolor="white"><center><img alt="Cross" src="Images/fail-lg.gif" /></center></td>
            </tr>
            <tr>
                <td bgcolor="white"><b>Specifying Inheritance</b></td>
                <td bgcolor="white"><center><img alt="Tick" src="Images/success-lg.gif" /></center></td>
                <td bgcolor="white"><center><img alt="Cross" src="Images/fail-lg.gif" /></center></td>
            </tr>
            <tr>
                <td bgcolor="white">Generating Classes from SQL Server Compact</td>
                <td bgcolor="white"><center><img alt="Cross" src="Images/fail-lg.gif" /></center></td>
                <td bgcolor="white"><center><img alt="Tick" src="Images/success-lg.gif" /></center></td>
            </tr>
            <tr>
                <td bgcolor="white">External Mapping File</td>
                <td bgcolor="white"><center><img alt="Cross" src="Images/fail-lg.gif" /></center></td>
                <td bgcolor="white"><center><img alt="Tick" src="Images/success-lg.gif" /></center></td>
            </tr>
            <tr>
                <td bgcolor="white">Specifying a base class</td>
                <td bgcolor="white"><center><img alt="Cross" src="Images/fail-lg.gif" /></center></td>
                <td bgcolor="white"><center><img alt="Tick" src="Images/success-lg.gif" /></center></td>
            </tr>
            <tr>
                <td bgcolor="white">Mark classes as serializable (for WCF/Web Services)</td>
                <td bgcolor="white"><center><img alt="Tick" src="Images/success-lg.gif" /></center></td>
                <td bgcolor="white"><center><img alt="Tick" src="Images/success-lg.gif" /></center></td>
            </tr>
        </table></p>
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <p><b>                        
            Figure: Comparison of SqlMetal and the DBML designer</b></p>
             <p>
                Note: If you are using LINQ to Entities, then you can use the designer because it can get schema changes. 
                </p>
            </li>
            <li>
                <h2>
                    <a id="SQLMetalPowerShell"></a>Do you use SQL metal + powershell to keep your DBML clean?</h2>
                <p>[Details to come from Adam]
                </p>
            </li>
            <li>
                <h2>
                    <a id="WizardAddsReferences"></a>Do you understand the wizard adds references to System.Data.LINQ
                    or System.Data.Entitiy?</h2>
                <p>
                   <dl class="image">
                    <dt>
                        <img alt="You will need to add these 2 references in your UI" src="images/EntityLinqReferences.jpg" width="268"
                            height="245" /><br />
                    </dt>
                    <dd>
                        Figure: You will need to add these 2 references in your UI
                    </dd>
                </dl>
                <br />
                Tip: copy and paste the reference (you will need the <a href="/ssw/redirect/PowerCommands.htm">PowerCommands for Visual Studio 2008</a>)
                <br />
                            <dl class="code">
                <dt>using System.Data;<br />
<span style="background-color: #FFFF00">using System.Data.Entity;</span><br />
using System.Drawing;<br />
using System.Linq;<br />
using System.Text;<br />
using System.Windows.Forms;<br />
<span style="background-color: #FFFF00">using Northwind.Data;<br />
using Northwind.Data.Model;</span>
                </dt>
                <dd>
                    Figure: You will need to add these 3</dd>
            </dl>
                </p>
            </li>
            <li>
                <h2>
                    <a id="SchemaChanges"></a>Do you understand what breaks when schema changes and how to fix it in LINQ to Entities?</h2>
                <p>
                If you add EmailAddress field to Customers table and change PostalCode to PostCode:
                   <dl class="image">
                    <dt>
                        <img alt="Add EmailAddress field to Customers table and change PostalCode to PostCode" src="images/SchemaChange1.jpg" width="345"
                            height="265" /><br />
                    </dt>
                    <dd>
                        Figure: Add EmailAddress field to Customers table and change PostalCode to PostCode 
                    </dd>
                </dl>
                <p>Your build will succeed but if you run the application you will see a runtime error</p>
                   <dl class="image">
                    <dt>
                        <img alt="Run and see if any errors" src="images/SchemaChange2.jpg" width="605"
                            height="249" /><br />
                    </dt>
                    <dd>
                        Figure: Run and see if any errors
                    </dd>
                </dl>
                <p>To update it you right click the <strong>Entity Model</strong> and <strong>Update Model from Database</strong></p>
                   <dl class="image">
                    <dt>
                        <img alt="Update model from database" src="images/SchemaChange3.jpg" width="484"
                            height="268" /><br />
                    </dt>
                    <dd>
                        Figure: Update model from database
                    </dd>
                </dl>
                </p>
            </li>
            <li>
                <h2>
                    <a id="ObjectContextMemberVariable"></a>Do you store object context in a member variable for Windows Forms?</h2>
                <p>
                Do you remember to be a good boy with connections<br />
                                            <dl class="badCode">
                <dt>private void searchButton_Click(object sender, EventArgs e)<br />
{<br />
&nbsp;&nbsp;&nbsp; Northwind.Data.Model.NorthwindEntities db = new 
Northwind.Data.Model.NorthwindEntities();<br />
&nbsp;&nbsp;&nbsp; var results =<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from c in db.Customers<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; where c.CompanyName.StartsWith(companyNameTextbox.Text) 
&amp;&amp; c.Country == &quot;UK&quot;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; select c;<br />
&nbsp;&nbsp;&nbsp; customersBindingSource.DataSource = results;<br />
}</dt>
                <dd>
                    Figure: Bad - creating Object Context each time is expensive + you can't save it</dd>
            </dl>
            <dl class="badCode">
                <dt>Using(Northwind.Data.Model.NorthwindEntities db = new 
Northwind.Data.Model.NorthwindEntities())<br />
{<br />
&nbsp;&nbsp;&nbsp; var results =<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from c in db.Customers<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; where c.CompanyName.StartsWith(companyNameTextbox.Text) 
&amp;&amp; c.Country == &quot;UK&quot;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; select c;<br />
&nbsp;&nbsp;&nbsp; customersBindingSource.DataSource = results;<br />
}</dt>
                <dd>
                    Figure: Bad Too - using does not detach from the result - so we are not allowed to save changes, in another context</dd>
            </dl>
            <dl class="goodCode">
                <dt>public partial class CustomerForm : Form<br />
{<br />
&nbsp;&nbsp;&nbsp; //member variable to keep track of changes<br />
&nbsp;&nbsp;&nbsp; private Northwind.Data.Model.NorthwindEntities dbContext = 
new Northwind.Data.Model.NorthwindEntities();<br />
<br />
&nbsp;&nbsp;&nbsp; public CustomerForm()<br />
&nbsp;&nbsp;&nbsp; {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; InitializeComponent();<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Add handler for cleanup<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; this.Disposed += new EventHandler(CustomerForm_Disposed);<br />
&nbsp;&nbsp;&nbsp; }<br />
<br />
&nbsp;&nbsp;&nbsp; void CustomerForm_Disposed(object sender, EventArgs e)<br />
&nbsp;&nbsp;&nbsp; {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dbContext.Dispose();<br />
&nbsp;&nbsp;&nbsp; }<br />
}</dt>
                <dd>
                    Figure: Good - create a member Object Context for the form (so we can save later)</dd>
            </dl>
                </p>
            </li>
            <li>
                <h2>
                    <a id="UseVar"></a>Do you use "var"?</h2>
                <p>
                Despite what it looks like, the var keyword is not a throwback to the dark ages where we did not have strongly typed variables. It is just a short hand to save developers from typing out the type of a variable. </p>
                   <dl class="image">
                    <dt>
                        <img alt="var is strongly typed" src="images/VarStronglyTyped.jpg" width="560"
                            height="156" />
                    </dt>
                    <dd>
                        Figure: var is strongly typed
                    </dd>
                </dl>
            <dl class="badCode">
                <dt><span style="background-color: #FFFF00">IQueryable&lt;Customers&gt;</span> results =<br />
&nbsp;&nbsp;&nbsp; from c in dbContext.Customers<br />
&nbsp;&nbsp;&nbsp; where c.CompanyName.StartsWith(companyNameTextbox.Text) <br />
&nbsp;&nbsp;&nbsp; select c;<br />
customersBindingSource.DataSource = results;</dt>
                <dd>
                    Figure: Bad - you should just use "var" instead of "IQueryable"</dd>
            </dl>
            <dl class="goodCode">
                <dt><span style="background-color: #FFFF00">var</span> results =<br />
&nbsp;&nbsp;&nbsp; from c in dbContext.Customers<br />
&nbsp;&nbsp;&nbsp; where c.CompanyName.StartsWith(companyNameTextbox.Text) <br />
&nbsp;&nbsp;&nbsp; select c;<br />
customersBindingSource.DataSource = results;</dt>
                <dd>
                    Figure: Good - using "var" to save few keystrokes</dd>
            </dl>
                
            </li>
            <li>
                <h2>
                    <a id="UseLINQSyntaxSearch"></a>Do you use LINQ syntax for search forms instead of stored procs?</h2>
                
                   <dl class="image">
                    <dt>
                        <img alt="Use LINQ syntax for search forms" src="images/LINQSearchForm.jpg" width="640"
                            height="365" /><br />
                    </dt>
                    <dd>
                        Figure: Use LINQ syntax for search forms
                    </dd>
                </dl>
            <dl class="badCode">
                <dt>private void SearchButton_Click(object sender, EventArgs e)<br />
{<br />
    NorthwindDataContext db = new NorthwindDataContext();<br />
    dataGridView1.DataSource = db.Ten_Most_Expensive_Products();<br />
}</dt>
                <dd>
                    Figure: bad example - stored proc</dd>
            </dl>
            <dl class="goodCode">
                <dt>private void SearchButton_Click(object sender, EventArgs e)<br />
{<br />
&nbsp;&nbsp;&nbsp; var customers = from c in db.Customers<br />
&nbsp;&nbsp;&nbsp; select new { c.ContactName, c.Phone, c.City, c.PostalCode };<br />
<br />
&nbsp;&nbsp;&nbsp; SearchResultsGrid.DataSource = customers.Where(cust =&gt; 
cust.ContactName.StartsWith(SearchTextBox.Text));<br />
}</dt>
                <dd>
                    Figure: good example - LINQ</dd>
            </dl><p>
            Note: We recommend this approach because it's a lot easier to add filters to your LINQ query then it is to update your stored procedure.
                </p>
            </li>
            <li>
                <h2>
                    <a id="StoredProcsPerformance"></a>Do you use Stored Procs only for performance issues?</h2>
                <p>
                Not just saving a round trip.<br />
                <br />
                Only do this if you have a performance issue AND you have measured it, see <a href="RulestoBetterSQLServerdatabases.aspx#MiddleTier">Do you implement business logic in middle tier?</a>
                </p>
            </li>
            <li>
                <h2>
                    <a id="DBMLStoredProcs"></a>Do you use DBML only for stored procs?</h2>
                <p>
                   <dl class="image">
                    <dt>
                        <img alt="DataGridView - Use DMBL only for stored procs" src="images/DBML10MostPopularStoredProc.jpg" width="481"
                            height="365" /><br />
                    </dt>
                    <dd>
                        Figure: DataGridView - Use DMBL only for stored procs
                    </dd>
                </dl>
                <dl class="code">
                <dt>private void TenMostPopularForm2_Load(object sender, EventArgs e)<br />
{<br />
&nbsp;&nbsp;&nbsp; //instantiate context<br />
&nbsp;&nbsp;&nbsp; //exec proc<br />
<br />
&nbsp;&nbsp;&nbsp; //EDMX = Entities<br />
&nbsp;&nbsp;&nbsp; //DBML = DataContext<br />
<br />
&nbsp;&nbsp;&nbsp; //NorthwindEntities db = new NorthwindEntities();<br />
&nbsp;&nbsp;&nbsp; //dataGridView1.DataSource = db.CreateQuery&lt; 
Order_Details_Extended&gt;;<br />
<br />
&nbsp;&nbsp;&nbsp; NorthwindDataContext db = new NorthwindDataContext();<br />
&nbsp;&nbsp;&nbsp; dataGridView1.DataSource = db.Ten_Most_Expensive_Products();<br />
}</dt>
                <dd>
                    Figure: Code - Use DMBL only for stored procs</dd>
            </dl>
            Note: This may change<br />
Note: It is bad to use DBML because it cannot return strongly typed business objects from the entity framework - DBML returns it own generated class
                   <dl class="image">
                    <dt>
                        <img alt="DBML Stored Procedure" src="images/DBMLStoredProc.jpg" width="749"
                            height="80" /><br />
                    </dt>
                    <dd>
                        Figure: DBML Stored Procedure
                    </dd>
                </dl>
                Instead of<br />
                   <dl class="image">
                    <dt>
                        <img alt="DBML returns it own generated class" src="images/IQueryableProducts.jpg" width="563"
                            height="81" /><br />
                    </dt>
                    <dd>
                        Figure: DBML returns it own generated class
                    </dd>
                </dl>
                </p>
            </li>
            <li>
                <h2>
                    <a id="SmartTasksBinding"></a>Do you always use the Smart Tasks for binding?</h2>
                <p>
It automatically updates now because it is reading from the LINQ object.<br />
<ol>
<li>Click the Smart Tasks on the DataGridView</li>
<li>Click Add Project Data Source</li>
</ol>
                   <dl class="image">
                    <dt>
                        <img alt="Use Smart Tasks for binding" src="images/SmartTask.jpg" width="453"
                            height="241" /><br />
                    </dt>
                    <dd>
                        Figure: Use Smart Tasks for binding
                    </dd>
                </dl>
                </p>
            </li>
            <li>
                <h2>
                    <a id="EntityFrameworkVision"></a>Do you know why this Microsoft Entity Framework is so exciting?</h2>
                <p>
                  <dl class="image">
                    <dt>
                        <img alt="MS Vision of EDM in their world" src="images/EntityFrameworkVision.jpg" width="599"
                            height="448" /><br />
                    </dt>
                    <dd>
                        Figure: MS Vision of EDM in their world
                    </dd>
                </dl>
                </p>
            </li>
            <li>
                <h2>
                    <a id="Architecture"></a>Do you know how to use LINQ in a 3 tiered architecture?</h2>
                <p>
                    By default when you generate a LINQ DBML file the business objects and the DataContext are bundled into the DBML file. This restricts LINQ-to-SQL to being a 2 tiered architecture like so:
                </p>

                <dl class="badImage">
                    <dt>
                        <img alt="" src="images/Architecture_1.jpg" />
                    </dt>
                    <dd>
                        Figure: Bad Example - 2 tiered architecture as the UI has direct access to the DataAccess layer
                    </dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img alt="" src="images/Architecture_2.jpg" />
                    </dt>
                    <dd>
                        Figure: Good Example, UI only has access to the business objects and business layer. This is a 3 tiered architecture.
                    </dd>
                </dl>
                <p>
                To achieve this you need to:
                </p>
                <ul>
                    <li>
                    Create a Common project with the DBML file
                    </li>
                    <li>
                    Make the generated DataContext internal
                    </li>
                    <li>
                    Create a DataAccess project and add a DataContext class with the following methods:
            <dl class="code">
                <dt>
&nbsp;&nbsp;&nbsp; public class NorthwindData : IDisposable<br />&nbsp;&nbsp;&nbsp; {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// &lt;summary&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// Private instance of a generic DataContext<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// &lt;/summary&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; private DataContext _innerDataContext = null;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// &lt;summary&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// Gets an instance of the generic DataContext<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// &lt;/summary&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; protected DataContext DataContext<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; get<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // If it doesn't exist yet then instanciate it<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (_innerDataContext == null)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _innerDataContext =<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new DataContext(<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ConfigurationManager.ConnectionStrings[&quot;NorthwindConnectionString&quot;].ConnectionString);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return _innerDataContext;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; public void Dispose()<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _innerDataContext.Dispose();<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// &lt;summary&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// Gets a table from the generic data context<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// &lt;/summary&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// &lt;typeparam name=&quot;T&quot;&gt;Type T of the Table&lt;/typeparam&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// &lt;returns&gt;A table of T&lt;/returns&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; public Table&lt;T&gt; GetTable&lt;T&gt;() where T:class<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return DataContext.GetTable&lt;T&gt;();<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// &lt;summary&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// Update an entity in the database<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// &lt;/summary&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// &lt;typeparam name=&quot;T&quot;&gt;Type of the entity&lt;/typeparam&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// &lt;param name=&quot;entity&quot;&gt;Entity to update&lt;/param&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; public void Update&lt;T&gt;(T entity) where T:class<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DataContext.GetTable&lt;T&gt;().Attach(entity, true);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DataContext.Refresh(RefreshMode.KeepCurrentValues, entity);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// &lt;summary&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// Submits the changes back to the database<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /// &lt;/summary&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; public void Save()<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DataContext.SubmitChanges();<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp;&nbsp; }                
                </dt>
            </dl>

                    </li>
                    <li>
                    This layer will be used by your business layer
                    </li>
                    <li>
                    Your UI will reference the business layer
                    </li>
                </ul>
            </li>
            <li>
                <h2>
                    <a id="WCFChecklistDBML"></a>WCF Checklist - Do you mark your DBML as serializable?</h2>
                <p>
                By default any class that needs to be passed across WCF needs to be serializable. When you generate a DBML file it doesn't not mark any of the entities as serializable. You will set the serialization mode to Unidirectional otherwise you might encounter an error like this:
                </p>
                <dl class="image">
                    <dt>
                        <img alt="" src="images/WCFChecklistDBML_1.jpg"/>
                    </dt>
                    <dd>
                        Figure: The exception.
                    </dd>
                </dl>
                <dl class="image">
                    <dt>
                        <img alt="" src="images/WCFChecklistDBML_2.jpg"/>
                    </dt>
                    <dd>
                        Figure: Set the "Serialization Mode" to "Unidirectional".
                    </dd>
                </dl>
                <p>
                Note: you can also set this up in SQL Metal with the parameter /serialization:unidirectional
                </p>
            </li>
            <li>
                <h2>
                    <a id="WCFChecklistTimeStamp"></a>WCF Checklist - Do you have a timestamp column on all your tables?</h2>
                <p>
                When doing updates across WCF, LINQ-to-SQL works in disconnected mode where your entities are detached from the original data context that retrieved it. As such all change tracking is lost so updates are difficult.
                </p>
                <p>
                To avoid issue make sure you add a timestamp columns to all your tables.
                </p>
                <dl class="image">
                    <dt>
                        <img alt="" src="images/WCFChecklistTimeStamp_1.jpg"/>
                    </dt>
                    <dd>
                        Figure: Add the TimeStamp in table.
                    </dd>
                </dl>
                <p>
                This is used for concurrency control. 
                </p>
                <p>
                Note: We have a tool called SSW SQL Auditor (link here) that checks for this
                </p>
            </li>
            <li>
                <h2>
                    <a id="WCFChecklistAttach"></a>WCF Checklist - Do you use Attach and Refresh to do updates?</h2>
                <p>
                Updates have always been tricky in disconnected mode. The best method that we have found is to use the Attach as modified method with a Refresh of the context. 
                </p>
                <dl class="code">
                    <dt>
                        public void UpdateCustomer(Customer customer)<br />
                        {<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;DataContext.Customers.Attach(customer, true);<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;DataContext.Refresh(RefreshMode.KeepCurrentValues, customer);<br />
                        }                                                     
                    </dt>
                    <dd>
                        Figure: Updates have always been tricky in disconnected mode
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a id="WCFChecklistData"></a>WCF Checklist - Do you always retrieve data in small chunks?</h2>
                <p>
                By default WCF limits your messages to 64KB. That means that any queries returning SELECT * FROM Customers will fail with an error like:
                </p>
                <dl class="image">
                    <dt>
                        <img alt="" src="images/WCFChecklistData_1.jpg"/>
                    </dt>
                    <dd>
                        Figure: Exception of use "Select * from..."
                    </dd>
                </dl>
                <p>
                You can fix this issue by:
                </p>
                <ul>
                    <li>
                    Selecting data by paging (recommended)
                    </li>
                    <li>
                    Changing the MaxReceivedMessageSize property in the Web.config
                    </li>
                    <p>
                    Note: This will only be used if you absolutely must return something greater than 64KB (e.g. an Image or other Binary data)
                    </p>
                </ul>
                <dl class="badCode">
                    <dt>
        public IList&lt;Customer&gt; GetCustomers()<br />
        {<br />
            &nbsp;&nbsp;&nbsp;&nbsp;using (var db = new NorthwindDataContext())<br />
            &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return db.Customers.ToList();<br />
            &nbsp;&nbsp;&nbsp;&nbsp;}<br />
        }
                    </dt>
                    <dd>
                        Figure: Bad Example - This is exactly the same as doing a SELECT * FROM Customers which is a definite no.
                    </dd>
                </dl>
                <dl class="goodCode">
                    <dt>
        public IList&lt;Customer&gt; GetCustomers(int pageIndex, int pageSize, out int total)<br />
        {<br />
&nbsp;&nbsp;&nbsp;&nbsp;            using (var db = new NorthwindDataContext())<br />
&nbsp;&nbsp;&nbsp;&nbsp;            { <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                var customers = db.Customers;<br /><br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                total = customers.Count();<br /><br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                var results = customers<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                .Skip(pageIndex * pageSize)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                .Take(pageSize);<br /><br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                return results.ToList();<br />
&nbsp;&nbsp;&nbsp;&nbsp;            }<br />
        }
                    </dt>
                    <dd>
                        Figure: Good Example - This will allow the service to return a discrete chunk of data instead of the whole table. It is more efficient this way
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a id="EntityNameAsDatabase"></a>Do you know we should name the EDMX and DBML the same as Database?</h2>
                <p>
                    <dl class="image">
                        <dt>
                            <img src="Images\SameNameWithDB.png" alt="These names are consistent with the Database's name" />
                        </dt>
                        <dd>
                            Figure: Good Example - These names are consistent with the Database's name
                        </dd>
                    </dl>
                    <dl class="image">
                        <dt>
                            <img src="Images\DifferentNameWithDB.png" alt="These names are inconsistent with the Database's name" />
                        </dt>
                        <dd>
                            Figure: Bad Example - These names are inconsistent with the Database's name
                        </dd>
                    </dl>
                </p>
            </li>
            <li>
              <h2><a name="OracleAndEF4"></a>Oracle - Do you know your option with EF4 and Oracle?</h2>
               <p>VS 2010 gives EF support via System.Data.SqlClient, and you can't use Oracle in the same way. The important things to know are:</p>
               <div class="greyBox">
                 OleDB doesn't work with EF&#8230;. So you can't use Oracle in this method
               </div>
               <p>Not Possible to use OleDB with EntityFramework</p>
               <dl class="badCode">
                <dt style="background-color: #DDDDDD"> 
                System.Data.OracleClient is a Microsoft's option. It should not be used.<br />
                It never provided EF support.<br />
                Some people did use this one (aka Microsoft's OracleClient)<br />
                Now marked as deprecated<br /><br />

                Note: It was a sample EF provider for Oracle that Microsoft released about a year and a half ago: http://blogs.msdn.com/jkowalski/archive/2008/06/23/sample-entity-framework-provider-for-oracle.aspx
                </dt>
                <dd>Bad example - using Microsoft's System.Data.OracleClient </dd>
               </dl>
               <dl class="goodCode">
                 <dt style="background-color: #DDDDDD"> 
                 There are 3rd party providers that support Oracle + EF<br />
                Oracle strongly recommends customers use a 3rd party ADO.NET Provider for Oracle <br />
                DataDirect is the main one (very $$$$$$)<br />
                There are other 3rd parties as well
                 </dt>
                   <dd>Good example - using a 3rd Party Provider that gives you ADO.NET for Oracle</dd>
               </dl>
               <p>References<br />
               <a href="http://blogs.msdn.com/adonet/archive/2009/06/15/system-data-oracleclient-update.aspx">http://blogs.msdn.com/adonet/archive/2009/06/15/system-data-oracleclient-update.aspx</a>
                </p>             
            </li>

            <li>
                <a name="Evolved-Code"></a>
                <h2>Do you know how code has evolved?</h2>
                <h3>In .NET 1.1 - ArrayLists</h3>
                    <p><b>(System.Collections)</b></p>
                    <p>ArrayList - Implements the IList interface using an array whose size is dynamically increased as required.</p>
                    <p>Example:</p>
                    <dl class="code">
                    <dt>
                    <pre>ArrayList greeks = new ArrayList();
    greeks.Add("Alexopoulos");
    greeks.Add("Gianopoulos");
    greeks.Add("Michaelides");
 
    //and
    ArrayList names = new ArrayList();
    foreach(string g in greeks)
    {
        if(g.IndexOf(&#8220;opoulos&#8221;) > -1)
        {
            names.Add(g);
        }
    }
    </pre>
                        </dt>
                </dl>
            
                <h3>In .NET 2.0  -Generic Lists - enforces type, more OO, reduce code if different types</h3>
                    <p><b>(System.Collections.Generic)</b></p>
                    <p>List &lt;T&gt; : IList - The List class is the generic equivalent of the ArrayList class. It implements the IList generic interface using an array whose size is dynamically increased as required.</p>
                    <p>Example:</p>
                    <dl class="code">
                    <dt>
                    <pre>List&lt;string&gt; greeks = new List&lt;string>();
greeks.Add("Alexopoulos");
greeks.Add("Gianopoulos");
greeks.Add("Michaelides");
 
//and
List&lt;string> names = new List&lt;string&gt;();
foreach(string g in greeks)
{
    if(g.Contains(&#8220;opoulos&#8221;))
    {
        names.Add(g);
    }
}    </pre>
                        </dt>
                </dl>

                <h3>In .NET 3.5 - nicer to query</h3>
                    <p><b>(System.Linq)</b></p>

                    <dl class="code">
                    <dt>
                    <pre>IQueryable&lt;out T&gt; : IEnumerable&lt;T&gt;, 
         IQueryable, IEnumerable</pre>
                        </dt>
                </dl>

                    <p>The IQueryable&lt;T&gt; interface is intended for implementation by query providers.
This interface inherits the IEnumerable&lt;T&gt; interface so that if it represents a query, the results of that query can be enumerated. Enumeration forces the expression tree associated with an IQueryable<T> object to be executed. 
</p>
                    <dl class="code">
                    <dt>
                    <pre>List&lt;string> greeks = new List&lt;string>();
greeks.Add("Alexopoulos");
greeks.Add("Gianopoulos");
greeks.Add("Michaelides");
 
//and
IEnumerable&lt;string> opoulos = greeks.Where(x => x.Contains(&#8220;opoulos&#8221;));
</pre>
                        </dt>
                </dl>

                <h3>In .NET 4.0  (thread safe)</h3>
                    <p><b>(System.Collections.Concurrent)</b></p>
                    <p>(The System.Collections.Concurrent namespace provides several thread-safe collection classes that should be used in place of the corresponding types in the System.Collectionsand System.Collections.Generic namespaces whenever multiple threads are accessing the collection concurrently.)</p>
                    <dl class="code">
                    <dt>
                    <pre>public class ConcurrentBag&lt;T> : IProducerConsumerCollection&lt;T&gt;, 
         IEnumerable&lt;T&gt;, ICollection, IEnumerable
 
Represents a thread-safe, unordered collection of objects.
 
    // Demonstrates: 
    //      ConcurrentBag&lt;T&gt;.Add() 
    //      ConcurrentBag&lt;T&gt;.IsEmpty 
    //      ConcurrentBag&lt;T&gt;.TryTake() 
    //      ConcurrentBag&lt;T&gt;.TryPeek() 
    static void Main()
    {
        // Construct and populate the ConcurrentBag
        ConcurrentBag&lt;string> cb = new ConcurrentBag&lt;string>();
        cb.Add("Alexopoulos");
        cb.Add("Gianopoulos");
        cb.Add("Michaelides");
 
        // Consume the items in the bag 
        int item;
        while (!cb.IsEmpty)
        {
            if (cb.TryTake(out item))
                Console.WriteLine(item);
            else
                Console.WriteLine("TryTake failed for non-empty bag");
        }
 
        // Bag should be empty at this point 
        if (cb.TryPeek(out item))
            Console.WriteLine("TryPeek succeeded for empty bag!");
    }
</pre>
                        </dt>
                </dl>

                <h3>In .NET 4.5   (casting backwards - read only)</h3>
                    <p><b>(System.Collections.Generic)</b></p>

                    <dl class="code">
                    <dt>
                    <pre>public class List<T> : IList<T>, ICollection<T>, 
         IList, ICollection, IReadOnlyList<T>, IReadOnlyCollection<T>, IEnumerable<T>, 
         IEnumerable
</pre>
                        </dt>
                </dl>

                    <p>The Microsoft .NET Framework 4.5 includes the IReadOnlyList, IReadOnlyDictionary and IReadOnlyCollection generic interfaces. The main benefit is that the new interfaces are covariant, except for IReadOnlyDictionary. This means that you can use a derived type as the generic parameter, when passing in a collection into a method that's defined for a base type. If you have a Dog class, for example, that derives from Animal, you can have a method that accepts an IReadOnlyList&lt;Animal&gt; and pass it an IReadOnlyList&lt;Dog&gt;.</p>
                    <dl class="code">
                    <dt>
                    <pre>public class Greek : Person
{
..
}
 
List<Greek> greeks = new List<Greek>()
{
    new Greek() { LastName  = "Alexopoulos" },
    new Greek () { LastName = "Gianopoulos" },
    new Greek () { LastName  = "Michaelides" },
};
// IReadOnlyList supports covariance
IReadOnlyList&lt;Person&gt; people = greeks;
Person first = people[0];
</dt>
                </dl>


            </li>
            
        </ol>
        <h2>
            Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=RT">Ryan Tee</a>
        </p>
    </div>
</asp:Content>
