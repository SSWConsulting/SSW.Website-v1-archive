<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Microsoft LINQ Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <br />
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230536574757073')">
            Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#NoCmd">Don't use command prompt for generating pages.</a></li>
            <li><a href="#SearchFunction">Please have search page for updating a specific record.</a></li>
            <li><a href="#AddReference">Please add references by default.</a></li>
            <li><a href="#Regeneration">Allow regeneration of Blinq web pages for schema changes.</a></li>
            <li><a href="#NoOpenSource">No open source template to customize to how pages are generated.</a></li>
            <li><a href="#links">Links</a></li>
            <li><a href="#HideSP">Please add a checkbox to hide stored procedures</a></li>
            <li><a href="#Entities">Please add a default namespace to entity</a></li>
            <li><a href="#ConnectionString">LINQ to Entities Connection String is in the old style</a></li>
            <li><a href="#NameSpace">Allow the EDMX to have no namespace specified</a></li>
            <li><a href="#Icon">Function icon should use the standard icon in VS</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <%--        example:  
              <li>
                <h2>
                    <a name="Rings"></a>Different rings</h2>
                <p>
                    When you lose the network connection, I would prefer a message box:
                </p>
                <div class="greyBox">
                You have lost the network connection.<br /><br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Try Again]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Cancel]
                </div>
                <p>
                    But now it only show a error message tell you the error about network:
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/LossConnMsg.JPG" alt="The message when loss network"/></dt>
                    <dd>
                        Figure: The message when you loss network connection.</dd></dl>
            </li>            
