<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW - The Best 3rd Party SQL Server Tools" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <div class="TableOfContents">
        <h3>
            SQL Server Tools</h3>
        <ol>
            <li><a href="#RedGate">Red Gate SQL Compare</a></li>
            <li><a href="#SQLDeploy">SSW SQL Deploy</a></li>
            <li><a href="#SqlAuditor">SSW SQL Server Auditor</a></li>
            <li><a href="#SQLFormatter">Instant SQL Formatter</a></li>
			<li><a href="#SqlDoc">Red-Gate SQL Doc</a></li>
			<li><s><a href="#SqlScribe">SQL Scribe</a></s></li>
			<li><a href="#ApexSqlDoc">Apex SQL Doc</a></li>	
            <li><a href="#LECCO">LECCO SQL Expert</a></li>
            <li><a href="#SpeedFerret">Speed Ferret</a></li>
            <li><a href="#xpsmtp">XPSMTP</a></li>
            <li><a href="#agscrosstab">AGS Crosstab Builder for SQL 2000</a></li>
            <li><a href="#mylittleadmin">myLittleAdmin for SQL Server 2005</a></li>
        </ol>
    </div>
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D54686525323042657374253230546F6F6C73253230466F7225323053514C253230536572766572')">
    Let us know</a> what you think.</p> 

<p>
 would you like your software to be considered for this list?  
	<a href="TheBest3rdPartyTools.aspx#HowToGetMyToolsConsidered">Give us your details</a>.
