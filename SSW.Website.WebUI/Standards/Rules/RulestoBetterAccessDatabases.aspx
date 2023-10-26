<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Access Databases" %>

<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <ssw:RandomTestimonial ID="testimonial" runat="server" Display="TopCommon" CategoryID="10" />
    <p>
        What is it that makes a good software development consultancy? What sets one company
        completely above another? What makes a project completely successful?</p>
    <p>
        Do you agree with them all? Are we missing some? Email us your tips, thoughts or
        arguments. <a href="javascript:var e1='s%73%77&#046;%63%6f%6d%2e%61%75',e2='&#109;&#097;&#105;&#108;&#116;&#111;&#058;%20', e3='info', e4='?Subject=Rules%20to%20Better%20Access%20Databases';var e0=e2+e3+'&#064;'+e1+e4;(window.location?window.location.replace(e0):document.write(e0));"
            title="&#105;&#110;&#102;&#111;&#064;&#115;&#115;&#119;&#046;&#099;&#111;&#109;&#046;&#097;&#117;">
            Let us know</a> what you think.</p>
    <p>
        <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="SQL Auditor">
            <tr>
                <td>
                    <b>*** Update ***</b> Instead of manually implementing these rules, use <a href="/ssw/UpsizingPRO">
                        SSW Upsizing PRO</a> to automatically implement many of them for you. <a href="/ssw/Download/Download.aspx?GroupCategoryID=2ACCESS">
                            Download</a> it and give it a go.
                </td>
            </tr>
        </table>
    </p>
    <table class="clsSSWTableOfContents" cellspacing="2" cellpadding="2" summary="Index"
        style="{width: 80%}">
        <tr>
            <td>
                <b>Rules to Better Access Databases</b><br />
                <br />
                <b>1 - 99 Backend General Rules</b>
                <ol style="margin-left: 30px;">
                    <li><a href="#UseSpacesInTableNames">Do you use spaces in table names?</a></li>
                    <li><a href="#UseUnderscores">Do you use underscores?</a></li>
                    <li><a href="#UseHiddenTables">Do you use hidden tables or queries?</a></li>
                    <li><a href="#UseUniqueIndex">Do you always have a unique index on a table?</a></li>
                </ol>
                <b>100 - 199 Backend Data Rules</b>
                <ol start="100" style="margin-left: 30px;">
                    <li><a href="#DefaultValue">Do you have valid the DefaultValue and ValidationRule properties
                        on a field?</a></li>
                    <li><a href="#ValidationText">Do you have valid the ValidationText property on a field?</a></li>
                    <li><a href="#FormatInputMask">Do you use the Format and InputMask properties on a field?</a></li>
                    <li><a href="#CaptionProperty">Do you use the Caption property on a field?</a></li>
                    <li><a href="#AllowZeroLengthProperty">Do you use the Allow Zero Length Property on
                        a field?</a></li>
                    <li><a href="#RequiredProperty">Do you use the Required property on a field?</a></li>
                    <li><a href="#UniqueIndexRequiredProperty">Do you use a unique index and the Required
                        property on a field?</a></li>
                </ol>
                <b>200 - 299 Backend Table and Column Rules</b>
                <ol start="200" style="margin-left: 30px;">
                    <li><a href="#SysPrefix">Do you use prefix sys in table name?</a></li>
                    <li><a href="#RequiredTables">Do you always have version tracking tables?</a></li>
                </ol>
                <b>600 - 699 Backend Relationship Rules</b>
                <ol start="600" style="margin-left: 30px;">
                    <li><a href="#MultipleForeignKeyRelationshipsDifferentNames">Do you have multiple key
                        foreign key relationships on tables that map to fields of a different name?</a></li>
                    <li><a href="#FieldsMultipleKeyIndexes">Do you have a table with fields with multiple
                        key indexes?</a></li>
                </ol>
                <b>700 - 799 Frontend Rules</b>
                <ol start="700" style="margin-left: 30px;">
                    <li><a href="#ComplexQueries">Do you have complex queries (Upsizing Problem)?</a></li>
                    <li><a href="#ParameterQueries">Do you use parameter queries with EXISTS keyword (Upsizing
                        Problem)?</a></li>
                    <li><a href="#VBAFunctionNamesInQueries">Do you remove VBA function names in queries
                        before upsizing queries (Upsizing problem)?</a></li>
                </ol>
            </td>
        </tr>
    </table>
    <h2>
        <a name="Backend"></a>Backend General Rules</h2>
    <ol start="1">
        <li>
            <h2>
                <a name="UseSpacesInTableNames"></a>Do use spaces in table names?</h2>
            <p>
                Having spaces in table names necessitates the use of square brackets in all your
                code. e.g. [Order Details].[Order ID] instead of OrderDetail.OrderID. Spaces will
                also cause problems when you upsize to SQL Server later on... there is just no benefit.
            </p>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Upsizing PRO">
                <tr>
                    <td>
                        <a href="/ssw/UpsizingPRO">Upsizing PRO</a> will check this rule
                    </td>
                </tr>
            </table>
           
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/UseSpacesInTableNames.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/UseSpacesInTableNames.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="UseUnderscores"></a>Do you use underscores (Preference only)?</h2>
            <p>
                They just add characters. Surely Order_Details.Order_ID is no better then OrderDetail.OrderID
            </p>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/Underscores.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/Underscores.aspx</a></font>  
        </li>
        <li>
            <h2>
                <a name="UseHiddenTables"></a>Do you have hidden tables or queries (Upsizing problem)?</h2>
            <p>
                <ol>
                    <li>Access2000: Hidden tables are not shown in the list of tables available for upsizing
                        regardless Tools->Options->View </li>
                    <li>All versions of Access: Tables created by ADODB ("CREATE TABLE ...") are not shown
                        at all </li>
                </ol>
            </p>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/HiddenTables.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/HiddenTables.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="UseUniqueIndex"></a>Do you always have a unique index on a table?</h2>
            <p>
                If Access linked table does not have an index to uniquely identify rows, the whole
                table will be read-only
            </p>
                        <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Upsizing PRO">
                <tr>
                    <td>
                        <a href="/ssw/UpsizingPRO">Upsizing PRO</a> will check this rule
                    </td>
                </tr>
            </table>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/UniqueIndex.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/UniqueIndex.aspx</a></font> 
          </li>
    </ol>
    <h2>
        <a name="BackendDataRules"></a>Backend Data Rules</h2>
    <ol start="100">
        <li>
            <h2>
                <a name="DefaultValue"></a>Do you have invalid DefaultValue and ValidationRule properties
                (Upsizing problem)?</h2>
            <p>
                When you upsize a table, the Upsizing Wizard tries to "map" Visual Basic for Applications
                functions in your DefaultValue and ValidationRule properties to an equivalent TSQL
                function. If this attempt is not successful, the validation rule or default will
                be skipped by the Upsizing Wizard. Consider the following:
            </p>
            <ul>
                <li>If the Upsizing Wizard fails to map a function in a field's ValidationRule property,
                    only the validation rule is skipped, and the rest of the table is upsized. </li>
                <li>If the Upsizing Wizard fails to map a function in a field's DefaultValue property,
                    the entire table is skipped. </li>
                <li>Access 2000: Validation rules are not upsized </li>
            </ul>
                        <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Upsizing PRO">
                <tr>
                    <td>
                        <a href="/ssw/UpsizingPRO">Upsizing PRO</a> will check this rule
                    </td>
                </tr>
            </table>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/DefaultValue.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/DefaultValue.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="ValidationText"></a>Do you have valid ValidationText property(Upsizing
                problem)?</h2>
            <p>
                ValidationText is upsized only if its accompanying ValidationRule is successfully
                migrated. Avoid the use of apostrophes ( ' ) in your validation text because they
                will be displayed as quotation marks ( " ) when upsized.
            </p>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/ValidationText.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/ValidationText.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="FormatInputMask"></a>Do you use the Format and InputMask properties on
                a field?</h2>
            <p>
                SQL Server and MSDE have no equivalent to the Format or InputMask property in Microsoft
                Access 2000. As a result, neither property will be upsized when it is encountered
                by the Upsizing Wizard, nor will any errors be reported in the Upsizing Report.
                All formatting displayed as a result of using the Format property will be lost when
                the data is migrated to SQL Server or MSDE.
            </p>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/InputMask.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/InputMask.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="CaptionProperty"></a>Do you use the Caption property on a field (Upsizing
                Problem)?</h2>
            <p>
                The Caption property is ignored by the Upsizing Tools. The true column name of a
                field will always be upsized, regardless of what the caption for that field may
                read.
            </p>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/CaptionProperty.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/CaptionProperty.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="AllowZeroLengthProperty"></a>Do you use the AllowZeroLength property on
                a field (Upsizing Problem)?</h2>
            <p>
                <ul>
                    <li>The value that you select for the AllowZeroLength property determines whether zero
                        length strings ("") may be inserted into a field. Currently, the Upsizing Wizard
                        does not create a constraint or trigger against an upsized table to enforce this
                        rule. Instead, you must manually create a Check Constraint on the columns once the
                        upsizing process is complete.</li><li>Still an issue in Access 2000 -2003</li></ul>
            </p>
                        <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Upsizing PRO">
                <tr>
                    <td>
                        <a href="/ssw/UpsizingPRO">Upsizing PRO</a> will check this rule
                    </td>
                </tr>
            </table>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/AllowZeroLength.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/AllowZeroLength.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="RequiredProperty"></a>Do you use the Required property on a field?</h2>
            <p>
                The Required property of a field determines whether the field will allow null values
                after upsizing. If Required is set to Yes in Microsoft Access, the upsized field
                will not allow null values. If Required is set to No, null values are acceptable.
            </p>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/RequiredProperty.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/RequiredProperty.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="UniqueIndexRequiredProperty"></a>Do you use an unique index and the Required
                property on a field?</h2>
            In SQL Server a field with a unique index cannot contain Null values.
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Upsizing PRO">
                <tr>
                    <td>
                        <a href="/ssw/UpsizingPRO">Upsizing PRO</a> will check this rule
                    </td>
                </tr>
            </table>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/UniqueIndexAndRequiredProperty.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/UniqueIndexAndRequiredProperty.aspx</a></font> 
        </li>
    </ol>
    <h2>
        <a name="BackendDataRules"></a>Backend Table and Column Rules</h2>
    <ol start="200">
        <li>
            <h2>
                <a name="SysPrefix"></a>Do you use prefix sys in table name (Best Practice)?</h2>
            <p>
                Don't use sys as a prefix for Access tables. Some developers use this for system
                tables etc. SQL Server uses tables with this prefix and it becomes confusing. We
                recommend system tables start with <b><b style="color: black; background-color: #ffff66">
                    zs</b></b> eg. zsUsers</p>
                        <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Upsizing PRO">
                            <tr>
                                <td>
                                    <a href="/ssw/UpsizingPRO">Upsizing PRO</a> will check this rule
                                </td>
                            </tr>
                        </table>
                See our <a href="RulesToBetterSQLServerDatabases.aspx#ZSPrefix">Rules to Better SQL Server Databases - Do you add zs prefix to table name?</a>
           <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/PrefixSys.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/PrefixSys.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="RequiredTables"></a>Do you always have version tracking tables?</h2>
            <p>
                We always use two tables for tracking versioning information:<br />
            </p>
            <p>
                <ul>
                    <li>_zsDataVersion tracks the schema changes, and which update script we are up to.
                        This helps tremendously in determining which version of the scripts are still required
                        between development, test, and production databases.</li><li>_zsVersionLatest tracks
                            which version the front-end client should be. This allows us to give a warning to
                            (or even deny) users who are connecting to the database while not using the right
                            version of the front-end client.</li></ul>
            </p>
            <p>
                Please see "<a href="http://rules.ssw.com.au/Management/RulesToSuccessfulProjects/Pages/DoYouStopDealingWithDataAndSchema.aspx">Is a Back-end structural
                    change going to be a hassle?</a>" on our Rules to Successful Projects.</p>
              <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/VersionTrackingTables.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/VersionTrackingTables.aspx</a></font> 
        </li>
    </ol>
    <h2>
        <a name="BackendRelationshipRules"></a>Backend Relationship Rules</h2>
    <ol start="600">
        <li>
            <h2>
                <a name="MultipleForeignKeyRelationshipsDifferentNames"></a>Do you have multiple
                key foreign key relationships on tables that map to fields of a different name (Upsizing
                Problem)*?</h2>
            <table>
                <tr>
                    <td>
                        <img src="Images/MultipleForeignKeyRelationshipsDifferentNames.jpg" alt="Upsizing Relationships 1"
                            border="1" width="294" height="124">
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Figure: Multiple Foreign Key Relationships Different Names</b>
                    </td>
                </tr>
            </table>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Upsizing PRO">
                <tr>
                    <td>
                        <a href="/ssw/UpsizingPRO">Upsizing PRO</a> will check this rule
                    </td>
                </tr>
            </table>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/MultipleKeyForeignKeyRelationships.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/MultipleKeyForeignKeyRelationships.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="FieldsMultipleKeyIndexes"></a>Do you have fields with multiple key indexes
                (Upsizing Problem)?</h2>
            <table>
                <tr>
                    <td>
                        <img src="Images/FieldsMultipleKeyIndexes.jpg" alt="Upsizing Relationships 2" border="1"
                            width="358" height="222">
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Figure: A table with fields with multiple key indexes where the total size of the
                            fields adds to more than 450 characters</b>
                    </td>
                </tr>
            </table>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Upsizing PRO">
                <tr>
                    <td>
                        <a href="/ssw/UpsizingPRO">Upsizing PRO</a> will check this rule
                    </td>
                </tr>
            </table>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/FieldsWithMultipleKeyIndexes.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/FieldsWithMultipleKeyIndexes.aspx</a></font> 
        </li>
    </ol>
    <p>
        <br />
    </p>
    <h2>
        <a name="Frontend"></a>Frontend Rules</h2>
    <ol start="700">
        <li>
            <h2>
                <a name="ComplexQueries"></a>Do you have complex queries (Upsizing Problem)?</h2>
            <p>
                The Upsizing Tools do not try to upsize every type of Microsoft Access query that
                you may have in your Access (Jet) database. The following varieties of queries will
                not upsize:
                <ul>
                    <li>Crosstab queries</li><li>Action queries (append, delete, make-table, update) that
                        take parameters</li><li>Action queries that contain nested queries</li><li>SQL pass-through
                            queries</li><li>SQL Data Definition Language (DDL) queries</li><li>Union queries</li><li>
                                Queries that reference values on a form</li></ul>
            </p>
            <p>
                You must manually re-create queries that the Upsizing Tools do not migrate.
            </p>
             <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/ComplexQueries.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/ComplexQueries.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="ParameterQueries"></a>Do you avoid parameter queries with EXISTS keyword
                and comparison operators (&lt;&gt; or =)(Upsizing Problem)?</h2>
            <p>
                The MS Upsizing Wizard cannot upsize Microsoft Access queries containing
                <ul>
                    <li>EXISTS <> FALSE/TRUE or</li><li>EXISTS = FALSE/TRUE</li></ul>
                <br />
                For example, the following query will not be upsized:<br />
                <br />
                <pre>PARAMETERS [@Employee Last Name] Text ( 20 );				
SELECT Orders.OrderID
, Orders.CustomerID
, Orders.EmployeeID
FROM Orders
WHERE EXISTS (SELECT EmployeeID
	FROM Employees 
	WHERE LastName= [@Employee Last Name] 
	AND Employees.EmployeeID=Orders.EmployeeID) &lt;&gt; FALSE</pre>
                <b>Figure: Bad example of Access query with EXISTS keyword and comparison operator</b>
            </p>
            <pre>PARAMETERS [@Employee Last Name] Text ( 20 );	
SELECT Orders.OrderID
, Orders.CustomerID
, Orders.EmployeeID
<br />FROM Orders
<br />WHERE EXISTS (SELECT EmployeeID 
	FROM Employees
<br />	WHERE LastName= [@Employee Last Name] 
	AND Employees.EmployeeID=Orders.EmployeeID)</pre>
            <b>Figure: Good example of Access query with EXISTS keyword and without comparison operator</b>
            </p>
            <p>
                In order to get the good example syntax you must switch from Design View window
                to SQL View in query designer window and save query definition.</p>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/AvoidParameterQueries.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/AvoidParameterQueries.aspx</a></font> 
        </li>
        <li>
            <h2>
                <a name="VBAFunctionNamesInQueries"></a>Do you remove VBA function names in queries
                before upsizing queries (Upsizing problem)?</h2>
            <p>
                The Upsizing Tools do not try to upsize Microsoft Access query that includes VBA
                function names that don't have their equivalent Transact-SQL functions. The upsizing
                result will depend on Microsoft Access version (2000/2002/2003) and SQL Server Version
                (2000/2005). The following varieties of queries will not upsize:
                <ul>
                    <li>Queries referencing value in control, for example Forms![FormName]![ControlName]
                        (Access 2000)</li><li>Select queries that take parameters (Access 2000)</li><li>Select
                            queries where parameter used more than once (All versions of Access)</li><li>Select
                                queries referencing Format function (All versions of Access) </li>
                </ul>
                <br />
                You have to manually edit SQL definition in Microsoft Access (remove or replace
                keyword) and modify view/stored procedure/function T-SQL in SQL Server after upsizing.
                <pre>SELECT Orders.OrderID,
    "Order Subtotals".Subtotal, 
    <b>FORMAT</b>(ShippedDate,'yyyy') AS Year 
FROM Orders 
INNER JOIN "Order Subtotals" 
    ON (Orders.OrderID="Order Subtotals".OrderID);</pre>
                <b>Figure: Bad example of Access query with FORMAT keyword</b>
            </p>
            <pre>SELECT Orders.OrderID,
    "Order Subtotals".Subtotal, 
    <b>YEAR</b>(ShippedDate) AS [Year] 
FROM Orders 
INNER JOIN "Order Subtotals" 
    ON (Orders.OrderID="Order Subtotals".OrderID)</pre>
            <b>Figure: Good example of SQL Server view with YEAR keyword</b>
            <table class="clsSSWProductTable" cellspacing="2" cellpadding="2" summary="Upsizing PRO">
                <tr>
                    <td>
                        <a href="/ssw/UpsizingPRO">Upsizing PRO</a> will check this rule
                    </td>
                </tr>
            </table>
            <font color="#ff0000">*Note: Moved to <a href="http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/VBAFunctionNamesInQueries.aspx">http://sharepoint.ssw.com.au/Standards/ReportingSolutions/RulesToBetterAccessDatabases/Pages/VBAFunctionNamesInQueries.aspx</a></font> 
        </li>
    </ol>
    <h2>
        Acknowledgements</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=ST">Sergei Tchernykh</a>
    </p>
</asp:Content>
