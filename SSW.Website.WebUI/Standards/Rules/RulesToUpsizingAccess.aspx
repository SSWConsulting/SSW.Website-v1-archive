<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Upsizing your Access Database to SQL Server" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
        <p>Do you agree with them all? Are we missing some? Email us your tips, thoughts or
        arguments. <a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Rules%20To%20Upsizing%20Access';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));" title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">
        Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <h3>
            Rules to Upsizing your Access Database to SQL Server</h3>
        <ol>
            <li><a href="#whichisappropriate">Do you know which is appropriate for you, Access or SQL Server?</a></li>        
            <li><a href="#whatsnewanddifferent">Do you know why to Upsize to SQL Server?</a></li>
            <li><a href="#theupsizingtools">Do you know the Upsizing Tools?</a></li>
            <li><a href="#howtomigrateaccesstosql">Do you know the 4 Steps to Migrating Your Backend from Access to SQL Server 2000?</a></li>
            <li><a href="#scriptchanges">Do you automatically run scripts to keep your dev, test and production databases in sync?</a></li>
            <li><a href="#howtomigrateaccesstors">Do you know the 4 Steps to Migrating Your Reports to Reporting Services 2005?</a></li>
            <li><a href="#deployreports">Do you deploy your Reporting Services reports to your dev, test and production servers using the Deploy command?</a></li>
            <li><a href="#accessui">Do you have a nice Access UI?</a></li>
            <li><a href="#howtomigrateaccesstonet">Do you know the 4 steps to Migrating your Forms to .NET?</a></li>
        </ol>
    </div>
    <br />
    <div class="Quote">
        <b><a name="thegoal" id="thegoal"></a></b>
        <h2>
            The Goal</h2>
        <p>
            Microsoft Access developers generally consider a move to SQL Server for performance,
            security and stability reasons. This process is known as upsizing and developers
            will find a number of key differences while migrating from Access to SQL Server.
            The goal is to:</p>
        <ol>
            <li>Find out what&#8217;s new and different when moving your backend from Access to
                SQL Server 2000</li><li>Successfully migrate your Access database to SQL Server 2000
                    with no problems</li></ol>
    </div>
    <br>
    
    <ol>
        <li><a name="whichisappropriate"></a>
            <h2>
                Do you know which is appropriate for you, Access or SQL Server?
            </h2>
            <p>Question:</p>
            <p>My Company 
              is considering starting development of a custom application in Access 
              97. Because they don't want to spend much money at this point, they want 
              to use Access database at first and switch to SQL Server some time in 
              the future. Could you tell me how difficult it is to switch between these 
              two databases? Anything I could do now to make the conversion easier when 
              it comes?</p>
            <p>Answer:</p>
            <p>Switching 
              from Access (Jet) database to SQL Server isn't as simple as it seems. 
              Yes, the dialects of SQL are similar, but they're not the same. More importantly, 
              while SQL Sever is a true relational database, the Jet database is an 
              Indexed Sequential Access Method (ISAM) database - also known as a flat 
              file database. Although we could argue the differences between the two 
              for hours, suffice it to say that, in many ways, they're exact opposites.</p>
            <p>Putting this 
              difference in simple terms: What's fast in Access is slow in SQL Server, 
              and vice versa. In Access, the fastest way to get to a record is to open 
              up a table object, specify an index, and seek to the record. If you want 
              to pull data from several tables, you can open multiple table objects 
              and seek on them all, assembling the data programmatically.</p>
            <p>With SQL 
              Server, you can't use a table object at all. While indexes certainly exit 
              (and are vital), you don't normally concern yourself with them directly. 
              The best way to pull data from several tables is using a join query. SQL 
              Server is at its best when it pulls small record sets - whether from one 
              table or joined from several. This technique is painfully slow in Access.</p>
            <p>More importantly, 
              with SQL Server, there are far more features and protections for data. 
              In a professionally configured SQL Server, the users (and their front-end 
              applications) can never write directly to the tables at all. They access 
              the data through views, and modify the data using stored procedures. None 
              of these techniques are available in Access.</p>
            <p>So, put this 
              thought to your money-saving employer: Are you actually saving any money 
              by planning a conversion like this? In short term, maybe. In the long 
              term, no. Yes, for the moment, you'll delay buying the hardware, software, 
              and training needed to configure SQL Server. In the long term, you'll still 
              have to buy all those things and convert the code. And you never know 
              how these code conversions can go; it's a difficult thing to predict.</p>
            <p>Never underestimate 
              the value of a known cost. You know now how much the SQL Sever is going 
              to cost, and you're already planning the initial development costs. There's 
              really no way to know for sure what the cost of conversion will be. If 
              you stick with the known costs, at least you're certain of what you're 
              in for. Conversion can eat up a lot of dollars (and time) before it's 
              completed. It's an unknown, which makes it the worst cost of all.
            </p>
        </li>
        <li><a name="whatsnewanddifferent"></a>
            <h2>
                Do you know why to Upsize to SQL Server?
            </h2>
            <p>
                This page is a summary of the SSW whitepapers, as upsizing and developers will find
                a number of key differences while migrating from Access to SQL Server. The 4 main
                reasons to upsize your database from Access to SQL Server 2000 are:</p>
            <ol>
                <li>Less Chance of Data Corruption</li><li>Database Log Files Enable Data Recovery</li><li>
                    Support for More Concurrent Users</li><li>Support for a Larger Database</li></ol>
            <p>
                <br />
                <b>1. Less Chance of Data Corruption</b></p>
            <p>
                In Access, you open the MDB file directly. If, for example, the network connection
                is unexpectedly broken or a client or server machine shuts off without properly
                shutting down the application, there is a good chance your data will be corrupted.</p>
            <p>
                SQL Server, on the other hand, runs as a service &#8211; you do not have direct
                access to the file. Requests for data are managed by the SQL Server service, so
                if the server shuts down unexpectedly or the network connection is broken, the next
                request for data will not be fulfilled. Therefore the integrity of the data is maintained.<br />
                &nbsp;</p>
            <p>
                <b>2. Database Log Files Enable Data Recovery</b></p>
            <p>
                SQL Server has a distinct advantage over Access in that all transactions (database
                updates, insertions and deletions) are kept in a log file. This log records the
                changes to the data and enough information to undo the modifications (if necessary
                later) made during each transaction. These logs can also be used to recover your
                data in the event of system failure.<br />
                &nbsp;</p>
            <p>
                <b>3. Support for More Concurrent Users</b></p>
            <p>
                Access supports a maximum of 255 concurrent users, and as such is not a feasible
                enterprise-level data storage solution. In a real world environment it is common
                to experience major performance issues with as few as 20 users attempting to use
                the Access database simultaneously over a network.</p>
            <p>
                SQL Server supports a concurrent user base that <i>is limited only by available system
                    memory</i>, and because of its optimized query processing engine and ability
                to simultaneously utilize multiple computers, processors and hard drives, it can
                scale to meet any enterprise requirements.</p>
            <p>
                <b>4. Support for a Larger Database</b></p>
            <p>
                Access supports a maximum database size of 2GB plus linked tables. Although use
                of linked tables theoretically enables you to store much more data, it is common
                to experience performance issues due to the amount of data being processed. Generally
                you should consider upsizing your Access database(s) if the size of any one of them
                reaches 100MB.<br />
                <br />
                SQL Server, on the other hand, has vastly improved storage capabilities, allowing
                for 1,048,516 TB of data to be stored efficiently across multiple devices. It also
                has self-repairing and self-compacting features, making it a very robust database
                solution.</p>
            <p>
                For many more reasons to upsize your database see the SSW Whitepaper, <b><a href="/ssw/Standards/DeveloperSQLServer/SSWStandardForUpsizing.aspx">
                    What&#8217;s New and Different when Moving Your Backend from Access to SQL Server
                    2000</a>.</b></p>
        </li>
        <li><a name="theupsizingtools" ></a>
            <h2>
                Do you know the Upsizing Tools?</h2>
            <ul>
                <li><b><a href="/ssw/performancepro">SSW Performance PRO! for Access Performance Tuning </a></b>&nbsp; isolates performance
                    bottle-necks in your Access app. It checks every form, combo and list box, and reviews
                    SQL statements. It reports exactly what to fix to improve the the speed of your
                    application.</li><li><b><a href="/ssw/upsizingpro">SSW Upsizing PRO! for migrating from Access to SQL Server </a></b> checks
                        your database the way the 'Microsoft Upsizing Wizard' should have done. After you
                        use the generated reports, and made the recommended changes, you can upsize to SQL
                        Server without any worries.</li><li>The <b>Microsoft Upsizing Wizard</b> assists in
                            the migration process. The Upsizing Wizard analyzes your Access database and converts
                            your data and database structure into SQL Server format.</li><li><b><a href="/ssw/SQLAuditor">
                                SSW SQL Auditor for reviewing Best Practises on SQL Server 2000 and 2005 databases</a></b> reports on design issues and areas where SQL performance
                                could be improved, and also has wizards that generate SQL scripts to correct common
                                problems.</li></ul>
            <p>
                Read more about these and other tools and how to use them, in the SSW Whitepaper,&nbsp;
                <b><a href="/ssw/Standards/DeveloperSQLServer">How to Migrate Your Backend from Access
                    to SQL Server 2000</a>.</b></p>
        </li>
        <li><a name="howtomigrateaccesstosql" id="howtomigrateaccesstosql"></a>
            <h2>
                Do you know the 4 Steps to Migrating Your Backend from Access to SQL Server 2000?</h2>
            <p>
                The Microsoft Upsizing Wizard that comes with Access converts most of your Access
                database and database objects into SQL Server. However, some features in Access
                are not supported by SQL Server and vice versa, so it is important that you manually
                analyze and rectify any potential issues that may arise before, during and after
                the migration process. It is also crucial that once converted, the resulting database
                manually be inspected to ensure all tables, data and relationships were correctly
                migrated.</p>
            <p>
                Follow these steps to ensure a smooth database migration:</p>
            <ol>
                <li><b>Estimate how long it will take -</b> use the <b><a href="../Templates/">Sample
                    Release Plan for upsizing</a></b> (Upsizing Template)<br />
                    &nbsp;</li><li><b>Configure a Copy of Your Live Access Database for Testing</b> - The
                        first step in upsizing is to configure a copy of your live Access database. You
                        will first perform a test migration on the test copy. Once everything is functioning
                        correctly you will perform the same steps on the live database.<br />
                        &nbsp;</li><li><b>Migrate a Test Copy of Your Live Access Database -</b> Now that you
                            have made an offline copy of your Access database, you can perform a migration on
                            it, ironing out and pre- and post-deployment issues that arise. This includes checking
                            the performance of your forms, changing your DAO code to use ADODB, running the
                            Upsizing Wizard, and fixing issues in the upsized SQL Server database.<br />
                            &nbsp;</li><li><b>Perform Migration of the Live Database -</b> Now that all deployment
                                issues have been corrected on your test database, you can perform the migration
                                on your live database. As you have already recorded and scripted any structural
                                changes required, these steps should take less time to perform; it is simply a matter
                                of running each script against the live Access database and upsized SQL Server database.</li></ol>
            <p>
                For more details on these steps, see the SSW whitepaper, <b><a href="/ssw/Standards/DeveloperSQLServer">
                    How to Migrate Your Backend from Access to SQL Server 2000</a>.</b></p>
        </li>
        <li><a name="scriptchanges"></a>
            <h2>
                Do you automatically run scripts to keep your dev, test and production databases
                in sync?</h2>
            <p>
                Once your Access back-end has been migrated to SQL Server, how do you keep your
                dev, test and production databases in sync? Back when everything was in Access,
                you could just copy the database to each server each time the schema changed. With
                SQL Server, on the other hand, the best way is to script the changes and run them
                using the supplied OSQL.EXE utility (good) or via the more user-friendly <a href="/ssw/SQLDeploy/">
                    SSW SQL Deploy</a> (better).</p>
            <div class="Quote">
                <ol>
                    <li><strong>Dev Server:</strong> (C:\Northwind\NorthwindApp2003.mdb linked to SQL Data)
                        Make a note of all schema changes</li><li><strong>Test Server:</strong> (C:\Northwind\NorthwindApp2003.mdb
                            linked to SQL Data) Manually implement schema changes</li><li><strong>Production Server:</strong>
                                (C:\Northwind\NorthwindApp2003.mdb linked to SQL Data) Manually implement schema
                                changes</li></ol>
            </div>
            <strong>Bad: Manually implementing schema changes across your servers is tedious and
                prone to human error</strong>
            <dl class="goodImage">
                <dt>
                    <img src="Images/osql.gif" width="312" height="255" /></dt><dd>Figure: The OSQL command line utility comes with
                        SQL Server and lets you batch deploy your SQL scripts</dd></dl>
            <dl class="goodImage">
                <dt>
                    <img src="/ssw/SQLDeploy/Images/Defaul8.jpg" width="550" height="490" /></dt><dd>Figure: SQL Deploy provides
                        an easy-to-use and efficient Windows interface to deploy SQL scripts across your
                        servers</dd></dl>
        </li>
        <li><a name="howtomigrateaccesstors"></a>
            <h2>
                Do you know the 4 Steps to Migrating Your Reports to Reporting Services 2005?</h2>
            <p>
                Microsoft SQL Server Reporting Services is a new reporting platform that has even
                more functionality and flexibility than Microsoft Access and Crystal developers
                have become accustomed to. In addition, it combines the speed, scalability, and
                manageability of centrally managed reporting, as reporting has moved from the client
                model to the client-server model. This brings all the advantages of Web-based applications.</p>
            <p>
                These are the main steps to migrating your Access reports into Reporting Services
                2005:</p>
            <ol>
                <li><b>Import your reports into Reporting Services</b> -&nbsp; Use the built-in <b>Import
                    Reports</b> feature to import the Access database reports into Reporting Services<br />
                    &nbsp;</li><li><b>Fix any build warnings and errors</b> - some features such as conditional
                        formatting and parameters are not imported during the process and need to be recreated
                        using expressions<br />
                        &nbsp;</li><li><b>Create a shared data source</b> - so that all your reports are configured
                            to point to the same SQL database<br />
                            &nbsp;</li><li><b>Test and deploy the reports</b> - to your report server to enable
                                them to be viewed over the web</li></ol>
            <p>
                For more details on these steps, see the SSW whitepaper, <b><a href="/ssw/Standards/DeveloperSQLReportingServices">
                    How to Migrate Access Reports to SQL Server Reporting Services</a>.</b></p>
        </li>
        <li><a name="deployreports"></a>
            <h2>
                Do you deploy your Reporting Services reports to your dev, test and production servers
                using the Deploy command?</h2>
            Once you have migrated your Access reports to Reporting Services, how do you keep
            your dev, test and production reports in sync? The best way is to use the Right-Click
            Deploy command in Visual Studio. You will need to change the Report Server each
            time in the report project properties.
            <dl class="goodImage">
                <dt>
                    <img src="Images/RSsolutionproperties.gif" width="600" height="384" /><br />
                    <br />
                    <img src="Images/RSdeploy-rightclick.gif" width="285" height="516" /></dt>
                <dd>
                    Figure: Set the URL for your dev, test or production server then deploy the report
                    changes accordingly</dd>
            </dl>
        </li>
        <li><a name="accessui" ></a>
            <h2>
                Do you have a nice Access UI?</h2>
            <p>
                Now that you have your data in SQL Server and your Reports in Reporting Services,
                you need to decide whether or not to keep your forms in Access or move them to .NET.</p>
            <p>
                If you do decide to keep your forms in Access, keep in mind that just because you
                are using Access forms doesn't mean your forms should look old and stuffy. You can
                use XP-style icons and layout guidelines to fast forward your forms into the future.
                See how you can quickly and effectively <a href="/ssw/Standards/Rules/RulesToBetterAccessUI.aspx">
                    improve the look and feel of your Access application</a>.</p>
        </li>
        <li><a name="howtomigrateaccesstonet" ></a>
            <h2>
                Do you know the 4 steps to Migrating your Forms to .NET?</h2>
            <p>
                Access developers generally consider a move to a .NET front-end for performance,
                extensibility, security and stability reasons. This process is known as application
                conversion and developers will find a number of key differences while migrating
                from Access to the .NET environment. It is crucial that these differences are noted
                and appropriate action is taken to ensure a seamless and incident-free migration
                from Access to .NET Windows Forms.</p>
            <p>
                Migrating your forms to .NET involves 4 main steps:</p>
            <ol>
                <li><b>Create the Data Access Components</b> -&nbsp; In Access, binding controls to
                    the database is as straightforward as setting the form&#8217;s <b>RecordSource</b>
                    property to a query or table and then setting the <b>ControlSource</b> for any control
                    to a field in the specified query or table. In .NET, forms are disconnected from
                    the database. To bind controls to the database, projects are created that contain
                    classes and objects to specifically handle database operations.<br />
                    &nbsp;</li><li><b>Create the User Interface -</b> The Visual Studio form designer is
                        quite similar to the Access form designer. In Access, a new form can be added to
                        a database by clicking the <b>New</b> button on the Forms page of the database window.
                        In Visual Studio .NET, a form is added by right-clicking a project and selecting
                        <b>Add -&gt; Add Windows Form&#8230;</b><br />
                        &nbsp;</li><li><b>Bind the Form Controls -</b> In Access, binding a form control is
                            achieved by setting the <b>Record Source</b> property of a form to a query or table
                            and setting the <b>Control Source</b> and/or <b>Row Source</b> of the control to
                            a field of the form&#8217;s record source.<br />
                            <br />
                            To bind the controls in the a .NET form to your DataSets:<br />
                            <br />
                            a. Add references to the data access components<br />
                            b. Create instances of the DataSets<br />
                            c. Bind the form controls<br />
                            d. Add code to fill the DataSets<br />
                            &nbsp;</li><li><b>Add the Form Functionality -</b> In Visual Studio .NET, there is no
                                expression builder or macro support: all form event code is written in functions
                                behind the form. This is similar to the <b>code builder</b> option in Access.</li></ol>
            <p>
                For more details on these steps, see the SSW whitepaper, <b><a href="/ssw/Standards/DeveloperDotNet">
                    How to Migrate Access Forms to .NET Windows Forms</a>.</b></p>
        </li>
    </ol>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a></p>
</asp:Content>