--%>
            <li>
                <h2>
                    <a name="NoCmd"></a>Don't use command prompt for generating pages.</h2>
                <p>
                    BLINQ uses command prompt to generate web page, which could potentially cause problems
                    such as typo issues or quoting issues. Running other applications with an intuitive
                    UI or a web page is usually a much better way to generate code rather than using
                    the command prompt.
                </p>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/blinqCmdPrompt.GIF" alt="BLINQ Command prompt to generate pages"
                            width="612" height="129"></dt>
                    <dd>
                        Figure: BLINQ uses command prompt to generate maintenance pages</dd></dl>
                <p>
                    Can you have a web page with a button and a few check boxes for the options?</p>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/zsValidatePage.gif" alt="SSW validate page for sql server, web server, network and components"
                            width="738" height="676" /></dt>
                    <dd>
                        Figure: SSW validate page has buttons to generate reports for validating sql server,
                        web server, network and components</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="SearchFunction"></a>Please have search page for updating a specific record.</h2>
                <p>
                    In the BLINQ pages you can use navigation link at the bottom of the grid to be able
                    to edit a record. It is ok to edit or update records if the tables don't have big
                    amount of data. However, when you want to update recent records in a table which
                    contains tens of thousands of record, you have to keep clicking the navigation links
                    thousands times. The one of the best way to find the record to update is using the
                    basic search or filter.</p>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/blinqNorthwind.GIF" alt="BLINQ doesn't have search functionality"
                            width="1037" height="631"></dt><dd>Figure: BLINQ doesn't have search functionality</dd></dl>
                <p>
                    Search makes it easy to narrow down the results and it is essential feature in maintenance
                    web site and that feature is missing in BLINQ.</p>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/SSWTimePROOnlineSearch.GIF" alt="SSW TimePROOnline search for who needs follow up"
                            width="660" height="647" /></dt><dd>Figure: SSW TimePROOnline search for who needs follow
                                up</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="AddReference"></a>Please add references by default.</h2>
                After installation of BLINQ and generation of web pages, you'll have lots of compile
                errors. That is because you are missing required references that BLINQ uses. In the
                References tab add click the "add..." button, select the "Browse" tab and browse
                to "c:/Program Files/VB LINQ Preview/Bin/". Add references to the following libraries:
                <br />
                - System.Query.dll
                <br />
                - System.Data.DLinq.dll
                <br />
                - System.Xml.XLINQ.dll
                <br />
                <p>
                    However, it would be better those references to be added by default and it should
                    minimize all investigation and effort for the issues.
                </p>
                <p>
                    <dl class="image">
                        <dt>
                            <img border="0" src="Images/blinqWithoutImports.gif" alt="BLINQ doesn't have required references by default"
                                width="751" height="322"></dt><dd>Figure: BLINQ doesn't have required references and
                                    imports by default</dd></dl>
                </p>
            </li>
            <li>
                <h2>
                    <a name="Regeneration"></a>Allow regeneration of Blinq web pages for schema changes.</h2>
                <p>
                    Blinq is a one-time website generation tool, which means that successive runs will
                    overwrite, not modify, output from a previous run. In other words, if you run Blinq
                    again, it will overwrite the contents and your changes will be lost.</p>
                <p>
                    This can be a nuisance when schema changes are required as simple as a columns being
                    added, entire table being added, or even a data type change.</p>
                <p>
                    Currently there are issues with Timestamp fields that do not allow modifications
                    to records with Blinq. Our work-around to this bug requires modifications to all
                    the generated pages that consist of timestamp columns. We cannot afford to rerun
                    Blinq and redo our changes.</p>
            </li>
            <li>
                <h2>
                    <a name="NoOpenSource"></a>No open source template to customize to how pages are
                    generated.</h2>
                <p>
                    Unlike CodeSmith or NextGen, Blinq has only one way to generate its pages and code
                    behind files. It would be very useful to be able to make changes to the templates
                    that Blinq use for generating code so that we would have our own modifications.
                    This would ultimately mean that we would always be able to regenerate web pages
                    exactly the way we want them to (i.e. including our own work-arounds for Blinq issues
                    we have discovered)</p>
                <p>
                    our best solution to this is to propose the following:</p>
                <ol>
                    <li>Generate one-time code using Blinq </li>
                    <li>Create a regex that would search for particular patterns in code that we know will
                        cause bugs </li>
                    <li>Create a find-and-replace batch file or Rule in SSW Code Auditor. </li>
                    <li>Run this rule throughout the entire generated Website. </li>
                    <li>Make schema changes </li>
                    <li>Repeat step 1 </li>
                    <li>Repeat step 4 </li>
                </ol>
                Rather than the following:
                <ol>
                    <li>Update Blinq Templates </li>
                    <li>Regenerate code using Blinq </li>
                    <li>Make Schema changes </li>
                    <li>Repeat step 2 only </li>
                </ol>
            </li>
            <li>
                <h2>
                    <a name="links"></a>Links</h2>
                <p>
                    <a href="/ssw/Redirect/BLinqForum.htm" target="_blank">Forum - Using VB Linq in web
                        applications</a><img src="/ssw/Images/LeaveSite.gif" alt="You are about to leave the SSW Site"
                            width="17" height="11">
                </p>
            </li>
            <li>
                <h2>
                    <a name="HideSP"></a>Please add a checkbox to hide stored procedures</h2>
                <p>
                    The checkbox below does a good job of hiding noise, but it doesn't complete the
                    job, it had better add another checkbox to hide stored procedures, this would hide
                    CustOrderHistResult, CustOrdersDetailResult etc.
                </p>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/HideSP.gif" alt="Checkbox to hide stored procedures." /></dt>
                    <dd>
                        Figure: Add a checkbox to hide stored procedures</dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="Entities"></a>Please add a default namespace to entity</h2>
                <p>
                    I like how with a DBML I don't have to specify a namespace</p>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/DBML.gif" alt="" /></dt>
                    <!--<dd>Figure: Add a checkbox to hide stored procedures</dd>-->
                </dl>
                <p>
                    But with EDMX I do, If you allowed me to have Null, it would nicely default to the
                    folder name eg. in this case Northwind.Data.SQL</p>
                <dl class="image">
                    <dt>
                        <img border="0" src="Images/EDMX.gif" alt="" /></dt>
                    <!--<dd>Figure: Add a checkbox to hide stored procedures</dd>-->
                </dl>
            </li>
            <li>
                <h2>
                    <a name="ConnectionString"></a>LINQ to Entities Connection String is in the old
                    style</h2>
                <p>
                    When you create a edmx - it should create a connection string in the new style...
                    aka in the Properties:
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/ConnectionString_LINQ.JPG" alt="Connection String should create in the new style." /></dt>
                    <dd>
                        Figure: Connection string should create in the new style.</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="NameSpace"></a>Allow the EDMX to have no namespace specified</h2>
                <p>
                    LINQ to SQL allows the DBML file to have no namespace specified and LINQ to Entities
                    should be consistent. It should automatically pick up the namespace based on its
                    location.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/NameSpace_LINQ.JPG" alt="Allow namespace null" /></dt>
                    <dd>
                        Figure: Allow namespace to be nullable.</dd></dl>
            </li>
            <li>
                <h2>
                    <a name="Icon"></a>Function icon should use the standard icon in VS</h2>
                <p>
                    These icons should be more distinctive. At a glance they look the same and aren't
                    very indicative of their purpose.
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/IconWrong_LINQ.JPG" alt="Wrong Icon" /></dt>
                    <dd>
                        Figure: The function icon is same as the table's</dd></dl>
                <p>
                    The function mapping icon should use the standard icon for a function:
                </p>
                <dl class="image">
                    <dt>
                        <img src="Images/IconGood_LINQ.JPG" alt="Standard Icon" /></dt>
                    <dd>
                        Figure: The standard icon in VS</dd></dl>
            </li>
        </ol>
    </div>
    <h2>
        Acknowledgments</h2>
    <p>
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
        <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=LX">Lei Xu</a>
    </p>
</asp:Content>
