<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Microsoft .NET LINQ Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <p>
        Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F253230426574746572253230536574757073')">
            Let us know</a> what you think.</p>
    <div class="TableOfContents">
        <ol>
            <li><a href="#HideSP">Please add a checkbox to hide stored procedures</a></li>
            <li><a href="#Entities">Please add a default namespace to entity</a></li>
            <li><a href="#ConnectionString">LINQ to Entities Connection String is in the old style</a></li>
            <li><a href="#NameSpace">Allow the EDMX to have no namespace specified</a></li>
            <li><a href="#Icon">Function icon should use the standard icon in VS</a></li>
            <li><a href="#SplitUp">DataContext and Entities should be split up</a></li>
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
            <li>
                <h2>
                    <a name="SplitUp"></a>DataContext and Entities should be split up</h2>
                <p>
                    LINQ to SQL is a 2 tiered technology out of the box. To allow it to be used in n
                    tiered architecture the DataContext (data access logic) needs to be separated from
                    the Entities.
                </p>
                <p>
                    I want to be able to generate the DataContext separately to the Entities</p>
                <p>
                    e.g.
                </p>
                <dl class="code">
                    <dt>SqlMetal /database:Northwind /dataContext:NorthwindDataContext.cs /entities:NorthwindEntities.cs</dt>
                    <dd>
                        Figure: DataContext and Entities should be split up</dd>
                </dl>
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
