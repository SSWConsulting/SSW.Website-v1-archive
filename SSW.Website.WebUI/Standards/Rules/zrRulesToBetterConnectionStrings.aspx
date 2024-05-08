<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Connection Strings" %>

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
            Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A696E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532304C494E51')">
                Let us know</a> what you think.
        </p>
    </div>
    <div class="TableOfContents">
        <p>
            <strong>SSW Rules to Better Connection Strings</strong></p>
        <ol>
            <li><a href="#HowToMake">Do you know how to make connection strings in different environment?</a></li>
            <li><a href="#BusinessModule">Do you avoid putting connection strings in Business module?</a></li>
            <li><a href="#StronglyTypedConn">Do you avoid using non strongly typed connection strings?</a></li>
            <li><a href="#ApplicationName">Do you add the Application Name in the SQL Server connection string?</a></li>
            <li><a href="#Connectionstring">Do you know the best place to place the connection string</a></li>
        </ol>
    </div>
    <div id="mainContent">
        <ol>
            <li>
                <h2>
                    <a name="HowToMake"></a>Do you know how to make connection strings among different
                    environment?</h2>
                <p>
                    Different data sources provide different connection strings, for example, the connection
                    string for Access is totally different from SQL Server's, even the same product
                    but different versions have special requirement, so how do we make it easy?
                </p>
                <p>
                    The answer is the very useful website -- <a href="/ssw/Redirect/ConnectionStrings.htm" class="external"
                        target="_blank">www.ConnectionStrings.com</a>
                    , which provides abundant connection strings ranging from different database products
                    to excel files, actually, you can find most of the connection strings of popular
                    products with detail usage.
                </p>
            </li>
            <li>
                <h2>
                    <a name="BusinessModule"></a>Do you avoid putting connection strings in Business
                    module?</h2>
<%--                <p>
                    Business layer locates at the middle layer in most application implementation, it
                    connects between data layer and presentation layer, and always compiled into DLLs,
                    then referenced by presentation layer, so putting connection strings in business
                    layer means that bringing inconvenient management to both developers and clients,
                    meanwhile,
                </p>--%>
                <p>
                    We strongly recommend that putting all connection strings together and saving them to one file, it is convenient for management and deployment.
                </p>
                <dl class="badImage">
                    <dt>
                        <img alt="Saving connection strings in Business module." src="images/appConfig.gif" />
                    </dt>
                    <dd>
                        Bad example - Putting connection strings in Business module.
                    </dd>
                </dl>
            </li>
            <li>
                <h2>
                    <a name="StronglyTypedConn"></a>Do you avoid using non strongly typed connection
                    strings?</h2>
                <p>
                    Using non strongly typed connection strings means that you have to hard code at
                    some point in your code. Once you change the name of your connection strings, you
                    have to change the code that references them too.
                </p>
                <p>
                    Visual Studio 2005 and higher provide a convenient tool, called Application Settings,
                    that allows you to manage all of your connection strings from only one location.
                    You can use its wizard to compose connection strings quickly and correctly. Also,
                    it provides a management class to read and write all of your connection strings.
                </p>
                <dl class="badCode">
                    <dt>string ConnString = System.Configuration.ConfigurationManager.ConnectionStrings[<span
                        style="background-color: #FFFF00">"WinFormTester.Properties.Settings.ConnectString"</span>].ToString();<br />
                        SqlConnection conn = new SqlConnection(ConnString);
                        <br />
                        SqlCommand cmd = new SqlCommand(strSql, conn);
                        <br />
                        conn.Open();
                        <br />
                        cmd.ExecuteNonQuery();
                        <br />
                        conn.Close(); </dt>
                    <dd>
                        Bad Example: Using non strongly typed connection strings, the highlighted text is
                        hard code actually.</dd>
                </dl>
                <dl class="goodImage">
                    <dt>
                        <img alt="Using Application Settings to configure connection strings." src="images/conn.gif" />
                    </dt>
                    <dd>
                        Good example - Using Application Settings to configure connection strings.
                    </dd>
                </dl>
            </li>
            <li>
            <h2><a name="ApplicationName"></a>Do you add the Application Name in the SQL Server connection string?</h2>
            <p>When you make connection strings for SQL Server, it is better to add the application name to your connection strings, see the <a href="RulestoBetterCode.aspx#AppNameforSCS">explicit explanation.</a>.
            </p>
            </li>
            <li>
                <h2>
                    <a name="Connectionstring"></a>Do you know the best place to place the connection string</h2>
                <p>
                    The best place to put the connection string is in the Web.Config file.That makes the code simple and easy to read. Look into the following code:
                    <br />
                    <dl class="badCode">
                   <dt>
                    string cnnString = "data source=(local); integrated security=SSPI; persist security info=False; pooling=False; initial catalog=Northwind2";
                    </dt>
                    <dd>Bad Example</dd>
                    </dl>
                    <br />
                     
                     and observe the following code which is simple and easy to read:
                     
                     
                     <dl class="goodCode">
                     <dt>
                        string cnnString = LinqToNorthwind.Properties.Settings.Default.NorthwindEFConnectionString;
                     </dt>
                     <dd>
                        Good Example
                     </dd>
                   </dl>
                   <dl class="goodCode">
                   <dt>
                   private void Form1_Load(object sender, System.EventArgs e)
                   <br />
                   {
                       <br />
                       //string connString = "data source=(local); integrated security=SSPI; persist security info=False; pooling=False; initial catalog=Northwind2";
                       <br />
                       string cnnString = LinqToNorthwind.Properties.Settings.Default.NorthwindEFConnectionString;
                       <br />
                       cboCity.Items.Add("London");
                       <br />
                       cboCity.Items.Add("Madrid");
                       <br />
                       cboCity.Items.Add("Sao Paulo");
                       <br />
                       db = new NorthwindDataContext(cnnString);
                       <br />
                       cboCity.SelectedIndex = 0;
                       <br />
                  }
                   </dt>
                   <dd>
                   Good Example
                   </dd>
                   </dl>
                     

                </p>
                                    
                    
                            </li>
        </ol>
        <h2>
            Acknowledgements</h2>
        <p>
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br />
            <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=EZF">Eric Phan</a>
        </p>
    </div>
</asp:Content>
