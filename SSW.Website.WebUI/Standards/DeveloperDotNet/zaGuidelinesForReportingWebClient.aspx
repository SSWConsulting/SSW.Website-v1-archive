<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false"
    Title="SSW Rules to Better Reports on the Web" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <%--    <script language="javascript" type="text/javascript">
// <!CDATA[

        function table1_onclick() {

        }

// ]]>
    </script>--%>
    <p>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
    <h2>
        Rules to Better Reports on the Web</h2>
    <div>
        <table cellspacing="2" cellpadding="2" class="clsSSWTableOfContents">
            <tr>
                <td>
                    <ol>
                        <li><a href="#UseTheBestTools">Do you use the best tools to present Reports to users?</a>
                            <ol>
                                <li><a href="#ReportingServices">Reporting Services</a></li>
                                <li><a href="#ASP.NET">ASP.NET</a></li>
                                <li><a href="#Crystal">Crystal</a></li>
                                <li><a href="#Access">Access (via Access Reporter for IIS)</a> </li>
                                <li><a href="#OWC">OWC</a></li>
                                <li><a href="#OLAPRS2008">OLAP - Reporting Services 2008 (aka Microsoft's Web Solution)</a></li>
                                <li><a href="#DataAnalyzer">OLAP - Data Analyzer (aka Microsoft's Rich Client Solution)</a>
                                </li>
                                <li><a href="#Excel2007">Excel 2007 Over the Web</a></li>
                                <li><a href="#OLAP3rdParty">OLAP - 3rd Party</a></li>
                            </ol>
                        </li>
                    </ol>
                </td>
            </tr>
        </table>
    </div>
    <ol>
        <li>
            <h2>
                <a name="UseTheBestTools"></a>Do you use the best tools to present Reports to users?</h2>
            <p>
                There are many ways to present your data to users over the Web. Below is a guide
                on the best options available for the Microsoft platform, with Pros and Cons for
                each.</p>
            <h2>
                The data</h2>
            <p>
                Scenario: I want my customers and staff to be able to see this data in a useful
                format. What are my options?</p>
            <p>
                <strong>Start Date: 1/1/2006 &nbsp;&nbsp; End Date: 1/4/2006</strong></p>
            <table class="clsSSWTable data" border="0" rules="cols" cellpadding="20" cellspacing="20" id="table1">
                <tr>
                    <th>
                        Product
                    </th>
                    <th>
                        Downloads
                    </th>
                </tr>
                <tr>
                    <td>
                        SSW Upsizing PRO!
                    </td>
                    <td>
                        181
                    </td>
                </tr>
                <tr>
                    <td>
                        SSW Code Auditor
                    </td>
                    <td>
                        114
                    </td>
                </tr>
                <tr>
                    <td>
                        SSW .NET Toolkit
                    </td>
                    <td>
                        63
                    </td>
                </tr>
                <tr>
                    <td>
                        SSW Performance PRO! (for Access 2000,2002,2003)
                    </td>
                    <td>
                        60
                    </td>
                </tr>
                <tr>
                    <td>
                        SSW Exchange Reporter
                    </td>
                    <td>
                        58
                    </td>
                </tr>
                <tr>
                    <td>
                        SSW Exchange Team Calendar (for Exchange Server 2000,2003)
                    </td>
                    <td>
                        53
                    </td>
                </tr>
                <tr>
                    <td>
                        SSW Diagnostics
                    </td>
                    <td>
                        49
                    </td>
                </tr>
                <tr>
                    <td>
                        SSW SQL Total Compare
                    </td>
                    <td>
                        49
                    </td>
                </tr>
                <tr>
                    <td>
                        SSW SQL Auditor
                    </td>
                    <td>
                        39
                    </td>
                </tr>
                <tr>
                    <td>
                        SSW Access Reporter .NET For IIS
                    </td>
                    <td>
                        34
                    </td>
                </tr>
                <tr>
                    <td>
                        SSW SQL Deploy
                    </td>
                    <td>
                        33
                    </td>
                </tr>
                <tr>
                    <td>
                        SSW eXtreme Emails!
                    </td>
                    <td>
                        31
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Total</strong>
                    </td>
                    <td>
                        <strong>764</strong>
                    </td>
                </tr>
            </table>
            <p>
                The obvious choices for displaying this data on the web are <b>Reporting Services 2008</b>,
                <b>ASP.NET 2.0</b>, and <b>Crystal Reports</b>. Let's take a look at how easy it
                is to complete this report using these and other solutions.</p>
            <div>
                <ol>
                    <li>
                        <h2>
                            <a id="ReportingServices"></a>Reporting Services 2008</h2>
                        <p>
                            <a href="/ssw/Redirect/SqlEvaluation.htm">http://www.microsoft.com/sql/evaluation/bi/reportingservices.asp</a>
                        </p>
                        <p>
                            <b>Pros</b></p>
                        <ol>
                            <li>Short development time - 3 hours for sample report.</li>
                            <li>No Code.</li>
                            <li>Parameters are easy to add to the report and bind to the data.</li>
                            <li>Grouping is simple.</li>
                            <li>Drill Down without needing a tree view control.</li>
                            <li>Data drive Subscriptions are supported out of the box.</li>
                            <li>Multiple Export formats out of the box including Excel and PDFs.</li>
                            <li>Built-in security module out of the box</li>
                            <li>Visual Designer</li>
                            <li>Ad-hoc Reports via the Report Builder (a .NET client deployed via ClickOnce)</li>
                        </ol>
                        <p>
                            <b>Cons</b></p>
                        <ol>
                            <li>Poor Parameter support. You are forced to use built-in controls. For example, you
                                can't have "next month / previous month" hyperlinks like in ASP.NET 2 (see below)</li>
                            <li>Query string doesn't change when you change the parameter values in a report. You
                                have to re-submit the page (no AJAX).</li>
                            <li>Can't separate SQL into a strongly-typed dataset or middle-tier objects like in
                                ASP.NET (unless you write a lot of code to support your own provider).</li>
                            <li>Printing support isn't strong - there is no pixel-by-pixel control possible.</li>
                        </ol>
                        <p>
                            <img border="1" src="Images/RSReport.gif" width="516" height="786" />
                        </p>
                        <p>
                            <b>Figure: SSW Product Download Report (Reporting Services 2008)</b></p>
                        <p>
                            <b>Conclusion</b></p>
                        <p>
                            Reporting Services is the way to go if you do not need
                        </p>
                        <ol>
                            <li>Dynamic grouping.</li>
                            <li>To write to your database via the report.</li>
                        </ol>
                        <p>
                            <b>Demo</b></p>
                        <p>
                            See <a href="/ssw/exchangereporter/ReportSamples.aspx">SSW Exchange Reporter (Samples)</a>
                        </p>
                        <%If Request.ServerVariables("HTTP_HOST") <> "www.ssw.com.au" And Request.ServerVariables("HTTP_HOST") <> "ssw.com.au" Then%>
                        <p>
                            <a class="Maintenance" href="http://reports.ssw.com.au/Reports/Pages/Report.aspx?ItemPath=%2fSSWTimePRO%2fSSWTimePROCompanyPerformance%2f008_ProductDownloads">
                                Internal</a></p>
                        <%End If%>
                        <p>
                            Note: When comparing two sets of values in a report, you will <a href="/ssw/Standards/Rules/RulesToBetterSQLReportingServices.aspx#ChangePercent">
                                avoid showing change as a percentage</a>
                        </p>
                    </li>
                    <li>
                        <h2>
                            <a name="ASP.NET"></a>ASP.NET 2.0
                        </h2>
                        <p>
                            <b>Pros</b></p>
                        <ol>
                            <li>Complete control over the rendering of the output</li>
                            <li>Query Strings supported</li>
                            <li>Control over the parameters - e.g. &quot;Current Month&quot; hyperlink</li>
                            <li>Can edit data via Databound Controls</li>
                        </ol>
                        <p>
                            <b>Cons</b></p>
                        <ol>
                            <li>Long development time of sample report - 8 hours to convert including formatting,
                                <span>sorting</span> and adding 3rd party parameter controls (like Date Time Pickers)</li>
                            <li>Graphs - To show a graph you need to code OWC to generate a .png or get a 3rd Party
                                Control like Dundas Charts</li>
                            <li>No Date/time picker built in - have to use a 3rd party control or the AJAX Toolkit
                                (or write your own)</li>
                            <li>No export to PDF or other formats - you have to install Acrobat and print to PDF
                                from the browser</li>
                            <li>No nice Reporting Services interface - you have to create the navigation yourself</li>
                            <li>Have to configure security from scratch</li>
                            <li>Hard to do drill-down. To do this, you need a treeview with code</li>
                        </ol>
                        <p>
                            <b>Conclusion</b></p>
                        <p>
                            Good if you:</p>
                        <ol>
                            <li>Want editable data</li>
                            <li>Want dynamic grouping and cannot go to OLAP</li>
                        </ol>
                        <p>
                            More at <a href="/ssw/Redirect/ASPReportsStarterKit.htm">http://www.asp.net/ReportsStarterKit/</a>
                        </p>
                        <p>
                            <b>Demo</b></p>
                        <p>
                            <img border="1" src="Images/productdownloadgraph.gif" width="600" height="404" /></p>
                        <p>
                            <b>Figure: SSW Product Download Report (ASP.NET 2.0)</b></p>
                        <p>
                            <br>
                            <a href="/timeproonline/Report/ProductDownloadGraph.aspx">http://www.ssw.com.au/timeproonline/Report/ProductDownloadGraph.aspx</a><br>
                            <dl>
                                <dt>
                                    <pre>Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Request.QueryString("DateFrom") <> "" Then
            txtDateFrom.Text = Request.QueryString("DateFrom")
            txtDateTo.Text = Request.QueryString("DateTo")
        End If


    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click


        Response.Redirect(Request.Url.AbsolutePath.ToString + _
            "?DateFrom=" + HttpUtility.UrlEncode(txtDateFrom.Text) + _
            "&DateTo=" + HttpUtility.UrlEncode(txtDateTo.Text), True)


    End Sub
</pre>
                                </dt>
                                <dd>
                                    Figure: ASP.NET 2.0 - Code to read from and write to the query string</dd></dl>
                            <br />
                            <dl>
                                <dt>
                                    <pre>        ...
		&lt;asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None"
            BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1"&gt;
            &lt;FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" /&gt;
            &lt;Columns&gt;
                &lt;asp:BoundField DataField="FileNameURL" HeaderText="FileNameURL" SortExpression="FileNameURL" /&gt;
                &lt;asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" /&gt;
                &lt;asp:BoundField DataField="DownloadCount" HeaderText="DownloadCount" ReadOnly="True"
                    SortExpression="DownloadCount" /&gt;
                &lt;asp:TemplateField HeaderText="Graph"&gt;
                    &lt;ItemTemplate&gt;
                        &lt;img src="Images/chartpixel.gif" 
                             height="10" 
                             width="&lt;%#DataBinder.Eval(Container.DataItem,"DownloadCount")%&gt;" /&gt;
                    &lt;/ItemTemplate&gt;
                &lt;/asp:TemplateField&gt;
            &lt;/Columns&gt;
            &lt;RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" /&gt;
            &lt;SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" /&gt;
            &lt;PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" /&gt;
            &lt;HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" /&gt;
        &lt;/asp:GridView&gt;
		...
</pre>
                                </dt>
                                <dd>
                                    Figure: ASP.NET 2.0 - Implement the bar chart in the grid;</dd></dl>
                    </li>
                    <li>
                        <h2>
                            <a name="Crystal"></a>Crystal
                        </h2>
                        <p>
                            <b>Pros</b></p>
                        <ol>
                            <li>Established but not mature!</li></ol>
                        <p>
                            <b>Cons</b></p>
                        <ol>
                            <li>Dead technology</li>
                            <li>Licensing is expensive</li>
                            <li>Development environment</li>
                        </ol>
                        <p>
                            <b>Conclusion</b></p>
                        <p>
                            Only use on solutions that have a big investment in Crystal</p>
                        <table class="clsSSWTable">
                            <tr>
                                <td>
                                    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=GD">George Doubinski</a> said
                                    it best: &quot;My major pain with Crystal has been stability of their development
                                    environment. Im not sure if they've done anything in 2.0 but in 1.1 it was nearly
                                    unusable. The hoops to jump through to simply change data source was bordering on
                                    insane, for example. The other issue is, obviously, cost when scaling."
                                </td>
                            </tr>
                        </table>
                    </li>
                    <li>
                        <h2>
                            <a name="Access"></a>Access (via SSW Access Reporter)
                        </h2>
                        <p>
                            <b>Pros</b></p>
                        <ol>
                            <li>Good Report development environment</li>
                        </ol>
                        <p>
                            <b>Cons</b></p>
                        <ol>
                            <li>Access needs to be on the server</li>
                            <li>Need an Access License</li>
                            <li>Not designed for the web</li>
                        </ol>
                        <p>
                            <b>Conclusion</b></p>
                        <p>
                            Only use <a href="/ssw/AccessReporter/">SSW Access Reporter</a> for solutions that
                            have a big investment in Access.
                        </p>
                        <p>
                            <a href="/ssw/AccessReporter/AccessReporterDemo.aspx">http://www.ssw.com.au/ssw/AccessReporter/AccessReporterDemo.aspx</a>
                        </p>
                        <dl class="image">
                            <dt>
                                <img border="1" src="Images/AccessReporterSample.gif" width="600" height="547" />
                            </dt>
                            <dd>
                                Figure: Tools like SSW Access Reporter help to display your Access data on the web
                            </dd>
                        </dl>
                        <p>
                            View a <a href="Resources/AccessReporterSample.pdf">Sample report</a>
                            <img src="/ssw/Images/iconpdf.gif" width="16" height="17"></p>
                    </li>
                    <li>
                        <h2>
                            <a name="OWC"></a>Office Web Controls (OWC)</h2>
                        <p>
                            <b>Pros</b></p>
                        <ol>
                            <li>Allow you to embed interactive office documents in to HTML</li>
                            <li>Supports updates to the datasource via the control</li>
                            <li>Easy to create - just save a document in "Interactive HTML format"</li>
                            <li>Supports pivot tables, spreadsheets, charts</li>
                        </ol>
                        <p>
                            <b>Cons</b></p>
                        <ol>
                            <li>Require a download or to have office installed (typically you would only install
                                on an intranet)</li>
                            <li>They run as an ActiveX control - so have limited access to your local system</li>
                        </ol>
                        <p>
                            <a href="/timeproonline/Report/ProductDownloadGraph_OWC.aspx">http://www.ssw.com.au/timeproonline/Report/ProductDownloadGraph_OWC.aspx</a></p>
                        <dl class="image">
                            <dt>
                                <img border="1" src="Images/RptInOWC.gif" alt="Report in OWC" width="600" height="493" />
                            </dt>
                            <dd>
                                Figure: Office web components enable interactive charts inside your browser, but
                                require Office to be installed<br />
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <h2>
                            <a name="OLAPRS2008"></a>OLAP - Reporting Services 2008 (aka Microsoft's Web Solution)</h2>
                        <p>
                            <b>Pros</b></p>
                        <ol>
                            <li>Same Pros as <a href="#ReportingServices">SQL Server 2008 Reporting Services</a></li>
                            <li>Fast runtime experience - as the data is pre-agreggated in the cube, we can query
                                data must faster.</li>
                            <li>Very fast to develop</li>
                            <li>Flexible - can add lots of dimensions and easily compare data</li>
                        </ol>
                        <p>
                            <b>Cons</b></p>
                        <ol>
                            <li>Using OLAP is often overkill - in the case of our &quot;Product Download&quot; sample
                                - for example it is hard to design a query/cube to compare data from two arbitrary
                                periods of time because data is pre-aggregated.</li>
                        </ol>
                    </li>
                    <li>
                        <h2>
                            <a name="DataAnalyzer"></a>OLAP - Data Analyzer (aka Microsoft's Rich Client Solution)</h2>
                        <p>
                            <b>Pros</b></p>
                        <ol>
                            <li>A visually appealing UI.</li>
                            <li>Full drill-down support.</li>
                        </ol>
                        <dl class="image">
                            <dt>
                                <img src="Images/RptInDataAnalyzer.jpg" width="604" height="585" />
                            </dt>
                            <dd>
                                Figure: Office Excel 2007 delivers new powerful data visualization tools</dd></dl>
                        <p>
                            <b>Cons</b></p>
                        <ol>
                            <li>No longer supported. This functionality has been moved into Excel 2007.</li>
                            <li>Microsoft dont have a web version of Data Analyzer.</li>
                        </ol>
                    </li>
                    <li>
                        <h2>
                            <a name="Excel2007"></a>Excel 2007 Data Visualization</h2>
                        <dl class="image">
                            <dt>
                                <img src="Images/ExcelDataVis.jpg" width="801" height="694" />
                            </dt>
                            <dd>
                                Figure: Office Excel 2007 delivers new powerful data visualization tools</dd></dl>
                        <p>
                            <b>Pros</b></p>
                        <ol>
                            <li>A visually appealing UI</li>
                            <li>Full drill-down support with support for Cubes</li>
                            <li>Can run over the Web via Web Services</li>
                        </ol>
                        <p>
                            <b>Cons</b></p>
                        <ol>
                            <li>Requires rich client Install</li>
                            <li>Requires the Excel 2007 License</li>
                        </ol>
                    </li>
                    <li>
                        <h2>
                            <a name="OLAP3rdParty"></a>OLAP - 3rd Party</h2>
                        <p>
                            Alternatively you can use:</p>
                        <ol>
                            <li><a href="/ssw/Redirect/Thinslicer.htm">http://www.thinslicer.com</a>(free)</li>
                            <li><a href="/ssw/Redirect/AladdinFixedReports.htm">http://aladdin.sdm.com.au/demo/Template/AladdinFixedReports.asp</a></li>
                            <li><a href="/ssw/Redirect/zaptechnology.htm">http://www.zaptechnology.com</a></li>
                        </ol>
                    </li>
                </ol>
            </div>
        </li>
    </ol>
</asp:Content>