</p>
    <ol>
        <li><a name="RedGate"></a>
            <h2>Red Gate SQL Compare</h2>
            <p>
                One day in 1999 I wanted to compare two SQL server databases... basically I wanted
                to find a utility that was like our SSW Renovator. Luckly I found a program that is
                both well written and works as it would have, if I had have been forced to write it myself.
                That is why it is one of my favourite SQL server utilities.
            </p>
            <p>
                SQL Compare is an extremely useful tool which you can use to compare and synchronize
                the structure of SQL Server databases. This is useful in a development environment
                when changes made to a local database need to be pushed to a live database on a
                remote server. Traditionally, this meant spending hours trawling through database
                schema, hand-generating migration scripts. SQL Compare will automate this process
                for you. It will compare and synchronize all database objects, including, but not
                limited to, tables, stored procedures, views and user defined functions.
            </p>
            <div class="imageHolder">
                <img src="Images/sqlcompare.gif" alt="SQL Compare" width="771" height="596" /><br />
                <p>
                    <span class="Caption">Figure: Red Gate SQL Compare</span>
                    <br />
                    <a href="/ssw/Redirect/SQLServer/SQLCompare.htm" target="_blank">SQL Compare Web Site</a>
                    <img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11" />
                    <br />
                    Another similar utility is <a href="/ssw/Redirect/SQLServer/berrywareSQLMatcher.htm"
                        target="_blank">Berryware SQLMatcher</a>
                </p>
            </div>
        </li>
        <li><a name="SQLDeploy"></a>
            <h2>SSW SQL Deploy</h2>
            <p>
                Schema changes are painful! In the early days, when we deployed a rich business
                applications to our client's PCs, we hit problems when we had schemas out of sync.
                We would avoid any changes to schema because we could not handle change.
            </p>
            <p>
                Worse still when we did have an unavoidable structural change we found we could
                not trust the client to manually run .sql files via Query Analyzer or OSQL.</p>
            <p>
                So SSW SQL Deploy solves this problem by automatically performing Database updates
                as a part of your application deployment. It is as simple as bundling the SSWSQLDeploy.dll
                and adding a few lines of code to your application. From that point on database
                changes will happen automatically. Specifically your application will now be able
                to:
            </p>
            <p>
                automatically Create the database if it doesnt exist
                <br />
                automatically Upgrade the schema when you install a newer version
                <br />
                Reconcile the schema to check the schema is correct</p>
            <p>
                For more information see <a href="/ssw/Standards/Rules/RulesToBetterdotNETProjects.aspx#Reconcile">
                    Rules to Better .NET Projects - Reconcile</a></p>
            <p>
                Note: Yes we love Red Gate SQL Compare for comparing the old database with the new
                and synchronises the schemas - but don't use it as a crutch! If you need it for
                every application deployment you have a problem in your process. So we let SSW SQL
                Deploy handle the deployment automatically and only use Red Gate SQL Compare when
                the backends have got out of sync and we need to know the difference.
            </p>
            <p>
                Each application should have 2 buttons included; Upgrade and Reconcile.
            </p>
            <div class="imageHolder">
                <img src="/ssw/SQLDeploy/Images/SQLDeploySetupControl.gif" alt="SQL Deploy" width="591"
                    height="385" />
                <p>
                    <span class="Caption">Figure: Add the SSW SQL Deploy database control and your application
                        will be able to Create, Upgrade and Reconcile the backend.</span>
                </p>
            </div>
            <p><a href="/ssw/SQLDeploy/">Try out SSW SQL Deploy</a> for free.</p>
        </li>
        <li><a name="SqlAuditor"></a>
            <h2>SSW SQL Server Auditor</h2>
            <p>
                Before I had SQL Server Auditor what I use to do during design reviews was to ask
                for the same old changes - over and over again. eg. missing clustered indexes, nvarchars
                used where they werent needed, DateTime fields where it could fit in SmallDateTime.</p>
            <p>
                Today all these checks are now handled by SSW SQL Auditor. I am always grateful
                for the time it saves me and the consistency I get.</p>
            <div class="imageHolder">
                <img src="/ssw/SQLAuditor/Images/SQLAuditorWelcome.gif" alt="SQL Auditor" width="550"
                    height="463" />
                <p>
                    <span class="Caption">Figure: SSW SQL Server Auditor introduction screen.</span>
                    <br />
                    <a href="/ssw/SQLAuditor/">SSW SQL Auditor</a>
                </p>
            </div>
        </li>
         <li><a name="SQLFormatter"></a>
            <h2>Instant SQL Formatter</h2>           
            <div class="imageHolder">
                <p>
                    <a href="/ssw/Redirect/SQLServer/SQLFormatter.htm" target="_blank">Instant SQL Formatter Web Site</a>
                    <img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11" />
                    <br />
                    <img src="/ssw/Standards/Images/SQLFormatter.png" alt="SQL Formatter" />
                    <br />
                    <span class="Caption">Figure: Add-In for SQL Server Studio Management</span> 
                </p>

            </div>
        </li>

		 <li><a name="SqlDoc"></a>
            <h2>Red-Gate SQL Doc</h2>           
            <div class="imageHolder">
                <p>
                    <a href="/ssw/Redirect/SQLServer/SqlDoc.htm" target="_blank">Red-Gate SQL Doc Web Site</a>
                    <img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11" />
                </p>
            </div>
        </li>
        <li><s><a name="SqlScribe"></a></s>
            <h2><s>SQL Scribe</s></h2>
            <p>
                <s>
                I had never thought a document utility would make it into my favourites. You can
                click though each link to take a closer look at the object making the document alive,
                instead of printing off tens of thousands of pages.
                </s>
            </p>
            <p>
                <s>
                SQL Scribe is a documentation tool created with the developer in mind. SQL Scribe
                will interrogate a SQL 7.0 or 2000 database and extract the database schema. This
                schema information is stored in an MS Access 2000 database. Using any readily available
                browser the developers can navigate though the system documentation which is laid
                out in a easy to read and logical way.
                </s>
            </p>
            <div class="imageHolder">
                <p><s>
                    <a href="/ssw/Redirect/SQLServer/SqlScribe.htm" target="_blank">SQL Scribe Web Site</a>
                    <img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11" />
                    </s>
                </p>
            </div>
        </li>
	<li><a name="ApexSqlDoc"></a><h2>Apex SQL Doc</h2>
	<p>
	Apex SQL Doc is another document utility. With this tool you can document your database into Compiled Help or HTML documentation. Compareded with SQL Scribe, it is easier to deploy or publish the document as it does not need any data store for schema information.
	</p>
	<div class="imageHolder">
                <p>
                    <a href="/ssw/Redirect/SQLServer/ApexSQLDoc.htm" target="_blank">Apex SQL Doc</a>
                    <img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11" />
                </p>
            </div>
	</li>

        <li><a name="LECCO"></a>
            <h2>LECCO SQL Expert</h2>
            <p>
                LECCO SQL Expert is the only complete SQL performance tuning and optimization solution
                offering problematic SQL detection and automatic SQL rewrite. With its built-in
                Artificial Intelligence (AI) based Feedback Searching Engine, LECCO SQL Expert reduces
                the effort required to optimize SQL and makes even the most junior programmer an
                expert.
            </p>
            <p>
                Developers use LECCO SQL Expert to optimize SQL during application development.
                DBAs eliminate problematic SQL before users experience application performance problems
                by using LECCO SQL Expert in production systems.
            </p>
            <div class="imageHolder">
                <img src="Images/lecco.gif" alt="Lecco" width="500" height="262" />
                <p>
                    <span class="Caption">Figure: Lecco SQL Expert</span>
                    <br />
                    <img src="Images/leccosqlexpert.gif" alt="Lecco SQL Expert" width="158" height="55" />
                    <a href="/ssw/Redirect/Lecco.htm" target="_blank">LECCO SQL Expert Web Site</a>
                    <img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11" />
                </p>
            </div>
        </li>
        <li><a name="SpeedFerret"></a>
            <h2>Speed Ferret</h2>
            <p>
                SPEED Ferret is a global find & replace utility that works with Microsoft Access,
                SQL Server, and Visual Basic. With SPEED Ferret you can rapidly search all of the
                property values and all of the source code in all of your projects at one time.
                Find out where an object is used before modifying or deleting it. Rename an object
                while quickly updating all references to it.
            </p>
            <div class="imageHolder">
                <img src="Images/SpeedFerret.gif" alt="" width="400" height="389" />
                <p>
                    <span class="Caption">Figure: Speed Ferret</span>
                    <br />
                    <a href="/ssw/Redirect/Moshannon.htm" target="_blank">Speed Ferret - Moshannon</a>
                    <img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11" />
                </p>
            </div>
        </li>
        <li><a name="xpsmtp"></a>
            <h2>XPSMTP</h2>
            <p>
                XPSMTP provides a SMTP based SQL Mail solution for sending MIME based email over
                SMTP, implemented as an Extended Stored Procedure. It does not require any software
                to be installed, just a SMTP email server that can handle the outgoing mail request.
                XPSMTP is using TCP/IP sockets to communicate to port 25. XPSMTP does not spawn
                additional threads, the xp_smtp_sendmail request is handled on the same thread as
                it is being called on by SQL Server. Each call to xp_smtp_sendmail establishes a
                connection to the SMTP server and disconnects when done sending the email. The connection
                is created using asynchronous communication and aborts based on a timeout value
                (@timeout which by default is 10000 milliseconds, so 10 seconds).
                <br />
                Key features are as follows:
            </p>
            <ul>
                <li>Configurable SMTP port support (instead of hard coded port 25)</li>
                <li>Support for text/html MIME encoding besides the current text/plain MIME encoding</li>
                <li>Ability to pass multiple file attachments (adding @attachments parameter)</li>
                <li>Ability to read message text from file, to bypass the XP parameter size limit</li>
            </ul>
            <p>
                <a href="/ssw/Redirect/XPSMTP.htm" target="_blank">SQL Server SMTP Mail XP</a>
                <img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11" />
            </p>
        </li>
        <li><a name="agscrosstab"></a>
            <h2>AGS Crosstab Builder for SQL 2000</h2>
            <p>
                AGS Crosstab Builder for SQL 2000 is an extended stored procedure that will generate
                crosstab results from standard SQL statements. You now do not have to run OLAP services
                to generate what Microsoft Access has been able to do for years. AGS Crosstab Builder
                for SQL 2000 is simple to use.
            </p>
            <p>
                If you have SQL Server Reporting Services, you should use a Matrix control instead,
                as it offers drill down functionality. If SQL Reporting Services is unavailable,
                we would typically use the AGS crosstab in the following scenarios.
            </p>
            <p>Windows Forms:</p>
            <ul>
                <li>Displaying crosstabs in the .NET Windows Forms datagrid</li>
            </ul>
            <p>Web Forms:</p>
            <ul>
                <li>In an ASPX datagrid. However, no customisation of column styles is allowed in this
                    case because it is based on a non-typed dataset. e.g. cant bold the total column</li>
                <li>When using Infragistics UltraWebGrid - but you should make sure that you have repeating
                    data to get full use of the group expansion functionalty</li>
            </ul>
            <div class="imageHolder">
                <p>
                    <img src="Images/AGCrossTab.gif" alt="" width="524" height="387" />
                </p>
                <span class="Caption">Figure: AGS Crosstab Builder</span>
            </div>
            <a href="/ssw/Redirect/AGSoftware/AGSoftwareCrossTab.htm" target="_blank">AGS Crosstab
                Builder for SQL 2000</a>
            <img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11" />
        </li>
        <li><a name="mylittleadmin"></a>
            <h2>myLittleAdmin for SQL Server 2005</h2>
            <p>myLittleAdmin is the first web-based management tool specially designed for MS SQL Server 2005. It enables you to manage most objects of your databases and servers and act most operations through a web browser. It has very similar interface as SQL Server Management Studio but it's faster and easier to use.
            </p>
            <div class="imageHolder">
                <p>
                    <img src="Images/myLittleAdmin.gif" alt="" width="732" height="573" />
                </p>
                <span class="Caption">Figure: <a href="/SSW/Redirect/Livedemo.htm" target="_blank">Test myLittleAdmin online</a></span>
            </div>
            <p>
                <a href="/SSW/Redirect/Mylittleadmin.htm" target="_blank">myLittleAdmin for SQL Server 2005</a>
                <img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11" />
            </p>
        </li>
    </ol>
    <h2>Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
    </p>
</asp:Content>
